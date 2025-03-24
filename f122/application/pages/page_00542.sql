prompt --application/pages/page_00542
begin
--   Manifest
--     PAGE: 00542
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
 p_id=>542
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'Proceso de Calculo de Comisiones - CPH'
,p_alias=>'PROCESO-DE-CALCULO-DE-COMISIONES-CPH'
,p_step_title=>'Proceso de Calculo de Comisiones - CPH'
,p_autocomplete_on_off=>'OFF'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#reguard {background-color: #edf2f4;}',
'',
'.t-Form-label{',
'    color:  #003A85  !important;',
'    font-weight: bold !important;',
'    }'))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_last_updated_by=>'JUANSA'
,p_last_upd_yyyymmddhh24miss=>'20230726154526'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(52358298371223323)
,p_plug_name=>'Proceso de Calculo de Comisiones'
,p_region_name=>'reguard'
,p_region_template_options=>'#DEFAULT#:t-Region--accent1:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>1000
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(52358301296223324)
,p_plug_name=>'DETALLE'
,p_parent_plug_id=>wwv_flow_imp.id(52358298371223323)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>20
,p_plug_new_grid_row=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT  C001 COD_VENDEDOR',
'       ,C002 vendedor',
'       ,N001 total_venta  ',
'       ,N002 meta_base  ',
'       ,N003 COMISION   ',
'       ,N004 costo_total  ',
'       ,N005 margen_prom  ',
'       ,C004 margen_min  ',
'       ,APEX_ITEM.CHECKBOX(1,C005,decode(C005,''P'',''CHECKED'',''UNCHECKED'' )||'' disabled'')Generado',
'       ,APEX_ITEM.CHECKBOX(1,C003,decode(C003,''S'',''CHECKED disabled'',''UNCHECKED'' ))PAGADO',
'       ,null eliminar ',
'       ,NULL VER',
'       ,seq_id',
'FROM APEX_COLLECTIONS  ',
'WHERE COLLECTION_NAME = ''COM_DETALLE''  '))
,p_plug_source_type=>'NATIVE_IR'
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
 p_id=>wwv_flow_imp.id(56946980000324804)
,p_max_row_count=>'1000000'
,p_no_data_found_message=>'Detalle por Vendedor'
,p_max_rows_per_page=>'10'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'JUANSA'
,p_internal_uid=>56946980000324804
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(56948324746324818)
,p_db_column_name=>'ELIMINAR'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>'Eliminar'
,p_column_link=>'javascript:$s(''P542_ELIMINAR'',#SEQ_ID#);'
,p_column_linktext=>'<span class="fa fa-trash" aria-hidden="true"></span>'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(56948511255324820)
,p_db_column_name=>'COD_VENDEDOR'
,p_display_order=>150
,p_column_identifier=>'P'
,p_column_label=>'Codigo'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(56948674420324821)
,p_db_column_name=>'VENDEDOR'
,p_display_order=>160
,p_column_identifier=>'Q'
,p_column_label=>'Vendedor'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(56948716340324822)
,p_db_column_name=>'TOTAL_VENTA'
,p_display_order=>170
,p_column_identifier=>'R'
,p_column_label=>'Venta Total'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(56948822635324823)
,p_db_column_name=>'META_BASE'
,p_display_order=>180
,p_column_identifier=>'S'
,p_column_label=>'Meta'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(56948994125324824)
,p_db_column_name=>'COMISION'
,p_display_order=>190
,p_column_identifier=>'T'
,p_column_label=>'Total Comision'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(56949063482324825)
,p_db_column_name=>'COSTO_TOTAL'
,p_display_order=>200
,p_column_identifier=>'U'
,p_column_label=>'Costo de Vta.'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(56949191133324826)
,p_db_column_name=>'MARGEN_PROM'
,p_display_order=>210
,p_column_identifier=>'V'
,p_column_label=>'Margen%'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_format_mask=>'999D90'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(56949246703324827)
,p_db_column_name=>'PAGADO'
,p_display_order=>220
,p_column_identifier=>'W'
,p_column_label=>'Pagado'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(56950050748324835)
,p_db_column_name=>'VER'
,p_display_order=>230
,p_column_identifier=>'X'
,p_column_label=>'Ver'
,p_column_link=>'javascript:$s(''P542_COD_VENDEDOR'',''#COD_VENDEDOR#'');'
,p_column_linktext=>'<span class="fa fa-plus-square" aria-hidden="true"></span>'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(57007723403815424)
,p_db_column_name=>'MARGEN_MIN'
,p_display_order=>240
,p_column_identifier=>'Y'
,p_column_label=>'Margen Min'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_format_mask=>'999D90'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(57007876932815425)
,p_db_column_name=>'GENERADO'
,p_display_order=>250
,p_column_identifier=>'Z'
,p_column_label=>'Generado'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(57008384370815430)
,p_db_column_name=>'SEQ_ID'
,p_display_order=>260
,p_column_identifier=>'AA'
,p_column_label=>'Seq Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(56983697425305322)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'569837'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>10
,p_report_columns=>'VER:COD_VENDEDOR:VENDEDOR:TOTAL_VENTA:META_BASE:COMISION:COSTO_TOTAL:MARGEN_PROM:MARGEN_MIN:GENERADO:ELIMINAR:'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(56950175050324836)
,p_plug_name=>'Detalle Vendedor por Marca'
,p_parent_plug_id=>wwv_flow_imp.id(52358298371223323)
,p_region_template_options=>'#DEFAULT#:margin-top-md'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>30
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT  c001   COD_VENDEDOR,',
'        c002   cod_marca,',
'        c003   MARCA,',
'        N001   total_venta,',
'        N002   meta,',
'        N003   margen ,',
'        C004   porc_alcance,',
'        N004   porc_comision ,',
'        N005   comision   ',
'       ,NULL VER',
'FROM APEX_COLLECTIONS  ',
'WHERE COLLECTION_NAME = ''COM_DETALLE_VEN''  ',
'AND C001=:P542_COD_VENDEDOR',
'  '))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P542_COD_VENDEDOR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'DET_VENDEDOR'
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
 p_id=>wwv_flow_imp.id(56950224258324837)
,p_max_row_count=>'1000000'
,p_no_data_found_message=>'Detalle por Marcas'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'JUANSA'
,p_internal_uid=>56950224258324837
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(56950487600324839)
,p_db_column_name=>'COD_VENDEDOR'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Cod Vendedor'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(56950585411324840)
,p_db_column_name=>'COD_MARCA'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Codigo'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(56950663040324841)
,p_db_column_name=>'MARCA'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Marca'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(56950774108324842)
,p_db_column_name=>'TOTAL_VENTA'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Venta Total'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(56950846864324843)
,p_db_column_name=>'META'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Meta'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(56950936642324844)
,p_db_column_name=>'MARGEN'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Margen'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_format_mask=>'9G990D90'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(56951035700324845)
,p_db_column_name=>'PORC_ALCANCE'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'% Alcance'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_format_mask=>'9G990D90'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(56951136312324846)
,p_db_column_name=>'PORC_COMISION'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'% Comision'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'9G990D90'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(56951233835324847)
,p_db_column_name=>'COMISION'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Comision'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(56951395812324848)
,p_db_column_name=>'VER'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Ver'
,p_column_link=>'javascript:$s(''P542_COD_MARCA'',''#COD_MARCA#'');'
,p_column_linktext=>'<span class="fa fa-plus-square" aria-hidden="true"></span>'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(57014942915790332)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'570150'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'VER:COD_MARCA:MARCA:TOTAL_VENTA:META:MARGEN:PORC_ALCANCE:PORC_COMISION:COMISION:'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(56950335198324838)
,p_plug_name=>'Detalle por Facturas'
,p_parent_plug_id=>wwv_flow_imp.id(52358298371223323)
,p_region_template_options=>'#DEFAULT#:margin-top-md'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>40
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT    c002  cod_cliente,',
'          c003  Comprobante,',
'          D001  fecha,',
'          N001  importe,',
'          C004  cod_articulo ,',
'          N002  porc_comision ,',
'          N003  comision     ,',
'          APEX_ITEM.CHECKBOX(1,C006,decode(C006,''S'',''CHECKED'',''UNCHECKED'' )||'' disabled'') ind_interior,',
'          C007  nom_cliente  ,',
'          C008  nom_articulo ',
'FROM APEX_COLLECTIONS  ',
'WHERE COLLECTION_NAME = ''COM_DETALLE_FAC''  ',
'AND C001= :P542_COD_VENDEDOR',
'AND C005= :P542_COD_MARCA',
'  '))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P542_COD_VENDEDOR,P542_COD_MARCA'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'DET_FACTURA'
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
 p_id=>wwv_flow_imp.id(56951419462324849)
,p_max_row_count=>'1000000'
,p_no_data_found_message=>'Detalle de Facturas'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'JUANSA'
,p_internal_uid=>56951419462324849
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(56951584244324850)
,p_db_column_name=>'COD_CLIENTE'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Codigo'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(57005433595815401)
,p_db_column_name=>'COMPROBANTE'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Comprobante'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(57005589307815402)
,p_db_column_name=>'FECHA'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Fecha'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(57005684474815403)
,p_db_column_name=>'IMPORTE'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Importe'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(57005752517815404)
,p_db_column_name=>'COD_ARTICULO'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Codigo'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(57005856215815405)
,p_db_column_name=>'PORC_COMISION'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'%Comision'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(57005984249815406)
,p_db_column_name=>'COMISION'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Comision'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(57006016703815407)
,p_db_column_name=>'IND_INTERIOR'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Interior'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(57007190472815418)
,p_db_column_name=>'NOM_CLIENTE'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Nombre Cliente'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(57007241690815419)
,p_db_column_name=>'NOM_ARTICULO'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>unistr('Descripci\00F3n Articulo')
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(57015598310790326)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'570156'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'FECHA:COMPROBANTE:COD_CLIENTE:NOM_CLIENTE:COD_ARTICULO:NOM_ARTICULO:IMPORTE:PORC_COMISION:COMISION:IND_INTERIOR:'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(52359322474223334)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(52358298371223323)
,p_button_name=>'Buscar'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--iconRight:t-Button--stretch:t-Button--gapTop'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Buscar'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-search'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
,p_grid_column_span=>1
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(52359410842223335)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_imp.id(52358298371223323)
,p_button_name=>'Limpiar'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--iconRight:t-Button--stretch:t-Button--gapTop'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Limpiar'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-repeat'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
,p_grid_column_span=>1
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(52358690504223327)
,p_button_sequence=>70
,p_button_plug_id=>wwv_flow_imp.id(52358298371223323)
,p_button_name=>'Generar'
,p_button_static_id=>'genera'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--iconRight:t-Button--stretch:t-Button--gapTop'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Generar'
,p_icon_css_classes=>'fa-database-check'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
,p_grid_column_span=>1
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(52358423200223325)
,p_name=>'P542_MES'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(52358298371223323)
,p_prompt=>'Mes'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT LPAD(MES,2,''0'')||''-''||UPPER(DESCRIPCION) MES, LPAD(MES,2,''0'') COD',
'FROM MESES;',
''))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(52358504407223326)
,p_name=>'P542_ANIO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(52358298371223323)
,p_prompt=>unistr('A\00F1o')
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
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
 p_id=>wwv_flow_imp.id(52360226316223343)
,p_name=>'P542_OPERACION'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(52358298371223323)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(56946886315324803)
,p_name=>'P542_VENDEDOR'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(52358298371223323)
,p_prompt=>'Vendedor'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select v.cod_vendedor||'' - ''|| ',
'       p.nombre vendedor,v.cod_vendedor',
'from FV_VENDEDORES V,',
'     PERSONAS P',
'WHERE V.COD_EMPRESA=:P_COD_EMPRESA',
'AND   V.COD_PERSONA=P.COD_PERSONA',
'order by v.estado,p.nombre'))
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
,p_attribute_05=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(57006192050815408)
,p_name=>'P542_COD_VENDEDOR'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(52358298371223323)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(57006291480815409)
,p_name=>'P542_COD_MARCA'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(52358298371223323)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(57007952552815426)
,p_name=>'P542_ELIMINAR'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(52358298371223323)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(52359594877223336)
,p_name=>'da_limpiar'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(52359410842223335)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(52359623253223337)
,p_event_id=>wwv_flow_imp.id(52359594877223336)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P542_MES,P542_ANIO,P542_OPERACION,P542_COD_VENDEDOR,P542_COD_MARCA'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(52359940038223340)
,p_event_id=>wwv_flow_imp.id(52359594877223336)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'   apex_collection.create_or_truncate_collection(''COM_DETALLE'');',
'      apex_collection.create_or_truncate_collection(''COM_DETALLE_VEN'');',
'         apex_collection.create_or_truncate_collection(''COM_DETALLE_FAC'');'))
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(52359888673223339)
,p_event_id=>wwv_flow_imp.id(52359594877223336)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(52358301296223324)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(57006979374815416)
,p_event_id=>wwv_flow_imp.id(52359594877223336)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(56950175050324836)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(57007093614815417)
,p_event_id=>wwv_flow_imp.id(52359594877223336)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(56950335198324838)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(52360033955223341)
,p_name=>'DA_BUSCAR'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(52359322474223334)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(57007351683815420)
,p_event_id=>wwv_flow_imp.id(52360033955223341)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'var spinner = apex.util.showSpinner();'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(52360138276223342)
,p_event_id=>wwv_flow_imp.id(52360033955223341)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF :P542_MES IS NOT NULL AND :P542_ANIO IS NOT NULL THEN',
'inv.fvprocpom.recupera_datos(pi_cod_empresa => :P_COD_EMPRESA,',
'                               pi_mes => :P542_MES,',
'                               pi_anio => :P542_ANIO,',
'                               pi_cod_vendedor => :P542_VENDEDOR,',
'                               po_operacion =>  :P542_OPERACION);',
'ELSE ',
'    :P542_OPERACION:=NULL;',
'     raise_application_error(-20000, ''Debe seleccionar el Periodo de Comision.''); ',
'END IF;',
':P542_COD_MARCA:=null;',
':P542_COD_VENDEDOR:=null;'))
,p_attribute_02=>'P542_MES,P542_ANIO,P542_VENDEDOR'
,p_attribute_03=>'P542_OPERACION,P542_COD_VENDEDOR,P542_COD_MARCA'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_stop_execution_on_error=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(56949364311324828)
,p_event_id=>wwv_flow_imp.id(52360033955223341)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(52358301296223324)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(57007561796815422)
,p_event_id=>wwv_flow_imp.id(52360033955223341)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(56950335198324838)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(57007602619815423)
,p_event_id=>wwv_flow_imp.id(52360033955223341)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(56950175050324836)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(57007483677815421)
,p_event_id=>wwv_flow_imp.id(52360033955223341)
,p_event_result=>'TRUE'
,p_action_sequence=>80
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$("#apex_wait_overlay").remove();',
'$(".u-Processing").remove();'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(52360894480223349)
,p_name=>'da_habilita_btn'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P542_OPERACION'
,p_condition_element=>'P542_OPERACION'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(52360944724223350)
,p_event_id=>wwv_flow_imp.id(52360894480223349)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'document.getElementById("genera").disabled = false; '
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(56946668683324801)
,p_event_id=>wwv_flow_imp.id(52360894480223349)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'document.getElementById("genera").disabled = true; '
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(57006326904815410)
,p_name=>'da_filtra_vend'
,p_event_sequence=>40
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P542_COD_VENDEDOR'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(57006419148815411)
,p_event_id=>wwv_flow_imp.id(57006326904815410)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'null;'
,p_attribute_02=>'P542_COD_MARCA,P542_VENDEDOR'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(57006589497815412)
,p_event_id=>wwv_flow_imp.id(57006326904815410)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(56950175050324836)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(57006629678815413)
,p_name=>'da_filtra_fac'
,p_event_sequence=>50
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P542_COD_MARCA'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(57006740652815414)
,p_event_id=>wwv_flow_imp.id(57006629678815413)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'null;'
,p_attribute_02=>'P542_COD_VENDEDOR,P542_COD_MARCA'
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
 p_id=>wwv_flow_imp.id(57006899015815415)
,p_event_id=>wwv_flow_imp.id(57006629678815413)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(56950335198324838)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(57008041734815427)
,p_name=>'da_eliminar'
,p_event_sequence=>60
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P542_ELIMINAR'
,p_condition_element=>'P542_ELIMINAR'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(57008112862815428)
,p_event_id=>wwv_flow_imp.id(57008041734815427)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>unistr('Desea eliminar la comisi\00F3n?')
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(57008253573815429)
,p_event_id=>wwv_flow_imp.id(57008041734815427)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin ',
'    :P542_COD_VENDEDOR:=null;',
'    :P542_COD_MARCA:=null;',
'  inv.fvprocpom.elimina_comision_vendedor(pi_id_seq =>:P542_ELIMINAR);',
'exception ',
'when others then',
'   raise_application_error(-20000,SQLERRM);',
'end;'))
,p_attribute_02=>'P542_ELIMINAR'
,p_attribute_03=>'P542_COD_VENDEDOR,P542_COD_MARCA'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(57009017167815437)
,p_event_id=>wwv_flow_imp.id(57008041734815427)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(52358301296223324)
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(52360458373223345)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'LIMPIAR'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(56949936097324834)
,p_process_sequence=>20
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'clear_collec'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex_collection.create_or_truncate_collection(''COM_DETALLE'');',
'apex_collection.create_or_truncate_collection(''COM_DETALLE_VEN'');',
'apex_collection.create_or_truncate_collection(''COM_DETALLE_FAC'');',
'',
''))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(57008961250815436)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'generar_comision'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin ',
'  inv.fvprocpom.genera_comision;',
'exception',
'    when others then ',
'        raise_application_error(-20000, ''Error al intentar generar las comisiones. '' || sqlerrm );',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(52358690504223327)
,p_process_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P542_ANIO is not null and :P542_MES is not null then',
'    return true;',
'else ',
'    return false;',
'end if;'))
,p_process_when_type=>'FUNCTION_BODY'
,p_process_when2=>'PLSQL'
,p_process_success_message=>unistr('Comisi\00F3n Generado con \00C9xito!')
);
wwv_flow_imp.component_end;
end;
/
