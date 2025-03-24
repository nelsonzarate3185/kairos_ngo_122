prompt --application/pages/page_00766
begin
--   Manifest
--     PAGE: 00766
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
 p_id=>766
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'Facturacion Masiva Best Home - RPFACMAS'
,p_alias=>'FACTURACION-MASIVA-BEST-HOME-RPFACMAS'
,p_step_title=>'Facturacion Masiva Best Home - RPFACMAS'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function doCCReciboMasivo (p_cod_empresa, p_nro_plantilla, p_cod_usuario){',
'                ',
'   var vURL = ''https://ngosaeca.com.py/reportes/rest_v2/reports/reports/CCRECIBO_MASIVO_CPH.pdf?''',
'            + ''P_COD_EMPRESA='' + p_cod_empresa +',
'             ''&P_NRO_PLANILLA='' + p_nro_plantilla +',
'             ''&P_USUARIO='' + p_cod_usuario +          ',
'             ''&j_username=jasperadmin&j_password=jasperadmin'';',
'',
'    console.log(vURL);',
'    window.open(unescape(vURL.replace(/&amp;/g,''g'')),''_blank'');',
'}',
'',
'function doStremautMasivo (p_cod_empresa, p_nro_plantilla, p_cod_usuario){',
'                ',
'   var vURL = ''https://ngosaeca.com.py/reportes/rest_v2/reports/reports/STREMAUT_MASIVO_CPH.pdf?''',
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
'   var vURL = ''https://ngosaeca.com.py/reportes/rest_v2/reports/reports/VTIMPNCR_CANON_FE_MASIVO_CPH.pdf?''',
'            + ''P_COD_EMPRESA='' + p_cod_empresa +',
'             ''&P_NRO_PLANILLA='' + p_nro_plantilla +',
'             ''&P_USUARIO='' + p_cod_usuario +          ',
'             ''&j_username=jasperadmin&j_password=jasperadmin'';',
'',
'    console.log(vURL);',
'    window.open(unescape(vURL.replace(/&amp;/g,''g'')),''_blank'');',
'}',
'',
'function doRpfactmaspla(p_cod_empresa, p_nro_planilla){',
'',
'   var vURL = ''https://ngosaeca.com.py/reportes/rest_v2/reports/reports/RPFACTMASPLA_CPH.pdf?''',
'            + ''P_COD_EMPRESA='' + p_cod_empresa +',
'             ''&P_NRO_PLANILLA='' + p_nro_planilla +',
'             ''&j_username=jasperadmin&j_password=jasperadmin'';',
'',
'    console.log(vURL);',
'    window.open(unescape(vURL.replace(/&amp;/g,''g'')),''_blank'');',
'}',
'',
'function doVtimpfacCanonFeMasivo (p_cod_empresa, p_nro_plantilla, p_cod_usuario){',
'                ',
'   var vURL = ''https://ngosaeca.com.py/reportes/rest_v2/reports/reports/VTIMPFAC_CANON_FE_MASIVO_CPH.pdf?''',
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
'   var vURL = ''https://ngosaeca.com.py/reportes/rest_v2/reports/reports/CCPAGARE_EMP_MASIVO_CPH.pdf?''',
'            + ''P_COD_EMPRESA='' + p_cod_empresa +',
'             ''&P_NRO_PLANILLA='' + p_nro_plantilla +       ',
'             ''&j_username=jasperadmin&j_password=jasperadmin'';',
'',
'    console.log(vURL);',
'    window.open(unescape(vURL.replace(/&amp;/g,''g'')),''_blank'');',
'}',
'',
'function doVtimpfacCanon(p_cod_empresa, p_cod_cliente, p_pagado, p_reimpreso,',
'                         p_tip_comprobante, p_cod_usuario, p_ser_comprobante, ',
'                         p_nro_comprobante, p_imprime_condicion){',
' ',
'   var vURL = ''https://ngosaeca.com.py/reportes/rest_v2/reports/reports/VTIMPFAC_CANON_FE_CPH.pdf?''',
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
'function doCCRecibo(p_ser_comprobante, p_nro_comprobante){',
'',
'   var vURL = ''https://ngosaeca.com.py/reportes/rest_v2/reports/reports/CCRECIBO_CPH.pdf?''',
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
'   var vURL = ''https://ngosaeca.com.py/reportes/rest_v2/reports/reports/CCPAGARE_UNICO_CPH .pdf?''',
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
'function doCCPagareEmp(p_cod_empresa, p_cod_cliente, p_tip_comprobante, p_cod_usuario,',
'                         p_ser_comprobante, p_motivo, p_nro_comprobante){',
'',
'   var vURL = ''https://ngosaeca.com.py/reportes/rest_v2/reports/reports/CCPAGARE_EMP_CPH .pdf?''',
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
'function doCCPagareOficioCanon (p_cod_empresa, p_cod_cliente, p_tip_comprobante,',
'                                p_ser_comprobante, p_motivo, p_nro_comprobante){',
'',
'   var vURL = ''https://ngosaeca.com.py/reportes/rest_v2/reports/reports/CCPAGARE_OFICIO_CANON_CPH.pdf?''',
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
'function doStremaut (p_cod_empresa, p_cod_cliente, p_tip_comprobante, p_ser_comprobante, ',
'                     p_nro_comprobante, p_cod_usuario, p_ind_ean, p_reimpresion){',
'',
'   var vURL = ''https://ngosaeca.com.py/reportes/rest_v2/reports/reports/STREMAUT_CPH.pdf?''',
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
'   var vURL = ''https://ngosaeca.com.py/reportes/rest_v2/reports/reports/VTIMPNCR_CANON_FE_CPH.pdf?''',
'            + ''P_COD_EMPRESA='' + p_cod_empresa +',
'             ''&P_COD_CLIENTE='' + p_cod_cliente +',
'             ''&P_TIP_COMPROBANTE='' + p_tip_comprobante +',
'             ''&P_SER_COMPROBANTE='' + p_ser_comprobante +',
'             ''&P_NRO_COMPROBANTE='' + p_nro_comprobante +            ',
'             ''&j_username=jasperadmin&j_password=jasperadmin'';',
'',
'    console.log(vURL);',
'    window.open(unescape(vURL.replace(/&amp;/g,''g'')),''_blank'');',
'}'))
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
,p_page_component_map=>'03'
,p_last_updated_by=>'NZARATE'
,p_last_upd_yyyymmddhh24miss=>'20250310152636'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(467627583046959942)
,p_plug_name=>'Facturacion Masiva Best Home - RPFACMAS'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>1000
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(467627721476959943)
,p_plug_name=>'Cabecera'
,p_parent_plug_id=>wwv_flow_imp.id(467627583046959942)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(467628190374959948)
,p_name=>'COLEC_RPFACCPH_DETALLE'
,p_parent_plug_id=>wwv_flow_imp.id(467627583046959942)
,p_template=>wwv_flow_imp.id(40096829222263653)
,p_display_sequence=>40
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
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
'AND :P766_INDICADOR_REPORT_FACTURAS = ''1'';'))
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
 p_id=>wwv_flow_imp.id(367969332977153461)
,p_query_column_id=>1
,p_column_alias=>'SEQ_ID_FACTURA'
,p_column_display_sequence=>1
,p_column_heading=>'Seq Id Factura'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(367969738584153461)
,p_query_column_id=>2
,p_column_alias=>'TIP_COMPROBANTE'
,p_column_display_sequence=>20
,p_column_heading=>'Tipo'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(367967382887153460)
,p_query_column_id=>3
,p_column_alias=>'SER_COMPROBANTE'
,p_column_display_sequence=>30
,p_column_heading=>'Ser.'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(367967789027153460)
,p_query_column_id=>4
,p_column_alias=>'NRO_COMPROBANTE'
,p_column_display_sequence=>40
,p_column_heading=>unistr('N\00FAmero')
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(367968194565153461)
,p_query_column_id=>5
,p_column_alias=>'PEDIDO'
,p_column_display_sequence=>50
,p_column_heading=>'Pedido'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(367968519004153461)
,p_query_column_id=>6
,p_column_alias=>'COD_MONEDA'
,p_column_display_sequence=>60
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(367968958747153461)
,p_query_column_id=>7
,p_column_alias=>'TIP_CAMBIO'
,p_column_display_sequence=>180
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(367970176751153461)
,p_query_column_id=>8
,p_column_alias=>'TOTAL'
,p_column_display_sequence=>110
,p_column_heading=>'Importe'
,p_use_as_row_header=>'N'
,p_column_format=>'999G999G999G999G999G999G990'
,p_column_alignment=>'CENTER'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(367962585400153457)
,p_query_column_id=>9
,p_column_alias=>'COD_CLIENTE'
,p_column_display_sequence=>90
,p_column_heading=>'Cod. Cliente'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(367962975986153458)
,p_query_column_id=>10
,p_column_alias=>'NOM_CLIENTE'
,p_column_display_sequence=>100
,p_column_heading=>'Nombre Cliente'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(367963326986153458)
,p_query_column_id=>11
,p_column_alias=>'NRO_REMISION'
,p_column_display_sequence=>150
,p_column_heading=>unistr('N\00BA Remisi\00F3n')
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(367963713980153458)
,p_query_column_id=>12
,p_column_alias=>'OBSERVACION'
,p_column_display_sequence=>160
,p_column_heading=>unistr('Observaci\00F3n')
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(367964199690153459)
,p_query_column_id=>13
,p_column_alias=>'NRO_RECIBO'
,p_column_display_sequence=>120
,p_column_heading=>unistr('N\00BA Recibo')
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(367964549815153459)
,p_query_column_id=>14
,p_column_alias=>'NRO_CANJE'
,p_column_display_sequence=>130
,p_column_heading=>unistr('N\00BA Canje')
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(367964942386153459)
,p_query_column_id=>15
,p_column_alias=>'ROW_ID'
,p_column_display_sequence=>190
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(367965371015153459)
,p_query_column_id=>16
,p_column_alias=>'FACTURA'
,p_column_display_sequence=>200
,p_column_heading=>'Factura'
,p_use_as_row_header=>'N'
,p_column_link=>'javascript:$s(''P361_SEQ_ID_DETALLE_FAC'',''#SEQ_ID#'');'
,p_column_linktext=>'<span class="fa fa-print" aria-hidden="true"></span>'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(367965721281153460)
,p_query_column_id=>17
,p_column_alias=>'RECIBOD'
,p_column_display_sequence=>210
,p_column_heading=>'Recibod'
,p_use_as_row_header=>'N'
,p_column_link=>'javascript:$s(''P361_SEQ_ID_DETALLE_REC'',''#SEQ_ID#'');'
,p_column_linktext=>'<span class="fa fa-print" aria-hidden="true"></span>'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(367966118213153460)
,p_query_column_id=>18
,p_column_alias=>'PAGARES'
,p_column_display_sequence=>220
,p_column_heading=>'Pagares'
,p_use_as_row_header=>'N'
,p_column_link=>'javascript:$s(''P361_SEQ_ID_DETALLE_PED'',''#SEQ_ID#'');'
,p_column_linktext=>'<span class="fa fa-print" aria-hidden="true"></span>'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(367966569480153460)
,p_query_column_id=>19
,p_column_alias=>'RE'
,p_column_display_sequence=>230
,p_column_heading=>'Re'
,p_use_as_row_header=>'N'
,p_column_link=>'javascript:$s(''P361_SEQ_ID_DETALLE_REM'',''#SEQ_ID#'');'
,p_column_linktext=>'<span class="fa fa-print" aria-hidden="true"></span>'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(367966984343153460)
,p_query_column_id=>20
,p_column_alias=>'NCR'
,p_column_display_sequence=>240
,p_column_heading=>'Ncr'
,p_use_as_row_header=>'N'
,p_column_link=>'javascript:$s(''P361_SEQ_ID_DETALLE_NCR'',''#SEQ_ID#'');'
,p_column_linktext=>'<span class="fa fa-print" aria-hidden="true"></span>'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(467630500546959971)
,p_plug_name=>'Contenedor Cabecera 2'
,p_parent_plug_id=>wwv_flow_imp.id(467627583046959942)
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
 p_id=>wwv_flow_imp.id(467628038137959947)
,p_plug_name=>'Cabecera 2'
,p_parent_plug_id=>wwv_flow_imp.id(467630500546959971)
,p_region_template_options=>'#DEFAULT#:margin-top-sm:margin-bottom-lg'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>30
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(467630534831959972)
,p_plug_name=>'Cabecera 2 Botonera 2'
,p_parent_plug_id=>wwv_flow_imp.id(467630500546959971)
,p_region_template_options=>'#DEFAULT#:margin-top-lg:margin-bottom-lg'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>50
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(467630792349959974)
,p_plug_name=>'Cabecera 2 Botonera'
,p_parent_plug_id=>wwv_flow_imp.id(467630500546959971)
,p_plug_display_sequence=>40
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(367976226273153469)
,p_button_sequence=>80
,p_button_plug_id=>wwv_flow_imp.id(467630534831959972)
,p_button_name=>'BTDETALLE_FACTURAS'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Detalle de Pedidos y Facturas'
,p_button_position=>'ABOVE_BOX'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(367976687578153469)
,p_button_sequence=>90
,p_button_plug_id=>wwv_flow_imp.id(467630534831959972)
,p_button_name=>'BTBUSCAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Buscar'
,p_button_position=>'ABOVE_BOX'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-clipboard-search'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(367975555315153464)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(467628038137959947)
,p_button_name=>'BTFACTURAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Procesar Planilla'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-gears'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(367977765221153469)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(467630792349959974)
,p_button_name=>'BTIMPRIMIR_FACTURAS'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_image_alt=>'Facturas'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-print'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(367978199787153470)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(467630792349959974)
,p_button_name=>'BTIMPRIMIR_RECIBO'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_image_alt=>'Recibo'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-print'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(367978582008153470)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(467630792349959974)
,p_button_name=>'BTIMPRIMIR_PAGARE'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_image_alt=>'Pagares'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-print'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(367978967959153470)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(467630792349959974)
,p_button_name=>'BTIMPRIMIR_REMISIONES'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_image_alt=>unistr('Remisi\00F3n')
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-print'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(367979335401153470)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_imp.id(467630792349959974)
,p_button_name=>'BTITEM_615'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_image_alt=>unistr('N. Cr\00E9dito')
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-print'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(354907485721081122)
,p_name=>'P766_COD_EMPRESA'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(467627583046959942)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(367952323345153446)
,p_name=>'P766_COD_MODULO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(467627583046959942)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(367952783530153449)
,p_name=>'P766_COD_USUARIO'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(467627583046959942)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(367953183850153450)
,p_name=>'P766_TIP_PEDIDO'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(467627583046959942)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(367953589038153450)
,p_name=>'P766_MENSAJE_COD_CUSTODIO'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(467627583046959942)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(367953921414153450)
,p_name=>'P766_MENSAJE_SER_COMPROBANTE'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(467627583046959942)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(367954399518153450)
,p_name=>'P766_MENSAJE_SER_NC'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(467627583046959942)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(367954733909153450)
,p_name=>'P766_MENSAJE_BTFACTURAR'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(467627583046959942)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(367955124676153451)
,p_name=>'P766_NRO_REMISION'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(467627583046959942)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(367955568774153451)
,p_name=>'P766_URL'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(467627583046959942)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(367955978508153451)
,p_name=>'P766_INDICADOR_REPORT_FACTURAS'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(467627583046959942)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(367956344341153451)
,p_name=>'P766_ERROR'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(467627583046959942)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(367957038961153453)
,p_name=>'P766_COD_SUCURSAL'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(467627721476959943)
,p_prompt=>' Sucursal'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT S.COD_SUCURSAL||''-''||S.DESCRIPCION D,',
'       S.COD_SUCURSAL R ',
'  FROM SUCURSALES S ',
' WHERE S.COD_EMPRESA = :P766_COD_EMPRESA',
'-- ORDER BY TO_NUMBER(S.COD_SUCURSAL)'))
,p_lov_display_null=>'YES'
,p_lov_cascade_parent_items=>'P766_COD_EMPRESA'
,p_ajax_items_to_submit=>'P766_COD_EMPRESA'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_colspan=>4
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'Y'
,p_attribute_05=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(367957483778153454)
,p_name=>'P766_DESC_SUCURSAL'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(467627721476959943)
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
 p_id=>wwv_flow_imp.id(367957843050153454)
,p_name=>'P766_COD_CUSTODIO'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(467627721476959943)
,p_prompt=>'Custodio'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
' select c.cod_custodio||''-''||c.descripcion d,',
'        c.cod_custodio r',
'      from cc_custodios c',
'   where c.cod_empresa =''18''',
'  order by to_number(c.cod_custodio) ',
'     '))
,p_lov_display_null=>'YES'
,p_lov_cascade_parent_items=>'P766_COD_EMPRESA'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>30
,p_colspan=>4
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'Y'
,p_attribute_05=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(367958286187153454)
,p_name=>'P766_DESC_CUSTODIO'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(467627721476959943)
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
 p_id=>wwv_flow_imp.id(367958627367153455)
,p_name=>'P766_COD_COBRADOR'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(467627721476959943)
,p_prompt=>'Cobrador'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select  ',
'       c.cod_cobrador||'' - ''||nvl( ltrim(p.nombre), ltrim(p.nomb_fantasia)) D ,c.cod_cobrador R',
'  from cc_cobradores c, ',
'       personas p ',
' where c.cod_empresa = ''18''',
'   and c.cod_persona = p.cod_persona'))
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
 p_id=>wwv_flow_imp.id(367959015942153455)
,p_name=>'P766_SER_COMPROBANTE'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(467627721476959943)
,p_prompt=>'Serie Factura'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT DISTINCT SERIE A, SERIE',
'FROM TALONARIOS A',
'WHERE cod_empresa=:P766_COD_EMPRESA',
'and A.CODIGO_USUARIO = :P_COD_USUARIO',
'AND COD_SUCURSAL = :P766_COD_SUCURSAL',
'AND TIP_TALONARIO IN (''FCO'', ''FCR'')  ',
'and a.activo=''S''',
'and fec_vencimiento>sysdate'))
,p_lov_display_null=>'YES'
,p_lov_cascade_parent_items=>'P766_COD_SUCURSAL,P_COD_USUARIO'
,p_ajax_items_to_submit=>'P766_COD_SUCURSAL,P_COD_USUARIO'
,p_ajax_optimize_refresh=>'Y'
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(367959466834153455)
,p_name=>'P766_COD_CUSTODIO_ENT'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(467627721476959943)
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
 p_id=>wwv_flow_imp.id(367959805269153455)
,p_name=>'P766_SER_NC'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(467627721476959943)
,p_prompt=>unistr('Serie N Cr\00E9dito')
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT DISTINCT SERIE, SERIE  A',
'FROM TALONARIOS A',
'WHERE  COD_SUCURSAL = :P766_COD_SUCURSAL',
'AND TIP_TALONARIO IN (''NCR'')',
'and a.activo=''S''',
'and a.codigo_usuario=:P_COD_USUARIO',
'and fec_vencimiento>sysdate',
'and cod_empresa=''18'''))
,p_lov_display_null=>'YES'
,p_lov_cascade_parent_items=>'P766_COD_SUCURSAL,P_COD_USUARIO,P766_COD_EMPRESA'
,p_ajax_items_to_submit=>'P766_COD_SUCURSAL,P_COD_USUARIO,P766_COD_EMPRESA'
,p_ajax_optimize_refresh=>'Y'
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(367960248424153455)
,p_name=>'P766_SER_RECIBO'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(467627721476959943)
,p_prompt=>'Serie Recibo'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT DISTINCT SERIE A, SERIE',
'FROM TALONARIOS  A',
'WHERE  COD_SUCURSAL = :P766_COD_SUCURSAL',
'AND TIP_TALONARIO IN (''REC'')',
'and a.activo=''S''',
'and cod_empresa=''18'''))
,p_lov_display_null=>'YES'
,p_lov_cascade_parent_items=>'P766_COD_SUCURSAL,P766_COD_EMPRESA'
,p_ajax_optimize_refresh=>'Y'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(367960659208153455)
,p_name=>'P766_GENERA_MD'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(467627721476959943)
,p_prompt=>'Generar'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--xlarge'
,p_attribute_01=>'N'
,p_attribute_02=>'S'
,p_attribute_03=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(367961052885153456)
,p_name=>'P766_SER_REMISION'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(467627721476959943)
,p_prompt=>unistr('Serie Remisi\00F3n')
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT DISTINCT SERIE A, SERIE',
'FROM TALONARIOS A',
'WHERE COD_SUCURSAL = :P766_COD_SUCURSAL',
'AND TIP_TALONARIO IN (''REM'')',
'and a.activo=''S''',
'and codigo_usuario=:P_COD_USUARIO',
'and fec_vencimiento>sysdate',
'and cod_empresa=''18'''))
,p_lov_display_null=>'YES'
,p_lov_cascade_parent_items=>'P766_COD_SUCURSAL,P_COD_USUARIO,P766_COD_EMPRESA'
,p_ajax_items_to_submit=>'P766_COD_SUCURSAL,P_COD_USUARIO,P766_COD_EMPRESA'
,p_ajax_optimize_refresh=>'Y'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(367961430945153456)
,p_name=>'P766_VARIOS_DEPOSITOS'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(467627721476959943)
,p_prompt=>unistr('Facturar Varios Dep\00F3sitos')
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--xlarge'
,p_attribute_01=>'N'
,p_attribute_02=>'S'
,p_attribute_03=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(367961811066153456)
,p_name=>'P766_NRO_PLANILLA'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(467627721476959943)
,p_prompt=>'Nro. Planilla Ruteo'
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
 p_id=>wwv_flow_imp.id(367970587233153462)
,p_name=>'P766_SEQ_ID_DETALLE_FAC'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(467628190374959948)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(367970919809153462)
,p_name=>'P766_SEQ_ID_DETALLE_REC'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(467628190374959948)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(367971330916153462)
,p_name=>'P766_SEQ_ID_DETALLE_PED'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(467628190374959948)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(367971751108153462)
,p_name=>'P766_SEQ_ID_DETALLE_REM'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(467628190374959948)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(367972176262153462)
,p_name=>'P766_SEQ_ID_DETALLE_NCR'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(467628190374959948)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(367972528521153462)
,p_name=>'P766_COD_CLIENTE_AUX'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(467628190374959948)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(367972919409153463)
,p_name=>'P766_TIP_COMPROBANTE_AUX'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(467628190374959948)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(367973347300153463)
,p_name=>'P766_SER_COMPROBANTE_AUX'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(467628190374959948)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(367973766577153463)
,p_name=>'P766_NRO_COMPROBANTE_AUX'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(467628190374959948)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(367974177869153463)
,p_name=>'P766_CONTROL_PAGARE'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(467628190374959948)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(367974543754153463)
,p_name=>'P766_SER_REMISION_AUX'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(467628190374959948)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(367977008116153469)
,p_name=>'P766_NRO_PLANILLA_TRASLADO'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(467630534831959972)
,p_prompt=>'Traslado'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#:margin-top-sm'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1031323461223625537)
,p_name=>'P766_INFORME'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(467630792349959974)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(367987069581153486)
,p_name=>'DA_SUCURSAL'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P766_COD_SUCURSAL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(367987551850153486)
,p_event_id=>wwv_flow_imp.id(367987069581153486)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'NULL;',
'APEX_DEBUG.ERROR('':P766_DESC_SUCURSAL ''||:P766_DESC_SUCURSAL);'))
,p_attribute_02=>'P766_COD_SUCURSAL,P766_DESC_SUCURSAL'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(367988007363153486)
,p_event_id=>wwv_flow_imp.id(367987069581153486)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/*BEGIN',
'',
'    BEGIN',
'        SELECT DESCRIPCION',
'          INTO :P766_DESC_SUCURSAL',
'          FROM SUCURSALES',
'         WHERE COD_EMPRESA = :P766_COD_EMPRESA',
'           AND COD_SUCURSAL = :P766_COD_SUCURSAL;',
'    EXCEPTION',
'        WHEN NO_DATA_FOUND THEN',
'        :P766_DESC_SUCURSAL := NULL;',
'    END;',
'',
'      if nvl(:P766_COD_SUCURSAL,''01'') IN(''20'',''28'') then',
'      	:P766_COD_CUSTODIO_ENT := ''24'';',
'      elsif nvl(:P766_COD_SUCURSAL,''01'')=''65'' then',
'      	:P766_COD_CUSTODIO_ENT := ''171'';	 ',
'      elsif nvl(:P766_COD_SUCURSAL,''01'') IN(''02'',''15'') then',
'      	:P766_COD_CUSTODIO_ENT := ''305'';	',
'      	elsif nvl(:P766_COD_SUCURSAL,''01'') in(''09'',''105'') then',
'      	:P766_COD_CUSTODIO_ENT := ''233'';	 ',
'     else 	                        ',
'     	:P766_COD_CUSTODIO_ENT := ''24'';-- busca_parametro( ''CC'', ''COD_CUSTODIO_DEP'' ); ',
'     end if;',
' ',
' ',
' ',
'EXCEPTION',
'    WHEN OTHERS THEN',
'    APEX_DEBUG.ERROR(''DA_SUCURSAL ''||SQLERRM);',
'END;*/',
'',
'BEGIN',
'',
'   ',
'',
'   :P766_GENERA_MD :=''S'';',
'',
'',
'   ',
'',
'   BEGIN',
'        SELECT DESCRIPCION',
'          INTO :P766_DESC_SUCURSAL',
'          FROM SUCURSALES',
'         WHERE COD_EMPRESA = :P766_COD_EMPRESA',
'           AND COD_SUCURSAL = :P766_COD_SUCURSAL;',
'    EXCEPTION',
'        WHEN NO_DATA_FOUND THEN',
'        :P766_DESC_SUCURSAL := NULL;',
'    END;',
'',
'     ',
'    	:P766_VARIOS_DEPOSITOS :=''S'';',
'    ',
'',
'    BEGIN',
'      SELECT u.cod_custodio, c.descripcion, U.SERIE_RECIBO',
'        INTO :P766_COD_CUSTODIO, :P766_DESC_CUSTODIO,:P766_SER_RECIBO',
'        FROM usuarios u, cc_custodios c',
'       WHERE u.cod_empresa = :P_COD_EMPRESA',
'         AND u.cod_usuario = :P_COD_USUARIO',
'         AND ''18''= c.cod_empresa ',
'         AND u.cod_custodio = c.cod_custodio ;',
'    EXCEPTION',
'      WHEN OTHERS THEN',
'           :P766_COD_CUSTODIO := NULL;',
'           :P766_DESC_CUSTODIO := NULL;',
'           :P766_SER_RECIBO:=NULL;',
'    END;',
' ',
'    BEGIN',
'      SELECT c.cod_cobrador',
'        INTO :P766_COD_COBRADOR',
'        FROM usuarios u, cc_cobradores c, personas p',
'       WHERE u.cod_empresa = :P_COD_EMPRESA',
'         AND u.cod_usuario = :P_COD_USUARIO',
'         AND ''18''= c.cod_empresa ',
'         AND u.cod_persona = c.cod_persona ',
'         AND p.cod_persona = c.cod_persona ;',
'    EXCEPTION',
'      WHEN OTHERS THEN',
'           :P766_COD_COBRADOR := ''54'' ;  ',
'    END ;',
'    ',
'    ',
'    BEGIN',
'    SELECT serie          ',
'      INTO :P766_SER_COMPROBANTE',
'      FROM talonarios',
'     WHERE cod_empresa = :P_COD_EMPRESA    ',
'       AND TIP_TALONARIO=''FCR''',
'       AND nvl( activo, ''S'' ) <> ''N''',
'       AND nvl( AUTO_IMPRESION, ''N'' )= ''S''',
'       AND nvl(codigo_usuario,:P346_COD_USUARIO) = :P_COD_USUARIO',
'       AND COD_SUCURSAL = :P766_COD_sucursal',
'       AND fec_vencimiento >= trunc(sysdate)',
'       AND rownum=1;    ',
'    EXCEPTION',
'        WHEN OTHERS THEN',
'        	  :P766_SER_COMPROBANTE := NULL;',
'    END;',
'    ',
'    BEGIN',
'    SELECT serie           ',
'      INTO :P766_SER_NC',
'      FROM talonarios',
'     WHERE cod_empresa = :P_COD_EMPRESA',
'       AND TIP_TALONARIO=''NCR''',
'       AND nvl( activo, ''S'' ) <> ''N''',
'       AND nvl( AUTO_IMPRESION, ''N'' )= ''S''',
'       AND nvl(codigo_usuario, :P_COD_USUARIO) = :P_COD_USUARIO',
'       AND COD_SUCURSAL = :P766_COD_sucursal',
'       AND fec_vencimiento >= trunc(sysdate)',
'       AND rownum=1;',
'    EXCEPTION',
'        WHEN OTHERS THEN',
'        	  :P766_SER_NC := NULL;',
'    END;',
'',
'    BEGIN',
'       SELECT serie ',
'         INTO :P766_SER_REMISION',
'         FROM talonarios',
'        WHERE cod_empresa = :P_COD_EMPRESA',
'          AND tip_talonario = ''REM''',
'          AND nvl( activo, ''S'' ) <> ''N''',
'          AND nvl( AUTO_IMPRESION, ''N'' )= ''S''',
'          AND nvl(codigo_usuario, :P_COD_USUARIO) = :P_COD_USUARIO',
'          AND COD_SUCURSAL = :P766_COD_sucursal',
'          AND fec_vencimiento >= trunc(sysdate)',
'          AND rownum=1;',
'    EXCEPTION',
'    	WHEN OTHERS THEN',
'    	  :P766_SER_REMISION := NULL;',
'    end;',
'',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        null;',
'END;',
''))
,p_attribute_02=>'P_COD_EMPRESA,P766_COD_SUCURSAL,P766_COD_EMPRESA'
,p_attribute_03=>'P766_DESC_SUCURSAL,P766_COD_CUSTODIO_ENT,P766_COD_CUSTODIO,P766_SER_COMPROBANTE,P766_SER_RECIBO,P766_SER_REMISION'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(367981404383153482)
,p_name=>'DA_COD_CUSTODIO'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P766_COD_CUSTODIO'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(367981968533153484)
,p_event_id=>wwv_flow_imp.id(367981404383153482)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_02=>'P766_COD_CUSTODIO'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(367982464793153484)
,p_event_id=>wwv_flow_imp.id(367981404383153482)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    RPFACBH.VALIDATE_COD_CUSTODIO(pcod_empresa   => ''18'',',
'                                   pcod_custodio  => :P766_COD_CUSTODIO,',
'                                   pcod_usuario   => :P_COD_USUARIO,',
'                                   pdesc_custodio => :P766_DESC_CUSTODIO,',
'                                   pmensaje       => :P766_MENSAJE_COD_CUSTODIO);',
'EXCEPTION',
'    WHEN OTHERS THEN',
'    APEX_DEBUG.ERROR(''DA_COD_CUSTODIO ''||SQLERRM);',
'END;'))
,p_attribute_02=>'P_COD_EMPRESA,P766_COD_CUSTODIO,P_COD_USUARIO,P766_COD_EMPRESA'
,p_attribute_03=>'P766_DESC_CUSTODIO,P766_MENSAJE_COD_CUSTODIO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P766_COD_CUSTODIO'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(367982854044153485)
,p_name=>'DA_MENSAJE_COD_CUSTODIO'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P766_MENSAJE_COD_CUSTODIO'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(367983371108153485)
,p_event_id=>wwv_flow_imp.id(367982854044153485)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_02=>'P766_MENSAJE_COD_CUSTODIO'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(367983875989153485)
,p_event_id=>wwv_flow_imp.id(367982854044153485)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'&P766_MENSAJE_COD_CUSTODIO.'
,p_attribute_02=>'Aviso'
,p_attribute_03=>'warning'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P766_MENSAJE_COD_CUSTODIO'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(367984271438153485)
,p_name=>'DA_SER_COMPROBANTE'
,p_event_sequence=>40
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P766_SER_COMPROBANTE'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(367984751675153485)
,p_event_id=>wwv_flow_imp.id(367984271438153485)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_02=>'P766_SER_COMPROBANTE'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(367985277605153486)
,p_event_id=>wwv_flow_imp.id(367984271438153485)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    RPFACBH.VALIDATE_SER_COMPROBANTE(pcod_empresa     => :P766_COD_EMPRESA,',
'                                      pser_comprobante => :P766_SER_COMPROBANTE,',
'                                      pmensaje         => :P766_MENSAJE_SER_COMPROBANTE);',
'EXCEPTION',
'    WHEN OTHERS THEN',
'    APEX_DEBUG.ERROR(''DA_SER_COMPROBANTE ''||SQLERRM);',
'END;'))
,p_attribute_02=>'P_COD_EMPRESA,P766_SER_COMPROBANTE,P766_COD_EMPRESA'
,p_attribute_03=>'P766_MENSAJE_SER_COMPROBANTE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P766_SER_COMPROBANTE'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(367985669131153486)
,p_name=>'DA_MENSAJE_SER_COMPROBANTE'
,p_event_sequence=>50
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P766_MENSAJE_SER_COMPROBANTE'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(367986176279153486)
,p_event_id=>wwv_flow_imp.id(367985669131153486)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_02=>'P766_SER_COMPROBANTE'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(367986677690153486)
,p_event_id=>wwv_flow_imp.id(367985669131153486)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'&P766_MENSAJE_SER_COMPROBANTE.'
,p_attribute_02=>'Aviso'
,p_attribute_03=>'warning'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P766_MENSAJE_SER_COMPROBANTE'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(367988442204153487)
,p_name=>'DA_MENSAJE_SER_NC'
,p_event_sequence=>60
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P766_MENSAJE_SER_NC'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(367988996744153487)
,p_event_id=>wwv_flow_imp.id(367988442204153487)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_02=>'P766_MENSAJE_SER_NC'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(367989435686153487)
,p_event_id=>wwv_flow_imp.id(367988442204153487)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'&P766_MENSAJE_SER_NC.'
,p_attribute_02=>'Aviso'
,p_attribute_03=>'warning'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P766_MENSAJE_SER_NC'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(367989819936153487)
,p_name=>'DA_SER_NC'
,p_event_sequence=>70
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P766_SER_NC'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(367990324915153488)
,p_event_id=>wwv_flow_imp.id(367989819936153487)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_02=>'P766_SER_NC'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(367990889182153489)
,p_event_id=>wwv_flow_imp.id(367989819936153487)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    RPFACBH.VALIDATE_SER_NC(pcod_empresa  => :P766_COD_EMPRESA,',
'                             pcod_sucursal => :P766_COD_SUCURSAL,',
'                             pser_nc       => :P766_SER_NC,',
'                             pmensaje      => :P766_MENSAJE_SER_NC);',
'EXCEPTION',
'    WHEN OTHERS THEN',
'    APEX_DEBUG.ERROR(''DA_SER_NC ''||SQLERRM);',
'END;'))
,p_attribute_02=>'P_COD_EMPRESA,P766_COD_SUCURSAL,P766_SER_NC'
,p_attribute_03=>'P766_MENSAJE_SER_NC'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P766_SER_NC'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(367991243991153489)
,p_name=>'DA_BTFACTURAR'
,p_event_sequence=>80
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(367975555315153464)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(367991730131153489)
,p_event_id=>wwv_flow_imp.id(367991243991153489)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>unistr('\00BFDesea procesar la planilla?')
,p_attribute_02=>'Aviso'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(367992265977153489)
,p_event_id=>wwv_flow_imp.id(367991243991153489)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'var spinner = apex.util.showSpinner();'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(367992760906153489)
,p_event_id=>wwv_flow_imp.id(367991243991153489)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    RPFACBH.BTFACTURAR(pcod_empresa        => ''18'',',
'                        ptip_pedido         => :P766_TIP_PEDIDO,',
'                        pser_comprobante    => :P766_SER_COMPROBANTE,',
'                        pcod_custodio       => :P766_COD_CUSTODIO,',
'                        pcod_custodio_ent   => :P766_COD_CUSTODIO_ENT,',
'                        pcod_sucursal       => :P766_COD_SUCURSAL,',
'                        pnro_planilla       => :P766_NRO_PLANILLA,',
'                        pvarios_depositos   => :P766_VARIOS_DEPOSITOS,',
'                        pser_remision       => :P766_SER_REMISION,',
'                        pser_recibo         => :P766_SER_RECIBO,',
'                        pcod_cobrador       => :P766_COD_COBRADOR,',
'                        pser_nc             => :P766_SER_NC,',
'                        pcod_usuario        => :P_COD_USUARIO,',
'                        pmensaje            => :P766_MENSAJE_BTFACTURAR,',
'                        pdatos_nro_remision => :P766_NRO_REMISION,',
'                        pnro_planilla_tras  => :P766_NRO_PLANILLA_TRASLADO);  ',
'EXCEPTION',
'    WHEN OTHERS THEN',
'    APEX_DEBUG.ERROR(''DA_BTFACTURAR ''||SQLERRM);',
'     raise_application_error(-20001, ''DA_BTFACTURAR''||SQLERRM);',
'END;'))
,p_attribute_02=>'P_COD_EMPRESA,P766_TIP_PEDIDO,P766_SER_COMPROBANTE,P766_COD_CUSTODIO,P766_COD_CUSTODIO_ENT,P766_COD_SUCURSAL,P766_NRO_PLANILLA,P766_VARIOS_DEPOSITOS,P766_SER_REMISION,P766_SER_RECIBO,P766_COD_COBRADOR,P766_SER_NC,P766_COD_USUARIO,P_COD_USUARIO,P766_C'
||'OD_EMPRESA'
,p_attribute_03=>'P766_MENSAJE_BTFACTURAR,P766_NRO_REMISION,P766_NRO_PLANILLA_TRASLADO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(367993266053153490)
,p_event_id=>wwv_flow_imp.id(367991243991153489)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'     RPFACBH.PR_BUSCAR_FAC (PI_COD_EMPRESA => ''18'',',
'                             PI_NRO_PLANILLA => :P766_NRO_PLANILLA);',
'',
'     :P766_INDICADOR_REPORT_FACTURAS := ''1'';',
':P766_ERROR:=''Busqueda Realizada'';',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;'))
,p_attribute_02=>'P_COD_EMPRESA,P766_NRO_PLANILLA,P766_COD_EMPRESA'
,p_attribute_03=>'P766_INDICADOR_REPORT_FACTURAS,P766_ERROR'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(367993745736153491)
,p_event_id=>wwv_flow_imp.id(367991243991153489)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(467628190374959948)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(367994280520153491)
,p_event_id=>wwv_flow_imp.id(367991243991153489)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$("#apex_wait_overlay").remove();',
'$(".u-Processing").remove();'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(367994625666153491)
,p_name=>'DA_MENSAJE_BTFACTURAR'
,p_event_sequence=>90
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P766_MENSAJE_BTFACTURAR'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(367995196813153491)
,p_event_id=>wwv_flow_imp.id(367994625666153491)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_02=>'P766_MENSAJE_BTFACTURAR'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(367995608533153492)
,p_event_id=>wwv_flow_imp.id(367994625666153491)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'&P766_MENSAJE_BTFACTURAR.'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P766_MENSAJE_BTFACTURAR'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(367996056843153492)
,p_name=>'DA_BTIMPRIMIR_FACTURAS'
,p_event_sequence=>100
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(367977765221153469)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(367996510330153492)
,p_event_id=>wwv_flow_imp.id(367996056843153492)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    FOR CC IN(SELECT seq_id SEQ_ID,',
'                     c001 ser_comprobante,',
'                     c002 nro_comprobante,',
'                     c014 TIP_COMPROBANTE',
'                FROM APEX_COLLECTIONS',
'               WHERE COLLECTION_NAME = ''COLEC_RPFACCPH_DETALLE'')',
'    LOOP',
'        RPFACBH.IMPRIMIR_FACTURA(p_cod_empresa        => :P766_COD_EMPRESA,',
'                                  p_cod_sucursal       => :P766_COD_SUCURSAL,',
'                                  p_tipo               => CC.TIP_COMPROBANTE,',
'                                  p_serie              => CC.SER_COMPROBANTE,',
'                                  p_numero             => CC.NRO_COMPROBANTE,',
'                                  p_ind_auto_impresion => ''S'',',
'                                  p_grupo_numeracion   => 0);',
'    END LOOP;',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'    APEX_DEBUG.ERROR(''DA_BTIMPRIMIR_FACTURAS ''||SQLERRM);',
'END;'))
,p_attribute_02=>'P_COD_EMPRESA,P_COD_EMPRESA,P766_COD_EMPRESA'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_server_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(1031323379556625536)
,p_event_id=>wwv_flow_imp.id(367996056843153492)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin ',
'if :P766_SER_COMPROBANTE not like ''%FE%'' THEN',
':P766_INFORME := ''VTIMPFAC_CANON_FE_MASIVO_1'';',
'else ',
':P766_INFORME:=''VTIMPFAC_CANON_MASIVO_BH_FE'';',
'end if;',
'end;'))
,p_attribute_02=>'P766_SER_COMPROBANTE'
,p_attribute_03=>'P766_INFORME'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(367997081728153492)
,p_event_id=>wwv_flow_imp.id(367996056843153492)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/*doVtimpfacCanonFeMasivo(apex.item(''P_COD_EMPRESA'').getValue(), ',
'                        apex.item(''P766_NRO_PLANILLA'').getValue(),',
'                        apex.item(''P_COD_USUARIO'').getValue());*/',
'',
'/*doVtimpfacCanonFeMasivo(apex.item(''P_COD_EMPRESA'').getValue(), ',
'                        apex.item(''P346_NRO_PLANILLA_FAC'').getValue(),',
'                        apex.item(''P_COD_USUARIO'').getValue());',
'',
'',
'*/',
'',
'',
'var comprobante = document.getElementById("P766_NRO_PLANILLA").value; ',
'var params = []',
'var empresa = apex.item("P766_COD_EMPRESA").getValue();',
'var informe = apex.item("P766_INFORME").getValue();',
'var nro_comprobante = apex.item("P766_NRO_PLANILLA").getValue();',
'var usuario = ''&APP_USER.'';',
'//var vfacnom = "VTIMPFAC_CANON_FE_MASIVO_1";',
'var vfacnom =  apex.item("P766_INFORME").getValue();',
'params.push({ name: ''P_COD_EMPRESA'', value: empresa})',
'params.push({ name: ''P_NRO_PLANILLA'', value: nro_comprobante}) ',
'params.push({ name: ''P_USUARIO'', value: usuario})  ',
'createReportUrl(vfacnom, params)',
'',
'                         '))
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
 p_id=>wwv_flow_imp.id(367997464217153492)
,p_name=>'DA_BTIMPRIMIR_RECIBO'
,p_event_sequence=>110
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(367978199787153470)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(367997938326153492)
,p_event_id=>wwv_flow_imp.id(367997464217153492)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    FOR CC IN(SELECT seq_id SEQ_ID,',
'                     c011 NRO_RECIBO',
'                FROM APEX_COLLECTIONS',
'               WHERE COLLECTION_NAME = ''COLEC_RPFACCPH_DETALLE'')',
'    LOOP',
'        IF CC.NRO_RECIBO IS NOT NULL THEN',
'        NULL;',
'        END IF;',
'    END LOOP;',
'EXCEPTION',
'    WHEN OTHERS THEN',
'    APEX_DEBUG.ERROR(''DA_BTIMPRIMIR_RECIBO ''||SQLERRM);',
'END;'))
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_server_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(367998414129153493)
,p_event_id=>wwv_flow_imp.id(367997464217153492)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/*doCCReciboMasivo (apex.item(''P_COD_EMPRESA'').getValue(), ',
'                  apex.item(''P766_NRO_PLANILLA'').getValue(),',
'                  apex.item(''P_COD_USUARIO'').getValue());*/',
'',
'',
'',
'var comprobante = document.getElementById("P766_NRO_PLANILLA").value; ',
'var params = []',
'var empresa = apex.item("P_COD_EMPRESA").getValue();',
'var nro_comprobante = apex.item("P766_NRO_PLANILLA").getValue();',
'var usuario = ''&APP_USER.'';',
'var vfacnom = "CCRECIBO_MASIVO_FE";',
'params.push({ name: ''P_COD_EMPRESA'', value: empresa})',
'params.push({ name: ''P_NRO_PLANILLA'', value: nro_comprobante}) ',
'params.push({ name: ''P_USUARIO'', value: usuario})  ',
'createReportUrl(vfacnom, params)',
'',
'                                     '))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(367998800607153493)
,p_name=>'DA_BTIMPRIMIR_PAGARE'
,p_event_sequence=>120
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(367978582008153470)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(367999382341153493)
,p_event_id=>wwv_flow_imp.id(367998800607153493)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    FOR CC IN(SELECT seq_id SEQ_ID,',
'                     c001 ser_comprobante,',
'                     c002 nro_comprobante,',
'                     c013 NRO_CANJE,',
'                     c014 TIP_COMPROBANTE',
'                FROM APEX_COLLECTIONS',
'               WHERE COLLECTION_NAME = ''COLEC_RPFACCPH_DETALLE'')',
'    LOOP',
'        IF CC.NRO_CANJE IS NOT NULL THEN',
'            NULL;',
'        END IF;',
'    END LOOP;',
'EXCEPTION',
'    WHEN OTHERS THEN',
'    APEX_DEBUG.ERROR(''DA_BTIMPRIMIR_PAGARE ''||SQLERRM);',
'END;'))
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_server_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(367999821133153493)
,p_event_id=>wwv_flow_imp.id(367998800607153493)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/*doPagareMasivo  (apex.item(''P_COD_EMPRESA'').getValue(), ',
'                 apex.item(''P766_NRO_PLANILLA'').getValue());',
'*/',
'var comprobante = document.getElementById("P766_NRO_PLANILLA").value; ',
'var params = []',
'var empresa = apex.item("P766_COD_EMPRESA").getValue();',
'var nro_comprobante = apex.item("P766_NRO_PLANILLA").getValue();',
'var usuario = ''&APP_USER.'';',
'var vfacnom = "CCPAGARE_MASIVO_CPH_1";//"CCPAGARE_MASIVO_BH";',
'params.push({ name: ''P_COD_EMPRESA'', value: empresa})',
'params.push({ name: ''P_NRO_PLANILLA'', value: nro_comprobante}) ',
' ',
'createReportUrl(vfacnom, params)',
'',
'                                    '))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(368000204643153493)
,p_name=>'DA_BTIMPRIMIR_REMISIONES'
,p_event_sequence=>130
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(367978967959153470)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(368000788389153493)
,p_event_id=>wwv_flow_imp.id(368000204643153493)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    FOR CC IN(SELECT seq_id SEQ_ID,',
'                     c009 nro_remision',
'                FROM APEX_COLLECTIONS',
'               WHERE COLLECTION_NAME = ''COLEC_RPFACCPH_DETALLE'')',
'    LOOP',
'        IF CC.NRO_REMISION IS NOT NULL THEN',
'        NULL;',
'        END IF;',
'    END LOOP;',
'EXCEPTION',
'    WHEN OTHERS THEN',
'    APEX_DEBUG.ERROR(''DA_BTIMPRIMIR_REMISIONES ''||SQLERRM);',
'END;'))
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_server_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(368001295240153493)
,p_event_id=>wwv_flow_imp.id(368000204643153493)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/*doStremautMasivo (apex.item(''P_COD_EMPRESA'').getValue(), ',
'                  apex.item(''P766_NRO_PLANILLA'').getValue(),',
'                  apex.item(''P_COD_USUARIO'').getValue());*/',
'',
'',
'',
'var comprobante = document.getElementById("P766_NRO_PLANILLA").value; ',
'var params = []',
'var empresa = apex.item("P766_COD_EMPRESA").getValue();',
'var nro_comprobante = apex.item("P766_NRO_PLANILLA").getValue();',
'var usuario = ''&APP_USER.'';',
'var vfacnom = "STREMAUT_MASIVO_BH_FE";',
'params.push({ name: ''P_COD_EMPRESA'', value: empresa})',
'params.push({ name: ''P_NRO_PLANILLA'', value: nro_comprobante}) ',
'',
'createReportUrl(vfacnom, params)',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(368001614373153494)
,p_name=>'DA_BTITEM_615'
,p_event_sequence=>140
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(367979335401153470)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(368002140276153494)
,p_event_id=>wwv_flow_imp.id(368001614373153494)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    FOR CC IN(SELECT seq_id SEQ_ID,',
'                     c012 NRO_NCR',
'                FROM APEX_COLLECTIONS',
'               WHERE COLLECTION_NAME = ''COLEC_RPFACCPH_DETALLE'')',
'    LOOP',
'        IF CC.NRO_NCR IS NOT NULL THEN',
'        NULL;',
'        END IF;',
'    END LOOP;',
'EXCEPTION',
'    WHEN OTHERS THEN',
'    APEX_DEBUG.ERROR(''DA_BTITEM_615 ''||SQLERRM);',
'END;'))
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_server_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(368002645411153494)
,p_event_id=>wwv_flow_imp.id(368001614373153494)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'doVtimpfacCanonFe (apex.item(''P_COD_EMPRESA'').getValue(), ',
'                  apex.item(''P766_NRO_PLANILLA'').getValue(),',
'                  apex.item(''P_COD_USUARIO'').getValue());'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(368003087035153495)
,p_name=>'DA_SEQ_ID_IMPRIMIR_FAC'
,p_event_sequence=>150
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P766_SEQ_ID_DETALLE_FAC'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(368004093804153495)
,p_event_id=>wwv_flow_imp.id(368003087035153495)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_02=>'P766_SEQ_ID_DETALLE_FAC'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(368004512618153495)
,p_event_id=>wwv_flow_imp.id(368003087035153495)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'VTIP_COMPROBANTE VARCHAR2(50);',
'VSER_COMPROBANTE VARCHAR2(50);',
'VNRO_COMPROBANTE VARCHAR2(500);',
'VCOD_CLIENTE VARCHAR2(500);',
'BEGIN',
'    BEGIN',
'        SELECT c014,',
'               c001,',
'               c002,',
'               c007',
'          INTO VTIP_COMPROBANTE,',
'               VSER_COMPROBANTE,',
'               VNRO_COMPROBANTE,',
'               VCOD_CLIENTE',
'          FROM APEX_COLLECTIONS',
'         WHERE COLLECTION_NAME = ''COLEC_RPFACCPH_DETALLE''',
'           AND seq_id = :P766_SEQ_ID_DETALLE_FAC;',
'    EXCEPTION',
'        WHEN NO_DATA_FOUND THEN',
'        VTIP_COMPROBANTE := NULL;',
'        VSER_COMPROBANTE := NULL;',
'        VNRO_COMPROBANTE := NULL;',
'        VCOD_CLIENTE := NULL;',
'    END;',
'',
'    RPFACBH.IMPRIMIR_FACTURA(p_cod_empresa        => :P766_COD_EMPRESA,',
'                              p_cod_sucursal       => :P766_COD_SUCURSAL,',
'                              p_tipo               => VTIP_COMPROBANTE,',
'                              p_serie              => VSER_COMPROBANTE,',
'                              p_numero             => VNRO_COMPROBANTE,',
'                              p_ind_auto_impresion => ''S'',',
'                              p_grupo_numeracion   => 0);',
'',
'    :P766_COD_CLIENTE_AUX := VCOD_CLIENTE;',
'    :P766_TIP_COMPROBANTE_AUX := VTIP_COMPROBANTE;',
'    :P766_SER_COMPROBANTE_AUX := VSER_COMPROBANTE;',
'    :P766_NRO_COMPROBANTE_AUX := VNRO_COMPROBANTE;',
'EXCEPTION',
'    WHEN OTHERS THEN',
'    APEX_DEBUG.ERROR(''DA_SEQ_ID_IMPRIMIR_FAC''||SQLERRM);',
'END;'))
,p_attribute_02=>'P_COD_EMPRESA,P766_COD_SUCURSAL,P766_COD_EMPRESA'
,p_attribute_03=>'P766_COD_CLIENTE_AUX,P766_TIP_COMPROBANTE_AUX,P766_SER_COMPROBANTE_AUX,P766_NRO_COMPROBANTE_AUX'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(368003596659153495)
,p_event_id=>wwv_flow_imp.id(368003087035153495)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'doVtimpfacCanon (apex.item(''P_COD_EMPRESA'').getValue(),',
'                 apex.item(''P766_COD_CLIENTE_AUX'').getValue(),',
'                 "",',
'                 "",',
'                 apex.item(''P766_TIP_COMPROBANTE_AUX'').getValue(),',
'                 apex.item(''P_COD_USUARIO'').getValue(),',
'                 apex.item(''P766_SER_COMPROBANTE_AUX'').getValue(),',
'                 apex.item(''P766_NRO_COMPROBANTE_AUX'').getValue(),',
'                 "S");'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(368004987474153495)
,p_name=>'DA_SEQ_ID_IMPRIMIR_REC'
,p_event_sequence=>160
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P766_SEQ_ID_DETALLE_REC'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(368005403522153495)
,p_event_id=>wwv_flow_imp.id(368004987474153495)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_02=>'P766_SEQ_ID_DETALLE_REC'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(368005976453153496)
,p_event_id=>wwv_flow_imp.id(368004987474153495)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'VNRO_RECIBO VARCHAR2(500);',
'VSER_COMPROBANTE VARCHAR2(50);',
'VNRO_COMPROBANTE VARCHAR2(500);',
'BEGIN',
'    BEGIN',
'        SELECT c011,',
'               c001,',
'               c002',
'          INTO VNRO_RECIBO,',
'               VSER_COMPROBANTE,',
'               VNRO_COMPROBANTE',
'          FROM APEX_COLLECTIONS',
'         WHERE COLLECTION_NAME = ''COLEC_RPFACCPH_DETALLE''',
'           AND seq_id = :P766_SEQ_ID_DETALLE_REC;',
'    EXCEPTION',
'        WHEN NO_DATA_FOUND THEN',
'        VNRO_RECIBO := NULL;',
'        VSER_COMPROBANTE := NULL;',
'        VNRO_COMPROBANTE := NULL;',
'    END;',
'',
'    :P766_SER_COMPROBANTE_AUX := VSER_COMPROBANTE;',
'    :P766_NRO_COMPROBANTE_AUX := VNRO_COMPROBANTE;',
'EXCEPTION',
'    WHEN OTHERS THEN',
'    APEX_DEBUG.ERROR(''DA_SEQ_ID_IMPRIMIR_REC ''||SQLERRM);',
'END;'))
,p_attribute_02=>'P766_SEQ_ID_DETALLE_REC'
,p_attribute_03=>'P766_SER_COMPROBANTE_AUX,P766_NRO_COMPROBANTE_AUX'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(368006471641153496)
,p_event_id=>wwv_flow_imp.id(368004987474153495)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'doCCRecibo(apex.item(''P766_SER_COMPROBANTE_AUX'').getValue(),',
'           apex.item(''P766_NRO_COMPROBANTE_AUX'').getValue());'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(368006816278153496)
,p_name=>'DA_SEQ_ID_IMPRIMIR_PED'
,p_event_sequence=>170
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P766_SEQ_ID_DETALLE_PED'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(368007378569153496)
,p_event_id=>wwv_flow_imp.id(368006816278153496)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_02=>'P766_SEQ_ID_DETALLE_PED'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(368007818698153496)
,p_event_id=>wwv_flow_imp.id(368006816278153496)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'VTIP_COMPROBANTE VARCHAR2(50);',
'VSER_COMPROBANTE VARCHAR2(50);',
'VNRO_COMPROBANTE VARCHAR2(500);',
'VNRO_CANJE VARCHAR2(500);',
'VTIP_CLIENTE VARCHAR2(500);',
'VPAGARE_UNICO VARCHAR2(500);',
'VCOD_CLIENTE VARCHAR2(500);',
'BEGIN',
'    BEGIN',
'        SELECT c014,',
'               c001,',
'               c002,',
'               c013,',
'               c007',
'          INTO VTIP_COMPROBANTE,',
'               VSER_COMPROBANTE,',
'               VNRO_COMPROBANTE,',
'               VNRO_CANJE,',
'               VCOD_CLIENTE',
'          FROM APEX_COLLECTIONS',
'         WHERE COLLECTION_NAME = ''COLEC_RPFACCPH_DETALLE''',
'           AND seq_id = :P766_SEQ_ID_DETALLE_PED;',
'    EXCEPTION',
'        WHEN NO_DATA_FOUND THEN',
'        VTIP_COMPROBANTE := NULL;',
'        VSER_COMPROBANTE := NULL;',
'        VNRO_COMPROBANTE := NULL;',
'        VNRO_CANJE := NULL;',
'        VCOD_CLIENTE := NULL;',
'    END;',
'',
'    RPFACBH.imprimir_pagares(p_cod_empresa => :P766_COD_EMPRESA,                           ',
'                              p_tipo        => VTIP_COMPROBANTE,',
'                              p_serie       => VSER_COMPROBANTE,',
'                              p_numero      => VNRO_COMPROBANTE,',
'                              p_nro_canje   => VNRO_CANJE,',
'                              ptip_cliente  => VTIP_CLIENTE,',
'                              ppagare_unico => VPAGARE_UNICO);',
'',
'    IF NVL(VTIP_CLIENTE,''d'') = ''6'' THEN',
'        :P766_CONTROL_PAGARE := 1;--run_product( REPORTS, ''CCPAGARE_EMP_CPH'', SYNCHRONOUS, RUNTIME, FILESYSTEM, pl_id, NULL ) ;',
'    ELSIF VPAGARE_UNICO = ''S'' THEN',
'        :P766_CONTROL_PAGARE := 2;--run_product( REPORTS, ''CCPAGARE_UNICO_CPH'', SYNCHRONOUS, RUNTIME, FILESYSTEM, pl_id, NULL );',
'    ELSE',
'        :P766_CONTROL_PAGARE := 3;--run_product( REPORTS, ''CCPAGARE_OFICIO_CANON_CPH'', SYNCHRONOUS, RUNTIME, FILESYSTEM, pl_id, NULL ) ;',
'    END IF;   ',
'    ',
'    :P766_COD_CLIENTE_AUX := VCOD_CLIENTE;',
'    :P766_TIP_COMPROBANTE_AUX := VTIP_COMPROBANTE;',
'    :P766_SER_COMPROBANTE_AUX := VSER_COMPROBANTE;',
'    :P766_NRO_COMPROBANTE_AUX := VNRO_COMPROBANTE;',
'EXCEPTION',
'    WHEN OTHERS THEN',
'    APEX_DEBUG.ERROR(''DA_SEQ_ID_IMPRIMIR_PED ''||SQLERRM);',
'END;'))
,p_attribute_02=>'P766_SEQ_ID_DETALLE_PED,P766_COD_EMPRESA'
,p_attribute_03=>'P766_CONTROL_PAGARE,P766_COD_CLIENTE_AUX,P766_TIP_COMPROBANTE_AUX,P766_SER_COMPROBANTE_AUX,P766_NRO_COMPROBANTE_AUX'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(368008315384153497)
,p_event_id=>wwv_flow_imp.id(368006816278153496)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'doCCPagareEmp (apex.item(''P_COD_EMPRESA'').getValue(),',
'                apex.item(''P766_COD_CLIENTE_AUX'').getValue(),',
'                apex.item(''P766_TIP_COMPROBANTE_AUX'').getValue(),',
'                apex.item(''P_COD_USUARIO'').getValue(),',
'                apex.item(''P766_SER_COMPROBANTE_AUX'').getValue(),',
'                "",',
'                apex.item(''P766_NRO_COMPROBANTE_AUX'').getValue());'))
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P766_CONTROL_PAGARE'
,p_client_condition_expression=>'1'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(368008807849153497)
,p_event_id=>wwv_flow_imp.id(368006816278153496)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'doCCPagareUnico(apex.item(''P_COD_EMPRESA'').getValue(),',
'                apex.item(''P766_COD_CLIENTE_AUX'').getValue(),',
'                apex.item(''P766_TIP_COMPROBANTE_AUX'').getValue(),',
'                apex.item(''P766_SER_COMPROBANTE_AUX'').getValue(),',
'                "",',
'                apex.item(''P766_NRO_COMPROBANTE_AUX'').getValue());'))
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P766_CONTROL_PAGARE'
,p_client_condition_expression=>'2'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(368009370026153497)
,p_event_id=>wwv_flow_imp.id(368006816278153496)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'doCCPagareOficioCanon(apex.item(''P_COD_EMPRESA'').getValue(),',
'                     apex.item(''P766_COD_CLIENTE_AUX'').getValue(),',
'                     apex.item(''P766_TIP_COMPROBANTE_AUX'').getValue(),',
'                     apex.item(''P766_SER_COMPROBANTE_AUX'').getValue(),',
'                     "",',
'                     apex.item(''P766_NRO_COMPROBANTE_AUX'').getValue());'))
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P766_CONTROL_PAGARE'
,p_client_condition_expression=>'3'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(368009750105153497)
,p_name=>'DA_SEQ_ID_IMPRIMIR_REM'
,p_event_sequence=>180
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P766_SEQ_ID_DETALLE_REM'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(368010265630153497)
,p_event_id=>wwv_flow_imp.id(368009750105153497)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_02=>'P766_SEQ_ID_DETALLE_REM'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(368010782018153498)
,p_event_id=>wwv_flow_imp.id(368009750105153497)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'VNRO_REMISION VARCHAR2(500);',
'VTIP_COMPROBANTE VARCHAR2(50);',
'VNRO_COMPROBANTE VARCHAR2(500);',
'VCOD_CLIENTE VARCHAR2(500);',
'VSER_COMPROBANTE VARCHAR2(50);',
'BEGIN',
'    BEGIN',
'        SELECT c009,',
'               c014,',
'               c002,',
'               c007,',
'               c001',
'          INTO VNRO_REMISION,',
'               VTIP_COMPROBANTE,',
'               VNRO_COMPROBANTE,',
'               VCOD_CLIENTE,',
'               VSER_COMPROBANTE',
'          FROM APEX_COLLECTIONS',
'         WHERE COLLECTION_NAME = ''COLEC_RPFACCPH_DETALLE''',
'           AND seq_id = :P766_SEQ_ID_DETALLE_REM;',
'    EXCEPTION',
'        WHEN NO_DATA_FOUND THEN',
'        VNRO_REMISION := NULL;',
'        VTIP_COMPROBANTE := NULL;',
'        VNRO_COMPROBANTE := NULL;',
'        VCOD_CLIENTE := NULL;',
'    END;',
'',
'    IF VNRO_REMISION IS NOT NULL THEN',
'        RPFACBH.imprimir_remisiones(p_cod_empresa  => :P766_COD_EMPRESA,',
'                                     p_ser_remision => :P766_SER_REMISION,',
'                                     p_num_remision => VNRO_REMISION);',
'',
'        :P766_COD_CLIENTE_AUX := VCOD_CLIENTE;',
'        :P766_TIP_COMPROBANTE_AUX := VTIP_COMPROBANTE;',
'        :P766_NRO_COMPROBANTE_AUX := VNRO_COMPROBANTE;',
'        :P766_SER_REMISION_AUX := VNRO_REMISION;',
'        :P766_SER_COMPROBANTE_AUX := VSER_COMPROBANTE;',
'    END IF;',
'EXCEPTION',
'    WHEN OTHERS THEN',
'    APEX_DEBUG.ERROR(''DA_SEQ_ID_IMPRIMIR_REM ''||SQLERRM);',
'END;'))
,p_attribute_02=>'P766_SEQ_ID_DETALLE_REM,P766_COD_EMPRESA'
,p_attribute_03=>'P766_COD_CLIENTE_AUX,P766_TIP_COMPROBANTE_AUX,P766_NRO_COMPROBANTE_AUX,P766_SER_REMISION_AUX,P766_SER_COMPROBANTE_AUX'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(368011228400153498)
,p_event_id=>wwv_flow_imp.id(368009750105153497)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'doStremaut (apex.item(''P_COD_EMPRESA'').getValue(),',
'            apex.item(''P766_COD_CLIENTE_AUX'').getValue(),',
'            apex.item(''P766_TIP_COMPROBANTE_AUX'').getValue(),',
'            apex.item(''P766_SER_REMISION'').getValue(),',
'            apex.item(''P766_NRO_COMPROBANTE_AUX'').getValue(),',
'            apex.item(''P_COD_USUARIO'').getValue(),',
'            "",',
'            "");'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(368011674681153498)
,p_name=>'DA_SEQ_ID_IMPRIMIR_NCR'
,p_event_sequence=>190
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P766_SEQ_ID_DETALLE_NCR'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(368012185514153498)
,p_event_id=>wwv_flow_imp.id(368011674681153498)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_02=>'P766_SEQ_ID_DETALLE_NCR'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(368012698087153498)
,p_event_id=>wwv_flow_imp.id(368011674681153498)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'VTIP_COMPROBANTE VARCHAR2(50);',
'VSER_COMPROBANTE VARCHAR2(50);',
'VNRO_COMPROBANTE VARCHAR2(500);',
'VCOD_CLIENTE VARCHAR2(500);',
'wexiste varchar2(1);',
'BEGIN',
'    BEGIN',
'        SELECT c014,',
'               c001,',
'               c002,',
'               c007',
'          INTO VTIP_COMPROBANTE,',
'               VSER_COMPROBANTE,',
'               VNRO_COMPROBANTE,',
'               VCOD_CLIENTE',
'          FROM APEX_COLLECTIONS',
'         WHERE COLLECTION_NAME = ''COLEC_RPFACCPH_DETALLE''',
'           AND seq_id = :P766_SEQ_ID_DETALLE_NCR;',
'    EXCEPTION',
'        WHEN NO_DATA_FOUND THEN',
'        VTIP_COMPROBANTE := NULL;',
'        VSER_COMPROBANTE := NULL;',
'        VNRO_COMPROBANTE := NULL;',
'        VCOD_CLIENTE := NULL;',
'    END;',
'',
'    begin',
'        select ''S''',
'          into wexiste',
'          from vt_contador_impresion_fact',
'         where cod_empresa = :P766_COD_EMPRESA',
'           and tip_comprobante = ''NCR''',
'           and ser_comprobante = :P766_SER_NC',
'           and nro_comprobante = VNRO_COMPROBANTE;',
'',
'        if wexiste is null then',
'        	wexiste := ''N'';',
'        end if;',
'    exception',
'        when others then',
'        wexiste := ''N'';',
'    end;',
'',
'    if wexiste = ''N'' then',
'        RPFACBH.IMPRIMIR_NCR(p_cod_empresa        => :P766_COD_EMPRESA,',
'                              p_cod_sucursal       => :P766_COD_SUCURSAL,',
'                              p_tipo               => ''NCR'',',
'                              p_serie              => :P766_SER_NC,',
'                              p_numero             => VNRO_COMPROBANTE,',
'                              p_ind_auto_impresion => ''S'',',
'                              p_grupo_numeracion   => 0);',
'    end if;',
'',
'    :P766_COD_CLIENTE_AUX := VCOD_CLIENTE;',
'    :P766_TIP_COMPROBANTE_AUX := VTIP_COMPROBANTE;',
'    :P766_SER_COMPROBANTE_AUX := VSER_COMPROBANTE;',
'    :P766_NRO_COMPROBANTE_AUX := VNRO_COMPROBANTE;',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'    APEX_DEBUG.ERROR(''DA_SEQ_ID_IMPRIMIR_NCR ''||SQLERRM);',
'END;'))
,p_attribute_02=>'P766_SEQ_ID_DETALLE_NCR,P_COD_EMPRESA,P766_SER_NC,P766_COD_SUCURSAL,P766_COD_EMPRESA,P766_COD_EMPRESA,P766_COD_EMPRESA'
,p_attribute_03=>'P766_COD_CLIENTE_AUX,P766_TIP_COMPROBANTE_AUX,P766_SER_COMPROBANTE_AUX,P766_NRO_COMPROBANTE_AUX'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(368013168008153499)
,p_event_id=>wwv_flow_imp.id(368011674681153498)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'doVtimpNcrCanon (apex.item(''P_COD_EMPRESA'').getValue(),',
'                 apex.item(''P766_COD_CLIENTE_AUX'').getValue(),',
'                 apex.item(''P766_TIP_COMPROBANTE_AUX'').getValue(),',
'                 apex.item(''P766_SER_COMPROBANTE_AUX'').getValue(),',
'                 apex.item(''P766_NRO_COMPROBANTE_AUX'').getValue());'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(368013594176153499)
,p_name=>'DA_IMPRIMIR_DETALLE_FACTURAS'
,p_event_sequence=>200
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(367976226273153469)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(368014024457153499)
,p_event_id=>wwv_flow_imp.id(368013594176153499)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'doRpfactmaspla (apex.item(''P_COD_EMPRESA'').getValue(),',
'                apex.item(''P766_NRO_PLANILLA'').getValue());'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(368014482588153499)
,p_name=>'New'
,p_event_sequence=>210
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(367976687578153469)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(368014935360153499)
,p_event_id=>wwv_flow_imp.id(368014482588153499)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'var spinner = apex.util.showSpinner();'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(368015913949153500)
,p_event_id=>wwv_flow_imp.id(368014482588153499)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'     RPFACBH.PR_BUSCAR_FAC (PI_COD_EMPRESA => :P766_COD_EMPRESA,',
'                             PI_NRO_PLANILLA => :P766_NRO_PLANILLA);',
'',
'     :P766_INDICADOR_REPORT_FACTURAS := ''1'';',
':P766_ERROR:=''Busqueda Realizada'';',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;'))
,p_attribute_02=>'P_COD_EMPRESA,P766_NRO_PLANILLA,P766_COD_EMPRESA'
,p_attribute_03=>'P766_INDICADOR_REPORT_FACTURAS,P766_ERROR'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(368015495882153499)
,p_event_id=>wwv_flow_imp.id(368014482588153499)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$("#apex_wait_overlay").remove();',
'$(".u-Processing").remove();'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(368016440358153500)
,p_event_id=>wwv_flow_imp.id(368014482588153499)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(467628190374959948)
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(367980652112153482)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'New'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_process_when_type=>'NEVER'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(367980304554153481)
,p_process_sequence=>20
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_INIT'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'APEX_COLLECTION.CREATE_OR_TRUNCATE_COLLECTION(''COLEC_RPFACCPH_DETALLE'');',
':P766_COD_MODULO := ''RP'';',
':P766_COD_EMPRESA:=''18'';',
'--:P766_NRO_PLANILLA := 177561;--194836;',
'IF :P766_COD_SUCURSAL IS NULL THEN',
'    IF NVL(:P766_TIP_PEDIDO,''PRODUCTO'') = ''REPUESTOS'' THEN',
'        :P766_COD_SUCURSAL := ''06'';',
'    ELSE',
'        :P766_COD_SUCURSAL := ''20'';',
'    END IF;',
'END IF;',
'',
'BEGIN',
'    RPFACBH.CARGAR_CAB(pcod_empresa      => :P766_COD_EMPRESA,',
'                        pcod_usuario      => :P_COD_USUARIO,',
'                        pcod_sucursal     => :P766_COD_SUCURSAL,',
'                        pvarios_depositos => :P766_VARIOS_DEPOSITOS,',
'                        pcod_custodio     => :P766_COD_CUSTODIO,',
'                        pdesc_custodio    => :P766_DESC_CUSTODIO,',
'                        pcod_cobrador     => :P766_COD_COBRADOR,',
'                        pser_comprobante  => :P766_SER_COMPROBANTE,',
'                        pser_nc           => :P766_SER_NC,',
'                        pser_remision     => :P766_SER_REMISION);',
'EXCEPTION',
'    WHEN OTHERS THEN',
'    APEX_DEBUG.ERROR(''PR_INIT CARGAR_DATOS ''||SQLERRM);',
'END;',
'',
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
 p_id=>wwv_flow_imp.id(367981078902153482)
,p_process_sequence=>30
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'LLENAR_COL_BORRAR'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'FOR X IN(select c.tip_comprobante, ',
'    		       c.ser_comprobante, ',
'    		       c.nro_comprobante,',
'    		       c.NOM_CLIENTE,',
'    		       c.COD_CLIENTE,',
'    		       c.tot_comprobante total, ',
'    		       c.COD_MONEDA, ',
'    		       c.TIP_CAMBIO, ',
'    		       c.ser_comprobante_ref||''-''||c.nro_comprobante_ref pedido, ',
'    		       c.ser_comprobante_ref, ',
'    		       c.nro_comprobante_ref,',
unistr('    		       r.nro_comprobante nro_remision, --Consulta modificada a fin de poder agregar el n\00FAmero de remisi\00F3n a la pantalla. Gaspar M. 18/03/2022'),
'                   c.nro_planilla_PEDIDO',
'              from vt_comprobantes_cabecera c,',
'    		       st_remision_cab r',
'    		 where c.cod_empresa = r.cod_empresa (+)',
'    		  and c.ser_comprobante = r.ser_comprobante_ref (+)',
'    		  and c.nro_comprobante = r.nro_comprobante_ref (+)',
'    		  and c.cod_empresa = ''1''',
'    		  and c.nro_planilla_PEDIDO = 173556',
'    		  and c.tip_comprobante in (''FCR'', ''FCO'')',
'    		order by c.nro_comprobante)',
'LOOP',
'    APEX_COLLECTION.add_member(p_collection_name => ''COLEC_RPFACCPH_DETALLE'',',
'                                       p_c001 => x.ser_comprobante,',
'                                       p_c002 => x.nro_comprobante, ',
'                                       p_c003 => x.pedido, ',
'                                       p_c004 => x.COD_MONEDA,',
'                                       p_c005 => x.TIP_CAMBIO,',
'                                       p_c006 => x.total,',
'                                       p_c007 => x.COD_CLIENTE,',
'                                       p_c008 => x.NOM_CLIENTE,',
'                                       p_c009 => x.nro_remision,',
'                                       p_c010 => null,--OBSERVACION',
'                                       p_c011 => NULL,--NRO_RECIBO',
'                                       p_c012 => NULL,--NRO_NCR',
'                                       p_c013 => NULL,--NRO_CANJE',
'                                       p_c014 => x.tip_comprobante);',
'',
'END LOOP;'))
,p_process_clob_language=>'PLSQL'
,p_process_when_type=>'NEVER'
);
null;
wwv_flow_imp.component_end;
end;
/
