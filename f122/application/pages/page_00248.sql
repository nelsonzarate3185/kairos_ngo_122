prompt --application/pages/page_00248
begin
--   Manifest
--     PAGE: 00248
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
 p_id=>248
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'FVREPROM'
,p_alias=>'FVREPROM'
,p_step_title=>'FVREPROM'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_last_updated_by=>'OSCARGO'
,p_last_upd_yyyymmddhh24miss=>'20230102114028'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(59763009024338013)
,p_plug_name=>unistr('Formulario - Par\00E1metros')
,p_region_template_options=>'#DEFAULT#:t-Region--accent1:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>10
,p_plug_grid_column_span=>3
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(63627493893349567)
,p_plug_name=>'Detalle de Ventas Promotoras - PFVREPROM'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--compactTitle:t-BreadcrumbRegion--useRegionTitle'
,p_plug_template=>wwv_flow_imp.id(40134615190263663)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(66754090193612108)
,p_plug_name=>'RESULTADOS'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--accent1:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_new_grid_row=>false
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(59764771669338030)
,p_plug_name=>'FORM_VTREPCOMPRORES'
,p_parent_plug_id=>wwv_flow_imp.id(66754090193612108)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select  c001 cod_empresa,',
'        c002 cod_empleado,',
'        c003 nombre,',
'        to_char(nvl(n001,0),''999G999G999G999G990D00'') monto,',
'        to_char(nvl(n002,0),''999G999G999G999G990D00'') insentivo,',
'        to_char(nvl(n003,0),''999G999G999G999G990D00'') cantidad,',
'        to_char(nvl(n004,0),''999G999G999G999G990D00'') comision_acumulada',
'from APEX_COLLECTIONS ',
'           where COLLECTION_NAME = ''COLEC_FVREPROM_REPORTE'';'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_plug_display_when_condition=>'P248_TIPO_REPORTE'
,p_plug_display_when_cond2=>'R'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'FORM_VTREPCOMPRORES'
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
 p_id=>wwv_flow_imp.id(59764879975338031)
,p_max_row_count=>'1000000'
,p_no_data_found_message=>'No se obtuvieron resultados'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_flashback=>'N'
,p_show_help=>'N'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'N'
,p_owner=>'OSCARGO'
,p_internal_uid=>59764879975338031
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(59765357282338036)
,p_db_column_name=>'COD_EMPRESA'
,p_display_order=>10
,p_column_identifier=>'B'
,p_column_label=>'Cod Empresa'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(59765408053338037)
,p_db_column_name=>'COD_EMPLEADO'
,p_display_order=>20
,p_column_identifier=>'C'
,p_column_label=>unistr('C\00F3digo')
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(59765529679338038)
,p_db_column_name=>'NOMBRE'
,p_display_order=>30
,p_column_identifier=>'D'
,p_column_label=>'Nombre'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(59766607873338049)
,p_db_column_name=>'MONTO'
,p_display_order=>40
,p_column_identifier=>'I'
,p_column_label=>'Monto'
,p_column_type=>'STRING'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(59766739347338050)
,p_db_column_name=>'INSENTIVO'
,p_display_order=>50
,p_column_identifier=>'J'
,p_column_label=>'Insentivo'
,p_column_type=>'STRING'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(66753394322612101)
,p_db_column_name=>'CANTIDAD'
,p_display_order=>60
,p_column_identifier=>'K'
,p_column_label=>'Cantidad'
,p_column_type=>'STRING'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(66753413265612102)
,p_db_column_name=>'COMISION_ACUMULADA'
,p_display_order=>70
,p_column_identifier=>'L'
,p_column_label=>'Comision Acumulada'
,p_column_type=>'STRING'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(64059635757708673)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'640597'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>100
,p_report_columns=>'COD_EMPLEADO:NOMBRE:CANTIDAD:INSENTIVO:MONTO:COMISION_ACUMULADA:'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(66753797885612105)
,p_plug_name=>'FORM_VRREPCOMPRO'
,p_parent_plug_id=>wwv_flow_imp.id(66754090193612108)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_plug_item_display_point=>'BELOW'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select  c001 cod_empresa,',
'        c002 cod_empleado,',
'        c003 nombre_promotora,',
'        c004 cod_cliente,',
'        c005 nombre_cliente,',
'        c006 cod_articulo,',
'        c007 desc_articulo,',
'        c008 desc_marca,',
'        n001 monto,',
'        n002 cantidad,',
'        n003 comision_acumulada',
'from APEX_COLLECTIONS ',
'           where COLLECTION_NAME = ''COLEC_FVREPROM_REPORTE'';'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_plug_display_when_condition=>'P248_TIPO_REPORTE'
,p_plug_display_when_cond2=>'D'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'FORM_VRREPCOMPRO'
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
 p_id=>wwv_flow_imp.id(66753843139612106)
,p_max_row_count=>'1000000'
,p_no_data_found_message=>'No se obtuvieron resultados'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_flashback=>'N'
,p_show_help=>'N'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'N'
,p_owner=>'OSCARGO'
,p_internal_uid=>66753843139612106
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(66754154154612109)
,p_db_column_name=>'COD_EMPRESA'
,p_display_order=>10
,p_column_identifier=>'B'
,p_column_label=>'Cod Empresa'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(66754206595612110)
,p_db_column_name=>'COD_EMPLEADO'
,p_display_order=>20
,p_column_identifier=>'C'
,p_column_label=>'Cod Empleado'
,p_column_type=>'STRING'
,p_use_as_row_header=>'Y'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(66754331188612111)
,p_db_column_name=>'NOMBRE_PROMOTORA'
,p_display_order=>30
,p_column_identifier=>'D'
,p_column_label=>'Nombre Promotora'
,p_column_type=>'STRING'
,p_use_as_row_header=>'Y'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(66754493555612112)
,p_db_column_name=>'COD_CLIENTE'
,p_display_order=>40
,p_column_identifier=>'E'
,p_column_label=>'Cod Cliente'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(66754530609612113)
,p_db_column_name=>'NOMBRE_CLIENTE'
,p_display_order=>50
,p_column_identifier=>'F'
,p_column_label=>'Nombre Cliente'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(66754676964612114)
,p_db_column_name=>'COD_ARTICULO'
,p_display_order=>60
,p_column_identifier=>'G'
,p_column_label=>'Cod Articulo'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(66754786439612115)
,p_db_column_name=>'DESC_ARTICULO'
,p_display_order=>70
,p_column_identifier=>'H'
,p_column_label=>'Desc Articulo'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(66754887178612116)
,p_db_column_name=>'DESC_MARCA'
,p_display_order=>80
,p_column_identifier=>'I'
,p_column_label=>'Marca'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(66755205207612120)
,p_db_column_name=>'MONTO'
,p_display_order=>90
,p_column_identifier=>'M'
,p_column_label=>'Monto'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(66755358793612121)
,p_db_column_name=>'CANTIDAD'
,p_display_order=>100
,p_column_identifier=>'N'
,p_column_label=>'Cantidad'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(66755478206612122)
,p_db_column_name=>'COMISION_ACUMULADA'
,p_display_order=>110
,p_column_identifier=>'O'
,p_column_label=>'Comision Acumulada'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(66796433879950951)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_type=>'REPORT'
,p_report_alias=>'667965'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>100
,p_view_mode=>'REPORT'
,p_report_columns=>'DESC_MARCA:COD_ARTICULO:DESC_ARTICULO:COD_EMPLEADO:NOMBRE_PROMOTORA:COD_CLIENTE:NOMBRE_CLIENTE:CANTIDAD:MONTO:COMISION_ACUMULADA:'
,p_sort_column_1=>'COD_EMPLEADO'
,p_sort_direction_1=>'ASC'
,p_sort_column_2=>'NOMBRE_PROMOTORA'
,p_sort_direction_2=>'ASC'
,p_sort_column_3=>'0'
,p_sort_direction_3=>'ASC'
,p_sort_column_4=>'0'
,p_sort_direction_4=>'ASC'
,p_sort_column_5=>'0'
,p_sort_direction_5=>'ASC'
,p_sort_column_6=>'0'
,p_sort_direction_6=>'ASC'
,p_break_on=>'0:0:0:0'
,p_break_enabled_on=>'0:0:0:0'
,p_sum_columns_on_break=>'CANTIDAD:COMISION_ACUMULADA'
,p_chart_type=>'pie'
,p_chart_label_column=>'NOMBRE_PROMOTORA'
,p_chart_value_column=>'COMISION_ACUMULADA'
,p_chart_aggregate=>'SUM'
,p_chart_sorting=>'VALUE_DESC'
,p_chart_orientation=>'vertical'
);
wwv_flow_imp_page.create_worksheet_group_by(
 p_id=>wwv_flow_imp.id(67797117682207763)
,p_report_id=>wwv_flow_imp.id(66796433879950951)
,p_group_by_columns=>'COD_EMPLEADO:NOMBRE_PROMOTORA'
,p_function_01=>'SUM'
,p_function_column_01=>'CANTIDAD'
,p_function_db_column_name_01=>'APXWS_GBFC_01'
,p_function_label_01=>'Cantidad total'
,p_function_format_mask_01=>'999G999G999G999G999G999G990'
,p_function_sum_01=>'Y'
,p_function_02=>'SUM'
,p_function_column_02=>'COMISION_ACUMULADA'
,p_function_db_column_name_02=>'APXWS_GBFC_02'
,p_function_label_02=>unistr('Comisi\00F3n acumulada total')
,p_function_format_mask_02=>'999G999G999G999G999G999G990'
,p_function_sum_02=>'Y'
,p_sort_column_01=>'APXWS_GBFC_02'
,p_sort_direction_01=>'DESC'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(66755625280612124)
,p_plug_name=>'FORM_FVPROMOKPI'
,p_parent_plug_id=>wwv_flow_imp.id(66754090193612108)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>30
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_plug_item_display_point=>'BELOW'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select  c001 cod_empresa,',
'        c002||'' - ''||c003 concepto,',
'        c004 porcentaje_variable,',
'        c005 sub_concepto,',
'        c006 descripcion,',
'        c007 porcentaje,',
'        c008 porc_ejecutado,',
'        c009||'' - ''||c010 empleado,',
'        c011 cod_categoria,',
'        c012 nro_debcred,',
'        c008 marca,',
'        n001 monto,',
'        n002 salario',
'from APEX_COLLECTIONS ',
'           where COLLECTION_NAME = ''COLEC_FVREPROM_REPORTE'';'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_plug_display_when_condition=>'P248_TIPO_REPORTE'
,p_plug_display_when_cond2=>'C'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'FORM_FVPROMOKPI'
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
 p_id=>wwv_flow_imp.id(66755760009612125)
,p_max_row_count=>'1000000'
,p_no_data_found_message=>'No se obtuvieron resultados'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'OSCARGO'
,p_internal_uid=>66755760009612125
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(66755894979612126)
,p_db_column_name=>'COD_EMPRESA'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Cod Empresa'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(66755974491612127)
,p_db_column_name=>'CONCEPTO'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Concepto'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(66756128038612129)
,p_db_column_name=>'PORCENTAJE_VARIABLE'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'% Variable'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(66756294695612130)
,p_db_column_name=>'SUB_CONCEPTO'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Sub Concepto'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(66756304133612131)
,p_db_column_name=>'DESCRIPCION'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>unistr('Descripci\00F3n')
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(66756491582612132)
,p_db_column_name=>'PORCENTAJE'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'%'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(66756850115612136)
,p_db_column_name=>'COD_CATEGORIA'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Cod Categoria'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(66756914534612137)
,p_db_column_name=>'NRO_DEBCRED'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Nro Debcred'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(66757196013612139)
,p_db_column_name=>'MONTO'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>'Monto'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(66757286792612140)
,p_db_column_name=>'SALARIO'
,p_display_order=>150
,p_column_identifier=>'O'
,p_column_label=>'Salario'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(66757878855612146)
,p_db_column_name=>'PORC_EJECUTADO'
,p_display_order=>160
,p_column_identifier=>'P'
,p_column_label=>'% Ejecutado'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(66757951378612147)
,p_db_column_name=>'EMPLEADO'
,p_display_order=>170
,p_column_identifier=>'Q'
,p_column_label=>'Empleado'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(66758076391612148)
,p_db_column_name=>'MARCA'
,p_display_order=>180
,p_column_identifier=>'R'
,p_column_label=>'Marca'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(67890802349740133)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'678909'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'COD_EMPRESA:CONCEPTO:PORCENTAJE_VARIABLE:SUB_CONCEPTO:DESCRIPCION:PORCENTAJE:COD_CATEGORIA:NRO_DEBCRED:MONTO:SALARIO'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(59764430224338027)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(59763009024338013)
,p_button_name=>'BTN_EJECUTAR'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_image_alt=>'Ejecutar'
,p_button_position=>'CREATE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(59763263382338015)
,p_name=>'P248_EMPLEADO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(59763009024338013)
,p_prompt=>'Empleado'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select c.cod_empleado ||'' - ''|| nvl( p.nombre, p.nomb_fantasia ) as nombre, c.cod_empleado codigo',
'      from personas p, RH_EMPLEADOS c ',
'      where c.cod_persona  = p.cod_persona ',
'        and c.cod_empresa  = :P_COD_EMPRESA;'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>' '
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
 p_id=>wwv_flow_imp.id(59763312457338016)
,p_name=>'P248_CLIENTE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(59763009024338013)
,p_prompt=>'Cliente'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select c.cod_cliente ||'' - ''|| nvl( p.nombre, p.nomb_fantasia ) as nombre, c.cod_cliente codigo',
'      from cc_clientes c, personas p',
'      where c.cod_empresa = :P_COD_EMPRESA',
'        and c.cod_persona = p.cod_persona ;'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>' '
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
 p_id=>wwv_flow_imp.id(59763453610338017)
,p_name=>'P248_MARCA'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(59763009024338013)
,p_prompt=>'Marca'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select cod_marca ||'' - ''|| descripcion, cod_marca',
'         from st_marcas;'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>' '
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
 p_id=>wwv_flow_imp.id(59763684965338019)
,p_name=>'P248_FEC_INICIAL'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(59763009024338013)
,p_prompt=>'Periodo Inicial'
,p_display_as=>'NATIVE_DATE_PICKER_JET'
,p_cSize=>30
,p_colspan=>6
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
 p_id=>wwv_flow_imp.id(59763775408338020)
,p_name=>'P248_FEC_FINAL'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(59763009024338013)
,p_prompt=>'Periodo Final'
,p_display_as=>'NATIVE_DATE_PICKER_JET'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>6
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
 p_id=>wwv_flow_imp.id(59763858607338021)
,p_name=>'P248_FEC_COMPRA_INI'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(59763009024338013)
,p_prompt=>'Periodo Compra NGO'
,p_display_as=>'NATIVE_DATE_PICKER_JET'
,p_cSize=>30
,p_colspan=>6
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
 p_id=>wwv_flow_imp.id(59763922291338022)
,p_name=>'P248_FEC_COMPRA_FIN'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(59763009024338013)
,p_prompt=>'Compra NGO final'
,p_display_as=>'NATIVE_DATE_PICKER_JET'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>6
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
 p_id=>wwv_flow_imp.id(59764069230338023)
,p_name=>'P248_MES'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(59763009024338013)
,p_prompt=>'Mes (comisiones)'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>'STATIC2:Enero;01,Febrero;02,Marzo;03,Abril;04,Mayo;05,Junio;06,Julio;07,Agosto;08,Setiembre;09,Octubre;10,Noviembre;11,Dociembre;12'
,p_lov_display_null=>'YES'
,p_lov_null_text=>' '
,p_cSize=>30
,p_colspan=>6
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
 p_id=>wwv_flow_imp.id(59764111757338024)
,p_name=>'P248_ANIO'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(59763009024338013)
,p_prompt=>unistr('A\00F1o (comisiones)')
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>6
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(59764350409338026)
,p_name=>'P248_TIPO_REPORTE'
,p_is_required=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(59763009024338013)
,p_prompt=>'Tipo Reporte'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>'STATIC:1-) Detallado;D,2-) Resumen;R,3-) Comisiones;C'
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
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(66753510331612103)
,p_name=>'DA_TIPO_REPORTE'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P248_TIPO_REPORTE'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(66753645737612104)
,p_event_id=>wwv_flow_imp.id(66753510331612103)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(59763009024338013)
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'console.log($v(''P248_TIPO_REPORTE''));',
'if($v(''P248_TIPO_REPORTE'')===''R'' || $v(''P248_TIPO_REPORTE'')===''D'' ){',
'    apex.item(''P248_CLIENTE'').show();',
'    apex.item(''P248_MARCA'').show();',
'    apex.item(''P248_FEC_FINAL'').show();',
'    apex.item(''P248_FEC_INICIAL'').show();',
'    apex.item(''P248_FEC_COMPRA_INI'').hide();',
'    apex.item(''P248_FEC_COMPRA_FIN'').hide();',
'    apex.item(''P248_MES'').hide();',
'    apex.item(''P248_ANIO'').hide();',
'',
'    $(''#P248_FEC_INICIAL'').attr("required", "true");',
'    $(''#P248_FEC_FINAL'').attr("required", "true");',
'',
'    $(''#P248_MES'').removeAttr(''required'');',
'    $(''#P248_ANIO'').removeAttr(''required'');',
'',
'    /*apex.item(''P248_MES'').value = null;',
'    apex.item(''P248_ANIO'').value = 0;',
'    apex.item(''P248_FEC_COMPRA_INI'').value = null;',
'    apex.item(''P248_FEC_COMPRA_FIN'').value = null;*/',
'}else if($v(''P248_TIPO_REPORTE'')===''C''){',
'    apex.item(''P248_CLIENTE'').hide();',
'    apex.item(''P248_MARCA'').hide();',
'    apex.item(''P248_FEC_FINAL'').hide();',
'    apex.item(''P248_FEC_INICIAL'').hide();',
'    apex.item(''P248_FEC_COMPRA_INI'').hide();',
'    apex.item(''P248_FEC_COMPRA_FIN'').hide();',
'    apex.item(''P248_MES'').show();',
'    apex.item(''P248_ANIO'').show();',
'',
'    $(''#P248_FEC_INICIAL'').removeAttr(''required'');',
'    $(''#P248_FEC_FINAL'').removeAttr(''required'');',
'',
'    $(''#P248_MES'').attr("required", "true");',
'    $(''#P248_ANIO'').attr("required", "true");',
'}else{',
'    apex.item(''P248_CLIENTE'').show();',
'    apex.item(''P248_MARCA'').show();',
'    apex.item(''P248_FEC_FINAL'').show();',
'    apex.item(''P248_FEC_INICIAL'').show();',
'    apex.item(''P248_FEC_COMPRA_INI'').show();',
'    apex.item(''P248_FEC_COMPRA_FIN'').show();',
'    apex.item(''P248_MES'').show();',
'    apex.item(''P248_ANIO'').show();',
'}',
''))
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(59766040497338043)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'CONSULTA'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'APEX_COLLECTION.CREATE_OR_TRUNCATE_COLLECTION(''COLEC_FVREPROM_REPORTE'');',
'',
'BEGIN',
'    if :P248_TIPO_REPORTE = ''C'' then',
'        FVREPROM.sp_repor_fvpromokpi(',
'            pi_cod_empresa => :P_COD_EMPRESA,',
'            pi_mes => :P248_MES,',
'            pi_anio => :P248_ANIO,',
'            pi_cod_empleado => :P248_EMPLEADO);',
'    elsif :P248_FEC_INICIAL is not null and :P248_FEC_FINAL is not null then',
'        if :P248_TIPO_REPORTE = ''R'' then',
'            FVREPROM.sp_repor_vtrepcomprores(',
'                pi_cod_empresa => :P_COD_EMPRESA,',
'                pi_cod_empleado => :P248_EMPLEADO,',
'                pi_cod_cliente => :P248_CLIENTE,',
'                pi_cod_marca => :P248_MARCA,',
'                pi_fec_ini => :P248_FEC_INICIAL,',
'                pi_fec_fin => :P248_FEC_FINAL);',
'        elsif :P248_TIPO_REPORTE = ''D'' then',
'            FVREPROM.sp_repor_vtrepcompro(',
'                pi_cod_empresa => :P_COD_EMPRESA,',
'                pi_cod_empleado => :P248_EMPLEADO,',
'                pi_cod_cliente => :P248_CLIENTE,',
'                pi_cod_marca => :P248_MARCA,',
'                pi_fec_ini => :P248_FEC_INICIAL,',
'                pi_fec_fin => :P248_FEC_FINAL);',
'        end if;',
'    end if;',
'EXCEPTION',
'    WHEN OTHERS THEN',
'     RAISE_APPLICATION_ERROR(-20001,SQLERRM);',
'END;'))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_imp.component_end;
end;
/
