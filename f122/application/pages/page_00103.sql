prompt --application/pages/page_00103
begin
--   Manifest
--     PAGE: 00103
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
 p_id=>103
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'Carga de Notas de Credito'
,p_alias=>'CARGA-DE-NOTAS-DE-CREDITO'
,p_step_title=>'Carga de Notas de Credito'
,p_autocomplete_on_off=>'OFF'
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
'function doDescarga(p_cod_empresa, p_tip_comprobante, p_ser_comprobante, p_nro_comprobante, p_cod_cliente){',
'   var vURL = ''https://ngosaeca.com.py/reportes/flow.html?_flowId=viewReportFlow&_flowId=viewReportFlow&ParentFolderUri=%2Freports&reportUnit=%2Freports%2FVTIMPNCR_CANON_FE&standAlone=true&j_username=jasperadmin&j_password=jasperadmin&output=pdf&''',
'            + ''P_COD_EMPRESA='' + p_cod_empresa + ''&P_TIP_COMPROBANTE='' + p_tip_comprobante  + ',
'            ''&P_SER_COMPROBANTE=''+ p_ser_comprobante + ''&P_NRO_COMPROBANTE=''+ p_nro_comprobante',
'            + ''&P_COD_CLIENTE=''+ p_cod_cliente;',
'',
'window.open(vURL,"Pagina Child","width=1800,height=1000,scrollbars=NO") ;',
'   console.log(vURL);',
'  ',
'}',
'',
'',
'function doDescargabh(p_cod_empresa, p_tip_comprobante, p_ser_comprobante, p_nro_comprobante, p_cod_cliente){',
'   var vURL = ''https://ngosaeca.com.py/reportes/flow.html?_flowId=viewReportFlow&_flowId=viewReportFlow&ParentFolderUri=%2Freports&reportUnit=%2Freports%2FVTIMPNCR_CANON_BH&standAlone=true&j_username=jasperadmin&j_password=jasperadmin&output=pdf&''',
'            + ''P_COD_EMPRESA='' + p_cod_empresa + ''&P_TIP_COMPROBANTE='' + p_tip_comprobante  + ',
'            ''&P_SER_COMPROBANTE=''+ p_ser_comprobante + ''&P_NRO_COMPROBANTE=''+ p_nro_comprobante',
'            + ''&P_COD_CLIENTE=''+ p_cod_cliente;',
'',
'window.open(vURL,"Pagina Child","width=1800,height=1000,scrollbars=NO") ;',
'   console.log(vURL);',
'  ',
'}',
'',
'function soloNumeros(e){',
'  var key = e.charCode;',
'    return key >= 48 && key <= 57;',
'}'))
,p_javascript_code_onload=>'window.history.pushState("object or string", "Title", removeParam("success_msg", window.location.href));'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
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
,p_last_upd_yyyymmddhh24miss=>'20241227134915'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(15762364761998214)
,p_plug_name=>unistr('Notas de Cr\00E9dito')
,p_region_template_options=>'#DEFAULT#:t-Region--accent1:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(16575241749428206)
,p_plug_name=>'CABECERA'
,p_parent_plug_id=>wwv_flow_imp.id(15762364761998214)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(16575874859428212)
,p_plug_name=>'COMPROBANTE'
,p_parent_plug_id=>wwv_flow_imp.id(16575241749428206)
,p_region_template_options=>'#DEFAULT#:t-Form--noPadding'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>10
,p_plug_grid_column_span=>6
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(16575923593428213)
,p_plug_name=>'CLIENTE'
,p_parent_plug_id=>wwv_flow_imp.id(16575241749428206)
,p_region_template_options=>'#DEFAULT#:t-Form--noPadding'
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
 p_id=>wwv_flow_imp.id(16602920961666804)
,p_plug_name=>'PIE'
,p_parent_plug_id=>wwv_flow_imp.id(16575241749428206)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>50
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(16603320138666808)
,p_plug_name=>'REPORTE'
,p_parent_plug_id=>wwv_flow_imp.id(16575241749428206)
,p_region_template_options=>'#DEFAULT#:margin-top-sm'
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
'       TO_NUMBER(C021) recargo,',
'       TO_NUMBER(C022) descuento,',
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
 p_id=>wwv_flow_imp.id(16997836410874313)
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
,p_internal_uid=>16997836410874313
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(16997927893874314)
,p_db_column_name=>'SEQ_ID'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Seq Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(16998044359874315)
,p_db_column_name=>'IMPORTE_ANT'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Importe Ant'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(16998144305874316)
,p_db_column_name=>'IVA_ANT'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Iva Ant'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(16998265388874317)
,p_db_column_name=>'COD_ARTICULO'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>unistr('Art\00EDculo')
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(16998348894874318)
,p_db_column_name=>'COSTO_PROMEDIO'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Costo Promedio'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(16998499163874319)
,p_db_column_name=>'COSTO_PROMEDIO_REF'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Costo Promedio Ref'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(16998523010874320)
,p_db_column_name=>'NRO_LOTE'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Lote'
,p_column_type=>'STRING'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(16998636927874321)
,p_db_column_name=>'CANTIDAD'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Cantidad'
,p_column_type=>'STRING'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(16998790316874322)
,p_db_column_name=>'CANTIDAD_VENDIDA'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Cantidad Vendida'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(16998995395874324)
,p_db_column_name=>'PORC_IVA'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Porc Iva'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(16999099159874325)
,p_db_column_name=>'IND_RENTA'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Ind Renta'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(16999164677874326)
,p_db_column_name=>'PRECIO_LISTA'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Precio Lista'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(16999473783874329)
,p_db_column_name=>'COD_IVA'
,p_display_order=>160
,p_column_identifier=>'P'
,p_column_label=>'Cod Iva'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(16999540121874330)
,p_db_column_name=>'NRO_PROMO'
,p_display_order=>170
,p_column_identifier=>'Q'
,p_column_label=>'Nro Promo'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(16999734923874332)
,p_db_column_name=>'SER_PEDIDO'
,p_display_order=>190
,p_column_identifier=>'S'
,p_column_label=>'Ser Pedido'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(16999806408874333)
,p_db_column_name=>'NRO_PEDIDO'
,p_display_order=>200
,p_column_identifier=>'T'
,p_column_label=>'Nro Pedido'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(17000102300874336)
,p_db_column_name=>'VPORC_DESCUENTO_ANT'
,p_display_order=>230
,p_column_identifier=>'W'
,p_column_label=>'Vporc Descuento Ant'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(17000240255874337)
,p_db_column_name=>'VDESC_ARTICULO'
,p_display_order=>240
,p_column_identifier=>'X'
,p_column_label=>unistr('Descripci\00F3n')
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(17000370020874338)
,p_db_column_name=>'VCOD_GRUPO_ART'
,p_display_order=>250
,p_column_identifier=>'Y'
,p_column_label=>'Vcod Grupo Art'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(17000492587874339)
,p_db_column_name=>'VCOD_MONEDA_BASE'
,p_display_order=>260
,p_column_identifier=>'Z'
,p_column_label=>'Vcod Moneda Base'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(17000683249874341)
,p_db_column_name=>'VMONTO_EXENTA'
,p_display_order=>280
,p_column_identifier=>'AB'
,p_column_label=>'Vmonto Exenta'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(17000790969874342)
,p_db_column_name=>'VMONTO_GRAVADA_10'
,p_display_order=>290
,p_column_identifier=>'AC'
,p_column_label=>'Vmonto Gravada 10'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(17000803313874343)
,p_db_column_name=>'VMONTO_GRAVADA_5'
,p_display_order=>300
,p_column_identifier=>'AD'
,p_column_label=>'Vmonto Gravada 5'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(17000960091874344)
,p_db_column_name=>'CANTIDAD_UB'
,p_display_order=>310
,p_column_identifier=>'AE'
,p_column_label=>'Cantidad Ub'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(17001084187874345)
,p_db_column_name=>'VPORC_IVA_AD'
,p_display_order=>320
,p_column_identifier=>'AF'
,p_column_label=>'Vporc Iva Ad'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(18370602372390502)
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
 p_id=>wwv_flow_imp.id(18370790757390503)
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
 p_id=>wwv_flow_imp.id(18370838147390504)
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
 p_id=>wwv_flow_imp.id(18370923530390505)
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
 p_id=>wwv_flow_imp.id(18371030320390506)
,p_db_column_name=>'MONTO_TOTAL'
,p_display_order=>400
,p_column_identifier=>'AO'
,p_column_label=>'Monto Total'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(27324379121312309)
,p_db_column_name=>'EDITAR'
,p_display_order=>410
,p_column_identifier=>'AP'
,p_column_label=>'Editar'
,p_column_link=>'javascript:$s(''P103_AUX_ABRE_DETALLE'',''#SEQ_ID#'');'
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
 p_id=>wwv_flow_imp.id(167618863011624447)
,p_db_column_name=>'RECARGO'
,p_display_order=>420
,p_column_identifier=>'AQ'
,p_column_label=>'Recargo'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(167618916431624448)
,p_db_column_name=>'DESCUENTO'
,p_display_order=>430
,p_column_identifier=>'AR'
,p_column_label=>'Descuento'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(17033328513639840)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'170334'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'COD_ARTICULO:VDESC_ARTICULO:NRO_LOTE:CANTIDAD:PRECIO_UNITARIO:PORC_DESCUENTO:DESCUENTO:PORC_RECARGO:RECARGO:TOTAL_IVA:MONTO_TOTAL:'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(15762579314998216)
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
 p_id=>wwv_flow_imp.id(17138479258007726)
,p_plug_name=>'IMPRIMIR'
,p_region_name=>'IMPR'
,p_region_template_options=>'#DEFAULT#:js-dialog-autoheight:js-dialog-size600x400'
,p_plug_template=>wwv_flow_imp.id(40120082745263659)
,p_plug_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(17138946955007731)
,p_plug_name=>unistr('Motivo de impresi\00F3n')
,p_parent_plug_id=>wwv_flow_imp.id(17138479258007726)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(17561537354802335)
,p_plug_name=>unistr('EDICI\00D3N')
,p_region_name=>'EDIT'
,p_region_template_options=>'#DEFAULT#:js-dialog-autoheight:js-dialog-size720x480'
,p_plug_template=>wwv_flow_imp.id(40120082745263659)
,p_plug_display_sequence=>50
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(17561669346802336)
,p_plug_name=>'Detalle'
,p_parent_plug_id=>wwv_flow_imp.id(17561537354802335)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(17139732153007739)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_imp.id(17138946955007731)
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
 p_id=>wwv_flow_imp.id(17562052510802340)
,p_button_sequence=>80
,p_button_plug_id=>wwv_flow_imp.id(17561669346802336)
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
 p_id=>wwv_flow_imp.id(17562938163802349)
,p_button_sequence=>90
,p_button_plug_id=>wwv_flow_imp.id(17561669346802336)
,p_button_name=>'CERRAR_DETALLE'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_image_alt=>'Cerrar '
,p_button_position=>'CREATE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(17138299044007724)
,p_button_sequence=>140
,p_button_plug_id=>wwv_flow_imp.id(15762364761998214)
,p_button_name=>'LIMPIAR'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_image_alt=>'Limpiar'
,p_button_position=>'EDIT'
,p_button_execute_validations=>'N'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(17138328996007725)
,p_button_sequence=>150
,p_button_plug_id=>wwv_flow_imp.id(15762364761998214)
,p_button_name=>'IMPRIMIR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_image_alt=>'Imprimir'
,p_button_position=>'EDIT'
,p_button_execute_validations=>'N'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(17462497140813313)
,p_button_sequence=>160
,p_button_plug_id=>wwv_flow_imp.id(15762364761998214)
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
 p_id=>wwv_flow_imp.id(17136521258007707)
,p_button_sequence=>180
,p_button_plug_id=>wwv_flow_imp.id(15762364761998214)
,p_button_name=>'GUARDAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Guardar'
,p_button_position=>'EDIT'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'u-color-21-bg u-color-13-text'
,p_security_scheme=>wwv_flow_imp.id(54258922546073523)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(18374251101390538)
,p_button_sequence=>190
,p_button_plug_id=>wwv_flow_imp.id(15762364761998214)
,p_button_name=>'ACTUALIZAR'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Actualizar'
,p_button_position=>'EDIT'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'VCONTROL NUMBER;',
'BEGIN',
'',
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
 p_id=>wwv_flow_imp.id(16607267846666847)
,p_button_sequence=>200
,p_button_plug_id=>wwv_flow_imp.id(15762364761998214)
,p_button_name=>'ELIMINAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Eliminar'
,p_button_position=>'EDIT'
,p_button_execute_validations=>'N'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'u-color-21-bg u-color-13-text'
,p_security_scheme=>wwv_flow_imp.id(255764441592110386)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(75544607547544134)
,p_button_sequence=>210
,p_button_plug_id=>wwv_flow_imp.id(15762364761998214)
,p_button_name=>'VOLVER'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Volver'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:298:&SESSION.::&DEBUG.:::'
,p_button_condition=>'P103_INDICADOR_VOLVER'
,p_button_condition2=>'S'
,p_button_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_button_css_classes=>'u-color-21-bg u-color-13-text'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(118953588371105321)
,p_button_sequence=>220
,p_button_plug_id=>wwv_flow_imp.id(15762364761998214)
,p_button_name=>'CERRAR'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Cerrar'
,p_button_position=>'EDIT'
,p_button_css_classes=>'u-color-21-bg u-color-13-text'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(210019593915258520)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(15762364761998214)
,p_button_name=>'BT_VOLVER'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--simple:t-Button--gapRight'
,p_button_template_id=>wwv_flow_imp.id(40187078917263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Volver'
,p_button_position=>'LEFT_OF_TITLE'
,p_button_redirect_url=>'f?p=&APP_ID.:622:&SESSION.::&DEBUG.:::'
,p_icon_css_classes=>'fa-arrow-left'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(118953795520105323)
,p_branch_name=>'CERRAR'
,p_branch_action=>'f?p=&APP_ID.:146:&SESSION.::&DEBUG.::P146_ACCION:BSMENSAJ&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(118953588371105321)
,p_branch_sequence=>10
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(15762680546998217)
,p_name=>'P103_COD_EMPRESA_VAR'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(15762579314998216)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(15762774567998218)
,p_name=>'P103_COD_USUARIO_VAR'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(15762579314998216)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(15762865254998219)
,p_name=>'P103_COD_SUCURSAL_VAR'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(15762579314998216)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(15762963540998220)
,p_name=>'P103_COD_MODULO_VAR'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(15762579314998216)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(15763056385998221)
,p_name=>'P103_IMP_VAR'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(15762579314998216)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(15763160530998222)
,p_name=>'P103_SER_COMPROBANTE_VAR'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(15762579314998216)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(15763232920998223)
,p_name=>'P103_LISTA_PRECIOS_VAR'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(15762579314998216)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(15763341520998224)
,p_name=>'P103_CONDICION_VENTA_VAR'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(15762579314998216)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(15763482582998225)
,p_name=>'P103_MODIFICA_PRECIOS_VAR'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(15762579314998216)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(15763505821998226)
,p_name=>'P103_TIP_COMPROBANTE_VAR'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(15762579314998216)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(15763601405998227)
,p_name=>'P103_TIP_CONTADO_VAR'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(15762579314998216)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(15763734452998228)
,p_name=>'P103_TIP_CREDITO_VAR'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(15762579314998216)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(15763875529998229)
,p_name=>'P103_TIP_CVENTA_VAR'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(15762579314998216)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(15763924260998230)
,p_name=>'P103_COD_MONEDA_PRECIO'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(15762579314998216)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(15764018659998231)
,p_name=>'P103_COD_CLIENTE_OCA'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(15762579314998216)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(15764178982998232)
,p_name=>'P103_COD_MONEDA_BASE_VAR'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(15762579314998216)
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
 p_id=>wwv_flow_imp.id(15764269905998233)
,p_name=>'P103_VARIACION_MENOS_VAR'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_imp.id(15762579314998216)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(15764306370998234)
,p_name=>'P103_VARIACION_MAS_VAR'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_imp.id(15762579314998216)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(15764423546998235)
,p_name=>'P103_UNIDAD_MEDIDA_VAR'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_imp.id(15762579314998216)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(15764545470998236)
,p_name=>'P103_MONTO_AJUSTE_MAX_VAR'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_imp.id(15762579314998216)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(15764690925998237)
,p_name=>'P103_VIENE_DEL_LOTE_VAR'
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_imp.id(15762579314998216)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(15764764676998238)
,p_name=>'P103_FEC_VENCIMIENTO_VAR'
,p_item_sequence=>220
,p_item_plug_id=>wwv_flow_imp.id(15762579314998216)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(15764860811998239)
,p_name=>'P103_LOTE_DEFECTO_VAR'
,p_item_sequence=>230
,p_item_plug_id=>wwv_flow_imp.id(15762579314998216)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(15764944123998240)
,p_name=>'P103_RECARGO_VAR'
,p_item_sequence=>240
,p_item_plug_id=>wwv_flow_imp.id(15762579314998216)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(15765084618998241)
,p_name=>'P103_PORC_IVA_VAR'
,p_item_sequence=>250
,p_item_plug_id=>wwv_flow_imp.id(15762579314998216)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(15765193594998242)
,p_name=>'P103_CAMBIA_NUMERO_FAC'
,p_item_sequence=>260
,p_item_plug_id=>wwv_flow_imp.id(15762579314998216)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(15765242812998243)
,p_name=>'P103_CARGA_SUCURSAL'
,p_item_sequence=>270
,p_item_plug_id=>wwv_flow_imp.id(15762579314998216)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(15765339320998244)
,p_name=>'P103_PERMITE_ANULAR'
,p_item_sequence=>280
,p_item_plug_id=>wwv_flow_imp.id(15762579314998216)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(15765491245998245)
,p_name=>'P103_CARGA_DESCUENTOS'
,p_item_sequence=>290
,p_item_plug_id=>wwv_flow_imp.id(15762579314998216)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(15765600586998247)
,p_name=>'P103_LINEAS_MAX'
,p_item_sequence=>310
,p_item_plug_id=>wwv_flow_imp.id(15762579314998216)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(15765716221998248)
,p_name=>'P103_USA_UM_DEF'
,p_item_sequence=>320
,p_item_plug_id=>wwv_flow_imp.id(15762579314998216)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(15765836590998249)
,p_name=>'P103_COD_CUSTODIO_VAR'
,p_item_sequence=>330
,p_item_plug_id=>wwv_flow_imp.id(15762579314998216)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(15765955865998250)
,p_name=>'P103_COD_SUCURSAL_CENTRAL_VAR'
,p_item_sequence=>340
,p_item_plug_id=>wwv_flow_imp.id(15762579314998216)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(16574712718428201)
,p_name=>'P103_ESTADO'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_imp.id(16602920961666804)
,p_item_default=>'P'
,p_prompt=>'Anulado (S/N)'
,p_display_as=>'NATIVE_CHECKBOX'
,p_lov=>'STATIC:;A'
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_read_only_when=>'P103_PERMITE_ANULAR'
,p_read_only_when2=>'S'
,p_read_only_when_type=>'VAL_OF_ITEM_IN_COND_NOT_EQ_COND2'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--large'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'1'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(16575199088428205)
,p_name=>'P103_COD_SUCURSAL'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(16575874859428212)
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
,p_cSize=>90
,p_colspan=>7
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
 p_id=>wwv_flow_imp.id(16575324604428207)
,p_name=>'P103_SER_COMPROBANTE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(16575874859428212)
,p_prompt=>'Serie '
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_colspan=>3
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(16575495965428208)
,p_name=>'P103_NRO_COMPROBANTE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(16575874859428212)
,p_prompt=>'Numero'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_begin_on_new_line=>'N'
,p_colspan=>5
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(16575560292428209)
,p_name=>'P103_COD_SECTOR'
,p_is_required=>true
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(16575874859428212)
,p_prompt=>unistr('Secci\00F3n')
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LVSECTORES'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  SELECT cod_sector||'' - ''||descripcion D, ',
'         cod_sector R',
'    FROM sectores ',
'   WHERE cod_empresa = :P_COD_EMPRESA ',
'ORDER BY descripcion;'))
,p_lov_display_null=>'YES'
,p_cSize=>90
,p_colspan=>5
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
 p_id=>wwv_flow_imp.id(16575662485428210)
,p_name=>'P103_FEC_ESTADO'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(16602920961666804)
,p_prompt=>'Fecha Estado'
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
 p_id=>wwv_flow_imp.id(16575700272428211)
,p_name=>'P103_FEC_COMPROBANTE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(16575874859428212)
,p_prompt=>'Fecha'
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
 p_id=>wwv_flow_imp.id(16576029200428214)
,p_name=>'P103_COLUMNA'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(16575874859428212)
,p_prompt=>'Tipo'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_MOTIVOS'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT cod_motivo||'' - ''||descripcion D,',
'       cod_motivo R ',
'  FROM motivos_nota_credito ',
' WHERE cod_empresa = :P_COD_EMPRESA;'))
,p_cSize=>90
,p_begin_on_new_line=>'N'
,p_colspan=>5
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
 p_id=>wwv_flow_imp.id(16576171516428215)
,p_name=>'P103_TIP_COMPROBANTE_REF'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(16575874859428212)
,p_prompt=>'Tipo'
,p_pre_element_text=>'Comprobante Referencia:&nbsp &nbsp'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_colspan=>4
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(16576292266428216)
,p_name=>'P103_SER_COMPROBANTE_REF'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(16575874859428212)
,p_prompt=>'Serie'
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
 p_id=>wwv_flow_imp.id(16576302997428217)
,p_name=>'P103_NRO_COMPROBANTE_REF'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(16575874859428212)
,p_prompt=>'Numero'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
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
 p_id=>wwv_flow_imp.id(16576476706428218)
,p_name=>'P103_TIP_OT'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(16575874859428212)
,p_prompt=>'Tipo'
,p_pre_element_text=>'Solicitud No Conforme:&nbsp &nbsp &nbsp'
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
 p_id=>wwv_flow_imp.id(16576560505428219)
,p_name=>'P103_SER_OT'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(16575874859428212)
,p_prompt=>'Serie'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
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
 p_id=>wwv_flow_imp.id(16576629448428220)
,p_name=>'P103_NRO_OT'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(16575874859428212)
,p_prompt=>'Numero'
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
 p_id=>wwv_flow_imp.id(16576818370428222)
,p_name=>'P103_COD_CLIENTE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(16575923593428213)
,p_prompt=>'Cliente'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_CLIENTES_VTNOTCRE'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  SELECT c.cod_cliente R, ',
'         nvl( ltrim( p.nombre ), ltrim( p.nomb_fantasia ) ) D ',
'    FROM cc_clientes c, personas p ',
'   WHERE c.cod_empresa = :P_COD_EMPRESA',
'     AND c.cod_persona = p.cod_persona',
'     AND NVL(ESTADO,''A'') NOT IN (''I'',''B'') ',
'ORDER BY 2'))
,p_lov_display_null=>'YES'
,p_cSize=>90
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
 p_id=>wwv_flow_imp.id(16576968135428223)
,p_name=>'P103_COD_DIRECCION'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(16575923593428213)
,p_prompt=>unistr('Direcci\00F3n')
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select cod_direccion d, cod_direccion r',
'from direc_personas ',
'where cod_persona = :P103_CLIENTE_PERSONA',
'order by descripcion_ref;'))
,p_lov_cascade_parent_items=>'P103_CLIENTE_PERSONA'
,p_ajax_items_to_submit=>'P103_CLIENTE_PERSONA'
,p_ajax_optimize_refresh=>'Y'
,p_cHeight=>1
,p_colspan=>2
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(16577018813428224)
,p_name=>'P103_DIR_CLIENTE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(16575923593428213)
,p_prompt=>'&nbsp'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>90
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(16577137526428225)
,p_name=>'P103_TEL_CLIENTE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(16575923593428213)
,p_prompt=>unistr('Tel\00E9fono')
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
 p_id=>wwv_flow_imp.id(16577267228428226)
,p_name=>'P103_RUC'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(16575923593428213)
,p_prompt=>'RUC'
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
 p_id=>wwv_flow_imp.id(16577336376428227)
,p_name=>'P103_COD_VENDEDOR'
,p_is_required=>true
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(16575923593428213)
,p_prompt=>'Vendedor'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_VENDEDORES_VTNOTCRE'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  SELECT v.cod_vendedor||'' - ''||nvl( ltrim( v.descripcion ), ltrim( p.nomb_fantasia ) ) D, ',
'         v.cod_vendedor R',
'    FROM fv_vendedores v, personas p ',
'   WHERE v.cod_empresa = :P_COD_EMPRESA',
'     AND v.cod_persona = p.cod_persona ',
'     AND nvl( v.estado, ''A'' ) = ''A'' ',
'ORDER BY 1'))
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
 p_id=>wwv_flow_imp.id(16577431700428228)
,p_name=>'P103_COD_CONDICION_VENTA'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(16575923593428213)
,p_prompt=>unistr('Condici\00F3n venta')
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_CONDICIONES_VTNOTCRE'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT c.cod_condicion_venta||'' - ''||c.descripcion D, ',
'       c.cod_condicion_venta R',
'  FROM cc_condiciones_ventas c, vt_listas_precios_cab l ',
' WHERE c.cod_empresa = :P_COD_EMPRESA',
'   AND l.cod_empresa = c.cod_empresa ',
'   AND c.cod_lista_precio = l.cod_lista_precio'))
,p_lov_display_null=>'YES'
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
 p_id=>wwv_flow_imp.id(16577567019428229)
,p_name=>'P103_COD_LISTA_PRECIO'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(16575923593428213)
,p_prompt=>'Lista de precios'
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
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_begin_on_new_line=>'N'
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
 p_id=>wwv_flow_imp.id(16577631607428230)
,p_name=>'P103_COD_MONEDA'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(16575923593428213)
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
,p_cSize=>30
,p_colspan=>6
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
 p_id=>wwv_flow_imp.id(16577747011428231)
,p_name=>'P103_TIP_CAMBIO'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(16575923593428213)
,p_pre_element_text=>'Tipo Cambio Ref.: &nbsp'
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
 p_id=>wwv_flow_imp.id(16577887850428232)
,p_name=>'P103_CAMBIO_MONEDA_PRECIO'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(16575923593428213)
,p_prompt=>'&nbsp'
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
 p_id=>wwv_flow_imp.id(16578118891428235)
,p_name=>'P103_COMENTARIO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(16602920961666804)
,p_prompt=>'Comentario'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>40
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(16578265102428236)
,p_name=>'P103_COD_CUSTODIO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(16602920961666804)
,p_prompt=>'Custodio'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  SELECT c.cod_custodio||'' - ''||c.descripcion D, c.cod_custodio R',
'    FROM usuarios_custodios u, cc_custodios c ',
'   WHERE u.cod_empresa = :P103_COD_EMPRESA_VAR ',
'     AND u.cod_usuario = :P103_COD_USUARIO_VAR ',
'     AND u.cod_empresa = c.cod_empresa ',
'     AND u.cod_custodio = c.cod_custodio ',
'     AND u.cod_custodio <> :P103_COD_CUSTODIO_VAR',
'UNION ALL ',
'  SELECT c.descripcion, c.cod_custodio ',
'    FROM cc_custodios c ',
'   WHERE c.cod_empresa = :P103_COD_EMPRESA_VAR ',
'     AND c.cod_custodio = :P103_COD_CUSTODIO_VAR',
'ORDER BY 1;'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_begin_on_new_field=>'N'
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
 p_id=>wwv_flow_imp.id(16578492329428238)
,p_name=>'P103_RECARGO'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(16602920961666804)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(16578507714428239)
,p_name=>'P103_HORA_ALTA'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(16602920961666804)
,p_prompt=>'Hora carga'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_begin_on_new_line=>'N'
,p_colspan=>1
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(16579393170428247)
,p_name=>'P103_NRO_MOV_CAJ'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(16602920961666804)
,p_prompt=>'Mov. caja'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_colspan=>2
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(16579412587428248)
,p_name=>'P103_COD_USUARIO'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(16602920961666804)
,p_prompt=>'Usuario'
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
 p_id=>wwv_flow_imp.id(16602712278666802)
,p_name=>'P103_REIMPRIME'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_imp.id(16602920961666804)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(16603195198666806)
,p_name=>'P103_SER_PEDIDO'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(16602920961666804)
,p_prompt=>'&nbsp'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_begin_on_new_line=>'N'
,p_colspan=>1
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(16603251233666807)
,p_name=>'P103_NRO_PEDIDO'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(16602920961666804)
,p_prompt=>'&nbsp'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_begin_on_new_line=>'N'
,p_begin_on_new_field=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(16603400559666809)
,p_name=>'P103_CLIENTE_PERSONA'
,p_item_sequence=>350
,p_item_plug_id=>wwv_flow_imp.id(15762579314998216)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(16603551509666810)
,p_name=>'P103_IND_EXENTO_AD'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(16575241749428206)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(16603809619666813)
,p_name=>'P103_TIPO_IMPUESTO'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(16575241749428206)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(16604322116666818)
,p_name=>'P103_TIP_COMPROBANTE'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(16575241749428206)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(16605173233666826)
,p_name=>'P103_TIP_CAMBIO_COMPRA'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(16575241749428206)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(16605278144666827)
,p_name=>'P103_DECIMALES'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(16575241749428206)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(16605390136666828)
,p_name=>'P103_IVA_PARCIAL'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(16575241749428206)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(16605456893666829)
,p_name=>'P103_SUBTOTAL_PARCIAL'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(16575241749428206)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(16605520266666830)
,p_name=>'P103_GRAVADAS_SUBTOTAL'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(16575241749428206)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(16605661362666831)
,p_name=>'P103_EXENTAS_SUBTOTAL'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(16575241749428206)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(16605724270666832)
,p_name=>'P103_PORCENTAJE_DESCUENTO'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(16575241749428206)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(16605815405666833)
,p_name=>'P103_DESCUENTO'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(16575241749428206)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(16606560032666840)
,p_name=>'P103_EXENTAS_PARCIAL'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(16575241749428206)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(16606644000666841)
,p_name=>'P103_CALCULA_IVA'
,p_item_sequence=>360
,p_item_plug_id=>wwv_flow_imp.id(15762579314998216)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(16606732805666842)
,p_name=>'P103_GRU_COMPROBANTE'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(16575241749428206)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(16607077421666845)
,p_name=>'P103_AUTO_IMPRESO'
,p_item_sequence=>370
,p_item_plug_id=>wwv_flow_imp.id(15762579314998216)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(16607312729666848)
,p_name=>'P103_CARGA_ITEMS'
,p_item_sequence=>380
,p_item_plug_id=>wwv_flow_imp.id(15762579314998216)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(16607496151666849)
,p_name=>'P103_DERECHOS'
,p_item_sequence=>390
,p_item_plug_id=>wwv_flow_imp.id(15762579314998216)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(16996720710874302)
,p_name=>'P103_SER_VALE'
,p_item_sequence=>400
,p_item_plug_id=>wwv_flow_imp.id(15762579314998216)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(16996860588874303)
,p_name=>'P103_NRO_VALE'
,p_item_sequence=>410
,p_item_plug_id=>wwv_flow_imp.id(15762579314998216)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(16997128109874306)
,p_name=>'P103_RECARGO_PORC'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_imp.id(16575241749428206)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(16997213900874307)
,p_name=>'P103_COD_ARTICULO'
,p_item_sequence=>420
,p_item_plug_id=>wwv_flow_imp.id(15762579314998216)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(16997334813874308)
,p_name=>'P103_CONDICION_VENTA_FAC'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_imp.id(16575241749428206)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(16997410669874309)
,p_name=>'P103_MULT'
,p_item_sequence=>430
,p_item_plug_id=>wwv_flow_imp.id(15762579314998216)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(16997508375874310)
,p_name=>'P103_DIV'
,p_item_sequence=>440
,p_item_plug_id=>wwv_flow_imp.id(15762579314998216)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(16997613150874311)
,p_name=>'P103_GRAVADAS_PARCIAL'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(16575241749428206)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(17137098465007712)
,p_name=>'P103_IMPRIMIR'
,p_item_sequence=>450
,p_item_plug_id=>wwv_flow_imp.id(15762579314998216)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(17139072832007732)
,p_name=>'P103_COD_MOTIVO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(17138946955007731)
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
 p_id=>wwv_flow_imp.id(17139295882007734)
,p_name=>'P103_DESCRIPCION'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(17138946955007731)
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
 p_id=>wwv_flow_imp.id(17139370896007735)
,p_name=>'P103_COD_USUARIO_IMP'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(17138946955007731)
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
 p_id=>wwv_flow_imp.id(17139449527007736)
,p_name=>'P103_FECHA_IMP'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(17138946955007731)
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
 p_id=>wwv_flow_imp.id(17461448016813303)
,p_name=>'P103_AUX_MSJ'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(17138946955007731)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(17461626669813305)
,p_name=>'P103_IMPRIME_REPORTE'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(17138946955007731)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(17461733833813306)
,p_name=>'P103_AUX_REGION'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(17138946955007731)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(17462179271813310)
,p_name=>'P013_CONFORMIDAD'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_imp.id(16575241749428206)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(17463430136813323)
,p_name=>'P103_ESTADO_ANT'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(16575241749428206)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(17561783853802337)
,p_name=>'P103_AUX_ABRE_DETALLE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(17561669346802336)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(17562393628802343)
,p_name=>'P103_COD_ARTICULO_DETALLE'
,p_item_sequence=>380
,p_item_plug_id=>wwv_flow_imp.id(17561669346802336)
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
,p_tag_attributes=>'readonly'
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
 p_id=>wwv_flow_imp.id(17562496642802344)
,p_name=>'P103_LOTE'
,p_item_sequence=>390
,p_item_plug_id=>wwv_flow_imp.id(17561669346802336)
,p_prompt=>'Lote'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select l.nro_lote D, l.nro_lote R',
'from st_lotes l, st_existencia_art s ',
'where s.cod_empresa = :P_COD_EMPRESA',
' and s.cod_articulo = :P103_COD_ARTICULO_DETALLE',
' and s.cod_sucursal = :P103_COD_SUCURSAL',
' --and nvl( s.cant_dispon, 0 ) > 0 ',
' and s.cod_empresa = l.cod_empresa ',
' and s.cod_articulo = l.cod_articulo ',
' and s.nro_lote = l.nro_lote ',
' and nvl(l.activo, ''N'') = ''S'' ',
' UNION ALL   ',
' SELECT NRO_LOTE , NRO_LOTE  ',
' FROM ST_LOTES L, ST_ARTICULOS S',
' where L.cod_empresa = :P_COD_EMPRESA',
' and L.cod_articulo = :P103_COD_ARTICULO_DETALLE',
'  and s.cod_empresa = l.cod_empresa ',
' and s.cod_articulo = l.cod_articulo ',
' AND NVL(S.IND_MANEJA_STOCK,''N'')<>''S''',
'order by 1; '))
,p_lov_cascade_parent_items=>'P103_COD_ARTICULO_DETALLE'
,p_ajax_items_to_submit=>'P103_COD_EMPRESA_VAR,P103_COD_ARTICULO_DETALLE,P103_COD_SUCURSAL'
,p_ajax_optimize_refresh=>'Y'
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(17562599734802345)
,p_name=>'P103_CANTIDAD'
,p_item_sequence=>400
,p_item_plug_id=>wwv_flow_imp.id(17561669346802336)
,p_prompt=>'Cantidad'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(17562684357802346)
,p_name=>'P103_PRECIO_UNITARIO'
,p_item_sequence=>410
,p_item_plug_id=>wwv_flow_imp.id(17561669346802336)
,p_prompt=>'Precio Unitario'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(17562723191802347)
,p_name=>'P103_PORC_DESCUENTO_DETALLE'
,p_item_sequence=>420
,p_item_plug_id=>wwv_flow_imp.id(17561669346802336)
,p_prompt=>'% descuento'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(17562802574802348)
,p_name=>'P103_PORC_RECARGO_DETALLE'
,p_item_sequence=>430
,p_item_plug_id=>wwv_flow_imp.id(17561669346802336)
,p_prompt=>'% recargo'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(18016576532449003)
,p_name=>'P103_AUX_CANT_VENDIDA'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(17561669346802336)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(18016605241449004)
,p_name=>'P103_AUX_COD_IVA'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(17561669346802336)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(18017760826449015)
,p_name=>'P103_ESTA_CONSULTANDO'
,p_item_sequence=>460
,p_item_plug_id=>wwv_flow_imp.id(15762579314998216)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(18017964852449017)
,p_name=>'P103_AUX_COD_ARTICULO_REL_BON'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(17561669346802336)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(18018017541449018)
,p_name=>'P103_AUX_DESCUENTO_MAXIMO'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(17561669346802336)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(18018104356449019)
,p_name=>'P103_SUPERA_DESCUENTO'
,p_item_sequence=>470
,p_item_plug_id=>wwv_flow_imp.id(15762579314998216)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(18018246792449020)
,p_name=>'P103_AUX_PORC_DESCUENTO_ANT'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(17561669346802336)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(18018391043449021)
,p_name=>'P103_AUX_DESCUENTO'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(17561669346802336)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(18018493514449022)
,p_name=>'P103_AUX_PORC_RECARGO_ANT'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(17561669346802336)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(18018508010449023)
,p_name=>'P103_AUX_RECARGO'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(17561669346802336)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(18018895336449026)
,p_name=>'P103_AUX_PORC_IVA'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(17561669346802336)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(18018944123449027)
,p_name=>'P103_AUX_IND_RENTA'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(17561669346802336)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(18019002282449028)
,p_name=>'P103_AUX_IVA_ANT'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(17561669346802336)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(18019131601449029)
,p_name=>'P103_AUX_PORC_IVA_AD'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(17561669346802336)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(18019223975449030)
,p_name=>'P103_AUX_TOTAL_IVA'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(17561669346802336)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(18019351413449031)
,p_name=>'P103_AUX_IMPORTE_ANT'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(17561669346802336)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(18019416294449032)
,p_name=>'P103_AUX_MONTO_TOTAL'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(17561669346802336)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(18019547573449033)
,p_name=>'P103_AUX_MONTO_EXENTA'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_imp.id(17561669346802336)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(18019696918449034)
,p_name=>'P103_AUX_MONTO_GRAVADA_10'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_imp.id(17561669346802336)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(18019731463449035)
,p_name=>'P103_AUX_MONTO_GRAVADA_5'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_imp.id(17561669346802336)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(18019990635449037)
,p_name=>'P103_AUX_CANTIDAD_UB'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_imp.id(17561669346802336)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(18371727228390513)
,p_name=>'P103_AUX_NRO_PROMO'
,p_item_sequence=>340
,p_item_plug_id=>wwv_flow_imp.id(17561669346802336)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(18371849992390514)
,p_name=>'P103_NRO_PROMO'
,p_item_sequence=>440
,p_item_plug_id=>wwv_flow_imp.id(17561669346802336)
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
,p_lov_cascade_parent_items=>'P103_COD_ARTICULO_DETALLE'
,p_ajax_items_to_submit=>'P103_COD_ARTICULO_DETALLE'
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
,p_attribute_10=>'COD_ARTICULO:P103_COD_ART_AUX'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(18372053161390516)
,p_name=>'P103_COD_ART_AUX'
,p_item_sequence=>480
,p_item_plug_id=>wwv_flow_imp.id(15762579314998216)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(18372131910390517)
,p_name=>'P103_AUX_COD_ART_PROMO'
,p_item_sequence=>350
,p_item_plug_id=>wwv_flow_imp.id(17561669346802336)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(18372583785390521)
,p_name=>'P103_AUX_MUESTRA_PROMO'
,p_item_sequence=>370
,p_item_plug_id=>wwv_flow_imp.id(17561669346802336)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(18373491954390530)
,p_name=>'P103_AUX_CANTIDAD_ANT'
,p_item_sequence=>360
,p_item_plug_id=>wwv_flow_imp.id(17561669346802336)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(18375282494390548)
,p_name=>'P103_AUX_DESCUENTO_DET'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(16602920961666804)
,p_prompt=>'Descuento '
,p_format_mask=>'999G999G999G999G990D00'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>40
,p_tag_attributes=>'readonly'
,p_begin_on_new_line=>'N'
,p_begin_on_new_field=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#:margin-left-sm'
,p_attribute_03=>'right'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(18375325752390549)
,p_name=>'P103_AUX_RECARGO_DET'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(16602920961666804)
,p_prompt=>'Recargos'
,p_format_mask=>'999G999G999G999G990D00'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>40
,p_tag_attributes=>'readonly'
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#:margin-left-sm'
,p_attribute_03=>'right'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(20406064269847804)
,p_name=>'P103_AUX_TOTAL'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_imp.id(16602920961666804)
,p_prompt=>'Total'
,p_format_mask=>'999G999G999G999G990D00'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#:margin-left-sm'
,p_attribute_03=>'right'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(20406325457847807)
,p_name=>'P103_AUX_AJUSTE_IVA'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(16602920961666804)
,p_prompt=>'Ajuste IVA'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_begin_on_new_line=>'N'
,p_begin_on_new_field=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#:margin-left-sm'
,p_attribute_03=>'right'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(20406658697847810)
,p_name=>'P103_AUX_TOTAL_IVA1'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(16602920961666804)
,p_prompt=>'IVA'
,p_format_mask=>'999G999G999G999G990D00'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_begin_on_new_line=>'N'
,p_begin_on_new_field=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#:margin-left-sm'
,p_attribute_03=>'right'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(20406744776847811)
,p_name=>'P103_AUX_SUBTOTAL'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(16602920961666804)
,p_prompt=>'Subtotal'
,p_format_mask=>'999G999G999G999G990D00'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#:margin-left-sm'
,p_attribute_03=>'right'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(20407251242847816)
,p_name=>'P103_AUX_EXENTAS'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(16602920961666804)
,p_prompt=>'Exentas'
,p_format_mask=>'999G999G999G999G990D00'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_begin_on_new_line=>'N'
,p_begin_on_new_field=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#:margin-left-sm'
,p_attribute_03=>'right'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(20407347707847817)
,p_name=>'P103_AUX_GRAVADAS'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(16602920961666804)
,p_prompt=>'Gravadas'
,p_format_mask=>'999G999G999G999G990D00'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_begin_on_new_line=>'N'
,p_begin_on_new_field=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#:margin-left-lg'
,p_attribute_03=>'right'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(75544709276544135)
,p_name=>'P103_INDICADOR_VOLVER'
,p_item_sequence=>490
,p_item_plug_id=>wwv_flow_imp.id(15762579314998216)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(180066040574113213)
,p_name=>'P103_DESCUENTO_DET'
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_imp.id(16602920961666804)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(180066153190113214)
,p_name=>'P103_EXENTAS'
,p_item_sequence=>230
,p_item_plug_id=>wwv_flow_imp.id(16602920961666804)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(180066284858113215)
,p_name=>'P103_SUBTOTAL'
,p_item_sequence=>250
,p_item_plug_id=>wwv_flow_imp.id(16602920961666804)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(180066346493113216)
,p_name=>'P103_RECARGO_DET'
,p_item_sequence=>220
,p_item_plug_id=>wwv_flow_imp.id(16602920961666804)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(180066495754113217)
,p_name=>'P103_GRAVADAS'
,p_item_sequence=>240
,p_item_plug_id=>wwv_flow_imp.id(16602920961666804)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(180066511060113218)
,p_name=>'P103_TOTAL_IVA'
,p_item_sequence=>260
,p_item_plug_id=>wwv_flow_imp.id(16602920961666804)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(180067613385113229)
,p_name=>'P103_AJUSTE_IVA'
,p_item_sequence=>270
,p_item_plug_id=>wwv_flow_imp.id(16602920961666804)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(180067751158113230)
,p_name=>'P103_TOTAL'
,p_item_sequence=>280
,p_item_plug_id=>wwv_flow_imp.id(16602920961666804)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(210018521117258510)
,p_name=>'P103_ACCION_CONSULTA'
,p_item_sequence=>450
,p_item_plug_id=>wwv_flow_imp.id(15762579314998216)
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(861498810368195539)
,p_name=>'P103_IND_AFECTA_GUARDA'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(16575923593428213)
,p_prompt=>'Afecta Guarda(S/N)'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_colspan=>2
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'S'
,p_attribute_03=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(920103053763595335)
,p_name=>'P103_P_NOM_FAC'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(16575241749428206)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(17001386664874348)
,p_validation_name=>'VA_SER_OT'
,p_validation_sequence=>10
,p_validation=>'P103_SER_OT'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Debe cargar la serie.'
,p_associated_item=>wwv_flow_imp.id(16576560505428219)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(17001428998874349)
,p_validation_name=>'VA_TIP_OT'
,p_validation_sequence=>20
,p_validation=>'P103_TIP_OT'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Debe cargar el tipo.'
,p_associated_item=>wwv_flow_imp.id(16576476706428218)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(17001570816874350)
,p_validation_name=>'VA_NRO_OT'
,p_validation_sequence=>30
,p_validation=>'P103_NRO_OT'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>unistr('Debe ingresar el n\00FAmero.')
,p_associated_item=>wwv_flow_imp.id(16576629448428220)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(17135968792007701)
,p_validation_name=>'VA_TIP_COMPROBANTE_REF'
,p_validation_sequence=>40
,p_validation=>'P103_TIP_COMPROBANTE_REF'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Debe ignresar el tipo de comprobante.'
,p_associated_item=>wwv_flow_imp.id(16576171516428215)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(17136007318007702)
,p_validation_name=>'VA_SER_COMPRPOBANTE_REF'
,p_validation_sequence=>50
,p_validation=>'P103_SER_COMPROBANTE_REF'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Debe ingresar la serie del comprobante.'
,p_associated_item=>wwv_flow_imp.id(16576292266428216)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(17136157214007703)
,p_validation_name=>'VA_NRO_COMPROBANTE_REF'
,p_validation_sequence=>60
,p_validation=>'P103_NRO_COMPROBANTE_REF'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>unistr('Debe ingresar el n\00FAmero del comprobante.')
,p_associated_item=>wwv_flow_imp.id(16576302997428217)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(17136217645007704)
,p_validation_name=>'VA_COD_SUCURSAL'
,p_validation_sequence=>70
,p_validation=>'P103_COD_SUCURSAL'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Debe seleccionar una sucursal.'
,p_associated_item=>wwv_flow_imp.id(16575199088428205)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(17136396630007705)
,p_validation_name=>'VA_SER_COMPROBANTE'
,p_validation_sequence=>80
,p_validation=>'P103_SER_COMPROBANTE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Debe ingresar la serie.'
,p_associated_item=>wwv_flow_imp.id(16575324604428207)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(17136478604007706)
,p_validation_name=>'VA_COD_CLIENTE'
,p_validation_sequence=>90
,p_validation=>'P103_COD_CLIENTE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Sebe seleccionar un cliente.'
,p_associated_item=>wwv_flow_imp.id(16576818370428222)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(17137882034007720)
,p_validation_name=>'VA_NRO_MOV_CAJA'
,p_validation_sequence=>100
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF :P103_NRO_MOV_CAJ IS NOT NULL then',
'    RETURN FALSE;',
'ELSE',
'    RETURN TRUE;    ',
'END IF;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'Detalle de Comprobante no puede ser agregado.'
,p_when_button_pressed=>wwv_flow_imp.id(17136521258007707)
,p_associated_item=>wwv_flow_imp.id(16579393170428247)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(17137933563007721)
,p_validation_name=>'VA_NRO_MOV_CAJA_1'
,p_validation_sequence=>110
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF :P103_NRO_MOV_CAJ IS NOT NULL then',
'    RETURN FALSE;',
'ELSE',
'    RETURN TRUE;    ',
'END IF;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'Detalle de Comprobante no puede ser eliminado.'
,p_when_button_pressed=>wwv_flow_imp.id(16607267846666847)
,p_associated_item=>wwv_flow_imp.id(16579393170428247)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(18374725737390543)
,p_validation_name=>'VA_NRO_COMPROBANTE'
,p_validation_sequence=>130
,p_validation=>'P103_NRO_COMPROBANTE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>unistr('Debe ingresar un n\00FAmero de comprobante.')
,p_when_button_pressed=>wwv_flow_imp.id(18374251101390538)
,p_associated_item=>wwv_flow_imp.id(16575495965428208)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(16574897823428202)
,p_name=>'DA_ESTADO'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P103_PERMITE_ANULAR'
,p_condition_element=>'P103_PERMITE_ANULAR'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'S'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(16574971565428203)
,p_event_id=>wwv_flow_imp.id(16574897823428202)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P103_ESTADO'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(24407166213161910)
,p_event_id=>wwv_flow_imp.id(16574897823428202)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P103_ESTADO'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(16603693077666811)
,p_name=>'DA_COD_CLIENTE'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P103_COD_CLIENTE'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(16603760552666812)
,p_event_id=>wwv_flow_imp.id(16603693077666811)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'VVENDEDOR VARCHAR2(10);',
'BEGIN',
'    VTNOTCRE.carga_cliente (P_COD_EMPRESA      => :P103_COD_EMPRESA_VAR,',
'                            P_COD_CLIENTE      => :P103_COD_CLIENTE,',
'                            P_CLIENTE_PERSONA  => :P103_CLIENTE_PERSONA,',
'                            P_IND_EXENTO_AD    => :P103_IND_EXENTO_AD,',
'                            P_TIPO_IMPUESTO    => :P103_TIPO_IMPUESTO,',
'                            PI_COD_DIRECCION   => :P103_COD_DIRECCION,',
'                            PO_COD_DIRECCION   => :P103_COD_DIRECCION,',
'                            PI_DIR_CLIENTE      => :P103_DIR_CLIENTE,',
'                            PO_DIR_CLIENTE      => :P103_DIR_CLIENTE,',
'                            P_COD_VENDEDOR     => VVENDEDOR,',
'                            P_RUC              => :P103_RUC); ',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        NULL;',
'END;',
'IF :P103_NRO_COMPROBANTE_REF IS NULL then',
'   :P103_CONDICION_VENTA_VAR := NULL;',
'   :P103_COD_LISTA_PRECIO := NULL;',
'END IF;',
''))
,p_attribute_02=>'P103_NRO_COMPROBANTE_REF,P103_COD_EMPRESA_VAR,P103_COD_CLIENTE,P103_COD_DIRECCION'
,p_attribute_03=>'P103_CONDICION_VENTA_VAR,P103_CLIENTE_PERSONA,P103_IND_EXENTO_AD,P103_TIPO_IMPUESTO,P103_COD_DIRECCION,P103_DIR_CLIENTE,P103_RUC'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(739757194403900412)
,p_event_id=>wwv_flow_imp.id(16603693077666811)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
'',
'BEGIN',
'    VTNOTCRE.carga_cliente (P_COD_EMPRESA      => :P103_COD_EMPRESA_VAR,',
'                            P_COD_CLIENTE      => :P103_COD_CLIENTE,',
'                            P_CLIENTE_PERSONA  => :P103_CLIENTE_PERSONA,',
'                            P_IND_EXENTO_AD    => :P103_IND_EXENTO_AD,',
'                            P_TIPO_IMPUESTO    => :P103_TIPO_IMPUESTO,',
'                            PI_COD_DIRECCION   => :P103_COD_DIRECCION,',
'                            PO_COD_DIRECCION   => :P103_COD_DIRECCION,',
'                            PI_DIR_CLIENTE      => :P103_DIR_CLIENTE,',
'                            PO_DIR_CLIENTE      => :P103_DIR_CLIENTE,',
'                            P_COD_VENDEDOR     => :P103_COD_VENDEDOR,',
'                            P_RUC              => :P103_RUC); ',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        NULL;',
'END;',
'IF :P103_NRO_COMPROBANTE_REF IS NULL then',
'   :P103_CONDICION_VENTA_VAR := NULL;',
'   :P103_COD_LISTA_PRECIO := NULL;',
'END IF;',
''))
,p_attribute_02=>'P103_NRO_COMPROBANTE_REF,P103_COD_EMPRESA_VAR,P103_COD_CLIENTE,P103_COD_DIRECCION'
,p_attribute_03=>'P103_CONDICION_VENTA_VAR,P103_CLIENTE_PERSONA,P103_IND_EXENTO_AD,P103_TIPO_IMPUESTO,P103_COD_DIRECCION,P103_DIR_CLIENTE,P103_COD_VENDEDOR,P103_RUC'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P103_NRO_COMPROBANTE_REF'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(16603973461666814)
,p_name=>'DA_DESC_DIR'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P103_COD_DIRECCION'
,p_bind_type=>'bind'
,p_bind_event_type=>'focusout'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(16604093597666815)
,p_event_id=>wwv_flow_imp.id(16603973461666814)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  SELECT DETALLE',
'    INTO :P103_DIR_CLIENTE',
'    FROM direc_personas ',
'   WHERE cod_direccion = :P103_COD_DIRECCION',
'     AND cod_persona = :P103_CLIENTE_PERSONA',
'     AND rownum = 1;',
''))
,p_attribute_02=>'P103_COD_DIRECCION,P103_CLIENTE_PERSONA'
,p_attribute_03=>'P103_DIR_CLIENTE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(16604197546666816)
,p_name=>'DA_TIP_CAMBIO'
,p_event_sequence=>40
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P103_COD_MONEDA'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(16604203213666817)
,p_event_id=>wwv_flow_imp.id(16604197546666816)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    VTNOTCRE.valida_moneda(P_COD_MONEDA => :P103_COD_MONEDA,',
'                           P_DECIMALES  => :P103_DECIMALES,',
'                           P_TIP_CAMBIO => :P103_TIP_CAMBIO,',
'                           P_TIP_CAMBIO_COMPRA => :P103_TIP_CAMBIO_COMPRA);',
'EXCEPTION   ',
'    WHEN OTHERS THEN    ',
'        :P103_TIP_CAMBIO := NULL;',
'END;        ',
'      ',
''))
,p_attribute_02=>'P103_COD_MONEDA'
,p_attribute_03=>'P103_TIP_CAMBIO_COMPRA,P103_TIP_CAMBIO,P103_DECIMALES'
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
 p_id=>wwv_flow_imp.id(16604459435666819)
,p_name=>'DA_VALIDA'
,p_event_sequence=>50
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P103_TIP_COMPROBANTE'
,p_condition_element=>'P103_TIP_COMPROBANTE'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(16604533555666820)
,p_event_id=>wwv_flow_imp.id(16604459435666819)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'VTNOTCRE.valida_tip_comprobante(P_COD_EMPRESA     => :P103_COD_EMPRESA_VAR,',
'                                P_TIP_COMPROBANTE => :P103_TIP_COMPROBANTE,',
'                                P_COD_MODULO      => :P103_COD_MODULO_VAR);'))
,p_attribute_02=>'P103_COD_EMPRESA_VAR,P103_TIP_COMPROBANTE,P103_COD_MODULO_VAR'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(16606077106666835)
,p_name=>'DA_TIP_OP'
,p_event_sequence=>70
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P103_TIP_OT'
,p_bind_type=>'bind'
,p_bind_event_type=>'focusout'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(16606105498666836)
,p_event_id=>wwv_flow_imp.id(16606077106666835)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF :P103_TIP_OT=''SNC'' AND :P103_SER_OT IS NULL THEN',
'  :P103_SER_OT:=''A'';',
'END IF;'))
,p_attribute_02=>'P103_TIP_OT,P103_SER_OT'
,p_attribute_03=>'P103_SER_OT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(16606239245666837)
,p_name=>'DA_CONDICION_VENTA'
,p_event_sequence=>80
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P103_COD_CONDICION_VENTA'
,p_bind_type=>'bind'
,p_bind_event_type=>'focusout'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(16606368235666838)
,p_event_id=>wwv_flow_imp.id(16606239245666837)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    VTNOTCRE.valida_condicion (P_CONDICION_VENTA => :P103_COD_CONDICION_VENTA,',
'                               P_COD_MONEDA      => :P103_COD_MONEDA,',
'                               P_COD_EMPRESA     => :P103_COD_EMPRESA_VAR);',
'END;'))
,p_attribute_02=>'P103_COD_CONDICION_VENTA,P103_COD_EMPRESA_VAR'
,p_attribute_03=>'P103_COD_CONDICION_VENTA,P103_COD_MONEDA'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(16606851032666843)
,p_name=>'DA_SER_COMP'
,p_event_sequence=>90
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P103_SER_COMPROBANTE'
,p_bind_type=>'bind'
,p_bind_event_type=>'focusout'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(16606902516666844)
,p_event_id=>wwv_flow_imp.id(16606851032666843)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    vtnotcre.valida_ser_comp(P_COD_EMPRESA     => :P103_COD_EMPRESA_VAR,',
'                             P_TIP_COMPROBANTE => :P103_TIP_COMPROBANTE,',
'                             P_COD_SUCURSAL    => :P103_COD_SUCURSAL,',
'                             P_SER_COMPROBANTE => :P103_SER_COMPROBANTE,',
'                             P_FEC_COMPROBANTE => :P103_FEC_COMPROBANTE);',
'',
'    vtnotcre.valida_ser_comp_calcula_iva(P_COD_EMPRESA     => :P103_COD_EMPRESA_VAR,',
'                                         P_TIP_COMPROBANTE => :P103_TIP_COMPROBANTE,',
'                                         P_CALCULA_IVA     => :P103_CALCULA_IVA,',
'                                         P_SER_COMPROBANTE => :P103_SER_COMPROBANTE);',
'                                         ',
'    :P103_SER_COMPROBANTE_VAR := :P103_SER_COMPROBANTE;',
'',
'    vtnotcre.valida_ser_comp_talonarios(P_COD_EMPRESA     => :P103_COD_EMPRESA_VAR,',
'                                        P_TIP_COMPROBANTE => :P103_TIP_COMPROBANTE,',
'                                        P_COD_SUCURSAL    => :P103_COD_SUCURSAL,',
'                                        P_AUTO_IMPRESO    => :P103_AUTO_IMPRESO,',
'                                        P_SER_COMPROBANTE => :P103_SER_COMPROBANTE,',
'                                        P_FEC_COMPROBANTE => :P103_FEC_COMPROBANTE);',
'    /*vtnotcre.valida_ser_comp_nro_comp(P_COD_EMPRESA     => :P103_COD_EMPRESA_VAR,',
'                                      P_TIP_COMPROBANTE => :P103_TIP_COMPROBANTE,',
'                                      P_NRO_COMPROBANTE => :P103_NRO_COMPROBANTE,',
'                                      P_SER_COMPROBANTE => :P103_SER_COMPROBANTE);   */                                     ',
'END;                                      '))
,p_attribute_02=>'P103_FEC_COMPROBANTE,P103_COD_SUCURSAL,P103_SER_COMPROBANTE,P103_COD_EMPRESA_VAR,P103_TIP_COMPROBANTE'
,p_attribute_03=>'P103_NRO_COMPROBANTE,P103_AUTO_IMPRESO,P103_CALCULA_IVA,P103_SER_COMPROBANTE_VAR'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(16996952950874304)
,p_name=>'DA_CARGA_DATOS_FAC'
,p_event_sequence=>100
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P103_NRO_COMPROBANTE_REF'
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.item(''P103_TIP_COMPROBANTE_REF'').getValue() != '''' ',
'&& apex.item(''P103_SER_COMPROBANTE_REF'').getValue() != '''' ',
'&& apex.item(''P103_NRO_COMPROBANTE_REF'').getValue() != '''' '))
,p_bind_type=>'bind'
,p_bind_event_type=>'focusout'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(16997730720874312)
,p_event_id=>wwv_flow_imp.id(16996952950874304)
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
 p_id=>wwv_flow_imp.id(180065032656113203)
,p_event_id=>wwv_flow_imp.id(16996952950874304)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var spinner = apex.util.showSpinner();',
''))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(16997017545874305)
,p_event_id=>wwv_flow_imp.id(16996952950874304)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'vtnotcre.carga_detalle (P_CONFORMIDAD => ''S'',',
'                        P_COD_EMPRESA => :P103_COD_EMPRESA_VAR,',
'                        P_TIP_COMPROBANTE_REF => :P103_TIP_COMPROBANTE_REF,',
'                        P_SER_COMPROBANTE_REF => :P103_SER_COMPROBANTE_REF,',
'                        P_NRO_COMPROBANTE_REF => :P103_NRO_COMPROBANTE_REF,',
'                        P_DECIMALES => TO_NUMBER(:P103_DECIMALES),',
'                        P_TIP_CONTADO => :P103_TIP_CONTADO_VAR,',
'                        P_TIP_CREDITO => :P103_TIP_CREDITO_VAR,',
'                        P_TIP_CVENTA => :P103_TIP_CVENTA_VAR,',
'                        P_TIP_COMPROBANTE => :P103_TIP_COMPROBANTE,',
'                        P_COD_ARTICULO => :P103_COD_ARTICULO, --PARAMETER.P_COD_ARTICULO',
'                        P_SER_VALE => :P103_SER_VALE, --PARAMETER.P_SER_VALE',
'                        P_NRO_VALE => :P103_NRO_VALE, --PARAMETER.P_NRO_VALE',
'                        P_NRO_OT => :P103_NRO_OT,',
'                        P_SER_OT => :P103_SER_OT,  --OUT',
'                        P_TIP_OT => :P103_TIP_OT,  --OUT',
'                        P_COD_CLIENTE => :P103_COD_CLIENTE, --OUT',
'                        P_TEL_CLIENTE => :P103_TEL_CLIENTE, --OUT',
'                        P_RUC => :P103_RUC, --OUT',
'                        P_COD_VENDEDOR => :P103_COD_VENDEDOR, --OUT',
'                        P_COD_CONDICION_VENTA => :P103_COD_CONDICION_VENTA, --OUT',
'                        P_COD_CONDICION_VENTA_FAC => :P103_CONDICION_VENTA_FAC, --OUT',
'                        P_COD_MONEDA => :P103_COD_MONEDA, --OUT',
'                        P_COD_LISTA_PRECIO => :P103_COD_LISTA_PRECIO, --OUT',
'                        P_CAMBIO_MONEDA_PRECIO => :P103_CAMBIO_MONEDA_PRECIO, --OUT',
'                        P_RECARGO_CABECERA => :P103_RECARGO, --OUT',
'                        P_COD_SECTOR => :P103_COD_SECTOR, --OUT',
'                        P_CARGA_ITEMS => :P103_CARGA_ITEMS, --OUT',
'                        P_CALCULA_IVA => :P103_CALCULA_IVA, --OUT',
'                        P_MULT => :P103_MULT, --CABECERA --OUT',
'                        P_DIV => :P103_DIV, --OUT',
'                        P_RECARGO_VAR => :P103_RECARGO_VAR,',
'                        P_IVA_PARCIAL => :P103_IVA_PARCIAL, --OUT',
'                        P_SUBTOTAL_PARCIAL => :P103_SUBTOTAL_PARCIAL, --OUT',
'                        P_GRAVADAS_PARCIAL => :P103_GRAVADAS_PARCIAL, --OUT',
'                        P_EXCENTAS_PARCIAL => :P103_EXENTAS_PARCIAL, --OUT',
'                        P_PORCENTAJE_DESCUENTO => :P103_PORCENTAJE_DESCUENTO, --OUT',
'                        P_DESCUENTO => :P103_DESCUENTO, ',
'                        P_TOTAL_IVA => :P103_TOTAL_IVA, --OUT',
'                        P_AJUSTE_IVA => :P103_AJUSTE_IVA, --OUT',
'                        P_SUBTOTAL => :P103_SUBTOTAL, --OUT',
'                        P_GRAVADAS => :P103_GRAVADAS, --OUT',
'                        P_EXENTAS => :P103_EXENTAS, --OUT',
'                        P_RECARGO_PORC => :P103_RECARGO_PORC, --OUT',
'                        P_TOTAL => :P103_TOTAL,',
'                        P_DESCUENTO_DETALLE => :P103_DESCUENTO_DET,--OUT',
'                        P_RECARGO_DETALLE => :P103_RECARGO_DET,',
'                        P_IND_AFECTA_GUARDA=> :P103_IND_AFECTA_GUARDA);  --OUT'))
,p_attribute_02=>'P013_CONFORMIDAD,P103_COD_EMPRESA_VAR,P103_TIP_COMPROBANTE_REF,P103_DESCUENTO,P103_RECARGO_VAR,P103_MULT,P103_DIV,P103_SER_COMPROBANTE_REF,P103_NRO_COMPROBANTE_REF,P103_DECIMALES,P103_TIP_CONTADO_VAR,P103_TIP_CREDITO_VAR,P103_TIP_CVENTA_VAR,P103_TIP_'
||'COMPROBANTE,P103_COD_ARTICULO,P103_SER_VALE,P103_NRO_VALE,P103_TIP_OT,P103_SER_OT,P103_NRO_OT'
,p_attribute_03=>'P103_COD_CLIENTE,P103_TEL_CLIENTE,P103_RUC,P_COD_VENDEDOR,P103_COD_CONDICION_VENTA,P103_CONDICION_VENTA_FAC,P103_COD_MONEDA,P103_COD_LISTA_PRECIO,P103_CAMBIO_MONEDA_PRECIO,P103_RECARGO,P103_COD_SECTOR,P103_CARGA_ITEMS,P103_CALCULA_IVA,P103_MULT,P103_'
||'DIV,P103_IVA_PARCIAL,P103_SUBTOTAL_PARCIAL,P103_GRAVADAS_PARCIAL,P103_EXENTAS_PARCIAL,P103_PORCENTAJE_DESCUENTO,P103_RECARGO_PORC,P103_TOTAL_IVA,P103_SUBTOTAL,P103_GRAVADAS,P103_EXENTAS,P103_RECARGO_DET,P103_DESCUENTO_DET,P103_TOTAL,P103_COD_VENDEDOR'
||',P103_IND_AFECTA_GUARDA'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(180065160680113204)
,p_event_id=>wwv_flow_imp.id(16996952950874304)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$("#apex_wait_overlay").remove();',
'$(".u-Processing").remove();'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(17001168408874346)
,p_event_id=>wwv_flow_imp.id(16996952950874304)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(16603320138666808)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(180065271080113205)
,p_name=>'DA_CARGA_DATOS_SNC'
,p_event_sequence=>110
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P103_NRO_OT'
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.item(''P103_TIP_OT'').getValue() != '''' ',
'&& apex.item(''P103_SER_OT'').getValue() != '''' ',
'&& apex.item(''P103_NRO_OT'').getValue() != '''''))
,p_bind_type=>'bind'
,p_bind_event_type=>'focusout'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(180065351091113206)
,p_event_id=>wwv_flow_imp.id(180065271080113205)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'Debe completar todos los datos de la Solicitud No Conforme.'
,p_attribute_02=>'Error'
,p_attribute_03=>'warning'
,p_attribute_04=>'fa-warning'
,p_attribute_06=>'Aceptar'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(180065440207113207)
,p_event_id=>wwv_flow_imp.id(180065271080113205)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var spinner = apex.util.showSpinner();',
''))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(180065558566113208)
,p_event_id=>wwv_flow_imp.id(180065271080113205)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'vtnotcre.carga_detalle (P_CONFORMIDAD => ''S'',',
'                        P_COD_EMPRESA => :P103_COD_EMPRESA_VAR,',
'                        P_TIP_COMPROBANTE_REF => :P103_TIP_COMPROBANTE_REF,',
'                        P_SER_COMPROBANTE_REF => :P103_SER_COMPROBANTE_REF,',
'                        P_NRO_COMPROBANTE_REF => :P103_NRO_COMPROBANTE_REF,',
'                        P_DECIMALES => TO_NUMBER(:P103_DECIMALES),',
'                        P_TIP_CONTADO => :P103_TIP_CONTADO_VAR,',
'                        P_TIP_CREDITO => :P103_TIP_CREDITO_VAR,',
'                        P_TIP_CVENTA => :P103_TIP_CVENTA_VAR,',
'                        P_TIP_COMPROBANTE => :P103_TIP_COMPROBANTE,',
'                        P_COD_ARTICULO => :P103_COD_ARTICULO, --PARAMETER.P_COD_ARTICULO',
'                        P_SER_VALE => :P103_SER_VALE, --PARAMETER.P_SER_VALE',
'                        P_NRO_VALE => :P103_NRO_VALE, --PARAMETER.P_NRO_VALE',
'                        P_NRO_OT => :P103_NRO_OT,',
'                        P_SER_OT => :P103_SER_OT,  --OUT',
'                        P_TIP_OT => :P103_TIP_OT,  --OUT',
'                        P_COD_CLIENTE => :P103_COD_CLIENTE, --OUT',
'                        P_TEL_CLIENTE => :P103_TEL_CLIENTE, --OUT',
'                        P_RUC => :P103_RUC, --OUT',
'                        P_COD_VENDEDOR => :P_COD_VENDEDOR, --OUT',
'                        P_COD_CONDICION_VENTA => :P103_COD_CONDICION_VENTA, --OUT',
'                        P_COD_CONDICION_VENTA_FAC => :P103_CONDICION_VENTA_FAC, --OUT',
'                        P_COD_MONEDA => :P103_COD_MONEDA, --OUT',
'                        P_COD_LISTA_PRECIO => :P103_COD_LISTA_PRECIO, --OUT',
'                        P_CAMBIO_MONEDA_PRECIO => :P103_CAMBIO_MONEDA_PRECIO, --OUT',
'                        P_RECARGO_CABECERA => :P103_RECARGO, --OUT',
'                        P_COD_SECTOR => :P103_COD_SECTOR, --OUT',
'                        P_CARGA_ITEMS => :P103_CARGA_ITEMS, --OUT',
'                        P_CALCULA_IVA => :P103_CALCULA_IVA, --OUT',
'                        P_MULT => :P103_MULT, --CABECERA --OUT',
'                        P_DIV => :P103_DIV, --OUT',
'                        P_RECARGO_VAR => :P103_RECARGO_VAR,',
'                        P_IVA_PARCIAL => :P103_IVA_PARCIAL, --OUT',
'                        P_SUBTOTAL_PARCIAL => :P103_SUBTOTAL_PARCIAL, --OUT',
'                        P_GRAVADAS_PARCIAL => :P103_GRAVADAS_PARCIAL, --OUT',
'                        P_EXCENTAS_PARCIAL => :P103_EXENTAS_PARCIAL, --OUT',
'                        P_PORCENTAJE_DESCUENTO => :P103_PORCENTAJE_DESCUENTO, --OUT',
'                        P_DESCUENTO => :P103_DESCUENTO, ',
'                        P_TOTAL_IVA => :P103_TOTAL_IVA, --OUT',
'                        P_AJUSTE_IVA => :P103_AJUSTE_IVA, --OUT',
'                        P_SUBTOTAL => :P103_SUBTOTAL, --OUT',
'                        P_GRAVADAS => :P103_GRAVADAS, --OUT',
'                        P_EXENTAS => :P103_EXENTAS, --OUT',
'                        P_RECARGO_PORC => :P103_RECARGO_PORC, --OUT',
'                        P_TOTAL => :P103_TOTAL,',
'                        P_DESCUENTO_DETALLE => :P103_DESCUENTO_DET,--OUT',
'                        P_RECARGO_DETALLE => :P103_RECARGO_DET,',
'                         P_IND_AFECTA_GUARDA=> :P103_IND_AFECTA_GUARDA);  --OUT'))
,p_attribute_02=>'P013_CONFORMIDAD,P103_COD_EMPRESA_VAR,P103_TIP_COMPROBANTE_REF,P103_DESCUENTO,P103_RECARGO_VAR,P103_MULT,P103_DIV,P103_SER_COMPROBANTE_REF,P103_NRO_COMPROBANTE_REF,P103_DECIMALES,P103_TIP_CONTADO_VAR,P103_TIP_CREDITO_VAR,P103_TIP_CVENTA_VAR,P103_TIP_'
||'COMPROBANTE,P103_COD_ARTICULO,P103_SER_VALE,P103_NRO_VALE,P103_TIP_OT,P103_SER_OT,P103_NRO_OT'
,p_attribute_03=>'P103_COD_CLIENTE,P103_TEL_CLIENTE,P103_RUC,P_COD_VENDEDOR,P103_COD_CONDICION_VENTA,P103_CONDICION_VENTA_FAC,P103_COD_MONEDA,P103_COD_LISTA_PRECIO,P103_CAMBIO_MONEDA_PRECIO,P103_RECARGO,P103_COD_SECTOR,P103_CARGA_ITEMS,P103_CALCULA_IVA,P103_MULT,P103_'
||'DIV,P103_IVA_PARCIAL,P103_SUBTOTAL_PARCIAL,P103_GRAVADAS_PARCIAL,P103_EXENTAS_PARCIAL,P103_PORCENTAJE_DESCUENTO,P103_RECARGO_PORC,P103_TOTAL,,P103_RECARGO_DET,P103_DESCUENTO_DET,P103_TOTAL'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(180065612698113209)
,p_event_id=>wwv_flow_imp.id(180065271080113205)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$("#apex_wait_overlay").remove();',
'$(".u-Processing").remove();'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(180065726174113210)
,p_event_id=>wwv_flow_imp.id(180065271080113205)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(16603320138666808)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(17136693199007708)
,p_name=>'DA_DESCUENTO'
,p_event_sequence=>120
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P103_DESCUENTO'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(17136702205007709)
,p_event_id=>wwv_flow_imp.id(17136693199007708)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF nvl( TO_NUMBER(:P103_DESCUENTO),0) > ( nvl(TO_NUMBER(:P103_SUBTOTAL_PARCIAL),0) + nvl(TO_NUMBER(:P103_IVA_PARCIAL),0) ) THEN',
'   RAISE_APPLICATION_ERROR(-20000, ''Descuento no puede ser mayor que el total de la factura.'' );',
'END IF;',
'',
'',
'',
''))
,p_attribute_02=>'P103_DESCUENTO,P103_SUBTOTAL_PARCIAL,P103_IVA_PARCIAL'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(17136882001007710)
,p_name=>'DA_GUARDAR'
,p_event_sequence=>130
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(17136521258007707)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(17136949490007711)
,p_event_id=>wwv_flow_imp.id(17136882001007710)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'--PRE-INSERT',
'--:P103_ESTADO:= ''P'' ;',
':P103_IMPRIMIR := ''S'';',
'IF :P103_NRO_COMPROBANTE IS NULL THEN',
'    vtnotcre.valida_ser_comp_nro_comp(P_COD_EMPRESA     => :P103_COD_EMPRESA_VAR,',
'                                      P_TIP_COMPROBANTE => :P103_TIP_COMPROBANTE,',
'                                      P_NRO_COMPROBANTE => :P103_NRO_COMPROBANTE,',
'                                      P_SER_COMPROBANTE => :P103_SER_COMPROBANTE);  ',
'END IF;',
'',
':P103_HORA_ALTA := to_char(sysdate, ''HH24:MI:SS'');',
'',
'VTNOTCRE.VALIDA_NUMERACION_AUTOIMPRESO(P_COD_EMPRESA     => :P103_COD_EMPRESA_VAR,',
'                                       P_TIP_COMPROBANTE => :P103_TIP_COMPROBANTE,',
'                                       P_COD_SUCURSAL    => :P103_COD_SUCURSAL,',
'                                       P_AUTO_IMPRESO    => :P103_AUTO_IMPRESO,',
'                                       P_FEC_COMPROBANTE => :P103_FEC_COMPROBANTE,',
'                                       P_NRO_COMPROBANTE => :P103_NRO_COMPROBANTE,',
'                                       P_SER_COMPROBANTE => :P103_SER_COMPROBANTE);  ',
'',
'VTNOTCRE.valida_ser_comp1(P_COD_EMPRESA     => :P103_COD_EMPRESA_VAR,',
'                          P_TIP_COMPROBANTE => :P103_TIP_COMPROBANTE,',
'                          P_COD_SUCURSAL    => :P103_COD_SUCURSAL,',
'                          P_SER_COMPROBANTE => :P103_SER_COMPROBANTE);  ',
'',
'CREA_PEDIDO_DEPOSITO(:P103_TIP_COMPROBANTE,:P103_SER_COMPROBANTE,:P103_NRO_COMPROBANTE);   ',
'                         ',
'                                '))
,p_attribute_02=>'P103_COD_SUCURSAL,P103_FEC_COMPROBANTE,P103_COD_EMPRESA_VAR,P103_TIP_COMPROBANTE,P103_SER_COMPROBANTE,P103_NRO_COMPROBANTE'
,p_attribute_03=>'P103_AUTO_IMPRESO,P103_NRO_COMPROBANTE,P103_HORA_ALTA,P103_ESTADO,P103_IMPRIMIR'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(118953940795105325)
,p_event_id=>wwv_flow_imp.id(17136882001007710)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(118953588371105321)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(208558010027354619)
,p_event_id=>wwv_flow_imp.id(17136882001007710)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(17136521258007707)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(17137118169007713)
,p_event_id=>wwv_flow_imp.id(17136882001007710)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_01=>'GUARDAR'
,p_attribute_02=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(17137221254007714)
,p_name=>'DA_ELIMINAR'
,p_event_sequence=>140
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(16607267846666847)
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>'apex.item(''P103_TIP_COMPROBANTE'').getValue() != '''' && apex.item(''P103_SER_COMPROBANTE'').getValue() != '''' && apex.item(''P103_NRO_COMPROBANTE'').getValue() != '''''
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(17137456518007716)
,p_event_id=>wwv_flow_imp.id(17137221254007714)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'Debe completar los datos del comprobante a eliminar. '
,p_attribute_02=>'Error'
,p_attribute_03=>'warning'
,p_attribute_04=>'fa-warning'
,p_attribute_06=>'Aceptar'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(23502084871061444)
,p_event_id=>wwv_flow_imp.id(17137221254007714)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>unistr('\00BFDesea eliminar el comprobante?')
,p_attribute_06=>'Aceptar'
,p_attribute_07=>'Cancelar'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(17137369279007715)
,p_event_id=>wwv_flow_imp.id(17137221254007714)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_01=>'ELIMINAR'
,p_attribute_02=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(17137575828007717)
,p_event_id=>wwv_flow_imp.id(17137221254007714)
,p_event_result=>'FALSE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_FOCUS'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P103_SER_COMPROBANTE'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(17138559570007727)
,p_name=>'DA_HIDE'
,p_event_sequence=>150
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(17462033037813309)
,p_event_id=>wwv_flow_imp.id(17138559570007727)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_FOCUS'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P103_COD_SUCURSAL'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(18371962684390515)
,p_event_id=>wwv_flow_imp.id(17138559570007727)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P103_NRO_PROMO'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(18374573590390541)
,p_event_id=>wwv_flow_imp.id(17138559570007727)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(18374251101390538)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(20407816675847822)
,p_event_id=>wwv_flow_imp.id(17138559570007727)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(17136521258007707)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(75705803409194327)
,p_event_id=>wwv_flow_imp.id(17138559570007727)
,p_event_result=>'TRUE'
,p_action_sequence=>80
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(16603320138666808)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(17138786679007729)
,p_name=>'DA_IMPRIMIR'
,p_event_sequence=>160
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(17138328996007725)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(20408153340847825)
,p_event_id=>wwv_flow_imp.id(17138786679007729)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'&P103_AUX_MSJ.'
,p_attribute_02=>'Error'
,p_attribute_03=>'warning'
,p_attribute_04=>'fa-warning'
,p_attribute_06=>'Aceptar'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P103_AUX_MSJ'
,p_server_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(17139583289007737)
,p_event_id=>wwv_flow_imp.id(17138786679007729)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    CANTIDAD NUMBER;',
'BEGIN',
'    :P103_IMPRIME_REPORTE := 2;',
'    :P103_AUX_REGION := 2;',
'    :P103_AUX_MSJ := NULL;',
'    CANTIDAD := VTNOTCRE.cuenta_impresiones(P_COD_EMPRESA     => :P103_COD_EMPRESA_VAR,',
'                                            P_TIP_COMPROBANTE => :P103_TIP_COMPROBANTE,',
'                                            P_NRO_COMPROBANTE => :P103_NRO_COMPROBANTE,',
'                                            P_SER_COMPROBANTE => :P103_SER_COMPROBANTE);',
'',
'                                            CANTIDAD:=0;',
'    if nvl(CANTIDAD,0)=0  then ',
'		--PF_IMPRESION_AUTORIZADA',
'        :P103_IMPRIME_REPORTE := 1;',
'		VTNOTCRE.copia(P_COD_EMPRESA     => :P103_COD_EMPRESA_VAR,',
'                       P_TIP_COMPROBANTE => :P103_TIP_COMPROBANTE,',
'                       P_SER_COMPROBANTE => :P103_SER_COMPROBANTE,',
'                       P_NRO_COMPROBANTE => :P103_NRO_COMPROBANTE);',
'				',
'	ELSIF nvl(CANTIDAD,0)>0 AND NVL(:P103_REIMPRIME,''N'')=''S'' THEN',
'        :P103_AUX_REGION := 1;',
'        :P103_COD_USUARIO_IMP   := :P103_COD_USUARIO_VAR;',
'        :P103_FECHA_IMP := sysdate; ',
'    ELSE',
'        :P103_AUX_MSJ := ''No posee permisos para reimprimir el comprobante.'';',
'    END IF;    ',
'END;'))
,p_attribute_02=>'P103_COD_EMPRESA_VAR,P103_TIP_COMPROBANTE,P103_NRO_COMPROBANTE,P103_SER_COMPROBANTE,P103_COD_USUARIO_VAR,P103_REIMPRIME'
,p_attribute_03=>'P103_COD_USUARIO_IMP,P103_FECHA_IMP,P103_IMPRIME_REPORTE,P103_AUX_REGION,P103_AUX_MSJ'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_server_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(920102983166595334)
,p_event_id=>wwv_flow_imp.id(17138786679007729)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select f.valor',
'  INTO :P103_P_NOM_FAC',
'  from parametros_generales f ',
' WHERE F.PARAMETRO = ''NCR_REP_NOMB''||:P_COD_EMPRESA',
'   AND F.COD_MODULO = ''VT'';'))
,p_attribute_03=>'P103_P_NOM_FAC'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(18374857259390544)
,p_event_id=>wwv_flow_imp.id(17138786679007729)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'doDescarga(apex.item(''P_COD_EMPRESA'').getValue(),apex.item(''P103_TIP_COMPROBANTE'').getValue(),apex.item(''P103_SER_COMPROBANTE'').getValue(), apex.item(''P103_NRO_COMPROBANTE'').getValue(), ',
'           apex.item(''P103_COD_CLIENTE'').getValue())'))
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P_COD_EMPRESA'
,p_client_condition_expression=>'1'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(920103524851595340)
,p_event_id=>wwv_flow_imp.id(17138786679007729)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'doDescargabh(apex.item(''P_COD_EMPRESA'').getValue(),apex.item(''P103_TIP_COMPROBANTE'').getValue(),apex.item(''P103_SER_COMPROBANTE'').getValue(), apex.item(''P103_NRO_COMPROBANTE'').getValue(), ',
'           apex.item(''P103_COD_CLIENTE'').getValue())'))
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P_COD_EMPRESA'
,p_client_condition_expression=>'18'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(17139840598007740)
,p_name=>'DA_IMPRIMIR1'
,p_event_sequence=>170
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(17139732153007739)
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>'apex.item(''P103_TIP_COMPROBANTE'').getValue() != '''' && apex.item(''P103_SER_COMPROBANTE'').getValue() != '''' && apex.item(''P103_NRO_COMPROBANTE'').getValue() != '''''
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
 p_id=>wwv_flow_imp.id(17139927780007741)
,p_event_id=>wwv_flow_imp.id(17139840598007740)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    VAUTO_IMPRESO VARCHAR(1);',
'BEGIN',
'    :P103_AUX_MSJ := null;',
'    :P103_IMPRIME_REPORTE := 2;',
'    IF :P103_COD_MOTIVO IS NOT NULL THEN      ',
'        vtnotcre.guarda_reimpresion(P_COD_EMPRESA     => :P103_COD_EMPRESA_VAR,',
'                                    P_TIP_COMPROBANTE => :P103_TIP_COMPROBANTE ,',
'                                    P_SER_COMPROBANTE => :P103_SER_COMPROBANTE,',
'                                    P_NRO_COMPROBANTE => :P103_NRO_COMPROBANTE,',
'                                    P_DESCRIPCION     => :P103_DESCRIPCION,',
'                                    P_FECHA           => :P103_FECHA_IMP,',
'                                    P_COD_USUARIO     => :P103_COD_USUARIO_IMP,',
'                                    P_COD_MOTIVO      => :P103_COD_MOTIVO); ',
'        VTNOTCRE.copia(P_COD_EMPRESA     => :P103_COD_EMPRESA_VAR,',
'                       P_TIP_COMPROBANTE => :P103_TIP_COMPROBANTE,',
'                       P_SER_COMPROBANTE => :P103_SER_COMPROBANTE,',
'                       P_NRO_COMPROBANTE => :P103_NRO_COMPROBANTE);                                ',
'    	:P103_IMPRIME_REPORTE := 1;',
'    ELSE',
unistr('        :P103_AUX_MSJ := ''Debe seleccionar un motivo de reimpresi\00F3n.'';'),
'    END IF;',
'END;                                                   '))
,p_attribute_02=>'P103_IMP_VAR,P103_COD_EMPRESA_VAR,P103_TIP_COMPROBANTE,P103_SER_COMPROBANTE,P103_NRO_COMPROBANTE,P103_DESCRIPCION,P103_FECHA_IMP,P103_COD_USUARIO_IMP,P103_COD_MOTIVO'
,p_attribute_03=>'P103_AUX_MSJ,P103_IMPRIME_REPORTE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(17140425472007746)
,p_event_id=>wwv_flow_imp.id(17139840598007740)
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
 p_id=>wwv_flow_imp.id(17140514599007747)
,p_event_id=>wwv_flow_imp.id(17139840598007740)
,p_event_result=>'FALSE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(17138479258007726)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(20408237509847826)
,p_event_id=>wwv_flow_imp.id(17139840598007740)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'doDescarga(apex.item(''P103_COD_EMPRESA_VAR'').getValue(),apex.item(''P103_TIP_COMPROBANTE'').getValue(),apex.item(''P103_SER_COMPROBANTE'').getValue(), apex.item(''P103_NRO_COMPROBANTE'').getValue(), ',
'           apex.item(''P103_COD_CLIENTE'').getValue())'))
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P103_IMPRIME_REPORTE'
,p_client_condition_expression=>'1'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(17140732762007749)
,p_event_id=>wwv_flow_imp.id(17139840598007740)
,p_event_result=>'FALSE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_FOCUS'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P103_SER_COMPROBANTE'
,p_client_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_client_condition_expression=>'apex.item(''P103_SER_COMPROBANTE'').getValue() == '''' && apex.item(''P103_NRO_COMPROBANTE'').getValue() != '''''
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(17461533031813304)
,p_event_id=>wwv_flow_imp.id(17139840598007740)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_FOCUS'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P103_COD_MOTIVO'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P103_AUX_MSJ'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(17461289487813301)
,p_event_id=>wwv_flow_imp.id(17139840598007740)
,p_event_result=>'FALSE'
,p_action_sequence=>40
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_FOCUS'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P103_SER_COMPROBANTE'
,p_client_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_client_condition_expression=>'apex.item(''P103_SER_COMPROBANTE'').getValue() == '''' && apex.item(''P103_NRO_COMPROBANTE'').getValue() == '''''
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(17461367150813302)
,p_event_id=>wwv_flow_imp.id(17139840598007740)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'&P103_AUX_MSJ.'
,p_attribute_02=>'Error'
,p_attribute_03=>'warning'
,p_attribute_04=>'fa-warning'
,p_attribute_06=>'Aceptar'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P103_AUX_MSJ'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(17140872518007750)
,p_event_id=>wwv_flow_imp.id(17139840598007740)
,p_event_result=>'FALSE'
,p_action_sequence=>50
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_FOCUS'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P103_NRO_COMPROBANTE'
,p_client_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_client_condition_expression=>'apex.item(''P103_SER_COMPROBANTE'').getValue() != '''' && apex.item(''P103_NRO_COMPROBANTE'').getValue() == '''''
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(17140041702007742)
,p_event_id=>wwv_flow_imp.id(17139840598007740)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(17138479258007726)
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P103_AUX_MSJ'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(17140116138007743)
,p_event_id=>wwv_flow_imp.id(17139840598007740)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_FOCUS'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P103_FEC_COMPROBANTE'
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P103_AUX_MSJ'
,p_server_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(17140275783007744)
,p_name=>'DA_COD_MOTIVO'
,p_event_sequence=>180
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P103_COD_MOTIVO'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(17140333563007745)
,p_event_id=>wwv_flow_imp.id(17140275783007744)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_02=>'P103_COD_MOTIVO'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(17461839528813307)
,p_name=>'DA_ABRE_REGION_IMPRIMIR'
,p_event_sequence=>190
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P103_AUX_REGION'
,p_condition_element=>'P103_AUX_REGION'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'1'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(17461981169813308)
,p_event_id=>wwv_flow_imp.id(17461839528813307)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(17138479258007726)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(17462296914813311)
,p_name=>'DA_PEDIDO'
,p_event_sequence=>200
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(16603320138666808)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterrefresh'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(17462365739813312)
,p_event_id=>wwv_flow_imp.id(17462296914813311)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'        SELECT C019 ser_pedido, ',
'               C020 nro_pedido',
'          INTO :P103_SER_PEDIDO, ',
'               :P103_NRO_PEDIDO    ',
'        FROM APEX_COLLECTIONS',
'        WHERE COLLECTION_NAME = ''DET_COM''',
'          AND SEQ_ID = 1; ',
'exception',
'WHEN OTHERS THEN',
'        :P103_SER_PEDIDO:= NULL;',
'        :P103_NRO_PEDIDO:= NULL;',
'END;'))
,p_attribute_03=>'P103_SER_PEDIDO,P103_NRO_PEDIDO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(167618701699624446)
,p_event_id=>wwv_flow_imp.id(17462296914813311)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'  SELECT nvl(SUM(nvl(to_number(c022), 0)), 0) descuento_aux,',
'         nvl(SUM(nvl(to_number(c022), 0)), 0) descuento,',
'         nvl(SUM(nvl(to_number(c021), 0)), 0) recargo_aux,',
'         nvl(SUM(nvl(to_number(c021), 0)), 0) recargo',
'    INTO :p103_aux_descuento_det, :p103_descuento, :p103_aux_recargo_det,',
'         :p103_recargo',
'    FROM apex_collections',
'   WHERE collection_name = ''DET_COM'';',
'EXCEPTION',
'  WHEN OTHERS THEN',
'    :p103_aux_descuento_det := NULL;',
'    :p103_descuento         := NULL;',
'    :p103_aux_recargo_det   := NULL;',
'    :p103_recargo           := NULL;',
'END;',
''))
,p_attribute_03=>'P103_AUX_DESCUENTO_DET,P103_RECARGO,P103_DESCUENTO,P103_AUX_RECARGO_DET'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(17462599867813314)
,p_name=>'DA_BUSCAR'
,p_event_sequence=>210
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(17462497140813313)
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>'apex.item(''P103_SER_COMPROBANTE'').getValue() != '''' && apex.item(''P103_NRO_COMPROBANTE'').getValue() != '''''
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(17462628503813315)
,p_event_id=>wwv_flow_imp.id(17462599867813314)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    SELECT COD_SUCURSAL,FEC_COMPROBANTE,COD_CLIENTE,COD_VENDEDOR,TIP_COMPROBANTE_REF,SER_COMPROBANTE_REF,NRO_COMPROBANTE_REF,COD_CONDICION_VENTA, ',
'           COD_LISTA_PRECIO,DESCUENTO,COD_MONEDA,TIP_CAMBIO,TOT_COMPROBANTE,TOT_GRAVADAS,TOT_EXENTAS,TOT_IVA,NRO_MOV_CAJ,ESTADO,FEC_ESTADO,',
'           COD_USUARIO,CAMBIO_MONEDA_PRECIO,TIP_CAMBIO_COMPRA,COMENTARIO,GRU_COMPROBANTE,COD_SECTOR,TEL_CLIENTE,COLUMNA,RUC,DIR_CLIENTE,',
'           COD_DIRECCION,AJUSTE_IVA,COD_CUSTODIO,COD_CONDICION_VENTA_FAC,IND_EXENTO_AD,HORA_ALTA,RECARGO,TIP_OT,SER_OT,NRO_OT',
'    INTO :P103_COD_SUCURSAL,:P103_FEC_COMPROBANTE,:P103_COD_CLIENTE, :P103_COD_VENDEDOR, :P103_TIP_COMPROBANTE_REF, :P103_SER_COMPROBANTE_REF, :P103_NRO_COMPROBANTE_REF,',
'         :P103_COD_CONDICION_VENTA, :P103_COD_LISTA_PRECIO, :P103_DESCUENTO, :P103_COD_MONEDA, :P103_TIP_CAMBIO, :P103_TOTAL, :P103_GRAVADAS, :P103_EXENTAS, ',
'         :P103_AUX_TOTAL_IVA1, :P103_NRO_MOV_CAJ, :P103_ESTADO, :P103_FEC_ESTADO, :P103_COD_USUARIO,',
'         :P103_CAMBIO_MONEDA_PRECIO, :P103_TIP_CAMBIO_COMPRA, :P103_COMENTARIO, :P103_GRU_COMPROBANTE, :P103_COD_SECTOR, :P103_TEL_CLIENTE,',
'         :P103_COLUMNA, :P103_RUC, :P103_DIR_CLIENTE, :P103_COD_DIRECCION, :P103_AJUSTE_IVA, :P103_COD_CUSTODIO, :P103_CONDICION_VENTA_FAC, ',
'         :P103_IND_EXENTO_AD,:P103_HORA_ALTA,:P103_RECARGO,:P103_TIP_OT, :P103_SER_OT, :P103_NRO_OT',
'    FROM VT_COMPROBANTES_CABECERA',
'    WHERE cod_empresa = :P103_COD_EMPRESA_VAR ',
'    and tip_comprobante = :P103_TIP_COMPROBANTE ',
'    and ser_comprobante = :P103_SER_COMPROBANTE ',
'    and nro_comprobante = :P103_NRO_COMPROBANTE;',
'',
'    :P103_ESTADO_ANT := :P103_ESTADO;',
'',
'    BEGIN',
'        select cl.tipo_impuesto ',
'          into :P103_TIPO_IMPUESTO',
'          from cc_clientes cl, personas pe',
'         where cl.cod_empresa = :P103_COD_EMPRESA_VAR',
'           and cl.cod_cliente = :P103_COD_CLIENTE',
'           and cl.cod_persona = pe.cod_persona;',
'    EXCEPTION',
'        when others then',
'            NULL ;',
'    END;',
'    :P103_SUBTOTAL := nvl( :P103_TOTAL, 0 ) - nvl( :P103_TOTAL_IVA, 0 ) - nvl( :P103_AJUSTE_IVA, 0 ); ',
'    :P103_SUBTOTAL_PARCIAL := :P103_SUBTOTAL ;',
'    :P103_IVA_PARCIAL := :P103_TOTAL_IVA ;',
'    :P103_GRAVADAS_PARCIAL := :P103_GRAVADAS ;',
'    :P103_EXENTAS_PARCIAL := :P103_EXENTAS;',
'    ',
'EXCEPTION',
'    WHEN OTHERS THEN',
unistr('        RAISE_APPLICATION_ERROR(-20000, ''Ocurri\00F3 un error al cargar la cabecera. ''||sqlerrm);'),
'END;            '))
,p_attribute_02=>'P103_COD_EMPRESA_VAR,P103_TIP_COMPROBANTE,P103_SER_COMPROBANTE,P103_NRO_COMPROBANTE'
,p_attribute_03=>'P103_SUBTOTAL_PARCIAL,P103_IVA_PARCIAL,P103_GRAVADAS_PARCIAL,P103_EXENTAS_PARCIAL,P103_TIPO_IMPUESTO,P103_ESTADO_ANT,P103_COD_SUCURSAL,P103_FEC_COMPROBANTE,P103_COD_CLIENTE,P103_COD_VENDEDOR,P103_TIP_COMPROBANTE_REF,P103_SER_COMPROBANTE_REF,P103_NRO_'
||'COMPROBANTE_REF, P103_COD_CONDICION_VENTA,P103_COD_LISTA_PRECIO,P103_DESCUENTO,P103_COD_MONEDA,P103_TIP_CAMBIO,P103_NRO_MOV_CAJ,P103_ESTADO,P103_FEC_ESTADO,P103_COD_USUARIO, P103_CAMBIO_MONEDA_PRECIO,P103_TIP_CAMBIO_COMPRA,P103_COMENTARIO,P103_GRU_CO'
||'MPROBANTE,P103_COD_SECTOR,P103_TEL_CLIENTE, P103_COLUMNA,P103_RUC,P103_DIR_CLIENTE,P103_COD_DIRECCION,P103_COD_CUSTODIO,P103_CONDICION_VENTA_FAC,P103_IND_EXENTO_AD,P103_HORA_ALTA,P103_RECARGO,P103_TIP_OT,P103_SER_OT,P103_NRO_OT,P103_SUBTOTAL,P103_TOT'
||'AL,P103_AUX_TOTAL_IVA1'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(17462811026813317)
,p_event_id=>wwv_flow_imp.id(17462599867813314)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>unistr('Debe completar los datos del comprobante para realizar la b\00FAsqueda.')
,p_attribute_02=>'Error'
,p_attribute_03=>'warning'
,p_attribute_04=>'fa-warning'
,p_attribute_06=>'Aceptar'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(17462943013813318)
,p_event_id=>wwv_flow_imp.id(17462599867813314)
,p_event_result=>'FALSE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_FOCUS'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P103_SER_COMPROBANTE'
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P103_SER_COMPROBANTE'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(17463065697813319)
,p_event_id=>wwv_flow_imp.id(17462599867813314)
,p_event_result=>'FALSE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_FOCUS'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P103_NRO_COMPROBANTE'
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P103_NRO_COMPROBANTE'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(17463173235813320)
,p_event_id=>wwv_flow_imp.id(17462599867813314)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    VDESC_ARTICULO VARCHAR2(100);',
'    VCOD_GRUPO_ART VARCHAR2(5); ',
'    VCOD_MONEDA_BASE VARCHAR2(5);',
'BEGIN',
'APEX_COLLECTION.CREATE_OR_TRUNCATE_COLLECTION(P_COLLECTION_NAME => ''DET_COM'');',
'    FOR CC IN (SELECT COD_ARTICULO,CANTIDAD,PRECIO_UNITARIO,PRECIO_LISTA,DESCUENTO,MONTO_TOTAL,TOTAL_IVA,COSTO_PROMEDIO,COSTO_PROMEDIO_REF, ',
'                      CANTIDAD_UB,PORC_DESCUENTO,COD_UNIDAD_MEDIDA,NRO_LOTE,PORC_RECARGO,RECARGO,PORC_IVA,IND_RENTA,COD_IVA,PORC_IVA_AD,NRO_PROMO,SER_PEDIDO,NRO_PEDIDO,',
'                      MONTO_EXENTA,MONTO_GRAVADA_5,MONTO_GRAVADA_10',
'                 FROM VT_COMPROBANTES_DETALLE',
'                WHERE cod_empresa = :P103_COD_EMPRESA_VAR ',
'                  and tip_comprobante = :P103_TIP_COMPROBANTE ',
'                  and ser_comprobante = :P103_SER_COMPROBANTE ',
'                  and nro_comprobante = :P103_NRO_COMPROBANTE) ',
'    LOOP',
'        Begin',
'            select descripcion, cod_grupo_art, cod_moneda_base',
'              into VDESC_ARTICULO, VCOD_GRUPO_ART, VCOD_MONEDA_BASE',
'              from st_articulos',
'             where cod_empresa = :P103_COD_EMPRESA_VAR',
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
'                                               P_C025 => VCOD_GRUPO_ART,',
'                                               P_C026 => VCOD_MONEDA_BASE,',
'                                               P_C027 => CC.MONTO_TOTAL,',
'                                               P_C028 => CC.MONTO_EXENTA,',
'                                               P_C029 => CC.MONTO_GRAVADA_10, ',
'                                               P_C030 => CC.MONTO_GRAVADA_5,',
'                                               P_C031 => CC.CANTIDAD_UB,',
'                                               P_C032 => CC.PORC_IVA_AD,',
'                                               P_C033 => CC.COD_UNIDAD_MEDIDA); ',
'        :P103_RECARGO_DET := CC.RECARGO;',
'        :P103_DESCUENTO_DET := CC.DESCUENTO;                                        ',
'    END LOOP;                                             ',
'EXCEPTION',
'    WHEN OTHERS THEN',
unistr('        RAISE_APPLICATION_ERROR(-20000, ''Ocurri\00F3 un error al cargar el detalle. ''||sqlerrm);'),
'END; '))
,p_attribute_02=>'P103_COD_EMPRESA_VAR,P103_TIP_COMPROBANTE,P103_SER_COMPROBANTE,P103_NRO_COMPROBANTE'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(17463309909813322)
,p_event_id=>wwv_flow_imp.id(17462599867813314)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P103_ESTADO'
,p_client_condition_type=>'NOT_EQUALS'
,p_client_condition_element=>'P103_PERMITE_ANULAR'
,p_client_condition_expression=>'S'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(17463212239813321)
,p_event_id=>wwv_flow_imp.id(17462599867813314)
,p_event_result=>'TRUE'
,p_action_sequence=>130
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(16603320138666808)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(18374697076390542)
,p_event_id=>wwv_flow_imp.id(17462599867813314)
,p_event_result=>'TRUE'
,p_action_sequence=>140
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(18374251101390538)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(18375173988390547)
,p_event_id=>wwv_flow_imp.id(17462599867813314)
,p_event_result=>'TRUE'
,p_action_sequence=>150
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(17138328996007725)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(20408038917847824)
,p_event_id=>wwv_flow_imp.id(17462599867813314)
,p_event_result=>'TRUE'
,p_action_sequence=>160
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(17136521258007707)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(17560969805802329)
,p_name=>'DA_LISTA_PRECIO'
,p_event_sequence=>220
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P103_COD_LISTA_PRECIO'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(17561091443802330)
,p_event_id=>wwv_flow_imp.id(17560969805802329)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'null;'
,p_attribute_02=>'P103_COD_LISTA_PRECIO'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(17561807808802338)
,p_name=>'DA_ABRE_DETALLE'
,p_event_sequence=>230
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P103_AUX_ABRE_DETALLE'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(18016407475449002)
,p_event_id=>wwv_flow_imp.id(17561807808802338)
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
'      INTO :P103_AUX_IMPORTE_ANT,',
'           :P103_AUX_IVA_ANT,',
'           :P103_COD_ARTICULO_DETALLE, ',
'           :P103_LOTE, ',
'           :P103_CANTIDAD, ',
'           :P103_AUX_CANT_VENDIDA,',
'           :P103_PRECIO_UNITARIO, ',
'           :P103_AUX_PORC_IVA,',
'           :P103_AUX_IND_RENTA,',
'           :P103_PORC_DESCUENTO_DETALLE, ',
'           :P103_PORC_RECARGO_DETALLE,',
'           :P103_AUX_NRO_PROMO,',
'           :P103_AUX_TOTAL_IVA,',
'           :P103_AUX_RECARGO,       ',
'           :P103_AUX_DESCUENTO,',
'           :P103_AUX_PORC_DESCUENTO_ANT,',
'           :P103_AUX_MONTO_TOTAL,',
'           :P103_AUX_MONTO_EXENTA,',
'           :P103_AUX_MONTO_GRAVADA_10,',
'           :P103_AUX_MONTO_GRAVADA_5,',
'           :P103_AUX_CANTIDAD_UB,',
'           :P103_AUX_PORC_IVA_AD,',
'           :P103_AUX_COD_ARTICULO_REL_BON,',
'           :P103_AUX_DESCUENTO_MAXIMO,',
'           :P103_AUX_PORC_RECARGO_ANT',
'      FROM APEX_COLLECTIONS',
'     WHERE COLLECTION_NAME = ''DET_COM''',
'       AND SEQ_ID = :P103_AUX_ABRE_DETALLE; ',
'    :P103_RECARGO_DET := :P103_AUX_RECARGO;',
'    :P103_DESCUENTO_DET := :P103_AUX_DESCUENTO; ',
'    :P103_AUX_CANTIDAD_ANT := :P103_CANTIDAD;',
'EXCEPTION',
'    WHEN OTHERS THEN',
unistr('        RAISE_APPLICATION_ERROR(-20000, ''Ha ocurrido un error al recuperar los datos del art\00EDculo'');'),
'END;        ',
'                           ',
'                         ',
'                 '))
,p_attribute_02=>'P103_AUX_ABRE_DETALLE'
,p_attribute_03=>'P103_AUX_CANTIDAD_ANT,P103_AUX_NRO_PROMO,P103_AUX_IMPORTE_ANT,P103_AUX_IVA_ANT,P103_COD_ARTICULO_DETALLE,P103_LOTE,P103_CANTIDAD,P103_AUX_CANT_VENDIDA,P103_PRECIO_UNITARIO,P103_AUX_PORC_IVA, P103_AUX_IND_RENTA,P103_PORC_DESCUENTO_DETALLE, P103_PORC_R'
||'ECARGO_DETALLE,P103_AUX_TOTAL_IVA,P103_AUX_RECARGO,P103_AUX_DESCUENTO,P103_AUX_PORC_DESCUENTO_ANT,P103_AUX_MONTO_TOTAL,P103_AUX_MONTO_EXENTA, P103_AUX_MONTO_GRAVADA_10,P103_AUX_MONTO_GRAVADA_5,P103_AUX_CANTIDAD_UB,P103_AUX_PORC_IVA_AD,P103_AUX_COD_AR'
||'TICULO_REL_BON,P103_AUX_DESCUENTO_MAXIMO,P103_AUX_PORC_RECARGO_ANT,,P103_RECARGO_DET,P103_DESCUENTO_DET'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(17561985258802339)
,p_event_id=>wwv_flow_imp.id(17561807808802338)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(17561537354802335)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(17562183586802341)
,p_name=>'DA_GUARDAR_DETALLE'
,p_event_sequence=>240
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(17562052510802340)
,p_condition_element=>'P103_CANTIDAD'
,p_triggering_condition_type=>'GREATER_THAN'
,p_triggering_expression=>'0'
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(18373316232390529)
,p_event_id=>wwv_flow_imp.id(17562183586802341)
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
 p_id=>wwv_flow_imp.id(17562251523802342)
,p_event_id=>wwv_flow_imp.id(17562183586802341)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(17561537354802335)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(18371112423390507)
,p_event_id=>wwv_flow_imp.id(17562183586802341)
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
'                  AND SEQ_ID = :P103_AUX_ABRE_DETALLE)',
'    LOOP',
'        APEX_COLLECTION.UPDATE_MEMBER(P_COLLECTION_NAME => ''DET_COM'',',
'                                       P_SEQ  => :P103_AUX_ABRE_DETALLE,',
'                                       P_C001 => :P103_AUX_IMPORTE_ANT,   --:b_detalle.importe_ant ',
'                                       P_C002 => :P103_AUX_IVA_ANT,   --:b_detalle.iva_ant',
'                                       P_C003 => :P103_COD_ARTICULO_DETALLE, -- :b_detalle.cod_articulo',
'                                       P_C004 => CC.C004, -- :b_detalle.costo_promedio',
'                                       P_C005 => CC.C005, -- :b_detalle.costo_promedio_ref',
'                                       P_C006 => :P103_LOTE, --:b_detalle.nro_lote',
'                                       P_C007 => :P103_CANTIDAD, --b_detalle.cantidad  ',
'                                       P_C008 => :P103_AUX_CANT_VENDIDA, -- b_detalle.cantidad_vendida',
'                                       P_C010 => :P103_PRECIO_UNITARIO, --:b_detalle.precio_unitario',
'                                       P_C011 => :P103_AUX_PORC_IVA, --:b_detalle.porc_iva',
'                                       P_C012 => :P103_AUX_IND_RENTA, --:b_detalle.ind_renta ',
'                                       P_C013 => CC.C013, -- :b_detalle.precio_lista',
'                                       P_C014 => :P103_PORC_DESCUENTO_DETALLE, --:b_detalle.porc_descuento',
'                                       P_C015 => :P103_PORC_RECARGO_DETALLE, --:b_detalle.porc_recargo',
'                                       P_C016 => CC.C016, --:b_detalle.cod_iva ',
'                                       P_C017 => :P103_AUX_NRO_PROMO, -- :b_detalle.nro_promo',
'                                       P_C018 => :P103_AUX_TOTAL_IVA, -- :b_detalle.total_iva ',
'                                       P_C019 => CC.C019, -- :b_detalle.ser_pedido ',
'                                       P_C020 => CC.C020, --  :b_detalle.nro_pedido',
'                                       P_C021 => :P103_AUX_RECARGO,',
'                                       P_C022 => :P103_AUX_DESCUENTO,',
'                                       P_C023 => :P103_AUX_PORC_DESCUENTO_ANT,',
'                                       P_C024 => CC.C024, ',
'                                       P_C025 => CC.C025, ',
'                                       P_C026 => CC.C026,',
'                                       P_C027 => :P103_AUX_MONTO_TOTAL,  ',
'                                       P_C028 => :P103_AUX_MONTO_EXENTA,',
'                                       P_C029 => :P103_AUX_MONTO_GRAVADA_10,',
'                                       P_C030 => :P103_AUX_MONTO_GRAVADA_5,',
'                                       P_C031 => :P103_AUX_CANTIDAD_UB,',
'                                       P_C032 => :P103_AUX_PORC_IVA_AD,',
'                                       P_C033 => CC.C033,',
'                                       P_C034 => :P103_AUX_COD_ARTICULO_REL_BON, --:b_detalle.cod_articulo_rel_bon   ',
'                                       P_C035 => :P103_AUX_DESCUENTO_MAXIMO, --:b_detalle.descuento_maximo                 ',
'                                       P_C036 => :P103_AUX_PORC_RECARGO_ANT);',
'    END LOOP;',
'    :P103_RECARGO_DET := :P103_AUX_RECARGO;',
'    :P103_DESCUENTO_DET := :P103_AUX_DESCUENTO; ',
'EXCEPTION',
'    WHEN OTHERS THEN    ',
'        RAISE_APPLICATION_ERROR(-20000, ''Ha ocurrido un error al guardar el detalle.'');',
'END;                                           ',
''))
,p_attribute_02=>'P103_AUX_ABRE_DETALLE,P103_AUX_ABRE_DETALLE,P103_AUX_IMPORTE_ANT,P103_AUX_IVA_ANT,P103_COD_ARTICULO_DETALLE,P103_LOTE,P103_CANTIDAD,P103_AUX_CANT_VENDIDA,P103_PRECIO_UNITARIO, P103_AUX_PORC_DESCUENTO_ANT,P103_AUX_MONTO_TOTAL,P103_AUX_MONTO_EXENTA,P10'
||'3_AUX_MONTO_GRAVADA_10,P103_AUX_MONTO_GRAVADA_5,P103_AUX_CANTIDAD_UB, P103_AUX_PORC_IVA_AD,P103_AUX_COD_ARTICULO_REL_BON,P103_AUX_DESCUENTO_MAXIMO,P103_AUX_PORC_RECARGO_ANT'
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
 p_id=>wwv_flow_imp.id(18373640238390532)
,p_event_id=>wwv_flow_imp.id(17562183586802341)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(16603320138666808)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(18373913328390535)
,p_event_id=>wwv_flow_imp.id(17562183586802341)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.message.showPageSuccess(''Los cambios se guardaron correctamente.'');'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(17563033656802350)
,p_name=>'DA_CERRAR_DETALLE'
,p_event_sequence=>250
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(17562938163802349)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(18016375011449001)
,p_event_id=>wwv_flow_imp.id(17563033656802350)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(17561537354802335)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(18016747762449005)
,p_name=>'DA_COD_ARTICULO'
,p_event_sequence=>260
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P103_COD_ARTICULO_DETALLE'
,p_condition_element=>'P103_COD_ARTICULO_DETALLE'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(18016860190449006)
,p_event_id=>wwv_flow_imp.id(18016747762449005)
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
'       AND SEQ_ID = :P103_AUX_ABRE_DETALLE; ',
'    IF :P103_COD_ARTICULO_DETALLE != NVL(VARTICULO,'''') THEN',
'        :P103_AUX_COD_IVA := VTNOTCRE.busca_cod_iva(:P103_COD_EMPRESA_VAR,:P103_COD_ARTICULO_DETALLE);        ',
'        DECLARE',
'            VDESC_ARTICULO VARCHAR(200);',
'            VCOD_GRUPO_ART VARCHAR(5);',
'        BEGIN',
'            FOR CC IN (SELECT C001,C002,C003,C004,C005,C006,C007,C008,C010,C011,C012,C013,C014,C015,C016,C017,C018,C019,C020,C021,C022,C023,C024,C025,C026,C027,C028,C029,C030,C031,C032,C033,C034,C035,C036  ',
'                         FROM APEX_COLLECTIONS',
'                        WHERE COLLECTION_NAME = ''DET_COM''',
'                          AND SEQ_ID = :P103_AUX_ABRE_DETALLE)',
'            LOOP',
'                Begin',
'                    select descripcion, cod_grupo_art--, cod_moneda_base',
'                      into VDESC_ARTICULO, VCOD_GRUPO_ART--, vcod_moneda_base',
'                      from st_articulos',
'                     where cod_empresa = :P103_COD_EMPRESA_VAR',
'                       and cod_articulo = :P103_COD_ARTICULO_DETALLE;',
'               exception',
'                  when others then',
'                      VDESC_ARTICULO := NULL;      ',
'                      VCOD_GRUPO_ART := NULL;      ',
'               end;',
'                APEX_COLLECTION.UPDATE_MEMBER(P_COLLECTION_NAME => ''DET_COM'',P_SEQ  => :P103_AUX_ABRE_DETALLE,P_C001 => :P103_AUX_IMPORTE_ANT, ',
'                                               P_C002 => :P103_AUX_IVA_ANT,P_C003 => :P103_COD_ARTICULO_DETALLE, P_C004 => CC.C004, P_C005 => CC.C005,',
'                                               P_C006 => :P103_LOTE, P_C007 => :P103_CANTIDAD,P_C008 => :P103_AUX_CANT_VENDIDA, ',
'                                               P_C010 => :P103_PRECIO_UNITARIO, P_C011 => :P103_AUX_PORC_IVA,P_C012 => :P103_AUX_IND_RENTA, ',
'                                               P_C013 => CC.C013, P_C014 => :P103_PORC_DESCUENTO_DETALLE,P_C015 => :P103_PORC_RECARGO_DETALLE,P_C016 => CC.C016,',
'                                               P_C017 => :P103_AUX_NRO_PROMO,P_C018 => :P103_AUX_TOTAL_IVA, P_C019 => CC.C019, P_C020 => CC.C020, ',
'                                               P_C021 => :P103_AUX_RECARGO,P_C022 => :P103_AUX_DESCUENTO,P_C023 => :P103_AUX_PORC_DESCUENTO_ANT,P_C024 => VDESC_ARTICULO, P_C025 => VCOD_GRUPO_ART, P_C026 => CC.C026,',
'                                               P_C027 => :P103_AUX_MONTO_TOTAL,  P_C028 => :P103_AUX_MONTO_EXENTA,P_C029 => :P103_AUX_MONTO_GRAVADA_10,P_C030 => :P103_AUX_MONTO_GRAVADA_5,',
'                                               P_C031 => :P103_AUX_CANTIDAD_UB,P_C032 => :P103_AUX_PORC_IVA_AD,P_C033 => CC.C033,',
'                                               P_C034 => :P103_AUX_COD_ARTICULO_REL_BON,P_C035 => :P103_AUX_DESCUENTO_MAXIMO,P_C036 => :P103_AUX_PORC_RECARGO_ANT);',
'                END LOOP;',
'                :P103_RECARGO_DET := :P103_AUX_RECARGO;',
'                :P103_DESCUENTO_DET := :P103_AUX_DESCUENTO; ',
'            EXCEPTION',
'                WHEN OTHERS THEN    ',
'                    RAISE_APPLICATION_ERROR(-20000, ''Ha ocurrido un error al guardar el detalle.'');',
'            END;                                              ',
'    END IF;',
'END;                                                    '))
,p_attribute_02=>'P103_AUX_ABRE_DETALLE,P103_COD_EMPRESA_VAR,P103_COD_ARTICULO_DETALLE,P103_AUX_IMPORTE_ANT,P103_AUX_IVA_ANT,P103_LOTE,P103_CANTIDAD,P103_AUX_CANT_VENDIDA, P103_PRECIO_UNITARIO, P103_AUX_PORC_DESCUENTO_ANT,P103_AUX_MONTO_TOTAL,P103_AUX_MONTO_EXENTA,P10'
||'3_AUX_MONTO_GRAVADA_10,P103_AUX_MONTO_GRAVADA_5,P103_AUX_CANTIDAD_UB, P103_AUX_PORC_IVA_AD,P103_AUX_COD_ARTICULO_REL_BON, P103_AUX_DESCUENTO_MAXIMO,P103_AUX_PORC_RECARGO_ANT,P103_AUX_PORC_IVA,P103_AUX_IND_RENTA,P103_PORC_DESCUENTO_DETALLE,P103_PORC_R'
||'ECARGO_DETALLE,P103_AUX_NRO_PROMO,P103_AUX_TOTAL_IVA,P103_AUX_RECARGO,P103_AUX_DESCUENTO'
,p_attribute_03=>'P103_AUX_COD_IVA'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(20409239533847836)
,p_event_id=>wwv_flow_imp.id(18016747762449005)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(16603320138666808)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(18016954052449007)
,p_name=>'DA_LOTE'
,p_event_sequence=>270
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P103_LOTE'
,p_condition_element=>'P103_LOTE'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(18017023763449008)
,p_event_id=>wwv_flow_imp.id(18016954052449007)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    VLOTE VARCHAR(100);',
'BEGIN',
'    SELECT C006',
'      INTO VLOTE',
'      FROM APEX_COLLECTIONS',
'     WHERE COLLECTION_NAME = ''DET_COM''',
'       AND SEQ_ID = :P103_AUX_ABRE_DETALLE; ',
'    IF NVL(:P103_LOTE,0) != NVL(VLOTE,0) THEN',
'        BEGIN',
'            VTNOTCRE.ver_lote(:P103_COD_EMPRESA_VAR,:P103_COD_ARTICULO_DETALLE,:P103_LOTE,:P103_COD_SUCURSAL); ',
'            VTNOTCRE.ver_iva(:P103_COD_EMPRESA_VAR,:P103_COD_ARTICULO_DETALLE,:P103_LOTE,:P103_COD_SUCURSAL,:P103_AUX_COD_IVA,:P103_AUX_PORC_IVA,:P103_FEC_COMPROBANTE,:P103_AUX_IND_RENTA,:P103_IND_EXENTO_AD,:P103_TIPO_IMPUESTO,:P103_CALCULA_IVA); ',
'        EXCEPTION',
'            WHEN OTHERS THEN',
'                NULL;                          ',
'        END;',
'        BEGIN',
'            VTNOTCRE.CALCULOS (P_MULT => :P103_MULT, P_DIV  => :P103_DIV, P_DECIMALES => :P103_DECIMALES, P_RECARGO_VARIABLES => :P103_RECARGO_VAR, --IN',
'                                   P_IVA_PARCIAL_IN => :P103_IVA_PARCIAL, P_IVA_PARCIAL_OUT => :P103_IVA_PARCIAL, P_IVA_ANT_IN => :P103_AUX_IVA_ANT, --IN',
'                                   P_IVA_ANT_OUT => :P103_AUX_IVA_ANT,P_SUBTOTAL_PARCIAL_IN => :P103_SUBTOTAL_PARCIAL,P_SUBTOTAL_PARCIAL_OUT => :P103_SUBTOTAL_PARCIAL,',
'                                   P_GRAVADAS_PARCIAL_IN => :P103_GRAVADAS_PARCIAL,P_GRAVADAS_PARCIAL_OUT => :P103_GRAVADAS_PARCIAL,P_EXENTAS_PARCIAL_IN => :P103_EXENTAS_PARCIAL,',
'                                   P_EXENTAS_PARCIAL_OUT => :P103_EXENTAS_PARCIAL,',
'                                   P_PORCENTAJE_DESCUENTO => :P103_PORCENTAJE_DESCUENTO,',
'                                   P_DESCUENTO_CABECERA => :P103_DESCUENTO, --IN',
'                                   P_TOTAL_IVA_CABECERA => :P103_TOTAL_IVA,',
'                                   P_AJUSTE_IVA_CABECERA => :P103_AJUSTE_IVA,',
'                                   P_SUBTOTAL_CABECERA => :P103_SUBTOTAL,',
'                                   P_GRAVADAS_CABECERA => :P103_GRAVADAS,',
'                                   P_RECARGO_DET => :P103_AUX_RECARGO, --IN',
'                                   P_RECARGO_CABECERA => :P103_RECARGO, --IN',
'                                   P_EXENTAS_CABECERA => :P103_EXENTAS,',
'                                   P_RECARGO_PORC_CABECERA => :P103_RECARGO_PORC,',
'                                   P_TOTAL_CABECERA => :P103_TOTAL,--P_TOTAL,',
'                                   P_PRECIO_UNITARIO => :P103_PRECIO_UNITARIO, --IN',
'                                   P_PORC_IVA => :P103_AUX_PORC_IVA, --IN',
'                                   P_PORC_IVA_AD => :P103_AUX_PORC_IVA_AD, --IN',
'                                   P_PORC_DESCUENTO => :P103_PORC_DESCUENTO_DETALLE, --IN',
'                                   P_PORC_RECARGO => :P103_PORC_RECARGO_DETALLE, --IN',
'                                   P_CANTIDAD => :P103_CANTIDAD, --IN',
'                                   P_DESCUENTO => :P103_AUX_DESCUENTO, --IN',
'                                   P_COD_ARTICULO => :P103_COD_ARTICULO_DETALLE,--IN',
'                                   P_TOTAL_IVA_IN => :P103_AUX_TOTAL_IVA,--IN',
'                                   P_TOTAL_IVA_OUT => :P103_AUX_TOTAL_IVA,',
'                                   P_IMPORTE_ANT_IN => :P103_AUX_IMPORTE_ANT, --IN',
'                                   P_IMPORTE_ANT_OUT => :P103_AUX_IMPORTE_ANT,',
'                                   P_MONTO_TOTAL => :P103_AUX_MONTO_TOTAL,',
'                                   P_MONTO_EXENTA => :P103_AUX_MONTO_EXENTA, ',
'                                   P_MONTO_GRAVADA_10 => :P103_AUX_MONTO_GRAVADA_10,',
'                                   P_MONTO_GRAVADA_5 => :P103_AUX_MONTO_GRAVADA_5,',
'                                   P_CANTIDAD_UB=> :P103_AUX_CANTIDAD_UB);',
'        END;',
'    END IF;',
'END;    '))
,p_attribute_02=>'P103_AUX_ABRE_DETALLE,P103_SUBTOTAL_PARCIAL,P103_COD_EMPRESA_VAR,P103_COD_ARTICULO_DETALLE,P103_LOTE,P103_COD_SUCURSAL,P103_FEC_COMPROBANTE, P103_IND_EXENTO_AD,P103_TIPO_IMPUESTO,P103_CALCULA_IVA,  P103_MULT,P103_DIV,P103_DECIMALES,P103_RECARGO_VAR,P'
||'103_AUX_IVA_ANT, P103_DESCUENTO,P103_AUX_RECARGO,P103_RECARGO,P103_PRECIO_UNITARIO,P103_AUX_PORC_IVA,P103_AUX_PORC_IVA_AD P103_PORC_DESCUENTO_DETALLE, P103_EXENTAS_PARCIAL, P103_PORC_RECARGO_DETALLE,P103_CANTIDAD,P103_AUX_DESCUENTO,P103_AUX_TOTAL_IVA'
||',P103_AUX_IMPORTE_ANT,P103_IVA_PARCIAL,P103_GRAVADAS_PARCIAL'
,p_attribute_03=>'P103_AUX_COD_IVA,P103_AUX_PORC_IVA,P103_AUX_IND_RENTA,P103_AUX_CANTIDAD_UB, P103_AUX_MONTO_GRAVADA_5,P103_AUX_MONTO_GRAVADA_10,P103_AUX_MONTO_EXENTA, P103_AUX_MONTO_EXENTA,P103_AUX_MONTO_TOTAL,  P103_AUX_IMPORTE_ANT,P103_AUX_TOTAL_IVA,P103_RECARGO_PO'
||'RC, P103_PORCENTAJE_DESCUENTO, P103_EXENTAS_PARCIAL, P103_GRAVADAS_PARCIAL,P103_SUBTOTAL_PARCIAL,P103_AUX_IVA_ANT,P103_IVA_PARCIAL,P103_SUBTOTAL,,P103_GRAVADAS,P103_EXENTAS'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(20409355506847837)
,p_event_id=>wwv_flow_imp.id(18016954052449007)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    VLOTE VARCHAR(100);',
'BEGIN',
'    SELECT C006',
'      INTO VLOTE',
'      FROM APEX_COLLECTIONS',
'     WHERE COLLECTION_NAME = ''DET_COM''',
'       AND SEQ_ID = :P103_AUX_ABRE_DETALLE; ',
'    IF NVL(:P103_LOTE,0) != NVL(VLOTE,0) THEN',
'        BEGIN',
'            FOR CC IN (SELECT C001,C002,C003,C004,C005,C006,C007,C008,C010,C011,C012,C013,C014,C015,C016,C017,C018,C019,C020,C021,C022,C023,C024,C025,C026,C027,C028,C029, ',
'                              C030,C031,C032,C033,C034,C035,C036  ',
'                         FROM APEX_COLLECTIONS',
'                        WHERE COLLECTION_NAME = ''DET_COM''',
'                          AND SEQ_ID = :P103_AUX_ABRE_DETALLE)',
'            LOOP',
'                APEX_COLLECTION.UPDATE_MEMBER(P_COLLECTION_NAME => ''DET_COM'',',
'                                               P_SEQ  => :P103_AUX_ABRE_DETALLE,P_C001 => :P103_AUX_IMPORTE_ANT, P_C002 => :P103_AUX_IVA_ANT,   P_C003 => :P103_COD_ARTICULO_DETALLE, ',
'                                               P_C004 => CC.C004, P_C005 => CC.C005, P_C006 => :P103_LOTE,P_C007 => :P103_CANTIDAD,P_C008 => :P103_AUX_CANT_VENDIDA, ',
'                                               P_C010 => :P103_PRECIO_UNITARIO, P_C011 => :P103_AUX_PORC_IVA, --:b_detalle.porc_iva',
'                                               P_C012 => :P103_AUX_IND_RENTA, --:b_detalle.ind_renta ',
'                                               P_C013 => CC.C013, -- :b_detalle.precio_lista',
'                                               P_C014 => :P103_PORC_DESCUENTO_DETALLE, --:b_detalle.porc_descuento',
'                                               P_C015 => :P103_PORC_RECARGO_DETALLE, --:b_detalle.porc_recargo',
'                                               P_C016 => CC.C016, --:b_detalle.cod_iva ',
'                                               P_C017 => :P103_AUX_NRO_PROMO, -- :b_detalle.nro_promo',
'                                               P_C018 => :P103_AUX_TOTAL_IVA, -- :b_detalle.total_iva ',
'                                               P_C019 => CC.C019, -- :b_detalle.ser_pedido ',
'                                               P_C020 => CC.C020, --  :b_detalle.nro_pedido',
'                                               P_C021 => :P103_AUX_RECARGO,P_C022 => :P103_AUX_DESCUENTO,P_C023 => :P103_AUX_PORC_DESCUENTO_ANT,',
'                                               P_C024 => CC.C024, P_C025 => CC.C025, P_C026 => CC.C026,P_C027 => :P103_AUX_MONTO_TOTAL,P_C028 => :P103_AUX_MONTO_EXENTA,',
'                                               P_C029 => :P103_AUX_MONTO_GRAVADA_10,P_C030 => :P103_AUX_MONTO_GRAVADA_5,P_C031 => :P103_AUX_CANTIDAD_UB,',
'                                               P_C032 => :P103_AUX_PORC_IVA_AD,P_C033 => CC.C033,P_C034 => :P103_AUX_COD_ARTICULO_REL_BON, --:b_detalle.cod_articulo_rel_bon   ',
'                                               P_C035 => :P103_AUX_DESCUENTO_MAXIMO, --:b_detalle.descuento_maximo                 ',
'                                               P_C036 => :P103_AUX_PORC_RECARGO_ANT);',
'            END LOOP;',
'            :P103_RECARGO_DET := :P103_AUX_RECARGO;',
'            :P103_DESCUENTO_DET := :P103_AUX_DESCUENTO; ',
'        EXCEPTION',
'            WHEN OTHERS THEN    ',
'                RAISE_APPLICATION_ERROR(-20000, ''Ha ocurrido un error al guardar el detalle.'');',
'        END; ',
'    END IF;',
'END;                                                  ',
''))
,p_attribute_02=>'P103_AUX_ABRE_DETALLE,P103_AUX_IMPORTE_ANT,P103_AUX_IVA_ANT,P103_COD_ARTICULO_DETALLE,P103_LOTE,P103_CANTIDAD,P103_AUX_CANT_VENDIDA,P103_PRECIO_UNITARIO, P103_AUX_PORC_DESCUENTO_ANT,P103_AUX_MONTO_TOTAL, P103_AUX_MONTO_EXENTA,P103_AUX_MONTO_GRAVADA_1'
||'0,P103_AUX_MONTO_GRAVADA_5,P103_AUX_CANTIDAD_UB, P103_AUX_PORC_IVA_AD,P103_AUX_COD_ARTICULO_REL_BON,P103_AUX_DESCUENTO_MAXIMO,P103_AUX_PORC_RECARGO_ANT, P103_AUX_PORC_IVA,P103_AUX_IND_RENTA,P103_PORC_DESCUENTO_DETALLE,P103_PORC_RECARGO_DETALLE,P103_A'
||'UX_NRO_PROMO,P103_AUX_TOTAL_IVA,P103_AUX_RECARGO,P103_AUX_DESCUENTO'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(20409461923847838)
,p_event_id=>wwv_flow_imp.id(18016954052449007)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(16603320138666808)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(18017147312449009)
,p_name=>'DA_CANTIDAD'
,p_event_sequence=>280
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P103_CANTIDAD'
,p_condition_element=>'P103_CANTIDAD'
,p_triggering_condition_type=>'GREATER_THAN'
,p_triggering_expression=>'0'
,p_bind_type=>'bind'
,p_bind_event_type=>'focusout'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(18017493898449012)
,p_event_id=>wwv_flow_imp.id(18017147312449009)
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
,p_client_condition_element=>'P103_AUX_MSJ'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(18373140178390527)
,p_event_id=>wwv_flow_imp.id(18017147312449009)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P103_AUX_MSJ := NULL;',
'IF TO_NUMBER(:P103_CANTIDAD) > TO_NUMBER(:P103_AUX_CANT_VENDIDA) THEN',
'    :P103_AUX_MSJ :=''Cantidad es mayor a la cantidad vendida'';',
'    :P103_CANTIDAD := :P103_AUX_CANTIDAD_ANT;',
'END IF;    '))
,p_attribute_02=>'P103_AUX_CANTIDAD_ANT,P103_CANTIDAD,P103_AUX_CANT_VENDIDA'
,p_attribute_03=>'P103_CANTIDAD,P103_AUX_MSJ'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(18017318812449011)
,p_event_id=>wwv_flow_imp.id(18017147312449009)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'&P103_AUX_MSJ.'
,p_attribute_02=>'Error'
,p_attribute_03=>'warning'
,p_attribute_04=>'fa-warning'
,p_attribute_06=>'Aceptar'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P103_AUX_MSJ'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(18017222478449010)
,p_event_id=>wwv_flow_imp.id(18017147312449009)
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
'       AND SEQ_ID = :P103_AUX_ABRE_DETALLE; ',
'    IF NVL(:P103_CANTIDAD,0) != NVL(VCANTIDAD,0) THEN',
'        BEGIN',
'           VTNOTCRE.valida_cantidad(:P103_COD_ARTICULO_DETALLE,:P103_CANTIDAD,:P103_TIP_COMPROBANTE_REF,:P103_SER_COMPROBANTE_REF,:P103_NRO_COMPROBANTE_REF,:P103_COD_EMPRESA_VAR); ',
'            IF :P103_CARGA_ITEMS <> ''S'' THEN ',
'                :P103_AUX_PORC_DESCUENTO_ANT := TO_NUMBER(:P103_PORC_DESCUENTO_DETALLE) - 1 ;',
'               VTNOTCRE.calcula_descuento( :P103_AUX_PORC_DESCUENTO_ANT, :P103_PORC_DESCUENTO_DETALLE,:P103_CANTIDAD,:P103_PRECIO_UNITARIO,:P103_DECIMALES,:P103_AUX_DESCUENTO,:P103_PORC_RECARGO_DETALLE,:P103_AUX_DESCUENTO,:P103_AUX_PORC_DESCUENTO_ANT'
||',:P103_AUX_RECARGO); ',
'               VTNOTCRE.calcula_recargo(:P103_AUX_PORC_RECARGO_ANT,:P103_PORC_RECARGO_DETALLE,:P103_CANTIDAD,:P103_PRECIO_UNITARIO,:P103_DECIMALES,:P103_AUX_DESCUENTO,:P103_AUX_PORC_DESCUENTO_ANT,:P103_AUX_RECARGO,:P103_AUX_RECARGO);    ',
'               VTNOTCRE.CALCULOS (:P103_MULT,:P103_DIV,:P103_DECIMALES,:P103_RECARGO_VAR,:P103_IVA_PARCIAL,:P103_IVA_PARCIAL,:P103_AUX_IVA_ANT,:P103_AUX_IVA_ANT,',
'                                   :P103_SUBTOTAL_PARCIAL,:P103_SUBTOTAL_PARCIAL,:P103_GRAVADAS_PARCIAL,:P103_GRAVADAS_PARCIAL,:P103_EXENTAS_PARCIAL,',
'                                   :P103_EXENTAS_PARCIAL,:P103_PORCENTAJE_DESCUENTO,:P103_DESCUENTO,:P103_TOTAL_IVA,:P103_AJUSTE_IVA,:P103_SUBTOTAL,:P103_GRAVADAS,',
'                                   :P103_AUX_RECARGO,:P103_RECARGO,:P103_EXENTAS,:P103_RECARGO_PORC,:P103_TOTAL,:P103_PRECIO_UNITARIO,:P103_AUX_PORC_IVA, ',
'                                   :P103_AUX_PORC_IVA_AD,:P103_PORC_DESCUENTO_DETALLE,:P103_PORC_RECARGO_DETALLE,:P103_CANTIDAD,:P103_AUX_DESCUENTO, ',
'                                   :P103_COD_ARTICULO_DETALLE,:P103_AUX_TOTAL_IVA,:P103_AUX_TOTAL_IVA,:P103_AUX_IMPORTE_ANT,:P103_AUX_IMPORTE_ANT,',
'                                   :P103_AUX_MONTO_TOTAL,:P103_AUX_MONTO_EXENTA, :P103_AUX_MONTO_GRAVADA_10,:P103_AUX_MONTO_GRAVADA_5,:P103_AUX_CANTIDAD_UB);',
'            END IF;',
'            ',
'        EXCEPTION',
'            WHEN OTHERS THEN',
'                NULL;',
'        END; ',
'    END IF;',
'END;                                              ',
'',
'',
''))
,p_attribute_02=>'P103_AUX_ABRE_DETALLE,P103_AUX_PORC_RECARGO_ANT,P103_AUX_RECARGO,P103_AUX_PORC_DESCUENTO_ANT,P103_PORC_DESCUENTO_DETALLE,P103_CARGA_ITEMS,P103_TIP_COMPROBANTE_REF, P103_SER_COMPROBANTE_REF,P103_NRO_COMPROBANTE_REF,P103_COD_EMPRESA_VAR,P103_AUX_CANT_V'
||'ENDIDA, P103_MULT,P103_DIV,P103_DECIMALES,P103_RECARGO_VAR,P103_IVA_PARCIAL,P103_AUX_IVA_ANT,P103_SUBTOTAL_PARCIAL, P103_GRAVADAS_PARCIAL,P103_EXENTAS_PARCIAL,P103_DESCUENTO,P103_AUX_RECARGO,P103_RECARGO,P103_PRECIO_UNITARIO, P103_AUX_PORC_IVA,P103_A'
||'UX_PORC_IVA_AD,P103_PORC_RECARGO_DETALLE,P103_CANTIDAD,P103_AUX_DESCUENTO, P103_COD_ARTICULO_DETALLE,P103_AUX_TOTAL_IVA,P103_AUX_IMPORTE_ANT'
,p_attribute_03=>'P103_AUX_PORC_DESCUENTO_ANT,P103_AUX_DESCUENTO,P103_AUX_RECARGO,P103_AUX_PORC_RECARGO_ANT, P103_IVA_PARCIAL,P103_AUX_IVA_ANT,P103_SUBTOTAL_PARCIAL,P103_GRAVADAS_PARCIAL,P103_EXENTAS_PARCIAL,P103_PORCENTAJE_DESCUENTO,P103_RECARGO_PORC,P103_AUX_TOTAL_I'
||'VA,P103_AUX_IMPORTE_ANT,P103_AUX_MONTO_TOTAL,P103_AUX_MONTO_EXENTA,P103_AUX_MONTO_GRAVADA_10,P103_AUX_MONTO_GRAVADA_5,P103_AUX_CANTIDAD_UB,P103_TOTAL_IVA,P103_SUBTOTAL,P103_SUBTOTAL,P103_TOTAL'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P103_AUX_MSJ'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(20571018171814002)
,p_event_id=>wwv_flow_imp.id(18017147312449009)
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
'       AND SEQ_ID = :P103_AUX_ABRE_DETALLE; ',
'    IF NVL(:P103_CANTIDAD,0) != NVL(VCANTIDAD,0) THEN    ',
'        BEGIN',
'            FOR CC IN (SELECT C001,C002,C003,C004,C005,C006,C007,C008,C010,C011,C012,C013,C014,C015,C016,C017,C018,C019,C020,C021,C022,C023,C024,C025,C026,C027,C028,C029, ',
'                              C030,C031,C032,C033,C034,C035,C036  ',
'                         FROM APEX_COLLECTIONS',
'                        WHERE COLLECTION_NAME = ''DET_COM''',
'                          AND SEQ_ID = :P103_AUX_ABRE_DETALLE)',
'            LOOP',
'                APEX_COLLECTION.UPDATE_MEMBER(P_COLLECTION_NAME => ''DET_COM'',P_SEQ  => :P103_AUX_ABRE_DETALLE,',
'                                               P_C001 => :P103_AUX_IMPORTE_ANT,   P_C002 => :P103_AUX_IVA_ANT,P_C003 => :P103_COD_ARTICULO_DETALLE,',
'                                               P_C004 => CC.C004, -- :b_detalle.costo_promedio',
'                                               P_C005 => CC.C005, -- :b_detalle.costo_promedio_ref',
'                                               P_C006 => :P103_LOTE, --:b_detalle.nro_lote',
'                                               P_C007 => :P103_CANTIDAD, --b_detalle.cantidad  ',
'                                               P_C008 => :P103_AUX_CANT_VENDIDA, -- b_detalle.cantidad_vendida',
'                                               P_C010 => :P103_PRECIO_UNITARIO, --:b_detalle.precio_unitario',
'                                               P_C011 => :P103_AUX_PORC_IVA, --:b_detalle.porc_iva',
'                                               P_C012 => :P103_AUX_IND_RENTA, --:b_detalle.ind_renta ',
'                                               P_C013 => CC.C013, -- :b_detalle.precio_lista',
'                                               P_C014 => :P103_PORC_DESCUENTO_DETALLE, --:b_detalle.porc_descuento',
'                                               P_C015 => :P103_PORC_RECARGO_DETALLE, --:b_detalle.porc_recargo',
'                                               P_C016 => CC.C016, --:b_detalle.cod_iva ',
'                                               P_C017 => :P103_AUX_NRO_PROMO, -- :b_detalle.nro_promo',
'                                               P_C018 => :P103_AUX_TOTAL_IVA, -- :b_detalle.total_iva ',
'                                               P_C019 => CC.C019, -- :b_detalle.ser_pedido ',
'                                               P_C020 => CC.C020, --  :b_detalle.nro_pedido',
'                                               P_C021 => :P103_AUX_RECARGO,P_C022 => :P103_AUX_DESCUENTO,P_C023 => :P103_AUX_PORC_DESCUENTO_ANT,P_C024 => CC.C024, P_C025 => CC.C025, ',
'                                               P_C026 => CC.C026,P_C027 => :P103_AUX_MONTO_TOTAL,P_C028 => :P103_AUX_MONTO_EXENTA,P_C029 => :P103_AUX_MONTO_GRAVADA_10,',
'                                               P_C030 => :P103_AUX_MONTO_GRAVADA_5,P_C031 => :P103_AUX_CANTIDAD_UB,P_C032 => :P103_AUX_PORC_IVA_AD,P_C033 => CC.C033,',
'                                               P_C034 => :P103_AUX_COD_ARTICULO_REL_BON, --:b_detalle.cod_articulo_rel_bon   ',
'                                               P_C035 => :P103_AUX_DESCUENTO_MAXIMO, --:b_detalle.descuento_maximo                 ',
'                                               P_C036 => :P103_AUX_PORC_RECARGO_ANT);',
'            END LOOP;',
'            :P103_RECARGO_DET := :P103_AUX_RECARGO;',
'            :P103_DESCUENTO_DET := :P103_AUX_DESCUENTO; ',
'        EXCEPTION',
'            WHEN OTHERS THEN    ',
'                RAISE_APPLICATION_ERROR(-20000, ''Ha ocurrido un error al guardar el detalle.'');',
'        END; ',
'    END IF;',
'END;',
'',
''))
,p_attribute_02=>'P103_AUX_ABRE_DETALLE,P103_AUX_IMPORTE_ANT,P103_AUX_IVA_ANT,P103_COD_ARTICULO_DETALLE,P103_LOTE,P103_CANTIDAD,P103_AUX_CANT_VENDIDA,P103_PRECIO_UNITARIO, P103_AUX_PORC_DESCUENTO_ANT,P103_AUX_MONTO_TOTAL, P103_AUX_MONTO_EXENTA,P103_AUX_MONTO_GRAVADA_1'
||'0,P103_AUX_MONTO_GRAVADA_5,P103_AUX_CANTIDAD_UB, P103_AUX_PORC_IVA_AD,P103_AUX_COD_ARTICULO_REL_BON,P103_AUX_DESCUENTO_MAXIMO,P103_AUX_PORC_RECARGO_ANT, P103_AUX_PORC_IVA,P103_AUX_IND_RENTA,P103_PORC_DESCUENTO_DETALLE,P103_PORC_RECARGO_DETALLE,P103_A'
||'UX_NRO_PROMO,P103_AUX_TOTAL_IVA,P103_AUX_RECARGO,P103_AUX_DESCUENTO'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P103_AUX_MSJ'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(20571147171814003)
,p_event_id=>wwv_flow_imp.id(18017147312449009)
,p_event_result=>'TRUE'
,p_action_sequence=>80
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(16603320138666808)
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P103_AUX_MSJ'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(18017547238449013)
,p_name=>'DA_PORC_DESCUENTO_DETALLE'
,p_event_sequence=>290
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P103_PORC_DESCUENTO_DETALLE'
,p_bind_type=>'bind'
,p_bind_event_type=>'focusout'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(18017635286449014)
,p_event_id=>wwv_flow_imp.id(18017547238449013)
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
'       AND SEQ_ID = :P103_AUX_ABRE_DETALLE; ',
'    IF NVL(:P103_PORC_DESCUENTO_DETALLE,0) != NVL(VPORC_DESCUENTO,0) THEN',
'        BEGIN',
'            :P103_AUX_MSJ := NULL;',
'            IF nvl(TO_NUMBER(:P103_PORC_DESCUENTO_DETALLE),0) < 0 then',
'                :P103_AUX_MSJ := ''El porcentaje de descuento no puede ser negativo.'';',
'            END IF;',
'            IF :P103_SUPERA_DESCUENTO = ''N'' THEN',
'                IF :P103_AUX_COD_ARTICULO_REL_BON IS NULL AND NVL(TO_NUMBER(:P103_PORC_DESCUENTO_DETALLE), 0) > nvl( TO_NUMBER(:P103_AUX_DESCUENTO_MAXIMO), 0 ) THEN',
unistr('                    :P103_AUX_MSJ := ''El porcentaje de descuento m\00E1ximo es '' ||to_char( nvl( :P103_AUX_DESCUENTO_MAXIMO, 0 ) );'),
'                END IF;',
'            END IF; ',
'            IF nvl( :P103_AUX_PORC_DESCUENTO_ANT, 0 ) <> nvl( :P103_PORC_DESCUENTO_DETALLE, 0 ) THEN',
'                :P103_AUX_DESCUENTO := round( ( nvl( :P103_CANTIDAD, 0 ) *',
'                                             ( nvl( :P103_PRECIO_UNITARIO, 0 ) ) *',
'                                             ( nvl( :P103_PORC_DESCUENTO_DETALLE, 0 ) / 100 ) ),',
'                                               nvl( :P103_DECIMALES, 0 ) );',
'                APEX_DEBUG.ERROR(''P103_AUX_DESCUENTO ''|| :P103_AUX_DESCUENTO);                               ',
'                :P103_AUX_PORC_DESCUENTO_ANT := :P103_PORC_DESCUENTO_DETALLE;                               ',
'            END IF;',
'            VTNOTCRE.CALCULOS (:P103_MULT,:P103_DIV,:P103_DECIMALES,:P103_RECARGO_VAR,:P103_IVA_PARCIAL,:P103_IVA_PARCIAL,:P103_AUX_IVA_ANT,:P103_AUX_IVA_ANT,',
'                               :P103_SUBTOTAL_PARCIAL,:P103_SUBTOTAL_PARCIAL,:P103_GRAVADAS_PARCIAL,:P103_GRAVADAS_PARCIAL,:P103_EXENTAS_PARCIAL,',
'                               :P103_EXENTAS_PARCIAL,:P103_PORCENTAJE_DESCUENTO,:P103_DESCUENTO,:P103_TOTAL_IVA,:P103_AJUSTE_IVA,:P103_SUBTOTAL,:P103_GRAVADAS,',
'                               :P103_AUX_RECARGO,:P103_RECARGO,:P103_EXENTAS,:P103_RECARGO_PORC,:P103_TOTAL,:P103_PRECIO_UNITARIO,:P103_AUX_PORC_IVA, ',
'                               :P103_AUX_PORC_IVA_AD,:P103_PORC_DESCUENTO_DETALLE,:P103_PORC_RECARGO_DETALLE,:P103_CANTIDAD,:P103_AUX_DESCUENTO, ',
'                               :P103_COD_ARTICULO_DETALLE,:P103_AUX_TOTAL_IVA,:P103_AUX_TOTAL_IVA,:P103_AUX_IMPORTE_ANT,:P103_AUX_IMPORTE_ANT,',
'                               :P103_AUX_MONTO_TOTAL,:P103_AUX_MONTO_EXENTA, :P103_AUX_MONTO_GRAVADA_10,:P103_AUX_MONTO_GRAVADA_5,:P103_AUX_CANTIDAD_UB);',
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
,p_attribute_02=>'P103_AUX_ABRE_DETALLE,P103_SUPERA_DESCUENTO,P103_AUX_COD_ARTICULO_REL_BON,P103_AUX_DESCUENTO_MAXIMO,P103_AUX_PORC_DESCUENTO_ANT, P103_MULT,P103_DIV,P103_DECIMALES,P103_RECARGO_VAR,P103_IVA_PARCIAL, P103_AUX_IVA_ANT,P103_SUBTOTAL_PARCIAL,P103_GRAVADAS'
||'_PARCIAL,P103_EXENTAS_PARCIAL,P103_DESCUENTO,P103_AUX_RECARGO,P103_RECARGO,P103_PRECIO_UNITARIO, P103_AUX_PORC_IVA,P103_AUX_PORC_IVA_AD,P103_PORC_DESCUENTO_DETALLE, P103_PORC_RECARGO_DETALLE,P103_CANTIDAD,P103_AUX_DESCUENTO,P103_COD_ARTICULO_DETALLE,'
||'P103_AUX_TOTAL_IVA,P103_AUX_IMPORTE_ANT'
,p_attribute_03=>'P103_AUX_PORC_DESCUENTO_ANT,P103_AUX_MSJ,P103_AUX_DESCUENTO,P103_IVA_PARCIAL,P103_AUX_IVA_ANT,P103_SUBTOTAL_PARCIAL,P103_GRAVADAS_PARCIAL,P103_EXENTAS_PARCIAL,P103_PORCENTAJE_DESCUENTO,P103_RECARGO_PORC,P103_AUX_TOTAL_IVA,P103_AUX_IMPORTE_ANT,P103_AU'
||'X_MONTO_TOTAL,P103_AUX_MONTO_EXENTA,P103_AUX_MONTO_GRAVADA_10,P103_AUX_MONTO_GRAVADA_5,P103_AUX_CANTIDAD_UB,P103_SUBTOTAL,,P103_GRAVADAS,P103_EXENTAS,P103_TOTAL'
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
 p_id=>wwv_flow_imp.id(20572264945814014)
,p_event_id=>wwv_flow_imp.id(18017547238449013)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'&P103_AUX_MSJ.'
,p_attribute_02=>'Error'
,p_attribute_03=>'warning'
,p_attribute_04=>'fa-warning'
,p_attribute_06=>'Aceptar'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P103_AUX_MSJ'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(20571923771814011)
,p_event_id=>wwv_flow_imp.id(18017547238449013)
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
'       AND SEQ_ID = :P103_AUX_ABRE_DETALLE; ',
'    IF NVL(:P103_PORC_DESCUENTO_DETALLE,0) != NVL(VPORC_DESCUENTO,0) THEN',
'        BEGIN',
'            FOR CC IN (SELECT C001,C002,C003,C004,C005,C006,C007,C008,C010,C011,C012,C013,C014,C015,C016,C017,C018,C019,C020,C021,C022,C023,C024,C025,C026,C027,C028,C029, ',
'                              C030,C031,C032,C033,C034,C035,C036  ',
'                         FROM APEX_COLLECTIONS',
'                        WHERE COLLECTION_NAME = ''DET_COM''',
'                          AND SEQ_ID = :P103_AUX_ABRE_DETALLE)',
'            LOOP',
'                APEX_COLLECTION.UPDATE_MEMBER(P_COLLECTION_NAME => ''DET_COM'',P_SEQ  => :P103_AUX_ABRE_DETALLE,',
'                                               P_C001 => :P103_AUX_IMPORTE_ANT,   --:b_detalle.importe_ant ',
'                                               P_C002 => :P103_AUX_IVA_ANT,   --:b_detalle.iva_ant',
'                                               P_C003 => :P103_COD_ARTICULO_DETALLE, -- :b_detalle.cod_articulo',
'                                               P_C004 => CC.C004, -- :b_detalle.costo_promedio',
'                                               P_C005 => CC.C005, -- :b_detalle.costo_promedio_ref',
'                                               P_C006 => :P103_LOTE, --:b_detalle.nro_lote',
'                                               P_C007 => :P103_CANTIDAD, --b_detalle.cantidad  ',
'                                               P_C008 => :P103_AUX_CANT_VENDIDA, -- b_detalle.cantidad_vendida',
'                                               P_C010 => :P103_PRECIO_UNITARIO, --:b_detalle.precio_unitario',
'                                               P_C011 => :P103_AUX_PORC_IVA, --:b_detalle.porc_iva',
'                                               P_C012 => :P103_AUX_IND_RENTA, --:b_detalle.ind_renta ',
'                                               P_C013 => CC.C013, -- :b_detalle.precio_lista',
'                                               P_C014 => :P103_PORC_DESCUENTO_DETALLE, --:b_detalle.porc_descuento',
'                                               P_C015 => :P103_PORC_RECARGO_DETALLE, --:b_detalle.porc_recargo',
'                                               P_C016 => CC.C016, --:b_detalle.cod_iva ',
'                                               P_C017 => :P103_AUX_NRO_PROMO, -- :b_detalle.nro_promo',
'                                               P_C018 => :P103_AUX_TOTAL_IVA, -- :b_detalle.total_iva ',
'                                               P_C019 => CC.C019, -- :b_detalle.ser_pedido ',
'                                               P_C020 => CC.C020, --  :b_detalle.nro_pedido',
'                                               P_C021 => :P103_AUX_RECARGO,P_C022 => :P103_AUX_DESCUENTO,P_C023 => :P103_AUX_PORC_DESCUENTO_ANT,P_C024 => CC.C024, ',
'                                               P_C025 => CC.C025,P_C026 => CC.C026,P_C027 => :P103_AUX_MONTO_TOTAL,P_C028 => :P103_AUX_MONTO_EXENTA,',
'                                               P_C029 => :P103_AUX_MONTO_GRAVADA_10,P_C030 => :P103_AUX_MONTO_GRAVADA_5,P_C031 => :P103_AUX_CANTIDAD_UB,P_C032 => :P103_AUX_PORC_IVA_AD,P_C033 => CC.C033,',
'                                               P_C034 => :P103_AUX_COD_ARTICULO_REL_BON, --:b_detalle.cod_articulo_rel_bon   ',
'                                               P_C035 => :P103_AUX_DESCUENTO_MAXIMO, --:b_detalle.descuento_maximo                 ',
'                                               P_C036 => :P103_AUX_PORC_RECARGO_ANT);',
'            END LOOP;',
'            :P103_RECARGO_DET := :P103_AUX_RECARGO;',
'            :P103_DESCUENTO_DET := :P103_AUX_DESCUENTO; ',
'        EXCEPTION',
'            WHEN OTHERS THEN    ',
'                RAISE_APPLICATION_ERROR(-20000, ''Ha ocurrido un error al guardar el detalle.'');',
'        END;      ',
'    END IF;',
'END;                                             ',
''))
,p_attribute_02=>'P103_AUX_ABRE_DETALLE,P103_AUX_IMPORTE_ANT,P103_AUX_IVA_ANT,P103_COD_ARTICULO_DETALLE,P103_LOTE,P103_CANTIDAD,P103_AUX_CANT_VENDIDA,P103_PRECIO_UNITARIO, P103_AUX_PORC_DESCUENTO_ANT,P103_AUX_MONTO_TOTAL, P103_AUX_MONTO_EXENTA,P103_AUX_MONTO_GRAVADA_1'
||'0,P103_AUX_MONTO_GRAVADA_5,P103_AUX_CANTIDAD_UB, P103_AUX_PORC_IVA_AD,P103_AUX_COD_ARTICULO_REL_BON,P103_AUX_DESCUENTO_MAXIMO,P103_AUX_PORC_RECARGO_ANT, P103_AUX_PORC_IVA,P103_AUX_IND_RENTA,P103_PORC_DESCUENTO_DETALLE,P103_PORC_RECARGO_DETALLE,P103_A'
||'UX_NRO_PROMO,P103_AUX_TOTAL_IVA,P103_AUX_RECARGO,P103_AUX_DESCUENTO'
,p_attribute_03=>'P103_RECARGO_DET ,P103_DESCUENTO_DET'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P103_AUX_MSJ'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(20572025843814012)
,p_event_id=>wwv_flow_imp.id(18017547238449013)
,p_event_result=>'TRUE'
,p_action_sequence=>80
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(16603320138666808)
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P103_AUX_MSJ'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(18018619253449024)
,p_name=>'DA_PORC_RECARGO'
,p_event_sequence=>300
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P103_PORC_RECARGO_DETALLE'
,p_bind_type=>'bind'
,p_bind_event_type=>'focusout'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(18018768693449025)
,p_event_id=>wwv_flow_imp.id(18018619253449024)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    VPORC_RECARGO NUMBER;',
'BEGIN',
'    :P103_AUX_MSJ := NULL;',
'    SELECT C015',
'      INTO VPORC_RECARGO',
'      FROM APEX_COLLECTIONS',
'     WHERE COLLECTION_NAME = ''DET_COM''',
'       AND SEQ_ID = :P103_AUX_ABRE_DETALLE;  ',
'    IF NVL(:P103_PORC_RECARGO_DETALLE,0) != NVL(VPORC_RECARGO,0) THEN',
'        BEGIN',
'            :P103_AUX_MSJ := NULL;',
'            IF nvl( :P103_AUX_PORC_RECARGO_ANT, 0 ) <> nvl( :P103_PORC_RECARGO_DETALLE, 0 ) THEN',
'                :P103_AUX_RECARGO := round(( nvl( :P103_CANTIDAD, 0 ) *',
'                                           ( nvl( :P103_PRECIO_UNITARIO, 0 ) ) *',
'                                           ( nvl( :P103_PORC_RECARGO_DETALLE, 0 ) / 100 ) ),',
'                                             nvl( :P103_DECIMALES, 0 ) );',
'                :P103_AUX_PORC_RECARGO_ANT := :P103_PORC_RECARGO_DETALLE;                            ',
'            END IF;',
'            VTNOTCRE.CALCULOS (:P103_MULT,:P103_DIV,:P103_DECIMALES,:P103_RECARGO_VAR,:P103_IVA_PARCIAL,:P103_IVA_PARCIAL,:P103_AUX_IVA_ANT,:P103_AUX_IVA_ANT,',
'                               :P103_SUBTOTAL_PARCIAL,:P103_SUBTOTAL_PARCIAL,:P103_GRAVADAS_PARCIAL,:P103_GRAVADAS_PARCIAL,:P103_EXENTAS_PARCIAL,',
'                               :P103_EXENTAS_PARCIAL,:P103_PORCENTAJE_DESCUENTO,:P103_DESCUENTO,:P103_TOTAL_IVA,:P103_AJUSTE_IVA,:P103_SUBTOTAL,:P103_GRAVADAS,',
'                               :P103_AUX_RECARGO,:P103_RECARGO,:P103_EXENTAS,:P103_RECARGO_PORC,:P103_TOTAL,:P103_PRECIO_UNITARIO,:P103_AUX_PORC_IVA, ',
'                               :P103_AUX_PORC_IVA_AD,:P103_PORC_DESCUENTO_DETALLE,:P103_PORC_RECARGO_DETALLE,:P103_CANTIDAD,:P103_AUX_DESCUENTO, ',
'                               :P103_COD_ARTICULO_DETALLE,:P103_AUX_TOTAL_IVA,:P103_AUX_TOTAL_IVA,:P103_AUX_IMPORTE_ANT,:P103_AUX_IMPORTE_ANT,',
'                               :P103_AUX_MONTO_TOTAL,:P103_AUX_MONTO_EXENTA, :P103_AUX_MONTO_GRAVADA_10,:P103_AUX_MONTO_GRAVADA_5,:P103_AUX_CANTIDAD_UB);',
'        EXCEPTION',
'            when others then',
unistr('                :P103_AUX_MSJ := ''Error en el c\00E1lculo de recargo ''||sqlerrm;'),
'        END;',
'    END IF;',
'END;        ',
'',
'',
'',
'',
''))
,p_attribute_02=>'P103_AUX_ABRE_DETALLE,P103_AUX_PORC_RECARGO_ANT,P103_MULT,P103_DIV,P103_DECIMALES,P103_RECARGO_VAR,P103_IVA_PARCIAL,P103_AUX_IVA_ANT,P103_SUBTOTAL_PARCIAL,P103_GRAVADAS_PARCIAL,P103_EXENTAS_PARCIAL,P103_DESCUENTO,P103_AUX_RECARGO,P103_RECARGO,P103_PR'
||'ECIO_UNITARIO, P103_AUX_PORC_IVA,P103_AUX_PORC_IVA_AD,P103_PORC_DESCUENTO_DETALLE,P103_PORC_RECARGO_DETALLE,P103_CANTIDAD,P103_AUX_DESCUENTO,P103_COD_ARTICULO_DETALLE,P103_AUX_TOTAL_IVA,P103_AUX_IMPORTE_ANT'
,p_attribute_03=>'P103_AUX_MSJ,P103_AUX_RECARGO,P103_IVA_PARCIAL,P103_AUX_IVA_ANT,P103_SUBTOTAL_PARCIAL,P103_GRAVADAS_PARCIAL,P103_EXENTAS_PARCIAL,P103_PORCENTAJE_DESCUENTO,P103_RECARGO_PORC,P103_AUX_TOTAL_IVA,P103_AUX_IMPORTE_ANT,P103_AUX_MONTO_TOTAL,P103_AUX_MONTO_E'
||'XENTA,P103_AUX_MONTO_GRAVADA_10,P103_AUX_MONTO_GRAVADA_5,P103_AUX_CANTIDAD_UB,,P103_GRAVADAS,P103_EXENTAS'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(20572424879814016)
,p_event_id=>wwv_flow_imp.id(18018619253449024)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'&P103_AUX_MSJ.'
,p_attribute_02=>'Error'
,p_attribute_03=>'warning'
,p_attribute_04=>'fa-warning'
,p_attribute_06=>'Aceptar'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P103_AUX_MSJ'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(20572562961814017)
,p_event_id=>wwv_flow_imp.id(18018619253449024)
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
'       AND SEQ_ID = :P103_AUX_ABRE_DETALLE;   ',
'    IF NVL(TO_NUMBER(:P103_PORC_RECARGO_DETALLE),0) != NVL(VPORC_RECARGO,0) THEN',
'        BEGIN',
'            FOR CC IN (SELECT C001,C002,C003,C004,C005,C006,C007,C008,C010,C011,C012,C013,C014,C015,C016,C017,C018,C019,C020,C021,C022,C023,C024,C025,C026,C027,C028,C029, ',
'                              C030,C031,C032,C033,C034,C035,C036  ',
'                         FROM APEX_COLLECTIONS',
'                        WHERE COLLECTION_NAME = ''DET_COM''',
'                          AND SEQ_ID = :P103_AUX_ABRE_DETALLE)',
'            LOOP',
'                APEX_COLLECTION.UPDATE_MEMBER(P_COLLECTION_NAME => ''DET_COM'',P_SEQ  => :P103_AUX_ABRE_DETALLE,',
'                                               P_C001 => :P103_AUX_IMPORTE_ANT,   --:b_detalle.importe_ant ',
'                                               P_C002 => :P103_AUX_IVA_ANT,   --:b_detalle.iva_ant',
'                                               P_C003 => :P103_COD_ARTICULO_DETALLE, -- :b_detalle.cod_articulo',
'                                               P_C004 => CC.C004, -- :b_detalle.costo_promedio',
'                                               P_C005 => CC.C005, -- :b_detalle.costo_promedio_ref',
'                                               P_C006 => :P103_LOTE, --:b_detalle.nro_lote',
'                                               P_C007 => :P103_CANTIDAD, --b_detalle.cantidad  ',
'                                               P_C008 => :P103_AUX_CANT_VENDIDA, -- b_detalle.cantidad_vendida',
'                                               P_C010 => :P103_PRECIO_UNITARIO, --:b_detalle.precio_unitario',
'                                               P_C011 => :P103_AUX_PORC_IVA, --:b_detalle.porc_iva',
'                                               P_C012 => :P103_AUX_IND_RENTA, --:b_detalle.ind_renta ',
'                                               P_C013 => CC.C013, -- :b_detalle.precio_lista',
'                                               P_C014 => :P103_PORC_DESCUENTO_DETALLE, --:b_detalle.porc_descuento',
'                                               P_C015 => :P103_PORC_RECARGO_DETALLE, --:b_detalle.porc_recargo',
'                                               P_C016 => CC.C016, --:b_detalle.cod_iva ',
'                                               P_C017 => :P103_AUX_NRO_PROMO, -- :b_detalle.nro_promo',
'                                               P_C018 => :P103_AUX_TOTAL_IVA, -- :b_detalle.total_iva ',
'                                               P_C019 => CC.C019,P_C020 => CC.C020, ',
'                                               P_C021 => :P103_AUX_RECARGO,P_C022 => :P103_AUX_DESCUENTO,P_C023 => :P103_AUX_PORC_DESCUENTO_ANT,P_C024 => CC.C024, ',
'                                               P_C025 => CC.C025,P_C026 => CC.C026,P_C027 => :P103_AUX_MONTO_TOTAL,P_C028 => :P103_AUX_MONTO_EXENTA,P_C029 => :P103_AUX_MONTO_GRAVADA_10,',
'                                               P_C030 => :P103_AUX_MONTO_GRAVADA_5,P_C031 => :P103_AUX_CANTIDAD_UB,P_C032 => :P103_AUX_PORC_IVA_AD,P_C033 => CC.C033,',
'                                               P_C034 => :P103_AUX_COD_ARTICULO_REL_BON, --:b_detalle.cod_articulo_rel_bon   ',
'                                               P_C035 => :P103_AUX_DESCUENTO_MAXIMO, --:b_detalle.descuento_maximo                 ',
'                                               P_C036 => :P103_AUX_PORC_RECARGO_ANT);',
'            END LOOP;',
'            :P103_RECARGO_DET := :P103_AUX_RECARGO;',
'            :P103_DESCUENTO_DET := :P103_AUX_DESCUENTO; ',
'        EXCEPTION',
'            WHEN OTHERS THEN    ',
'                RAISE_APPLICATION_ERROR(-20000, ''Ha ocurrido un error al guardar el detalle.'');',
'        END;                                           ',
'    END IF;',
'END;    ',
''))
,p_attribute_02=>'P103_AUX_ABRE_DETALLE,P103_AUX_IMPORTE_ANT,P103_AUX_IVA_ANT,P103_COD_ARTICULO_DETALLE,P103_LOTE,P103_CANTIDAD,P103_AUX_CANT_VENDIDA,P103_PRECIO_UNITARIO, P103_AUX_PORC_DESCUENTO_ANT, P103_AUX_MONTO_TOTAL,P103_AUX_MONTO_EXENTA,P103_AUX_MONTO_GRAVADA_1'
||'0,P103_AUX_MONTO_GRAVADA_5,P103_AUX_CANTIDAD_UB, P103_AUX_PORC_IVA_AD,P103_AUX_COD_ARTICULO_REL_BON,P103_AUX_DESCUENTO_MAXIMO,P103_AUX_PORC_RECARGO_ANT, P103_AUX_PORC_IVA,P103_AUX_IND_RENTA,P103_PORC_DESCUENTO_DETALLE,P103_PORC_RECARGO_DETALLE,P103_A'
||'UX_NRO_PROMO,P103_AUX_TOTAL_IVA,P103_AUX_RECARGO,P103_AUX_DESCUENTO'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P103_AUX_MSJ'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(20572643857814018)
,p_event_id=>wwv_flow_imp.id(18018619253449024)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(16603320138666808)
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P103_AUX_MSJ'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(18371212158390508)
,p_name=>'DA_PRECIO_UNITARIO'
,p_event_sequence=>310
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P103_PRECIO_UNITARIO'
,p_bind_type=>'bind'
,p_bind_event_type=>'focusout'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(18371390298390509)
,p_event_id=>wwv_flow_imp.id(18371212158390508)
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
'       AND SEQ_ID = :P103_AUX_ABRE_DETALLE; ',
'    IF NVL(:P103_PRECIO_UNITARIO,0) != NVL(VPRECIO_UNITARIO,0) THEN',
'        BEGIN',
unistr('            :P103_AUX_DESCUENTO := 0; --si cambio el precio unitario no vuelve a calcular el descuento, y queda el del precio anterior, por las condiciones del procedimiento. Por eso eleg\00ED volver a 0 el descuento cuando hay un nuevo precio.'),
'            VTNOTCRE.calcula_descuento( :P103_AUX_PORC_DESCUENTO_ANT, :P103_PORC_DESCUENTO_DETALLE,:P103_CANTIDAD,:P103_PRECIO_UNITARIO,:P103_DECIMALES,:P103_AUX_DESCUENTO,:P103_PORC_RECARGO_DETALLE,:P103_AUX_DESCUENTO,:P103_AUX_PORC_DESCUENTO_ANT,:P'
||'103_AUX_RECARGO); ',
'            VTNOTCRE.CALCULOS (:P103_MULT,:P103_DIV,:P103_DECIMALES,:P103_RECARGO_VAR,:P103_IVA_PARCIAL,:P103_IVA_PARCIAL,:P103_AUX_IVA_ANT,:P103_AUX_IVA_ANT,',
'                               :P103_SUBTOTAL_PARCIAL,:P103_SUBTOTAL_PARCIAL,:P103_GRAVADAS_PARCIAL,:P103_GRAVADAS_PARCIAL,:P103_EXENTAS_PARCIAL,',
'                               :P103_EXENTAS_PARCIAL,:P103_PORCENTAJE_DESCUENTO,:P103_DESCUENTO,:P103_TOTAL_IVA,:P103_AJUSTE_IVA,:P103_SUBTOTAL,:P103_GRAVADAS,',
'                               :P103_AUX_RECARGO,:P103_RECARGO,:P103_EXENTAS,:P103_RECARGO_PORC,:P103_TOTAL,:P103_PRECIO_UNITARIO,:P103_AUX_PORC_IVA, ',
'                               :P103_AUX_PORC_IVA_AD,:P103_PORC_DESCUENTO_DETALLE,:P103_PORC_RECARGO_DETALLE,:P103_CANTIDAD,:P103_AUX_DESCUENTO, ',
'                               :P103_COD_ARTICULO_DETALLE,:P103_AUX_TOTAL_IVA,:P103_AUX_TOTAL_IVA,:P103_AUX_IMPORTE_ANT,:P103_AUX_IMPORTE_ANT,',
'                               :P103_AUX_MONTO_TOTAL,:P103_AUX_MONTO_EXENTA, :P103_AUX_MONTO_GRAVADA_10,:P103_AUX_MONTO_GRAVADA_5,:P103_AUX_CANTIDAD_UB);',
'        EXCEPTION',
'            WHEN OTHERS THEN',
'                RAISE_APPLICATION_ERROR(-20000,SQLERRM);                                       ',
'        END;',
'    END IF;',
'END;        ',
'',
'',
'',
'',
'',
''))
,p_attribute_02=>'P103_GRAVADAS_PARCIAL,P103_EXENTAS_PARCIAL,P103_DESCUENTO,P103_AUX_RECARGO,P103_RECARGO,P103_PRECIO_UNITARIO, P103_AUX_PORC_IVA,P103_AUX_PORC_IVA_AD,P103_PORC_DESCUENTO_DETALLE, P103_PORC_RECARGO_DETALLE,P103_CANTIDAD,P103_AUX_DESCUENTO,P103_COD_ARTI'
||'CULO_DETALLE,P103_AUX_TOTAL_IVA,P103_AUX_IMPORTE_ANT'
,p_attribute_03=>'P103_AUX_DESCUENTO,P103_AUX_PORC_DESCUENTO_ANT,P103_AUX_RECARGO,P103_IVA_PARCIAL,P103_AUX_IVA_ANT,P103_SUBTOTAL_PARCIAL,P103_GRAVADAS_PARCIAL,P103_EXENTAS_PARCIAL,P103_PORCENTAJE_DESCUENTO,P103_RECARGO_PORC,P103_AUX_TOTAL_IVA,P103_AUX_IMPORTE_ANT,P10'
||'3_AUX_MONTO_TOTAL,P103_AUX_MONTO_EXENTA,P103_AUX_MONTO_GRAVADA_10,P103_AUX_MONTO_GRAVADA_5,P103_AUX_CANTIDAD_UB,P103_SUBTOTAL,P103_TOTAL'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(20571511048814007)
,p_event_id=>wwv_flow_imp.id(18371212158390508)
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
'       AND SEQ_ID = :P103_AUX_ABRE_DETALLE; ',
'    IF NVL(:P103_PRECIO_UNITARIO,0) != NVL(VPRECIO_UNITARIO,0) THEN',
'        BEGIN',
'            FOR CC IN (SELECT C001,C002,C003,C004,C005,C006,C007,C008,C010,C011,C012,C013,C014,C015,C016,C017,C018,C019,C020,C021,C022,C023,C024,C025,C026,C027,C028,C029, ',
'                              C030,C031,C032,C033,C034,C035,C036  ',
'                         FROM APEX_COLLECTIONS',
'                        WHERE COLLECTION_NAME = ''DET_COM''',
'                          AND SEQ_ID = :P103_AUX_ABRE_DETALLE)',
'            LOOP',
'                APEX_COLLECTION.UPDATE_MEMBER(P_COLLECTION_NAME => ''DET_COM'',P_SEQ  => :P103_AUX_ABRE_DETALLE,',
'                                               P_C001 => :P103_AUX_IMPORTE_ANT,   --:b_detalle.importe_ant ',
'                                               P_C002 => :P103_AUX_IVA_ANT,   --:b_detalle.iva_ant',
'                                               P_C003 => :P103_COD_ARTICULO_DETALLE, -- :b_detalle.cod_articulo',
'                                               P_C004 => CC.C004, -- :b_detalle.costo_promedio',
'                                               P_C005 => CC.C005, -- :b_detalle.costo_promedio_ref',
'                                               P_C006 => :P103_LOTE, --:b_detalle.nro_lote',
'                                               P_C007 => :P103_CANTIDAD, --b_detalle.cantidad  ',
'                                               P_C008 => :P103_AUX_CANT_VENDIDA, -- b_detalle.cantidad_vendida',
'                                               P_C010 => :P103_PRECIO_UNITARIO, --:b_detalle.precio_unitario',
'                                               P_C011 => :P103_AUX_PORC_IVA, --:b_detalle.porc_iva',
'                                               P_C012 => :P103_AUX_IND_RENTA, --:b_detalle.ind_renta ',
'                                               P_C013 => CC.C013, -- :b_detalle.precio_lista',
'                                               P_C014 => :P103_PORC_DESCUENTO_DETALLE, --:b_detalle.porc_descuento',
'                                               P_C015 => :P103_PORC_RECARGO_DETALLE, --:b_detalle.porc_recargo',
'                                               P_C016 => CC.C016, --:b_detalle.cod_iva ',
'                                               P_C017 => :P103_AUX_NRO_PROMO, -- :b_detalle.nro_promo',
'                                               P_C018 => :P103_AUX_TOTAL_IVA, -- :b_detalle.total_iva ',
'                                               P_C019 => CC.C019, -- :b_detalle.ser_pedido ',
'                                               P_C020 => CC.C020, --  :b_detalle.nro_pedido',
'                                               P_C021 => :P103_AUX_RECARGO,P_C022 => :P103_AUX_DESCUENTO,',
'                                               P_C023 => :P103_AUX_PORC_DESCUENTO_ANT,P_C024 => CC.C024,P_C025 => CC.C025,P_C026 => CC.C026,',
'                                               P_C027 => :P103_AUX_MONTO_TOTAL,P_C028 => :P103_AUX_MONTO_EXENTA,P_C029 => :P103_AUX_MONTO_GRAVADA_10,',
'                                               P_C030 => :P103_AUX_MONTO_GRAVADA_5,P_C031 => :P103_AUX_CANTIDAD_UB,P_C032 => :P103_AUX_PORC_IVA_AD,P_C033 => CC.C033,',
'                                               P_C034 => :P103_AUX_COD_ARTICULO_REL_BON, --:b_detalle.cod_articulo_rel_bon   ',
'                                               P_C035 => :P103_AUX_DESCUENTO_MAXIMO, --:b_detalle.descuento_maximo                 ',
'                                               P_C036 => :P103_AUX_PORC_RECARGO_ANT);',
'            END LOOP;',
'            :P103_RECARGO_DET := :P103_AUX_RECARGO;',
'            :P103_DESCUENTO_DET := :P103_AUX_DESCUENTO; ',
'        EXCEPTION',
'            WHEN OTHERS THEN    ',
'                RAISE_APPLICATION_ERROR(-20000, ''Ha ocurrido un error al guardar el detalle.'');',
'        END;    ',
'    END IF;',
'END;                                               ',
''))
,p_attribute_02=>'P103_AUX_ABRE_DETALLE,P103_AUX_IMPORTE_ANT,P103_AUX_IVA_ANT,P103_COD_ARTICULO_DETALLE,P103_LOTE,P103_CANTIDAD,P103_AUX_CANT_VENDIDA,P103_PRECIO_UNITARIO, P103_AUX_PORC_DESCUENTO_ANT,P103_AUX_MONTO_TOTAL, P103_AUX_MONTO_EXENTA,P103_AUX_MONTO_GRAVADA_1'
||'0,P103_AUX_MONTO_GRAVADA_5,P103_AUX_CANTIDAD_UB, P103_AUX_PORC_IVA_AD,P103_AUX_COD_ARTICULO_REL_BON,P103_AUX_DESCUENTO_MAXIMO,P103_AUX_PORC_RECARGO_ANT, P103_AUX_PORC_IVA,P103_AUX_IND_RENTA,P103_PORC_DESCUENTO_DETALLE,P103_PORC_RECARGO_DETALLE,P103_A'
||'UX_NRO_PROMO,P103_AUX_TOTAL_IVA,P103_AUX_RECARGO,P103_AUX_DESCUENTO'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(20571601013814008)
,p_event_id=>wwv_flow_imp.id(18371212158390508)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(16603320138666808)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(18371569507390511)
,p_name=>'DA_PROMO'
,p_event_sequence=>330
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P103_PORC_DESCUENTO_DETALLE'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(18371677145390512)
,p_event_id=>wwv_flow_imp.id(18371569507390511)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'	vexiste varchar2(1) :=''N'';',
'begin		',
'--------------promos-----------------------',
'    :P103_AUX_MUESTRA_PROMO := 2;',
'    IF ((to_number(:P103_PORC_DESCUENTO_DETALLE) >= 99.90 and to_number(:P103_PORC_DESCUENTO_DETALLE) <= 99.99) or (:P103_PORC_DESCUENTO_DETALLE = 1)) and :P103_AUX_NRO_PROMO is  null then',
'    	begin',
'    		select ''S'' ',
'    		  into vexiste',
'    		  from st_promocion p',
'    		 where p.cod_empresa=:P103_COD_EMPRESA_VAR',
'        	   and p.cod_art_promo=:P103_COD_ARTICULO_DETALLE',
'    		   and rownum=''1'';',
'    	exception',
'    		when others then',
'    	  	    vexiste:=''N'';',
'    	end;',
'		if vexiste=''S'' then',
'			--calc_promo;',
'            :P103_AUX_MUESTRA_PROMO := 1;',
'		end if;	',
'    end if;	',
'end;',
'',
''))
,p_attribute_02=>'P103_PORC_DESCUENTO_DETALLE,P103_AUX_NRO_PROMO,P103_COD_EMPRESA_VAR,P103_COD_ARTICULO_DETALLE'
,p_attribute_03=>'P103_AUX_MUESTRA_PROMO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(18372215220390518)
,p_name=>'DA_NRO_PROMO'
,p_event_sequence=>340
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P103_NRO_PROMO'
,p_condition_element=>'P103_NRO_PROMO'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'focusout'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(18372375234390519)
,p_event_id=>wwv_flow_imp.id(18372215220390518)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P103_AUX_COD_ART_PROMO:= :P103_COD_ART_AUX;',
':P103_AUX_NRO_PROMO := :P103_NRO_PROMO;',
'      '))
,p_attribute_02=>'P103_NRO_PROMO,P103_COD_ART_AUX'
,p_attribute_03=>'P103_AUX_NRO_PROMO,P103_AUX_COD_ART_PROMO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(18372430583390520)
,p_event_id=>wwv_flow_imp.id(18372215220390518)
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
 p_id=>wwv_flow_imp.id(20572873341814020)
,p_event_id=>wwv_flow_imp.id(18372215220390518)
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
'                  AND SEQ_ID = :P103_AUX_ABRE_DETALLE)',
'    LOOP',
'        APEX_COLLECTION.UPDATE_MEMBER(P_COLLECTION_NAME => ''DET_COM'',',
'                                       P_SEQ  => :P103_AUX_ABRE_DETALLE,',
'                                       P_C001 => :P103_AUX_IMPORTE_ANT,   --:b_detalle.importe_ant ',
'                                       P_C002 => :P103_AUX_IVA_ANT,   --:b_detalle.iva_ant',
'                                       P_C003 => :P103_COD_ARTICULO_DETALLE, -- :b_detalle.cod_articulo',
'                                       P_C004 => CC.C004, -- :b_detalle.costo_promedio',
'                                       P_C005 => CC.C005, -- :b_detalle.costo_promedio_ref',
'                                       P_C006 => :P103_LOTE, --:b_detalle.nro_lote',
'                                       P_C007 => :P103_CANTIDAD, --b_detalle.cantidad  ',
'                                       P_C008 => :P103_AUX_CANT_VENDIDA, -- b_detalle.cantidad_vendida',
'                                       P_C010 => :P103_PRECIO_UNITARIO, --:b_detalle.precio_unitario',
'                                       P_C011 => :P103_AUX_PORC_IVA, --:b_detalle.porc_iva',
'                                       P_C012 => :P103_AUX_IND_RENTA, --:b_detalle.ind_renta ',
'                                       P_C013 => CC.C013, -- :b_detalle.precio_lista',
'                                       P_C014 => :P103_PORC_DESCUENTO_DETALLE, --:b_detalle.porc_descuento',
'                                       P_C015 => :P103_PORC_RECARGO_DETALLE, --:b_detalle.porc_recargo',
'                                       P_C016 => CC.C016, --:b_detalle.cod_iva ',
'                                       P_C017 => :P103_AUX_NRO_PROMO, -- :b_detalle.nro_promo',
'                                       P_C018 => :P103_AUX_TOTAL_IVA, -- :b_detalle.total_iva ',
'                                       P_C019 => CC.C019, -- :b_detalle.ser_pedido ',
'                                       P_C020 => CC.C020, --  :b_detalle.nro_pedido',
'                                       P_C021 => :P103_AUX_RECARGO,',
'                                       P_C022 => :P103_AUX_DESCUENTO,',
'                                       P_C023 => :P103_AUX_PORC_DESCUENTO_ANT,',
'                                       P_C024 => CC.C024, ',
'                                       P_C025 => CC.C025, ',
'                                       P_C026 => CC.C026,',
'                                       P_C027 => :P103_AUX_MONTO_TOTAL,  ',
'                                       P_C028 => :P103_AUX_MONTO_EXENTA,',
'                                       P_C029 => :P103_AUX_MONTO_GRAVADA_10,',
'                                       P_C030 => :P103_AUX_MONTO_GRAVADA_5,',
'                                       P_C031 => :P103_AUX_CANTIDAD_UB,',
'                                       P_C032 => :P103_AUX_PORC_IVA_AD,',
'                                       P_C033 => CC.C033,',
'                                       P_C034 => :P103_AUX_COD_ARTICULO_REL_BON, --:b_detalle.cod_articulo_rel_bon   ',
'                                       P_C035 => :P103_AUX_DESCUENTO_MAXIMO, --:b_detalle.descuento_maximo                 ',
'                                       P_C036 => :P103_AUX_PORC_RECARGO_ANT);',
'    END LOOP;',
'    :P103_RECARGO_DET := :P103_AUX_RECARGO;',
'    :P103_DESCUENTO_DET := :P103_AUX_DESCUENTO; ',
'EXCEPTION',
'    WHEN OTHERS THEN    ',
'        RAISE_APPLICATION_ERROR(-20000, ''Ha ocurrido un error al guardar el detalle.'');',
'END;                                           ',
''))
,p_attribute_02=>'P103_AUX_ABRE_DETALLE,P103_AUX_ABRE_DETALLE,P103_AUX_IMPORTE_ANT,P103_AUX_IVA_ANT,P103_COD_ARTICULO_DETALLE,P103_LOTE,P103_CANTIDAD,P103_AUX_CANT_VENDIDA,P103_PRECIO_UNITARIO, P103_AUX_PORC_DESCUENTO_ANT,P103_AUX_MONTO_TOTAL,P103_AUX_MONTO_EXENTA,P10'
||'3_AUX_MONTO_GRAVADA_10,P103_AUX_MONTO_GRAVADA_5,P103_AUX_CANTIDAD_UB, P103_AUX_PORC_IVA_AD,P103_AUX_COD_ARTICULO_REL_BON,P103_AUX_DESCUENTO_MAXIMO,P103_AUX_PORC_RECARGO_ANT'
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
 p_id=>wwv_flow_imp.id(18372684668390522)
,p_name=>'DA_MUESTRA_PROMO'
,p_event_sequence=>350
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P103_AUX_MUESTRA_PROMO'
,p_condition_element=>'P103_AUX_MUESTRA_PROMO'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'1'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(18372778820390523)
,p_event_id=>wwv_flow_imp.id(18372684668390522)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P103_NRO_PROMO'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(18372826482390524)
,p_event_id=>wwv_flow_imp.id(18372684668390522)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P103_NRO_PROMO'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(18372970215390525)
,p_name=>'DA_DIR_CLIENTE'
,p_event_sequence=>360
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P103_DIR_CLIENTE'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(18373040411390526)
,p_event_id=>wwv_flow_imp.id(18372970215390525)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_02=>'P103_DIR_CLIENTE'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(18375495772390550)
,p_name=>'DA_ASIGNA_VALOR_DESCUENTO_DET'
,p_event_sequence=>370
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P103_DESCUENTO_DET'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(20405727459847801)
,p_event_id=>wwv_flow_imp.id(18375495772390550)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>':P103_AUX_DESCUENTO_DET := :P103_DESCUENTO_DET;'
,p_attribute_02=>'P103_DESCUENTO_DET'
,p_attribute_03=>'P103_AUX_DESCUENTO_DET'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(20405825099847802)
,p_name=>'DA_ASIGNA_VALOR_RECARGO_DET'
,p_event_sequence=>380
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P103_RECARGO_DET'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(20405973847847803)
,p_event_id=>wwv_flow_imp.id(20405825099847802)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>':P103_AUX_RECARGO_DET := :P103_RECARGO_DET;'
,p_attribute_02=>'P103_RECARGO_DET'
,p_attribute_03=>'P103_AUX_RECARGO_DET'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(20406144214847805)
,p_name=>'DA_ASIGNA_VALOR_TOTAL'
,p_event_sequence=>390
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P103_TOTAL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(208556628881354605)
,p_event_id=>wwv_flow_imp.id(20406144214847805)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'null;'
,p_attribute_02=>'P103_TOTAL'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(20406251532847806)
,p_event_id=>wwv_flow_imp.id(20406144214847805)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>':P103_AUX_TOTAL := :P103_TOTAL;'
,p_attribute_02=>'P103_TOTAL'
,p_attribute_03=>'P103_AUX_TOTAL'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(20406414620847808)
,p_name=>'DA_ASIGNA_VALOR_AJUSTE_IVA'
,p_event_sequence=>400
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P103_AJUSTE_IVA'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(20406525903847809)
,p_event_id=>wwv_flow_imp.id(20406414620847808)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>':P103_AUX_AJUSTE_IVA := :P103_AJUSTE_IVA;'
,p_attribute_02=>'P103_AJUSTE_IVA'
,p_attribute_03=>'P103_AUX_AJUSTE_IVA'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(20406841763847812)
,p_name=>'DA_ASIGNA_VALOR_TOTAL_IVA'
,p_event_sequence=>410
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P103_TOTAL_IVA'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(20406949128847813)
,p_event_id=>wwv_flow_imp.id(20406841763847812)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>':P103_AUX_TOTAL_IVA1 := :P103_TOTAL_IVA;'
,p_attribute_02=>'P103_TOTAL_IVA'
,p_attribute_03=>'P103_AUX_TOTAL_IVA1'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(20407097433847814)
,p_name=>'DA_ASIGNA_VALOR_SUBTOTAL'
,p_event_sequence=>420
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P103_SUBTOTAL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(20407116386847815)
,p_event_id=>wwv_flow_imp.id(20407097433847814)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>':P103_AUX_SUBTOTAL := :P103_SUBTOTAL;'
,p_attribute_02=>'P103_SUBTOTAL'
,p_attribute_03=>'P103_AUX_SUBTOTAL'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(20407481937847818)
,p_name=>'DA_ASIGNA_VALOR_EXENTAS'
,p_event_sequence=>430
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P103_EXENTAS'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(20407508197847819)
,p_event_id=>wwv_flow_imp.id(20407481937847818)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>':P103_AUX_EXENTAS := :P103_EXENTAS;'
,p_attribute_02=>'P103_EXENTAS'
,p_attribute_03=>'P103_AUX_EXENTAS'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(20407630679847820)
,p_name=>'DA_ASIGNA_VALOR_GRAVADAS'
,p_event_sequence=>440
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P103_GRAVADAS'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(20407725257847821)
,p_event_id=>wwv_flow_imp.id(20407630679847820)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>':P103_AUX_GRAVADAS := :P103_GRAVADAS;'
,p_attribute_02=>'P103_GRAVADAS'
,p_attribute_03=>'P103_AUX_GRAVADAS'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(21769095313343301)
,p_name=>'DA_SOLO_NUM1'
,p_event_sequence=>450
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P103_CANTIDAD,P103_PRECIO_UNITARIO,P103_PORC_DESCUENTO_DETALLE,P103_PORC_RECARGO_DETALLE'
,p_bind_type=>'bind'
,p_bind_event_type=>'keypress'
,p_display_when_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(21769107571343302)
,p_event_id=>wwv_flow_imp.id(21769095313343301)
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
 p_id=>wwv_flow_imp.id(180066608079113219)
,p_name=>'DA_ASIGNA_VALOR_DESCUENTO_DET'
,p_event_sequence=>460
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P103_DESCUENTO_DET'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(180066764729113220)
,p_event_id=>wwv_flow_imp.id(180066608079113219)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>':P103_AUX_DESCUENTO_DET := :P103_DESCUENTO_DET;'
,p_attribute_02=>'P103_DESCUENTO_DET'
,p_attribute_03=>'P103_AUX_DESCUENTO_DET'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(180066804848113221)
,p_name=>'DA_ASIGNA_VALOR_RECARGO_DET'
,p_event_sequence=>470
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P103_RECARGO_DET'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(180066988335113222)
,p_event_id=>wwv_flow_imp.id(180066804848113221)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>':P103_AUX_RECARGO_DET := :P103_RECARGO_DET;'
,p_attribute_02=>'P103_RECARGO_DET'
,p_attribute_03=>'P103_AUX_RECARGO_DET'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(180067006847113223)
,p_name=>'DA_ASIGNA_VALOR_EXENTAS'
,p_event_sequence=>480
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P103_EXENTAS'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(180067182487113224)
,p_event_id=>wwv_flow_imp.id(180067006847113223)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>':P103_AUX_EXENTAS := :P103_EXENTAS;'
,p_attribute_02=>'P103_EXENTAS'
,p_attribute_03=>'P103_AUX_EXENTAS'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(180067260211113225)
,p_name=>'DA_ASIGNA_VALOR_GRAVADAS'
,p_event_sequence=>490
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P103_GRAVADAS'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(180067305471113226)
,p_event_id=>wwv_flow_imp.id(180067260211113225)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>':P103_AUX_GRAVADAS := :P103_GRAVADAS;'
,p_attribute_02=>'P103_GRAVADAS'
,p_attribute_03=>'P103_AUX_GRAVADAS'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(180067428057113227)
,p_name=>'DA_ASIGNA_VALOR_SUBTOTAL'
,p_event_sequence=>500
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P103_SUBTOTAL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(180067519993113228)
,p_event_id=>wwv_flow_imp.id(180067428057113227)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>':P103_AUX_SUBTOTAL := :P103_SUBTOTAL;'
,p_attribute_02=>'P103_SUBTOTAL'
,p_attribute_03=>'P103_AUX_SUBTOTAL'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(180067806658113231)
,p_name=>'DA_ASIGNA_VALOR_TOTAL_IVA'
,p_event_sequence=>510
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P103_TOTAL_IVA'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(180067978636113232)
,p_event_id=>wwv_flow_imp.id(180067806658113231)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>':P103_AUX_TOTAL_IVA1 := :P103_TOTAL_IVA;'
,p_attribute_02=>'P103_TOTAL_IVA'
,p_attribute_03=>'P103_AUX_TOTAL_IVA1'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(180068060746113233)
,p_name=>'DA_ASIGNA_VALOR_AJUSTE_IVA'
,p_event_sequence=>520
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P103_AJUSTE_IVA'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(180068143229113234)
,p_event_id=>wwv_flow_imp.id(180068060746113233)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>':P103_AUX_AJUSTE_IVA := :P103_AJUSTE_IVA;'
,p_attribute_02=>'P103_AJUSTE_IVA'
,p_attribute_03=>'P103_AUX_AJUSTE_IVA'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(180068208623113235)
,p_name=>'DA_ASIGNA_VALOR_TOTAL'
,p_event_sequence=>530
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P103_TOTAL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(208556784764354606)
,p_event_id=>wwv_flow_imp.id(180068208623113235)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'null;'
,p_attribute_02=>'P103_TOTAL'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(180068307377113236)
,p_event_id=>wwv_flow_imp.id(180068208623113235)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>':P103_AUX_TOTAL := :P103_TOTAL;'
,p_attribute_02=>'P103_TOTAL'
,p_attribute_03=>'P103_AUX_TOTAL'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(208556812000354607)
,p_name=>'New'
,p_event_sequence=>540
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P103_AUX_TOTAL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(208556998478354608)
,p_event_id=>wwv_flow_imp.id(208556812000354607)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'null;'
,p_attribute_02=>'P103_AUX_TOTAL'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(210018624921258511)
,p_name=>'DA_ACCION_CONSULTA'
,p_event_sequence=>540
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P103_ACCION_CONSULTA'
,p_condition_element=>'P103_ACCION_CONSULTA'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'1'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(210551538010102716)
,p_event_id=>wwv_flow_imp.id(210018624921258511)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'  SELECT cod_sucursal, fec_comprobante, cod_cliente, cod_vendedor,',
'         tip_comprobante_ref, ser_comprobante_ref, nro_comprobante_ref,',
'         cod_condicion_venta, cod_lista_precio, descuento, cod_moneda,',
'         tip_cambio, tot_comprobante, tot_gravadas, tot_exentas, tot_iva,',
'         nro_mov_caj, estado, fec_estado, cod_usuario, cambio_moneda_precio,',
'         tip_cambio_compra, comentario, gru_comprobante, cod_sector,',
'         tel_cliente, columna, ruc, dir_cliente, cod_direccion, ajuste_iva,',
'         cod_custodio, cod_condicion_venta_fac, ind_exento_ad, hora_alta,',
'         recargo, tip_ot, ser_ot, nro_ot, IND_AFECTA_GUARDA',
'    INTO :p103_cod_sucursal, :p103_fec_comprobante, :p103_cod_cliente,',
'         :p103_cod_vendedor, :p103_tip_comprobante_ref,',
'         :p103_ser_comprobante_ref, :p103_nro_comprobante_ref,',
'         :p103_cod_condicion_venta, :p103_cod_lista_precio, :p103_descuento,',
'         :p103_cod_moneda, :p103_tip_cambio, :p103_total, :p103_gravadas,',
'         :p103_exentas, :p103_total_iva, :p103_nro_mov_caj, :p103_estado,',
'         :p103_fec_estado, :p103_cod_usuario, :p103_cambio_moneda_precio,',
'         :p103_tip_cambio_compra, :p103_comentario, :p103_gru_comprobante,',
'         :p103_cod_sector, :p103_tel_cliente, :p103_columna, :p103_ruc,',
'         :p103_dir_cliente, :p103_cod_direccion, :p103_ajuste_iva,',
'         :p103_cod_custodio, :p103_condicion_venta_fac, :p103_ind_exento_ad,',
'         :p103_hora_alta, :p103_recargo, :p103_tip_ot, :p103_ser_ot,',
'         :p103_nro_ot,:P103_IND_AFECTA_GUARDA',
'    FROM vt_comprobantes_cabecera',
'   WHERE cod_empresa = :p103_cod_empresa_var',
'     AND tip_comprobante = :p103_tip_comprobante',
'     AND ser_comprobante = :p103_ser_comprobante',
'     AND nro_comprobante = :p103_nro_comprobante;',
'',
'  :p103_estado_ant := :p103_estado;',
'',
'  BEGIN',
'    SELECT cl.tipo_impuesto',
'      INTO :p103_tipo_impuesto',
'      FROM cc_clientes cl, personas pe',
'     WHERE cl.cod_empresa = :p103_cod_empresa_var',
'       AND cl.cod_cliente = :p103_cod_cliente',
'       AND cl.cod_persona = pe.cod_persona;',
'  EXCEPTION',
'    WHEN OTHERS THEN',
'      NULL;',
'  END;',
'  :p103_subtotal         := nvl(:p103_total, 0) - nvl(:p103_total_iva, 0) -',
'                            nvl(:p103_ajuste_iva, 0);',
'  :p103_subtotal_parcial := :p103_subtotal;',
'  :p103_iva_parcial      := :p103_total_iva;',
'  :p103_gravadas_parcial := :p103_gravadas;',
'  :p103_exentas_parcial  := :p103_exentas;',
'  :p103_aux_gravadas     := :p103_gravadas;',
'  :p103_aux_exentas      := :p103_exentas;',
'  :p103_aux_ajuste_iva   := :p103_ajuste_iva;',
'  :p103_aux_total_iva1   := :p103_total_iva;',
'  :p103_aux_total        := nvl(:p103_total, 0);',
'',
'EXCEPTION',
'  WHEN OTHERS THEN',
'    raise_application_error(-20000,',
unistr('                            ''Ocurri\00F3 un error al cargar la cabecera snc. '' ||'),
'                             SQLERRM);',
'END;',
''))
,p_attribute_02=>'P103_COD_EMPRESA_VAR,P103_TIP_COMPROBANTE,P103_SER_COMPROBANTE,P103_NRO_COMPROBANTE,P103_GRAVADAS,P103_EXENTAS,P103_AJUSTE_IVA,P103_TOTAL_IVA,P103_TOTAL'
,p_attribute_03=>'P103_SUBTOTAL_PARCIAL,P103_IVA_PARCIAL,P103_GRAVADAS_PARCIAL,P103_EXENTAS_PARCIAL,P103_TIPO_IMPUESTO,P103_ESTADO_ANT,P103_COD_SUCURSAL,P103_FEC_COMPROBANTE,P103_COD_CLIENTE,P103_COD_VENDEDOR,P103_TIP_COMPROBANTE_REF,P103_SER_COMPROBANTE_REF,P103_NRO_'
||'COMPROBANTE_REF, P103_COD_CONDICION_VENTA,P103_COD_LISTA_PRECIO,P103_DESCUENTO,P103_COD_MONEDA,P103_TIP_CAMBIO,P103_NRO_MOV_CAJ,P103_ESTADO,P103_FEC_ESTADO,P103_COD_USUARIO, P103_CAMBIO_MONEDA_PRECIO,P103_TIP_CAMBIO_COMPRA,P103_COMENTARIO,P103_GRU_CO'
||'MPROBANTE,P103_COD_SECTOR,P103_TEL_CLIENTE, P103_COLUMNA,P103_RUC,P103_DIR_CLIENTE,P103_COD_DIRECCION,P103_COD_CUSTODIO,P103_CONDICION_VENTA_FAC,P103_IND_EXENTO_AD,P103_HORA_ALTA,P103_RECARGO,P103_TIP_OT,P103_SER_OT,P103_NRO_OT,P103_SUBTOTAL,P103_AUX'
||'_GRAVADAS,P103_AUX_EXENTAS,P103_AUX_AJUSTE_IVA,P103_AUX_TOTAL_IVA1,P103_AUX_TOTAL,P103_IND_AFECTA_GUARDA'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(210551604095102717)
,p_event_id=>wwv_flow_imp.id(210018624921258511)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    VDESC_ARTICULO VARCHAR2(100);',
'    VCOD_GRUPO_ART VARCHAR2(5); ',
'    VCOD_MONEDA_BASE VARCHAR2(5);',
'BEGIN',
'APEX_COLLECTION.CREATE_OR_TRUNCATE_COLLECTION(P_COLLECTION_NAME => ''DET_COM'');',
'    FOR CC IN (SELECT COD_ARTICULO,CANTIDAD,PRECIO_UNITARIO,PRECIO_LISTA,DESCUENTO,MONTO_TOTAL,TOTAL_IVA,COSTO_PROMEDIO,COSTO_PROMEDIO_REF, ',
'                      CANTIDAD_UB,PORC_DESCUENTO,COD_UNIDAD_MEDIDA,NRO_LOTE,PORC_RECARGO,RECARGO,PORC_IVA,IND_RENTA,COD_IVA,PORC_IVA_AD,NRO_PROMO,SER_PEDIDO,NRO_PEDIDO,',
'                      MONTO_EXENTA,MONTO_GRAVADA_5,MONTO_GRAVADA_10',
'                 FROM VT_COMPROBANTES_DETALLE',
'                WHERE cod_empresa = :P103_COD_EMPRESA_VAR ',
'                  and tip_comprobante = :P103_TIP_COMPROBANTE ',
'                  and ser_comprobante = :P103_SER_COMPROBANTE ',
'                  and nro_comprobante = :P103_NRO_COMPROBANTE) ',
'    LOOP',
'        Begin',
'            select descripcion, cod_grupo_art, cod_moneda_base',
'              into VDESC_ARTICULO, VCOD_GRUPO_ART, VCOD_MONEDA_BASE',
'              from st_articulos',
'             where cod_empresa = :P103_COD_EMPRESA_VAR',
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
'                                               P_C025 => VCOD_GRUPO_ART,',
'                                               P_C026 => VCOD_MONEDA_BASE,',
'                                               P_C027 => CC.MONTO_TOTAL,',
'                                               P_C028 => CC.MONTO_EXENTA,',
'                                               P_C029 => CC.MONTO_GRAVADA_10, ',
'                                               P_C030 => CC.MONTO_GRAVADA_5,',
'                                               P_C031 => CC.CANTIDAD_UB,',
'                                               P_C032 => CC.PORC_IVA_AD,',
'                                               P_C033 => CC.COD_UNIDAD_MEDIDA); ',
'        :P103_RECARGO_DET := CC.RECARGO;',
'        :P103_DESCUENTO_DET := CC.DESCUENTO;                                        ',
'    END LOOP;                                             ',
'EXCEPTION',
'    WHEN OTHERS THEN',
unistr('        RAISE_APPLICATION_ERROR(-20000, ''Ocurri\00F3 un error al cargar el detalle. ''||sqlerrm);'),
'END; '))
,p_attribute_02=>'P103_COD_EMPRESA_VAR,P103_TIP_COMPROBANTE,P103_SER_COMPROBANTE,P103_NRO_COMPROBANTE'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(210551778720102718)
,p_event_id=>wwv_flow_imp.id(210018624921258511)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P103_ESTADO'
,p_client_condition_type=>'NOT_EQUALS'
,p_client_condition_element=>'P103_PERMITE_ANULAR'
,p_client_condition_expression=>'S'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(210551880422102719)
,p_event_id=>wwv_flow_imp.id(210018624921258511)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(16603320138666808)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(210551923905102720)
,p_event_id=>wwv_flow_imp.id(210018624921258511)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(18374251101390538)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(210552090095102721)
,p_event_id=>wwv_flow_imp.id(210018624921258511)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(17138328996007725)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(210552116354102722)
,p_event_id=>wwv_flow_imp.id(210018624921258511)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(17136521258007707)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(210019740912258522)
,p_event_id=>wwv_flow_imp.id(210018624921258511)
,p_event_result=>'TRUE'
,p_action_sequence=>80
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>':P103_ACCION_CONSULTA:=NULL;'
,p_attribute_03=>'P103_ACCION_CONSULTA'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(210018846004258513)
,p_name=>'DA_SET_CONSULTA'
,p_event_sequence=>550
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P103_ACCION_CONSULTA'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(210019034308258515)
,p_event_id=>wwv_flow_imp.id(210018846004258513)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_02=>'P103_ACCION_CONSULTA'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(208557647470354615)
,p_name=>'da_permiso_descuento'
,p_event_sequence=>560
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P103_CARGA_DESCUENTOS'
,p_condition_element=>'P103_CARGA_DESCUENTOS'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'N'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(208557765026354616)
,p_event_id=>wwv_flow_imp.id(208557647470354615)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P103_AUX_PORC_DESCUENTO_ANT,P103_PORC_DESCUENTO_DETALLE'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(208557930999354618)
,p_event_id=>wwv_flow_imp.id(208557647470354615)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P103_AUX_PORC_DESCUENTO_ANT,P103_PORC_DESCUENTO_DETALLE'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(920103159998595336)
,p_name=>'DA_IMPRESION'
,p_event_sequence=>570
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(920103291413595337)
,p_event_id=>wwv_flow_imp.id(920103159998595336)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select f.valor',
'  INTO :P103_P_NOM_FAC',
'  from parametros_generales f ',
' WHERE F.PARAMETRO = ''NCR_REP_NOMB''||:P_COD_EMPRESA',
'   AND F.COD_MODULO = ''VT'';'))
,p_attribute_03=>'P103_P_NOM_FAC'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(15762490774998215)
,p_process_sequence=>20
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_INIT'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'--PRE-FORM',
':P_COD_MODULO := ''VT'';',
'',
'',
'--INICIALIZA GLOBALES',
':P103_COD_EMPRESA_VAR := :P_COD_EMPRESA;',
':P103_COD_USUARIO_VAR := nvl(:P_COD_USUARIO, :APP_USER);',
':P103_COD_MODULO_VAR := :P_COD_MODULO;',
':P103_COD_SUCURSAL_VAR := NVL(:P_COD_SUCURSAL, ''01'');',
'',
'--INICIALIZA LOCALES',
':P103_DERECHOS  := utils.derecho_forma(:P103_COD_USUARIO_VAR,',
'                                           ''VTNOTCRE'');',
'--PROVISORIO',
'--IF :P103_DERECHOS = ''NNNN'' THEN',
'  --  raise_application_error(-20000, ''El usuario '' || :P103_COD_USUARIO_VAR ||'' no posee permisos para acceder a este formulario. Formulario: VTNOTCRE'');                                           ',
'--END IF;',
'',
'--PRE-FORM',
':P103_IMP_VAR               :=''C'';',
':P103_SER_COMPROBANTE_VAR   := bs_busca_parametro( :P103_COD_MODULO_VAR, ''SERIE_CONTADO'' );',
':P103_LISTA_PRECIOS_VAR     := bs_busca_parametro( :P103_COD_MODULO_VAR, ''PRECIO_CONTADO'' );',
':P103_CONDICION_VENTA_VAR   := bs_busca_parametro( :P103_COD_MODULO_VAR, ''CONDICION_CONTADO'' );',
':P103_MODIFICA_PRECIOS_VAR  := bs_busca_parametro( :P103_COD_MODULO_VAR, ''MODIFICA_PRECIOS'' );',
':P103_TIP_COMPROBANTE_VAR   := bs_busca_parametro( :P103_COD_MODULO_VAR, ''TIPO_NOTACRE'' );',
':P103_TIP_CONTADO_VAR       := bs_busca_parametro( :P103_COD_MODULO_VAR, ''TIPO_CONTADO'' );',
':P103_TIP_CREDITO_VAR       := bs_busca_parametro( :P103_COD_MODULO_VAR, ''TIPO_CREDITO'' );',
':P103_TIP_CVENTA_VAR        := bs_busca_parametro( :P103_COD_MODULO_VAR, ''TIPO_CVENTA'' );',
':P103_COD_MONEDA_PRECIO     := bs_busca_parametro( :P103_COD_MODULO_VAR, ''COD_MONEDA_DOL'' );',
':P103_COD_CLIENTE_OCA       := bs_busca_parametro( :P103_COD_MODULO_VAR, ''COD_CLIENTE_OCASION'' ) ;',
':P103_COD_MONEDA_BASE_VAR   := bs_busca_parametro( :P103_COD_MODULO_VAR, ''COD_MONEDA_BASE'' );',
':P103_VARIACION_MENOS_VAR   := bs_busca_parametro( :P103_COD_MODULO_VAR, ''VARIACION_MENOS''    ) ;',
':P103_VARIACION_MAS_VAR     := bs_busca_parametro( :P103_COD_MODULO_VAR, ''VARIACION_MAS''      ) ;',
':P103_UNIDAD_MEDIDA_VAR     := bs_busca_parametro( :P103_COD_MODULO_VAR, ''UNIDAD_MEDIDA_DEF''  ) ;',
':P103_MONTO_AJUSTE_MAX_VAR  := to_number( ltrim( rtrim( bs_busca_parametro( :P103_COD_MODULO_VAR, ''MONTO_AJUSTE_MAX'' ) ) ) ) ;',
':P103_VIENE_DEL_LOTE_VAR    := ''N'' ;',
':P103_FEC_VENCIMIENTO_VAR   := to_date( bs_busca_parametro( :P103_COD_MODULO_VAR, ''FECHA LOTE DEFECTO'' ), ''dd/mm/yyyy'' ) ;',
':P103_LOTE_DEFECTO_VAR      := bs_busca_parametro( :P103_COD_MODULO_VAR, ''LOTE POR DEFECTO'' ) ;',
':P103_RECARGO_VAR           :=  bs_busca_parametro( :P103_COD_MODULO_VAR, ''RECARGO_ARTICULO''    ) ;',
'',
':P103_PORC_IVA_VAR := vtnotcre.PORC_IVA_VENTA(P_COD_MODULO => :P103_COD_MODULO_VAR);',
'',
':P103_CAMBIA_NUMERO_FAC := busca_permiso(:P103_COD_EMPRESA_VAR,',
'                                             ''VTNOTCRE'',',
'                                             :P103_COD_USUARIO_VAR,',
'                                             ''CAMBIA_NUMERO_FAC'' ) ;',
'',
':P103_CARGA_SUCURSAL := busca_permiso( :P103_COD_EMPRESA_VAR,',
'                                            ''VTNOTCRE'',',
'                                            :P103_COD_USUARIO_VAR,',
'                                            ''CARGA_SUCURSAL'' ) ;',
'',
':P103_PERMITE_ANULAR  := busca_permiso( :P103_COD_EMPRESA_VAR,',
'                                        ''VTNOTCRE'',',
'                                        :P103_COD_USUARIO_VAR,',
'                                        ''PERMITE ANULAR'' );',
'',
':P103_CARGA_DESCUENTOS  := busca_permiso( :P103_COD_EMPRESA_VAR,',
'                                          ''VTNOTCRE'',',
'                                          :P103_COD_USUARIO_VAR,',
'                                          ''CARGA DESCUENTOS'' );',
'                                                        ',
':P103_REIMPRIME  := busca_permiso( :P103_COD_EMPRESA_VAR, ',
'                                   ''VTNOTCRE'', ',
'                                   :P103_COD_USUARIO_VAR, ',
'                                   ''REIMPRIME_NCR'' ) ; ',
'                                   ',
'--IF :P103_NRO_OT IS NULL THEN                                  ',
':P103_COD_SUCURSAL_CENTRAL_VAR := vtnotcre.codigo_sucursal_central(:P103_COD_EMPRESA_VAR, :P103_COD_SUCURSAL_VAR);',
'--END IF;',
'                                 ',
'/* FALTA-------------',
'  BEGIN',
'    select lineas',
'      into :variables.lineas_max',
'      from tipos_comprobantes',
'     where cod_empresa = :variables.cod_empresa',
'       and tip_comprobante = :variables.tip_comprobante;',
'  EXCEPTION',
'    when others then',
'      :variables.lineas_max := 15;',
'  END;',
'if nvl( :variables.lineas_max, 0 ) = 0 then',
'    :variables.lineas_max := 15;',
'  end if;',
'',
'  begin',
'     select lineas ',
'       into :variables.lineas_max',
'       from tipos_comprobantes',
'       where tip_comprobante = :variables.tip_contado ;',
'  exception',
'     when others then',
'       :variables.lineas_max := 12 ;',
'  end ;',
'',
'  if nvl( :variables.lineas_max, 0 ) = 0 then',
'    :variables.lineas_max := 12 ;',
'  end if ;*/                                   ',
'',
unistr(':P103_USA_UM_DEF := vtnotcre.trae_um_def( :P103_COD_SUCURSAL_VAR, :P103_COD_EMPRESA_VAR) ; --en la funci\00F3n usa sucursal de la cabecera...'),
':P103_COD_CUSTODIO_VAR := vtnotcre.busca_custodio( :P103_COD_EMPRESA_VAR, :P103_COD_USUARIO_VAR);',
'',
' APEX_COLLECTION.CREATE_OR_TRUNCATE_COLLECTION(P_COLLECTION_NAME => ''DET_COM'');',
'--:P103_ESTADO := ''P'';'))
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
 p_id=>wwv_flow_imp.id(16606478620666839)
,p_process_sequence=>30
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_INIT_CABECERA'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P103_TIP_COMPROBANTE := :P103_TIP_COMPROBANTE_VAR;',
'IF :P103_NRO_OT IS NULL THEN  ',
':P103_COD_SUCURSAL := :P103_COD_SUCURSAL_VAR;',
'END IF;',
':P103_COD_USUARIO := :P103_COD_USUARIO_VAR;',
':P103_GRU_COMPROBANTE := ''NCR'' ;',
':P103_FEC_COMPROBANTE := trae_fecha( :P103_COD_EMPRESA_VAR, :P103_COD_MODULO_VAR);',
':P103_SER_COMPROBANTE := ''A'';',
'',
'-------------------------',
':P103_AUX_MONTO_TOTAL:= 0;',
':P103_PRECIO_UNITARIO:= 0;',
':P103_AUX_TOTAL_IVA:= 0;',
':P103_AUX_PORC_DESCUENTO_ANT:= 0;',
':P103_AUX_MONTO_GRAVADA_10:= 0;',
':P103_AUX_IVA_ANT:= 0;',
':P103_AUX_IMPORTE_ANT:= 0;',
':P103_AUX_DESCUENTO:= 0;',
':P103_AUX_MONTO_GRAVADA_10:= 0;',
' :P103_PORC_DESCUENTO_DETALLE:= 0;',
':P103_IVA_PARCIAL:= 0;',
':P103_SUBTOTAL_PARCIAL:= 0;',
':P103_GRAVADAS_PARCIAL:= 0;',
':P103_EXENTAS_PARCIAL:= 0;',
':P103_PORCENTAJE_DESCUENTO:= 0;',
':P103_DESCUENTO:= 0;',
':P103_TOTAL_IVA:= 0;',
':P103_AJUSTE_IVA:= 0;',
':P103_SUBTOTAL:= 0;',
':P103_GRAVADAS:= 0;',
':P103_EXENTAS:= 0;',
':P103_RECARGO_PORC:= 0;',
':P103_TOTAL:= 0;',
':P103_DESCUENTO_DET:= 0;',
':P103_RECARGO_DET:= 0;',
'-------------------------',
':P103_TOTAL := 0;',
':P103_AUX_SUBTOTAL:= 0;',
':P103_AUX_GRAVADAS:= 0;',
':P103_AUX_EXENTAS:= 0;',
':P103_TOTAL_IVA := 0;',
':P103_IVA_PARCIAL := 0;',
':P103_SUBTOTAL := 0;',
':P103_AUX_TOTAL:= 0;',
':P103_SUBTOTAL_PARCIAL := 0;',
':P103_GRAVADAS := 0;',
':P103_GRAVADAS_SUBTOTAL := 0;',
':P103_AUX_TOTAL_IVA1:= 0;',
':P103_EXENTAS := 0;',
':P103_EXENTAS_PARCIAL := 0;',
':P103_AUX_DESCUENTO_DET:= 0;',
':P103_CALCULA_IVA:=''S'';',
'',
'vtnotcre.tipo_cambio_dia(P_CAMBIO_MONEDA_PRECIO => :P103_CAMBIO_MONEDA_PRECIO,',
'                         P_COD_MONEDA_PRECIO    => :P103_COD_MONEDA_PRECIO);',
'',
'vtnotcre.serie(P_COD_USUARIO     => :P103_COD_USUARIO_VAR,',
'               P_COD_EMPRESA     => :P103_COD_EMPRESA_VAR,',
'               P_TIP_COMPROBANTE => :P103_TIP_COMPROBANTE,',
'               P_COD_SUCURSAL    => :P103_COD_SUCURSAL,',
'               P_SER_COMPROBANTE => :P103_SER_COMPROBANTE);   ',
'',
':P103_COD_CUSTODIO := vtnotcre.busca_custodio_cabecera(P_COD_EMPRESA => :P103_COD_EMPRESA_VAR,',
'                                                       P_COD_USUARIO => :P103_COD_USUARIO_VAR);                                             ',
'   ',
'    APEX_COLLECTION.CREATE_OR_TRUNCATE_COLLECTION(P_COLLECTION_NAME => ''DET_COM'');'))
,p_process_clob_language=>'PLSQL'
,p_process_when=>'P103_ACCION_CONSULTA'
,p_process_when_type=>'ITEM_IS_NULL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(75705753461194326)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Validaciones'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE ',
'    v_contador NUMBER  := 0;',
'BEGIN',
'    BEGIN ',
'        ',
'        SELECT COUNT(*)',
'        INTO v_contador',
'        FROM APEX_COLLECTIONS',
'        WHERE COLLECTION_NAME = ''DET_COM'';',
'        EXCEPTION ',
'            WHEN OTHERS THEN  ',
'                 v_contador := 0;',
'                ',
'    END;',
'    if v_contador = 0 then ',
unistr('        RAISE_APPLICATION_ERROR(-20001, ''No se puede procesar nota de cr\00E9dito sin detalles'');'),
'    end if;',
'',
'     if NVL(:P103_TOTAL,0) = 0 then ',
'        RAISE_APPLICATION_ERROR(-20001, ''El total no puede ser igual a 0'');',
'    end if;',
'',
'    ',
'       if :P103_COLUMNA is null then ',
'        RAISE_APPLICATION_ERROR(-20001, ''El motivo no puede ser nulo'');',
'    end if;',
'',
'       if :P103_COD_VENDEDOR is null then ',
'        RAISE_APPLICATION_ERROR(-20001, ''El CODIGO DE VENDEDOR no puede ser nulo'');',
'    end if;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(17136521258007707)
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(76098824301162814)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Validaciones_factura'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'',
'VTOTAL_FACT number;',
'vtotal_ncr2 number;',
'VTOTA_NCR number;',
' VCOD_LISTA_PRECIOS VARCHAR2(100);',
' vcod_vendedor VARCHAR2(100);',
' VCOD_CONDICION_VENTA VARCHAR2(100); ',
' VCOD_MONEDA VARCHAR2(100);',
'BEGIN',
'  Begin',
'      select nvl( (C.TOT_COMPROBANTE), 0),  COD_LISTA_PRECIO, COD_CONDICION_VENTA, COD_MONEDA, cod_vendedor',
'        into VTOTAL_FACT,VCOD_LISTA_PRECIOS, VCOD_CONDICION_VENTA, VCOD_MONEDA, vcod_vendedor',
'        from vt_comprobantes_cabecera c',
'       where c.cod_empresa = :P_cod_empresa',
'         and c.tip_comprobante = :P103_tip_comprobante_ref',
'         and c.ser_comprobante = :P103_ser_comprobante_ref',
'         and c.nro_comprobante = :P103_nro_comprobante_ref',
'         and nvl(c.estado, ''S'') <> ''A'';',
'    exception',
'      when others then',
'        VTOTAL_FACT := 0;',
'        vcod_vendedor:=null;',
'    end;',
'    ',
'    ',
'    ',
'      begin',
'      select nvl(sum(C.TOT_COMPROBANTE), 0)',
'        into VTOTA_NCR',
'        from vt_comprobantes_cabecera c',
'       where c.cod_empresa = :P_cod_empresa',
'         and c.tip_comprobante_ref = :P103_tip_comprobante_ref',
'         and c.ser_comprobante_ref = :P103_ser_comprobante_ref',
'         and c.nro_comprobante_ref =:P103_nro_comprobante_ref',
'         and c.nro_comprobante <>  :P103_nro_comprobante',
'            ',
'         and c.tip_comprobante = ''NCR''',
'         and nvl(c.estado, ''S'') <> ''A'';',
'    exception',
'      when others then',
'        VTOTA_NCR := 0;',
'    end;',
'',
'begin',
'SELECT  ',
'       sum(TO_NUMBER(C018)+',
'       TO_NUMBER(C027)  )',
'       into vtotal_ncr2',
'FROM APEX_COLLECTIONS',
'WHERE COLLECTION_NAME = ''DET_COM'';',
'exception when others then',
'vtotal_ncr2:=0;',
'end;',
'',
'    ',
'    IF :P103_COD_LISTA_PRECIO<> VCOD_LISTA_PRECIOS THEN',
'    	                            ',
'  RAISE_APPLICATION_ERROR(-20001,''La lista de precios de la NCR  no puede ser distinta a la de la factura.'' );',
'     ',
'    END IF;',
'    ',
'    ',
'    IF :P103_cod_moneda<> VCOD_MONEDA THEN',
'    	                            ',
'  RAISE_APPLICATION_ERROR(-20001,''La moneda  de la NCR no puede ser distinta a la de la factura.'' );',
'     ',
'    END IF;',
'',
'      ',
'    IF :P103_COD_VENDEDOR<> vcod_vendedor and vcod_vendedor is not null  THEN',
'    	                            ',
'  RAISE_APPLICATION_ERROR(-20001,''El codigo de vendedor  no puede ser distinta a la de la factura.'' );',
'     ',
'    END IF;',
'    ',
'    ',
'    IF :P103_cod_condicion_venta<> VCOD_CONDICION_VENTA THEN',
'    	                            ',
'  RAISE_APPLICATION_ERROR(-20001,''La condicion  de venta la NCR no puede ser distinta a la de la factura.'' );',
'    ',
'    	END IF;',
'     ',
'    IF NVL(VTOTAL_FACT, 0) < NVL(VTOTA_NCR, 0)+ nvl(replace(:P103_AUX_TOTAL, ''.'', ''''), 0)          THEN',
'    ',
'     ',
'                              ',
'  RAISE_APPLICATION_ERROR(-20001,''El importe total de la NCR no puede ser superior a la factura TOTAL FACTURA .'' ||',
'                              VTOTAL_FACT || ''  TOTAL NCR '' || VTOTA_NCR );',
'    ',
'    END IF;',
'',
'      IF NVL(VTOTAL_FACT, 0) < NVL(VTOTA_NCR, 0)+ nvl(vtotal_ncr2,0)        THEN',
'    ',
'     ',
'                              ',
'  RAISE_APPLICATION_ERROR(-20001,''El importe total de la NCR no puede ser superior a la factura TOTAL FACTURA .'' ||',
'                              VTOTAL_FACT || ''  TOTAL NCR '' || NVL(VTOTA_NCR, 0)+ nvl(vtotal_ncr2,0)     );',
'    ',
'    END IF;',
'  ',
'END; ',
''))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(17136521258007707)
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(16607106337666846)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'DELETE'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    DELETE FROM VT_COMPROBANTES_CABECERA',
'    WHERE COD_EMPRESA = :P103_COD_EMPRESA_VAR',
'      and TIP_COMPROBANTE = :P103_TIP_COMPROBANTE    ',
'      and SER_COMPROBANTE = :P103_SER_COMPROBANTE',
'      and NRO_COMPROBANTE = :P103_NRO_COMPROBANTE;',
'END;',
'',
'BEGIN',
'    DELETE FROM VT_COMPROBANTES_DETALLE',
'    WHERE COD_EMPRESA = :P103_COD_EMPRESA_VAR',
'      and TIP_COMPROBANTE = :P103_TIP_COMPROBANTE    ',
'      and SER_COMPROBANTE = :P103_SER_COMPROBANTE',
'      and NRO_COMPROBANTE = :P103_NRO_COMPROBANTE;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(16607267846666847)
,p_process_success_message=>'El comprobante se ha eliminado correctamente.'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(17137676134007718)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'GUARDAR_VALE'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF :P103_SER_VALE IS NOT NULL AND :P103_NRO_VALE IS NOT NULL THEN',
'	BEGIN',
'	/*		UPDATE VT_VALES',
'			SET IND_NCR = ''S'' ',
'			WHERE COD_EMPRESA= :VARIABLES.COD_EMPRESA',
'			AND 	SER_COMPROBANTE= :PARAMETER.P_SER_VALE',
'			AND 	NRO_COMPROBANTE= :PARAMETER.P_NRO_VALE 			',
'			;*/',
'			',
'	insert into inv.vt_vales_det',
'			    (cod_empresa,',
'			     ser_comprobante,',
'			     nro_comprobante,',
'			     cod_usuario,',
'			     fecha_alta,',
'			     tip_comprobante_ref,',
'			     ser_comprobante_ref,',
'			     nro_comprobante_ref)',
'		 values',
'			    (:P103_COD_EMPRESA_VAR,',
'			     :P103_SER_VALE,',
'			     :P103_NRO_VALE,',
'			     USER,',
'			     SYSDATE,',
'			     :P103_TIP_COMPROBANTE_REF,',
'			     :P103_SER_COMPROBANTE_REF,',
'			     :P103_NRO_COMPROBANTE_REF);',
'							   ',
'	insert into inv.vt_vales_det',
'			    (cod_empresa,',
'			     ser_comprobante,',
'			     nro_comprobante,',
'			     cod_usuario,',
'			     fecha_alta,',
'			     tip_comprobante_ref,',
'			     ser_comprobante_ref,',
'			     nro_comprobante_ref)',
'		  values',
'			    (:P103_COD_EMPRESA_VAR,',
'			     :P103_SER_VALE,',
'			     :P103_NRO_VALE,',
'			     USER,',
'			     SYSDATE,',
'			     :P103_TIP_COMPROBANTE,',
'			     :P103_SER_COMPROBANTE,',
'			     :P103_NRO_COMPROBANTE);	',
'		EXCEPTION',
'			WHEN OTHERS THEN',
'						NULL;		',
'		END;',
'END IF;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(17136521258007707)
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(17137769021007719)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'GUARDAR_CABECERA'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    VTNOTCRE.inserta_cabecera(:P103_COD_EMPRESA_VAR, :P103_TIP_COMPROBANTE, :P103_SER_COMPROBANTE,:P103_NRO_COMPROBANTE, :P103_COD_SUCURSAL,',
'                              :P103_FEC_COMPROBANTE,:P103_COD_CLIENTE, :P103_COD_VENDEDOR, :P103_TIP_COMPROBANTE_REF, :P103_SER_COMPROBANTE_REF,:P103_NRO_COMPROBANTE_REF,',
'                              :P103_COD_CONDICION_VENTA, :P103_COD_LISTA_PRECIO,:P103_DESCUENTO, :P103_COD_MONEDA, :P103_TIP_CAMBIO, :P103_NRO_MOV_CAJ, NVL(:P103_ESTADO,''P''), :P103_FEC_ESTADO, :P103_COD_USUARIO,',
'                              :P103_CAMBIO_MONEDA_PRECIO, :P103_TIP_CAMBIO_COMPRA, :P103_COMENTARIO, :P103_GRU_COMPROBANTE, :P103_COD_SECTOR, :P103_TEL_CLIENTE,',
'                              :P103_COLUMNA, :P103_RUC, :P103_DIR_CLIENTE, :P103_COD_DIRECCION,:P103_AJUSTE_IVA, :P103_COD_CUSTODIO, :P103_CONDICION_VENTA_FAC, ',
'                              :P103_IND_EXENTO_AD,:P103_HORA_ALTA,:P103_RECARGO,:P103_TIP_OT, :P103_SER_OT,:P103_NRO_OT,:P103_IND_AFECTA_GUARDA);',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        raise_application_error(-20000, ''Ha ocurrido un error al guardar la cabecera. ''||sqlerrm);',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'Ha ocurrido un error al guardar la cabecera.'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(17136521258007707)
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(17138022643007722)
,p_process_sequence=>60
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'GUARDAR_DETALLE'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    VTNOTCRE.inserta_detalle( :P103_COD_EMPRESA_VAR, :P103_TIP_COMPROBANTE, :P103_SER_COMPROBANTE,:P103_NRO_COMPROBANTE,:P103_SER_OT,:P103_NRO_OT,:P103_COD_SUCURSAL);',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        raise_application_error(-20000, ''Ha ocurrido un error al guardar el detalle. ''||sqlerrm);',
'END;                         ',
'                    '))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'Ha ocurrido un error al guardar el detalle.'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(17136521258007707)
,p_process_success_message=>'El comprobante &P103_SER_COMPROBANTE. &P103_NRO_COMPROBANTE. se ha guardado correctamente.'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(18374444879390540)
,p_process_sequence=>70
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'ACTUALIZAR_CABECERA'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    :P103_HORA_ALTA := to_char(sysdate, ''HH24:MI:SS'');',
'    VTNOTCRE.actualiza_cabecera(:P103_COD_EMPRESA_VAR, :P103_TIP_COMPROBANTE, :P103_SER_COMPROBANTE,:P103_NRO_COMPROBANTE, :P103_COD_SUCURSAL, :P103_FEC_COMPROBANTE,:P103_COD_CLIENTE, :P103_COD_VENDEDOR, :P103_TIP_COMPROBANTE_REF, :P103_SER_COMPROBAN'
||'TE_REF,:P103_NRO_COMPROBANTE_REF,',
'               :P103_COD_CONDICION_VENTA, :P103_COD_LISTA_PRECIO,:P103_DESCUENTO, :P103_COD_MONEDA, :P103_TIP_CAMBIO, :P103_NRO_MOV_CAJ, NVL(:P103_ESTADO,''P''), :P103_FEC_ESTADO, :P103_COD_USUARIO,',
'               :P103_CAMBIO_MONEDA_PRECIO, :P103_TIP_CAMBIO_COMPRA, :P103_COMENTARIO, :P103_GRU_COMPROBANTE, :P103_COD_SECTOR, :P103_TEL_CLIENTE,',
'               :P103_COLUMNA, :P103_RUC, :P103_DIR_CLIENTE, :P103_COD_DIRECCION,:P103_AJUSTE_IVA, :P103_COD_CUSTODIO, :P103_CONDICION_VENTA_FAC, :P103_IND_EXENTO_AD,:P103_HORA_ALTA,:P103_RECARGO,:P103_TIP_OT, :P103_SER_OT,:P103_NRO_OT);',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        raise_application_error(-20000, ''Ha ocurrido un error al actualizar la cabecera. ''||sqlerrm);',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'Ha ocurrido un error al actualizar la cabecera.'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(18374251101390538)
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(18374309971390539)
,p_process_sequence=>80
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'ACTUALIZAR_DETALLE'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    VTNOTCRE.actualiza_detalle( :P103_COD_EMPRESA_VAR, :P103_TIP_COMPROBANTE, :P103_SER_COMPROBANTE,:P103_NRO_COMPROBANTE,:P103_SER_OT,:P103_NRO_OT,:P103_COD_SUCURSAL);',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        raise_application_error(-20000, ''Ha ocurrido un error al actualizar el detalle. ''||sqlerrm);    ',
'END;                         ',
'                    '))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'Ha ocurrido un error al actualizar el detalle.'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(18374251101390538)
,p_process_success_message=>'El comprobante &P103_SER_COMPROBANTE. &P103_NRO_COMPROBANTE. se ha actualizado correctamente.'
);
wwv_flow_imp.component_end;
end;
/
