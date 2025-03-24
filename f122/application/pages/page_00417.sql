prompt --application/pages/page_00417
begin
--   Manifest
--     PAGE: 00417
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
 p_id=>417
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'STREMGUA'
,p_alias=>'STREMGUA'
,p_step_title=>'STREMGUA'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function doDescarga(p_cod_cliente, p_cod_empresa, p_tip_comprobante, p_ser_comprobante, p_nro_comprobante, ',
'                    p_ind_ean, p_reimpresion, p_usuario){',
'   var vURL = ''https://ngosaeca.com.py/reportes/rest_v2/reports/reports/STREMAUT.pdf?''',
'            + ''P_COD_EMPRESA=''+p_cod_empresa +',
'            ''&P_COD_CLIENTE=''+p_cod_cliente + ',
'            ''&P_TIP_COMPROBANTE=''+ p_tip_comprobante +',
'            ''&P_SER_COMPROBANTE=''+p_ser_comprobante +',
'            ''&P_NRO_COMPROBANTE=''+p_nro_comprobante +',
'            ''&P_USUARIO=''+p_usuario +',
'            ''&P_IND_EAN=''+p_ind_ean +',
'            ''&P_REIMPRESION=''+p_reimpresion+',
'            ''&j_username=jasperadmin&j_password=jasperadmin''',
'',
'    console.log(vURL);',
'    window.open(unescape(vURL.replace(/&amp;/g,''g'')),''_blank'');',
'}',
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
''))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_last_updated_by=>'JUANASIS'
,p_last_upd_yyyymmddhh24miss=>'20230313125144'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(123908696375910501)
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
 p_id=>wwv_flow_imp.id(123912690922910541)
,p_plug_name=>unistr('Generaci\00F3n Masiva de Remisiones en Guarda - STREMGUA')
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>1010
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(123913290531910547)
,p_plug_name=>'REPORTE_PEDIDOS_LISTADO'
,p_parent_plug_id=>wwv_flow_imp.id(123912690922910541)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>30
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ',
'    seq_id P_ID,',
'    C001 Id_id ,',
'    C002  || '' - ''|| C003 nombre,',
'    C004 || '' - ''||  C005 desc_sucursal,',
'    APEX_ITEM.CHECKBOX (p_idx  => 1 ,',
'                    p_value       => seq_id,',
'                    p_attributes  => (case c006',
'                                       when ''S'' then ''checked ''',
'                                      else null',
'                                     end ) )as cliente_retira,       ',
'    C007 observaciones,',
'    C008 fecha_entrega,',
'    null ir',
'FROM APEX_COLLECTIONS',
'WHERE COLLECTION_NAME = ''COL_PEDIDOS_LISTADO'';'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'REPORTE_PEDIDOS_LISTADO'
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
 p_id=>wwv_flow_imp.id(123913310960910548)
,p_max_row_count=>'1000000'
,p_no_data_found_message=>'NO SE ENCONTRARON REGISTROS'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'JUANASIS'
,p_internal_uid=>123913310960910548
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(124544526775389001)
,p_db_column_name=>'NOMBRE'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Nombre'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(124544789516389003)
,p_db_column_name=>'DESC_SUCURSAL'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Sucursal'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(124545069369389006)
,p_db_column_name=>'FECHA_ENTREGA'
,p_display_order=>60
,p_column_identifier=>'H'
,p_column_label=>'Fecha Entrega'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(124544872635389004)
,p_db_column_name=>'CLIENTE_RETIRA'
,p_display_order=>70
,p_column_identifier=>'F'
,p_column_label=>'Cliente Retira'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(124544960437389005)
,p_db_column_name=>'OBSERVACIONES'
,p_display_order=>80
,p_column_identifier=>'G'
,p_column_label=>'Observaciones'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(124545404421389010)
,p_db_column_name=>'IR'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Ir'
,p_column_link=>'javascript:void(null);'
,p_column_linktext=>'<button  type="button" class="btn" onclick="javascript:$s(''P417_SEQ_ID_IR'',''#P_ID#'');">IR</button>'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(124548270207389038)
,p_db_column_name=>'P_ID'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'P Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(124548369291389039)
,p_db_column_name=>'ID_ID'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Id'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(124552556085388659)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1245526'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'ID_ID:NOMBRE:DESC_SUCURSAL:FECHA_ENTREGA:CLIENTE_RETIRA:IR:'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(124545255071389008)
,p_plug_name=>unistr('Generaci\00F3n Masiva de Remisiones en Guarda - modal')
,p_region_template_options=>'#DEFAULT#:js-dialog-autoheight:js-dialog-size720x480:margin-top-sm:margin-bottom-sm:margin-left-sm:margin-right-sm'
,p_plug_template=>wwv_flow_imp.id(40117728043263659)
,p_plug_display_sequence=>1020
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(123910144158910516)
,p_plug_name=>'CABECERA_REM_GUARDA'
,p_parent_plug_id=>wwv_flow_imp.id(124545255071389008)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:i-h480:t-Region--removeHeader:t-Region--hiddenOverflow:margin-top-sm:margin-bottom-sm:margin-left-sm:margin-right-sm'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>1030
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(123910245667910517)
,p_plug_name=>'DETALLE_REM_GUARDA'
,p_parent_plug_id=>wwv_flow_imp.id(123910144158910516)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>50
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select C001 ser_comprobante,                      ',
'    C002 nro_comprobante,									       ',
'    C003 ||'' - '' ||',
'    C004 descripcion,',
'    C005 cantidad,',
'    C006 ||'' - '' ||',
'    C007 desc_suc_dist,',
'    C008 id,',
'    C009 cod_sucursal,',
'    C010 Remision,',
'    null imprimir',
'',
'from apex_collections',
'where collection_name = ''COL_PEDIDOS'';'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'DETALLE_REM_GUARDA'
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
 p_id=>wwv_flow_imp.id(124546631148389022)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'JUANASIS'
,p_internal_uid=>124546631148389022
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(124546793286389023)
,p_db_column_name=>'SER_COMPROBANTE'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Serie'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(124546869403389024)
,p_db_column_name=>'NRO_COMPROBANTE'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Nro. Factura'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(124547041299389026)
,p_db_column_name=>'DESCRIPCION'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Descripcion'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(124547199437389027)
,p_db_column_name=>'CANTIDAD'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Cantidad'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(124547392166389029)
,p_db_column_name=>'DESC_SUC_DIST'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Sucursal a enviar'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(124547421231389030)
,p_db_column_name=>'ID'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Id'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(124547566899389031)
,p_db_column_name=>'COD_SUCURSAL'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Cod Sucursal'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(124547671943389032)
,p_db_column_name=>'IMPRIMIR'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Imprimir'
,p_column_link=>'javascript:void(null);'
,p_column_linktext=>' <button  type="button" class="btn" onclick="javascript:$s(''P417_SEQ_ID_IMPRIMIR'',''#REMISION#'');">IMP</button>'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(124548514545389041)
,p_db_column_name=>'REMISION'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Remision'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(124643402041359879)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1246435'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'ID:SER_COMPROBANTE:NRO_COMPROBANTE:DESCRIPCION:CANTIDAD:DESC_SUC_DIST:REMISION:IMPRIMIR'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(124549125732389047)
,p_plug_name=>'DETALLE_CON_REMISION'
,p_parent_plug_id=>wwv_flow_imp.id(123910144158910516)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>60
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select C001 ser_comprobante,                      ',
'    C002 nro_comprobante,									       ',
'    C003 ||'' - '' ||',
'    C004 descripcion,',
'    C005 cantidad,',
'    C006 ||'' - '' ||',
'    C007 desc_suc_dist,',
'    C008 id,',
'    C009 cod_sucursal,',
'    C010 Remision,',
'    null imprimir',
'',
'from apex_collections',
'where collection_name = ''COL_REMISIONES'';'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'DETALLE_CON_REMISION'
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
 p_id=>wwv_flow_imp.id(124549203982389048)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'JUANASIS'
,p_internal_uid=>124549203982389048
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(124549391293389049)
,p_db_column_name=>'SER_COMPROBANTE'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Serie'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(124549429586389050)
,p_db_column_name=>'NRO_COMPROBANTE'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Nro. Factura'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(125942677332116501)
,p_db_column_name=>'DESCRIPCION'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Descripcion'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(125942792927116502)
,p_db_column_name=>'CANTIDAD'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Cantidad'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(125942872438116503)
,p_db_column_name=>'DESC_SUC_DIST'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Sucursal a enviar'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(125942990757116504)
,p_db_column_name=>'ID'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Id'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(125943038983116505)
,p_db_column_name=>'COD_SUCURSAL'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Cod Sucursal'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(125943178574116506)
,p_db_column_name=>'IMPRIMIR'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Imprimir'
,p_column_link=>'javascript:void(null);'
,p_column_linktext=>' <button  type="button" class="btn" onclick="javascript:$s(''P417_SEQ_ID_IMPRIMIR'',''#REMISION#'');">IMP</button>'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(125943268808116507)
,p_db_column_name=>'REMISION'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Remision'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(125957494884982562)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1259575'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'SER_COMPROBANTE:NRO_COMPROBANTE:DESCRIPCION:CANTIDAD:DESC_SUC_DIST:ID:COD_SUCURSAL:REMISION:IMPRIMIR:'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(123910857570910523)
,p_plug_name=>'CABECERA_PIE_REM_GUARDA'
,p_parent_plug_id=>wwv_flow_imp.id(124545255071389008)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>1050
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(123912814161910543)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(123912690922910541)
,p_button_name=>'BT_REFRESCAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--success:t-Button--gapTop'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Refrescar'
,p_warn_on_unsaved_changes=>null
,p_grid_new_row=>'N'
,p_grid_column=>10
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(123911069986910525)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(123910857570910523)
,p_button_name=>'BT_GENERAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('Generar Remisi\00F3n')
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(123911102134910526)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(123910857570910523)
,p_button_name=>unistr('BT_IMPRESI\00D3N_MASIVA')
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('Impresi\00F3n Masiva ')
,p_button_position=>'CREATE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(123908729111910502)
,p_name=>'P417_DERECHOS'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(123908696375910501)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(123908828391910503)
,p_name=>'P417_COD_MODULO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(123908696375910501)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(123908989046910504)
,p_name=>'P417_NOM_MODULO'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(123908696375910501)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(123909035998910505)
,p_name=>'P417_COD_FORMA'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(123908696375910501)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(123909151633910506)
,p_name=>'P417_NOM_FORMA'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(123908696375910501)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(123909273388910507)
,p_name=>'P417_COD_EMPRESA'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(123908696375910501)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(123909322530910508)
,p_name=>'P417_NOM_EMPRESA'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(123908696375910501)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(123909443294910509)
,p_name=>'P417_COD_SUCURSAL'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(123908696375910501)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(123909575096910510)
,p_name=>'P417_NOM_SUCURSAL'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(123908696375910501)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(123909605324910511)
,p_name=>'P417_COD_USUARIO'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(123908696375910501)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(123909705663910512)
,p_name=>'P417_COD_IDIOMA'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(123908696375910501)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(123909809656910513)
,p_name=>'P417_CODSISMENU'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(123908696375910501)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(123909901942910514)
,p_name=>'P417_COD_CLIENTE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(123910144158910516)
,p_prompt=>'Cliente'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_CLIENTES_STREMGUA'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select c.cod_cliente ||'' - ''|| p.nombre D,',
'       c.cod_cliente  R,',
'       decode(c.estado, ''A'', ''Activo'',',
'                        ''I'', ''Inactivo'',',
'                        ''B'', ''Bloqueado'',',
'                        ''C'', ''Cred. Bloqueado'',',
'                        ''D'', ''Demandado'',',
'                        ''R'', ''Bloq. Rend. STA'',',
'                             ''Ninguno'') estado',
'  from cc_clientes c,',
'       personas p',
' where c.cod_persona = p.cod_persona',
'   and c.cod_empresa = :P_COD_EMPRESA',
'   and c.cod_cliente in (select distinct cod_cliente from rp_productos_en_guarda)',
'',
'union',
'',
'select ''TODOS'', ''TODOS'', ''TODOS'' ',
'from dual',
' '))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- seleccione -'
,p_cSize=>30
,p_colspan=>4
,p_grid_column=>3
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
 p_id=>wwv_flow_imp.id(123910048944910515)
,p_name=>'P417_DESC_CLIENTE'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(123908696375910501)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(123910602406910521)
,p_name=>'P417_SER_REMISION'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(123910144158910516)
,p_prompt=>unistr('Serie Remisi\00F3n')
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_colspan=>4
,p_grid_column=>3
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(123910748136910522)
,p_name=>'P417_ID'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(123910144158910516)
,p_prompt=>'Id a generar'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_begin_on_new_line=>'N'
,p_colspan=>4
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(123911459452910529)
,p_name=>'P417_AUX_MSJ_CONTROL'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(123908696375910501)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(123912512559910540)
,p_name=>'P417_DATOS'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(123910144158910516)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(123912779866910542)
,p_name=>'P417_G_COD_CLIENTE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(123912690922910541)
,p_prompt=>'Cliente'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_CLIENTES_GEN'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select c.cod_cliente||'' - ''|| p.nombre D,',
'       C.cod_cliente R,',
'       decode(c.estado, ''A'', ''Activo'',',
'                        ''I'', ''Inactivo'',',
'                        ''B'', ''Bloqueado'',',
'                        ''C'', ''Cred. Bloqueado'',',
'                        ''D'', ''Demandado'',',
'                        ''R'', ''Bloq. Rend. STA'',',
'                             ''Ninguno'') estado',
'  from cc_clientes c,',
'       personas p',
' where c.cod_persona = p.cod_persona',
'   and c.cod_empresa = :P_COD_EMPRESA',
'   and c.cod_cliente in (select distinct cod_cliente from rp_productos_en_guarda)',
'',
'union',
'',
'select ''TODOS'', ''TODOS'', ''TODOS'' ',
'from dual',
' '))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- Selecicone -'
,p_cSize=>30
,p_colspan=>4
,p_grid_column=>3
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
 p_id=>wwv_flow_imp.id(124545699598389012)
,p_name=>'P417_SEQ_ID_IR'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(123912690922910541)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(124547745124389033)
,p_name=>'P417_SEQ_ID_IMPRIMIR_IND'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(124545255071389008)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(124548931084389045)
,p_name=>'P417_EJECUTAR_REPORT_STREMAUT'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(123910857570910523)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(125943639615116511)
,p_name=>'P417_AUX_NRO_COMPROBANTE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(124545255071389008)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(125943729464116512)
,p_name=>'P417_AUX_SER_COMPROBANTE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(124545255071389008)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(125943846305116513)
,p_name=>'P417_AUX_NRO_REMISION'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(124545255071389008)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(123911210237910527)
,p_name=>'DA_GENERAR_REMISIONES'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(123911069986910525)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(123911360476910528)
,p_event_id=>wwv_flow_imp.id(123911210237910527)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF :P417_COD_CLIENTE IS NULL THEN',
unistr('    :P417_AUX_MSJ_CONTROL := ''Debe ingresar un cliente v\00E1lido para continuar'';'),
'    ELSIF :P417_SER_REMISION IS NULL THEN',
unistr('        :P417_AUX_MSJ_CONTROL := ''Debe ingresar una serie v\00E1lida'';'),
'        ELSIF :P417_ID IS NULL THEN',
'            :P417_AUX_MSJ_CONTROL := ''Debe seleccionar un ID para continuar'';',
'            ELSE',
'            BEGIN',
'                :P417_AUX_MSJ_CONTROL := NULL;',
'            END;',
'END IF;',
''))
,p_attribute_02=>'P417_COD_CLIENTE,P417_SER_REMISION,P417_ID'
,p_attribute_03=>'P417_AUX_MSJ_CONTROL'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(123911682989910531)
,p_event_id=>wwv_flow_imp.id(123911210237910527)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'&P417_AUX_MSJ_CONTROL.'
,p_attribute_02=>'ERROR'
,p_attribute_03=>'warning'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P417_AUX_MSJ_CONTROL'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(123911869288910533)
,p_event_id=>wwv_flow_imp.id(123911210237910527)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>unistr('\00BFGenerar remisiones?')
,p_attribute_02=>'MENSAJE'
,p_attribute_03=>'information'
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P417_AUX_MSJ_CONTROL'
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
 p_id=>wwv_flow_imp.id(123911992628910534)
,p_event_id=>wwv_flow_imp.id(123911210237910527)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'     sp_crea_remision_mas_guarda(p_cod_empresa  => :P417_COD_EMPRESA,',
'                                p_id            => :P417_ID,',
'                                p_ser_remision    => :P417_SER_REMISION,',
'                                p_datos => :P417_DATOS);',
'',
'END;'))
,p_attribute_02=>'P417_SER_REMISION,P417_ID,P417_COD_EMPRESA'
,p_attribute_03=>'P417_DATOS'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P417_AUX_MSJ_CONTROL'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(124546190212389017)
,p_event_id=>wwv_flow_imp.id(123911210237910527)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'Remisiones Generadas'
,p_attribute_02=>'MENSAJE'
,p_attribute_03=>'information'
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P417_AUX_MSJ_CONTROL'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(124546269965389018)
,p_event_id=>wwv_flow_imp.id(123911210237910527)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'    for remisiones IN(  select c.nro_comprobante, c.id_guarda ',
'                from st_remision_cab c,',
'                     st_remision_det d',
'               where c.cod_empresa     = d.cod_empresa',
'                 and c.tip_comprobante = d.tip_comprobante',
'                 and c.ser_comprobante = d.ser_comprobante',
'                 and c.nro_comprobante = d.nro_comprobante',
'                 and c.ser_comprobante = :P417_SER_REMISION',
'                 and c.id_guarda       = :P417_ID',
'                 --and c.id_guarda       = :b_detalles.id',
'               order by c.nro_comprobante) LOOP',
'        FOR PEDIDO IN (SELECT ',
'                                seq_id p_id,',
'                                C001 ser_comprobante,                      ',
'                                C002 nro_comprobante,									       ',
'                                C003 cod_corto,',
'                                C004 descripcion,',
'                                C005 cantidad,',
'                                C006 cod_sucursal_dist,',
'                                C007 desc_suc_dist,',
'                                C008 id,',
'                                C009 cod_sucursal ',
'                        from APEX_COLLECTIONS',
'                        where COLLECTION_NAME  = ''COL_PEDIDOS'')LOOP',
'                            if PEDIDO.id = :P417_ID then  ',
'                                APEX_COLLECTION.UPDATE_MEMBER(P_COLLECTION_NAME => ''COL_PEDIDOS'',',
'                                                p_seq => pedido.p_id,',
'                                                p_C001 => pedido.ser_comprobante,                      ',
'                                                p_C002 => pedido.nro_comprobante,									       ',
'                                                p_C003 => pedido.cod_corto,',
'                                                p_C004 => pedido.descripcion,',
'                                                p_C005 => pedido.cantidad,',
'                                                p_C006 => pedido.cod_sucursal_dist,',
'                                                p_C007 => pedido.desc_suc_dist,',
'                                                p_C008 => pedido.id,',
'                                                p_C009 => pedido.cod_sucursal,',
'                                                p_c010 => remisiones.nro_comprobante);',
'                            END IF;',
'                      END LOOP;',
'    END LOOP;',
'end;'))
,p_attribute_02=>'P417_ID,P417_SER_REMISION'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_server_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(125943341447116508)
,p_event_id=>wwv_flow_imp.id(123911210237910527)
,p_event_result=>'TRUE'
,p_action_sequence=>80
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'    APEX_COLLECTION.CREATE_OR_TRUNCATE_COLLECTION(P_COLLECTION_NAME => ''COL_REMISIONES'');',
'    for remisiones IN(  select c.nro_comprobante, c.id_guarda ',
'                from st_remision_cab c,',
'                     st_remision_det d',
'               where c.cod_empresa     = d.cod_empresa',
'                 and c.tip_comprobante = d.tip_comprobante',
'                 and c.ser_comprobante = d.ser_comprobante',
'                 and c.nro_comprobante = d.nro_comprobante',
'                 and c.ser_comprobante = :P417_SER_REMISION',
'                 and c.id_guarda       = :P417_ID',
'                 --and c.id_guarda       = :b_detalles.id',
'               order by c.nro_comprobante) LOOP',
'        FOR PEDIDO IN (SELECT ',
'                                seq_id p_id,',
'                                C001 ser_comprobante,                      ',
'                                C002 nro_comprobante,									       ',
'                                C003 cod_corto,',
'                                C004 descripcion,',
'                                C005 cantidad,',
'                                C006 cod_sucursal_dist,',
'                                C007 desc_suc_dist,',
'                                C008 id,',
'                                C009 cod_sucursal ',
'                        from APEX_COLLECTIONS',
'                        where COLLECTION_NAME  = ''COL_PEDIDOS'')LOOP',
'                            if PEDIDO.id = :P417_ID then  ',
'                                APEX_COLLECTION.add_MEMBER(P_COLLECTION_NAME => ''COL_REMISIONES'',',
'                                                p_C001 => pedido.ser_comprobante,                      ',
'                                                p_C002 => pedido.nro_comprobante,									       ',
'                                                p_C003 => pedido.cod_corto,',
'                                                p_C004 => pedido.descripcion,',
'                                                p_C005 => pedido.cantidad,',
'                                                p_C006 => pedido.cod_sucursal_dist,',
'                                                p_C007 => pedido.desc_suc_dist,',
'                                                p_C008 => pedido.id,',
'                                                p_C009 => pedido.cod_sucursal,',
'                                                p_c010 => remisiones.nro_comprobante);',
'                            END IF;',
'                      END LOOP;',
'    END LOOP;',
'end;'))
,p_attribute_02=>'P417_SER_REMISION,P417_ID'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(125943441720116509)
,p_event_id=>wwv_flow_imp.id(123911210237910527)
,p_event_result=>'TRUE'
,p_action_sequence=>90
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(124549125732389047)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(125943589452116510)
,p_event_id=>wwv_flow_imp.id(123911210237910527)
,p_event_result=>'TRUE'
,p_action_sequence=>100
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(123910245667910517)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(124548682029389042)
,p_event_id=>wwv_flow_imp.id(123911210237910527)
,p_event_result=>'TRUE'
,p_action_sequence=>110
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(123910245667910517)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(123912979391910544)
,p_name=>'DA_REFRESCAR'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(123912814161910543)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(123913000989910545)
,p_event_id=>wwv_flow_imp.id(123912979391910544)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    STREMGUA.pf_recupera_pedidos_listado (PI_COD_EMPRESA => :P417_COD_EMPRESA,---Recupera todos los pedidos pendientes en guarda generados en la pantalla RPPROGUA',
'                                          PI_COD_CLIENTE => :P417_G_COD_CLIENTE);',
'END;'))
,p_attribute_02=>'P417_G_COD_CLIENTE,P417_COD_EMPRESA'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(124545180747389007)
,p_event_id=>wwv_flow_imp.id(123912979391910544)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(123913290531910547)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(124545797246389013)
,p_name=>'DA_IR'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P417_SEQ_ID_IR'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(124546096096389016)
,p_event_id=>wwv_flow_imp.id(124545797246389013)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'    SELECT ',
'    C001 ID_Id,',
'    C002 cod_cliente',
'    INTO ',
'    :P417_ID,',
'    :P417_COD_CLIENTE',
'    FROM APEX_COLLECTIONS',
'    WHERE COLLECTION_NAME = ''COL_PEDIDOS_LISTADO''',
'    and seq_id  = :P417_SEQ_ID_IR;',
' exception',
' when no_data_found then',
'    RAISE_APPLICATION_ERROR (-20111,''No se encontraron datos.'');',
'end;'))
,p_attribute_02=>'P417_SEQ_ID_IR'
,p_attribute_03=>'P417_COD_CLIENTE,P417_ID'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(125944463325116519)
,p_event_id=>wwv_flow_imp.id(124545797246389013)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P417_SER_REMISION'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(124545939867389015)
,p_event_id=>wwv_flow_imp.id(124545797246389013)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(124545255071389008)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(124546301508389019)
,p_name=>'DA_SER_REMISION'
,p_event_sequence=>40
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P417_SER_REMISION'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(124546419146389020)
,p_event_id=>wwv_flow_imp.id(124546301508389019)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P417_SER_REMISION is not null then',
'  declare',
'  	wexiste varchar2(1);',
'  begin',
'	  select ''S''',
'	    into wexiste',
'	    from talonarios',
'	   where cod_empresa   = :P417_COD_EMPRESA',
'	     and tip_talonario = ''REM''',
'	     and serie 	 = :P417_SER_REMISION',
'	     and rownum = 1;	  ',
'  exception',
'  	when no_data_found then',
'        RAISE_APPLICATION_ERROR (-20111,''No existe la serie ingresada. Favor verifique.'');',
'  	when others then',
unistr('        RAISE_APPLICATION_ERROR (-20111,''Error de validaci\00F3n: ''||sqlerrm);'),
'  end;',
'  ',
'else',
'    RAISE_APPLICATION_ERROR (-20111,''Debe ingresar una serie.'');',
'end if;'))
,p_attribute_02=>'P417_SER_REMISION,P417_COD_EMPRESA'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(124546533237389021)
,p_event_id=>wwv_flow_imp.id(124546301508389019)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    STREMGUA.PF_RECUPERA_PEDIDOS(PI_COD_EMPRESA => :P417_COD_EMPRESA,',
'                PI_COD_CLIENTE => :P417_COD_CLIENTE,',
'                PI_ID => :P417_ID);',
'END;    '))
,p_attribute_02=>'P417_ID,P417_COD_CLIENTE,P417_COD_EMPRESA'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(124548407048389040)
,p_event_id=>wwv_flow_imp.id(124546301508389019)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(123910245667910517)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(124547884977389034)
,p_name=>'DA_IMPRIMIR_INDIVIDUAL'
,p_event_sequence=>50
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P417_SEQ_ID_IMPRIMIR_IND'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(124547918085389035)
,p_event_id=>wwv_flow_imp.id(124547884977389034)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex_debug.error(''P417_SEQ_ID_IMPRIMIR_IND''||:P417_SEQ_ID_IMPRIMIR_IND);',
'if :P417_SEQ_ID_IMPRIMIR_IND is not null then ',
'	 STREMGUA.pf_imprimir_remisiones( PI_COD_EMPRESA => :P417_COD_EMPRESA,',
'                           PI_SER_REMISION => :P417_SER_REMISION,',
'                           PI_NRO_REMISION => :P417_SEQ_ID_IMPRIMIR_IND);',
'    select C001 ser_comprobante,',
'           C002 nro_comprobante,',
'           c010 nro_remision',
'    INTO',
'        :P417_AUX_SER_COMPROBANTE,',
'        :P417_AUX_NRO_COMPROBANTE,',
'        :P417_AUX_NRO_REMISION',
'    from apex_collections',
'    where collection_name = ''COL_DETALLE''',
'    AND SEQ_ID = :P417_SEQ_ID_IMPRIMIR_IND;',
'',
'    :P417_EJECUTAR_REPORT_STREMAUT := 1;',
'else',
unistr('    RAISE_APPLICATION_ERROR (-20111,''El pedido no tiene remisi\00F3n asignada.'' );'),
'end if;'))
,p_attribute_02=>'P417_SER_REMISION,P417_SEQ_ID_IMPRIMIR_IND,P417_COD_EMPRESA'
,p_attribute_03=>'P417_EJECUTAR_REPORT_STREMAUT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(124549069459389046)
,p_event_id=>wwv_flow_imp.id(124547884977389034)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'doDescarga(apex.item(''P417_COD_CLIENTE'').getValue(), ',
'    apex.item(''P417_COD_EMPRESA'').getValue(),',
'    "", ',
'    apex.item(''P417_AUX_SER_COMPROBANTE'').getValue(), ',
'    apex.item(''P417_AUX_NRO_COMPROBANTE'').getValue(),',
'    apex.item(''P_COD_USUARIO'').getValue(), ',
'    "",',
'    "");'))
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P417_EJECUTAR_REPORT_STREMAUT'
,p_client_condition_expression=>'1'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(124548030286389036)
,p_name=>unistr('DA_IMPRESI\00D3N_MASIVA')
,p_event_sequence=>60
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(123911102134910526)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(125944373350116518)
,p_event_id=>wwv_flow_imp.id(124548030286389036)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    FOR C IN(SELECT',
'         C001 SER_COMPROBANTE,',
'         C008 ID_id',
'    FROM APEX_COLLECTIONS',
'    WHERE COLLECTION_NAME = ''COL_REMISIONES'')LOOP',
'        ',
'IF C.SER_COMPROBANTE is NOT NULL THEN',
'    declare',
'    V_DETALLE_NRO_PEDIDO VARCHAR2(100);',
'		BEGIN',
'            apex_debug.error(''sp_crea_remision_masiva'');',
'		  	sp_crea_remision_masiva(:P_COD_EMPRESA,',
'		       		                C.ID_id,',
'		         		            C.SER_COMPROBANTE,',
'		           	                V_DETALLE_NRO_PEDIDO);',
'		    EXCEPTION',
'        WHEN OTHERS THEN',
'            APEX_DEBUG.ERROR(SQLERRM);',
'        END;',
'end if;',
'    END LOOP;',
'',
'END;',
''))
,p_attribute_02=>'P417_SER_REMISION,P417_ID,P417_COD_EMPRESA'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(125944095539116515)
,p_event_id=>wwv_flow_imp.id(124548030286389036)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'doStremautMasivo (apex.item(''P_COD_EMPRESA'').getValue(), ',
'                  apex.item(''P417_ID'').getValue(),',
'                  apex.item(''P_COD_USUARIO'').getValue());'))
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(123910407073910519)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_INIT'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'   --inicializa globales',
'   :P417_COD_USUARIO := nvl(:P_COD_USUARIO,USER);',
'   :P417_COD_EMPRESA := nvl(:P417_COD_EMPRESA,''1'');',
'   :P417_NOM_EMPRESA := nvl(:P417_NOM_EMPRESA,NULL);',
'   :P417_COD_SUCURSAL := nvl(:P417_COD_SUCURSAL,''01'');',
'   :P417_NOM_SUCURSAL := nvl(:P417_NOM_SUCURSAL,NULL);',
'   :P417_COD_MODULO := nvl(:P417_COD_MODULO,''RP'');',
'    --INICIALIZA LOCALES',
'    :P417_COD_FORMA := ''STREMGUA'';',
'',
'end;'))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_imp.component_end;
end;
/
