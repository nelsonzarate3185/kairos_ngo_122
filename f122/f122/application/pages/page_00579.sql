prompt --application/pages/page_00579
begin
--   Manifest
--     PAGE: 00579
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
 p_id=>579
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'AGRUPACION COMISION VENDEDORES'
,p_alias=>'AGRUPACION-COMISION-VENDEDORES'
,p_step_title=>'AGRUPACION COMISION VENDEDORES'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_javascript_file_urls=>'#APP_FILES#util_generico#MIN#.js'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
' ',
'.t-Body-mainContent  { ',
'                        background: #082b642f!important;',
'                    } ',
'',
'',
'.a-IRR-header , .a-IRR-headerLink{',
'      background: #003a85!important;',
'       color: yellow; ',
' }'))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_last_updated_by=>'JUANSA'
,p_last_upd_yyyymmddhh24miss=>'20240625131548'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(180887985661792617)
,p_plug_name=>'GRUPO COMISION'
,p_region_name=>'reg_reporte'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>990
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select COD_EMPRESA,',
'       COD_GRUPO_COMISION,',
'       PORC_COMISION,',
'       COD_USUARIO,',
'       DESCRIPCION,',
'       FECHA_ALTA,',
'       TIPO_CALCULO_FACT,',
'       COD_ESCALA_FACT escala_fact,',
'       COD_ESCALA_CUMP escala_cump,',
'       COD_ESCALA_FACT,',
'       COD_ESCALA_CUMP,',
'       PORC_PESO_FACT,',
'       PORC_PESO_CUMP,',
'       IMPORTE_BASE_COMISION,',
'       COD_GRUPO_POLITICA',
'  from FV_GRUPOS_COMISION',
' where cod_empresa= :P_COD_EMPRESA',
' ORDER BY TO_NUMBER(COD_GRUPO_COMISION) ASC'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'GRUPO COMISION'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#ffffff'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#ffffff'
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
 p_id=>wwv_flow_imp.id(180888077614792618)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'JUANSA'
,p_internal_uid=>180888077614792618
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(180888183318792619)
,p_db_column_name=>'COD_EMPRESA'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Eliminar'
,p_column_link=>'javascript:$s(''P579_ELIMINAR'',''#COD_GRUPO_COMISION#'');'
,p_column_linktext=>'<span class="fa fa-trash" aria-hidden="true"></span>'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(180888621860792624)
,p_db_column_name=>'COD_GRUPO_COMISION'
,p_display_order=>20
,p_column_identifier=>'F'
,p_column_label=>'Codigo'
,p_column_link=>'javascript:$s(''P579_ID_EDIT'',''#COD_GRUPO_COMISION#'');'
,p_column_linktext=>'#COD_GRUPO_COMISION#'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(180888703659792625)
,p_db_column_name=>'PORC_COMISION'
,p_display_order=>30
,p_column_identifier=>'G'
,p_column_label=>'Porc Comision'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(180888845640792626)
,p_db_column_name=>'COD_USUARIO'
,p_display_order=>40
,p_column_identifier=>'H'
,p_column_label=>'Usuario Alta'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(180888939674792627)
,p_db_column_name=>'DESCRIPCION'
,p_display_order=>50
,p_column_identifier=>'I'
,p_column_label=>unistr('Descripci\00F3n Grupo')
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(180889095615792628)
,p_db_column_name=>'FECHA_ALTA'
,p_display_order=>60
,p_column_identifier=>'J'
,p_column_label=>'Fecha Alta'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_format_mask=>'DD/MM/YYYY'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(180889101892792629)
,p_db_column_name=>'TIPO_CALCULO_FACT'
,p_display_order=>70
,p_column_identifier=>'K'
,p_column_label=>'Forma Calculo'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(180889217577792630)
,p_db_column_name=>'COD_ESCALA_FACT'
,p_display_order=>80
,p_column_identifier=>'L'
,p_column_label=>unistr('Escala Facturaci\00F3n')
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_static_id=>'COD_ESCALA_FACT'
,p_rpt_named_lov=>wwv_flow_imp.id(261962030128741302)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(180889318958792631)
,p_db_column_name=>'COD_ESCALA_CUMP'
,p_display_order=>90
,p_column_identifier=>'M'
,p_column_label=>'Escala Cumplimiento'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_static_id=>'COD_ESCALA_CUMP'
,p_rpt_named_lov=>wwv_flow_imp.id(261962030128741302)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(180889419312792632)
,p_db_column_name=>'PORC_PESO_FACT'
,p_display_order=>100
,p_column_identifier=>'N'
,p_column_label=>'% Peso Facturacion'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_format_mask=>'999G999G999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(180889590644792633)
,p_db_column_name=>'PORC_PESO_CUMP'
,p_display_order=>110
,p_column_identifier=>'O'
,p_column_label=>'%Peso Cumplimiento'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_format_mask=>'999G999G999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(180889620190792634)
,p_db_column_name=>'IMPORTE_BASE_COMISION'
,p_display_order=>120
,p_column_identifier=>'P'
,p_column_label=>unistr('Importe Comisi\00F3n')
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(98194013841746835)
,p_db_column_name=>'ESCALA_FACT'
,p_display_order=>130
,p_column_identifier=>'Q'
,p_column_label=>'Escala Fact'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_static_id=>'COD_ESCALA_FACT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(98194103353746836)
,p_db_column_name=>'ESCALA_CUMP'
,p_display_order=>140
,p_column_identifier=>'R'
,p_column_label=>'Escala Cump'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_static_id=>'COD_ESCALA_CUMP'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(314024241569409014)
,p_db_column_name=>'COD_GRUPO_POLITICA'
,p_display_order=>150
,p_column_identifier=>'S'
,p_column_label=>'Politica'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_static_id=>'COD_GRUPO_POLITICA'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(187783688587550862)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1877837'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'COD_GRUPO_COMISION:DESCRIPCION:COD_ESCALA_FACT:COD_ESCALA_CUMP:IMPORTE_BASE_COMISION:PORC_PESO_FACT:APXWS_CC_001:PORC_PESO_CUMP:APXWS_CC_002:COD_GRUPO_POLITICA:FECHA_ALTA:COD_USUARIO:COD_EMPRESA:'
);
wwv_flow_imp_page.create_worksheet_computation(
 p_id=>wwv_flow_imp.id(173380119410354729)
,p_report_id=>wwv_flow_imp.id(187783688587550862)
,p_db_column_name=>'APXWS_CC_001'
,p_column_identifier=>'C01'
,p_computation_expr=>'N * P /100'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_column_type=>'NUMBER'
,p_column_label=>'Valor Fact.'
,p_report_label=>'Valor Fact.'
);
wwv_flow_imp_page.create_worksheet_computation(
 p_id=>wwv_flow_imp.id(173380516520354730)
,p_report_id=>wwv_flow_imp.id(187783688587550862)
,p_db_column_name=>'APXWS_CC_002'
,p_column_identifier=>'C02'
,p_computation_expr=>'O * P /100'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_column_type=>'NUMBER'
,p_column_label=>'Valor Cump.Politica'
,p_report_label=>'Valor Cump.Politica'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(180889747195792635)
,p_name=>'Escala Facturacion'
,p_template=>wwv_flow_imp.id(40125238939263661)
,p_display_sequence=>1000
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_template_options=>'#DEFAULT#:t-Region--accent13:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'TABLE'
,p_query_table=>'FV_ESCALA_COMISION_PORC'
,p_query_where=>wwv_flow_string.join(wwv_flow_t_varchar2(
'cod_empresa= :P_COD_EMPRESA and',
'cod_grupo = :P579_ESCALA_FACT'))
,p_include_rowid_column=>false
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P579_ESCALA_FACT'
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
 p_id=>wwv_flow_imp.id(180891017732792648)
,p_query_column_id=>1
,p_column_alias=>'COD_EMPRESA'
,p_column_display_sequence=>10
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(180891185602792649)
,p_query_column_id=>2
,p_column_alias=>'COD_GRUPO'
,p_column_display_sequence=>20
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(180891242181792650)
,p_query_column_id=>3
,p_column_alias=>'MARGEN_INI'
,p_column_display_sequence=>30
,p_column_heading=>'Rango Inicial'
,p_use_as_row_header=>'N'
,p_column_format=>'999G999G999G999G990D00'
,p_column_alignment=>'CENTER'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(187800579191448401)
,p_query_column_id=>4
,p_column_alias=>'MARGEN_FIN'
,p_column_display_sequence=>40
,p_column_heading=>'Rango Final'
,p_use_as_row_header=>'N'
,p_column_format=>'999G999G999G999G990D00'
,p_column_alignment=>'CENTER'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(187800656683448402)
,p_query_column_id=>5
,p_column_alias=>'PORC_COM'
,p_column_display_sequence=>50
,p_column_heading=>'Ratio'
,p_use_as_row_header=>'N'
,p_column_format=>'999G999G999G999G990D00'
,p_column_alignment=>'CENTER'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(180889877478792636)
,p_name=>'Escala Cumplimiento'
,p_template=>wwv_flow_imp.id(40125238939263661)
,p_display_sequence=>1010
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_template_options=>'#DEFAULT#:t-Region--accent2:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_new_grid_row=>false
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'TABLE'
,p_query_table=>'FV_ESCALA_COMISION_PORC'
,p_query_where=>wwv_flow_string.join(wwv_flow_t_varchar2(
'cod_empresa= :P_COD_EMPRESA and',
'cod_grupo = :P579_ESCALA_CUMP'))
,p_include_rowid_column=>false
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P579_ESCALA_CUMP'
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
 p_id=>wwv_flow_imp.id(180890580278792643)
,p_query_column_id=>1
,p_column_alias=>'COD_EMPRESA'
,p_column_display_sequence=>10
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(180890627564792644)
,p_query_column_id=>2
,p_column_alias=>'COD_GRUPO'
,p_column_display_sequence=>20
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(180890754160792645)
,p_query_column_id=>3
,p_column_alias=>'MARGEN_INI'
,p_column_display_sequence=>30
,p_column_heading=>'Rango Inicial'
,p_use_as_row_header=>'N'
,p_column_format=>'999G999G999G999G990D00'
,p_column_alignment=>'CENTER'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(180890874456792646)
,p_query_column_id=>4
,p_column_alias=>'MARGEN_FIN'
,p_column_display_sequence=>40
,p_column_heading=>'Rango Final'
,p_use_as_row_header=>'N'
,p_column_format=>'999G999G999G999G990D00'
,p_column_alignment=>'CENTER'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(180890908253792647)
,p_query_column_id=>5
,p_column_alias=>'PORC_COM'
,p_column_display_sequence=>50
,p_column_heading=>'Ratio'
,p_use_as_row_header=>'N'
,p_column_format=>'999G999G999G999G990D00'
,p_column_alignment=>'CENTER'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(180889930136792637)
,p_name=>'Cumplimiento de Politicas'
,p_template=>wwv_flow_imp.id(40125238939263661)
,p_display_sequence=>1020
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_template_options=>'#DEFAULT#:t-Region--accent15:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_new_grid_row=>false
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'TABLE'
,p_query_table=>'FV_PARAM_CUMPLIMIENTO'
,p_query_where=>wwv_flow_string.join(wwv_flow_t_varchar2(
'cod_empresa= :P_COD_EMPRESA and',
'cod_grupo = :P579_COD_POLITICA'))
,p_include_rowid_column=>false
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P579_COD_POLITICA'
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
 p_id=>wwv_flow_imp.id(180890064337792638)
,p_query_column_id=>1
,p_column_alias=>'COD_EMPRESA'
,p_column_display_sequence=>10
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(180890144169792639)
,p_query_column_id=>2
,p_column_alias=>'CODIGO'
,p_column_display_sequence=>20
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(180890268298792640)
,p_query_column_id=>3
,p_column_alias=>'DESCRIPCION'
,p_column_display_sequence=>30
,p_column_heading=>'Descripcion'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(180890389476792641)
,p_query_column_id=>4
,p_column_alias=>'PESO'
,p_column_display_sequence=>40
,p_column_heading=>'Peso %'
,p_use_as_row_header=>'N'
,p_column_format=>'990D90'
,p_column_alignment=>'CENTER'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(180890496368792642)
,p_query_column_id=>5
,p_column_alias=>'OBEJTIVO'
,p_column_display_sequence=>50
,p_column_heading=>'Obejtivo'
,p_use_as_row_header=>'N'
,p_column_format=>'999G990'
,p_column_alignment=>'CENTER'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(187802356103448419)
,p_plug_name=>'GRUPO COMISION - CREAR/MODIFICAR'
,p_region_template_options=>'#DEFAULT#:js-dialog-size600x400'
,p_plug_template=>wwv_flow_imp.id(40117728043263659)
,p_plug_display_sequence=>1030
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(187803641396448432)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(187802356103448419)
,p_button_name=>'Guardar'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Guardar'
,p_button_position=>'BOTTOM'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'u-color-21-text'
,p_icon_css_classes=>'fa-save'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(187802403505448420)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(180887985661792617)
,p_button_name=>'NUEVO'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Agregar Nuevo'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'u-color-22-text'
,p_icon_css_classes=>'fa-plus'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(183087329097712050)
,p_name=>'P579_ID_EDIT'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(180887985661792617)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(187800775986448403)
,p_name=>'P579_ESCALA_FACT'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(180887985661792617)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(187800853932448404)
,p_name=>'P579_ESCALA_CUMP'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(180887985661792617)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(187802288599448418)
,p_name=>'P579_ELIMINAR'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(180887985661792617)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(187802907147448425)
,p_name=>'P579_N_DESCRIPCION'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(187802356103448419)
,p_prompt=>unistr('Descripci\00F3n GRUPO')
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
 p_id=>wwv_flow_imp.id(187803070069448426)
,p_name=>'P579_N_PORC_CUMP'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(187802356103448419)
,p_prompt=>'% Peso Cumpl.'
,p_format_mask=>'999G990D00'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_cMaxlength=>6
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'0'
,p_attribute_03=>'right'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(187803192105448427)
,p_name=>'P579_N_ESCALA_CUMP'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(187802356103448419)
,p_prompt=>'Escala Cumplimiento Pol.'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select DESCRIPCION, COD_GRUPO',
'from INV.FV_ESCALA_COMISION_GRUPO t',
'where cod_empresa= :P_COD_EMPRESA'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(187803224944448428)
,p_name=>'P579_N_PORC_FACT'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(187802356103448419)
,p_prompt=>'% Peso Fact'
,p_format_mask=>'999G990D00'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_cMaxlength=>6
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'0'
,p_attribute_03=>'right'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(187803338716448429)
,p_name=>'P579_N_ESCALA_FACT'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(187802356103448419)
,p_prompt=>'Escala Facturacion'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select DESCRIPCION, COD_GRUPO',
'from INV.FV_ESCALA_COMISION_GRUPO t',
'where cod_empresa= :P_COD_EMPRESA'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(187803471264448430)
,p_name=>'P579_N_POLITICA'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(187802356103448419)
,p_prompt=>'Politica'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:DISTRIBUCION;1,GASTRONOMIA;2,CORPORATIVO;3'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(187803512843448431)
,p_name=>'P579_N_BASE_COM'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(187802356103448419)
,p_prompt=>'Importe Base Comision'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'0'
,p_attribute_03=>'right'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(314024376680409015)
,p_name=>'P579_COD_POLITICA'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(180887985661792617)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(187801029033448406)
,p_name=>'da_refresh_regef'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P579_ESCALA_FACT'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(187801661745448412)
,p_event_id=>wwv_flow_imp.id(187801029033448406)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'null;'
,p_attribute_02=>'P579_ESCALA_FACT'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(187801198487448407)
,p_event_id=>wwv_flow_imp.id(187801029033448406)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(180889747195792635)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(187801284004448408)
,p_name=>'da_refresh_regec'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P579_ESCALA_CUMP'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(187801866055448414)
,p_event_id=>wwv_flow_imp.id(187801284004448408)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'null;'
,p_attribute_02=>'P579_ESCALA_CUMP'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(187801377461448409)
,p_event_id=>wwv_flow_imp.id(187801284004448408)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(180889877478792636)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(187801413505448410)
,p_name=>'da_refresh_regpc'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P579_PARAM_CUMP'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(187801794419448413)
,p_event_id=>wwv_flow_imp.id(187801413505448410)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'null;'
,p_attribute_02=>'P579_PARAM_CUMP'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(187801566942448411)
,p_event_id=>wwv_flow_imp.id(187801413505448410)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(180889930136792637)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(187801916262448415)
,p_name=>'da_click'
,p_event_sequence=>40
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'#reg_reporte table.a-IRR-table tr'
,p_bind_type=>'live'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(187802041921448416)
,p_event_id=>wwv_flow_imp.id(187801916262448415)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
' ',
'     const cef = $(this.triggeringElement).closest(''tr'').find(''[headers="COD_ESCALA_FACT"]'').text(); ',
'     const cec = $(this.triggeringElement).closest(''tr'').find(''[headers="COD_ESCALA_CUMP"]'').text();  ',
'     ',
'     const cep = $(this.triggeringElement).closest(''tr'').find(''[headers="COD_GRUPO_POLITICA"]'').text();  ',
'',
' ',
'        $s(''P579_ESCALA_FACT'',(cef.substring(0,2)).trim()); ',
'        $s(''P579_ESCALA_CUMP'',(cec.substring(0,2)).trim()); ',
'        $s(''P579_COD_POLITICA'',(cep.substring(0,2)).trim()); ',
' ',
' '))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(187802553591448421)
,p_name=>'DA_ELIMINAR_ITEM'
,p_event_sequence=>50
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P579_ELIMINAR'
,p_condition_element=>'P579_ELIMINAR'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(187802611465448422)
,p_event_id=>wwv_flow_imp.id(187802553591448421)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>'Esta seguro que desea eliminar el Registro con Codigo: &P579_ELIMINAR. ?'
,p_attribute_02=>'Eliminar Registro'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(187804630019448442)
,p_event_id=>wwv_flow_imp.id(187802553591448421)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
' delete inv.fv_grupos_comision',
'  where cod_empresa = :P_COD_EMPRESA',
'    and cod_grupo_comision = :P579_ELIMINAR;',
' ',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        raise_application_error(-20000, ''Error al intentar eliminar el registro. '' || sqlerrm );',
'END;'))
,p_attribute_02=>'P579_ELIMINAR'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(187804732169448443)
,p_event_id=>wwv_flow_imp.id(187802553591448421)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(180887985661792617)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(187802781481448423)
,p_name=>'da_nuevo'
,p_event_sequence=>60
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(187802403505448420)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(187804026356448436)
,p_event_id=>wwv_flow_imp.id(187802781481448423)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P579_N_DESCRIPCION,P579_N_ESCALA_FACT,P579_N_PORC_FACT,P579_N_ESCALA_CUMP,P579_N_PORC_CUMP,P579_N_POLITICA,P579_N_BASE_COM,P579_ID_EDIT'
,p_attribute_01=>'STATIC_ASSIGNMENT'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(187802831578448424)
,p_event_id=>wwv_flow_imp.id(187802781481448423)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(187802356103448419)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(187804167258448437)
,p_name=>'DA_GUARDAR'
,p_event_sequence=>70
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(187803641396448432)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(187804269044448438)
,p_event_id=>wwv_flow_imp.id(187804167258448437)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    vmensaje varchar(150);',
'    verror exception;',
'    vcodigo VARCHAR(10);',
'begin',
'',
'        if :P579_N_DESCRIPCION  is null then',
unistr('                vmensaje:=''Debe cargar la Descripcion del Grupo de Comisi\00F3n.'';'),
'                raise verror;',
'        else',
'            if :P579_N_ESCALA_FACT is null or :P579_N_ESCALA_CUMP is null then',
'                vmensaje:=''Debe seleccionar las Escalas de Facturacion/Cumplimiento.'';',
'                raise verror;            ',
'            ',
'            else',
'                    if :P579_N_PORC_FACT is null or :P579_N_PORC_CUMP is null then',
'                            vmensaje:=''Debe cargar los porcentajes de Facturacion/Cumplimiento.'';',
'                            raise verror;',
'                    else',
'                        if :P579_N_POLITICA is null or :P579_N_BASE_COM is null then',
'                                vmensaje:=''Debe cargar correctamente el Importe Base de Comision y la Politica.'';',
'                                raise verror;',
'',
'                        else    ',
'                        ',
'                           if :P579_ID_EDIT is null then',
'                                    begin',
'                                            select nvl(max(TO_NUMBER(cod_grupo_comision)),0)+1',
'                                            into vcodigo',
'                                            from fv_grupos_comision',
'                                            where cod_empresa=:P_COD_EMPRESA;',
'                                    exception',
'                                        when others then    ',
'                                                vcodigo:=''1'';',
'                                    end;',
'                ',
'                                        insert into inv.fv_grupos_comision',
'                                          (cod_empresa, cod_grupo_comision,  cod_usuario, descripcion, fecha_alta, COD_GRUPO_POLITICA, ',
'                                          cod_escala_fact, cod_escala_cump, porc_peso_fact, porc_peso_cump, importe_base_comision)',
'                                        values',
'                                          (nvl(:P_COD_EMPRESA,''1''), vcodigo, NVL(:P_COD_USUARIO,v(''APP_USER'')), :P579_N_DESCRIPCION , sysdate, :P579_N_POLITICA ,',
'                                          :P579_N_ESCALA_FACT, :P579_N_ESCALA_cump, TO_CHAR(:P579_N_PORC_fact) ,  TO_CHAR(:P579_N_PORC_cump) , REPLACE(TO_CHAR(:P579_N_BASE_COM),''.'','''')  ',
'                                          );',
'                            else',
'                                update inv.fv_grupos_comision',
'                                   set  descripcion = :P579_N_DESCRIPCION,',
'                                       cod_escala_fact = :P579_N_ESCALA_FACT,',
'                                       cod_escala_cump = :P579_N_ESCALA_cump,',
'                                       porc_peso_fact = TO_CHAR(:P579_N_PORC_fact),',
'                                       porc_peso_cump = TO_CHAR(:P579_N_PORC_cump),',
'                                       importe_base_comision = REPLACE(TO_CHAR(:P579_N_BASE_COM),''.'',''''),',
'                                       cod_grupo_politica = :P579_N_POLITICA ',
'                                 where cod_empresa = nvl(:P_COD_EMPRESA,''1'')',
'                                   and cod_grupo_comision = :P579_ID_EDIT;',
'',
'',
'                            end if;',
'                        end if;',
'                    end if;',
'            end if;',
'        end if;',
'',
'exception ',
'    when verror then',
'        raise_application_error(-20000,vmensaje);',
'    when others then',
'        raise_application_error(-20000, ''No se a podido crear el Grupo.''|| sqlerrm );',
'end;'))
,p_attribute_02=>'P579_N_DESCRIPCION,P579_N_ESCALA_FACT,P579_N_PORC_FACT,P579_N_ESCALA_CUMP,P579_N_PORC_CUMP,P579_N_POLITICA,P579_N_BASE_COM,P579_ID_EDIT'
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
 p_id=>wwv_flow_imp.id(187804490386448440)
,p_event_id=>wwv_flow_imp.id(187804167258448437)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(187802356103448419)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(187804574039448441)
,p_event_id=>wwv_flow_imp.id(187804167258448437)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(180887985661792617)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(314024492486409016)
,p_name=>'da_ref_regp'
,p_event_sequence=>80
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P579_COD_POLITICA'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(314024694738409018)
,p_event_id=>wwv_flow_imp.id(314024492486409016)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'null;'
,p_attribute_02=>'P579_COD_POLITICA'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(314024722152409019)
,p_event_id=>wwv_flow_imp.id(314024492486409016)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(180889930136792637)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(186495327328438501)
,p_name=>'da_edt_grp'
,p_event_sequence=>90
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P579_ID_EDIT'
,p_condition_element=>'P579_ID_EDIT'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(186495435590438502)
,p_event_id=>wwv_flow_imp.id(186495327328438501)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'        select  descripcion, ',
'                cod_escala_fact, ',
'                cod_escala_cump, ',
'                porc_peso_fact, ',
'                porc_peso_cump, ',
'                importe_base_comision, ',
'                cod_grupo_politica ',
'        into :P579_N_DESCRIPCION,',
'             :P579_N_ESCALA_FACT,',
'             :P579_N_ESCALA_CUMP,',
'             :P579_N_PORC_FACT,',
'             :P579_N_PORC_CUMP,',
'             :P579_N_BASE_COM,',
'             :P579_N_POLITICA',
'        from inv.fv_grupos_comision',
'        where cod_empresa = nvl(:P_COD_EMPRESA,''1'')',
'        and   cod_grupo_comision=:P579_ID_EDIT',
'        ;',
'exception',
'when others then',
'     raise_application_error(-20000, sqlerrm );',
'end;'))
,p_attribute_02=>'P579_ID_EDIT'
,p_attribute_03=>'P579_N_DESCRIPCION,P579_N_ESCALA_FACT,P579_N_PORC_FACT,P579_N_ESCALA_CUMP,P579_N_PORC_CUMP,P579_N_POLITICA,P579_N_BASE_COM'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(186495534330438503)
,p_event_id=>wwv_flow_imp.id(186495327328438501)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(187802356103448419)
);
wwv_flow_imp.component_end;
end;
/
