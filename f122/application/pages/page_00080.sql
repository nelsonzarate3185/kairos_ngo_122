prompt --application/pages/page_00080
begin
--   Manifest
--     PAGE: 00080
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
 p_id=>80
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'Estado de FActuras'
,p_alias=>'ESTADO-DE-FACTURAS'
,p_step_title=>'Estado de FActuras'
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
,p_page_template_options=>'#DEFAULT#'
,p_page_component_map=>'18'
,p_last_updated_by=>'JUANSA'
,p_last_upd_yyyymmddhh24miss=>'20250305105345'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(316515802336170039)
,p_plug_name=>'Estados de Factura'
,p_region_template_options=>'#DEFAULT#:is-collapsed:t-Region--accent1:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40108275410263656)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(342019731866508939)
,p_plug_name=>'Pedidos'
,p_region_template_options=>'#DEFAULT#:js-showMaximizeButton'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>30
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT  ',
'FEC_COMPROBANTE,NOMBRE,',
'COD_CLIENTE,',
'SIGLAS,',
'IMPORTE,',
'COMPROBANTE,',
'TIP_COMPROBANTE,',
'SER_COMPROBANTE,',
'NRO_COMPROBANTE,',
'COD_ARTICULO,',
'DESC_ARTICULO,',
'CANTIDAD,',
'TIPO,',
'ORIGEN_ENTREGA,',
'COMENTARIO,',
'NOMBRE_SUCURSAL,',
'DIRECCION_SUCURSAL,',
'',
'ESTADO,',
'estado_distribucion_log ESTADO_DISTRIBUCION,',
'EMPRESA,',
'',
'COD_DEPARTAMENTO,',
'COD_CIUDAD,',
'STOCK,',
'SITUACION,',
'FECHA_PEDIDO,',
'COD_VENDEDOR,',
'DESC_VENDEDOR,',
'',
'CANTIDAD_SERVIDA,',
'OBSERVACION_PEDIDO,',
'PLAZO,',
'LISTA_PRECIO,',
'COD_ART_CORTO,',
'DEPARTAMENTO,',
'CIUDAD,',
'BARRIO,',
'VOLUMEN, AUTORIZACION,AREA_AUTORIZACION, flete,',
' factura,',
' PLANILLA_REPARTO, estado_distribucion_log,remision, cantidad_facturada',
'',
'',
' FROM V_PEDIDOS_PRODUCTOS v',
' where (cod_vendedor = :P80_COD_VENDEDOR OR :P80_COD_VENDEDOR IS NULL)',
' and v.cod_empresa=:p_cod_empresa',
' AND FEC_COMPROBANTE>= :P80_FECHA_DESDE ',
' and fec_comprobante <=:P80_FECHA_HASTA',
' AND (estado_distribucion_log = :P80_ESTADO OR :P80_ESTADO =''X'')',
' And  (cod_SUPERVISOR = :P80_COD_SUPERVISOR OR :P80_COD_SUPERVISOR IS NULL)',
' And  (cod_cliente = :P80_COD_CLIENTE OR :P80_COD_CLIENTE IS NULL)',
' And  (NRO_COMPROBANTE = :P80_NRO_PEDIDO OR :P80_NRO_PEDIDO IS NULL)',
'  And  (NRO_FACTURA = :P80_NRO_FACTURA OR :P80_NRO_FACTURA IS NULL)',
'-- and (REGEXP_LIKE (:P80_NRO_FACTURA,FACTURA) or :P80_NRO_FACTURA IS NULL)'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P80_COD_VENDEDOR,P80_FECHA_DESDE,P80_FECHA_HASTA,P80_COD_SUPERVISOR,P80_ESTADO,P80_COD_CLIENTE,P80_NRO_FACTURA,P80_NRO_PEDIDO'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(342019868256508939)
,p_name=>'Pedidos'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'Sin Datos'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_display_row_count=>'Y'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_csv_output_separator=>';'
,p_owner=>'INV'
,p_internal_uid=>342019868256508939
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13372196798975121)
,p_db_column_name=>'FEC_COMPROBANTE'
,p_display_order=>1
,p_column_identifier=>'S'
,p_column_label=>'Fecha'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'DD/MM/YYYY'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13365787244975117)
,p_db_column_name=>'COD_CLIENTE'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Cod Cliente'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13365371890975117)
,p_db_column_name=>'NOMBRE'
,p_display_order=>30
,p_column_identifier=>'A'
,p_column_label=>'Nombre'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13366141259975117)
,p_db_column_name=>'SIGLAS'
,p_display_order=>40
,p_column_identifier=>'C'
,p_column_label=>'Siglas'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13366568971975117)
,p_db_column_name=>'IMPORTE'
,p_display_order=>50
,p_column_identifier=>'D'
,p_column_label=>'Importe'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13366975538975118)
,p_db_column_name=>'COMPROBANTE'
,p_display_order=>60
,p_column_identifier=>'E'
,p_column_label=>'Comprobante'
,p_column_link=>'f?p=&APP_ID.:72:&SESSION.::&DEBUG.:RP,72:P72_SER_COMPROBANTE,P72_NRO_COMPROBANTE:#SER_COMPROBANTE#,#NRO_COMPROBANTE#'
,p_column_linktext=>'#COMPROBANTE#'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13367361129975118)
,p_db_column_name=>'TIP_COMPROBANTE'
,p_display_order=>70
,p_column_identifier=>'F'
,p_column_label=>'Tip Comprobante'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13367746772975118)
,p_db_column_name=>'SER_COMPROBANTE'
,p_display_order=>80
,p_column_identifier=>'G'
,p_column_label=>'Serie'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13368155669975118)
,p_db_column_name=>'NRO_COMPROBANTE'
,p_display_order=>90
,p_column_identifier=>'H'
,p_column_label=>'Nro Pedido'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13368511458975119)
,p_db_column_name=>'TIPO'
,p_display_order=>100
,p_column_identifier=>'I'
,p_column_label=>'Tipo'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13368928219975119)
,p_db_column_name=>'ORIGEN_ENTREGA'
,p_display_order=>110
,p_column_identifier=>'J'
,p_column_label=>'Origen Entrega'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13369311130975119)
,p_db_column_name=>'COMENTARIO'
,p_display_order=>120
,p_column_identifier=>'K'
,p_column_label=>'Comentario'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13369743272975119)
,p_db_column_name=>'NOMBRE_SUCURSAL'
,p_display_order=>130
,p_column_identifier=>'L'
,p_column_label=>'Nombre Sucursal'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13370184353975119)
,p_db_column_name=>'DIRECCION_SUCURSAL'
,p_display_order=>140
,p_column_identifier=>'M'
,p_column_label=>'Direccion Sucursal'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13370518682975119)
,p_db_column_name=>'DEPARTAMENTO'
,p_display_order=>150
,p_column_identifier=>'N'
,p_column_label=>'Departamento'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13370994784975120)
,p_db_column_name=>'CIUDAD'
,p_display_order=>160
,p_column_identifier=>'O'
,p_column_label=>'Ciudad'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13371354670975120)
,p_db_column_name=>'BARRIO'
,p_display_order=>170
,p_column_identifier=>'P'
,p_column_label=>'Barrio'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13371705901975120)
,p_db_column_name=>'VOLUMEN'
,p_display_order=>180
,p_column_identifier=>'Q'
,p_column_label=>'Volumen'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13372531309975121)
,p_db_column_name=>'ESTADO'
,p_display_order=>200
,p_column_identifier=>'T'
,p_column_label=>'Estado'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13372970852975121)
,p_db_column_name=>'ESTADO_DISTRIBUCION'
,p_display_order=>210
,p_column_identifier=>'U'
,p_column_label=>'Estado Distribucion'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13373357048975121)
,p_db_column_name=>'EMPRESA'
,p_display_order=>220
,p_column_identifier=>'V'
,p_column_label=>'Empresa'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13373740144975121)
,p_db_column_name=>'COD_DEPARTAMENTO'
,p_display_order=>240
,p_column_identifier=>'X'
,p_column_label=>'Cod Departamento'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13374165168975121)
,p_db_column_name=>'COD_CIUDAD'
,p_display_order=>250
,p_column_identifier=>'Y'
,p_column_label=>'Cod Ciudad'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13374593938975122)
,p_db_column_name=>'STOCK'
,p_display_order=>260
,p_column_identifier=>'Z'
,p_column_label=>'Stock'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13374998529975122)
,p_db_column_name=>'SITUACION'
,p_display_order=>270
,p_column_identifier=>'AA'
,p_column_label=>'Situacion'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13375357271975122)
,p_db_column_name=>'FECHA_PEDIDO'
,p_display_order=>280
,p_column_identifier=>'AB'
,p_column_label=>'Fecha Pedido'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13379381472975124)
,p_db_column_name=>'COD_ART_CORTO'
,p_display_order=>290
,p_column_identifier=>'AL'
,p_column_label=>'Cod Art Corto'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13375734526975122)
,p_db_column_name=>'COD_ARTICULO'
,p_display_order=>300
,p_column_identifier=>'AC'
,p_column_label=>'Cod Articulo'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13376137471975122)
,p_db_column_name=>'DESC_ARTICULO'
,p_display_order=>310
,p_column_identifier=>'AD'
,p_column_label=>'Desc Articulo'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13376594968975122)
,p_db_column_name=>'COD_VENDEDOR'
,p_display_order=>320
,p_column_identifier=>'AE'
,p_column_label=>'Cod Vendedor'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13376947223975123)
,p_db_column_name=>'DESC_VENDEDOR'
,p_display_order=>330
,p_column_identifier=>'AF'
,p_column_label=>'Desc Vendedor'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13377390093975123)
,p_db_column_name=>'CANTIDAD'
,p_display_order=>340
,p_column_identifier=>'AG'
,p_column_label=>'Cantidad Pedido'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13377726175975123)
,p_db_column_name=>'CANTIDAD_SERVIDA'
,p_display_order=>350
,p_column_identifier=>'AH'
,p_column_label=>'Cantidad Servida'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13378178405975123)
,p_db_column_name=>'OBSERVACION_PEDIDO'
,p_display_order=>360
,p_column_identifier=>'AI'
,p_column_label=>'Observacion Pedido'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13378502020975123)
,p_db_column_name=>'PLAZO'
,p_display_order=>370
,p_column_identifier=>'AJ'
,p_column_label=>'Plazo'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13378935571975123)
,p_db_column_name=>'LISTA_PRECIO'
,p_display_order=>380
,p_column_identifier=>'AK'
,p_column_label=>'Lista Precio'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13364936598975117)
,p_db_column_name=>'AUTORIZACION'
,p_display_order=>390
,p_column_identifier=>'AM'
,p_column_label=>'Autorizacion'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13379752040975124)
,p_db_column_name=>'AREA_AUTORIZACION'
,p_display_order=>400
,p_column_identifier=>'AN'
,p_column_label=>'Estado'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13380187662975124)
,p_db_column_name=>'FLETE'
,p_display_order=>410
,p_column_identifier=>'AO'
,p_column_label=>'Flete'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13380517763975124)
,p_db_column_name=>'PLANILLA_REPARTO'
,p_display_order=>420
,p_column_identifier=>'AP'
,p_column_label=>'Planilla Reparto'
,p_column_link=>'f?p=&APP_ID.:120:&SESSION.::&DEBUG.:120:P120_SER_COMPROBANTE,P120_NRO_COMPROBANTE:#SER_COMPROBANTE#,#NRO_COMPROBANTE#'
,p_column_linktext=>'#PLANILLA_REPARTO#'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13380966280975124)
,p_db_column_name=>'FACTURA'
,p_display_order=>430
,p_column_identifier=>'AQ'
,p_column_label=>'Factura'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13364506558975116)
,p_db_column_name=>'ESTADO_DISTRIBUCION_LOG'
,p_display_order=>440
,p_column_identifier=>'AR'
,p_column_label=>'Estado Distribucion Log'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13381364518975124)
,p_db_column_name=>'REMISION'
,p_display_order=>450
,p_column_identifier=>'AS'
,p_column_label=>'Remision'
,p_column_link=>'f?p=&APP_ID.:115:&SESSION.::&DEBUG.::P115_SER_COMPROBANTE,P115_NRO_COMPROBANTE:#SER_COMPROBANTE#,#NRO_COMPROBANTE#'
,p_column_linktext=>'#REMISION#'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13381796876975125)
,p_db_column_name=>'CANTIDAD_FACTURADA'
,p_display_order=>460
,p_column_identifier=>'AT'
,p_column_label=>'Cantidad Factura'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(342035416251506730)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_type=>'GROUP_BY'
,p_report_alias=>'2311743'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'FEC_COMPROBANTE:NOMBRE:COMPROBANTE:COD_ART_CORTO:COD_ARTICULO:DESC_ARTICULO:CANTIDAD:SIGLAS:IMPORTE:DESC_VENDEDOR:OBSERVACION_PEDIDO:ESTADO::AUTORIZACION:AREA_AUTORIZACION:FLETE:PLANILLA_REPARTO:FACTURA:ESTADO_DISTRIBUCION_LOG:REMISION:CANTIDAD_FACTU'
||'RADA'
,p_chart_type=>'bar'
,p_chart_label_column=>'AUTORIZACION'
,p_chart_value_column=>'IMPORTE'
,p_chart_aggregate=>'SUM'
,p_chart_sorting=>'DEFAULT'
,p_chart_orientation=>'vertical'
);
wwv_flow_imp_page.create_worksheet_group_by(
 p_id=>wwv_flow_imp.id(739776079417008555)
,p_report_id=>wwv_flow_imp.id(342035416251506730)
,p_group_by_columns=>'FEC_COMPROBANTE:COMPROBANTE:NOMBRE:TIPO:ESTADO_DISTRIBUCION_LOG:FACTURA:PLANILLA_REPARTO:REMISION'
,p_function_01=>'SUM'
,p_function_column_01=>'IMPORTE'
,p_function_db_column_name_01=>'APXWS_GBFC_01'
,p_function_label_01=>'Total'
,p_function_format_mask_01=>'999G999G999G999G999G999G990'
,p_function_sum_01=>'Y'
,p_function_02=>'COUNT'
,p_function_column_02=>'IMPORTE'
,p_function_db_column_name_02=>'APXWS_GBFC_02'
,p_function_label_02=>'p'
,p_function_format_mask_02=>'999G999G999G999G990'
,p_function_sum_02=>'N'
,p_function_03=>'COUNT'
,p_function_column_03=>'CANTIDAD_FACTURADA'
,p_function_db_column_name_03=>'APXWS_GBFC_03'
,p_function_label_03=>'z'
,p_function_format_mask_03=>'999G999G999G999G990'
,p_function_sum_03=>'N'
);
wwv_flow_imp_page.create_worksheet_pivot(
 p_id=>wwv_flow_imp.id(739776499077008555)
,p_report_id=>wwv_flow_imp.id(342035416251506730)
,p_pivot_columns=>'AUTORIZACION'
,p_row_columns=>'COD_CLIENTE:NOMBRE'
);
wwv_flow_imp_page.create_worksheet_pivot_agg(
 p_id=>wwv_flow_imp.id(739776885113008556)
,p_pivot_id=>wwv_flow_imp.id(739776499077008555)
,p_display_seq=>1
,p_function_name=>'SUM'
,p_column_name=>'IMPORTE'
,p_db_column_name=>'PFC1'
,p_column_label=>'Total'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_display_sum=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(878433429797603830)
,p_plug_name=>'Facturas/Remisiones'
,p_region_template_options=>'#DEFAULT#:js-showMaximizeButton'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>40
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT NOMBRE,  COD_CLIENTE ,TIP_PEDIDO,  SER_PEDIDO , NRO_PEDIDO,  TIPO_ENTREGA,  ORIGEN_ENTREGA,  COMENTARIO  ,FECHA_PEDIDO,  ESTADO_PEDIDO ,',
'FECHA_FACTURA ,SITUACION ,COD_VENDEDOR , DESC_VENDEDOR, OBSERVACION_PEDIDO,  ESTADO_AUTORIZACION ,COD_SUPERVISOR , FLETE, FACTURA, NRO_PLANILLA ,',
' FEC_PLANILLA,  REPARTIDOR_MM, ESTADO_REPARTO , SER_REMISION,  NRO_REMISION,  NRO_FACTURA,',
'  nombre_sucursal,   direccion_sucursal,  departamento,   ciudad, observacion_remision,link_rep, null imprimir',
'',
'FROM (select p.nombre,',
'       f.cod_cliente,',
'              f.tip_comprobante TIP_PEDIDO,',
'       f.ser_comprobante SER_PEDIDO,',
'       f.nro_comprobante NRO_PEDIDO,',
'       CASE',
'         WHEN f.tipo_entrega = ''CA'' THEN',
'          ''CAPITAL''',
'         WHEN F.TIPO_ENTREGA = ''IN'' THEN',
'          ''INTERIOR''',
'         WHEN F.TIPO_ENTREGA = ''CR'' THEN',
'          ''CLIENTE RETIRA''',
'       END TIPO_ENTREGA,',
'       ',
'       nvl((SELECT CASE',
'                    WHEN fl.origen_entrega = ''SL'' THEN',
'                     ''SAN LORENZO''',
'                    WHEN fl.origen_entrega = ''AR'' THEN',
'                     ''ARTIGAS''',
'                    WHEN fl.origen_entrega = ''CDE'' THEN',
'                     ''CDE''',
'                    ELSE',
'                     ''ARTIGAS''',
'                  END',
'           ',
'             FROM VT_FLETES FL',
'            WHERE FL.COD_EMPRESA = F.COD_EMPRESA',
'              AND FL.COD_FLETE = F.COD_FLETE),',
'           ''SAN LORENZO'') ORIGEN_ENTREGA,',
'       ',
'       F.COMENTARIO, ',
'       f.FEC_COMPROBANTE fecha_pedido,',
' ',
'       CASE',
'         WHEN f.estado = ''A'' THEN',
'          ''ANULADO''',
'         WHEN f.estado = ''C'' THEN',
'          ''CERRADO''',
'       ',
'         WHEN f1.nro_comprobante IS NOT NULL then',
'          ''FACTURADO''',
'         WHEN f.estado = ''P'' THEN',
'          ''PENDIENTE''',
'         WHEN f.estado = ''F'' THEN',
'          ''PENDIENTE''',
'       ',
'         ELSE',
'          ''PENDIENTE''',
'       END estado_PEDIDO,',
'        ',
'       f1.fec_comprobante fecha_factura,',
'       ',
'       F_situacion_PEDIDO(f.ser_comprobante, f.nro_comprobante) situacion,',
'      ',
'       F.COD_VENDEDOR,',
'       FV.DESCRIPCION DESC_VENDEDOR,',
'       ',
'       f.comentario observacion_pedido,',
'       ',
'       case',
'         when nvl(f.autorizado, ''P'') = ''S'' THEN',
'          ''AUTORIZADO''',
'         when nvl(f.autorizado, ''P'') = ''P'' THEN',
'          ''PENDIENTE''',
'         WHEN nvl(deposito_fact, ''X'') IS NOT NULL THEN',
'          ''AUTORIZADO''',
'         WHEN nvl(f.autorizado, ''N'') = ''N'' THEN',
'          ''RECHAZADO''',
'         ELSE',
'          ''PENDIENTE''',
'       END ESTADO_AUTORIZACION,',
'       fv.cod_supervisor,',
'        ',
'       (select fl.descripcion',
'          from vt_fletes fl',
'         where fl.cod_empresa = f.cod_empresa',
'           and fl.cod_flete = f.cod_flete) flete,',
'       ',
'       f1.tip_comprobante || ''-'' || f1.ser_comprobante || ''-'' ||',
'       f1.nro_comprobante factura,',
'       ',
'       RC.NRO_PLANILLA,rc.fec_planilla,',
'      ',
'       ',
'       ',
'       ',
'         ( Select upper(nombre ||''  - ''||telefono)',
'    ',
'          ',
'    from rp_repartidores_log r',
'   where r.cod_empresa = rc.cod_empresa',
'     and r.cod_repartidor = rc.cod_repartidor_mm',
'         and rownum=1) repartidor_mm,',
'        NVL( CASE WHEN F.TIPO_ENTREGA=''CR'' THEN',
'           ''CLIENTE_RETIRA''',
'          when rd.estado=''P'' THEN ''PENDIENTE''',
'                      when rd.estado=''D'' THEN ''Reenvio''',
'                                  when rd.estado=''F'' THEN ''Firma Boleta''',
'                                              when rd.estado=''A'' THEN ''Anulado''',
'                                                          when rd.estado=''R'' THEN ''Con Recibo''',
'                                                                      when rd.estado=''D'' THEN ''Devuelta''',
'                                                                                  when rd.estado=''S'' THEN ''Reasignado''',
'                                                                                    END',
'             ',
'              , F_ESTADO_PEDIDO_logistica(f.ser_comprobante, f.nro_comprobante)',
'             ) ESTADO_REPARTO,',
'             NULL SER_REMISION, NULL NRO_REMISION, F1.NRO_COMPROBANTE NRO_FACTURA,',
'               suc.nombre nombre_sucursal,',
'               suc.direccion direccion_sucursal,',
'       ',
'               nvl(',
'',
'                   (SELECT pro.Descripcion',
'                      FROM PROVINCIAS Pro',
'                     where pro.cod_pais = suc.cod_pais',
'                       and pro.cod_provincia = suc.cod_provincia',
'                       AND ROWNUM = 1),',
'',
'                   (SELECT pro.Descripcion',
'                      FROM DIREC_PERSONAS D, CIUDADES CI, PROVINCIAS Pro',
'                     where d.cod_persona = p.cod_persona',
'                       and pro.cod_pais = d.cod_pais',
'                       and pro.cod_provincia = d.cod_provincia',
'                       and ci.cod_pais = d.cod_pais',
'                       and ci.cod_provincia = d.cod_provincia',
'                       and ci.cod_ciudad = d.cod_ciudad',
'                       and d.por_defecto = ''S''',
'                       AND ROWNUM = 1)) DEPARTAMENTO,',
' ',
'               NVL(',
'',
'                   (SELECT ci.descripcion',
'                      FROM CIUDADES CI, PROVINCIAS Pro',
'                     where pro.cod_pais = SUC.cod_pais',
'                       and pro.cod_provincia = SUC.cod_provincia',
'                       and ci.cod_pais = SUC.cod_pais',
'                       and ci.cod_provincia = SUC.cod_provincia',
'                       and ci.cod_ciudad = SUC.cod_ciudad',
'                       AND ROWNUM = 1',
'                    --and d.por_defecto=''S''',
'                    ),',
'',
'                   (SELECT ci.descripcion',
'                      FROM DIREC_PERSONAS D, CIUDADES CI, PROVINCIAS Pro',
'                     where d.cod_persona = p.cod_persona',
'                       and pro.cod_pais = d.cod_pais',
'                       and pro.cod_provincia = d.cod_provincia',
'                       and ci.cod_pais = d.cod_pais',
'                       and ci.cod_provincia = d.cod_provincia',
'                       and ci.cod_ciudad = d.cod_ciudad',
'',
'                       and d.por_defecto = ''S''',
'                       AND ROWNUM = 1)) CIUDAD, null observacion_remision,',
'',
'                        CASE WHEN f1.tip_comprobante IN (''FCO'',''FCR'') THEN ',
'                  CASE WHEN substr(f1.ser_comprobante,0,2) IN (''FE'') THEN ',
'                            ''https://ngosaeca.com.py/reportes/flow.html?_flowId=viewReportFlow&_flowId=viewReportFlow&ParentFolderUri=%2Freports&reportUnit=%2Freports%2F''||bs_busca_parametro(''VT'',''FACTURA_REP_DUPL_FE'')||''&standAlone=true&j_username=j'
||'asperadmin&j_password=jasperadmin&output=pdf&P_COD_EMPRESA=1&P_TIP_COMPROBANTE=''||f1.tip_comprobante||''&P_SER_COMPROBANTE=''||f1.ser_comprobante||''&P_NRO_COMPROBANTE=''||f1.nro_comprobante||''&P_COD_CLIENTE=''||f1.cod_cliente||''&P_REIMPRESO=N&P_IMPRIME_C'
||'ONDICION=S&P_COD_USUARIO=''||:APP_USER',
'                       ELSE ',
'                            ''https://ngosaeca.com.py/reportes/flow.html?_flowId=viewReportFlow&_flowId=viewReportFlow&ParentFolderUri=%2Freports&reportUnit=%2Freports%2F''||bs_busca_parametro(''VT'',''FACTURA_REP_DUPL'')||''&standAlone=true&j_username=jasp'
||'eradmin&j_password=jasperadmin&output=pdf&P_COD_EMPRESA=1&P_TIP_COMPROBANTE=''||f1.tip_comprobante||''&P_SER_COMPROBANTE=''||f1.ser_comprobante||''&P_NRO_COMPROBANTE=''||f1.nro_comprobante||''&P_COD_CLIENTE=''||f1.cod_cliente||''&P_REIMPRESO=N&P_IMPRIME_COND'
||'ICION=S&P_COD_USUARIO=''||:APP_USER',
'                  END',
'              WHEN f1.tip_comprobante IN (''NCR'') THEN ',
'                 CASE WHEN substr(f1.ser_comprobante,0,2) IN (''FE'') THEN ',
'                            ''https://ngosaeca.com.py/reportes/flow.html?_flowId=viewReportFlow&_flowId=viewReportFlow&ParentFolderUri=%2Freports&reportUnit=%2Freports%2F''||bs_busca_parametro(''VT'',''NCR_REP_DUPL_FE'')||''&standAlone=true&j_username=jaspe'
||'radmin&j_password=jasperadmin&output=pdf&P_COD_EMPRESA=1&P_TIP_COMPROBANTE=''||f1.tip_comprobante||''&P_SER_COMPROBANTE=''||f1.ser_comprobante||''&P_NRO_COMPROBANTE=''||f1.nro_comprobante||''&P_COD_CLIENTE=''||f1.cod_cliente',
'                       ELSE ',
'                            ''https://ngosaeca.com.py/reportes/flow.html?_flowId=viewReportFlow&_flowId=viewReportFlow&ParentFolderUri=%2Freports&reportUnit=%2Freports%2F''||bs_busca_parametro(''VT'',''NCR_REP_DUPL'')||''&standAlone=true&j_username=jasperad'
||'min&j_password=jasperadmin&output=pdf&P_COD_EMPRESA=1&P_TIP_COMPROBANTE=''||f1.tip_comprobante||''&P_SER_COMPROBANTE=''||f1.ser_comprobante||''&P_NRO_COMPROBANTE=''||f1.nro_comprobante||''&P_COD_CLIENTE=''||f1.cod_cliente',
'                  END',
'               ',
'       END LINK_REP',
'',
'  from vt_pedidos_cabecera      f,',
'       cc_clientes              c,',
'       personas                 p,',
'       monedas                  m,',
'       BS_SUCURSAL_CLIENTE      SUC,',
'       FV_VENDEDORES            FV,',
'   ',
'       vt_comprobantes_cabecera f1,',
'       rp_reparto_cabecera      rc,',
'       rp_reparto_detalle       rd',
' where f.cod_empresa = :p_cod_empresa',
'   ',
'   and f.fec_comprobante > add_months(SYSDATE, -24)',
' ',
'   AND FV.COD_EMPRESA = F.COD_EMPRESA',
'   AND FV.COD_VENDEDOR = F.COD_VENDEDOR',
'   ',
'   and f.cod_moneda = m.cod_moneda',
'   and f.cod_empresa = c.cod_empresa',
'   and f.cod_cliente = c.cod_cliente',
'   and c.cod_persona = p.cod_persona',
'   and suc.cod_empresa = F.cod_empresa',
'   AND SUC.cod_cliente = F.cod_cliente',
'   AND SUC.COD_SUCURSAL = F.COD_SUCURSAL_DIST',
'    ',
'   and f1.cod_empresa = F.COD_EMPRESA',
'   and f1.tip_comprobante_rEF = F.tip_comprobante',
'   and f1.ser_comprobante_ref = F.ser_comprobante',
'   and f1.nro_comprobante_ref = F.nro_comprobante',
'      ',
'   and nvl(f.estado, ''P'') <> ''A''',
'      ',
'   and f1.cod_empresa = F.COD_EMPRESA',
'   and f1.tip_comprobante_ref = F.tip_comprobante',
'   and f1.ser_comprobante_ref = F.ser_comprobante',
'   and f1.nro_comprobante_ref = F.nro_comprobante',
'   and nvl(f1.estado, ''P'') <> ''A''',
'   ',
'   and rd.cod_empresa(+) = f1.cod_empresa',
'   and rd.tip_comprobante(+) = f1.tip_comprobante',
'   and rd.ser_comprobante(+) = f1.ser_comprobante',
'   and rd.nro_comprobante(+) = f1.nro_comprobante',
'   and rd.cod_empresa = rc.cod_empresa(+)',
'   and rd.nro_planilla = rc.nro_planilla(+)',
'UNION ALL',
'SELECT  p.nombre,',
'       f.cod_cliente,',
'              f.tip_comprobante TIP_PEDIDO,',
'       f.ser_comprobante SER_PEDIDO,',
'       f.nro_comprobante NRO_PEDIDO,',
'       CASE',
'         WHEN f.tipo_entrega = ''CA'' THEN',
'          ''CAPITAL''',
'         WHEN F.TIPO_ENTREGA = ''IN'' THEN',
'          ''INTERIOR''',
'         WHEN F.TIPO_ENTREGA = ''CR'' THEN',
'          ''CLIENTE RETIRA''',
'       END TIPO_ENTREGA,',
'       ',
'       nvl((SELECT CASE',
'                    WHEN fl.origen_entrega = ''SL'' THEN',
'                     ''SAN LORENZO''',
'                    WHEN fl.origen_entrega = ''AR'' THEN',
'                     ''ARTIGAS''',
'                    WHEN fl.origen_entrega = ''CDE'' THEN',
'                     ''CDE''',
'                    ELSE',
'                     ''ARTIGAS''',
'                  END',
'           ',
'             FROM VT_FLETES FL',
'            WHERE FL.COD_EMPRESA = F.COD_EMPRESA',
'              AND FL.COD_FLETE = F.COD_FLETE),',
'           ''SAN LORENZO'') ORIGEN_ENTREGA,',
'       ',
'       F.COMENTARIO, ',
'       f.FEC_COMPROBANTE fecha_pedido,',
' ',
'       CASE',
'         WHEN f.estado = ''A'' THEN',
'          ''ANULADO''',
'         WHEN f.estado = ''C'' THEN',
'          ''CERRADO''',
'       ',
'         WHEN f1.nro_comprobante IS NOT NULL then',
'          ''FACTURADO''',
'         WHEN f.estado = ''P'' THEN',
'          ''PENDIENTE''',
'         WHEN f.estado = ''F'' THEN',
'          ''PENDIENTE''',
'       ',
'         ELSE',
'          ''PENDIENTE''',
'       END estado_PEDIDO,',
'       ',
'      ',
'       f1.fec_comprobante fecha_factura,',
'       ',
'       F_situacion_PEDIDO(f.ser_comprobante, f.nro_comprobante) situacion,',
'      ',
'       F.COD_VENDEDOR,',
'       FV.DESCRIPCION DESC_VENDEDOR,',
'       ',
'       f.comentario observacion_pedido,',
'       ',
'       case',
'         when nvl(f.autorizado, ''P'') = ''S'' THEN',
'          ''AUTORIZADO''',
'         when nvl(f.autorizado, ''P'') = ''P'' THEN',
'          ''PENDIENTE''',
'         WHEN nvl(deposito_fact, ''X'') IS NOT NULL THEN',
'          ''AUTORIZADO''',
'         WHEN nvl(f.autorizado, ''N'') = ''N'' THEN',
'          ''RECHAZADO''',
'         ELSE',
'          ''PENDIENTE''',
'       END ESTADO_AUTORIZACION,',
'       fv.cod_supervisor,',
'        ',
'       (select fl.descripcion',
'          from vt_fletes fl',
'         where fl.cod_empresa = f.cod_empresa',
'           and fl.cod_flete = f.cod_flete) flete,',
'       ',
'       f1.tip_comprobante || ''-'' || f1.ser_comprobante || ''-'' ||',
'       f1.nro_comprobante factura,',
'       ',
'       RC.NRO_PLANILLA,rc.fec_planilla,',
'      ',
'       ',
'       ',
'       ',
'         ( Select upper(nombre ||''  - ''||telefono)',
'    ',
'          ',
'    from rp_repartidores_log r',
'   where r.cod_empresa = rc.cod_empresa',
'     and r.cod_repartidor = rc.cod_repartidor_mm',
'         and rownum=1) repartidor_mm,',
'        NVL( CASE WHEN F.TIPO_ENTREGA=''CR'' THEN',
'           ''CLIENTE_RETIRA''',
'          when rd.estado=''P'' THEN ''PENDIENTE''',
'                      when rd.estado=''D'' THEN ''Reenvio''',
'                                  when rd.estado=''F'' THEN ''Firma Boleta''',
'                                              when rd.estado=''A'' THEN ''Anulado''',
'                                                          when rd.estado=''R'' THEN ''Con Recibo''',
'                                                                      when rd.estado=''D'' THEN ''Devuelta''',
'                                                                                  when rd.estado=''S'' THEN ''Reasignado''',
'                                                                                    END',
'             ',
'              , F_ESTADO_PEDIDO_logistica(f.ser_comprobante, f.nro_comprobante)',
'             ) ESTADO_REPARTO,',
'             NR.SER_COMPROBANTE SER_REMISION, NR.NRO_COMPROBANTE NRO_REMISION, F1.NRO_COMPROBANTE,',
'             null nombre_sucursal, nr.DIRECCION direccion_sucursal,null departamento, nr.DIRECCION_PART ciudad,',
'             nr.observacion ,',
'              CASE WHEN f1.tip_comprobante IN (''FCO'',''FCR'') THEN ',
'                  CASE WHEN substr(f1.ser_comprobante,0,2) IN (''FE'') THEN ',
'                            ''https://ngosaeca.com.py/reportes/flow.html?_flowId=viewReportFlow&_flowId=viewReportFlow&ParentFolderUri=%2Freports&reportUnit=%2Freports%2F''||bs_busca_parametro(''VT'',''FACTURA_REP_DUPL_FE'')||''&standAlone=true&j_username=j'
||'asperadmin&j_password=jasperadmin&output=pdf&P_COD_EMPRESA=1&P_TIP_COMPROBANTE=''||f1.tip_comprobante||''&P_SER_COMPROBANTE=''||f1.ser_comprobante||''&P_NRO_COMPROBANTE=''||f1.nro_comprobante||''&P_COD_CLIENTE=''||f1.cod_cliente||''&P_REIMPRESO=N&P_IMPRIME_C'
||'ONDICION=S&P_COD_USUARIO=''||:APP_USER',
'                       ELSE ',
'                            ''https://ngosaeca.com.py/reportes/flow.html?_flowId=viewReportFlow&_flowId=viewReportFlow&ParentFolderUri=%2Freports&reportUnit=%2Freports%2F''||bs_busca_parametro(''VT'',''FACTURA_REP_DUPL'')||''&standAlone=true&j_username=jasp'
||'eradmin&j_password=jasperadmin&output=pdf&P_COD_EMPRESA=1&P_TIP_COMPROBANTE=''||f1.tip_comprobante||''&P_SER_COMPROBANTE=''||f1.ser_comprobante||''&P_NRO_COMPROBANTE=''||f1.nro_comprobante||''&P_COD_CLIENTE=''||f1.cod_cliente||''&P_REIMPRESO=N&P_IMPRIME_COND'
||'ICION=S&P_COD_USUARIO=''||:APP_USER',
'                  END',
'              WHEN f1.tip_comprobante IN (''NCR'') THEN ',
'                 CASE WHEN substr(f1.ser_comprobante,0,2) IN (''FE'') THEN ',
'                            ''https://ngosaeca.com.py/reportes/flow.html?_flowId=viewReportFlow&_flowId=viewReportFlow&ParentFolderUri=%2Freports&reportUnit=%2Freports%2F''||bs_busca_parametro(''VT'',''NCR_REP_DUPL_FE'')||''&standAlone=true&j_username=jaspe'
||'radmin&j_password=jasperadmin&output=pdf&P_COD_EMPRESA=1&P_TIP_COMPROBANTE=''||f1.tip_comprobante||''&P_SER_COMPROBANTE=''||f1.ser_comprobante||''&P_NRO_COMPROBANTE=''||f1.nro_comprobante||''&P_COD_CLIENTE=''||f1.cod_cliente',
'                       ELSE ',
'                            ''https://ngosaeca.com.py/reportes/flow.html?_flowId=viewReportFlow&_flowId=viewReportFlow&ParentFolderUri=%2Freports&reportUnit=%2Freports%2F''||bs_busca_parametro(''VT'',''NCR_REP_DUPL'')||''&standAlone=true&j_username=jasperad'
||'min&j_password=jasperadmin&output=pdf&P_COD_EMPRESA=1&P_TIP_COMPROBANTE=''||f1.tip_comprobante||''&P_SER_COMPROBANTE=''||f1.ser_comprobante||''&P_NRO_COMPROBANTE=''||f1.nro_comprobante||''&P_COD_CLIENTE=''||f1.cod_cliente',
'                  END',
'               ',
'       END LINK_REP',
'',
'  from vt_pedidos_cabecera      f,',
'       cc_clientes              c,',
'       personas                 p,',
'       monedas                  m,',
'       BS_SUCURSAL_CLIENTE      SUC,',
'       FV_VENDEDORES            FV,',
'   ',
'       vt_comprobantes_cabecera f1,',
'       rp_reparto_cabecera      rc,',
'       rp_reparto_detalle       rd, ST_REMISION_CAB NR',
' where f.cod_empresa = :p_cod_empresa',
'   ',
'   and f.fec_comprobante > add_months(SYSDATE, -24)',
' ',
'   AND FV.COD_EMPRESA = F.COD_EMPRESA',
'   AND FV.COD_VENDEDOR = F.COD_VENDEDOR',
'   ',
'   and f.cod_moneda = m.cod_moneda',
'   and f.cod_empresa = c.cod_empresa',
'   and f.cod_cliente = c.cod_cliente',
'   and c.cod_persona = p.cod_persona',
'   and suc.cod_empresa = F.cod_empresa',
'   AND SUC.cod_cliente = F.cod_cliente',
'   AND SUC.COD_SUCURSAL = F.COD_SUCURSAL_DIST',
'    ',
'   and f1.cod_empresa = F.COD_EMPRESA',
'   and f1.tip_comprobante_rEF = F.tip_comprobante',
'   and f1.ser_comprobante_ref = F.ser_comprobante',
'   and f1.nro_comprobante_ref = F.nro_comprobante',
'      ',
'   and nvl(f.estado, ''P'') <> ''A''',
'      ',
'   and f1.cod_empresa = F.COD_EMPRESA',
'   and f1.tip_comprobante_ref = F.tip_comprobante',
'   and f1.ser_comprobante_ref = F.ser_comprobante',
'   and f1.nro_comprobante_ref = F.nro_comprobante',
'   and nvl(f1.estado, ''P'') <> ''A''',
'   ',
'   and rd.cod_empresa(+) = NR.cod_empresa',
'   and rd.tip_comprobante(+) = NR.tip_comprobante',
'   and rd.ser_comprobante(+) = NR.ser_comprobante',
'   and rd.nro_comprobante(+) = NR.nro_comprobante',
'   and rd.cod_empresa = rc.cod_empresa(+)',
'   and rd.nro_planilla = rc.nro_planilla(+)',
'',
'',
'   and f1.cod_empresa = NR.COD_EMPRESA',
'',
'   and f1.ser_comprobante = NR.ser_comprobante_REF',
'   and f1.nro_comprobante = NR.nro_comprobante_REF',
'',
')',
'WHERE  fecha_pedido>= :P80_FECHA_DESDE ',
' and fecha_pedido <=:P80_FECHA_HASTA',
' AND (ESTADO_REPARTO = :P80_ESTADO OR :P80_ESTADO =''X'')',
' And  (cod_SUPERVISOR = :P80_COD_SUPERVISOR OR :P80_COD_SUPERVISOR IS NULL)',
' And  (cod_cliente = :P80_COD_CLIENTE OR :P80_COD_CLIENTE IS NULL)',
' And  (NRO_PEDIDO = :P80_NRO_PEDIDO OR :P80_NRO_PEDIDO IS NULL)',
'  And  (NRO_FACTURA = :P80_NRO_FACTURA OR :P80_NRO_FACTURA IS NULL)',
'    And  (nro_remision = :P80_NRO_REMSION OR :P80_NRO_REMSION IS NULL)'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P80_COD_VENDEDOR,P80_FECHA_DESDE,P80_FECHA_HASTA,P80_COD_SUPERVISOR,P80_ESTADO,P80_COD_CLIENTE,P80_NRO_FACTURA,P80_NRO_PEDIDO,P80_NRO_REMSION'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
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
 p_id=>wwv_flow_imp.id(878433578839603831)
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'Sin Datos'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_display_row_count=>'Y'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_csv_output_separator=>';'
,p_owner=>'NZARATE'
,p_internal_uid=>878433578839603831
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(878433730559603833)
,p_db_column_name=>'COD_CLIENTE'
,p_display_order=>20
,p_column_identifier=>'A'
,p_column_label=>'Cod Cliente'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(878433893217603834)
,p_db_column_name=>'NOMBRE'
,p_display_order=>30
,p_column_identifier=>'B'
,p_column_label=>'Nombre'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(878434663215603842)
,p_db_column_name=>'ORIGEN_ENTREGA'
,p_display_order=>110
,p_column_identifier=>'C'
,p_column_label=>'Origen Entrega'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(878434769087603843)
,p_db_column_name=>'COMENTARIO'
,p_display_order=>120
,p_column_identifier=>'D'
,p_column_label=>'Comentario'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(898658003242490806)
,p_db_column_name=>'SITUACION'
,p_display_order=>250
,p_column_identifier=>'E'
,p_column_label=>'Situacion'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(898658111087490807)
,p_db_column_name=>'FECHA_PEDIDO'
,p_display_order=>260
,p_column_identifier=>'F'
,p_column_label=>'Fecha Pedido'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(898658576244490811)
,p_db_column_name=>'COD_VENDEDOR'
,p_display_order=>300
,p_column_identifier=>'G'
,p_column_label=>'Cod Vendedor'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(898658642124490812)
,p_db_column_name=>'DESC_VENDEDOR'
,p_display_order=>310
,p_column_identifier=>'H'
,p_column_label=>'Desc Vendedor'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(898658973024490815)
,p_db_column_name=>'OBSERVACION_PEDIDO'
,p_display_order=>340
,p_column_identifier=>'I'
,p_column_label=>'Observacion Pedido'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(898659650788490822)
,p_db_column_name=>'FACTURA'
,p_display_order=>410
,p_column_identifier=>'J'
,p_column_label=>'Factura'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(898660057092490826)
,p_db_column_name=>'TIP_PEDIDO'
,p_display_order=>420
,p_column_identifier=>'K'
,p_column_label=>'Tip Pedido'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(898660102837490827)
,p_db_column_name=>'SER_PEDIDO'
,p_display_order=>430
,p_column_identifier=>'L'
,p_column_label=>'Ser Pedido'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(898660207923490828)
,p_db_column_name=>'NRO_PEDIDO'
,p_display_order=>440
,p_column_identifier=>'M'
,p_column_label=>'Nro Pedido'
,p_column_link=>'f?p=&APP_ID.:34:&SESSION.::&DEBUG.:34:P34_PARAM_SER_PED,P34_PARAM_NRO_PED:#SER_PEDIDO#,#NRO_PEDIDO#'
,p_column_linktext=>'#NRO_PEDIDO#'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(898660375479490829)
,p_db_column_name=>'TIPO_ENTREGA'
,p_display_order=>450
,p_column_identifier=>'N'
,p_column_label=>'Tipo Entrega'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(898660424486490830)
,p_db_column_name=>'ESTADO_PEDIDO'
,p_display_order=>460
,p_column_identifier=>'O'
,p_column_label=>'Estado Pedido'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(898660587077490831)
,p_db_column_name=>'FECHA_FACTURA'
,p_display_order=>470
,p_column_identifier=>'P'
,p_column_label=>'Fecha Factura'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(898660675388490832)
,p_db_column_name=>'ESTADO_AUTORIZACION'
,p_display_order=>480
,p_column_identifier=>'Q'
,p_column_label=>'Estado Autorizacion'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(898660701417490833)
,p_db_column_name=>'COD_SUPERVISOR'
,p_display_order=>490
,p_column_identifier=>'R'
,p_column_label=>'Cod Supervisor'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(898660855541490834)
,p_db_column_name=>'NRO_PLANILLA'
,p_display_order=>500
,p_column_identifier=>'S'
,p_column_label=>'Nro Planilla'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(898660990611490835)
,p_db_column_name=>'FEC_PLANILLA'
,p_display_order=>510
,p_column_identifier=>'T'
,p_column_label=>'Fec Planilla'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(898661059826490836)
,p_db_column_name=>'REPARTIDOR_MM'
,p_display_order=>520
,p_column_identifier=>'U'
,p_column_label=>'Datos de Reparto'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(898661178440490837)
,p_db_column_name=>'ESTADO_REPARTO'
,p_display_order=>530
,p_column_identifier=>'V'
,p_column_label=>'Estado Reparto'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(898661276686490838)
,p_db_column_name=>'SER_REMISION'
,p_display_order=>540
,p_column_identifier=>'W'
,p_column_label=>'Ser Remision'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(898661394326490839)
,p_db_column_name=>'NRO_REMISION'
,p_display_order=>550
,p_column_identifier=>'X'
,p_column_label=>'Nro Remision'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(898661409277490840)
,p_db_column_name=>'NRO_FACTURA'
,p_display_order=>560
,p_column_identifier=>'Y'
,p_column_label=>'Nro Factura'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(898661694511490842)
,p_db_column_name=>'FLETE'
,p_display_order=>570
,p_column_identifier=>'Z'
,p_column_label=>'Flete'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(898661785793490843)
,p_db_column_name=>'NOMBRE_SUCURSAL'
,p_display_order=>580
,p_column_identifier=>'AA'
,p_column_label=>'Nombre Sucursal'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(898661891258490844)
,p_db_column_name=>'DIRECCION_SUCURSAL'
,p_display_order=>590
,p_column_identifier=>'AB'
,p_column_label=>'Direccion Sucursal'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(898661998417490845)
,p_db_column_name=>'DEPARTAMENTO'
,p_display_order=>600
,p_column_identifier=>'AC'
,p_column_label=>'Departamento'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(898662003432490846)
,p_db_column_name=>'CIUDAD'
,p_display_order=>610
,p_column_identifier=>'AD'
,p_column_label=>'Ciudad'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(898662178016490847)
,p_db_column_name=>'OBSERVACION_REMISION'
,p_display_order=>620
,p_column_identifier=>'AE'
,p_column_label=>'Observacion Remision'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(898662366858490849)
,p_db_column_name=>'LINK_REP'
,p_display_order=>630
,p_column_identifier=>'AF'
,p_column_label=>'Link Rep'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(898662429266490850)
,p_db_column_name=>'IMPRIMIR'
,p_display_order=>640
,p_column_identifier=>'AG'
,p_column_label=>'Imprimir Factura'
,p_column_link=>'javascript:$s(''P80_URL_PRINT'',''#LINK_REP#'');'
,p_column_linktext=>'<img src="#APP_FILES#impresora.png" width="20" height="20">'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(898687894843556183)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'8986879'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'FECHA_PEDIDO:SER_PEDIDO:NRO_PEDIDO:COD_CLIENTE:NOMBRE:ORIGEN_ENTREGA:COMENTARIO:DESC_VENDEDOR:OBSERVACION_PEDIDO:TIPO_ENTREGA:ESTADO_PEDIDO:FECHA_FACTURA:FACTURA:IMPRIMIR:FEC_PLANILLA:NRO_PLANILLA:REPARTIDOR_MM:ESTADO_REPARTO:SER_REMISION:NRO_REMISIO'
||'N:DEPARTAMENTO:CIUDAD:DIRECCION_SUCURSAL:NOMBRE_SUCURSAL:OBSERVACION_REMISION:'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(13360255681975114)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(316515802336170039)
,p_button_name=>'Buscar'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Buscar'
,p_button_position=>'NEXT'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-search'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(13383514475975126)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(342019731866508939)
,p_button_name=>'Pedido'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Crear Pedido'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_icon_css_classes=>'fa-send-o'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13360680378975114)
,p_name=>'P80_FECHA_DESDE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(316515802336170039)
,p_item_default=>'SYSDATE'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>'Desde'
,p_format_mask=>'DD-MON-YYYY'
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
 p_id=>wwv_flow_imp.id(13361018267975115)
,p_name=>'P80_FECHA_HASTA'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(316515802336170039)
,p_item_default=>'SYSDATE'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>'Hasta'
,p_format_mask=>'DD-MON-YYYY'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13361453158975115)
,p_name=>'P80_USUARIO'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(316515802336170039)
,p_source=>'&APP_USER.'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13361812308975115)
,p_name=>'P80_COD_VENDEDOR'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(316515802336170039)
,p_prompt=>'Vendedor'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LVVENDEDORES'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  SELECT v.cod_vendedor||'' - ''||nvl( v.descripcion, p.nombre ) L, ',
'         v.cod_vendedor V, p.nombre',
'    FROM fv_vendedores v, personas p ',
'   WHERE v.cod_empresa = :p_cod_empresa ',
'     AND v.cod_persona = p.cod_persona ',
'     AND v.estado = ''A'' ',
'ORDER BY 1'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_read_only_when=>':P0_VER_OTROS_VENDEDORES = ''N'''
,p_read_only_when2=>'PLSQL'
,p_read_only_when_type=>'EXPRESSION'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
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
 p_id=>wwv_flow_imp.id(13362298223975115)
,p_name=>'P80_COD_SUPERVISOR'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(316515802336170039)
,p_prompt=>'Supervisor'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'LV_SUPERVISORES'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT  P.NOMBRE,Fc.COD_VENDEDOR FROM FV_VENDEDORES F, PERSONAS P, fv_vendedores fc',
'WHERE F.COD_EMPRESA=:p_cod_empresa',
'and f.cod_empresa=fc.cod_empresa',
'and f.cod_supervisor=fc.cod_vendedor',
'AND Fc.COD_PERSONA=P.COD_PERSONA',
'AND NVL(F.ESTADO,''I'')NOT IN ''I''',
'group by  P.NOMBRE,Fc.COD_VENDEDOR'))
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
 p_id=>wwv_flow_imp.id(13362609566975115)
,p_name=>'P80_ESTADO'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(316515802336170039)
,p_item_default=>'TODOS'
,p_prompt=>'Estado'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov_language=>'PLSQL'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
' ',
'select ''TODOS'' D, ''X'' C FROM DUAL union all ',
'select ''EN PREPARACION'' d, ''EN PREPARACION''c from dual union all ',
'select ''EN REPARTO'' d,  ''EN REPARTO'' c from dual union all ',
'select ''ENTREGADO CLIENTE''d, ''ENTREGADO CLIENTE''c from dual union all ',
'select ''EN GARANTIA''d, ''EN GARANTIA'' c from dual union all ',
'select ''ANULADO''d, ''ANULADO'' c from dual union all ',
'select ''CLIENTE RETIRA''d ,''CLIENTE RETIRA'' c from dual union all ',
'select ''EN FACTURACION''d,  ''EN FACTURACION'' c from dual union all ',
'select ''PENDIENTE'' d,  ''PENDIENTE'' c from dual union all ',
'select ''PENDIENTE RUTA'' d , ''PENDIENTE RUTA'' c from dual',
''))
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
 p_id=>wwv_flow_imp.id(13363093479975115)
,p_name=>'P80_NRO_PEDIDO'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(316515802336170039)
,p_prompt=>'Nro Pedido'
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
 p_id=>wwv_flow_imp.id(13363458908975116)
,p_name=>'P80_NRO_FACTURA'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(316515802336170039)
,p_prompt=>'Nro Factura'
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
 p_id=>wwv_flow_imp.id(13363833921975116)
,p_name=>'P80_COD_CLIENTE'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(316515802336170039)
,p_prompt=>'Cod Cliente'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select nombre|| '' ''|| codigo_area|| '' ''|| num_telefono || '' ''||numero||'' ''||cod_cliente nombre, cod_cliente',
'from cc_clientes c, personas p, telef_personas pt, ident_personas pi ',
'where c.cod_empresa = :p_cod_empresa',
'and c.cod_persona = p.cod_persona',
'and p.cod_persona = pt.cod_persona(+) ',
'and p.cod_persona = pi.cod_persona(+) ',
'and nvl(c.estado,''X'') = ''A'' ',
'order by nombre'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'Y'
,p_attribute_05=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(898662288127490848)
,p_name=>'P80_NRO_REMSION'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(316515802336170039)
,p_prompt=>'Nro Remision'
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
 p_id=>wwv_flow_imp.id(898738009328768301)
,p_name=>'P80_URL_PRINT'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(316515802336170039)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(13383939364975126)
,p_name=>'CARGA_INICIAL'
,p_event_sequence=>10
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(13384468182975126)
,p_event_id=>wwv_flow_imp.id(13383939364975126)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
':P80_COD_VENDEDOR:=:P0_COD_VENDEDOR;',
'  ',
'  END;'))
,p_attribute_02=>'P80_USUARIO'
,p_attribute_03=>'P80_COD_VENDEDOR'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(13384804332975127)
,p_name=>'REFRESH'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(13360255681975114)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(13385382838975127)
,p_event_id=>wwv_flow_imp.id(13384804332975127)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(342019731866508939)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(898661521993490841)
,p_event_id=>wwv_flow_imp.id(13384804332975127)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(878433429797603830)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(898738101305768302)
,p_name=>'da_imprimir'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P80_URL_PRINT'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(898738220968768303)
,p_event_id=>wwv_flow_imp.id(898738101305768302)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var vURL = apex.item(''P80_URL_PRINT'').getValue();',
'window.open(vURL,"Pagina Child","width=1800,height=900,scrollbars=NO") ;',
'',
'',
''))
);
wwv_flow_imp.component_end;
end;
/
