prompt --application/pages/page_00223
begin
--   Manifest
--     PAGE: 00223
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
 p_id=>223
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'FVPROCOM'
,p_alias=>'FVPROCOM'
,p_step_title=>'FVPROCOM'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_last_updated_by=>'INV'
,p_last_upd_yyyymmddhh24miss=>'20230228123234'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(52249147472226444)
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
 p_id=>wwv_flow_imp.id(52249415215226447)
,p_plug_name=>'DETALLE'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>60
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'',
'        c001 COD_EMPLEADO,',
'        c002 COD_VENDEDOR,',
'        c003 COD_TIPO_GRUPO,',
'        c004 DTO_MIN,',
'        c005 DTO_MAX,',
'        c006 VTA_MIN,',
'        c007 TOT_VENTAS,',
'        c008 PORC_COM,',
'        c009 COMISION,',
'        c010 PLUS,',
'        c011 PAGADO,',
'        c012 NRO_LIQUIDACION,',
'        c013 TOT_COMISION,',
'        c014 COD_USUARIO,',
'        c015 FECHA_ALTA,',
'        c016 CUOTAS,',
'        c017 CLIENTE,',
'        c018 COD_CLIENTE,',
'        c019 COD_LISTA_PRECIO,',
'        c020 COD_DIVISION,',
'        c021 DIVISION,',
'        c022 OBSERVACION,',
'        c023 GENERADO',
'       ',
'FROM APEX_COLLECTIONS',
'WHERE COLLECTION_NAME = ''COMISIONES''',
'AND :P223_INDICADOR_REPORTE = ''1'';'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P223_INDICADOR_REPORTE'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'DETALLE'
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
 p_id=>wwv_flow_imp.id(55452532319566405)
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
,p_internal_uid=>55452532319566405
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(55453122280566411)
,p_db_column_name=>'COD_VENDEDOR'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Cod Vendedor'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_column_alignment=>'CENTER'
,p_rpt_named_lov=>wwv_flow_imp.id(6512217793593966)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(55453293344566412)
,p_db_column_name=>'COD_EMPLEADO'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Cod Empleado'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(55453789961566417)
,p_db_column_name=>'COD_TIPO_GRUPO'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Cod Tipo Grupo'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(55454027387566420)
,p_db_column_name=>'DTO_MIN'
,p_display_order=>40
,p_column_identifier=>'F'
,p_column_label=>'Dto Min'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_format_mask=>'999G999G999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(55454195697566421)
,p_db_column_name=>'DTO_MAX'
,p_display_order=>50
,p_column_identifier=>'G'
,p_column_label=>'Dto Max'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_format_mask=>'999G999G999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(55454251241566422)
,p_db_column_name=>'VTA_MIN'
,p_display_order=>60
,p_column_identifier=>'H'
,p_column_label=>'Vta Min'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_format_mask=>'999G999G999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(55454774068566427)
,p_db_column_name=>'TOT_VENTAS'
,p_display_order=>70
,p_column_identifier=>'M'
,p_column_label=>'Tot Ventas'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_format_mask=>'999G999G999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(55454840597566428)
,p_db_column_name=>'PORC_COM'
,p_display_order=>80
,p_column_identifier=>'N'
,p_column_label=>'Porc Com'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_format_mask=>'999G999G999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(55454938922566429)
,p_db_column_name=>'COMISION'
,p_display_order=>90
,p_column_identifier=>'O'
,p_column_label=>'Comision'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_format_mask=>'999G999G999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(55455022007566430)
,p_db_column_name=>'PLUS'
,p_display_order=>100
,p_column_identifier=>'P'
,p_column_label=>'Plus'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_format_mask=>'999G999G999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(55455173103566431)
,p_db_column_name=>'PAGADO'
,p_display_order=>110
,p_column_identifier=>'Q'
,p_column_label=>'Pagado'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_format_mask=>'999G999G999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(55455215724566432)
,p_db_column_name=>'NRO_LIQUIDACION'
,p_display_order=>120
,p_column_identifier=>'R'
,p_column_label=>'Nro Liquidacion'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_format_mask=>'999G999G999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(65712413453241711)
,p_db_column_name=>'TOT_COMISION'
,p_display_order=>130
,p_column_identifier=>'S'
,p_column_label=>'Tot Comision'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_format_mask=>'999G999G999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(65712559544241712)
,p_db_column_name=>'COD_USUARIO'
,p_display_order=>140
,p_column_identifier=>'T'
,p_column_label=>'Cod Usuario'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(65712626475241713)
,p_db_column_name=>'FECHA_ALTA'
,p_display_order=>150
,p_column_identifier=>'U'
,p_column_label=>'Fecha Alta'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(65712778474241714)
,p_db_column_name=>'CUOTAS'
,p_display_order=>160
,p_column_identifier=>'V'
,p_column_label=>'Cuotas'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(65712822899241715)
,p_db_column_name=>'CLIENTE'
,p_display_order=>170
,p_column_identifier=>'W'
,p_column_label=>'Cliente'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(65712905414241716)
,p_db_column_name=>'COD_CLIENTE'
,p_display_order=>180
,p_column_identifier=>'X'
,p_column_label=>'Cod Cliente'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(65713075773241717)
,p_db_column_name=>'COD_LISTA_PRECIO'
,p_display_order=>190
,p_column_identifier=>'Y'
,p_column_label=>'Cod Lista Precio'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(65713172658241718)
,p_db_column_name=>'COD_DIVISION'
,p_display_order=>200
,p_column_identifier=>'Z'
,p_column_label=>'Cod Division'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(65713214501241719)
,p_db_column_name=>'DIVISION'
,p_display_order=>210
,p_column_identifier=>'AA'
,p_column_label=>'Division'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(65713396768241720)
,p_db_column_name=>'OBSERVACION'
,p_display_order=>220
,p_column_identifier=>'AB'
,p_column_label=>'Observacion'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(65713411699241721)
,p_db_column_name=>'GENERADO'
,p_display_order=>230
,p_column_identifier=>'AC'
,p_column_label=>'Generado'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(58582587865080652)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'585826'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'COD_VENDEDOR:COD_EMPLEADO:COD_TIPO_GRUPO:DTO_MAX:DTO_MIN:VTA_MIN:COMISION:NRO_LIQUIDACION:PAGADO:PLUS:PORC_COM:TOT_VENTAS:'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(52249515866226448)
,p_plug_name=>'PIE'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>70
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(65272282178719729)
,p_plug_name=>'REPORTE FVPROCOM'
,p_region_template_options=>'#DEFAULT#:js-dialog-size600x400'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40120082745263659)
,p_plug_display_sequence=>990
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select c.cod_vendedor,',
'       p.nombre,',
'       c.total_venta,',
'       c.porc_comision,',
'       c.comision,',
'       c.salario_base,',
'       c.plus,',
'       c.otros,',
'       c.total_neto,',
'       c.cuotas,',
'       c.cod_periodo ||'' - '' ||to_char(c.fecha_ini,''dd/mm/yyyy'') ||'' al '' ||to_char(c.fecha_fin ,''dd/mm/yyyy'')periodo',
'       ',
'from fv_comision_mensual C,',
'     FV_VENDEDORES V,',
'     PERSONAS P',
'where c.cod_empresa= :P_COD_EMPRESA',
'and c.cod_periodo= :P223_PERIODO',
'and ( c.cod_vendedor =:P223_COD_VENDEDOR OR :P223_COD_VENDEDOR IS NULL )',
'and  c.cod_empresa=v.cod_empresa  ',
'and c.cod_vendedor =v.cod_vendedor',
'and v.cod_persona=p.cod_persona',
'AND ( cod_tipo_grupo =  :P223_COD_TIPO_GRUPO OR  :P223_COD_TIPO_GRUPO IS NULL )',
'AND :P223_INDICADOR_REP_FVPROCOM = ''1'';',
'',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P_COD_EMPRESA,P223_PERIODO,P223_COD_VENDEDOR,P223_COD_TIPO_GRUPO,P223_INDICADOR_REP_FVPROCOM'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'REPORTE FVPROCOM'
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
 p_id=>wwv_flow_imp.id(65272330684719730)
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
,p_internal_uid=>65272330684719730
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(65272578122719732)
,p_db_column_name=>'COD_VENDEDOR'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Cod Vendedor'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(65272658155719733)
,p_db_column_name=>'NOMBRE'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Nombre'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(65272757827719734)
,p_db_column_name=>'TOTAL_VENTA'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Total Venta'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_format_mask=>'999G999G999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(65272857948719735)
,p_db_column_name=>'PORC_COMISION'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Porc Comision'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_format_mask=>'999G999G999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(65272900535719736)
,p_db_column_name=>'COMISION'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Comision'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_format_mask=>'999G999G999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(65273090035719737)
,p_db_column_name=>'SALARIO_BASE'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Salario Base'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_format_mask=>'999G999G999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(65273199462719738)
,p_db_column_name=>'PLUS'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Plus'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_format_mask=>'999G999G999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(65273272486719739)
,p_db_column_name=>'OTROS'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Otros'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(65273382386719740)
,p_db_column_name=>'TOTAL_NETO'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Total Neto'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_format_mask=>'999G999G999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(65273445638719741)
,p_db_column_name=>'CUOTAS'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Cuotas'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(65273591239719742)
,p_db_column_name=>'PERIODO'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Periodo'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(65619375345891300)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'656194'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'COD_VENDEDOR:NOMBRE:TOTAL_VENTA:PORC_COMISION:COMISION:SALARIO_BASE:PLUS:OTROS:TOTAL_NETO:CUOTAS:PERIODO'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(103055689104763960)
,p_plug_name=>'CABECERA'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>40
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(52575198653271001)
,p_plug_name=>'PERIODO'
,p_parent_plug_id=>wwv_flow_imp.id(103055689104763960)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(52575264406271002)
,p_plug_name=>'GRUPO'
,p_parent_plug_id=>wwv_flow_imp.id(103055689104763960)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>20
,p_plug_new_grid_row=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(52575361375271003)
,p_plug_name=>'VENDEDOR'
,p_parent_plug_id=>wwv_flow_imp.id(103055689104763960)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>30
,p_plug_new_grid_row=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(52575480040271004)
,p_plug_name=>'BOTONES'
,p_parent_plug_id=>wwv_flow_imp.id(103055689104763960)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>40
,p_plug_new_grid_row=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(52575755706271007)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(52575480040271004)
,p_button_name=>'P223_BOTON_CONSULTAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--gapLeft:t-Button--gapRight:t-Button--gapTop:t-Button--gapBottom'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'CONSULTAR'
,p_warn_on_unsaved_changes=>null
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(52575800614271008)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(52575480040271004)
,p_button_name=>'P223_BOTON_PROCESAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--gapLeft:t-Button--gapRight:t-Button--gapTop:t-Button--gapBottom'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'GENERAR'
,p_warn_on_unsaved_changes=>null
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(65714764351241734)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(52575480040271004)
,p_button_name=>'P223_BOTON_BORRAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--gapLeft:t-Button--gapRight:t-Button--gapTop:t-Button--gapBottom'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'REVERTIR'
,p_warn_on_unsaved_changes=>null
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(65714417869241731)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(65272282178719729)
,p_button_name=>'P223_BOTON_CERRAR_FVPROCOM'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_image_alt=>'Cerrar'
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(52249247715226445)
,p_name=>'P223_COD_MODULO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(52249147472226444)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(52570333869243053)
,p_name=>'P223_PERIODO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(52575198653271001)
,p_prompt=>'Periodo'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186937130263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(52570748877243055)
,p_name=>'P223_INICIO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(52575198653271001)
,p_prompt=>'Fecha Inicio'
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
 p_id=>wwv_flow_imp.id(52571129194243056)
,p_name=>'P223_FIN'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(52575198653271001)
,p_prompt=>'Fecha Fin'
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
 p_id=>wwv_flow_imp.id(52575541345271005)
,p_name=>'P223_COD_TIPO_GRUPO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(52575264406271002)
,p_prompt=>'Tipo Grupo'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_GRUPO_VEND'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'-- FVPROCOM',
'',
'SELECT cod_tipo_grupo  || '' - '' || descripcion D, cod_tipo_grupo R       ',
'FROM FV_CATEGORIAS_VENDEDORES  ',
'WHERE cod_empresa = :P_COD_EMPRESA ',
'ORDER BY 1;'))
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
 p_id=>wwv_flow_imp.id(52575675068271006)
,p_name=>'P223_COD_VENDEDOR'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(52575361375271003)
,p_prompt=>'Vendedor'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_VENDEDOR'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'--LV PARA VTFAPECO  ',
'  select cod_vendedor || '' - '' || ltrim( rtrim( nvl( p.nombre, p.nomb_fantasia ) ) ) D,',
'         cod_vendedor R',
'    from fv_vendedores u,',
'          personas p',
'   where u.cod_empresa = :p_cod_empresa',
'     and u.cod_persona = p.cod_persona;',
''))
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
 p_id=>wwv_flow_imp.id(55453065857566410)
,p_name=>'P223_INDICADOR_REPORTE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(52249147472226444)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(65272474346719731)
,p_name=>'P223_INDICADOR_REP_FVPROCOM'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(52249147472226444)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(65715525377241742)
,p_name=>'P223_INDICADOR_ALERT'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(52249147472226444)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(52249697301226449)
,p_name=>'DA_ASIGNAR_FECHAS'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P223_PERIODO'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(52249721675226450)
,p_event_id=>wwv_flow_imp.id(52249697301226449)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    IF :P223_PERIODO IS NOT NULL THEN ',
'    	BEGIN',
'    	    SELECT  FEC_INICIAL, ',
'           	  FEC_FINAL  ',
'            INTO 	:P223_INICIO, :P223_FIN',
'    	    FROM fv_periodos_comision',
'    		WHERE cod_empresa= :P_COD_EMPRESA',
'    		AND	num_periodo = :P223_PERIODO;',
'    		EXCEPTION ',
'    			WHEN OTHERS THEN',
'    			:P223_INICIO :=NULL;',
'    			:P223_FIN :=NULL;',
'    			',
'    		END;',
'    ELSE',
'    	:P223_INICIO :=NULL;',
'    	:P223_FIN :=NULL;',
'    END IF;',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;'))
,p_attribute_02=>'P_COD_EMPRESA,P223_PERIODO'
,p_attribute_03=>'P223_INICIO,P223_FIN'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(55452659617566406)
,p_name=>'DA_PROCESAR_COMISIONES'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(52575755706271007)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(65715898264241745)
,p_event_id=>wwv_flow_imp.id(55452659617566406)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    IF :P223_PERIODO IS NULL THEN',
'        :P223_INDICADOR_ALERT := ''1'';',
'    ELSE',
'        :P223_INDICADOR_ALERT := ''0''; ',
'    END IF;',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;'))
,p_attribute_03=>'P223_INDICADOR_ALERT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(65715909291241746)
,p_event_id=>wwv_flow_imp.id(55452659617566406)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>unistr('El per\00EDodo no puede ser nulo.')
,p_attribute_02=>'PERIODO NULO'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P223_INDICADOR_ALERT'
,p_client_condition_expression=>'1'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(65713946051241726)
,p_event_id=>wwv_flow_imp.id(55452659617566406)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'var spinner = apex.util.showSpinner();'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P223_INDICADOR_ALERT'
,p_client_condition_expression=>'0'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(55452723334566407)
,p_event_id=>wwv_flow_imp.id(55452659617566406)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'FVPROCOM.procesa_comisiones (:P223_PERIODO,',
'                             :P223_COD_VENDEDOR,',
'                             :P223_COD_TIPO_GRUPO,',
'                             :P_COD_EMPRESA);',
'',
':P223_INDICADOR_REPORTE := ''1'';',
'',
'EXCEPTION',
'            WHEN OTHERS THEN',
'                APEX_DEBUG.ERROR(SQLERRM);',
'END;',
''))
,p_attribute_02=>'P223_PERIODO,P223_COD_VENDEDOR,P223_COD_TIPO_GRUPO,P_COD_EMPRESA'
,p_attribute_03=>'P223_INDICADOR_REPORTE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P223_INDICADOR_ALERT'
,p_client_condition_expression=>'0'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(65714032318241727)
,p_event_id=>wwv_flow_imp.id(55452659617566406)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$("#apex_wait_overlay").remove();',
'$(".u-Processing").remove();'))
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P223_INDICADOR_ALERT'
,p_client_condition_expression=>'0'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(55453666415566416)
,p_event_id=>wwv_flow_imp.id(55452659617566406)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(52249415215226447)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P223_INDICADOR_ALERT'
,p_client_condition_expression=>'0'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(65713589371241722)
,p_name=>'DA_GRABAR_COMISION'
,p_event_sequence=>30
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(52575800614271008)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(65715635591241743)
,p_event_id=>wwv_flow_imp.id(65713589371241722)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    IF :P223_PERIODO IS NULL THEN',
'        :P223_INDICADOR_ALERT := ''1'';',
'    ELSE',
'        :P223_INDICADOR_ALERT := ''0''; ',
'    END IF;',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;'))
,p_attribute_03=>'P223_INDICADOR_ALERT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(65715732805241744)
,p_event_id=>wwv_flow_imp.id(65713589371241722)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>unistr('El per\00EDodo no puede ser nulo.')
,p_attribute_02=>'PERIODO NULO'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P223_INDICADOR_ALERT'
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
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(65713797795241724)
,p_event_id=>wwv_flow_imp.id(65713589371241722)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'var spinner = apex.util.showSpinner();'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P223_INDICADOR_ALERT'
,p_client_condition_expression=>'0'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(65713693248241723)
,p_event_id=>wwv_flow_imp.id(65713589371241722)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    FVPROCOM.GRABA_COMISION (  :P_COD_EMPRESA,',
'                               :P223_PERIODO,',
'                               :P223_INICIO,',
'                               :P223_FIN,',
'                               :P223_COD_VENDEDOR,',
'                               :P223_COD_TIPO_GRUPO); ',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;'))
,p_attribute_02=>'P_COD_EMPRESA,P223_PERIODO,P223_INICIO,P223_FIN,P223_COD_VENDEDOR,P223_COD_TIPO_GRUPO'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P223_INDICADOR_ALERT'
,p_client_condition_expression=>'0'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(65713861810241725)
,p_event_id=>wwv_flow_imp.id(65713589371241722)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$("#apex_wait_overlay").remove();',
'$(".u-Processing").remove();'))
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P223_INDICADOR_ALERT'
,p_client_condition_expression=>'0'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(65714141165241728)
,p_event_id=>wwv_flow_imp.id(65713589371241722)
,p_event_result=>'TRUE'
,p_action_sequence=>80
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    :P223_INDICADOR_REP_FVPROCOM := ''1'';',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;'))
,p_attribute_03=>'P223_INDICADOR_REP_FVPROCOM'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P223_INDICADOR_ALERT'
,p_client_condition_expression=>'0'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(65714230734241729)
,p_event_id=>wwv_flow_imp.id(65713589371241722)
,p_event_result=>'TRUE'
,p_action_sequence=>90
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(65272282178719729)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P223_INDICADOR_ALERT'
,p_client_condition_expression=>'0'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(65714367214241730)
,p_event_id=>wwv_flow_imp.id(65713589371241722)
,p_event_result=>'TRUE'
,p_action_sequence=>100
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(65272282178719729)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P223_INDICADOR_ALERT'
,p_client_condition_expression=>'0'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(65714534541241732)
,p_name=>'DA_CERRAR_REPORT_FVPROCOM'
,p_event_sequence=>40
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(65714417869241731)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(65714606431241733)
,p_event_id=>wwv_flow_imp.id(65714534541241732)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(65272282178719729)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(65714817410241735)
,p_name=>'DA_BORRAR_COMISIONES'
,p_event_sequence=>50
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(65714764351241734)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(65715103623241738)
,p_event_id=>wwv_flow_imp.id(65714817410241735)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>unistr('Est\00E1 a punto de borrar las comisiones del periodo ingresado. \00BFEst\00E1 seguro que desea continuar?')
,p_attribute_02=>'ELIMINAR COMISIONES'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(65716050262241747)
,p_event_id=>wwv_flow_imp.id(65714817410241735)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    IF :P223_PERIODO IS NULL THEN',
'        :P223_INDICADOR_ALERT := ''1'';',
'    ELSE',
'        :P223_INDICADOR_ALERT := ''0''; ',
'    END IF;',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;'))
,p_attribute_03=>'P223_INDICADOR_ALERT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(65716112884241748)
,p_event_id=>wwv_flow_imp.id(65714817410241735)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>unistr('El per\00EDodo no puede ser nulo.')
,p_attribute_02=>'PERIODO NULO'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P223_INDICADOR_ALERT'
,p_client_condition_expression=>'1'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(65715257073241739)
,p_event_id=>wwv_flow_imp.id(65714817410241735)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'var spinner = apex.util.showSpinner();'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P223_INDICADOR_ALERT'
,p_client_condition_expression=>'0'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(65715087237241737)
,p_event_id=>wwv_flow_imp.id(65714817410241735)
,p_event_result=>'TRUE'
,p_action_sequence=>80
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'FVPROCOM.borrar_comisiones (:P_COD_EMPRESA,',
'                            :P223_PERIODO); ',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;'))
,p_attribute_02=>'P_COD_EMPRESA,P223_PERIODO'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P223_INDICADOR_ALERT'
,p_client_condition_expression=>'0'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(65715308016241740)
,p_event_id=>wwv_flow_imp.id(65714817410241735)
,p_event_result=>'TRUE'
,p_action_sequence=>90
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$("#apex_wait_overlay").remove();',
'$(".u-Processing").remove();'))
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P223_INDICADOR_ALERT'
,p_client_condition_expression=>'0'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(55453513421566415)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'PR_LIMPIAR_CAMPOS'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(52249019227226443)
,p_process_sequence=>20
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_INIT'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'  :P223_COD_MODULO := ''FV'';',
'',
'  :P223_INDICADOR_REPORTE := ''0'';',
'',
'  :P223_INDICADOR_REP_FVPROCOM := ''0'';',
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
