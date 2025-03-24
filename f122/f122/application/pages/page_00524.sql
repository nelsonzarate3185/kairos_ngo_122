prompt --application/pages/page_00524
begin
--   Manifest
--     PAGE: 00524
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
 p_id=>524
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'Canje de Puntos - STPROCAN'
,p_alias=>'CANJE-DE-PUNTOS-STPROCAN'
,p_step_title=>'Canje de Puntos - STPROCAN'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.btn{',
'    margin-top: 15px;',
'}',
'',
'.u-checkbox {',
'    margin-top: 25px !important;',
'}',
'',
'#btn_cobro {',
'    display: none !important;',
'}',
'',
'#P99_MENSAJE_PAGARE {',
'    background-color: white;',
'    color: red;',
'    font-weight: bold;',
'}',
'',
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
,p_last_updated_by=>'INV'
,p_last_upd_yyyymmddhh24miss=>'20231026151753'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(157115555583822402)
,p_plug_name=>'Canje de Puntos - STPROCAN'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--accent1:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>1190
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(157115794428822404)
,p_plug_name=>'Cabecera'
,p_parent_plug_id=>wwv_flow_imp.id(157115555583822402)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--noBorder:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>10
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(156746010863385544)
,p_plug_name=>'R1'
,p_parent_plug_id=>wwv_flow_imp.id(157115794428822404)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(156746172456385545)
,p_plug_name=>'R2'
,p_parent_plug_id=>wwv_flow_imp.id(157115794428822404)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>20
,p_plug_new_grid_row=>false
,p_plug_grid_column_span=>3
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(156746494730385548)
,p_plug_name=>'R3'
,p_parent_plug_id=>wwv_flow_imp.id(157115794428822404)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>30
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(157115839686822405)
,p_plug_name=>'Report'
,p_parent_plug_id=>wwv_flow_imp.id(157115555583822402)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>20
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select COD_EMPRESA,',
'       COD_PERSONA,',
'       FEC_CIERRE_DESDE,',
'       FEC_CIERRE_HASTA,',
'       FEC_CIERRE,',
'       COD_VENDEDOR,',
'       TOTAL,',
'       NRO_CANJE,',
'       FEC_CANJE,',
'       NRO_VALE,',
'       (select p.nombre',
'          	from st_vendedor_promo v, personas p',
'        	where v.cod_empresa=:p_cod_empresa',
'        	and v.cod_persona=p.cod_persona',
'        	and v.cod_vendedor = CJ.COD_VENDEDOR',
'        	AND  NVL(ACTIVO,''A'')<>''I'') DESC_VENDEDOR,',
'       (select t.codigo_area||t.num_telefono ',
'            from personas p , telef_personas t',
'            where p.cod_persona= CJ.cod_persona',
'            and p.cod_persona=t.cod_persona',
'            and rownum=1) TELEFONO,',
'       COD_CLIENTE_VALE,',
'       COD_DISTRIBUIDOR,',
'       TOTAL_PUNTOS,',
'       TIPO_VENDEDOR',
'      ',
'  from ST_HISTORICOS_PUNTOS_CANJEADOS CJ',
'  WHERE NRO_CANJE = :P524_NRO_CANJE',
'  and cj.cod_empresa=:P_COD_EMPRESA'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P524_NRO_CANJE'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Report'
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
 p_id=>wwv_flow_imp.id(157224031512678304)
,p_max_row_count=>'1000000'
,p_no_data_found_message=>unistr('No hay resultados para su b\00FAsqueda.')
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_display_row_count=>'Y'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'FCARDOZO'
,p_internal_uid=>157224031512678304
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(157224105026678305)
,p_db_column_name=>'COD_EMPRESA'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Cod Empresa'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(157224281860678306)
,p_db_column_name=>'COD_PERSONA'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Cod Persona'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(157224649738678310)
,p_db_column_name=>'COD_VENDEDOR'
,p_display_order=>60
,p_column_identifier=>'C'
,p_column_label=>'Cod Vendedor'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(157225165246678315)
,p_db_column_name=>'COD_CLIENTE_VALE'
,p_display_order=>110
,p_column_identifier=>'D'
,p_column_label=>'Cod Vale'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(157225274190678316)
,p_db_column_name=>'COD_DISTRIBUIDOR'
,p_display_order=>120
,p_column_identifier=>'E'
,p_column_label=>'Cod Distribuidor'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(157225466847678318)
,p_db_column_name=>'TIPO_VENDEDOR'
,p_display_order=>140
,p_column_identifier=>'F'
,p_column_label=>'Tipo Vendedor'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(157137252734139003)
,p_db_column_name=>'FEC_CIERRE_DESDE'
,p_display_order=>150
,p_column_identifier=>'Q'
,p_column_label=>'Fec Cierre Desde'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(157137357626139004)
,p_db_column_name=>'FEC_CIERRE_HASTA'
,p_display_order=>160
,p_column_identifier=>'R'
,p_column_label=>'Fec Cierre Hasta'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(157137470983139005)
,p_db_column_name=>'FEC_CIERRE'
,p_display_order=>170
,p_column_identifier=>'S'
,p_column_label=>'Fec Cierre'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(157137582159139006)
,p_db_column_name=>'TOTAL'
,p_display_order=>180
,p_column_identifier=>'T'
,p_column_label=>'Total'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_format_mask=>'999G999G999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(157137603867139007)
,p_db_column_name=>'NRO_CANJE'
,p_display_order=>190
,p_column_identifier=>'U'
,p_column_label=>'Nro Canje'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(157137738513139008)
,p_db_column_name=>'FEC_CANJE'
,p_display_order=>200
,p_column_identifier=>'V'
,p_column_label=>'Fec Canje'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(157137862069139009)
,p_db_column_name=>'NRO_VALE'
,p_display_order=>210
,p_column_identifier=>'W'
,p_column_label=>'Nro Vale'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(157137986207139010)
,p_db_column_name=>'TOTAL_PUNTOS'
,p_display_order=>220
,p_column_identifier=>'X'
,p_column_label=>'Total Puntos'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_format_mask=>'999G999G999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(157849436408765801)
,p_db_column_name=>'DESC_VENDEDOR'
,p_display_order=>230
,p_column_identifier=>'Y'
,p_column_label=>'Desc Vendedor'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(157849512236765802)
,p_db_column_name=>'TELEFONO'
,p_display_order=>240
,p_column_identifier=>'Z'
,p_column_label=>unistr('Tel\00E9fono')
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(157290690947517982)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1572907'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>10
,p_report_columns=>'COD_VENDEDOR:DESC_VENDEDOR:TELEFONO:NRO_VALE:COD_DISTRIBUIDOR:COD_CLIENTE_VALE:FEC_CIERRE_DESDE:FEC_CIERRE_HASTA:TOTAL:TOTAL_PUNTOS'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(157560546384176101)
,p_plug_name=>'Contenedor'
,p_parent_plug_id=>wwv_flow_imp.id(157115555583822402)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--removeHeader:t-Region--noBorder:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>40
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(157115901182822406)
,p_plug_name=>'Info'
,p_parent_plug_id=>wwv_flow_imp.id(157560546384176101)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--noBorder:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>10
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(157116359039822410)
,p_plug_name=>'Total'
,p_parent_plug_id=>wwv_flow_imp.id(157560546384176101)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--noBorder:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>20
,p_plug_new_grid_row=>false
,p_plug_grid_column_span=>4
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(158227439084033140)
,p_plug_name=>'Report VTVENPUNVAL'
,p_parent_plug_id=>wwv_flow_imp.id(157560546384176101)
,p_region_template_options=>'#DEFAULT#:t-IRR-region--noBorders'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>30
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select v.cod_empresa,',
'       v.cod_distribuidor, ',
'       p2.nombre desc_distribuidor,',
'       h.cod_cliente_vale,',
'       Cv.DESCRIPCION desc_vale,',
'       v.cod_vendedor, ',
'       p1.nombre nombre_vendedor, ',
'       h.total, ',
'       H.NRO_VALE, ',
'       h.fec_canje + 60 fec_vencimiento, ',
'       h.fec_canje fec_vale, ',
'       v.cedula, ',
'       cv.cod_cliente_vale cv_cliente',
'from st_historicos_puntos_canjeados h, ',
'     st_vendedor_promo v, ',
'     personas p1 ,',
'     personas p2, ',
'     cc_clientes c, ',
'     VT_CLIENTES_VALES cv',
'where h.cod_empresa=:p_cod_empresa',
'and h.nro_canje= :p524_nro_canje',
'and h.cod_empresa=v.cod_empresa',
'and h.cod_vendedor=v.cod_vendedor',
'and p1.cod_persona=v.cod_persona',
'and c.cod_empresa=v.cod_empresa',
'and c.cod_cliente=v.cod_distribuidor',
'and p2.cod_persona=c.cod_persona',
'and cv.cod_empresa=h.cod_empresa',
'and cv.cod_cliente_VALE= :P524_COD_CLIENTE',
'and :P524_AUX_VTVENPUNVAL = ''S''',
'/*UNION ALL',
'select v.cod_empresa,v.cod_distribuidor, p2.nombre desc_distribuidor,',
'h.cod_cliente_vale,Cv.DESCRIPCION desc_vale,',
'v.cod_vendedor, p1.nombre nombre_vendedor, h.total, H.NRO_VALE, h.fec_canje + 45 fec_vencimiento, h.fec_canje fec_vale, v.cedula, cv.cod_cliente_vale',
'from st_historicos_puntos_canjeados h, st_vendedor_promo v, personas p1 ,',
'personas p2, cc_clientes c, VT_CLIENTES_VALES cv',
'where h.cod_empresa=:p_cod_empresa',
'and h.nro_canje= :p_nro_canje',
'and h.cod_empresa=v.cod_empresa',
'and h.cod_vendedor=v.cod_vendedor',
'and p1.cod_persona=v.cod_persona',
'and c.cod_empresa=v.cod_empresa',
'and c.cod_cliente=v.cod_distribuidor',
'and p2.cod_persona=c.cod_persona',
'and cv.cod_empresa=h.cod_empresa',
'and cv.cod_cliente_VALE=h.cod_cliente_vale',
'',
'*/',
'ORDER BY 9'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P524_AUX_VTVENPUNVAL,P524_NRO_CANJE,P524_COD_CLIENTE,P524_COD_DISTRIBUIDOR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Report VTVENPUNVAL'
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
 p_id=>wwv_flow_imp.id(158227562865033141)
,p_max_row_count=>'1000000'
,p_allow_report_saving=>'N'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_finder_drop_down=>'N'
,p_report_list_mode=>'NONE'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_select_columns=>'N'
,p_show_rows_per_page=>'N'
,p_show_filter=>'N'
,p_show_sort=>'N'
,p_show_control_break=>'N'
,p_show_highlight=>'N'
,p_show_computation=>'N'
,p_show_aggregate=>'N'
,p_show_chart=>'N'
,p_show_group_by=>'N'
,p_show_pivot=>'N'
,p_show_flashback=>'N'
,p_show_reset=>'N'
,p_show_help=>'N'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'AIBANEZ'
,p_internal_uid=>158227562865033141
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(158227665515033142)
,p_db_column_name=>'COD_EMPRESA'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Cod Empresa'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(158227773263033143)
,p_db_column_name=>'COD_DISTRIBUIDOR'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>unistr('C\00F3digo Distribuidor')
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(158227854689033144)
,p_db_column_name=>'DESC_DISTRIBUIDOR'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>unistr('Descripci\00F3n')
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(158227951749033145)
,p_db_column_name=>'COD_CLIENTE_VALE'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>unistr('C\00F3digo Cliente Vale')
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(158228060531033146)
,p_db_column_name=>'DESC_VALE'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Desc Vale'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(158228187347033147)
,p_db_column_name=>'COD_VENDEDOR'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>unistr('C\00F3digo Vendedor')
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(158228249821033148)
,p_db_column_name=>'NOMBRE_VENDEDOR'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Nombre '
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(158228346059033149)
,p_db_column_name=>'TOTAL'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Total'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(158228454144033150)
,p_db_column_name=>'NRO_VALE'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>unistr('N\00FAmero Vale')
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(158307890957446801)
,p_db_column_name=>'FEC_VENCIMIENTO'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Fecha de Vencimiento'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(158307971257446802)
,p_db_column_name=>'FEC_VALE'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Fecha del Vale'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(158308059742446803)
,p_db_column_name=>'CEDULA'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>unistr('C\00E9dula')
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(158308188118446804)
,p_db_column_name=>'CV_CLIENTE'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Cv Cliente'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(158319632052431996)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1583197'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>5
,p_report_columns=>'NRO_VALE:COD_DISTRIBUIDOR:DESC_DISTRIBUIDOR:COD_CLIENTE_VALE:DESC_VALE:COD_VENDEDOR:NOMBRE_VENDEDOR:CEDULA:FEC_VENCIMIENTO:FEC_VALE:TOTAL:'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(158309078909446813)
,p_plug_name=>'Report vtdetvalesenviar'
,p_parent_plug_id=>wwv_flow_imp.id(157560546384176101)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>40
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select',
'''NGO''EMPRESA,V.CEDULA,',
'NVL(SUM(H.TOTAL_PUNTOS),0)TOTAL_PUNTOS',
'',
'from st_historicos_puntos_canjeados h, st_vendedor_promo v, personas p1 ,',
'personas p2, cc_clientes c, VT_CLIENTES_VALES cv',
'where h.cod_empresa=:p_cod_empresa',
'and h.nro_canje= :p524_nro_canje',
'and h.cod_empresa=v.cod_empresa',
'and h.cod_vendedor=v.cod_vendedor',
'and p1.cod_persona=v.cod_persona',
'and c.cod_empresa=v.cod_empresa',
'and c.cod_cliente=v.cod_distribuidor',
'and p2.cod_persona=c.cod_persona',
'and cv.cod_empresa(+)=h.cod_empresa',
'and cv.cod_cliente_VALE(+)=:P524_COD_CLIENTE',
'and :P524_AUX_VTDETVALESENVIAR =''S''',
'GROUP BY  V.CEDULA',
'',
'ORDER BY 1',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P524_NRO_CANJE,P524_COD_CLIENTE,P524_AUX_VTDETVALESENVIAR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Report vtdetvalesenviar'
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
 p_id=>wwv_flow_imp.id(158309174515446814)
,p_max_row_count=>'1000000'
,p_allow_report_saving=>'N'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_finder_drop_down=>'N'
,p_report_list_mode=>'NONE'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_select_columns=>'N'
,p_show_rows_per_page=>'N'
,p_show_filter=>'N'
,p_show_sort=>'N'
,p_show_control_break=>'N'
,p_show_highlight=>'N'
,p_show_computation=>'N'
,p_show_aggregate=>'N'
,p_show_chart=>'N'
,p_show_group_by=>'N'
,p_show_pivot=>'N'
,p_show_flashback=>'N'
,p_show_reset=>'N'
,p_show_help=>'N'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'AIBANEZ'
,p_internal_uid=>158309174515446814
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(158309228319446815)
,p_db_column_name=>'EMPRESA'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Empresa'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(158309367475446816)
,p_db_column_name=>'CEDULA'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>unistr('C\00E9dula')
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(158309481210446817)
,p_db_column_name=>'TOTAL_PUNTOS'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Total  de Puntos'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(158346582904197415)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1583466'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>5
,p_report_columns=>'EMPRESA:CEDULA:TOTAL_PUNTOS'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(158310649705446829)
,p_plug_name=>'Report vtvenpuntos'
,p_parent_plug_id=>wwv_flow_imp.id(157560546384176101)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>50
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select v.cod_empresa,',
'       v.cod_distribuidor, ',
'       p2.nombre desc_distribuidor,',
'       h.cod_cliente_vale,',
'       Cv.DESCRIPCION desc_vale,',
'       v.cod_vendedor, ',
'       p1.nombre nombre_vendedor, ',
'       h.total, ',
'       H.NRO_VALE',
'from st_historicos_puntos_canjeados h, ',
'     st_vendedor_promo v, personas p1 ,',
'     personas p2, ',
'     cc_clientes c, ',
'     VT_CLIENTES_VALES cv',
'where h.cod_empresa=:p_cod_empresa',
'and h.nro_canje= :p524_nro_canje',
'and h.cod_empresa=v.cod_empresa',
'and h.cod_vendedor=v.cod_vendedor',
'and p1.cod_persona=v.cod_persona',
'and c.cod_empresa=v.cod_empresa',
'and c.cod_cliente=v.cod_distribuidor',
'and p2.cod_persona=c.cod_persona',
'and cv.cod_empresa=h.cod_empresa',
'and cv.cod_cliente_VALE=:P524_COD_CLIENTE',
'and :P524_AUX_VTVENPUNTOS = ''S''',
'ORDER BY 9'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P524_NRO_CANJE,P524_COD_CLIENTE,P524_AUX_VTVENPUNTOS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Report vtvenpuntos'
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
 p_id=>wwv_flow_imp.id(158311202649446835)
,p_max_row_count=>'1000000'
,p_allow_report_saving=>'N'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_finder_drop_down=>'N'
,p_report_list_mode=>'NONE'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_select_columns=>'N'
,p_show_rows_per_page=>'N'
,p_show_filter=>'N'
,p_show_sort=>'N'
,p_show_control_break=>'N'
,p_show_highlight=>'N'
,p_show_computation=>'N'
,p_show_aggregate=>'N'
,p_show_chart=>'N'
,p_show_group_by=>'N'
,p_show_pivot=>'N'
,p_show_flashback=>'N'
,p_show_reset=>'N'
,p_show_help=>'N'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'AIBANEZ'
,p_internal_uid=>158311202649446835
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(158311323895446836)
,p_db_column_name=>'COD_EMPRESA'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Cod Empresa'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(158311486201446837)
,p_db_column_name=>'COD_DISTRIBUIDOR'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>unistr('C\00F3digo Distribuidor')
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(158311502008446838)
,p_db_column_name=>'DESC_DISTRIBUIDOR'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>unistr('Descripci\00F3n')
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(158311629938446839)
,p_db_column_name=>'COD_CLIENTE_VALE'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>unistr('C\00F3digo Cliente ')
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(158311772142446840)
,p_db_column_name=>'DESC_VALE'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>unistr('Descripci\00F3n')
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(158311819609446841)
,p_db_column_name=>'COD_VENDEDOR'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>unistr('C\00F3digo Vendedor')
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(158311961668446842)
,p_db_column_name=>'NOMBRE_VENDEDOR'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Nombre '
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(158312017046446843)
,p_db_column_name=>'TOTAL'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Total'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(158312154375446844)
,p_db_column_name=>'NRO_VALE'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>unistr('N\00FAmero de Vale')
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(158357719376077507)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1583578'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>10
,p_report_columns=>'COD_DISTRIBUIDOR:DESC_DISTRIBUIDOR:COD_CLIENTE_VALE:DESC_VALE:COD_VENDEDOR:NOMBRE_VENDEDOR:TOTAL:NRO_VALE:'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(158412073333026801)
,p_plug_name=>'Buscar Numero de Canje'
,p_region_template_options=>'js-dialog-autoheight:js-modal:js-draggable:js-resizable:js-dialog-size600x400'
,p_plug_template=>wwv_flow_imp.id(40117728043263659)
,p_plug_display_sequence=>1200
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(158412732933026808)
,p_plug_name=>'MR1'
,p_parent_plug_id=>wwv_flow_imp.id(158412073333026801)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--removeHeader:t-Region--noBorder:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>10
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
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
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(158412843741026809)
,p_plug_name=>'MR2'
,p_parent_plug_id=>wwv_flow_imp.id(158412073333026801)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>20
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT NRO_CANJE,',
'       COD_EMPRESA,',
'	   COD_PERSONA,	',
'       FEC_CIERRE_DESDE,	',
'       FEC_CIERRE_HASTA,	',
'       FEC_CIERRE,	',
'       COD_VENDEDOR	,',
'       FEC_CANJE,	',
'       NRO_VALE,	',
'       COD_CLIENTE_VALE,	',
'       COD_DISTRIBUIDOR,',
'       TOTAL,',
'       NULL SELECCIONAR,',
'       ROWID',
'FROM ST_HISTORICOS_PUNTOS_CANJEADOS',
'WHERE COD_EMPRESA = :P_COD_EMPRESA',
'AND(NRO_CANJE = :P524_NUM_CANJE OR :P524_NUM_CANJE = ''TODOS'')'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P524_NUM_CANJE'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'MR2'
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
 p_id=>wwv_flow_imp.id(158413880330026819)
,p_max_row_count=>'1000000'
,p_no_data_found_message=>'No se han encontrado datos.'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_search_bar=>'N'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_enable_mail_download=>'Y'
,p_owner=>'AIBANEZ'
,p_internal_uid=>158413880330026819
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(158413918023026820)
,p_db_column_name=>'NRO_CANJE'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Nro Canje'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(158414082715026821)
,p_db_column_name=>'COD_EMPRESA'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Cod Empresa'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(158414156574026822)
,p_db_column_name=>'COD_PERSONA'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Cod Persona'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(158414291474026823)
,p_db_column_name=>'FEC_CIERRE_DESDE'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Fec Cierre Desde'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(158414309786026824)
,p_db_column_name=>'FEC_CIERRE_HASTA'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Fec Cierre Hasta'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(158414405777026825)
,p_db_column_name=>'FEC_CIERRE'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Fec Cierre'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(158414547776026826)
,p_db_column_name=>'COD_VENDEDOR'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Vendedor'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(158414650107026827)
,p_db_column_name=>'TOTAL'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Total'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(158414745343026828)
,p_db_column_name=>'ROWID'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Rowid'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_column_type=>'OTHER'
,p_rpt_show_filter_lov=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(158415178248026832)
,p_db_column_name=>'FEC_CANJE'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Fec Canje'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(158415249624026833)
,p_db_column_name=>'NRO_VALE'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Nro Vale'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(158415365387026834)
,p_db_column_name=>'COD_CLIENTE_VALE'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Cod Cliente '
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(158415460027026835)
,p_db_column_name=>'COD_DISTRIBUIDOR'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Distribuidor'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(158415561608026836)
,p_db_column_name=>'SELECCIONAR'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>'&nbsp'
,p_column_link=>'javascript:$s(''P524_INFO'',''#ROWID#'');'
,p_column_linktext=>'<span aria-hidden="true" class="fa fa-file-pointer"></span>'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(158433836335818319)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1584339'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>5
,p_report_columns=>'SELECCIONAR:COD_DISTRIBUIDOR:COD_VENDEDOR:COD_CLIENTE_VALE:NRO_CANJE:NRO_VALE:FEC_CIERRE:TOTAL:'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(158412331269026804)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(158412732933026808)
,p_button_name=>'BT_BUSCAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--iconRight:t-Button--hoverIconPush'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Buscar'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-server-search'
,p_button_cattributes=>'style="margin-top:10px; "'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
,p_grid_column_span=>3
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(157560687581176102)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(157560546384176101)
,p_button_name=>'BT_IMPRMIR_VALE'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight:t-Button--hoverIconPush'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Generar Vale'
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-print'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(157560715861176103)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(157560546384176101)
,p_button_name=>'BT_GENERAR_ARCHIVO'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight:t-Button--hoverIconPush'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Generar Archivo'
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-file-new'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(157560846998176104)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(157560546384176101)
,p_button_name=>'BT_IMPRIMIR_COMPROBANTE'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight:t-Button--hoverIconPush'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Generar Comprobante'
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-print'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(157560984696176105)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_imp.id(157560546384176101)
,p_button_name=>'BT_SMS'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight:t-Button--hoverIconPush'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Enviar Sms'
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-send-o'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(156746681299385550)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(156746494730385548)
,p_button_name=>'BT_GENERAR_VARIOS_VALES'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight:t-Button--hoverIconPush'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Generar Vales'
,p_button_position=>'CREATE'
,p_button_redirect_url=>'f?p=&APP_ID.:529:&SESSION.::&DEBUG.::P529_AUX_IND,P529_COD_DISTRIBUIDOR:&P524_IND_PUNTOS.,&P524_COD_DISTRIBUIDOR.'
,p_icon_css_classes=>'fa-window-new'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(157223835616678302)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(156746494730385548)
,p_button_name=>'BT_CANJEAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight:t-Button--hoverIconPush'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Canjear'
,p_button_position=>'CREATE'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-exchange'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(158312703556446850)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(156746494730385548)
,p_button_name=>'BT_ELIMINAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187078917263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>' Eliminar'
,p_button_position=>'DELETE'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-trash-o'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(158413072897026811)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(157115794428822404)
,p_button_name=>'BT_SEARCH_CAB'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Buscar'
,p_button_position=>'NEXT'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-search'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(158416688781026847)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(157115794428822404)
,p_button_name=>'BT_LIMPIAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--iconRight:t-Button--hoverIconPush'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Limpiar'
,p_button_position=>'NEXT'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-undo-alt'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(156743844388385522)
,p_name=>'P524_COD_DISTRIBUIDOR'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(156746010863385544)
,p_prompt=>unistr('C\00F3digo')
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_DISTRIBUIDORES_STPROCAN'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT distinct P.NOMBRE,',
'       CA.COD_DISTRIBUIDOR',
'FROM ST_CANJEADOS_PROM_CAB CA, PERSONAS P, CC_CLIENTES C',
'where C.COD_EMPRESA = CA.COD_EMPRESA',
'and C.COD_CLIENTE = CA.COD_DISTRIBUIDOR',
'and C.COD_PERSONA = P.COD_PERSONA ;'))
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
 p_id=>wwv_flow_imp.id(156744886172385532)
,p_name=>'P524_DESC_DISTRIBUIDOR_CAB'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(156746010863385544)
,p_prompt=>'Distribuidor'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(156744946362385533)
,p_name=>'P524_COD_VENDEDOR'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(156746010863385544)
,p_prompt=>unistr('C\00F3digo')
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_VENDEDORES_STPROCAN'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select distinct p.nombre,',
'           v.cod_vendedor',
'from st_vendedor_promo v, personas p, ST_CANJEADOS_PROM_CAB c',
'where v.cod_empresa= c.cod_empresa',
'and v.cod_persona= p.cod_persona',
'and v.cod_vendedor = c.COD_VENDEDOR',
'AND  NVL(ACTIVO,''A'')<>''I'';'))
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
 p_id=>wwv_flow_imp.id(156745086013385534)
,p_name=>'P524_DESC_VENDEDOR'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(156746010863385544)
,p_prompt=>'Vendedor'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(156745117234385535)
,p_name=>'P524_COD_CLIENTE'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(156746010863385544)
,p_prompt=>'Cliente'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_VALE_STPROCAN'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select distinct C.DESCRIPCION,',
'       C.COD_CLIENTE_VALE',
'from VT_CLIENTES_VALES C, ST_CANJEADOS_PROM_CAB CA',
'where c.cod_empresa =  CA.cod_empresa',
'and c.COD_CLIENTE_VALE = CA.COD_CLIENTE_VALE'))
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
 p_id=>wwv_flow_imp.id(156745268986385536)
,p_name=>'P524_DESC_VALE_CAB'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(156746010863385544)
,p_prompt=>'Vale'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(156745332551385537)
,p_name=>'P524_FEC_ALTA_INI'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(156746010863385544)
,p_prompt=>'Fec Ini de Periodo'
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
 p_id=>wwv_flow_imp.id(156745489239385538)
,p_name=>'P524_FEC_ALTA_FIN'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(156746010863385544)
,p_prompt=>'Fec Fin de Periodo'
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
 p_id=>wwv_flow_imp.id(156745545825385539)
,p_name=>'P524_FEC_CANJE'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(156746010863385544)
,p_prompt=>'Fecha de Proceso'
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
 p_id=>wwv_flow_imp.id(156745624521385540)
,p_name=>'P524_IND_PUNTOS'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(156746010863385544)
,p_prompt=>'Tipo de Canje'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:Canje de Vales;CV,Envio de Puntos Ashiwea;EA,Canje Ashiwea;CA'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(156745776743385541)
,p_name=>'P524_FEC_CARGA_INI'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(156746010863385544)
,p_prompt=>'Fec de Alta Ini'
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
 p_id=>wwv_flow_imp.id(156745808207385542)
,p_name=>'P524_FEC_CARGA_FIN'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(156746010863385544)
,p_prompt=>'Fec de Alta Fin'
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
 p_id=>wwv_flow_imp.id(156745993712385543)
,p_name=>'P524_TIPO_VENDEDOR'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(156746010863385544)
,p_prompt=>'Tipo '
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
 p_id=>wwv_flow_imp.id(156746284224385546)
,p_name=>'P524_TOTAL_A_CANJEAR'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(156746172456385545)
,p_prompt=>'Total Puntos Pacto'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(156746311191385547)
,p_name=>'P524_IMPORTE_PACTO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(156746172456385545)
,p_prompt=>'Total Importe Pacto'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(156746536978385549)
,p_name=>'P524_NRO_CANJE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(156746494730385548)
,p_prompt=>unistr('N\00FAmero de Canje Generado')
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(157116042210822407)
,p_name=>'P524_DESC_DISTRIBUIDOR'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(157115901182822406)
,p_prompt=>'Distribuidor'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(157116124807822408)
,p_name=>'P524_DESC_VALE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(157115901182822406)
,p_prompt=>'Vale de:'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(157116224237822409)
,p_name=>'P524_SUM_TOTAL'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(157116359039822410)
,p_prompt=>'Total'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(157116444351822411)
,p_name=>'P524_SUM_TOT_PUNTOS'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(157116359039822410)
,p_prompt=>'Total'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(157117493626822421)
,p_name=>'P524_INFO'
,p_item_sequence=>1150
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(157226676727678330)
,p_name=>'P524_CANT_AUX'
,p_item_sequence=>990
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(157226766619678331)
,p_name=>'P524_COD_MODULO'
,p_item_sequence=>1020
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(157226859099678332)
,p_name=>'P524_COD_FORMA'
,p_item_sequence=>1040
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(157226907506678333)
,p_name=>'P524_DERECHOS'
,p_item_sequence=>1010
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(157227044878678334)
,p_name=>'P524_NOM_MODULO'
,p_item_sequence=>1030
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(157227152855678335)
,p_name=>'P524_NOM_FORMA'
,p_item_sequence=>1050
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(157227281999678336)
,p_name=>'P524_COD_SUCURSAL'
,p_item_sequence=>1080
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(157227341912678337)
,p_name=>'P524_COD_EMPRESA'
,p_item_sequence=>1060
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(157227446952678338)
,p_name=>'P524_COD_USUARIO'
,p_item_sequence=>1100
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(157227563354678339)
,p_name=>'P524_NOM_EMPRESA'
,p_item_sequence=>1070
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(157227672732678340)
,p_name=>'P524_NOM_SUCURSAL'
,p_item_sequence=>1090
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(157227758500678341)
,p_name=>'P524_COD_IDIOMA'
,p_item_sequence=>1110
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(157227868784678342)
,p_name=>'P524_CODSISMENU'
,p_item_sequence=>1120
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(157228397455678347)
,p_name=>'P524_MENSAJE'
,p_item_sequence=>1000
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(158308243790446805)
,p_name=>'P524_AUX_VTVENPUNVAL'
,p_item_sequence=>1160
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(158309512391446818)
,p_name=>'P524_AUX_VTDETVALESENVIAR'
,p_item_sequence=>1170
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(158310739512446830)
,p_name=>'P524_AUX_VTVENPUNTOS'
,p_item_sequence=>1180
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(158412298256026803)
,p_name=>'P524_NUM_CANJE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(158412732933026808)
,p_prompt=>unistr('N\00FAmero de Canje')
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Select DISTINCT NRO_CANJE',
'FROM ST_HISTORICOS_PUNTOS_CANJEADOS',
'WHERE COD_EMPRESA = :P_COD_EMPRESA',
''))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'Mostrar Todos'
,p_lov_null_value=>'TODOS'
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
 p_id=>wwv_flow_imp.id(159654267970763604)
,p_name=>'P524_MESSAGE'
,p_item_sequence=>1130
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(159654594335763607)
,p_name=>'P524_ERR_MESSAGE'
,p_item_sequence=>1140
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(157116610925822413)
,p_name=>'DA_DISTRIBUIDOR'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P524_COD_DISTRIBUIDOR'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(157116709051822414)
,p_event_id=>wwv_flow_imp.id(157116610925822413)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    IF :P524_COD_DISTRIBUIDOR IS NOT NULL THEN',
'        SELECT distinct P.NOMBRE ',
'        INTO :P524_DESC_DISTRIBUIDOR_CAB',
'        FROM ST_CANJEADOS_PROM_CAB CA, PERSONAS P, CC_CLIENTES C',
'        WHERE C.COD_EMPRESA = CA.COD_EMPRESA',
'        AND C.COD_CLIENTE = CA.COD_DISTRIBUIDOR',
'        AND CA.COD_DISTRIBUIDOR = :P524_COD_DISTRIBUIDOR',
'        AND C.COD_PERSONA = P.COD_PERSONA;',
'',
'    END IF;',
'',
'    EXCEPTION',
'        WHEN NO_DATA_FOUND THEN',
'                NULL;',
'        WHEN OTHERS THEN',
'                APEX_DEBUG.ERROR(''Error Cod_distribuidor: ''||SQLERRM);',
'END;'))
,p_attribute_02=>'P524_COD_DISTRIBUIDOR'
,p_attribute_03=>'P524_DESC_DISTRIBUIDOR_CAB'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(157116804624822415)
,p_name=>'DA_VENDEDOR'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P524_COD_VENDEDOR'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(157116971368822416)
,p_event_id=>wwv_flow_imp.id(157116804624822415)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    IF :P524_COD_VENDEDOR IS NOT NULL THEN',
'        SELECT P.NOMBRE, ',
'               V.TIPO_VENDEDOR',
'        INTO :P524_DESC_VENDEDOR,',
'             :P524_TIPO_VENDEDOR',
'        FROM st_vendedor_promo v, ',
'             personas p',
'        WHERE v.cod_empresa= :P_COD_EMPRESA',
'        AND v.cod_persona= p.cod_persona',
'        AND v.cod_vendedor = :P524_COD_VENDEDOR',
'        AND  NVL(ACTIVO,''A'')<>''I'';',
'    END IF;',
'',
'    EXCEPTION',
'        WHEN NO_DATA_FOUND THEN',
'                NULL;',
'        WHEN OTHERS THEN',
'                APEX_DEBUG.ERROR(''Error Vendedor: ''||SQLERRM);',
'END;'))
,p_attribute_02=>'P524_COD_VENDEDOR'
,p_attribute_03=>'P524_DESC_VENDEDOR,P524_TIPO_VENDEDOR'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(157117162946822418)
,p_name=>'DA_VALE'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P524_COD_CLIENTE'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(157117247624822419)
,p_event_id=>wwv_flow_imp.id(157117162946822418)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    IF :P524_COD_CLIENTE IS NOT NULL THEN',
'        SELECT C.DESCRIPCION ',
'        INTO :P524_DESC_VALE_CAB',
'        FROM VT_CLIENTES_VALES C',
'        WHERE C.COD_EMPRESA = :P_COD_EMPRESA',
'        AND C.COD_CLIENTE_VALE = :P524_COD_CLIENTE;',
'',
'    END IF;',
'',
'    EXCEPTION',
'         WHEN NO_DATA_FOUND THEN',
'                NULL;',
'        WHEN OTHERS THEN',
'                APEX_DEBUG.ERROR(''Error vale: ''||SQLERRM);',
'END;'))
,p_attribute_02=>'P524_COD_CLIENTE'
,p_attribute_03=>'P524_DESC_VALE_CAB'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(157227920503678343)
,p_name=>'DA_TRAER_REPORT'
,p_event_sequence=>40
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(157223835616678302)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(157228296988678346)
,p_event_id=>wwv_flow_imp.id(157227920503678343)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'    :P524_MENSAJE := NULL;',
'    if :P524_FEC_ALTA_INI IS NOT NULL or :P524_FEC_CARGA_INI IS NOT NULL then',
'        IF to_date(:P524_FEC_ALTA_FIN,''dd/mm/yyyy'') < to_date(:P524_FEC_ALTA_INI,''dd/mm/yyyy'') THEN',
'            :P524_MENSAJE := ''La fecha inicial no puede ser mayor a la fecha final'';',
'        else',
'            :P524_MENSAJE := NULL;',
'        end if;',
'    else',
'         :P524_MENSAJE := ''La fechas no pueden ser nulas''; ',
'',
'    end if;',
'end;',
'',
'  ',
''))
,p_attribute_02=>'P524_FEC_ALTA_INI,P524_FEC_ALTA_FIN,P524_FEC_CARGA_INI'
,p_attribute_03=>'P524_MENSAJE'
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
 p_id=>wwv_flow_imp.id(157228012349678344)
,p_event_id=>wwv_flow_imp.id(157227920503678343)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'',
'    SELECT MAX(TO_NUMBER(nvl(P.NRO_CANJE,0)))+1',
'         INTO :P524_NRO_CANJE',
'         FROM ST_HISTORICOS_PUNTOS_CANJEADOS P',
'        WHERE cod_empresa=:P_cod_empresa;',
'',
'    STPROCAN.GUARDARCABECERA(PI_COD_EMPRESA => :P_COD_EMPRESA,',
'                           PI_NRO_CANJE => :P524_NRO_CANJE,',
'                           PI_FEC_ALTA_INI => :P524_FEC_ALTA_INI,',
'                           PI_FEC_ALTA_FIN => :P524_FEC_ALTA_FIN,',
'                           PI_COD_VENDEDOR => :P524_COD_VENDEDOR,',
'                           PI_FEC_CANJE => :P524_FEC_CANJE,',
'                           PI_COD_CLIENTE_VALE => :P524_COD_CLIENTE,',
'                           PI_COD_DISTRIBUIDOR => :P524_COD_DISTRIBUIDOR,',
'                           PI_FEC_CARGA_INI => :P524_FEC_CARGA_INI,',
'                           PI_FEC_CARGA_FIN => :P524_FEC_CARGA_FIN,',
'                           PI_IND_PUNTOS => :P524_IND_PUNTOS); --EN UN PROCEDIMIENTO HACER EL INSERT EN ST_CANJEADOS_PROM_CAB',
'',
'    STPROCAN.CANJEAR_VALE (PI_COD_EMPRESA => :P_COD_EMPRESA,',
'                           PI_NRO_CANJE => :P524_NRO_CANJE,',
'                           PI_FEC_ALTA_INI => :P524_FEC_ALTA_INI,',
'                           PI_FEC_ALTA_FIN => :P524_FEC_ALTA_FIN,',
'                           PI_COD_VENDEDOR => :P524_COD_VENDEDOR,',
'                           PI_COD_DISTRIBUIDOR => :P524_COD_DISTRIBUIDOR,',
'                           PI_COD_CLIENTE_VALE => :P524_COD_CLIENTE,',
'                           PI_FEC_CARGA_INI => :P524_FEC_CARGA_INI,',
'                           PI_FEC_CARGA_FIN => :P524_FEC_CARGA_FIN);',
'',
'    --calcular totales ',
'    SELECT SUM(TOTAL), SUM(TOTAL_PUNTOS) ',
'    INTO :P524_SUM_TOTAL, :P524_SUM_TOT_PUNTOS',
'    FROM ST_HISTORICOS_PUNTOS_CANJEADOS',
'    WHERE NRO_CANJE = :P524_NRO_CANJE;      ',
'',
'    :P524_SUM_TOTAL := TO_CHAR(:P524_SUM_TOTAL, ''999G999G999G999D00'');',
'    :P524_SUM_TOT_PUNTOS := TO_CHAR(:P524_SUM_TOT_PUNTOS, ''999G999G999G999D00'');                     ',
'',
'',
'    exception',
'        when others then ',
'     raise_application_error(-20100,  sqlerrm );',
'',
'end;'))
,p_attribute_02=>'P524_COD_EMPRESA, P524_NRO_CANJE,P524_FEC_ALTA_INI,P524_FEC_ALTA_FIN,P524_COD_VENDEDOR,P524_COD_DISTRIBUIDOR,P524_COD_CLIENTE,P524_FEC_CARGA_INI,P524_FEC_CARGA_FIN,P524_IND_PUNTOS,P524_FEC_CANJE,P_COD_EMPRESA'
,p_attribute_03=>'P524_NRO_CANJE,P524_SUM_TOTAL,P524_SUM_TOT_PUNTOS'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P524_MENSAJE'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(157228149830678345)
,p_event_id=>wwv_flow_imp.id(157227920503678343)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(157115839686822405)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(157117531374822422)
,p_name=>'DA_INFO'
,p_event_sequence=>50
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P524_NRO_CANJE'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(157117692748822423)
,p_event_id=>wwv_flow_imp.id(157117531374822422)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN ',
'   IF :P524_NRO_CANJE IS NOT NULL THEN',
'        :P524_DESC_VALE := :P524_DESC_VALE_CAB;',
'        :P524_DESC_DISTRIBUIDOR := :P524_DESC_DISTRIBUIDOR_CAB;',
'        IF :P524_DESC_VALE IS NULL THEN',
'                  :P524_DESC_VALE := ''SIN DATOS.'';',
'        END IF;',
'        IF :P524_DESC_DISTRIBUIDOR IS NULL THEN',
'                   :P524_DESC_DISTRIBUIDOR := ''SIN DATOS.'';',
'        END IF;',
'    END IF;',
'  ',
'  EXCEPTION',
'     when others then',
'    apex_debug.error(''Error descripciones: ''||sqlerrm);',
'END; ',
''))
,p_attribute_02=>'P524_NRO_CANJE,P524_DESC_DISTRIBUIDOR_CAB,P524_DESC_VALE_CAB'
,p_attribute_03=>'P524_DESC_DISTRIBUIDOR,P524_DESC_VALE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(158223567902033101)
,p_event_id=>wwv_flow_imp.id(157117531374822422)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P524_DESC_DISTRIBUIDOR,P524_DESC_VALE'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(157228442334678348)
,p_name=>'DA_MENSAJE'
,p_event_sequence=>60
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P524_MENSAJE'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(157228521484678349)
,p_event_id=>wwv_flow_imp.id(157228442334678348)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'&P524_MENSAJE.'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P524_MENSAJE'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(158308304685446806)
,p_name=>'DA_BT_IMPRIMIR_VALE'
,p_event_sequence=>70
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(157560687581176102)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(158308482800446807)
,p_event_id=>wwv_flow_imp.id(158308304685446806)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P524_AUX_VTVENPUNVAL := ''S'';',
':P524_AUX_VTDETVALESENVIAR := ''N'';',
':P524_AUX_VTVENPUNTOS:= ''N'';'))
,p_attribute_03=>'P524_AUX_VTVENPUNVAL,P524_AUX_VTDETVALESENVIAR,P524_AUX_VTVENPUNTOS'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(158308976101446812)
,p_event_id=>wwv_flow_imp.id(158308304685446806)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(158227439084033140)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P524_AUX_VTVENPUNVAL'
,p_client_condition_expression=>'S'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(158308654095446809)
,p_name=>'DA_REPORT2'
,p_event_sequence=>80
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P524_AUX_VTVENPUNVAL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(158308760366446810)
,p_event_id=>wwv_flow_imp.id(158308654095446809)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(158227439084033140)
,p_client_condition_type=>'NOT_EQUALS'
,p_client_condition_element=>'P524_AUX_VTVENPUNVAL'
,p_client_condition_expression=>'S'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(158308835360446811)
,p_event_id=>wwv_flow_imp.id(158308654095446809)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(158227439084033140)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P524_AUX_VTVENPUNVAL'
,p_client_condition_expression=>'S'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(158309643618446819)
,p_name=>'DA_BT_GENERAR'
,p_event_sequence=>90
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(157560715861176103)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(158309723765446820)
,p_event_id=>wwv_flow_imp.id(158309643618446819)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P524_AUX_VTVENPUNVAL := ''N'';',
':P524_AUX_VTDETVALESENVIAR := ''S'';',
':P524_AUX_VTVENPUNTOS := ''N'';',
''))
,p_attribute_03=>'P524_AUX_VTVENPUNVAL,P524_AUX_VTDETVALESENVIAR,P524_AUX_VTVENPUNTOS'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(158309812433446821)
,p_event_id=>wwv_flow_imp.id(158309643618446819)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(158227439084033140)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P524_AUX_VTVENPUNVAL'
,p_client_condition_expression=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(158309916596446822)
,p_event_id=>wwv_flow_imp.id(158309643618446819)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(158309078909446813)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P524_AUX_VTDETVALESENVIAR'
,p_client_condition_expression=>'S'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(158310099041446823)
,p_name=>'DA_REPORT3'
,p_event_sequence=>100
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P524_AUX_VTDETVALESENVIAR'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(158310136449446824)
,p_event_id=>wwv_flow_imp.id(158310099041446823)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(158309078909446813)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P524_AUX_VTDETVALESENVIAR'
,p_client_condition_expression=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(158310356080446826)
,p_event_id=>wwv_flow_imp.id(158310099041446823)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(158309078909446813)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P524_AUX_VTDETVALESENVIAR'
,p_client_condition_expression=>'S'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(158310419640446827)
,p_name=>'DA_BT_COMPROBANTE'
,p_event_sequence=>110
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(157560846998176104)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(158310843428446831)
,p_event_id=>wwv_flow_imp.id(158310419640446827)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P524_AUX_VTVENPUNTOS := ''S'';',
':P524_AUX_VTDETVALESENVIAR := ''N'';',
':P524_AUX_VTVENPUNVAL := ''N'';'))
,p_attribute_03=>'P524_AUX_VTVENPUNVAL,P524_AUX_VTDETVALESENVIAR,P524_AUX_VTVENPUNTOS'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(158310550513446828)
,p_event_id=>wwv_flow_imp.id(158310419640446827)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(158310649705446829)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P524_AUX_VTVENPUNTOS'
,p_client_condition_expression=>'S'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(158310976828446832)
,p_name=>'DA_REPORT4'
,p_event_sequence=>120
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P524_AUX_VTVENPUNTOS'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(158311146175446834)
,p_event_id=>wwv_flow_imp.id(158310976828446832)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(158310649705446829)
,p_client_condition_type=>'NOT_EQUALS'
,p_client_condition_element=>'P524_AUX_VTVENPUNTOS'
,p_client_condition_expression=>'S'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(158311080202446833)
,p_event_id=>wwv_flow_imp.id(158310976828446832)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(158310649705446829)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P524_AUX_VTVENPUNTOS'
,p_client_condition_expression=>'S'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(158412596462026806)
,p_name=>'DA_CARGAR_PAG'
,p_event_sequence=>130
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(158412676630026807)
,p_event_id=>wwv_flow_imp.id(158412596462026806)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(158412073333026801)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(158413105756026812)
,p_name=>'BT_BUSCAR_MODAL'
,p_event_sequence=>140
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(158413072897026811)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(158413217530026813)
,p_event_id=>wwv_flow_imp.id(158413105756026812)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(158412073333026801)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(158414879182026829)
,p_name=>'DA_BUSQUEDA'
,p_event_sequence=>150
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(158412331269026804)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(158415079714026831)
,p_event_id=>wwv_flow_imp.id(158414879182026829)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    IF :P524_NUM_CANJE IS NULL THEN',
'',
'            :P524_NUM_CANJE := ''TODOS'';',
'    END IF;    ',
'',
'    EXCEPTION',
'         WHEN NO_DATA_FOUND THEN',
'                NULL;',
'         WHEN OTHERS THEN',
'                APEX_DEBUG.ERROR(SQLERRM);',
'END;'))
,p_attribute_02=>'P524_NUM_CANJE'
,p_attribute_03=>'P524_NUM_CANJE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(158414997391026830)
,p_event_id=>wwv_flow_imp.id(158414879182026829)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(158412843741026809)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(158415692766026837)
,p_name=>'DA_SELECT'
,p_event_sequence=>160
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P524_INFO'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(158415756805026838)
,p_event_id=>wwv_flow_imp.id(158415692766026837)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    SELECT H.COD_DISTRIBUIDOR,',
'           H.COD_VENDEDOR,',
'           H.COD_CLIENTE_VALE,',
'           CA.FEC_ALTA_INI,',
'           CA.FEC_ALTA_FIN,',
'           CA.FEC_CARGA_INI,',
'           CA.FEC_CARGA_FIN,',
'           H.NRO_CANJE,',
'           H.FEC_CANJE  ',
'    INTO :P524_COD_DISTRIBUIDOR,',
'         :P524_COD_VENDEDOR,',
'         :P524_COD_CLIENTE,',
'         :P524_FEC_ALTA_INI,',
'         :P524_FEC_ALTA_FIN,',
'         :P524_FEC_CARGA_INI,',
'         :P524_FEC_CARGA_FIN,',
'         :P524_NRO_CANJE,',
'         :P524_FEC_CANJE',
'    FROM ST_CANJEADOS_PROM_CAB CA, ST_HISTORICOS_PUNTOS_CANJEADOS H',
'    WHERE H.ROWID = :P524_INFO',
'    AND  CA.NRO_CANJE = H.NRO_CANJE',
'    AND  CA.COD_EMPRESA = :P_COD_EMPRESA;',
'',
'    EXCEPTION ',
'            WHEN NO_DATA_FOUND THEN',
'                     NULL;',
'                    APEX_DEBUG.ERROR(''Error NO DATA FOUND: ''||SQLERRM); ',
'            WHEN OTHERS THEN',
'                    APEX_DEBUG.ERROR(''Error DA select: ''||SQLERRM);',
'END;'))
,p_attribute_02=>'P524_INFO'
,p_attribute_03=>'P524_COD_DISTRIBUIDOR,P524_COD_VENDEDOR,P524_COD_CLIENTE,P524_FEC_ALTA_INI,P524_FEC_ALTA_FIN,P524_FEC_CARGA_INI,P524_FEC_CARGA_FIN,P524_FEC_CANJE,P524_NRO_CANJE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(159179941136757502)
,p_event_id=>wwv_flow_imp.id(158415692766026837)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
' SELECT SUM(TOTAL), SUM(TOTAL_PUNTOS) ',
'    INTO :P524_TOTAL_A_CANJEAR, :P524_IMPORTE_PACTO',
'    FROM ST_HISTORICOS_PUNTOS_CANJEADOS',
'    WHERE NRO_CANJE = :P524_NRO_CANJE;      ',
'',
'    :P524_TOTAL_A_CANJEAR := TO_CHAR(:P524_TOTAL_A_CANJEAR, ''999G999G999G999D00'');',
'    :P524_IMPORTE_PACTO := TO_CHAR(:P524_IMPORTE_PACTO, ''999G999G999G999D00'');    '))
,p_attribute_02=>'P524_NRO_CANJE'
,p_attribute_03=>'P524_TOTAL_A_CANJEAR,P524_IMPORTE_PACTO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(159183394375757536)
,p_event_id=>wwv_flow_imp.id(158415692766026837)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'   --calcular totales ',
'    SELECT SUM(TOTAL), SUM(TOTAL_PUNTOS) ',
'    INTO :P524_SUM_TOTAL, :P524_SUM_TOT_PUNTOS',
'    FROM ST_HISTORICOS_PUNTOS_CANJEADOS',
'    WHERE NRO_CANJE = :P524_NRO_CANJE;      ',
'',
'    :P524_SUM_TOTAL := TO_CHAR(:P524_SUM_TOTAL, ''999G999G999G999D00'');',
'    :P524_SUM_TOT_PUNTOS := TO_CHAR(:P524_SUM_TOT_PUNTOS, ''999G999G999G999D00'');         '))
,p_attribute_02=>'P524_NRO_CANJE'
,p_attribute_03=>'P524_SUM_TOTAL,P524_SUM_TOT_PUNTOS'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(158415856722026839)
,p_event_id=>wwv_flow_imp.id(158415692766026837)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(158412073333026801)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(158415996951026840)
,p_event_id=>wwv_flow_imp.id(158415692766026837)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(157115839686822405)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(158416086604026841)
,p_name=>'DA_ELIMINAR_CAB'
,p_event_sequence=>170
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(158312703556446850)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(158416147076026842)
,p_event_id=>wwv_flow_imp.id(158416086604026841)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>unistr('\00BFDesea eliminar el n\00FAmero de canje?')
,p_attribute_03=>'warning'
,p_attribute_04=>'fa-trash-o'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(158416285363026843)
,p_event_id=>wwv_flow_imp.id(158416086604026841)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'       DELETE FROM ST_HISTORICOS_PUNTOS_CANJEADOS S',
'       WHERE S.COD_EMPRESA = :P_COD_EMPRESA ',
'       AND S.NRO_CANJE = :P524_NRO_CANJE;',
'',
'       ',
'       DELETE FROM ST_CANJEADOS_PROM_CAB CA',
'       WHERE CA.COD_EMPRESA = :P_COD_EMPRESA ',
'       AND CA.NRO_CANJE = :P524_NRO_CANJE;',
' ',
'    EXCEPTION',
'        WHEN OTHERS THEN',
'                APEX_DEBUG.ERROR(''Error al eliminar: ''||SQLERRM);',
'END;'))
,p_attribute_02=>'P524_NRO_CANJE'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(158416444051026845)
,p_event_id=>wwv_flow_imp.id(158416086604026841)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P524_COD_DISTRIBUIDOR,P524_DESC_DISTRIBUIDOR,P524_COD_VENDEDOR,P524_DESC_VENDEDOR,P524_TIPO_VENDEDOR,P524_COD_CLIENTE,P524_DESC_VALE_CAB,P524_FEC_ALTA_INI,P524_FEC_ALTA_FIN,P524_FEC_CARGA_INI,P524_FEC_CARGA_FIN,P524_FEC_CANJE,P524_IND_PUNTOS,P524_TOT'
||'AL_A_CANJEAR,P524_IMPORTE_PACTO,P524_NRO_CANJE,P524_DESC_DISTRIBUIDOR_CAB'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(158416351551026844)
,p_event_id=>wwv_flow_imp.id(158416086604026841)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(157115839686822405)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(158416764924026848)
,p_name=>'DA_LIMPIAR'
,p_event_sequence=>180
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(158416688781026847)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(158416549338026846)
,p_event_id=>wwv_flow_imp.id(158416764924026848)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P524_COD_DISTRIBUIDOR,P524_DESC_DISTRIBUIDOR,P524_COD_VENDEDOR,P524_DESC_VENDEDOR,P524_TIPO_VENDEDOR,P524_COD_CLIENTE,P524_DESC_VALE_CAB,P524_FEC_ALTA_INI,P524_FEC_ALTA_FIN,P524_FEC_CARGA_INI,P524_FEC_CARGA_FIN,P524_FEC_CANJE,P524_IND_PUNTOS,P524_TOT'
||'AL_A_CANJEAR,P524_IMPORTE_PACTO,P524_NRO_CANJE,P524_DESC_DISTRIBUIDOR_CAB,P524_DESC_VALE'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(158456955412519302)
,p_event_id=>wwv_flow_imp.id(158416764924026848)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    IF :P524_COD_VENDEDOR IS NULL THEN',
'        :P524_TIPO_VENDEDOR := NULL;',
'        :P524_DESC_VENDEDOR :=NULL;',
'    END IF;',
'',
'    IF :P524_COD_DISTRIBUIDOR IS NULL THEN',
'',
'        :P524_DESC_DISTRIBUIDOR := NULL;',
'    END IF;',
'',
'    IF :P524_COD_CLIENTE IS NULL THEN',
'          :P524_DESC_VALE_CAB := NULL ;',
'          :P524_DESC_VALE := NULL ;',
'    END IF;',
'',
'    EXCEPTION',
'            WHEN OTHERS THEN',
'                    APEX_DEBUG.ERROR(SQLERRM);',
'END;'))
,p_attribute_02=>'P524_COD_DISTRIBUIDOR,P524_COD_VENDEDOR'
,p_attribute_03=>'P524_DESC_DISTRIBUIDOR,P524_DESC_VENDEDOR,P524_TIPO_VENDEDOR,P524_DESC_VALE,P524_DESC_VALE_CAB'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(158457089322519303)
,p_event_id=>wwv_flow_imp.id(158416764924026848)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P524_AUX_VTDETVALESENVIAR := ''N'';',
':P524_AUX_VTVENPUNTOS := ''N'';',
':P524_AUX_VTVENPUNVAL := ''N'';'))
,p_attribute_03=>'P524_AUX_VTVENPUNVAL,P524_AUX_VTDETVALESENVIAR,P524_AUX_VTVENPUNTOS'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(158456879454519301)
,p_event_id=>wwv_flow_imp.id(158416764924026848)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(157115839686822405)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(159653997496763601)
,p_name=>'DA_ENVIAR_SMS'
,p_event_sequence=>190
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(157560984696176105)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(159654162373763603)
,p_event_id=>wwv_flow_imp.id(159653997496763601)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>unistr('\00BFDesea enviar un SMS a Tigo y Personal?')
,p_attribute_03=>'information'
,p_attribute_04=>'fa-send-o'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(159654069854763602)
,p_event_id=>wwv_flow_imp.id(159653997496763601)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'        :P524_MESSAGE := NULL;',
'        :P524_ERR_MESSAGE := NULL;',
'',
'',
'    IF :P524_NRO_CANJE IS NOT NULL THEN',
'       ',
'        STPROCAN.PR_ENVIAR_SMS(PI_COD_EMPRESA => :P_COD_EMPRESA,',
'                               PI_NRO_CANJE => :P524_NRO_CANJE);',
'        :P524_MESSAGE := ''Mensaje enviado con Exito'';',
'    ELSE ',
'        :P524_ERR_MESSAGE := ''No se ha podido enviar el SMS.'';',
'    ',
'    END IF;',
'',
'    EXCEPTION ',
'        WHEN NO_DATA_FOUND THEN',
'                NULL;',
'        WHEN OTHERS THEN',
'                APEX_DEBUG.ERROR(''Error enviar SMS: ''||SQLERRM);',
'END;'))
,p_attribute_02=>'P524_NRO_CANJE'
,p_attribute_03=>'P524_MESSAGE,P524_ERR_MESSAGE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(159654394453763605)
,p_name=>'DA_MESSAGE'
,p_event_sequence=>200
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P524_MESSAGE'
,p_condition_element=>'P524_MESSAGE'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(159654462141763606)
,p_event_id=>wwv_flow_imp.id(159654394453763605)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'&P524_MESSAGE.'
,p_attribute_03=>'success'
,p_attribute_04=>'fa-send-o'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(159654855536763610)
,p_name=>'DA_ERR_MESSAGE'
,p_event_sequence=>210
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P524_ERR_MESSAGE'
,p_condition_element=>'P524_ERR_MESSAGE'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(159654999043763611)
,p_event_id=>wwv_flow_imp.id(159654855536763610)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'&P524_ERR_MESSAGE.'
,p_attribute_03=>'warning'
,p_attribute_04=>'fa-send-o'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(157138187830139012)
,p_name=>'DA_PONER_SESION'
,p_event_sequence=>220
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P524_IND_PUNTOS'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(157138295248139013)
,p_event_id=>wwv_flow_imp.id(157138187830139012)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_02=>'P524_IND_PUNTOS'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(160230198094784101)
,p_event_id=>wwv_flow_imp.id(157138187830139012)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(156746681299385550)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P524_IND_PUNTOS'
,p_client_condition_expression=>'EA'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(160230202988784102)
,p_event_id=>wwv_flow_imp.id(157138187830139012)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(156746681299385550)
,p_client_condition_type=>'NOT_EQUALS'
,p_client_condition_element=>'P524_IND_PUNTOS'
,p_client_condition_expression=>'EA'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(157117300158822420)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'PR_CLEAR'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(157226585278678329)
,p_process_sequence=>20
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_INIT'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P524_COD_USUARIO := NVL(:P_COD_USUARIO,:APP_USER) ;',
':P524_COD_EMPRESA := NVL(:P_COD_EMPRESA,''1'') ;',
':P524_COD_MODULO := NVL(:P_COD_MODULO,''ST'') ;',
':P524_AUX_VTVENPUNVAL := ''N'';',
':P524_AUX_VTDETVALESENVIAR := ''N'';',
':P524_AUX_VTVENPUNTOS := ''N'';'))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_imp.component_end;
end;
/
