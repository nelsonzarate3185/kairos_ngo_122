prompt --application/pages/page_00008
begin
--   Manifest
--     PAGE: 00008
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
 p_id=>8
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>unistr('Detalle de ventas por art\00EDculos')
,p_alias=>unistr('DETALLE-DE-VENTAS-POR-ART\00CDCULOS')
,p_step_title=>unistr('Detalle de ventas por art\00EDculos')
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
'function doDescarga(p_reporte, p_formato, p_cod_empresa, p_cod_articulo_des, p_cod_articulo_has, p_cod_categoria, p_cod_cliente, p_cod_condicion, p_cod_linea, p_cod_lista,',
'                    p_cod_marca, p_cod_moneda, p_cod_rubro, p_cod_sector, p_cod_sucursal, p_cod_tipo_grupo, p_cod_vendedor, p_condicion_venta,',
'                    p_excluido, p_fec_inicial, p_fec_final, p_nro_lote, p_tip_cliente, p_tip_comprobante, p_ver_costo, p_cod_familia, p_cod_corporacion){',
'/*',
'   var vURL = ''https://ngosaeca.com.py/reportes/rest_v2/reports/reports/''+ p_reporte +''.''+p_formato+''?''',
'            + ''P_COD_EMPRESA='' + p_cod_empresa + ''&P_COD_LINEA='' + p_cod_linea + ''&P_TIP_CLIENTE='' + p_tip_cliente + ''&P_COD_RUBRO='' + p_cod_rubro + ''&P_COD_FAMILIA='' + p_cod_familia + ''&P_EXCLUIDO='' + p_excluido + ''&P_COD_CATEGORIA=''+ p_cod_categori'
||'a +''&P_COD_SUCURSAL=''',
'            + p_cod_sucursal + ''&P_CONDICION_VENTA='' + p_condicion_venta +''&P_NRO_LOTE=''+ p_nro_lote +''&P_FEC_INICIAL=''+ p_fec_inicial +''&P_VER_COSTO=''+ p_ver_costo +''&P_COD_CONDICION=''+ p_cod_condicion +''&P_COD_TIPO_GRUPO=''+ p_cod_tipo_grupo +''&P_CO'
||'D_VENDEDOR=''',
'            + p_cod_vendedor +''&P_COD_CLIENTE=''+ p_cod_cliente +''&P_COD_IVA=''+ '''' +''&P_FEC_FINAL=''+ p_fec_final +''&P_COD_ARTICULO_HAS=''+ p_cod_articulo_has +''&P_COD_MONEDA=''+ p_cod_moneda +''&P_COD_MARCA=''+ p_cod_marca +''&P_TIP_COMPROBANTE=''',
'            + p_tip_comprobante +''&P_COD_LISTA=''+ p_cod_lista +''&P_COD_SECTOR=''+ p_cod_sector +''&P_COD_ARTICULO_DES=''+ p_cod_articulo_des +''&P_COD_ZONA='' + '''' + ',
'            ''&P_COD_CORPORACION=''+ p_cod_corporacion+''&j_username=jasperadmin&j_password=jasperadmin'';',
'',
'    console.log(vURL);',
'    window.open(unescape(vURL.replace(/&amp;/g,''g'')),''_blank''); */',
'',
'',
'',
'       var params = []',
'       params.push({ name: ''P_COD_EMPRESA'', value: p_cod_empresa})',
'       params.push({ name: ''P_COD_LINEA'', value: p_cod_linea})',
'       params.push({ name: ''P_TIP_CLIENTE'', value: p_tip_cliente})',
'       params.push({ name: ''P_COD_RUBRO'', value: p_cod_rubro})',
'       params.push({ name: ''P_COD_FAMILIA'', value: p_cod_familia})',
'       params.push({ name: ''P_EXCLUIDO'', value: p_excluido})',
'       params.push({ name: ''P_COD_CATEGORIA'', value: p_cod_categoria})',
'       params.push({ name: ''P_COD_SUCURSAL'', value: p_cod_sucursal})',
'       params.push({ name: ''P_CONDICION_VENTA'', value: p_condicion_venta})',
'       params.push({ name: ''P_NRO_LOTE'', value: p_nro_lote})',
'       params.push({ name: ''P_FEC_INICIAL'', value: p_fec_inicial})',
'       params.push({ name: ''P_VER_COSTO'', value: p_ver_costo})',
'       params.push({ name: ''P_COD_CONDICION'', value: p_cod_condicion})',
'       params.push({ name: ''P_COD_TIPO_GRUPO'', value: p_cod_tipo_grupo})',
'       params.push({ name: ''P_COD_VENDEDOR'', value: p_cod_vendedor})',
'       params.push({ name: ''P_COD_CLIENTE'', value: p_cod_cliente})',
'       params.push({ name: ''P_COD_IVA'', value: ''''})',
'       params.push({ name: ''P_FEC_FINAL'', value: p_fec_final})',
'       params.push({ name: ''P_COD_ARTICULO_HAS'', value: p_cod_articulo_has})',
'       params.push({ name: ''P_COD_MONEDA'', value: p_cod_moneda})',
'       params.push({ name: ''P_COD_MARCA'', value: p_cod_marca})',
'       params.push({ name: ''P_TIP_COMPROBANTE'', value: p_tip_comprobante})',
'       params.push({ name: ''P_COD_LISTA'', value: p_cod_lista})',
'       params.push({ name: ''P_COD_SECTOR'', value: p_cod_sector})',
'       params.push({ name: ''P_COD_ARTICULO_DES'', value: p_cod_articulo_des})',
'       params.push({ name: ''P_COD_ZONA'', value: ''''})',
'       params.push({ name: ''P_COD_CORPORACION'', value: p_cod_corporacion})',
'',
'       createReportUrl(p_reporte, params)',
'}',
''))
,p_javascript_code_onload=>'window.history.pushState("object or string", "Title", removeParam("success_msg", window.location.href));'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.radio{',
'    margin-bottom: 15px;',
'}',
'',
'.btn_ejecutar{',
'    margin-top: 15px;',
'}',
'.t-Form-inputContainer span.display_only{',
'    text-align: right;',
'}  ',
'',
'.btn_agregar{',
'    margin-top: 15px;',
'}',
'#IMPRIMIR,#BUSCAR,#CC{',
'     ',
'        background:white;',
'        background-image: linear-gradient(180deg, #ffee00e4  0%, #fff890 100%);',
'        color:  darkblue;',
'        box-shadow: #6585af 1px 1px 5px 1px; ',
'        border-style: solid;',
'        border-width: 0.5px;',
'        border-color:  yellow;',
'    ',
'}',
'',
'',
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
'',
'input:read-only {',
'        background-color: #CCCCCC !important;',
'    } ',
'',
' ',
'',
' ',
'',
'#crear {',
'    display: none !important;',
'}',
'',
'#ocultar {',
'    display: none !important;',
'}',
'',
'.u-checkbox {',
'    margin-top: 25px !important;',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_last_updated_by=>'NZARATE'
,p_last_upd_yyyymmddhh24miss=>'20241101104617'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(5924370326379011)
,p_plug_name=>unistr('Detalle de ventas por art\00EDculos')
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(5924450042379012)
,p_plug_name=>'PARAMETROS'
,p_parent_plug_id=>wwv_flow_imp.id(5924370326379011)
,p_region_template_options=>'#DEFAULT#:t-Region--hideHeader:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(54300318144918024)
,p_plug_name=>'Reportes'
,p_region_name=>'Reportes'
,p_parent_plug_id=>wwv_flow_imp.id(5924450042379012)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT seq_id,',
'       c001 AS cod_articulo, ',
'       c002 AS desc_articulo, ',
'       c003 AS tip_comprobante,',
'       c004 AS ser_comprobante, ',
'       c005 AS nro_comprobante, ',
'       c006 AS ref,',
'       c007 AS cod_cliente,',
'       c008 AS nom_cliente,',
'       c009 AS porcentaje_desc,',
'       c010 AS siglas,',
'       c011 AS CF_dolar_cambio,',
'       n004 AS cantidad,',
'       c013 AS precio_unitario,',
'       n001 AS monto_total,',
'       n002 AS total_ivam,',
'       c016 AS fec_comprobante,',
'       c017 AS comprobantes,',
'       n003 AS Vta_Neta,',
'       c019 AS rubros,',
'            ',
'                               c020            as COD_MARCA, ',
'                               c021           as DESC_MARCA,',
'                               c022            as COD_CATEGORIA,',
'                               c023            as DESC_CATEGORIA,',
'                               c024            as COD_FAMILIA,',
'                              c025           as DESC_FAMILIA,',
'                               c026           as COD_LINEA,',
'                              c027            as DESC_LINEA,',
'                               c028            as COD_ART_CORTO,',
'                                c029            as MES, ',
'                                 c030            as ANIO  , ',
'                                 c031            as cod_vendedor  ,',
'                                 c032 as cod_sucursal,',
'                                 c033 as costo_total',
'  FROM apex_collections',
' WHERE collection_name = ''TMP_VTFAPRO'''))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Reportes'
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
 p_id=>wwv_flow_imp.id(54300424307918025)
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
,p_owner=>'HSEGOVIA'
,p_internal_uid=>54300424307918025
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(54300596537918026)
,p_db_column_name=>'SEQ_ID'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Seq Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(54300647423918027)
,p_db_column_name=>'COD_CLIENTE'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>unistr('C\00F3d. Cliente')
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(54301383166918034)
,p_db_column_name=>'COD_ARTICULO'
,p_display_order=>30
,p_column_identifier=>'I'
,p_column_label=>unistr('C\00F3d. Articulo')
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(54301468909918035)
,p_db_column_name=>'DESC_ARTICULO'
,p_display_order=>40
,p_column_identifier=>'J'
,p_column_label=>unistr('Art\00EDculo')
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(54301535784918036)
,p_db_column_name=>'TIP_COMPROBANTE'
,p_display_order=>50
,p_column_identifier=>'K'
,p_column_label=>'Tip Comprobante'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(54301648734918037)
,p_db_column_name=>'SER_COMPROBANTE'
,p_display_order=>60
,p_column_identifier=>'L'
,p_column_label=>'Ser Comprobante'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(54301716071918038)
,p_db_column_name=>'NRO_COMPROBANTE'
,p_display_order=>70
,p_column_identifier=>'M'
,p_column_label=>'Nro Comprobante'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(54301895246918039)
,p_db_column_name=>'REF'
,p_display_order=>80
,p_column_identifier=>'N'
,p_column_label=>'Ref.'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(54301907925918040)
,p_db_column_name=>'NOM_CLIENTE'
,p_display_order=>90
,p_column_identifier=>'O'
,p_column_label=>'Cliente'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(54302078026918041)
,p_db_column_name=>'PORCENTAJE_DESC'
,p_display_order=>100
,p_column_identifier=>'P'
,p_column_label=>'% Desc.'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(54302103313918042)
,p_db_column_name=>'SIGLAS'
,p_display_order=>110
,p_column_identifier=>'Q'
,p_column_label=>'Mon.'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(54302265733918043)
,p_db_column_name=>'CF_DOLAR_CAMBIO'
,p_display_order=>120
,p_column_identifier=>'R'
,p_column_label=>'Cambio'
,p_column_type=>'STRING'
,p_format_mask=>'999G999G999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(54302417541918045)
,p_db_column_name=>'PRECIO_UNITARIO'
,p_display_order=>140
,p_column_identifier=>'T'
,p_column_label=>'Precio Un.'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(55006923862330104)
,p_db_column_name=>'FEC_COMPROBANTE'
,p_display_order=>170
,p_column_identifier=>'X'
,p_column_label=>'Fecha'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(55007073084330105)
,p_db_column_name=>'COMPROBANTES'
,p_display_order=>180
,p_column_identifier=>'Y'
,p_column_label=>'Comprobantes'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(55007255097330107)
,p_db_column_name=>'RUBROS'
,p_display_order=>200
,p_column_identifier=>'AA'
,p_column_label=>'Rubros'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(55007314590330108)
,p_db_column_name=>'MONTO_TOTAL'
,p_display_order=>210
,p_column_identifier=>'AB'
,p_column_label=>'Vta. Neta s/IVA '
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(55007455065330109)
,p_db_column_name=>'TOTAL_IVAM'
,p_display_order=>220
,p_column_identifier=>'AC'
,p_column_label=>'IVA'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(55007552170330110)
,p_db_column_name=>'VTA_NETA'
,p_display_order=>230
,p_column_identifier=>'AD'
,p_column_label=>'Vta. Neta c/IVA'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(55007655951330111)
,p_db_column_name=>'CANTIDAD'
,p_display_order=>240
,p_column_identifier=>'AE'
,p_column_label=>'Cantidad'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(108921327222676412)
,p_db_column_name=>'COD_MARCA'
,p_display_order=>250
,p_column_identifier=>'AF'
,p_column_label=>'Cod Marca'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(108921432565676413)
,p_db_column_name=>'DESC_MARCA'
,p_display_order=>260
,p_column_identifier=>'AG'
,p_column_label=>'Desc Marca'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(108921573717676414)
,p_db_column_name=>'COD_CATEGORIA'
,p_display_order=>270
,p_column_identifier=>'AH'
,p_column_label=>'Cod Categoria'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(108921675592676415)
,p_db_column_name=>'DESC_CATEGORIA'
,p_display_order=>280
,p_column_identifier=>'AI'
,p_column_label=>'Desc Categoria'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(108921782082676416)
,p_db_column_name=>'COD_FAMILIA'
,p_display_order=>290
,p_column_identifier=>'AJ'
,p_column_label=>'Cod Familia'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(108921809651676417)
,p_db_column_name=>'DESC_FAMILIA'
,p_display_order=>300
,p_column_identifier=>'AK'
,p_column_label=>'Desc Familia'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(108921961328676418)
,p_db_column_name=>'COD_LINEA'
,p_display_order=>310
,p_column_identifier=>'AL'
,p_column_label=>'Cod Linea'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(108922020356676419)
,p_db_column_name=>'DESC_LINEA'
,p_display_order=>320
,p_column_identifier=>'AM'
,p_column_label=>'Desc Linea'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(108922108136676420)
,p_db_column_name=>'COD_ART_CORTO'
,p_display_order=>330
,p_column_identifier=>'AN'
,p_column_label=>'Cod Art Corto'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(108923401526676433)
,p_db_column_name=>'MES'
,p_display_order=>340
,p_column_identifier=>'AO'
,p_column_label=>'Mes'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(108923515936676434)
,p_db_column_name=>'ANIO'
,p_display_order=>350
,p_column_identifier=>'AP'
,p_column_label=>'Anio'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(379343904511055042)
,p_db_column_name=>'COD_VENDEDOR'
,p_display_order=>360
,p_column_identifier=>'AQ'
,p_column_label=>'Cod Vendedor'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(650047326947536529)
,p_db_column_name=>'COD_SUCURSAL'
,p_display_order=>370
,p_column_identifier=>'AR'
,p_column_label=>'Cod Sucursal'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(898742384633768344)
,p_db_column_name=>'COSTO_TOTAL'
,p_display_order=>380
,p_column_identifier=>'AS'
,p_column_label=>'Costo Total'
,p_column_type=>'STRING'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(54983795845840395)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'549838'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'RUBROS:DESC_MARCA:DESC_CATEGORIA:COD_ARTICULO:COD_ART_CORTO:DESC_ARTICULO:FEC_COMPROBANTE:COMPROBANTES:REF:COD_CLIENTE:NOM_CLIENTE:PORCENTAJE_DESC:SIGLAS:CF_DOLAR_CAMBIO:CANTIDAD:PRECIO_UNITARIO:MONTO_TOTAL:TOTAL_IVAM:VTA_NETA:'
,p_sum_columns_on_break=>'MONTO_TOTAL:TOTAL_IVAM:VTA_NETA:CANTIDAD'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(55007772622330112)
,p_plug_name=>'Totalizadores'
,p_parent_plug_id=>wwv_flow_imp.id(54300318144918024)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(5925943077379027)
,p_plug_name=>'VARIABLES'
,p_parent_plug_id=>wwv_flow_imp.id(5924370326379011)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(5927484424379042)
,p_button_sequence=>350
,p_button_plug_id=>wwv_flow_imp.id(5924450042379012)
,p_button_name=>'EJECUTAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--stretch'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Ejecutar'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'btn_ejecutar'
,p_grid_new_row=>'Y'
,p_grid_column_span=>1
,p_grid_column=>12
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5924510041379013)
,p_name=>'P8_COD_SUCURSAL'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(5924450042379012)
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
,p_lov_null_text=>'TODAS'
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
 p_id=>wwv_flow_imp.id(5924605519379014)
,p_name=>'P8_COD_SECTOR'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(5924450042379012)
,p_prompt=>'Sector'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LVSECTORES'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  SELECT cod_sector||'' - ''||descripcion D, ',
'         cod_sector R',
'    FROM sectores ',
'   WHERE cod_empresa = :P_COD_EMPRESA ',
'ORDER BY descripcion;'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'TODOS'
,p_cSize=>30
,p_begin_on_new_line=>'N'
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
 p_id=>wwv_flow_imp.id(5924741778379015)
,p_name=>'P8_COD_CORTO_INI'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(5924450042379012)
,p_prompt=>'Cod.Corto Art.'
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
 p_id=>wwv_flow_imp.id(5924852077379016)
,p_name=>'P8_COD_CORTO_FIN'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(5924450042379012)
,p_prompt=>'Cod.Corto Art.'
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
 p_id=>wwv_flow_imp.id(5924941733379017)
,p_name=>'P8_DESC_ART_INI'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(5924450042379012)
,p_prompt=>'&nbsp'
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
 p_id=>wwv_flow_imp.id(5925091772379018)
,p_name=>'P8_DESC_ART_FIN'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(5924450042379012)
,p_prompt=>'&nbsp'
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
 p_id=>wwv_flow_imp.id(5925168093379019)
,p_name=>'P8_COD_ARTICULO_DES'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(5924450042379012)
,p_prompt=>'Articulo Desde'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_DES_ARTICULO'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'--VTRFAPRO',
'  SELECT cod_articulo||'' - ''||descripcion D, ',
'         cod_articulo R',
'    FROM st_articulos ',
'   WHERE cod_empresa = :P_COD_EMPRESA',
'ORDER BY lpad( cod_articulo, 30, '' '' );'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'TODOS'
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
 p_id=>wwv_flow_imp.id(5925210313379020)
,p_name=>'P8_COD_ARTICULO_HAS'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(5924450042379012)
,p_prompt=>'Articulo Hasta'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_HAS_ARTICULO'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'--VTRFAPRO',
'  SELECT cod_articulo||'' - ''||descripcion D, ',
'         cod_articulo R',
'    FROM st_articulos ',
'   WHERE cod_empresa = :P_COD_EMPRESA',
'ORDER BY lpad( cod_articulo, 30, '' '' );'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'TODOS'
,p_cSize=>30
,p_begin_on_new_line=>'N'
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
 p_id=>wwv_flow_imp.id(5925321791379021)
,p_name=>'P8_COD_RUBRO'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(5924450042379012)
,p_prompt=>'Rubro'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_RUBROS'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  SELECT cod_rubro||'' - ''||descripcion D, ',
'         cod_rubro R',
'    FROM st_rubro ',
'   WHERE cod_empresa = :P_COD_EMPRESA',
'ORDER BY descripcion;'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'TODOS'
,p_cSize=>30
,p_begin_on_new_line=>'N'
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
 p_id=>wwv_flow_imp.id(5925408119379022)
,p_name=>'P8_COD_FAMILIA'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(5924450042379012)
,p_prompt=>'Familia'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_FAMILIA'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT cod_familia||'' - ''||descripcion D, ',
'       cod_familia R',
'  FROM st_familia',
'  WHERE COD_EMPRESA=:P_COD_EMPRESA',
'  AND ESTADO=''S'';'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'TODAS'
,p_cSize=>30
,p_begin_on_new_line=>'N'
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
 p_id=>wwv_flow_imp.id(5925506684379023)
,p_name=>'P8_COD_LINEA_DES'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(5924450042379012)
,p_prompt=>'Linea '
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_DES_LINEA'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  SELECT cod_linea||'' - ''||descripcion D,',
'         cod_linea R',
'    FROM st_linea ',
'ORDER BY 2;'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'TODAS'
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
 p_id=>wwv_flow_imp.id(5925686036379024)
,p_name=>'P8_COD_MARCA_DES'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(5924450042379012)
,p_prompt=>'Marca'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_DES_MARCA'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  SELECT cod_marca R, ',
'         cod_marca||'' - ''||descripcion D',
'    FROM st_marcas ',
'ORDER BY 2;'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'TODAS'
,p_cSize=>30
,p_begin_on_new_line=>'N'
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
 p_id=>wwv_flow_imp.id(5925786370379025)
,p_name=>'P8_CATEGORIA'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(5924450042379012)
,p_prompt=>'Categoria'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_CATEGORIAS'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  SELECT cod_categoria||'' - '' ||descripcion D, ',
'         cod_categoria R',
'    FROM st_categorias',
'  ',
'  WHERE COD_EMPRESA=:P_COD_EMPRESA',
'  AND ESTADO IN(''S'',''A'');',
' '))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'TODAS'
,p_cSize=>30
,p_begin_on_new_line=>'N'
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
 p_id=>wwv_flow_imp.id(5925830672379026)
,p_name=>'P8_TIP_COMPROBANTE'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(5924450042379012)
,p_prompt=>'Tipo Comprobante'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  SELECT tip_comprobante||'' - ''||descripcion descripcion, tip_comprobante',
'    FROM tipos_comprobantes ',
'   WHERE cod_empresa = :P8_COD_EMPRESA_VAR',
'     AND tip_comprobante IN (:P8_TIP_CONTADO_VAR,:P8_TIP_CREDITO_VAR,:P8_TIP_TICKET_VAR,:P8_TIP_NOTACRE_VAR,''DEB'') ',
'ORDER BY descripcion;'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'TODOS'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>3
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
 p_id=>wwv_flow_imp.id(5926035624379028)
,p_name=>'P8_COD_USUARIO_VAR'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(5925943077379027)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5926141073379029)
,p_name=>'P8_COD_EMPRESA_VAR'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(5925943077379027)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5926267958379030)
,p_name=>'P8_COD_SUCURSAL_VAR'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(5925943077379027)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5926348396379031)
,p_name=>'P8_COD_MODULO_VAR'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(5925943077379027)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5926505457379033)
,p_name=>'P8_TIP_CONTADO_VAR'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(5925943077379027)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5926696568379034)
,p_name=>'P8_TIP_CREDITO_VAR'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(5925943077379027)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5926740838379035)
,p_name=>'P8_TIP_NOTACRE_VAR'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(5925943077379027)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5926895475379036)
,p_name=>'P8_TIP_TICKET_VAR'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(5925943077379027)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5926902271379037)
,p_name=>'P8_VER_COSTO'
,p_item_sequence=>320
,p_item_plug_id=>wwv_flow_imp.id(5924450042379012)
,p_prompt=>'Ver Costo'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_begin_on_new_line=>'N'
,p_colspan=>1
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#:margin-top-md:margin-left-sm'
,p_attribute_01=>'N'
,p_attribute_02=>'S'
,p_attribute_03=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5927093478379038)
,p_name=>'P8_TIP_REPORTE'
,p_item_sequence=>300
,p_item_plug_id=>wwv_flow_imp.id(5924450042379012)
,p_prompt=>'Tipo de Reporte'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_TIP_REPORTE'
,p_lov=>'.'||wwv_flow_imp.id(6241954471116720)||'.'
,p_cSize=>30
,p_colspan=>3
,p_grid_column=>5
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
 p_id=>wwv_flow_imp.id(5927144776379039)
,p_name=>'P8_FEC_INICIAL'
,p_item_sequence=>270
,p_item_plug_id=>wwv_flow_imp.id(5924450042379012)
,p_prompt=>'Fecha Inicial'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_css_classes=>'allow_only_numbers'
,p_tag_attributes=>'onfocusout="this.value= isValidDate(this.value);" onkeyup = "setDateFormat(this);"'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5927288115379040)
,p_name=>'P8_FEC_FINAL'
,p_item_sequence=>280
,p_item_plug_id=>wwv_flow_imp.id(5924450042379012)
,p_prompt=>'Fecha Final'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_css_classes=>'allow_only_numbers'
,p_tag_attributes=>'onfocusout="this.value= isValidDate(this.value);" onkeyup = "setDateFormat(this);"'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5927300524379041)
,p_name=>'P8_RADIO_FECHA'
,p_item_sequence=>290
,p_item_plug_id=>wwv_flow_imp.id(5924450042379012)
,p_prompt=>'&nbsp'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_lov=>unistr('STATIC2:D\00EDa;1,Mes;2,A\00F1o;3,General;4')
,p_begin_on_new_line=>'N'
,p_grid_column=>10
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_css_classes=>'radio'
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'4'
,p_attribute_02=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5927507993379043)
,p_name=>'P8_EXCLUIDO'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(5924450042379012)
,p_prompt=>'Excluir Comprobante'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'E'
,p_attribute_03=>'I'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5927630060379044)
,p_name=>'P8_COLUMNA'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_imp.id(5924450042379012)
,p_prompt=>unistr('Tipo de Not. Cr\00E9dito')
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_MOTIVOS'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT cod_motivo||'' - ''||descripcion D,',
'       cod_motivo R ',
'  FROM motivos_nota_credito ',
' WHERE cod_empresa = :P_COD_EMPRESA;'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'TODOS'
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
 p_id=>wwv_flow_imp.id(5927778948379045)
,p_name=>'P8_COD_CORPORACION'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_imp.id(5924450042379012)
,p_prompt=>'Corporacion'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LVCORPORACION'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  SELECT cod_corporacion||'' - ''||descripcion D, ',
'         cod_corporacion R',
'    FROM cc_corporaciones ',
'   WHERE cod_empresa = :P_COD_EMPRESA ',
'ORDER BY descripcion;'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'TODAS'
,p_cSize=>30
,p_begin_on_new_line=>'N'
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
 p_id=>wwv_flow_imp.id(5927833954379046)
,p_name=>'P8_COD_CLIENTE'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_imp.id(5924450042379012)
,p_prompt=>'Cliente'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_CLIENTES1'
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
'   AND nvl(c.estado, ''X'') in(''A'',''B'',''C'')',
' ORDER BY nombre'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'TODOS'
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
 p_id=>wwv_flow_imp.id(5927959388379047)
,p_name=>'P8_TIP_CLIENTE'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_imp.id(5924450042379012)
,p_prompt=>'Tipo Cliente'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_TIP_CLIENTE'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  SELECT cod_tip_cliente||'' - ''||descripcion D, ',
'         cod_tip_cliente R',
'    FROM cc_tipo_cliente ',
'ORDER BY 1;'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'TODOS'
,p_cSize=>30
,p_begin_on_new_line=>'N'
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
 p_id=>wwv_flow_imp.id(5928066046379048)
,p_name=>'P8_COD_CONDICION_VENTA'
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_imp.id(5924450042379012)
,p_prompt=>unistr('Condici\00F3n Venta')
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_CONDICION'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT cod_condicion_venta||'' - ''||descripcion D, ',
'       cod_condicion_venta R',
'  FROM cc_condiciones_ventas ',
' WHERE cod_empresa=:P_COD_EMPRESA;',
''))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'TODAS'
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
 p_id=>wwv_flow_imp.id(5928198344379049)
,p_name=>'P8_COD_VENDEDOR'
,p_item_sequence=>220
,p_item_plug_id=>wwv_flow_imp.id(5924450042379012)
,p_prompt=>'Vendedor'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LVVENDEDORES1'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  SELECT v.cod_vendedor||'' - ''||ltrim( rtrim( nvl( p.nombre, p.nomb_fantasia ) ) ) D,  ',
'         v.cod_vendedor R',
'    FROM fv_vendedores v, personas p ',
'   WHERE  v.cod_empresa = :P_COD_EMPRESA',
'     AND v.cod_persona = p.cod_persona ',
'     AND nvl( v.estado, ''A'' ) = ''A'' ',
'order by 1;'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'TODOS'
,p_cSize=>30
,p_begin_on_new_line=>'N'
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
 p_id=>wwv_flow_imp.id(5928215280379050)
,p_name=>'P8_COD_TIPO_GRUPO'
,p_item_sequence=>230
,p_item_plug_id=>wwv_flow_imp.id(5924450042379012)
,p_prompt=>'Categ. Vend.'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_CAT_VENDEDORES'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT cod_tipo_grupo||'' - '' ||descripcion D, ',
'       cod_tipo_grupo R ',
'  FROM FV_CATEGORIAS_VENDEDORES',
' WHERE cod_empresa = :P_COD_EMPRESA;'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'TODAS'
,p_cSize=>30
,p_begin_on_new_line=>'N'
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
 p_id=>wwv_flow_imp.id(6265686092275201)
,p_name=>'P8_COD_LISTA_PRECIO'
,p_item_sequence=>240
,p_item_plug_id=>wwv_flow_imp.id(5924450042379012)
,p_prompt=>'Lista Precio'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LVLISTAPRECIO'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT l.cod_lista_precio||'' - ''||l.descripcion D, ',
'       l.cod_lista_precio R ',
'  FROM vt_listas_precios_cab l, monedas m ',
' WHERE l.cod_empresa = :P_COD_EMPRESA',
'   AND l.cod_moneda = m.cod_moneda ',
'   AND l.estado = ''A'';'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'TODAS'
,p_cSize=>30
,p_begin_on_new_line=>'N'
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
 p_id=>wwv_flow_imp.id(6265770549275202)
,p_name=>'P8_COD_MONEDA'
,p_item_sequence=>250
,p_item_plug_id=>wwv_flow_imp.id(5924450042379012)
,p_prompt=>'Moneda'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LVMONEDAS1'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'-- IDENTICO A LV_MONEDAS DEL VTFONSEN',
'  SELECT cod_moneda||'' - ''||descripcion D, ',
'         cod_moneda R',
'    FROM monedas ',
'ORDER BY 1;'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'TODAS'
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
 p_id=>wwv_flow_imp.id(6265827858275203)
,p_name=>'P8_NRO_LOTE'
,p_item_sequence=>260
,p_item_plug_id=>wwv_flow_imp.id(5924450042379012)
,p_prompt=>'Nro Lote'
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
 p_id=>wwv_flow_imp.id(6265994866275204)
,p_name=>'P8_AGRUPAR'
,p_item_sequence=>310
,p_item_plug_id=>wwv_flow_imp.id(5924450042379012)
,p_prompt=>'Agrupar por Cliente'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_begin_on_new_line=>'N'
,p_colspan=>1
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#:margin-top-md'
,p_attribute_01=>'N'
,p_attribute_02=>'S'
,p_attribute_03=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(6267448887275219)
,p_name=>'P8_AUX_MSJ'
,p_item_sequence=>360
,p_item_plug_id=>wwv_flow_imp.id(5924450042379012)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(6268307176275228)
,p_name=>'P8_USUARIO'
,p_item_sequence=>370
,p_item_plug_id=>wwv_flow_imp.id(5924450042379012)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13307362871033844)
,p_name=>'P8_REPORTE'
,p_item_sequence=>380
,p_item_plug_id=>wwv_flow_imp.id(5924450042379012)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13307485061033845)
,p_name=>'P8_FORMATO'
,p_item_sequence=>330
,p_item_plug_id=>wwv_flow_imp.id(5924450042379012)
,p_item_default=>'v'
,p_prompt=>'Formato'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_lov=>'STATIC2:PDF;pdf,XLS;xls,VISTA;v'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'3'
,p_attribute_02=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(55007890156330113)
,p_name=>'P8_CANT_TOTAL'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(55007772622330112)
,p_prompt=>'Cant. Total'
,p_format_mask=>'999G999G999G999G990D00'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(55007916185330114)
,p_name=>'P8_SUBTOTAL'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(55007772622330112)
,p_prompt=>'Subtotal'
,p_format_mask=>'999G999G999G999G990D00'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(55008076326330115)
,p_name=>'P8_TOTAL_IVA'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(55007772622330112)
,p_prompt=>'IVA'
,p_format_mask=>'999G999G999G999G990D00'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(55008131220330116)
,p_name=>'P8_TOTAL'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(55007772622330112)
,p_prompt=>'Total'
,p_format_mask=>'999G999G999G999G990D00'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(7313117027362721)
,p_validation_name=>'VA_FEC_FINAL'
,p_validation_sequence=>9
,p_validation=>'P8_FEC_FINAL'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Debe seleccionar una fecha final.'
,p_associated_item=>wwv_flow_imp.id(5927288115379040)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(6268033400275225)
,p_validation_name=>'VA_FEC_FINAL1'
,p_validation_sequence=>10
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF TO_DATE(:P8_FEC_FINAL) < TO_DATE(:P8_FEC_INICIAL) THEN',
'    RETURN FALSE;',
'ELSE',
'    RETURN TRUE;',
'END IF;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'La fecha final debe ser mayor que la fecha inicial.'
,p_associated_item=>wwv_flow_imp.id(5927288115379040)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(7313004773362720)
,p_validation_name=>'VA_FEC_INICIAL'
,p_validation_sequence=>20
,p_validation=>'P8_FEC_INICIAL'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Debe seleccionar una fecha inicial.'
,p_associated_item=>wwv_flow_imp.id(5927144776379039)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(6267239615275217)
,p_name=>'DA_COD_CORTO_INI'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P8_COD_CORTO_INI'
,p_bind_type=>'bind'
,p_bind_event_type=>'focusout'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(6267369023275218)
,p_event_id=>wwv_flow_imp.id(6267239615275217)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P8_AUX_MSJ := NULL;',
'if :P8_COD_CORTO_INI is not null then',
'   begin',
'      select descripcion, cod_articulo',
'         into :P8_DESC_ART_INI,:P8_COD_ARTICULO_DES',
'         from st_articulos',
'         where cod_empresa = :P8_COD_EMPRESA_VAR',
'           and cod_art_corto= :P8_COD_CORTO_INI;',
'   exception',
'      when no_data_found then',
'         :P8_DESC_ART_INI := null ;',
unistr('         :P8_AUX_MSJ := ''No se encuentra c\00F3digo de art\00EDculo'';'),
'      when others then',
'         :P8_DESC_ART_INI := null ;',
unistr('         raise_application_error(-20000, ''Error en la tabla de art\00EDculos '' || sqlerrm );'),
'   end ;',
'else',
'   :P8_DESC_ART_INI := ''TODOS'' ;',
'end if ;'))
,p_attribute_02=>'P8_COD_CORTO_INI,P8_COD_EMPRESA_VAR'
,p_attribute_03=>'P8_DESC_ART_INI,P8_AUX_MSJ,P8_COD_ARTICULO_DES'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(6267502768275220)
,p_event_id=>wwv_flow_imp.id(6267239615275217)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'&P8_AUX_MSJ.'
,p_attribute_02=>'Error'
,p_attribute_03=>'warning'
,p_attribute_04=>'fa-warning'
,p_attribute_06=>'Aceptar'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P8_AUX_MSJ'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(6267619813275221)
,p_name=>'DA_COD_CORTO_FIN'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P8_COD_CORTO_FIN'
,p_bind_type=>'bind'
,p_bind_event_type=>'focusout'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(6267770696275222)
,p_event_id=>wwv_flow_imp.id(6267619813275221)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P8_COD_CORTO_FIN is not null then',
'   begin',
'      select descripcion,cod_articulo',
'         into :P8_DESC_ART_FIN,:P8_COD_ARTICULO_HAS',
'         from st_articulos',
'         where cod_empresa  = :P8_COD_EMPRESA_VAR',
'           and cod_art_corto = :P8_COD_CORTO_FIN;',
'   exception',
'      when others then',
'         :P8_DESC_ART_FIN:= null ;',
'   end ;',
'   /*if :b_parametro.cod_articulo_has < :b_parametro.cod_articulo_des then',
unistr('      mensaje( ''Debe ser posterior al c\00F3digo de art\00EDculo desde'' ) ;'),
'   end if ;*/',
'else',
'   :P8_COD_CORTO_FIN := null ;',
'end if ;'))
,p_attribute_02=>'P8_COD_CORTO_FIN,P8_COD_EMPRESA_VAR'
,p_attribute_03=>'P8_COD_CORTO_FIN ,P8_DESC_ART_FIN,P8_COD_ARTICULO_HAS'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(6268488238275229)
,p_name=>'DA_EXCLUIDO'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P8_AGRUPAR'
,p_condition_element=>'P8_VER_COSTO'
,p_triggering_condition_type=>'NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(6268528854275230)
,p_event_id=>wwv_flow_imp.id(6268488238275229)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF :P8_TIP_COMPROBANTE IS null THEN',
'   :P8_EXCLUIDO := ''I'' ;',
'END IF;'))
,p_attribute_02=>'P8_TIP_COMPROBANTE'
,p_attribute_03=>'P8_EXCLUIDO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(6268992510275234)
,p_name=>'DA_EXCLUIDO_1'
,p_event_sequence=>40
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P8_EXCLUIDO'
,p_condition_element=>'P8_TIP_COMPROBANTE'
,p_triggering_condition_type=>'NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'focusout'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(6269017053275235)
,p_event_id=>wwv_flow_imp.id(6268992510275234)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF :P8_TIP_COMPROBANTE IS null THEN',
'   :P8_EXCLUIDO := ''I'' ;',
'END IF;'))
,p_attribute_02=>'P8_TIP_COMPROBANTE'
,p_attribute_03=>'P8_EXCLUIDO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(6269172499275236)
,p_name=>'DA_CAMBIA_FECHAS'
,p_event_sequence=>50
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P8_RADIO_FECHA'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(6269222646275237)
,p_event_id=>wwv_flow_imp.id(6269172499275236)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF :P8_RADIO_FECHA = 1 THEN',
'     :P8_FEC_INICIAL := SYSDATE ;',
'     :P8_FEC_FINAL := SYSDATE ;',
'END IF;',
'IF :P8_RADIO_FECHA = 2 THEN',
'     :P8_FEC_INICIAL := to_date(''01/''||substr(to_char(SYSDATE,''dd/mm/yyyy''),4,10),''dd/mm/yyyy'') ;',
'     :P8_FEC_FINAL := last_day(add_months(SYSDATE,0)) ;',
'END IF;',
'IF :P8_RADIO_FECHA = 3 THEN',
'     :P8_FEC_INICIAL := to_date(''01/01/''||substr(to_char(SYSDATE,''dd/mm/yyyy''),7,10),''dd/mm/yyyy'') ;',
'     :P8_FEC_FINAL    := to_date(''31/12/''||substr(to_char(SYSDATE,''dd/mm/yyyy''),7,10),''dd/mm/yyyy'') ;',
'END IF;',
'IF :P8_RADIO_FECHA = 4 THEN',
'     :P8_FEC_INICIAL :=  to_date(''01/01/2000'' ,''dd/mm/yyyy'') ; ',
'     :P8_FEC_FINAL    := to_date(''31/12/''||to_char(SYSDATE,''yyyy''),''dd/mm/yyyy'') ; ',
'END IF;'))
,p_attribute_02=>'P8_RADIO_FECHA'
,p_attribute_03=>'P8_FEC_INICIAL,P8_FEC_FINAL'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(13306900931033840)
,p_name=>'DA_EJECUTA_REPORTES'
,p_event_sequence=>60
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(5927484424379042)
,p_condition_element=>'P8_FORMATO'
,p_triggering_condition_type=>'NOT_EQUALS'
,p_triggering_expression=>'v'
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(13307158624033842)
,p_event_id=>wwv_flow_imp.id(13306900931033840)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P8_AUX_MSJ := null;',
'IF :P8_FEC_INICIAL IS NOT NULL AND :P8_FEC_FINAL IS NOT NULL THEN ',
'    IF TO_DATE(:P8_FEC_FINAL) >= TO_DATE(:P8_FEC_INICIAL) THEN',
'        IF :P8_TIP_REPORTE = ''1'' THEN',
'            :P8_REPORTE := ''VTFACPRO'';',
'        ELSIF :P8_TIP_REPORTE = ''2'' THEN',
'            IF :P8_AGRUPAR = ''S'' AND( :P8_TIP_COMPROBANTE<>''NCR'' OR  :P8_TIP_COMPROBANTE IS NULL)  THEN',
'                :P8_REPORTE := ''VTFACPRN'';',
'            ELSIF :P8_AGRUPAR = ''S''  AND :P8_TIP_COMPROBANTE=''NCR''   THEN',
'                :P8_REPORTE := ''VTFACPRN_NUEVO'';',
'            ELSIF :P8_AGRUPAR = ''N'' AND( :P8_TIP_COMPROBANTE<>''NCR'' OR  :P8_TIP_COMPROBANTE IS NULL)  THEN',
'                :P8_REPORTE := ''VTFACPRM'';',
'            ELSIF :P8_AGRUPAR = ''N''  AND :P8_TIP_COMPROBANTE=''NCR''  THEN ',
'                :P8_REPORTE := ''VTFACPRM_NUEVO'';',
'            ELSE',
'            	:P8_REPORTE :=''VTFACPRN'';',
'            END IF;',
'        ELSIF :P8_TIP_REPORTE = ''3'' THEN',
'            :P8_REPORTE :=''VTFACGASF'';',
'        ELSIF :P8_TIP_REPORTE = ''4'' THEN',
'            :P8_REPORTE :=''VTGASCORP'';',
'        ELSIF :P8_TIP_REPORTE = ''5'' THEN',
'            :P8_REPORTE :=''VTFACPROPROM'';      ',
'        ELSIF :P8_TIP_REPORTE = ''6'' THEN',
'            :P8_REPORTE := ''VTFACPROTIE'';',
'        ELSIF :P8_TIP_REPORTE = ''7''  AND :P8_TIP_COMPROBANTE=''NCR''  THEN',
'            :P8_REPORTE :=''VTFACNCR'';            ',
'        ELSIF :P8_TIP_REPORTE = ''8''   THEN',
'            :P8_REPORTE :=''VTFACPROSNC'';',
'        ELSIF :P8_TIP_REPORTE = ''7''  AND :P8_TIP_COMPROBANTE is null OR :P8_TIP_COMPROBANTE !=''NCR''  THEN  ',
unistr('            :P8_AUX_MSJ := ''El tipo de comprobante tiene que ser Nota de Cr\00E9dito para ejecutar el reporte seleccionado.'';'),
'        ELSE',
unistr('            :P8_AUX_MSJ := ''Seleccione un tipo de reporte v\00E1lido'';'),
'        END IF;',
'    ELSE',
'        :P8_AUX_MSJ := ''La fecha final debe ser mayor a la fecha inicial.'';',
'    END IF;    ',
'ELSE    ',
unistr('    :P8_AUX_MSJ := ''Debe seleccionar las fechas de inicio y fin del per\00EDodo a consultar.'';'),
'END IF;    '))
,p_attribute_02=>'P8_FEC_INICIAL,P8_FEC_FINAL,P8_TIP_REPORTE,P8_AGRUPAR,P8_TIP_COMPROBANTE'
,p_attribute_03=>'P8_AUX_MSJ,P8_REPORTE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(13307284108033843)
,p_event_id=>wwv_flow_imp.id(13306900931033840)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'&P8_AUX_MSJ.'
,p_attribute_02=>'Error'
,p_attribute_03=>'warning'
,p_attribute_04=>'fa-warning'
,p_attribute_06=>'Aceptar'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P8_AUX_MSJ'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(13307085108033841)
,p_event_id=>wwv_flow_imp.id(13306900931033840)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'doDescarga(apex.item(''P8_REPORTE'').getValue(),apex.item(''P8_FORMATO'').getValue(),apex.item(''P8_COD_EMPRESA_VAR'').getValue(), apex.item(''P8_COD_ARTICULO_DES'').getValue(), ',
'           apex.item(''P8_COD_ARTICULO_HAS'').getValue(),apex.item(''P8_CATEGORIA'').getValue(), apex.item(''P8_COD_CLIENTE'').getValue(), ',
'           apex.item(''P8_COD_CONDICION_VENTA'').getValue(), apex.item(''P8_COD_LINEA_DES'').getValue(), apex.item(''P8_COD_LISTA_PRECIO'').getValue(), apex.item(''P8_COD_MARCA_DES'').getValue(),',
'           apex.item(''P8_COD_MONEDA'').getValue(), apex.item(''P8_COD_RUBRO'').getValue(), apex.item(''P8_COD_SECTOR'').getValue(), ',
'           apex.item(''P8_COD_SUCURSAL'').getValue(), apex.item(''P8_COD_TIPO_GRUPO'').getValue(), apex.item(''P8_COD_VENDEDOR'').getValue(),',
'           apex.item(''P8_COD_CONDICION_VENTA'').getValue(), apex.item(''P8_EXCLUIDO'').getValue(), apex.item(''P8_FEC_INICIAL'').getValue(),',
'           apex.item(''P8_FEC_FINAL'').getValue(), apex.item(''P8_NRO_LOTE'').getValue(), apex.item(''P8_TIP_CLIENTE'').getValue(),',
'           apex.item(''P8_TIP_COMPROBANTE'').getValue(), apex.item(''P8_VER_COSTO'').getValue(), apex.item(''P8_COD_FAMILIA'').getValue(),',
'           apex.item(''P8_COD_CORPORACION'').getValue())',
'',
'',
''))
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P8_AUX_MSJ'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(54302765663918048)
,p_name=>'Visualizar reportes'
,p_event_sequence=>70
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(5927484424379042)
,p_condition_element=>'P8_FORMATO'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'v'
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
,p_da_event_comment=>'Visualizar reportes'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(55006611293330101)
,p_event_id=>wwv_flow_imp.id(54302765663918048)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var spinner = apex.util.showSpinner();',
'$("#apex_wait_overlay").remove()'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(54302890925918049)
,p_event_id=>wwv_flow_imp.id(54302765663918048)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'INV.VTFAPRO.pr_obtener_rep_vtfapro(P_COD_EMPRESA    => :p_cod_empresa,',
'                                 P_COD_MONEDA       => :P8_COD_MONEDA,',
'                                 P_COD_SECTOR       => :P8_COD_SECTOR,',
'                                 P_TIP_CLIENTE      => :P8_TIP_CLIENTE,',
'                                 P_COD_TIPO_GRUPO   => :P8_COD_TIPO_GRUPO,',
'                                 P_TIP_COMPROBANTE  => :P8_TIP_COMPROBANTE,',
'                                 P_CONDICION_VENTA  => :P8_COD_CONDICION_VENTA,',
'                                 P_FEC_INICIAL      => :P8_FEC_INICIAL,',
'                                 P_FEC_FINAL        => :P8_FEC_FINAL,',
'                                 P_COD_SUCURSAL     => :P8_COD_SUCURSAL,',
'                                 P_COD_CLIENTE      => :P8_COD_CLIENTE,',
'                                 P_NRO_LOTE         => :P8_NRO_LOTE,',
'                                 P_COD_ARTICULO_DES => :P8_COD_ARTICULO_DES,',
'                                 P_COD_ARTICULO_HAS => :P8_COD_ARTICULO_HAS,',
'                                 P_COD_VENDEDOR     => :P8_COD_VENDEDOR,',
'                                 P_COD_CATEGORIA    => :P8_CATEGORIA,',
'                                 P_COD_RUBRO        => :P8_COD_RUBRO,',
'                                 P_COD_FAMILIA      => :P8_COD_FAMILIA,',
'                                 P_COD_MARCA        => :P8_COD_MARCA_DES,',
'                                 P_COD_LINEA        => :P8_COD_LINEA_DES,',
'                                 P_COD_ZONA         => NULL,',
'                                 P_COD_LISTA        => :P8_COD_LISTA_PRECIO,',
'                                 P_EXCLUIDO         => :P8_EXCLUIDO,',
'                                 P_COD_IVA          => NULL,',
'                                 P_TOTAL_CANTIDAD   => :P8_CANT_TOTAL,',
'                                 P_MONTO_TOTAL      => :P8_SUBTOTAL,',
'                                 P_TOTAL_IVA        => :P8_TOTAL_IVA,',
'                                 P_TOTAL            => :P8_TOTAL);',
''))
,p_attribute_02=>'P8_COD_MONEDA,P8_COD_SECTOR,P8_TIP_CLIENTE,P8_COD_TIPO_GRUPO,P8_TIP_COMPROBANTE,P8_COD_CONDICION_VENTA,P8_FEC_INICIAL,P8_FEC_FINAL,P8_COD_SUCURSAL,P8_COD_CLIENTE,P8_NRO_LOTE,P8_COD_ARTICULO_DES,P8_COD_ARTICULO_HAS,P8_COD_VENDEDOR,P8_CATEGORIA,P8_COD_'
||'RUBRO,P8_COD_FAMILIA,P8_COD_MARCA_DES,P8_COD_LINEA_DES,P8_COD_LISTA_PRECIO,P8_EXCLUIDO'
,p_attribute_03=>'P8_CANT_TOTAL,P8_SUBTOTAL,P8_TOTAL_IVA,P8_TOTAL'
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
 p_id=>wwv_flow_imp.id(55006703797330102)
,p_event_id=>wwv_flow_imp.id(54302765663918048)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'$(".u-Processing").remove();'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(55008503581330120)
,p_event_id=>wwv_flow_imp.id(54302765663918048)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(54300318144918024)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(54302986120918050)
,p_event_id=>wwv_flow_imp.id(54302765663918048)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(54300318144918024)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(55008297849330117)
,p_name=>'Crea coleccion'
,p_event_sequence=>80
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(55008380039330118)
,p_event_id=>wwv_flow_imp.id(55008297849330117)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'APEX_COLLECTION.CREATE_OR_TRUNCATE_COLLECTION(P_COLLECTION_NAME => ''TMP_VTFAPRO'');'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(55008436456330119)
,p_event_id=>wwv_flow_imp.id(55008297849330117)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(54300318144918024)
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(6268861821275233)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'CLEAR SESSION'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(5926428909379032)
,p_process_sequence=>20
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_INIT'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'--PRE-FORM',
':P_COD_MODULO := ''VT'';',
'',
':P8_COD_USUARIO_VAR  := NVL(:P_COD_USUARIO, :APP_USER);',
':P8_COD_EMPRESA_VAR  := NVL(:P_COD_EMPRESA, ''1'');',
':P8_COD_SUCURSAL_VAR := NVL(:P_COD_SUCURSAL, NULL);',
':P8_COD_MODULO_VAR   := NVL(:P_COD_MODULO, NULL);',
'',
':P8_TIP_CONTADO_VAR := bs_busca_parametro( :P8_COD_MODULO_VAR, ''TIPO_CONTADO'' );',
':P8_TIP_CREDITO_VAR := bs_busca_parametro( :P8_COD_MODULO_VAR, ''TIPO_CREDITO'' );',
':P8_TIP_NOTACRE_VAR := bs_busca_parametro( :P8_COD_MODULO_VAR, ''TIPO_NOTACRE'' );',
':P8_TIP_TICKET_VAR  := bs_busca_parametro( :P8_COD_MODULO_VAR,  ''TIPO_TICKET'' );',
'',
':P8_VER_COSTO   :=''N'';',
':P8_TIP_REPORTE := 1;',
'',
':P8_FEC_INICIAL := to_date( ''01/'' || to_char( sysdate, ''MM/YYYY'' ), ''DD/MM/YYYY'' );',
':P8_FEC_FINAL   := sysdate;',
'',
':P8_RADIO_FECHA := 1;',
'',
':P8_FORMATO := ''v'';'))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(6269851984275243)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'EJECUTAR_REPORTE'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'--EJECUTA REPORTE EN JASPER',
'IF :P8_TIP_REPORTE= ''1'' THEN',
'  	null;--RUN_PRODUCT( REPORTS, ''VTFACPRO'', ASYNCHRONOUS, RUNTIME, FILESYSTEM, PL_ID, NULL );',
'ELSIF :P8_TIP_REPORTE= ''2'' THEN',
'    IF :P8_AGRUPAR = ''S'' AND( :P8_TIP_COMPROBANTE<>''NCR'' OR  :P8_TIP_COMPROBANTE IS null)  THEN',
'        null;--RUN_PRODUCT( REPORTS, ''VTFACPRN'', ASYNCHRONOUS, RUNTIME, FILESYSTEM, PL_ID, NULL );',
'    ELSIF :P8_AGRUPAR = ''S''  AND :P8_TIP_COMPROBANTE=''NCR''   THEN',
'        null;--RUN_PRODUCT( REPORTS, ''VTFACPRN_NUEVO'', ASYNCHRONOUS, RUNTIME, FILESYSTEM, PL_ID, NULL );',
'    ELSIF :P8_AGRUPAR = ''N'' AND( :P8_TIP_COMPROBANTE<>''NCR'' OR  :P8_TIP_COMPROBANTE IS null)  THEN',
'        null;--RUN_PRODUCT( REPORTS, ''VTFACPRM'', ASYNCHRONOUS, RUNTIME, FILESYSTEM, PL_ID, NULL );',
'    ELSIF :P8_AGRUPAR = ''N''  AND :P8_TIP_COMPROBANTE=''NCR''  THEN',
'        null;--RUN_PRODUCT( REPORTS, ''VTFACPRM_NUEVO'', ASYNCHRONOUS, RUNTIME, FILESYSTEM, PL_ID, NULL );',
'    ELSE',
'        null;--RUN_PRODUCT( REPORTS, ''VTFACPRN'', ASYNCHRONOUS, RUNTIME, FILESYSTEM, PL_ID, NULL );',
'    END IF;',
'ELSIF :P8_TIP_REPORTE= ''3'' THEN',
'    NULL;--RUN_PRODUCT( REPORTS, ''VTfacgasf.rep'', ASYNCHRONOUS, RUNTIME, FILESYSTEM, PL_ID, NULL );',
'ELSIF :P8_TIP_REPORTE= ''4'' THEN',
'    NULL;--RUN_PRODUCT( REPORTS, ''VTgascorp.rep'', ASYNCHRONOUS, RUNTIME, FILESYSTEM, PL_ID, NULL );',
'ELSIF :P8_TIP_REPORTE= ''5'' THEN',
'    NULL;--RUN_PRODUCT( REPORTS, ''VTFACPROPROM.rep'', ASYNCHRONOUS, RUNTIME, FILESYSTEM, PL_ID, NULL );      ',
'ELSIF :P8_TIP_REPORTE= ''6'' THEN',
'    NULL;--RUN_PRODUCT( REPORTS, ''VTFACPROTIE.rep'', ASYNCHRONOUS, RUNTIME, FILESYSTEM, PL_ID, NULL );',
'ELSIF :P8_TIP_REPORTE= ''7''  AND :P8_TIP_COMPROBANTE=''NCR''  THEN',
'    NULL;--RUN_PRODUCT( REPORTS, ''VTFACNCR.rep'', ASYNCHRONOUS, RUNTIME, FILESYSTEM, PL_ID, NULL );',
'ELSIF :P8_TIP_REPORTE= ''8''   THEN',
'    NULL;--RUN_PRODUCT( REPORTS, ''VTFACPROSNC'', ASYNCHRONOUS, RUNTIME, FILESYSTEM, PL_ID, NULL );',
'ELSE',
'    NULL;--mensaje_Ex(''Seleccione un Tipo de Reporte valido'',1);',
'END IF;',
''))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'Ha ocurrido un error.'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>unistr('El reporte se ejecut\00F3 correctamente.')
);
wwv_flow_imp.component_end;
end;
/
