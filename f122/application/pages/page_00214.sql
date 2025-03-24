prompt --application/pages/page_00214
begin
--   Manifest
--     PAGE: 00214
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
 p_id=>214
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'CCRETCHE'
,p_alias=>'CCRETCHE'
,p_step_title=>'CCRETCHE'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_last_updated_by=>'NZARATE'
,p_last_upd_yyyymmddhh24miss=>'20240906152501'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(45494016027535543)
,p_plug_name=>'VARIABLES AUXILIARES'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(47489594555735725)
,p_plug_name=>'GENERAL'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>50
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(47489618626735726)
,p_plug_name=>'CABECERA'
,p_parent_plug_id=>wwv_flow_imp.id(47489594555735725)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(47490204830735732)
,p_plug_name=>'IZQUIERDA'
,p_parent_plug_id=>wwv_flow_imp.id(47489618626735726)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(47490364389735733)
,p_plug_name=>'DERECHA'
,p_parent_plug_id=>wwv_flow_imp.id(47489618626735726)
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
 p_id=>wwv_flow_imp.id(47489816918735728)
,p_plug_name=>'DETALLES'
,p_parent_plug_id=>wwv_flow_imp.id(47489594555735725)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(47491825002735748)
,p_plug_name=>'AGREGAR/EDITAR'
,p_parent_plug_id=>wwv_flow_imp.id(47489816918735728)
,p_region_template_options=>'#DEFAULT#:js-dialog-size600x400'
,p_plug_template=>wwv_flow_imp.id(40120082745263659)
,p_plug_display_sequence=>30
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(48346876042371133)
,p_plug_name=>'DETALLES_CHEQUE'
,p_parent_plug_id=>wwv_flow_imp.id(47489816918735728)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'        seq_id SEQ_ID,',
'        c001 SUB_TIPO_TRANS, ',
'        c002 TIPO_DOCUMENTO,',
'        c003 SER_DOCUMENTO,',
'        c004 NRO_VALOR,',
'        c005 COD_PER_JURIDICA,',
'        d001 FEC_VENCIMIENTO,',
'        d002 FEC_VENCIMIENTO_NEW,',
'        c006 DIAS,',
'        c007 COD_MONEDA,',
'        c008 MONTO_VALOR,',
'        c009 DEBITO,',
'        NULL DETALLES,',
'        NULL EDITAR,',
'        NULL ELIMINAR',
'',
'FROM APEX_COLLECTIONS',
'WHERE COLLECTION_NAME = ''CLIENTE_CHEQUE'';'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'DETALLES_CHEQUE'
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
 p_id=>wwv_flow_imp.id(48346918572371134)
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
,p_internal_uid=>48346918572371134
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(48347099497371135)
,p_db_column_name=>'SUB_TIPO_TRANS'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Sub Tipo Trans'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(48347139454371136)
,p_db_column_name=>'TIPO_DOCUMENTO'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Tipo Documento'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(48347226029371137)
,p_db_column_name=>'SER_DOCUMENTO'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Ser Documento'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(48347375953371138)
,p_db_column_name=>'NRO_VALOR'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Nro Valor'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(48347470307371139)
,p_db_column_name=>'COD_PER_JURIDICA'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Cod Per Juridica'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(48347577905371140)
,p_db_column_name=>'FEC_VENCIMIENTO'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Fec Vencimiento'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(48347622601371141)
,p_db_column_name=>'FEC_VENCIMIENTO_NEW'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Fec Vencimiento New'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(48347781425371142)
,p_db_column_name=>'DIAS'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Dias'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(48347834051371143)
,p_db_column_name=>'COD_MONEDA'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Cod Moneda'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(48347987114371144)
,p_db_column_name=>'MONTO_VALOR'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Monto Valor'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(48348091747371145)
,p_db_column_name=>'DEBITO'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Debito'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(48348222698371147)
,p_db_column_name=>'DETALLES'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Detalles'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(48348395898371148)
,p_db_column_name=>'EDITAR'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Editar'
,p_column_link=>'javascript:$s(''P214_SEQ_ID_EDITAR'',''#SEQ_ID#'');'
,p_column_linktext=>'<span aria-hidden="true" class="fa fa-edit"></span>'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(48348419400371149)
,p_db_column_name=>'ELIMINAR'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>'Eliminar'
,p_column_link=>'javascript:$s(''P214_SEQ_ID_ELIMINAR'',''#SEQ_ID#'');'
,p_column_linktext=>'<span class="fa fa-trash" aria-hidden="true"></span>'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(48618600505946703)
,p_db_column_name=>'SEQ_ID'
,p_display_order=>150
,p_column_identifier=>'O'
,p_column_label=>'Seq Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(48607868516882444)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'486079'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'SUB_TIPO_TRANS:TIPO_DOCUMENTO:SER_DOCUMENTO:NRO_VALOR:COD_PER_JURIDICA:FEC_VENCIMIENTO:FEC_VENCIMIENTO_NEW:DIAS:COD_MONEDA:MONTO_VALOR:DEBITO:DETALLES:EDITAR:ELIMINAR:'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(47489901267735729)
,p_plug_name=>'DETALLES_EXTRA'
,p_parent_plug_id=>wwv_flow_imp.id(47489594555735725)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>30
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(47490022594735730)
,p_plug_name=>'DERECHA'
,p_parent_plug_id=>wwv_flow_imp.id(47489901267735729)
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
 p_id=>wwv_flow_imp.id(47804068143041614)
,p_plug_name=>'IZQUIERDA'
,p_parent_plug_id=>wwv_flow_imp.id(47489901267735729)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(48345544782371120)
,p_plug_name=>'CABECERA_FECHA'
,p_parent_plug_id=>wwv_flow_imp.id(47489594555735725)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>40
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(48622688036946743)
,p_plug_name=>'CCCALINCHE'
,p_region_template_options=>'#DEFAULT#:js-dialog-autoheight:t-DialogRegion--noPadding:js-dialog-size720x480'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40117728043263659)
,p_plug_display_sequence=>60
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT rc.cod_cliente, ',
'       ltrim(rtrim( nvl( pc.nombre, pc.nomb_fantasia ))) nom_cliente,',
'       rc.fec_comprobante,',
'       rd.Tip_Documento, ',
'       rd.Ser_Documento,  ',
'       rd.Nro_Valor,',
'       1 nro_cuota,',
'       rd.Cod_Moneda cod_moneda, ',
'       rd.tip_cambio,  ',
'       mo.descripcion desc_moneda,',
'       rd.sub_tipo_trans, ',
'       sb.descripcion desc_tipo_trans,',
'       decode( rd.Cod_Moneda, ''1'', nvl( rd.monto_valor, 0 ), 0 ) importe_gs,',
'       decode( rd.cod_moneda, ''2'', nvl( rd.monto_valor, 0 ), 0 ) importe_us,',
'       rd.monto_valor,',
'       --RD.NRO_VALOR, ',
'       RD.FEC_VENCIMIENTO,',
'       RD.FEC_VENCIMIENTO_NEW,',
'       ''VALORES'' TIPO, ',
'       val.fec_emision--, ',
'       --rc.fec_comprobante',
' FROM cc_solicitud_mov_valores_cab rc,',
'        cc_solicitud_mov_valores_det rd,',
'        cc_clientes cl,',
'        monedas mo,',
'        personas pc,',
'        subtipos_trans sb, cc_valores val',
'WHERE rc.cod_empresa = :P_COD_EMPRESA',
'--AND ((:p_fec_inicial is null AND :p_fec_final is null ) or rc.fec_comprobante between :p_fec_inicial and :p_fec_final )',
'AND ( :P214_COD_CLIENTE is null or rc.cod_cliente = :P214_COD_CLIENTE )',
'AND ( :P214_TIP_COMPROBANTE  is null or rc.tip_comprobante  = :P214_TIP_COMPROBANTE  )',
'AND ( :P214_SER_COMPROBANTE   is null or rc.ser_comprobante  = :P214_SER_COMPROBANTE  )',
'AND ( :P214_NRO_COMPROBANTE   is null or rc.nro_comprobante  = :P214_NRO_COMPROBANTE  )',
'AND nvl( rc.estado, ''N'' ) <> ''A''',
'AND rc.cod_empresa      = cl.cod_empresa',
'AND rc.cod_cliente      = cl.cod_cliente',
'AND cl.cod_persona      = pc.cod_persona(+)',
'AND rc.cod_empresa =  rd.cod_empresa',
'AND rc.tip_comprobante = rd.tip_comprobante',
'AND rc.ser_comprobante = rd.ser_comprobante',
'AND rc.nro_comprobante = rd.nro_comprobante',
'AND val.cod_empresa=rd.cod_empresa',
'AND val.nro_valor = rd.nro_valor',
'AND val.cod_per_juridica=rd.cod_per_juridica',
'AND val.tip_documento=rd.tip_documento',
'AND val.ser_documento=rd.ser_documento ',
'AND rd.cod_moneda = mo.cod_moneda(+)',
'AND rd.cod_empresa      = sb.cod_empresa',
'AND rd.tipo_trans       = sb.tipo_trans',
'AND rd.sub_tipo_trans   = sb.subtipo_trans',
'AND sb.cod_modulo = ''CC''',
'AND :P214_INDICADOR_REPORTE = ''1'' ',
'ORDER BY 3,8,9, 4,5,6,7 DESC',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'CCCALINCHE'
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
 p_id=>wwv_flow_imp.id(48622734743946744)
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
,p_internal_uid=>48622734743946744
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(48622814246946745)
,p_db_column_name=>'COD_CLIENTE'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Cod Cliente'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(48622931072946746)
,p_db_column_name=>'NOM_CLIENTE'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Nom Cliente'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(48623040477946747)
,p_db_column_name=>'FEC_COMPROBANTE'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Fec Comprobante'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(48623139947946748)
,p_db_column_name=>'TIP_DOCUMENTO'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Tip Documento'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(48623256860946749)
,p_db_column_name=>'SER_DOCUMENTO'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Ser Documento'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(48623358236946750)
,p_db_column_name=>'NRO_VALOR'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Nro Valor'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(49160673582859501)
,p_db_column_name=>'NRO_CUOTA'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Nro Cuota'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(49160778238859502)
,p_db_column_name=>'COD_MONEDA'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Cod Moneda'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(49160853382859503)
,p_db_column_name=>'TIP_CAMBIO'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Tip Cambio'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(49160942437859504)
,p_db_column_name=>'DESC_MONEDA'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Desc Moneda'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(49161050697859505)
,p_db_column_name=>'SUB_TIPO_TRANS'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Sub Tipo Trans'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(49161116409859506)
,p_db_column_name=>'DESC_TIPO_TRANS'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Desc Tipo Trans'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(49161200828859507)
,p_db_column_name=>'IMPORTE_GS'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Importe Gs'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_format_mask=>'999G999G999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(49161312292859508)
,p_db_column_name=>'IMPORTE_US'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>'Importe Us'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_format_mask=>'999G999G999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(49161423889859509)
,p_db_column_name=>'MONTO_VALOR'
,p_display_order=>150
,p_column_identifier=>'O'
,p_column_label=>'Monto Valor'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_format_mask=>'999G999G999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(49161560543859510)
,p_db_column_name=>'FEC_VENCIMIENTO'
,p_display_order=>160
,p_column_identifier=>'P'
,p_column_label=>'Fec Vencimiento'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(49161628506859511)
,p_db_column_name=>'FEC_VENCIMIENTO_NEW'
,p_display_order=>170
,p_column_identifier=>'Q'
,p_column_label=>'Fec Vencimiento New'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(49161762084859512)
,p_db_column_name=>'TIPO'
,p_display_order=>180
,p_column_identifier=>'R'
,p_column_label=>'Tipo'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(49161839309859513)
,p_db_column_name=>'FEC_EMISION'
,p_display_order=>190
,p_column_identifier=>'S'
,p_column_label=>'Fec Emision'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(49173186168864702)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'491732'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'COD_CLIENTE:NOM_CLIENTE:FEC_COMPROBANTE:TIP_DOCUMENTO:SER_DOCUMENTO:NRO_VALOR:NRO_CUOTA:COD_MONEDA:TIP_CAMBIO:DESC_MONEDA:SUB_TIPO_TRANS:DESC_TIPO_TRANS:IMPORTE_GS:IMPORTE_US:MONTO_VALOR:FEC_VENCIMIENTO:FEC_VENCIMIENTO_NEW:TIPO:FEC_EMISION'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(47805076063041624)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(47490022594735730)
,p_button_name=>'P214_BOTON_GENERAR_RETENCION'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--small:t-Button--stretch:t-Button--padLeft:t-Button--padRight:t-Button--padTop:t-Button--padBottom'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('Generar Retenci\00F3n')
,p_warn_on_unsaved_changes=>null
,p_grid_new_row=>'Y'
,p_grid_column_span=>6
,p_grid_column=>4
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(47805101057041625)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(47490022594735730)
,p_button_name=>'P214_PROCESAR_SIN_RETENCION'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--small:t-Button--stretch:t-Button--padLeft:t-Button--padRight:t-Button--padTop:t-Button--padBottom'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('Procesar sin Retenci\00F3n')
,p_warn_on_unsaved_changes=>null
,p_grid_new_row=>'Y'
,p_grid_column_span=>6
,p_grid_column=>4
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(48621735174946734)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(47490022594735730)
,p_button_name=>'P214_INTERES'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--small:t-Button--stretch:t-Button--padLeft:t-Button--padRight:t-Button--padTop:t-Button--padBottom'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Intereses'
,p_warn_on_unsaved_changes=>null
,p_grid_new_row=>'Y'
,p_grid_column_span=>6
,p_grid_column=>4
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(49164936311859544)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(47489594555735725)
,p_button_name=>'P214_BOTON_VOLVER'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Volver'
,p_button_position=>'BOTTOM'
,p_button_redirect_url=>'f?p=&APP_ID.:215:&SESSION.::&DEBUG.:::'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(49162357790859518)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(48622688036946743)
,p_button_name=>'P214_CERRAR_CCCALINCHE'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_image_alt=>'Cerrar'
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(48344763964371112)
,p_button_sequence=>160
,p_button_plug_id=>wwv_flow_imp.id(47491825002735748)
,p_button_name=>'P214_BOTON_CANCELAR_CR_ED'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_image_alt=>'Cancelar'
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(48344683972371111)
,p_button_sequence=>140
,p_button_plug_id=>wwv_flow_imp.id(47491825002735748)
,p_button_name=>'P214_BOTON_ACEPTAR_CR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Aceptar'
,p_button_position=>'CREATE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(48344834083371113)
,p_button_sequence=>150
,p_button_plug_id=>wwv_flow_imp.id(47491825002735748)
,p_button_name=>'P214_BOTON_ACEPTAR_ED'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Aceptar'
,p_button_position=>'CREATE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(47491978397735749)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(47489816918735728)
,p_button_name=>'P214_BOTON_AGREGAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Agregar'
,p_button_position=>'TOP'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(45494208765535545)
,p_name=>'P214_TIPO_TRANS'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(45494016027535543)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(45494303984535546)
,p_name=>'P214_SUB_TIPO_TRANS'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(45494016027535543)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(45494464810535547)
,p_name=>'P214_SER_RECIBO'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(45494016027535543)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(45494548874535548)
,p_name=>'P214_TIP_RECIBO'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(45494016027535543)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(45494603560535549)
,p_name=>'P214_SECTOR_BANCARIO'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(45494016027535543)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(47488305092735713)
,p_name=>'P214_SECTOR_TARJETAS'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(45494016027535543)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(47488540673735715)
,p_name=>'P214_TIPOS_MOV_VALORES'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(45494016027535543)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(47488623793735716)
,p_name=>'P214_SUB_TIPO_CHEQUES'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(45494016027535543)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(47488721733735717)
,p_name=>'P214_TIPO_RECHAZO'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(45494016027535543)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(47488816178735718)
,p_name=>'P214_TIPO_CANJE'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(45494016027535543)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(47488911552735719)
,p_name=>'P214_TIPO_INGRESO'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(45494016027535543)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(47489065898735720)
,p_name=>'P214_COD_MONEDA_BASE'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(45494016027535543)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(47489198305735721)
,p_name=>'P214_TIPO_TRANS_CAN'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(45494016027535543)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(47489230966735722)
,p_name=>'P214_SUB_TRANS_CHE_DEV'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(45494016027535543)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(47489355629735723)
,p_name=>'P214_CONTROLA'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(45494016027535543)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(47490194778735731)
,p_name=>'P214_COD_SUCURSAL'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(47490204830735732)
,p_prompt=>'Sucursal'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LVSUCURSALES'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  SELECT cod_sucursal||'' - '' ||descripcion D, ',
'         cod_sucursal R',
'    FROM sucursales',
'    WHERE COD_EMPRESA = :P_COD_EMPRESA',
'ORDER BY descripcion;'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186937130263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(47490467735735734)
,p_name=>'P214_COD_CLIENTE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(47490364389735733)
,p_prompt=>'Cliente'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT  c.cod_cliente || '' - ''  || ltrim( rtrim( nvl( p.nombre, p.nomb_fantasia ) ) ) D, ',
'        c.cod_cliente R',
'FROM    cc_clientes c, ',
'        personas p ',
'',
'WHERE   cod_empresa = :P_COD_EMPRESA ',
'AND     c.cod_persona = p.cod_persona ',
'ORDER BY 1'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186937130263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
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
 p_id=>wwv_flow_imp.id(47490614168735736)
,p_name=>'P214_TIP_COMPROBANTE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(47490204830735732)
,p_prompt=>'Tipo Comprobante'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT td.abreviatura || '' - '' || td.descripcion D, td.tip_comprobante R',
'FROM parametros_generales pg, tipos_comprobantes td ',
'WHERE pg.cod_modulo = :P_COD_MODULO',
'AND pg.parametro IN( ''TIPO_RETENCION_CHEQ'' ) ',
'AND td.cod_empresa = :P_COD_EMPRESA',
'AND pg.valor = td.tip_comprobante ',
'ORDER BY 1;'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186937130263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(47490780296735737)
,p_name=>'P214_SER_COMPROBANTE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(47490204830735732)
,p_prompt=>'Serie'
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
 p_id=>wwv_flow_imp.id(47490837997735738)
,p_name=>'P214_NRO_COMPROBANTE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(47490204830735732)
,p_prompt=>unistr('N\00FAmero')
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
 p_id=>wwv_flow_imp.id(47490953153735739)
,p_name=>'P214_FEC_COMPROBANTE'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(47490204830735732)
,p_prompt=>'Fecha'
,p_display_as=>'NATIVE_DATE_PICKER_JET'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186937130263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'POPUP'
,p_attribute_03=>'NONE'
,p_attribute_06=>'NONE'
,p_attribute_09=>'N'
,p_attribute_11=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(47491041591735740)
,p_name=>'P214_DERIVADO'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(47490204830735732)
,p_prompt=>'Derivado'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:FACTURACION-CONTROL;F,COBRANZAS;CO,CREDITOS;CR,DIRECTORIO;DI,RRHH;RH,CANJE;CA,MARKETING;MA,ANULACION;AN,AUTORIZADO A FACTURA;AF,VENTAS;VE,AUTORIZACION CREDITOS;AC,CREDITOS;CR,CANJE PUBLICIDAD;CP,ARREGLOS ADMINISTRATIVOS;AA,SUPERVICION DE VALOR'
||'ES;SV,TESORERIA;TE,DISTRIBUCION;RP,AUTORIZACION VALORES;AV'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(47491260376735742)
,p_name=>'P214_ESTADO'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(47490204830735732)
,p_prompt=>'Estado'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:Pendiente;P,Procesado;F,Anulado;A'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(47491396961735743)
,p_name=>'P214_COD_MONEDA'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(47490364389735733)
,p_prompt=>'Moneda'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LVMONEDAS'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT COD_MONEDA R, ',
'	   SIGLAS, ',
'	   TIPO_CAMBIO_DIA, ',
'	   DESCRIPCION D',
'  FROM MONEDAS ',
' ORDER BY DESCRIPCION'))
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
 p_id=>wwv_flow_imp.id(47491473564735744)
,p_name=>'P214_COD_MOTIVO'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(47490364389735733)
,p_prompt=>'Motivo'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_MOTIVOS_RECHAZO'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT COD_MOTIVO || '' - '' || DESCRIPCION D, cod_motivo R ',
'FROM cc_motivos_rechazo_cheques ',
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
 p_id=>wwv_flow_imp.id(47491508362735745)
,p_name=>'P214_COD_CUSTODIO'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(47490364389735733)
,p_prompt=>'Custodio'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_CUSTODIOS'
,p_lov=>'select descripcion||'' - ''||cod_custodio DESCRIPCION, cod_custodio from cc_custodios where cod_empresa =''1''order by descripcion'
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
 p_id=>wwv_flow_imp.id(47491633487735746)
,p_name=>'P214_OBSERVACION'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(47490364389735733)
,p_prompt=>'Obs'
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
 p_id=>wwv_flow_imp.id(47491765811735747)
,p_name=>'P214_AUTORIZADO'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(47490364389735733)
,p_prompt=>'Autorizado'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:Pendiente Autorizacion;P,Autorizado;S,Rechazado;N'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_tag_attributes=>'readonly'
,p_read_only_when_type=>'ALWAYS'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(47802829961041602)
,p_name=>'P214_SUB_TIPO_TRANS_CR_ED'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(47491825002735748)
,p_prompt=>'Tr'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT descripcion, subtipo_trans ',
'FROM subtipos_trans ',
'WHERE cod_empresa = :P_COD_EMPRESA ',
'AND cod_modulo = :P_COD_MODULO',
'AND tipo_trans = :P214_TIPO_TRANS',
'ORDER BY descripcion;'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(47803047056041604)
,p_name=>'P214_TIPO_DOCUMENTO_CR_ED'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(47491825002735748)
,p_prompt=>'Tipo Documento Cr Ed'
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
 p_id=>wwv_flow_imp.id(47803147928041605)
,p_name=>'P214_SER_DOCUMENTO_CR_ED'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(47491825002735748)
,p_prompt=>'Serie'
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
 p_id=>wwv_flow_imp.id(47803389178041607)
,p_name=>'P214_NRO_VALOR_CR_ED'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(47491825002735748)
,p_prompt=>unistr('N\00FAmero')
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
 p_id=>wwv_flow_imp.id(47803447418041608)
,p_name=>'P214_COD_PER_JURIDICA_CR_ED'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(47491825002735748)
,p_prompt=>'Banco'
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
 p_id=>wwv_flow_imp.id(47803653066041610)
,p_name=>'P214_DESC_TRANSACCION'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(47804068143041614)
,p_prompt=>unistr('Transacci\00F3n')
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
 p_id=>wwv_flow_imp.id(47803714418041611)
,p_name=>'P214_NOM_PER_JURIDICA'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(47804068143041614)
,p_prompt=>'Banco'
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
 p_id=>wwv_flow_imp.id(47803800681041612)
,p_name=>'P214_DESC_MONEDA'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(47804068143041614)
,p_prompt=>'Moneda'
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
 p_id=>wwv_flow_imp.id(47803902480041613)
,p_name=>'P214_TIP_CAMBIO'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(47804068143041614)
,p_prompt=>'Cambio'
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
 p_id=>wwv_flow_imp.id(47804227942041616)
,p_name=>'P214_FECHA_SEGUIMIENTO_RECHAZO'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(47804068143041614)
,p_prompt=>'Fecha Seg'
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
 p_id=>wwv_flow_imp.id(47804366449041617)
,p_name=>'P214_OBSERVACION_RECHAZO'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(47804068143041614)
,p_prompt=>'Contact.'
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
 p_id=>wwv_flow_imp.id(47804493281041618)
,p_name=>'P214_RESPUESTA_RECHAZO'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(47804068143041614)
,p_prompt=>'Respuesta'
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
 p_id=>wwv_flow_imp.id(47804539744041619)
,p_name=>'P214_CONTACTO_RECHAZO'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(47804068143041614)
,p_prompt=>unistr('Observaci\00F3n')
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
 p_id=>wwv_flow_imp.id(47804618278041620)
,p_name=>'P214_ESTADO_VALOR'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_imp.id(47804068143041614)
,p_prompt=>unistr('Transacci\00F3n')
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:1 - PENDIENTE;P,2 - RECHAZADO;R,3 - PROCESADO;F'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_tag_attributes=>'readonly'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(47804799299041621)
,p_name=>'P214_CORREO_CLIENTE'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_imp.id(47804068143041614)
,p_prompt=>unistr('Correo electr\00F3nico')
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
 p_id=>wwv_flow_imp.id(47805666291041630)
,p_name=>'P214_CONCEPTO'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(45494016027535543)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(47805781106041631)
,p_name=>'P214_CARGA_VALORES'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_imp.id(45494016027535543)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(47805806962041632)
,p_name=>'P214_VERIFICA_VALORES'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_imp.id(45494016027535543)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(47806120716041635)
,p_name=>'P214_FEC_VENCIMIENTO_CR_ED'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(47491825002735748)
,p_prompt=>'Vencimiento'
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
 p_id=>wwv_flow_imp.id(47806286515041636)
,p_name=>'P214_FEC_VENCIMIENTO_NEW_CR_ED'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(47491825002735748)
,p_prompt=>'Nvo. Vencimiento'
,p_display_as=>'NATIVE_DATE_PICKER_JET'
,p_cSize=>30
,p_begin_on_new_line=>'N'
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
 p_id=>wwv_flow_imp.id(47806345944041637)
,p_name=>'P214_DIAS_CR_ED'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(47491825002735748)
,p_prompt=>unistr('D\00EDas')
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
 p_id=>wwv_flow_imp.id(47806465866041638)
,p_name=>'P214_COD_MONEDA_CR_ED'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(47491825002735748)
,p_prompt=>'Moneda'
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
 p_id=>wwv_flow_imp.id(47806557556041639)
,p_name=>'P214_MONTO_VALOR_CR_ED'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(47491825002735748)
,p_prompt=>'Monto Valor'
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
 p_id=>wwv_flow_imp.id(47806699468041640)
,p_name=>'P214_DEBITO_CR_ED'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(47491825002735748)
,p_prompt=>'Monto Total'
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
 p_id=>wwv_flow_imp.id(47806800802041642)
,p_name=>'P214_VTIPO_COMPROBANTE'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_imp.id(45494016027535543)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(47806954089041643)
,p_name=>'VSER_COMPROBANTE'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_imp.id(45494016027535543)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(47807058640041644)
,p_name=>'P214_VNRO_COMPROBANTE'
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_imp.id(45494016027535543)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(47807199567041645)
,p_name=>'P214_VNRO_CUOTA'
,p_item_sequence=>220
,p_item_plug_id=>wwv_flow_imp.id(45494016027535543)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(48343702483371102)
,p_name=>'P214_INDICADOR_ALERT'
,p_item_sequence=>230
,p_item_plug_id=>wwv_flow_imp.id(45494016027535543)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(48344258672371107)
,p_name=>'P214_TIP_CAMBIO_CAB'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(47490364389735733)
,p_prompt=>'Cambio'
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
 p_id=>wwv_flow_imp.id(48344463798371109)
,p_name=>'P214_DEBITO_ANT'
,p_item_sequence=>240
,p_item_plug_id=>wwv_flow_imp.id(45494016027535543)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(48344537949371110)
,p_name=>'P214_CREDITO_ANT'
,p_item_sequence=>250
,p_item_plug_id=>wwv_flow_imp.id(45494016027535543)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(48345896022371123)
,p_name=>'P214_IND_DEVUELTO'
,p_item_sequence=>260
,p_item_plug_id=>wwv_flow_imp.id(45494016027535543)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(48345908649371124)
,p_name=>'P214_FECHA_CREACION'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(48345544782371120)
,p_prompt=>'Fecha Alta'
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
 p_id=>wwv_flow_imp.id(48346096972371125)
,p_name=>'P214_ALTA_POR'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(48345544782371120)
,p_prompt=>'Alta Por'
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
 p_id=>wwv_flow_imp.id(48346119357371126)
,p_name=>'P214_ACTUALIZADO_POR'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(48345544782371120)
,p_prompt=>'Actualizado Por'
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
 p_id=>wwv_flow_imp.id(48346234630371127)
,p_name=>'P214_FEC_ACTUALIZACION'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(48345544782371120)
,p_prompt=>unistr('Fecha Actualizaci\00F3n')
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
 p_id=>wwv_flow_imp.id(48348507501371150)
,p_name=>'P214_SEQ_ID_EDITAR'
,p_item_sequence=>270
,p_item_plug_id=>wwv_flow_imp.id(45494016027535543)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(48618420340946701)
,p_name=>'P214_SEQ_ID_ELIMINAR'
,p_item_sequence=>280
,p_item_plug_id=>wwv_flow_imp.id(45494016027535543)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(48618570205946702)
,p_name=>'P214_SEQ_ID_DETALLES'
,p_item_sequence=>290
,p_item_plug_id=>wwv_flow_imp.id(45494016027535543)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(48621630930946733)
,p_name=>'P214_NOM_FORMA'
,p_item_sequence=>300
,p_item_plug_id=>wwv_flow_imp.id(45494016027535543)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(48621816644946735)
,p_name=>'P214_MODIFICA_FECHA_ANT'
,p_item_sequence=>310
,p_item_plug_id=>wwv_flow_imp.id(45494016027535543)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(48621915259946736)
,p_name=>'P214_CAMBIA_FECHA'
,p_item_sequence=>320
,p_item_plug_id=>wwv_flow_imp.id(45494016027535543)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(48622086452946737)
,p_name=>'P214_PUEDE_PROCESAR'
,p_item_sequence=>330
,p_item_plug_id=>wwv_flow_imp.id(45494016027535543)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(48622573224946742)
,p_name=>'P214_INDICADOR_REPORTE'
,p_item_sequence=>340
,p_item_plug_id=>wwv_flow_imp.id(45494016027535543)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(49164437157859539)
,p_name=>'P214_TOT_DEBITO'
,p_item_sequence=>350
,p_item_plug_id=>wwv_flow_imp.id(45494016027535543)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(49164893743859543)
,p_name=>'P214_COD_USUARIO'
,p_item_sequence=>360
,p_item_plug_id=>wwv_flow_imp.id(45494016027535543)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(47492068903735750)
,p_name=>'DA_ABRIR_CREAR_EDITAR'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(47491978397735749)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(49163618961859531)
,p_event_id=>wwv_flow_imp.id(47492068903735750)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    IF  :P214_COD_SUCURSAL IS NULL OR',
'        :P214_TIP_COMPROBANTE IS NULL OR',
'        :P214_COD_CLIENTE IS NULL OR',
'        :P214_FEC_COMPROBANTE IS NULL',
'    THEN',
'        :P214_INDICADOR_ALERT := ''1'';',
'    ELSE',
'        :P214_INDICADOR_ALERT := ''0'';',
'    END IF;',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;'))
,p_attribute_02=>'P214_COD_SUCURSAL ,P214_TIP_COMPROBANTE ,P214_COD_CLIENTE,P214_FEC_COMPROBANTE'
,p_attribute_03=>'P214_INDICADOR_ALERT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(49163768187859532)
,p_event_id=>wwv_flow_imp.id(47492068903735750)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>unistr('Compruebe que los datos obligatorios no est\00E9n vac\00EDos.')
,p_attribute_02=>'COMPROBAR DATOS'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P214_INDICADOR_ALERT'
,p_client_condition_expression=>'1'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(47807595003041649)
,p_event_id=>wwv_flow_imp.id(47492068903735750)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P214_NRO_VALOR_CR_ED,P214_SUB_TIPO_TRANS_CR_ED,P214_TIPO_DOCUMENTO_CR_ED,P214_SER_DOCUMENTO_CR_ED,P214_COD_PER_JURIDICA_CR_ED,P214_FEC_VENCIMIENTO_CR_ED,P214_FEC_VENCIMIENTO_NEW_CR_ED,P214_DIAS_CR_ED,P214_COD_MONEDA_CR_ED,P214_DEBITO_CR_ED,P214_MONTO'
||'_VALOR_CR_ED'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P214_INDICADOR_ALERT'
,p_client_condition_expression=>'0'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(48345272867371117)
,p_event_id=>wwv_flow_imp.id(47492068903735750)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(48344683972371111)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P214_INDICADOR_ALERT'
,p_client_condition_expression=>'0'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(48345322382371118)
,p_event_id=>wwv_flow_imp.id(47492068903735750)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(48344834083371113)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P214_INDICADOR_ALERT'
,p_client_condition_expression=>'0'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(47802720078041601)
,p_event_id=>wwv_flow_imp.id(47492068903735750)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(47491825002735748)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P214_INDICADOR_ALERT'
,p_client_condition_expression=>'0'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(47805449620041628)
,p_name=>'DA_CARGAR_DETALLES'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P214_SUB_TIPO_TRANS_CR_ED'
,p_condition_element=>'P214_SUB_TIPO_TRANS_CR_ED'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(47805595218041629)
,p_event_id=>wwv_flow_imp.id(47805449620041628)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'',
'',
'SELECT descripcion, concepto, carga_valores, verifica_valores, tip_documento',
'INTO :P214_DESC_TRANSACCION, :P214_CONCEPTO, :P214_CARGA_VALORES, ',
'     :P214_VERIFICA_VALORES, :P214_TIPO_DOCUMENTO_CR_ED',
'',
'FROM subtipos_trans ',
'WHERE cod_empresa = :P_COD_EMPRESA',
'AND cod_modulo = :P_COD_MODULO',
'AND tipo_trans = :P214_TIPO_TRANS',
'AND subtipo_trans = :P214_SUB_TIPO_TRANS_CR_ED;',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;'))
,p_attribute_02=>'P_COD_EMPRESA, P_COD_MODULO,P214_TIPO_TRANS,P214_SUB_TIPO_TRANS_CR_ED'
,p_attribute_03=>'P214_DESC_TRANSACCION,P214_CONCEPTO,P214_CARGA_VALORES,P214_VERIFICA_VALORES,P214_TIPO_DOCUMENTO_CR_ED'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(47805902736041633)
,p_name=>'DA_CARGAR_DATOS_CHEQUE'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P214_NRO_VALOR_CR_ED'
,p_condition_element=>'P214_NRO_VALOR_CR_ED'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(47806013624041634)
,p_event_id=>wwv_flow_imp.id(47805902736041633)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    :P214_ESTADO_VALOR := ''P'';',
'',
'    IF nvl(:P214_VERIFICA_VALORES, ''N'' ) = ''S'' THEN',
'    ',
'            SELECT  monto_valor, ',
'                    cod_moneda, ',
'                    cod_per_juridica, ',
'                    nvl(fec_acobrar, fec_vencimiento),',
'                    tip_comprobante, ',
'                    ser_comprobante, ',
'                    nro_comprobante, ',
'                    nro_cuota, ',
'                    ser_documento',
'                   ',
'            INTO    :P214_MONTO_VALOR_CR_ED, ',
'                    :P214_COD_MONEDA_CR_ED, ',
'                    :P214_COD_PER_JURIDICA_CR_ED, ',
'                    :P214_FEC_VENCIMIENTO_CR_ED,',
'                    :P214_VTIPO_COMPROBANTE, ',
'                    :VSER_COMPROBANTE, ',
'                    :P214_VNRO_COMPROBANTE, ',
'                    :P214_VNRO_CUOTA, ',
'                    :P214_SER_DOCUMENTO_CR_ED',
'            FROM    cc_valores',
'            ',
'            WHERE   cod_empresa = :P_COD_EMPRESA',
'            AND     nro_valor = :P214_NRO_VALOR_CR_ED',
'            AND instr( ltrim( rtrim( ''P'' ) ), ltrim( rtrim( :P214_ESTADO_VALOR ) ), 1, 1 ) > 0',
'            AND ( :P214_COD_CLIENTE IS NULL OR cod_cliente = :P214_COD_CLIENTE)',
'            AND :P214_VERIFICA_VALORES = ''S''',
'            AND  ( nvl(fec_acobrar , fec_vencimiento) >= :P214_FEC_COMPROBANTE);',
'',
'            SELECT DESCRIPCION',
'            INTO :P214_DESC_MONEDA',
'            FROM MONEDAS',
'            WHERE COD_MONEDA = :P214_COD_MONEDA_CR_ED;',
'',
'            SELECT ltrim( rtrim( nvl( nombre, nomb_fantasia ) ) )',
'            INTO :P214_NOM_PER_JURIDICA',
'            FROM personas',
'            WHERE cod_persona = :P214_COD_PER_JURIDICA_CR_ED',
'            AND cod_sector = :P214_SECTOR_BANCARIO;            ',
'',
'    END IF;',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'',
'END;',
'',
'',
''))
,p_attribute_02=>'P214_ESTADO_VALOR,P214_SECTOR_BANCARIO,P214_COD_PER_JURIDICA_CR_ED,P214_COD_MONEDA_CR_ED,P214_VERIFICA_VALORES,P_COD_EMPRESA,P214_NRO_VALOR_CR_ED,P214_ESTADO_VALOR,P214_COD_CLIENTE,P214_FEC_COMPROBANTE'
,p_attribute_03=>'P214_DESC_MONEDA,P214_NOM_PER_JURIDICA,P214_MONTO_VALOR_CR_ED,P214_COD_MONEDA_CR_ED,P214_COD_PER_JURIDICA_CR_ED,P214_FEC_VENCIMIENTO_CR_ED,P214_VTIPO_COMPROBANTE,VSER_COMPROBANTE,P214_VNRO_COMPROBANTE,P214_VNRO_CUOTA,P214_SER_DOCUMENTO_CR_ED'
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
 p_id=>wwv_flow_imp.id(48344358111371108)
,p_event_id=>wwv_flow_imp.id(47805902736041633)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'',
'',
'    IF :P214_CONCEPTO = ''D'' THEN',
'',
'          :P214_DEBITO_CR_ED     := nvl( :P214_MONTO_VALOR_CR_ED, 0 ) *',
'                                    nvl( :P214_TIP_CAMBIO, 1 ) /',
'                                    nvl( :P214_TIP_CAMBIO_CAB, 1 );',
'          :P214_DEBITO_ANT  := nvl( :P214_DEBITO_CR_ED, 0 );',
'          :P214_CREDITO_ANT := 0;',
'    END IF;',
'',
'    IF :P214_CONCEPTO = ''C'' THEN',
'          :P214_DEBITO_CR_ED    :=  nvl( :P214_MONTO_VALOR_CR_ED, 0 ) *',
'                                    nvl( :P214_TIP_CAMBIO, 1 ) /',
'                                    nvl( :P214_TIP_CAMBIO_CAB, 1 );',
'          :P214_CREDITO_ANT := nvl( :P214_DEBITO_CR_ED, 0 );',
'          :P214_DEBITO_ANT  := 0;',
'    END IF;',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'',
'END;',
'',
''))
,p_attribute_02=>'P214_CONCEPTO,P214_MONTO_VALOR_CR_ED,P214_TIP_CAMBIO,P214_TIP_CAMBIO_CAB,P214_DEBITO_CR_ED'
,p_attribute_03=>'P214_DEBITO_CR_ED,P214_DEBITO_ANT,P214_CREDITO_ANT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(47807629916041650)
,p_name=>'DA_SETEAR_DIAS'
,p_event_sequence=>40
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P214_FEC_VENCIMIENTO_NEW_CR_ED'
,p_condition_element=>'P214_FEC_VENCIMIENTO_CR_ED'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(48343674356371101)
,p_event_id=>wwv_flow_imp.id(47807629916041650)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'IF TO_DATE(:P214_FEC_VENCIMIENTO_CR_ED, ''DD/MM/YYYY'') > TO_DATE(:P214_FEC_VENCIMIENTO_NEW_CR_ED, ''DD/MM/YYYY'') THEN',
'    :P214_INDICADOR_ALERT := ''1'';',
'ELSE',
'    APEX_DEBUG.ERROR(:P214_DIAS_CR_ED);',
'    :P214_DIAS_CR_ED := TO_CHAR(TO_DATE(:P214_FEC_VENCIMIENTO_NEW_CR_ED, ''DD/MM/YYYY'') - TO_DATE(:P214_FEC_VENCIMIENTO_CR_ED, ''DD/MM/YYYY''));',
'    APEX_DEBUG.ERROR(:P214_DIAS_CR_ED);',
'    :P214_INDICADOR_ALERT := ''0'';',
'END IF;',
'',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;'))
,p_attribute_02=>'P214_FEC_VENCIMIENTO_CR_ED,P214_FEC_VENCIMIENTO_NEW_CR_ED'
,p_attribute_03=>'P214_DIAS_CR_ED'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(48343864371371103)
,p_event_id=>wwv_flow_imp.id(47807629916041650)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'La fecha de vencimiento no puede ser mayor a la nueva fecha de vencimiento.',
''))
,p_attribute_02=>'ERROR EN LAS FECHAS'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'1'
,p_client_condition_expression=>'1'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(48344939894371114)
,p_name=>'DA_OCULTAR_BOTONES_CR_ED'
,p_event_sequence=>50
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(48345000476371115)
,p_event_id=>wwv_flow_imp.id(48344939894371114)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(48344683972371111)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(48345111477371116)
,p_event_id=>wwv_flow_imp.id(48344939894371114)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(48344834083371113)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(48346307762371128)
,p_name=>'DA_CERRAR_CR_ED'
,p_event_sequence=>60
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(48344763964371112)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(48346451882371129)
,p_event_id=>wwv_flow_imp.id(48346307762371128)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(47491825002735748)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(48346548281371130)
,p_name=>'DA_AGREGAR_MIEMBRO_CHEQUE'
,p_event_sequence=>70
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(48344683972371111)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(48346686068371131)
,p_event_id=>wwv_flow_imp.id(48346548281371130)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'CCRETCHE.pr_agregar_miembro_col_trans( :P214_SUB_TIPO_TRANS_CR_ED,',
'                                       :P214_TIPO_DOCUMENTO_CR_ED,',
'                                       :P214_SER_DOCUMENTO_CR_ED,',
'                                       :P214_NRO_VALOR_CR_ED,',
'                                       :P214_COD_PER_JURIDICA_CR_ED,',
'                                       :P214_FEC_VENCIMIENTO_CR_ED,',
'                                       :P214_FEC_VENCIMIENTO_NEW_CR_ED,',
'                                       :P214_DIAS_CR_ED,',
'                                       :P214_COD_MONEDA_CR_ED,',
'                                       :P214_MONTO_VALOR_CR_ED,',
'                                       :P214_DEBITO_CR_ED,',
'                                       :P214_DESC_TRANSACCION,',
'                                       :P214_NOM_PER_JURIDICA,',
'                                       :P214_DESC_MONEDA,',
'                                       :P214_TIP_CAMBIO,',
'                                       :P214_FECHA_SEGUIMIENTO_RECHAZO,',
'                                       :P214_OBSERVACION_RECHAZO,',
'                                       :P214_RESPUESTA_RECHAZO,',
'                                       :P214_CONTACTO_RECHAZO,',
'                                       :P214_ESTADO_VALOR,',
'                                       :P214_CORREO_CLIENTE,',
'                                       :P214_FECHA_CREACION,',
'                                       :P214_ALTA_POR,',
'                                       :P214_ACTUALIZADO_POR,',
'                                       :P214_FEC_ACTUALIZACION);',
'',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'',
'END;'))
,p_attribute_02=>'P214_SUB_TIPO_TRANS_CR_ED,P214_TIPO_DOCUMENTO_CR_ED,P214_SER_DOCUMENTO_CR_ED,P214_NRO_VALOR_CR_ED,P214_COD_PER_JURIDICA_CR_ED,P214_FEC_VENCIMIENTO_CR_ED,P214_FEC_VENCIMIENTO_NEW_CR_ED,P214_DIAS_CR_ED,P214_COD_MONEDA_CR_ED,P214_MONTO_VALOR_CR_ED,P214_'
||'DEBITO_CR_ED,P214_DESC_TRANSACCION,P214_NOM_PER_JURIDICA,P214_DESC_MONEDA,P214_TIP_CAMBIO,P214_FECHA_SEGUIMIENTO_RECHAZO,P214_OBSERVACION_RECHAZO,P214_RESPUESTA_RECHAZO,P214_CONTACTO_RECHAZO,P214_ESTADO_VALOR,P214_CORREO_CLIENTE,P214_FECHA_CREACION,P'
||'214_ALTA_POR,P214_ACTUALIZADO_POR,P214_FEC_ACTUALIZACION'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(48346770700371132)
,p_event_id=>wwv_flow_imp.id(48346548281371130)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(48346876042371133)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(48348138666371146)
,p_event_id=>wwv_flow_imp.id(48346548281371130)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(47491825002735748)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(48618795568946704)
,p_name=>'DA_ELIMINAR_MIEMBRO_COL'
,p_event_sequence=>80
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P214_SEQ_ID_ELIMINAR'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(48618984894946706)
,p_event_id=>wwv_flow_imp.id(48618795568946704)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>unistr('\00BFDesea eliminar el registro?')
,p_attribute_02=>unistr('\00BFDesea eliminar el registro?')
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(48618815337946705)
,p_event_id=>wwv_flow_imp.id(48618795568946704)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    CCRETCHE.pr_borrar_miembro_col_trans(:P214_SEQ_ID_ELIMINAR);',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'',
'END;'))
,p_attribute_02=>'P214_SEQ_ID_ELIMINAR'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(48621236901946729)
,p_event_id=>wwv_flow_imp.id(48618795568946704)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P214_FECHA_CREACION,P214_ALTA_POR,P214_ACTUALIZADO_POR,P214_FEC_ACTUALIZACION,P214_DESC_TRANSACCION,P214_NOM_PER_JURIDICA,P214_DESC_MONEDA,P214_TIP_CAMBIO,P214_FECHA_SEGUIMIENTO_RECHAZO,P214_OBSERVACION_RECHAZO,P214_RESPUESTA_RECHAZO,P214_CONTACTO_RE'
||'CHAZO,P214_ESTADO_VALOR,P214_CORREO_CLIENTE'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(48619017058946707)
,p_event_id=>wwv_flow_imp.id(48618795568946704)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(48346876042371133)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(48619138582946708)
,p_name=>'DA_EDITAR_MIEMBRO_COL'
,p_event_sequence=>90
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P214_SEQ_ID_EDITAR'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(48619396030946710)
,p_event_id=>wwv_flow_imp.id(48619138582946708)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(48344683972371111)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(48619406056946711)
,p_event_id=>wwv_flow_imp.id(48619138582946708)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(48344834083371113)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(48619271812946709)
,p_event_id=>wwv_flow_imp.id(48619138582946708)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(47491825002735748)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(48619863766946715)
,p_name=>'DA_SETEAR_TIP_CAMBIO_CAB'
,p_event_sequence=>100
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P214_COD_MONEDA'
,p_condition_element=>'P214_COD_MONEDA'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(48619953708946716)
,p_event_id=>wwv_flow_imp.id(48619863766946715)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'	  SELECT tipo_cambio_dia',
'	  INTO :P214_TIP_CAMBIO_CAB',
'	  FROM monedas',
'	  WHERE cod_moneda = :P214_COD_MONEDA;',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;'))
,p_attribute_02=>'P214_COD_MONEDA'
,p_attribute_03=>'P214_TIP_CAMBIO_CAB'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(48620088715946717)
,p_name=>'DA_SETEAR_T_CAMBIO'
,p_event_sequence=>110
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P214_DESC_MONEDA'
,p_condition_element=>'P214_DESC_MONEDA'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(48620182181946718)
,p_event_id=>wwv_flow_imp.id(48620088715946717)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'	  SELECT tipo_cambio_dia',
'	  INTO :P214_TIP_CAMBIO',
'	  FROM monedas',
'	  WHERE descripcion = :P214_DESC_MONEDA;',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;'))
,p_attribute_02=>'P214_DESC_MONEDA'
,p_attribute_03=>'P214_TIP_CAMBIO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(48621390646946730)
,p_name=>'DA_VER_DETALLES'
,p_event_sequence=>120
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P214_SEQ_ID_DETALLES'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(48621417643946731)
,p_event_id=>wwv_flow_imp.id(48621390646946730)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    SELECT',
'            c010,',
'            c011,',
'            c012,',
'            c013,',
'            d003,',
'            c014,',
'            c015,',
'            c016,',
'            c017,',
'            c018,',
'            c019,',
'            c020,',
'            c021,',
'            c022',
'',
'    INTO',
'            :P214_DESC_TRANSACCION,',
'            :P214_NOM_PER_JURIDICA,',
'            :P214_DESC_MONEDA,',
'            :P214_TIP_CAMBIO,',
'            :P214_FECHA_SEGUIMIENTO_RECHAZO,',
'            :P214_OBSERVACION_RECHAZO,',
'            :P214_RESPUESTA_RECHAZO,',
'            :P214_CONTACTO_RECHAZO,',
'            :P214_ESTADO_VALOR,',
'            :P214_CORREO_CLIENTE,',
'            :P214_FECHA_CREACION,',
'            :P214_ALTA_POR,',
'            :P214_ACTUALIZADO_POR,',
'            :P214_FEC_ACTUALIZACION',
'',
'FROM APEX_COLLECTIONS',
'WHERE COLLECTION_NAME = ''CLIENTE_CHEQUE''',
'AND SEQ_ID = :P214_SEQ_ID_DETALLES;',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;',
'',
''))
,p_attribute_02=>'P214_SEQ_ID_DETALLES'
,p_attribute_03=>'P214_DESC_TRANSACCION,P214_NOM_PER_JURIDICA,P214_DESC_MONEDA,P214_TIP_CAMBIO,P214_FECHA_SEGUIMIENTO_RECHAZO,P214_OBSERVACION_RECHAZO,P214_RESPUESTA_RECHAZO,P214_CONTACTO_RECHAZO,P214_ESTADO_VALOR,P214_CORREO_CLIENTE,P214_FECHA_CREACION,P214_ALTA_POR,'
||'P214_ACTUALIZADO_POR,P214_FEC_ACTUALIZACION'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(48621553704946732)
,p_event_id=>wwv_flow_imp.id(48621390646946730)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(47489901267735729)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(48622160859946738)
,p_name=>'DA_PUEDE_PROCESAR'
,p_event_sequence=>130
,p_condition_element=>'P214_PUEDE_PROCESAR'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'N'
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(48622242831946739)
,p_event_id=>wwv_flow_imp.id(48622160859946738)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(47805076063041624)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(49161956385859514)
,p_name=>'DA_REPORTE_CCCALINCHE'
,p_event_sequence=>140
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(48621735174946734)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(49162019489859515)
,p_event_id=>wwv_flow_imp.id(49161956385859514)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    :P214_INDICADOR_REPORTE := ''1'';',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;'))
,p_attribute_02=>'P214_INDICADOR_REPORTE'
,p_attribute_03=>'P214_INDICADOR_REPORTE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(49162105966859516)
,p_event_id=>wwv_flow_imp.id(49161956385859514)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(48622688036946743)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(49162232658859517)
,p_event_id=>wwv_flow_imp.id(49161956385859514)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(48622688036946743)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(49162413179859519)
,p_name=>'DA_CERRAR_CCCALINCHE'
,p_event_sequence=>150
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(49162357790859518)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(49162531176859520)
,p_event_id=>wwv_flow_imp.id(49162413179859519)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(48622688036946743)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(49162620170859521)
,p_name=>'DA_GENERAR_RETENCION'
,p_event_sequence=>160
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(47805076063041624)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(49163177535859526)
,p_event_id=>wwv_flow_imp.id(49162620170859521)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>unistr('\00BFDesea procesar los datos?')
,p_attribute_02=>unistr('\00BFDesea procesar los datos?')
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(49162827280859523)
,p_event_id=>wwv_flow_imp.id(49162620170859521)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'CCRETCHE.pr_generar_retencion ( :P_COD_EMPRESA,',
'                                :P214_COD_CLIENTE,',
'                                :P214_COD_CUSTODIO); ',
'',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;'))
,p_attribute_02=>'P_COD_EMPRESA,P214_COD_CLIENTE,P214_COD_CUSTODIO'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(49164209182859537)
,p_event_id=>wwv_flow_imp.id(49162620170859521)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_02=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(49163890800859533)
,p_name=>'DA_SIN_RETENCION'
,p_event_sequence=>170
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(47805101057041625)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(49164764064859542)
,p_event_id=>wwv_flow_imp.id(49163890800859533)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>unistr('\00BFDesea procesar sin retenci\00F3n?')
,p_attribute_02=>unistr('\00BFDesea procesar sin retenci\00F3n?')
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(49163970409859534)
,p_event_id=>wwv_flow_imp.id(49163890800859533)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    CCRETCHE.pr_cambiar_estado (   :P_COD_EMPRESA,',
'                                   :P214_TIP_COMPROBANTE,',
'                                   :P214_SER_COMPROBANTE,',
'                                   :P214_NRO_COMPROBANTE,',
'                                   :P214_FEC_COMPROBANTE,',
'                                   :P214_COD_CLIENTE,',
'                                   :P214_COD_SUCURSAL,',
'                                   :P214_COD_MONEDA,',
'                                   :P214_TIP_CAMBIO_CAB,                       ',
'                                   :P214_TOT_DEBITO,',
'                                   :P214_COD_CUSTODIO,',
'                                   :P214_COD_MOTIVO,',
'                                   :P_COD_USUARIO,',
'                                   :P214_FECHA_CREACION,',
'                                   :P214_ALTA_POR,',
'                                   :P214_ACTUALIZADO_POR,',
'                                   :P214_FEC_ACTUALIZACION,',
'                                   :P214_FECHA_SEGUIMIENTO_RECHAZO,',
'                                   :P214_OBSERVACION_RECHAZO,',
'                                   :P214_RESPUESTA_RECHAZO,',
'                                   PI_ESTADO => ''F'');',
'',
'',
'EXCEPTION ',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;',
''))
,p_attribute_02=>'P_COD_EMPRESA,P214_TIP_COMPROBANTE,P214_SER_COMPROBANTE,P214_NRO_COMPROBANTE,P214_FEC_COMPROBANTE,P214_COD_CLIENTE,P214_COD_SUCURSAL,P214_COD_MONEDA,P214_TIP_CAMBIO_CAB, P214_TOT_DEBITO,P214_COD_CUSTODIO,P214_COD_MOTIVO,P_COD_USUARIO,P214_FECHA_CREAC'
||'ION,P214_ALTA_POR,P214_ACTUALIZADO_POR,P214_FEC_ACTUALIZACION,P214_FECHA_SEGUIMIENTO_RECHAZO,P214_OBSERVACION_RECHAZO,P214_RESPUESTA_RECHAZO'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(48345467812371119)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'PR_LIMPIAR_DATOS'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(45494185078535544)
,p_process_sequence=>20
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_INIT'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'  :P_COD_MODULO := ''CC'';',
'  :P214_NOM_FORMA := ''CCRETCHE'';',
'',
'  -- SETEAR CUSTODIO EN BASE AL USUARIO',
'',
':P214_COD_USUARIO := ''MARTA'';',
'',
'  /*rutina_inicial( :variables.cod_modulo,',
'                  :variables.cod_forma,',
'                  :variables.nom_modulo,',
'                  :variables.nom_forma );*/',
'',
'  :P214_TIPO_TRANS := BS_BUSCA_PARAMETRO(:P_COD_MODULO, ''TIPO_TRANS_RTC'');',
'  :P214_SUB_TIPO_TRANS := BS_BUSCA_PARAMETRO (:P_COD_MODULO, ''SUB_TRANS_COBRO'');',
'  :P214_SER_RECIBO := BS_BUSCA_PARAMETRO (:P_COD_MODULO, ''SERIE_RECIBO'');',
'  :P214_TIP_RECIBO := BS_BUSCA_PARAMETRO (:P_COD_MODULO, ''TIPO_RECIBO'');',
'  :P214_SECTOR_BANCARIO := BS_BUSCA_PARAMETRO (:P_COD_MODULO, ''SECTOR_BANCARIO'');',
'  :P214_SECTOR_TARJETAS := BS_BUSCA_PARAMETRO (:P_COD_MODULO, ''SECTOR_TARJETAS'');',
'  :P214_TIPOS_MOV_VALORES := BS_BUSCA_PARAMETRO (:P_COD_MODULO, ''TIPOS_SOLMOV_VALORES'');',
'  :P214_SUB_TIPO_CHEQUES := BS_BUSCA_PARAMETRO (:P_COD_MODULO, ''SUB_TIPO_CHEQUES'');',
'  :P214_TIPO_RECHAZO := BS_BUSCA_PARAMETRO (:P_COD_MODULO, ''TIPO_RECHAZO_CHEQUES'');',
'  :P214_TIPO_CANJE := BS_BUSCA_PARAMETRO (:P_COD_MODULO, ''TIPO_CANJE_VALORES'');',
'  :P214_TIPO_INGRESO := BS_BUSCA_PARAMETRO (:P_COD_MODULO, ''TIPO_INGRESO'');',
'  :P214_COD_MONEDA_BASE := BS_BUSCA_PARAMETRO (:P_COD_MODULO, ''COD_MONEDA_BASE'');',
'  :P214_TIPO_TRANS_CAN := BS_BUSCA_PARAMETRO (:P_COD_MODULO, ''TIPO_TRANS_CAN'');',
'  :P214_SUB_TRANS_CHE_DEV := BS_BUSCA_PARAMETRO (:P_COD_MODULO, ''SUB_TRANS_CHE_DEV'');',
'  :P214_CONTROLA := ''S'';',
'',
'-- SETEOS INICIALES',
'  :P214_AUTORIZADO := ''P'';',
'  :P214_INDICADOR_ALERT := ''0'';',
'  :P214_DERIVADO := ''CO'';',
'  :P214_ESTADO := ''P'';',
'  :P214_INDICADOR_REPORTE := ''0'';',
'  :P214_ESTADO_VALOR := ''P'';',
'',
'',
'',
'BEGIN',
'',
'SELECT cod_custodio',
'INTO :P214_COD_CUSTODIO',
'FROM usuarios',
'WHERE cod_empresa = :P_COD_EMPRESA',
'AND cod_usuario = :P214_COD_USUARIO;',
'',
'EXCEPTION',
'    WHEN NO_DATA_FOUND THEN',
'            :P214_COD_CUSTODIO := NULL;',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;',
'',
'-- PRE FORM',
':P214_SER_COMPROBANTE := ''A'';',
':P214_FEC_COMPROBANTE := SYSDATE;',
':P214_COD_SUCURSAL    := :P_COD_SUCURSAL;',
':P214_TIP_COMPROBANTE :=''RTC'';',
'--:P214_IND_DEVUELTO    := nvl( ''S'', ''N'');',
':P214_IND_DEVUELTO    := ''S'';',
'',
'/*IF :P214_IND_DEVUELTO = ''S'' THEN',
'    APEX_DEBUG.ERROR(:P214_TIP_COMPROBANTE );',
'   :P214_TIP_COMPROBANTE := :P214_TIPO_CANJE ;',
'   APEX_DEBUG.ERROR(:P214_TIP_COMPROBANTE );*/',
'    SELECT TIP_COMPROBANTE',
'    INTO :P214_TIP_COMPROBANTE',
'    FROM tipos_comprobantes',
'    WHERE cod_empresa = :P_COD_EMPRESA',
'    AND tip_comprobante = :P214_TIP_COMPROBANTE;',
'',
'   :P214_TIPO_TRANS := BS_BUSCA_PARAMETRO ( :P_COD_MODULO, ''TIPO_TRANS_'' || ltrim( rtrim( :P214_TIP_COMPROBANTE) ) );',
'   ',
'',
'--END IF;',
':P214_ALTA_POR       := :P214_COD_USUARIO;',
':P214_FECHA_CREACION    := sysdate;',
'',
'-- CREAR COLECCION VACIA',
'CCRETCHE.pr_crear_col_cheques_vacia;',
'',
'-- DATOS CASO PRUEBA',
':P214_COD_CLIENTE := ''1523'';',
':P214_FEC_COMPROBANTE:= SYSDATE;',
':P214_COD_USUARIO := ''LUZ'';',
'',
'  ',
':P214_MODIFICA_FECHA_ANT := busca_permiso( :P_COD_EMPRESA,',
'                                           :P214_NOM_FORMA,',
'                                           :P214_COD_USUARIO,',
'                                           ''MODIFICA FECHA ANTERIOR'' );',
'',
':P214_CAMBIA_FECHA := busca_permiso( :P_COD_EMPRESA,',
'                                     :P214_NOM_FORMA,',
'                                     :P214_COD_USUARIO,',
'                                     ''CAMBIA_FECHA'' );',
'                                                  ',
':P214_PUEDE_PROCESAR := busca_permiso( :P_COD_EMPRESA,',
'                                       :P214_NOM_FORMA,',
'                                       :P214_COD_USUARIO,',
'                                       ''PUEDE_PROCESAR_RETENCION'');',
'',
'',
'-- CASO DE PRUEBA CCCALINCHE',
'--:P214_COD_CLIENTE := ''29558'';',
'',
'',
'EXCEPTION',
'        ',
'    ',
'',
'   WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);      ',
'',
'END;'))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(49164378298859538)
,p_process_sequence=>10
,p_process_point=>'ON_SUBMIT_BEFORE_COMPUTATION'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'DA_SUBMIT'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Los cambios se guardaron exitosamente.'
);
wwv_flow_imp.component_end;
end;
/
