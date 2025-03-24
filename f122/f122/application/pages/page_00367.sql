prompt --application/pages/page_00367
begin
--   Manifest
--     PAGE: 00367
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
 p_id=>367
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'Consulta de Articulos - CAARTICU'
,p_alias=>'CAARTICU'
,p_step_title=>unistr('Consulta de Art\00EDculos - CAARTICU')
,p_autocomplete_on_off=>'OFF'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
' ',
'.apex-item-select:focus, .apex-item-text:focus, .apex-item-textarea:focus {',
'   background-color: #e9ffbf !important;',
'   border-color: #8f0000 !important;',
'}',
'',
'.apex-item-select,  .apex-item-text , .apex-item-textarea , .apex-item-group, .display_only {',
'  border-color: #b4c6dd !important;',
'  background-color: #f8f6ea !important;',
'}',
'',
'',
'#PARAM{    ',
'  background-color: #487ab8  !important;',
'} ',
'',
' #sinstock{ background-color: #f8c4bc;}',
'',
'',
'.t-Body-content{',
'   background-color:  #d0e0f783!important;}',
'',
'',
'',
'  .tabla_color   td.t-Report-cell , .t-Form-label  {',
'  color: #003a85  !important;',
'  border-color: #003a85 !important;',
'}',
'',
'  th.t-Report-colHead,  th.t-Report-colHead a{',
'  background-color:  #fff6a4  !important;',
'  color: #003a85  !important;',
'  border-color: #487ab8;',
'}',
'',
' .a-IRR-header{',
'      background-color: #fff6a4  !important;',
'	  font-weight: bold !important;',
'      border:0.5px solid #16488a !important;',
'   }',
'',
'  .a-IRR-headerLink{',
'    background-color: #fff6a4  !important;',
'	  color: #003a85 !important;    }',
'   ',
'.a-IRR-table tr td { ',
'        color: black !important;',
'   }',
' ',
'.a-IRR-table td {',
'    border: 1px solid #003a85b7 !important;',
'}',
''))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_last_updated_by=>'VGAMARRA'
,p_last_upd_yyyymmddhh24miss=>'20240918170334'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(104537335697693850)
,p_plug_name=>'VARIABLES'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>1000
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(107144064799060304)
,p_plug_name=>'PARAMETROS'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>990
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(107144660280060310)
,p_plug_name=>'B_ARTICU'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>1030
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(107145133132060315)
,p_plug_name=>unistr('Art\00CDculo')
,p_parent_plug_id=>wwv_flow_imp.id(107144660280060310)
,p_region_template_options=>'#DEFAULT#:t-Region--accent1:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>10
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(107146491616060328)
,p_plug_name=>'B_ARTICU_CARAC'
,p_parent_plug_id=>wwv_flow_imp.id(107144660280060310)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>20
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(107145899629060322)
,p_plug_name=>'Medidas'
,p_parent_plug_id=>wwv_flow_imp.id(107146491616060328)
,p_region_template_options=>'#DEFAULT#:t-Region--accent1:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_new_grid_row=>false
,p_plug_grid_column_span=>3
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(107146539100060329)
,p_plug_name=>unistr('Caracter\00EDsticas')
,p_parent_plug_id=>wwv_flow_imp.id(107146491616060328)
,p_region_template_options=>'#DEFAULT#:t-Region--accent1:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(107146602368060330)
,p_plug_name=>'Botones'
,p_parent_plug_id=>wwv_flow_imp.id(107144660280060310)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>30
,p_plug_new_grid_row=>false
,p_plug_grid_column_span=>2
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(108057910807266428)
,p_plug_name=>'PROBLEMAS Y SOLUCIONES'
,p_region_css_classes=>'js-dialog-size800x600'
,p_region_template_options=>'#DEFAULT#:js-dialog-size600x400'
,p_plug_template=>wwv_flow_imp.id(40117728043263659)
,p_plug_display_sequence=>1060
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(108058126537266430)
,p_plug_name=>'Problemas y Soluciones'
,p_parent_plug_id=>wwv_flow_imp.id(108057910807266428)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>30
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT c001 PROBLEMA,',
'       c002 SOLUCION',
'FROM APEX_COLLECTIONS',
'WHERE COLLECTION_NAME = ''PROB_SOLU''',
'AND :P367_INDICADOR_REP_SOL_PROB = ''1'';'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P367_INDICADOR_REP_SOL_PROB'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Problemas y Soluciones'
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
 p_id=>wwv_flow_imp.id(108058201778266431)
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
,p_internal_uid=>108058201778266431
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(108059737352266446)
,p_db_column_name=>'PROBLEMA'
,p_display_order=>10
,p_column_identifier=>'C'
,p_column_label=>'Problema'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(108059818750266447)
,p_db_column_name=>'SOLUCION'
,p_display_order=>20
,p_column_identifier=>'D'
,p_column_label=>'Solucion'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(109059482250629464)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1090595'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'PROBLEMA:SOLUCION:'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(108059160144266440)
,p_plug_name=>'INDICADORES'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>1010
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(108059911266266448)
,p_plug_name=>'REPUESTOS VINCULADOS'
,p_region_css_classes=>'js-dialog-size1200x580'
,p_region_template_options=>'#DEFAULT#:js-dialog-size600x400'
,p_region_attributes=>'style="background:  #b4c6dd;"'
,p_plug_template=>wwv_flow_imp.id(40117728043263659)
,p_plug_display_sequence=>1070
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(108060198338266450)
,p_plug_name=>'Repuestos Vinculados'
,p_region_name=>'rep_reporte'
,p_parent_plug_id=>wwv_flow_imp.id(108059911266266448)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>30
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ',
'       seq_id SEQ_ID_DETALLE,',
'       c001 COD_ARTICULO,',
'       c002 DESCRIPCION,',
'       c003 CANTIDAD,',
'       NULL DETALLES',
'FROM APEX_COLLECTIONS',
'WHERE COLLECTION_NAME = ''REPUESTOS''',
'AND :P367_INDICADOR_REP_REPUESTO = ''1'';'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P367_INDICADOR_REP_REPUESTO'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Repuestos Vinculados'
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
 p_id=>wwv_flow_imp.id(109087660713050401)
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
,p_internal_uid=>109087660713050401
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(109089055488050415)
,p_db_column_name=>'COD_ARTICULO'
,p_display_order=>10
,p_column_identifier=>'C'
,p_column_label=>'Cod Articulo'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_static_id=>'COD_ARTICULO'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(109089108193050416)
,p_db_column_name=>'DESCRIPCION'
,p_display_order=>20
,p_column_identifier=>'D'
,p_column_label=>'Descripcion'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(109089288025050417)
,p_db_column_name=>'CANTIDAD'
,p_display_order=>30
,p_column_identifier=>'E'
,p_column_label=>'Cantidad'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(109089482909050419)
,p_db_column_name=>'DETALLES'
,p_display_order=>40
,p_column_identifier=>'F'
,p_column_label=>'Detalles'
,p_column_link=>'javascript:$s(''P367_SEQ_ID_DETALLE_REPUESTO'',''#SEQ_ID_DETALLE#'');'
,p_column_linktext=>'<span class="fa fa-search" aria-hidden="true"></span>'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(109089764049050422)
,p_db_column_name=>'SEQ_ID_DETALLE'
,p_display_order=>50
,p_column_identifier=>'G'
,p_column_label=>'Seq Id Detalle'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(109105336522262558)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1091054'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'COD_ARTICULO:DESCRIPCION:CANTIDAD:DETALLES:'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(109088680078050411)
,p_plug_name=>'REPUESTO'
,p_parent_plug_id=>wwv_flow_imp.id(108059911266266448)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>40
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<html>',
'<body>',
'	<div>',
'		<img src="&P367_URL_REPUESTO." />',
'	</div>',
'</body>',
'</html>'))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(268951238229157521)
,p_plug_name=>'laltera'
,p_parent_plug_id=>wwv_flow_imp.id(108059911266266448)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>50
,p_plug_new_grid_row=>false
,p_plug_grid_column_span=>5
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(267420763554303611)
,p_name=>'Ubicaciones del Repuesto'
,p_parent_plug_id=>wwv_flow_imp.id(268951238229157521)
,p_template=>wwv_flow_imp.id(40108275410263656)
,p_display_sequence=>10
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:is-expanded:t-Region--accent1:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'	SELECT SU.COD_SUCURSAL, SU.DESCRIPCION,',
'		NVL(COD_POSICION,U.COD_SUCURSAL||''-''||PASILLO||''-''||U.CUERPO||''-''|| U.BANDEJA)POSICION',
'		FROM ST_EXISTENCIA_ART E, ST_UBIC_ARTICULOS U, SUCURSALES SU',
'		WHERE E.COD_EMPRESA=:P_COD_EMPRESA',
'		AND E.COD_ARTICULO=:P367_VER_REP',
'		AND U.COD_EMPRESA =E.COD_EMPRESA',
'		AND U.COD_ARTICULO =E.COD_ARTICULO',
'		AND SU.COD_EMPRESA=E.COD_EMPRESA',
'		AND SU.COD_SUCURSAL=E.COD_SUCURSAL ',
'		AND E.CANT_DISPON>0				',
'		AND E.COD_SUCURSAL=U.COD_SUCURSAL(+)',
'		GROUP BY E.COD_ARTICULO, SU.COD_SUCURSAL, SU.DESCRIPCION, U.BANDEJA, U.PASILLO, U.CUERPO,',
'			NVL(COD_POSICION,U.COD_SUCURSAL||''-''||PASILLO||''-''||U.CUERPO||''-''|| U.BANDEJA);'))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P367_VER_REP'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(40147995650263667)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'No se encuentran registros de ubicaciones para &P367_VER_REP.'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(267420863685303612)
,p_query_column_id=>1
,p_column_alias=>'COD_SUCURSAL'
,p_column_display_sequence=>10
,p_column_heading=>'Cod'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(267420995908303613)
,p_query_column_id=>2
,p_column_alias=>'DESCRIPCION'
,p_column_display_sequence=>20
,p_column_heading=>'Descripcion Sucursal'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(267421043660303614)
,p_query_column_id=>3
,p_column_alias=>'POSICION'
,p_column_display_sequence=>30
,p_column_heading=>'Posicion'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(267421171327303615)
,p_name=>'Seguimiento Venta Perdida'
,p_parent_plug_id=>wwv_flow_imp.id(268951238229157521)
,p_template=>wwv_flow_imp.id(40108275410263656)
,p_display_sequence=>20
,p_region_template_options=>'#DEFAULT#:is-collapsed:t-Region--accent1:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_new_grid_row=>false
,p_new_grid_column=>false
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select COMENTARIO     ,FECHA_ALTA FECHA     ',
'  from ST_REPUESTOS_VENTA_PERDIDA_SEG',
'  WHERE COD_REPUESTO = :P367_VER_REP',
'  AND ( nvl((select sum(nvl(cant_dispon,0))',
'        from ST_EXISTENCIA_ART',
'        where cod_empresa = :P_COD_EMPRESA',
'        and cod_articulo =  :P367_VER_REP',
'        and cant_dispon>0),0)=0',
'     or ',
'          exists (select distinct ''1''',
'from ST_REPUESTOS_VENTA_PERDIDA c',
'where c.fecha_reposicion is null',
'and   c.cod_repuesto= :P126_ARTICULO',
')',
'  )',
'',
'',
'  order by FECHA_ALTA desc'))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P367_VER_REP'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(40147995650263667)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'No se encuentran registros de ubicaciones para &P367_VER_REP.'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(267421277766303616)
,p_query_column_id=>1
,p_column_alias=>'COMENTARIO'
,p_column_display_sequence=>10
,p_column_heading=>'Comentario'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(267421315806303617)
,p_query_column_id=>2
,p_column_alias=>'FECHA'
,p_column_display_sequence=>20
,p_column_heading=>'Fecha'
,p_use_as_row_header=>'N'
,p_column_format=>'dd/mm/yyyy'
,p_column_alignment=>'CENTER'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(267421656997303620)
,p_name=>'Transito del Repuesto'
,p_parent_plug_id=>wwv_flow_imp.id(268951238229157521)
,p_template=>wwv_flow_imp.id(40108275410263656)
,p_display_sequence=>30
,p_region_template_options=>'#DEFAULT#:is-collapsed:t-Region--accent1:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_new_grid_row=>false
,p_new_grid_column=>false
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select  ',
'A.CANT cantidad_transito, nvl(TO_CHAR(A.fecha_ingreso,''dd/mm/yyyy''),''A DEFINIR'') fec_llegada',
' from  v_en_transito_sabana a',
' where a.cant>0',
' and cod_articulo=:P367_VER_REP',
' UNION ALL',
'			select  ',
'A.CANT cantidad_transito, TO_CHAR(A.fecha_ingreso,''dd/mm/yyyy'') fec_llegada',
' from  V_EN_TRANSITO_SABANA_rep a',
' where a.cant>0',
' AND FECHA>SYSDATE-90',
' and codIGO_articulo=:P367_VER_REP',
' union all',
' select sum(round(a.cantidad-nvl(a.cantidad_confirmada,0)))stock, ''ZONA_PRIMARIA'' from v_articulos_zona_primaria a',
'where   (round(a.cantidad-nvl(a.cantidad_confirmada,0)))>0',
' and cod_articulo=:P367_VER_REP',
' having sum(round(a.cantidad-nvl(a.cantidad_confirmada,0)))>0',
'				 order by 2 asc;'))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P367_VER_REP'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(40147995650263667)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'No se encuentran registros de ubicaciones para &P367_VER_REP.'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(268951003284157519)
,p_query_column_id=>1
,p_column_alias=>'CANTIDAD_TRANSITO'
,p_column_display_sequence=>10
,p_column_heading=>'Cantidad Transito'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(268951138246157520)
,p_query_column_id=>2
,p_column_alias=>'FEC_LLEGADA'
,p_column_display_sequence=>20
,p_column_heading=>'Fec Llegada'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(109089522286050420)
,p_plug_name=>'SEQ ID'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>1020
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(112853598855303818)
,p_plug_name=>'BUSCAR ARTICULO'
,p_region_css_classes=>'js-dialog-size1200x580'
,p_region_template_options=>'#DEFAULT#:js-dialog-size600x400'
,p_plug_template=>wwv_flow_imp.id(40117728043263659)
,p_plug_display_sequence=>1080
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(112853803165303821)
,p_plug_name=>'FILTROS'
,p_parent_plug_id=>wwv_flow_imp.id(112853598855303818)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(112855057976303833)
,p_plug_name=>'RESULTADO BUSQUEDA'
,p_parent_plug_id=>wwv_flow_imp.id(112853598855303818)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ',
'        NULL SELECCIONAR,',
'        COD_ART_CORTO,',
'        DESCRIPCION,',
'        COD_ARTICULO,',
'        COD_ORIGEN_ART,',
'        COD_RUBRO,',
'        COD_FAMILIA,',
'        COD_LINEA,',
'        COD_CATEGORIA,',
'        COD_DIVISION,',
'        COD_MARCA,',
'        ROWID ROW_ID_ARTICULO',
'FROM ST_ARTICULOS',
'WHERE COD_EMPRESA = :P_COD_EMPRESA',
'AND   (COD_ART_CORTO = :P367_COD_ART_CORTO_BUSQ OR :P367_COD_ART_CORTO_BUSQ IS NULL)',
'AND   (COD_ARTICULO = :P367_COD_ARTICULO_BUSQ OR :P367_COD_ARTICULO_BUSQ IS NULL)',
'AND   (COD_ORIGEN_ART = :P367_COD_ORIGEN_BUSQ OR :P367_COD_ORIGEN_BUSQ IS NULL)',
'AND   (COD_RUBRO = :P367_COD_RUBRO_BUSQ OR :P367_COD_RUBRO_BUSQ IS NULL)',
'AND   (COD_FAMILIA = :P367_COD_FAMILIA_BUSQ OR :P367_COD_FAMILIA_BUSQ IS NULL)',
'AND   (COD_LINEA = :P367_COD_LINEA_BUSQ OR :P367_COD_LINEA_BUSQ IS NULL)',
'AND   (COD_CATEGORIA = :P367_COD_CATEGORIA_BUSQ OR :P367_COD_CATEGORIA_BUSQ IS NULL)',
'AND   (COD_DIVISION = :P367_COD_DIVISION_BUSQ OR :P367_COD_DIVISION_BUSQ IS NULL)',
'AND   (COD_GRUPO = :P367_COD_MARCA_BUSQ OR :P367_COD_MARCA_BUSQ IS NULL)',
'AND :P367_INDICADOR_REP_ARTICULO = ''1'';',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P_COD_EMPRESA,P367_COD_ART_CORTO_BUSQ,P367_COD_ARTICULO_BUSQ,P367_COD_ORIGEN_BUSQ,P367_COD_RUBRO_BUSQ,P367_COD_FAMILIA_BUSQ,P367_COD_LINEA_BUSQ,P367_COD_CATEGORIA_BUSQ,P367_COD_DIVISION_BUSQ,P367_COD_MARCA_BUSQ,P367_INDICADOR_REP_ARTICULO,P367_COD_GR'
||'UPO_BUSQ'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'RESULTADO BUSQUEDA'
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
 p_id=>wwv_flow_imp.id(112855505244303838)
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
,p_internal_uid=>112855505244303838
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(112855710869303840)
,p_db_column_name=>'SELECCIONAR'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Seleccionar'
,p_column_link=>'javascript:$s(''P367_ROW_ID_ARTICULO_SEL'',''#ROW_ID_ARTICULO#'');'
,p_column_linktext=>'<span aria-hidden="true" class="fa fa-edit"></span>'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(112855873919303841)
,p_db_column_name=>'COD_ART_CORTO'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Cod Art Corto'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(112855975638303842)
,p_db_column_name=>'DESCRIPCION'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Descripcion'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(112856017087303843)
,p_db_column_name=>'COD_ARTICULO'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Cod Articulo'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(112856142347303844)
,p_db_column_name=>'COD_ORIGEN_ART'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Cod Origen Art'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(112856278716303845)
,p_db_column_name=>'COD_RUBRO'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Cod Rubro'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(112856380299303846)
,p_db_column_name=>'COD_FAMILIA'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Cod Familia'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(112856465772303847)
,p_db_column_name=>'COD_LINEA'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Cod Linea'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(112856549923303848)
,p_db_column_name=>'COD_CATEGORIA'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Cod Categoria'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(112856646700303849)
,p_db_column_name=>'COD_DIVISION'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Cod Division'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(112856709026303850)
,p_db_column_name=>'COD_MARCA'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Cod Marca'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(113384624180763305)
,p_db_column_name=>'ROW_ID_ARTICULO'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Row Id Articulo'
,p_column_type=>'OTHER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(113395970546769562)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1133960'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'SELECCIONAR:COD_ART_CORTO:DESCRIPCION:COD_ARTICULO:COD_ORIGEN_ART:COD_RUBRO:COD_FAMILIA:COD_LINEA:COD_CATEGORIA:COD_DIVISION:COD_MARCA'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(109087946611050404)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(108059911266266448)
,p_button_name=>'BTN_CERRAR_REPUESTOS'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_image_alt=>'Cerrar'
,p_button_position=>'BELOW_BOX'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(107235504281843315)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(107146602368060330)
,p_button_name=>'BTN_IMAGEN_1'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight:t-Button--stretch:t-Button--gapTop'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Imagen 1'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-image'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(107236334740843323)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(107146602368060330)
,p_button_name=>'BTN_IMAGEN_2'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight:t-Button--stretch:t-Button--gapTop'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Imagen 2'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-image'
,p_grid_new_row=>'Y'
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
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(107235928589843319)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(107146602368060330)
,p_button_name=>'BTN_IMAGEN_3'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight:t-Button--stretch:t-Button--gapTop'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Imagen 3'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-image'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(107236901758843329)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(107146539100060329)
,p_button_name=>'BTN_BUSCAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Buscar Lista de Partes'
,p_warn_on_unsaved_changes=>null
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(107237065026843330)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(107146539100060329)
,p_button_name=>'BTN_NG'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Generar NG'
,p_warn_on_unsaved_changes=>null
,p_button_cattributes=>'style="margin-left:30px;"'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(107237137456843331)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_imp.id(107146539100060329)
,p_button_name=>'BTN_GENERAR_REP'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Crear Respuestos'
,p_warn_on_unsaved_changes=>null
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(107235734196843317)
,p_button_sequence=>80
,p_button_plug_id=>wwv_flow_imp.id(107146602368060330)
,p_button_name=>'BTN_PROBLEMAS_FRECUENTES'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--stretch:t-Button--gapTop'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Problemas Frecuentes'
,p_warn_on_unsaved_changes=>null
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(107235833137843318)
,p_button_sequence=>90
,p_button_plug_id=>wwv_flow_imp.id(107146602368060330)
,p_button_name=>'BTN_REPUESTOS_VINCULADOS'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--stretch:t-Button--gapTop'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Repuestos Vinculados'
,p_warn_on_unsaved_changes=>null
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(107236031110843320)
,p_button_sequence=>100
,p_button_plug_id=>wwv_flow_imp.id(107146602368060330)
,p_button_name=>'BTN_INSTALACION'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--stretch:t-Button--gapTop'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('Manual de Instalaci\00F3n')
,p_warn_on_unsaved_changes=>null
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(107236131597843321)
,p_button_sequence=>110
,p_button_plug_id=>wwv_flow_imp.id(107146602368060330)
,p_button_name=>'BTN_MANUAL_USUARIO'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--stretch:t-Button--gapTop'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Manual de Usuario'
,p_warn_on_unsaved_changes=>null
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(107236257649843322)
,p_button_sequence=>120
,p_button_plug_id=>wwv_flow_imp.id(107146602368060330)
,p_button_name=>'BTN_EXPLOD_VIEW'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--stretch:t-Button--gapTop'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Explod View'
,p_warn_on_unsaved_changes=>null
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(107236657495843326)
,p_button_sequence=>130
,p_button_plug_id=>wwv_flow_imp.id(107146602368060330)
,p_button_name=>'BTN_SPARE_PARTS_LIST'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--stretch:t-Button--gapTop'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Spare Parts List'
,p_warn_on_unsaved_changes=>null
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(108057880513266427)
,p_button_sequence=>140
,p_button_plug_id=>wwv_flow_imp.id(107146602368060330)
,p_button_name=>'BTN_LISTA_ERRORES'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--stretch:t-Button--gapTop'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Lista de Errores'
,p_warn_on_unsaved_changes=>null
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(107236418871843324)
,p_button_sequence=>150
,p_button_plug_id=>wwv_flow_imp.id(107146602368060330)
,p_button_name=>'BTN_ELIMINAR_IMAGEN_1'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight:t-Button--stretch:t-Button--gapTop'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Eliminar Imagen 1'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-trash-o'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(113386147341763320)
,p_button_sequence=>160
,p_button_plug_id=>wwv_flow_imp.id(107146602368060330)
,p_button_name=>'BTN_ELIMINAR_IMAGEN_2'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight:t-Button--stretch:t-Button--gapTop'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Eliminar Imagen 2'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-trash-o'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(113386255364763321)
,p_button_sequence=>170
,p_button_plug_id=>wwv_flow_imp.id(107146602368060330)
,p_button_name=>'BTN_ELIMINAR_IMAGEN_3'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight:t-Button--stretch:t-Button--gapTop'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Eliminar Imagen 3'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-trash-o'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(108058536617266434)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(108057910807266428)
,p_button_name=>'BTN_CERRAR_PRO_SOL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_image_alt=>'Cerrar'
,p_button_position=>'BOTTOM'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(112855152554303834)
,p_button_sequence=>110
,p_button_plug_id=>wwv_flow_imp.id(112853803165303821)
,p_button_name=>'BTN_BUSCAR_ARTICULO_BUSQ'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Buscar'
,p_button_position=>'BOTTOM'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-search'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(112855244035303835)
,p_button_sequence=>120
,p_button_plug_id=>wwv_flow_imp.id(112853803165303821)
,p_button_name=>'BTN_LIMPIAR_ARTICULO_BUSQ'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Limpiar Campos'
,p_button_position=>'BOTTOM'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(261415661132282901)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(107145133132060315)
,p_button_name=>'Venta_Pedida'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Venta Pedida'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:711:&SESSION.::&DEBUG.:CR,711::'
,p_button_css_classes=>'u-color-7-bg  u-color-43-text'
,p_icon_css_classes=>'fa-thumbs-down'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(107235124924843311)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(107145133132060315)
,p_button_name=>'BTN_LIMPIAR_CAMPOS'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Limpiar Campos'
,p_button_position=>'EDIT'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'u-color-21-bg u-color-43-text'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(113385063988763309)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(107145133132060315)
,p_button_name=>'BTN_ABRIR_BUSQUEDA_ARTICULO'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('B\00FAsqueda Avanzada')
,p_button_position=>'EDIT'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'u-color-21-bg u-color-43-text'
,p_icon_css_classes=>'fa-search'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(107143830343060302)
,p_name=>'P367_COD_MODULO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(104537335697693850)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(107144164362060305)
,p_name=>'P367_P_NRO_LLAMADA'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(107144064799060304)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(107144250563060306)
,p_name=>'P367_P_COD_CLIENTE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(107144064799060304)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(107144456690060308)
,p_name=>'P367_NRO_LLAMADA'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(104537335697693850)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(107144587126060309)
,p_name=>'P367_COD_CLIENTE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(104537335697693850)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(107144722053060311)
,p_name=>'P367_COD_ARTICULO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(107145133132060315)
,p_prompt=>'Articulo'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT cod_articulo || '' - '' || descripcion D, ',
'       cod_articulo R ',
'FROM   st_articulos ',
'WHERE  cod_empresa = :P_COD_EMPRESA',
'ORDER BY descripcion'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'... '
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
 p_id=>wwv_flow_imp.id(107144883188060312)
,p_name=>'P367_COD_ORIGEN_ART'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(107145133132060315)
,p_prompt=>unistr('C\00F3digo de Origen')
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
 p_id=>wwv_flow_imp.id(107144980861060313)
,p_name=>'P367_COD_ALTERNO'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(107145133132060315)
,p_prompt=>unistr('C\00F3digo Alterno')
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
 p_id=>wwv_flow_imp.id(107145039054060314)
,p_name=>'P367_COD_ART_CORTO'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(107145133132060315)
,p_prompt=>unistr('C\00F3digo Corto')
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
 p_id=>wwv_flow_imp.id(107145202805060316)
,p_name=>'P367_COD_RUBRO'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(107145133132060315)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(107145327795060317)
,p_name=>'P367_COD_FAMILIA'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(107145133132060315)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(107145471579060318)
,p_name=>'P367_COD_LINEA'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(107145133132060315)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(107145519508060319)
,p_name=>'P367_COD_GRUPO'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(107145133132060315)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(107145698135060320)
,p_name=>'P367_COD_MARCA'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(107145133132060315)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(107145773168060321)
,p_name=>'P367_COD_UNIDAD_MEDIDA'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_imp.id(107145133132060315)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(107145939275060323)
,p_name=>'P367_ANCHO_CM'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(107145899629060322)
,p_prompt=>'Ancho'
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
 p_id=>wwv_flow_imp.id(107146071472060324)
,p_name=>'P367_PESO_GR'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(107145899629060322)
,p_prompt=>'Peso'
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
 p_id=>wwv_flow_imp.id(107146177394060325)
,p_name=>'P367_ALTO_CM'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(107145899629060322)
,p_prompt=>'Alto'
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
 p_id=>wwv_flow_imp.id(107146261910060326)
,p_name=>'P367_ESTIBA_MAX'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(107145899629060322)
,p_prompt=>'Estiba Max'
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
 p_id=>wwv_flow_imp.id(107146334710060327)
,p_name=>'P367_LARGO_CM'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(107145899629060322)
,p_prompt=>'Largo'
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
 p_id=>wwv_flow_imp.id(107147397871060337)
,p_name=>'P367_COD_RUBRO_MOSTRAR'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(107145133132060315)
,p_prompt=>'Rubro'
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
 p_id=>wwv_flow_imp.id(107147429111060338)
,p_name=>'P367_COD_FAMILIA_MOSTRAR'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(107145133132060315)
,p_prompt=>'Familia'
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
 p_id=>wwv_flow_imp.id(107147581629060339)
,p_name=>'P367_COD_LINEA_MOSTRAR'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(107145133132060315)
,p_prompt=>unistr('L\00EDnea')
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
 p_id=>wwv_flow_imp.id(107147643667060340)
,p_name=>'P367_COD_GRUPO_MOSTRAR'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(107145133132060315)
,p_prompt=>'Grupo'
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
 p_id=>wwv_flow_imp.id(107147779772060341)
,p_name=>'P367_COD_MARCA_MOSTRAR'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(107145133132060315)
,p_prompt=>'Marca'
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
 p_id=>wwv_flow_imp.id(107147899435060342)
,p_name=>'P367_COD_UNIDAD_MEDIDA_MOSTRAR'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_imp.id(107145133132060315)
,p_prompt=>'Unidad de medida'
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
 p_id=>wwv_flow_imp.id(107236741791843327)
,p_name=>'P367_CARACTERISTICAS'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(107146539100060329)
,p_prompt=>unistr('Caracter\00EDsticas')
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>30
,p_cHeight=>5
,p_tag_attributes=>'readonly'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(107236850851843328)
,p_name=>'P367_PATH'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(107146539100060329)
,p_prompt=>'Path'
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
 p_id=>wwv_flow_imp.id(107237264201843332)
,p_name=>'P367_PATH_IMG_PRO'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(107146539100060329)
,p_prompt=>'PATH IMG PRO'
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
 p_id=>wwv_flow_imp.id(107237306345843333)
,p_name=>'P367_PATH_IMG_PRO_1'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(107146539100060329)
,p_prompt=>'PATH IMG PRO 1'
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
 p_id=>wwv_flow_imp.id(107237495451843334)
,p_name=>'P367_PATH_IMG_PRO_2'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(107146539100060329)
,p_prompt=>'PATH IMG PRO 2'
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
 p_id=>wwv_flow_imp.id(107238426255843344)
,p_name=>'P367_IND_LISTADO_PART'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_imp.id(107145133132060315)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(107238771290843347)
,p_name=>'P367_MENSAJE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(104537335697693850)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(107239881401845208)
,p_name=>'P367_URL_IMG'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(109089522286050420)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(108057569303266424)
,p_name=>'P367_V_DIR'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(107144064799060304)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(108058007127266429)
,p_name=>'P367_ARTICULO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(108057910807266428)
,p_prompt=>unistr('Art\00EDculo')
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
 p_id=>wwv_flow_imp.id(108059225646266441)
,p_name=>'P367_INDICADOR_REP_SOL_PROB'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(108059160144266440)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(108060006574266449)
,p_name=>'P367_ARTICULO_REPUESTO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(108059911266266448)
,p_prompt=>unistr('Art\00EDculo')
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
 p_id=>wwv_flow_imp.id(109088573040050410)
,p_name=>'P367_INDICADOR_REP_REPUESTO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(108059160144266440)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(109089355691050418)
,p_name=>'P367_URL_REPUESTO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(109088680078050411)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(109089640673050421)
,p_name=>'P367_SEQ_ID_DETALLE_REPUESTO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(109089522286050420)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(109179331984179221)
,p_name=>'P367_ROW_ID'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(104537335697693850)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(109182216893179250)
,p_name=>'P367_PATH_MANUAL_USU'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(104537335697693850)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(110557631248486803)
,p_name=>'P367_PATH_MANUAL_INST'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(104537335697693850)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(110559405134486821)
,p_name=>'P367_PATH_SPARE'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(104537335697693850)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(110559544964486822)
,p_name=>'P367_PATH_LISTA_ERR'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(104537335697693850)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(110559640538486823)
,p_name=>'P367_PATH_EXP'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(104537335697693850)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(110665324625965231)
,p_name=>'P367_COD_PROVEEDOR_DFLT'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_imp.id(107145133132060315)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(112853963022303822)
,p_name=>'P367_COD_ART_CORTO_BUSQ'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(112853803165303821)
,p_prompt=>unistr('C\00F3digo Art\00EDculo Corto')
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select cod_art_corto || '' - '' || descripcion D, cod_art_corto R ',
'  from st_articulos ',
' where cod_empresa = :P_COD_EMPRESA',
'order by descripcion'))
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
 p_id=>wwv_flow_imp.id(112854087095303823)
,p_name=>'P367_COD_ARTICULO_BUSQ'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(112853803165303821)
,p_prompt=>unistr('C\00F3digo Art\00EDculo')
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT cod_articulo || '' - '' || descripcion D, ',
'       cod_articulo R ',
'FROM   st_articulos ',
'WHERE  cod_empresa = :P_COD_EMPRESA',
'ORDER BY descripcion'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_begin_on_new_line=>'N'
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
 p_id=>wwv_flow_imp.id(112854290346303825)
,p_name=>'P367_COD_ORIGEN_BUSQ'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(112853803165303821)
,p_prompt=>unistr('C\00F3digo Origen')
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select cod_origen_art || '' - '' || descripcion D, cod_origen_art R ',
'  from st_articulos ',
' where cod_empresa = :P_COD_EMPRESA',
'order by descripcion'))
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
 p_id=>wwv_flow_imp.id(112854342018303826)
,p_name=>'P367_COD_RUBRO_BUSQ'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(112853803165303821)
,p_prompt=>unistr('C\00F3digo Rubro')
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select cod_rubro || '' - '' || descripcion D, cod_rubro R ',
'from st_rubro ',
'where cod_empresa = :P_COD_EMPRESA',
'order by descripcion'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_begin_on_new_line=>'N'
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
 p_id=>wwv_flow_imp.id(112854455821303827)
,p_name=>'P367_COD_LINEA_BUSQ'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(112853803165303821)
,p_prompt=>unistr('C\00F3digo Linea')
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select cod_linea || '' - '' || descripcion D,',
'       cod_linea R',
'from st_linea ',
'where cod_empresa = :P_COD_EMPRESA',
'order by descripcion'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_begin_on_new_line=>'N'
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
 p_id=>wwv_flow_imp.id(112854594878303828)
,p_name=>'P367_COD_GRUPO_BUSQ'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(112853803165303821)
,p_prompt=>unistr('C\00F3digo Grupo')
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select cod_grupo || '' - '' || descripcion D, cod_grupo R',
'from st_grupos',
' where cod_empresa = :P_COD_EMPRESA',
' order by descripcion'))
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
 p_id=>wwv_flow_imp.id(112854686768303829)
,p_name=>'P367_COD_FAMILIA_BUSQ'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(112853803165303821)
,p_prompt=>unistr('C\00F3digo Familia')
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select cod_familia || '' - '' || descripcion D,',
'       cod_familia R',
'from st_familia  ',
'where cod_empresa = :p_cod_empresa',
'order by descripcion'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_begin_on_new_line=>'N'
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
 p_id=>wwv_flow_imp.id(112854778194303830)
,p_name=>'P367_COD_DIVISION_BUSQ'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(112853803165303821)
,p_prompt=>unistr('C\00F3digo Divisi\00F3n')
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT COD_DIVISION || '' - '' || DESC_DIVISION D, COD_DIVISION R ',
'FROM ST_DIVISION_ARTICULOS',
'',
'ORDER BY 1'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_begin_on_new_line=>'N'
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
 p_id=>wwv_flow_imp.id(112854847239303831)
,p_name=>'P367_COD_MARCA_BUSQ'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(112853803165303821)
,p_prompt=>unistr('C\00F3digo Marca')
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select cod_marca || '' - '' || descripcion D,',
'       cod_marca R',
'from st_marcas ',
'order by descripcion'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_begin_on_new_line=>'N'
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
 p_id=>wwv_flow_imp.id(112855654006303839)
,p_name=>'P367_INDICADOR_REP_ARTICULO'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(108059160144266440)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(113384570257763304)
,p_name=>'P367_ROW_ID_ARTICULO_SEL'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(109089522286050420)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(113384985632763308)
,p_name=>'P367_COD_CATEGORIA_BUSQ'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(112853803165303821)
,p_prompt=>unistr('C\00F3digo Categor\00EDa')
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  SELECT cod_categoria||'' - '' ||descripcion D, ',
'         cod_categoria R',
'    FROM st_categorias',
'    where cod_empresa = :P_COD_EMPRESA',
'ORDER BY 1; '))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_begin_on_new_line=>'N'
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
 p_id=>wwv_flow_imp.id(114293069223304602)
,p_name=>'P367_COD_PAIS_ORIGEN'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(104537335697693850)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(268950356140157512)
,p_name=>'P367_VER_REP'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(108059911266266448)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(107146854936060332)
,p_name=>'DA_BUSCAR_ARTICULO'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P367_COD_ARTICULO'
,p_condition_element=>'P367_COD_ARTICULO'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(107146969664060333)
,p_event_id=>wwv_flow_imp.id(107146854936060332)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    SELECT',
'            COD_ORIGEN_ART,',
'            COD_ALTERNO,',
'            COD_ART_CORTO,',
'            CARACTERISTICAS,',
'            COD_RUBRO,',
'            COD_FAMILIA,',
'            COD_LINEA,',
'            COD_GRUPO,',
'            COD_MARCA,',
'            COD_UNIDAD_MEDIDA,',
'            ANCHO_CM,',
'            PESO_GR,',
'            ALTO_CM,',
'            ESTIBA_MAX,',
'            LARGO_CM,',
'            CARACTERISTICAS,',
'            PATH_IMG_PRO, ',
'            PATH_IMG_PRO_1, ',
'            PATH_IMG_PRO_2,',
'            IND_LISTADO_PART,',
'            ROWID,',
'            PATH_MANUAL_USU,',
'            PATH_LISTA_ERR,',
'            PATH_SPARE,',
'            PATH_EXP,',
'            COD_PROVEEDOR_DFLT,',
'            COD_PAIS_ORIGEN',
'    INTO',
'            :P367_COD_ORIGEN_ART,            ',
'            :P367_COD_ALTERNO,',
'            :P367_COD_ART_CORTO,',
'            :P367_CARACTERISTICAS,',
'            :P367_COD_RUBRO,',
'            :P367_COD_FAMILIA,',
'            :P367_COD_LINEA,',
'            :P367_COD_GRUPO,',
'            :P367_COD_MARCA,',
'            :P367_COD_UNIDAD_MEDIDA,',
'            :P367_ANCHO_CM,',
'            :P367_PESO_GR,',
'            :P367_ALTO_CM,',
'            :P367_ESTIBA_MAX,',
'            :P367_LARGO_CM,',
'            :P367_CARACTERISTICAS,',
'            :P367_PATH_IMG_PRO, ',
'            :P367_PATH_IMG_PRO_1, ',
'            :P367_PATH_IMG_PRO_2,',
'            :P367_IND_LISTADO_PART,',
'            :P367_ROW_ID,',
'            :P367_PATH_MANUAL_USU,',
'            :P367_PATH_LISTA_ERR,',
'            :P367_PATH_SPARE,',
'            :P367_PATH_EXP,',
'            :P367_COD_PROVEEDOR_DFLT,',
'            :P367_COD_PAIS_ORIGEN',
'            ',
'    FROM ST_ARTICULOS',
'    WHERE COD_EMPRESA = :P_COD_EMPRESA',
'    AND COD_ARTICULO = :P367_COD_ARTICULO;',
'',
'    :P367_PATH_IMG_PRO := REPLACE(:P367_PATH_IMG_PRO, ''O:\APLIC\IMAGENES\productos\'',''https://ngosaeca.com.py/servicios/wango/imagenes/productos/'');',
'    :P367_PATH_IMG_PRO_1 := REPLACE(:P367_PATH_IMG_PRO_1, ''O:\APLIC\IMAGENES\productos\'',''https://ngosaeca.com.py/servicios/wango/imagenes/productos/'');',
'    :P367_PATH_IMG_PRO_2 := REPLACE(:P367_PATH_IMG_PRO_2, ''O:\APLIC\IMAGENES\productos\'',''https://ngosaeca.com.py/servicios/wango/imagenes/productos/'');',
'    :P367_PATH_MANUAL_INST := ''https://ngosaeca.com.py/servicios/wango/imagenes/manuales/manual_instalacion/'' || :P367_COD_ARTICULO || ''.pdf'';    ',
'',
'',
'EXCEPTION',
'    WHEN NO_DATA_FOUND THEN',
'        :P367_COD_ORIGEN_ART := NULL;           ',
'        :P367_COD_ALTERNO := NULL;  ',
'        :P367_COD_ART_CORTO := NULL;  ',
'        :P367_CARACTERISTICAS := NULL;  ',
'        :P367_COD_RUBRO := NULL;',
'        :P367_COD_FAMILIA := NULL;',
'        :P367_COD_LINEA := NULL;',
'        :P367_COD_GRUPO := NULL;',
'        :P367_COD_MARCA := NULL;',
'        :P367_COD_UNIDAD_MEDIDA := NULL;',
'        :P367_ANCHO_CM := NULL;',
'        :P367_PESO_GR := NULL;',
'        :P367_ALTO_CM := NULL;',
'        :P367_ESTIBA_MAX := NULL;',
'        :P367_LARGO_CM := NULL;',
'        :P367_CARACTERISTICAS := NULL;',
'        :P367_PATH_IMG_PRO := NULL;',
'        :P367_PATH_IMG_PRO_1 := NULL;',
'        :P367_PATH_IMG_PRO_2 := NULL;',
'        :P367_IND_LISTADO_PART := NULL;',
'        :P367_ROW_ID := NULL;',
'        :P367_PATH_MANUAL_USU := NULL;',
'        :P367_PATH_LISTA_ERR := NULL;',
'        :P367_PATH_SPARE := NULL;',
'        :P367_PATH_EXP := NULL;',
'        :P367_COD_PROVEEDOR_DFLT := NULL;',
'        :P367_COD_PAIS_ORIGEN := NULL;          ',
'        ',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;',
'',
'',
'',
'',
'            '))
,p_attribute_02=>'P_COD_EMPRESA,P367_COD_ARTICULO'
,p_attribute_03=>'P367_COD_ORIGEN_ART,P367_COD_ALTERNO,P367_COD_ART_CORTO,P367_COD_RUBRO,P367_COD_FAMILIA,P367_COD_LINEA,P367_COD_GRUPO,P367_COD_MARCA, P367_COD_UNIDAD_MEDIDA,P367_ANCHO_CM,P367_PESO_GR,P367_ALTO_CM,P367_ESTIBA_MAX,P367_LARGO_CM,P367_CARACTERISTICAS,P3'
||'67_PATH_IMG_PRO,P367_PATH_IMG_PRO_1,P367_PATH_IMG_PRO_2,P367_IND_LISTADO_PART,P367_ROW_ID,P367_PATH_MANUAL_USU,P367_PATH_LISTA_ERR,P367_PATH_SPARE,P367_PATH_EXP,P367_CARACTERISTICAS,P367_PATH_MANUAL_INST,:P367_COD_PROVEEDOR_DFLT,P367_COD_PAIS_ORIGEN'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(107147940581060343)
,p_name=>'DA_SETEAR_RUBRO'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P367_COD_RUBRO'
,p_condition_element=>'P367_COD_RUBRO'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(107148020630060344)
,p_event_id=>wwv_flow_imp.id(107147940581060343)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    SELECT  COD_RUBRO || '' - ''|| descripcion',
'      INTO  :P367_COD_RUBRO_MOSTRAR',
'      FROM  st_rubro',
'      WHERE cod_empresa = :P_COD_EMPRESA',
'     and cod_rubro   = :P367_COD_RUBRO;',
'',
'EXCEPTION',
'    WHEN NO_DATA_FOUND THEN',
'    :P367_COD_RUBRO_MOSTRAR := NULL;',
'',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;'))
,p_attribute_02=>'P_COD_EMPRESA,P367_COD_RUBRO'
,p_attribute_03=>'P367_COD_RUBRO_MOSTRAR'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(107148162750060345)
,p_name=>'DA_SETEAR_FAMILIA'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P367_COD_FAMILIA'
,p_condition_element=>'P367_COD_FAMILIA'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(107148208460060346)
,p_event_id=>wwv_flow_imp.id(107148162750060345)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    SELECT  COD_FAMILIA || '' - ''|| descripcion',
'      INTO  :P367_COD_FAMILIA_MOSTRAR',
'      FROM  st_familia',
'      WHERE cod_empresa = :P_COD_EMPRESA',
'     and COD_FAMILIA   = :P367_COD_FAMILIA;',
'',
'EXCEPTION',
'    WHEN NO_DATA_FOUND THEN',
'    :P367_COD_FAMILIA_MOSTRAR := NULL;',
'',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;',
''))
,p_attribute_02=>'P_COD_EMPRESA,P367_COD_FAMILIA'
,p_attribute_03=>'P367_COD_FAMILIA_MOSTRAR'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(107148395324060347)
,p_name=>'DA_SETEAR_LINEA'
,p_event_sequence=>40
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P367_COD_LINEA'
,p_condition_element=>'P367_COD_LINEA'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(107148501539060349)
,p_event_id=>wwv_flow_imp.id(107148395324060347)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    SELECT  COD_LINEA || '' - ''|| descripcion',
'      INTO  :P367_COD_LINEA_MOSTRAR',
'      FROM  st_linea',
'      WHERE cod_empresa = :P_COD_EMPRESA',
'     and COD_LINEA   = :P367_COD_LINEA;',
'',
'EXCEPTION',
'    WHEN NO_DATA_FOUND THEN',
'    :P367_COD_LINEA_MOSTRAR := NULL;',
'',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;',
''))
,p_attribute_02=>'P_COD_EMPRESA,P367_COD_LINEA'
,p_attribute_03=>'P367_COD_LINEA_MOSTRAR'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(107148608443060350)
,p_name=>'DA_SETEAR_GRUPO'
,p_event_sequence=>50
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P367_COD_GRUPO'
,p_condition_element=>'P367_COD_GRUPO'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(107234243643843302)
,p_event_id=>wwv_flow_imp.id(107148608443060350)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    SELECT  COD_GRUPO || '' - ''|| descripcion',
'      INTO  :P367_COD_GRUPO_MOSTRAR',
'      FROM  st_grupos',
'      WHERE cod_empresa = :P_COD_EMPRESA',
'     and COD_GRUPO   = :P367_COD_GRUPO;',
'',
'EXCEPTION',
'    WHEN NO_DATA_FOUND THEN',
'        :P367_COD_GRUPO_MOSTRAR := NULL;',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;',
''))
,p_attribute_02=>'P_COD_EMPRESA,P367_COD_GRUPO'
,p_attribute_03=>'P367_COD_GRUPO_MOSTRAR'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(107234567290843305)
,p_name=>'DA_SETEAR_MARCA'
,p_event_sequence=>60
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P367_COD_MARCA'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(107234782982843307)
,p_event_id=>wwv_flow_imp.id(107234567290843305)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    SELECT  COD_MARCA || '' - ''|| descripcion',
'      INTO  :P367_COD_MARCA_MOSTRAR',
'      FROM  st_marcas',
'      WHERE COD_MARCA = :P367_COD_MARCA',
'        and cod_empresa = :P_COD_EMPRESA;',
'',
'EXCEPTION',
'    WHEN NO_DATA_FOUND THEN',
'    :P367_COD_MARCA_MOSTRAR := NULL;',
'',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;',
''))
,p_attribute_02=>'P367_COD_MARCA'
,p_attribute_03=>'P367_COD_MARCA_MOSTRAR'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(107234812820843308)
,p_name=>'DA_SETEAR_UNIDAD_MEDIDA'
,p_event_sequence=>70
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P367_COD_UNIDAD_MEDIDA'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(107234931560843309)
,p_event_id=>wwv_flow_imp.id(107234812820843308)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    SELECT  COD_UNIDAD_MEDIDA || '' - ''|| descripcion',
'      INTO  :P367_COD_UNIDAD_MEDIDA_MOSTRAR',
'      FROM  st_unidades_medida',
'      WHERE COD_UNIDAD_MEDIDA = :P367_COD_UNIDAD_MEDIDA',
'      ;',
'',
'EXCEPTION',
'    WHEN NO_DATA_FOUND THEN',
'    :P367_COD_UNIDAD_MEDIDA_MOSTRAR := NULL;',
'',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;'))
,p_attribute_02=>'P367_COD_UNIDAD_MEDIDA'
,p_attribute_03=>'P367_COD_UNIDAD_MEDIDA_MOSTRAR'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(107235235570843312)
,p_name=>'DA_SUBMIT_LIMPIAR'
,p_event_sequence=>80
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(107235124924843311)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(107235329017843313)
,p_event_id=>wwv_flow_imp.id(107235235570843312)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_01=>'LIMPIAR'
,p_attribute_02=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(107238590089843345)
,p_name=>'DA_GENERAR_REP'
,p_event_sequence=>90
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(107237137456843331)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(110666424825965242)
,p_event_id=>wwv_flow_imp.id(107238590089843345)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    :P367_MENSAJE := NULL;',
'',
'    IF NVL(:P367_IND_LISTADO_PART,''N'')=''S'' THEN',
'			 :P367_MENSAJE := ''El listado de Partes a sido Generado'';',
'    ELSE',
'        NULL;			 ',
'        --migra_datos;',
'    END IF;',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;'))
,p_attribute_02=>'P367_IND_LISTADO_PART'
,p_attribute_03=>'P367_MENSAJE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(110666574199965243)
,p_event_id=>wwv_flow_imp.id(107238590089843345)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'&P367_MENSAJE.'
,p_attribute_03=>'information'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P367_MENSAJE'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(110663791482965215)
,p_event_id=>wwv_flow_imp.id(107238590089843345)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var url = apex.item("P367_PATH").getValue();',
'',
'apex.navigation.openInNewWindow(url, "_blank");'))
,p_server_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(110663333101965211)
,p_event_id=>wwv_flow_imp.id(107238590089843345)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    	SELECT APEX_PAGE.GET_URL (  p_page   => 383) f_url_1',
'		INTO :P367_URL_REPUESTO',
'		FROM DUAL;  ',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR (SQLERRM);',
'END;'))
,p_attribute_02=>'P367_URL_REPUESTO'
,p_attribute_03=>'P367_URL_REPUESTO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_server_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(110663411950965212)
,p_event_id=>wwv_flow_imp.id(107238590089843345)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var url = apex.item("P367_URL_REPUESTO").getValue();',
'',
'apex.navigation.redirect(url);'))
,p_server_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(108058634419266435)
,p_name=>'DA_CERRAR_PRO_SOL'
,p_event_sequence=>100
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(108058536617266434)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(108058769963266436)
,p_event_id=>wwv_flow_imp.id(108058634419266435)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(108057910807266428)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(108058866717266437)
,p_name=>'DA_ABRIR_PRO_SOL'
,p_event_sequence=>110
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(107235734196843317)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(109088235085050407)
,p_event_id=>wwv_flow_imp.id(108058866717266437)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    SELECT COD_ARTICULO || '' - '' || DESCRIPCION',
'    INTO :P367_ARTICULO',
'    FROM ST_ARTICULOS',
'    WHERE COD_ARTICULO = :P367_COD_ARTICULO',
'    AND COD_EMPRESA = :P_COD_EMPRESA;',
'',
'    :P367_INDICADOR_REP_SOL_PROB := ''1'';',
'',
'    CAARTICU.PR_CREAR_COL_PRO_SOL (PI_COD_EMPRESA => :P_COD_EMPRESA,',
'                                   PI_COD_ARTICULO => :P367_COD_ARTICULO);',
'',
'',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;'))
,p_attribute_02=>'P367_COD_ARTICULO,P_COD_EMPRESA'
,p_attribute_03=>'P367_ARTICULO,P367_INDICADOR_REP_SOL_PROB'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(108059320478266442)
,p_event_id=>wwv_flow_imp.id(108058866717266437)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(108058126537266430)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(108058932370266438)
,p_event_id=>wwv_flow_imp.id(108058866717266437)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(108057910807266428)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(109088091023050405)
,p_name=>'DA_ABRIR_REPUESTO_VINCULADO'
,p_event_sequence=>120
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(107235833137843318)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(108059002777266439)
,p_event_id=>wwv_flow_imp.id(109088091023050405)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    SELECT COD_ARTICULO || '' - '' || DESCRIPCION',
'    INTO :P367_ARTICULO_REPUESTO',
'    FROM ST_ARTICULOS',
'    WHERE COD_ARTICULO = :P367_COD_ARTICULO',
'    AND COD_EMPRESA = :P_COD_EMPRESA;',
'',
'    :P367_INDICADOR_REP_REPUESTO := ''1''; ',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;'))
,p_attribute_02=>'P367_COD_ARTICULO,P_COD_EMPRESA'
,p_attribute_03=>'P367_ARTICULO_REPUESTO,P367_INDICADOR_REP_REPUESTO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(109088312102050408)
,p_event_id=>wwv_flow_imp.id(109088091023050405)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(108060198338266450)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(109088445828050409)
,p_event_id=>wwv_flow_imp.id(109088091023050405)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(108059911266266448)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(109088890196050413)
,p_name=>'DA_CERRAR_REPUESTOS'
,p_event_sequence=>130
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(109087946611050404)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(109088907360050414)
,p_event_id=>wwv_flow_imp.id(109088890196050413)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(108059911266266448)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(109089862960050423)
,p_name=>'DA_CARGAR_IMG_REPUESTO'
,p_event_sequence=>140
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P367_SEQ_ID_DETALLE_REPUESTO'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(109090040921050425)
,p_event_id=>wwv_flow_imp.id(109089862960050423)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    V_COD_ARTICULO VARCHAR2(100);',
'BEGIN',
'',
'    SELECT c001',
'    INTO V_COD_ARTICULO',
'    FROM APEX_COLLECTIONs',
'    WHERE COLLECTION_NAME = ''REPUESTOS''',
'    AND SEQ_ID = :P367_SEQ_ID_DETALLE_REPUESTO;',
'',
'    :P367_URL_REPUESTO := ''https://ngosaeca.com.py/servicios/wango/imagenes/''||V_COD_ARTICULO||''.jpg'';',
'',
'    --:P367_URL_REPUESTO := bs_busca_parametro( ''BS'', ''DIR_FOTOS_REP'' ) ;',
'',
'    --:P367_URL_REPUESTO := ''https://ngosaeca.com.py/servicios/wango/imagenes/productos/GCKCM0802EER-N.jpg'';',
'    ',
'',
'EXCEPTION',
'    WHEN OTHERS THEN ',
'    raise_application_error(-20000, sqlerrm );',
'END;'))
,p_attribute_02=>'P367_SEQ_ID_DETALLE_REPUESTO'
,p_attribute_03=>'P367_URL_REPUESTO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(107239721934845207)
,p_event_id=>wwv_flow_imp.id(109089862960050423)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    SELECT APEX_PAGE.GET_URL (  p_page   => 374,',
'                    p_items  => ''P374_URL_IMAGEN'',',
'                    p_values => (''''||:P367_URL_REPUESTO||'''')) f_url_1',
'        INTO :P367_URL_IMG',
'        FROM DUAL;',
'',
'EXCEPTION',
'    WHEN OTHERS THEN ',
'      raise_application_error(-20000, sqlerrm );',
'END;'))
,p_attribute_02=>'P367_URL_REPUESTO'
,p_attribute_03=>'P367_URL_IMG'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(107239966051845209)
,p_event_id=>wwv_flow_imp.id(109089862960050423)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var url = apex.item("P367_URL_IMG").getValue();',
'',
'apex.navigation.redirect(url);'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(109090230171050427)
,p_name=>'DA_HABILITAR_BOTONES'
,p_event_sequence=>150
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P367_COD_ARTICULO'
,p_condition_element=>'P367_COD_ARTICULO'
,p_triggering_condition_type=>'NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(109090301619050428)
,p_event_id=>wwv_flow_imp.id(109090230171050427)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(107235734196843317)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(110662487419965202)
,p_event_id=>wwv_flow_imp.id(109090230171050427)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(107236901758843329)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(109090422143050429)
,p_event_id=>wwv_flow_imp.id(109090230171050427)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(107235833137843318)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(109090637446050431)
,p_event_id=>wwv_flow_imp.id(109090230171050427)
,p_event_result=>'FALSE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(107235833137843318)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(109090523110050430)
,p_event_id=>wwv_flow_imp.id(109090230171050427)
,p_event_result=>'FALSE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(107235734196843317)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(110662338388965201)
,p_event_id=>wwv_flow_imp.id(109090230171050427)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(107236901758843329)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(109178175252179209)
,p_name=>'DA_BUSCAR_MANUAL_INSTALACION'
,p_event_sequence=>190
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(107236031110843320)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(110664091736965218)
,p_event_id=>wwv_flow_imp.id(109178175252179209)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var url = apex.item("P367_PATH_MANUAL_INST").getValue();',
'',
'apex.navigation.openInNewWindow(url, "_blank");'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(109178346686179211)
,p_name=>'DA_DESHABILITAR_BNT'
,p_event_sequence=>200
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(109179196491179219)
,p_event_id=>wwv_flow_imp.id(109178346686179211)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(107235504281843315)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(110664381252965221)
,p_event_id=>wwv_flow_imp.id(109178346686179211)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(107236418871843324)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(109178731619179215)
,p_event_id=>wwv_flow_imp.id(109178346686179211)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(107236334740843323)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(113386355959763322)
,p_event_id=>wwv_flow_imp.id(109178346686179211)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(113386147341763320)
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
 p_id=>wwv_flow_imp.id(109178576599179213)
,p_event_id=>wwv_flow_imp.id(109178346686179211)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(107235928589843319)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(113386472395763323)
,p_event_id=>wwv_flow_imp.id(109178346686179211)
,p_event_result=>'TRUE'
,p_action_sequence=>80
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(113386255364763321)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(110558306761486810)
,p_event_id=>wwv_flow_imp.id(109178346686179211)
,p_event_result=>'TRUE'
,p_action_sequence=>90
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(107235734196843317)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(110558466857486811)
,p_event_id=>wwv_flow_imp.id(109178346686179211)
,p_event_result=>'TRUE'
,p_action_sequence=>100
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(107235833137843318)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(110558504925486812)
,p_event_id=>wwv_flow_imp.id(109178346686179211)
,p_event_result=>'TRUE'
,p_action_sequence=>110
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(107236131597843321)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(110558620478486813)
,p_event_id=>wwv_flow_imp.id(109178346686179211)
,p_event_result=>'TRUE'
,p_action_sequence=>120
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(107236031110843320)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(110558703525486814)
,p_event_id=>wwv_flow_imp.id(109178346686179211)
,p_event_result=>'TRUE'
,p_action_sequence=>130
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(107236657495843326)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(110558828140486815)
,p_event_id=>wwv_flow_imp.id(109178346686179211)
,p_event_result=>'TRUE'
,p_action_sequence=>140
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(107236257649843322)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(110558931271486816)
,p_event_id=>wwv_flow_imp.id(109178346686179211)
,p_event_result=>'TRUE'
,p_action_sequence=>150
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(108057880513266427)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(110562146472486848)
,p_event_id=>wwv_flow_imp.id(109178346686179211)
,p_event_result=>'TRUE'
,p_action_sequence=>160
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(107236901758843329)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(110562292844486849)
,p_event_id=>wwv_flow_imp.id(109178346686179211)
,p_event_result=>'TRUE'
,p_action_sequence=>170
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(107237137456843331)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(110562351828486850)
,p_event_id=>wwv_flow_imp.id(109178346686179211)
,p_event_result=>'TRUE'
,p_action_sequence=>180
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(107237065026843330)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(109179469546179222)
,p_name=>'DA_ABRIR_IMAGEN_1'
,p_event_sequence=>210
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(107235504281843315)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(109179671390179224)
,p_event_id=>wwv_flow_imp.id(109179469546179222)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    SELECT APEX_PAGE.GET_URL (  p_page   => 374,',
'                    p_items  => ''P374_URL_IMAGEN'',',
'                    p_values => (''''||:P367_PATH_IMG_PRO||'''')) f_url_1',
'        INTO :P367_URL_IMG',
'        FROM DUAL;',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;'))
,p_attribute_02=>'P367_PATH_IMG_PRO'
,p_attribute_03=>'P367_URL_IMG'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(109179709743179225)
,p_event_id=>wwv_flow_imp.id(109179469546179222)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var url = apex.item("P367_URL_IMG").getValue();',
'',
'apex.navigation.redirect(url);'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(109180040157179228)
,p_name=>'DA_ABRIR_IMAGEN_2'
,p_event_sequence=>220
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(107236334740843323)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(109179835647179226)
,p_event_id=>wwv_flow_imp.id(109180040157179228)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    SELECT APEX_PAGE.GET_URL (  p_page   => 374,',
'                    p_items  => ''P374_URL_IMAGEN'',',
'                    p_values => (''''||:P367_PATH_IMG_PRO_1||'''')) f_url_1',
'        INTO :P367_URL_IMG',
'        FROM DUAL;',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;'))
,p_attribute_02=>'P367_PATH_IMG_PRO_1'
,p_attribute_03=>'P367_URL_IMG'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(109179965566179227)
,p_event_id=>wwv_flow_imp.id(109180040157179228)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var url = apex.item("P367_URL_IMG").getValue();',
'',
'apex.navigation.redirect(url);'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(109180232807179230)
,p_name=>'DA_ABRIR_IMAGEN_3'
,p_event_sequence=>230
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(107235928589843319)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(109180452184179232)
,p_event_id=>wwv_flow_imp.id(109180232807179230)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    SELECT APEX_PAGE.GET_URL (  p_page   => 374,',
'                    p_items  => ''P374_URL_IMAGEN'',',
'                    p_values => (''''||:P367_PATH_IMG_PRO_2||'''')) f_url_1',
'        INTO :P367_URL_IMG',
'        FROM DUAL;',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;'))
,p_attribute_02=>'P367_PATH_IMG_PRO_2'
,p_attribute_03=>'P367_URL_IMG'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(109180535018179233)
,p_event_id=>wwv_flow_imp.id(109180232807179230)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var url = apex.item("P367_URL_IMG").getValue();',
'',
'apex.navigation.redirect(url);'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(109180609062179234)
,p_name=>'DA_ELIMINAR_IMAGEN_1'
,p_event_sequence=>240
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(107236418871843324)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(109180859933179236)
,p_event_id=>wwv_flow_imp.id(109180609062179234)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>unistr('\00BFDesea eliminar la imagen?')
,p_attribute_03=>'warning'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(109180771826179235)
,p_event_id=>wwv_flow_imp.id(109180609062179234)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    UPDATE ST_ARTICULOS',
'    SET PATH_IMG_PRO = NULL',
'    WHERE ROWID = :P367_ROW_ID',
'     and cod_empresa = :P_COD_EMPRESA;',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;'))
,p_attribute_02=>'P367_ROW_ID'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(110557735224486804)
,p_name=>'DA_BUSCAR_MANUAL_USU'
,p_event_sequence=>270
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(107236131597843321)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(110557983805486806)
,p_event_id=>wwv_flow_imp.id(110557735224486804)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    :P367_PATH_MANUAL_USU := REPLACE(:P367_PATH_MANUAL_USU, ''O:\APLIC\IMAGENES\manuales\manual_usuario\'',''https://ngosaeca.com.py/servicios/wango/imagenes/materiales/sta/manual_st/'');',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR (SQLERRM);',
'END;'))
,p_attribute_02=>'P367_ROW_ID,P367_PATH_MANUAL_USU'
,p_attribute_03=>'P367_PATH_MANUAL_USU'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(110558172992486808)
,p_event_id=>wwv_flow_imp.id(110557735224486804)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var url = apex.item("P367_PATH_MANUAL_USU").getValue();',
'',
'apex.navigation.openInNewWindow(url, "_blank");'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(110559090668486817)
,p_name=>'DA_HABILITAR_BTN_MANUAL_USU'
,p_event_sequence=>280
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P367_PATH_MANUAL_USU'
,p_condition_element=>'P367_PATH_MANUAL_USU'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(110559190125486818)
,p_event_id=>wwv_flow_imp.id(110559090668486817)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(107236131597843321)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(110559396880486820)
,p_event_id=>wwv_flow_imp.id(110559090668486817)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(107236131597843321)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(110559736341486824)
,p_name=>'DA_HABILITAR_BTN_EXP'
,p_event_sequence=>290
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P367_PATH_EXP'
,p_condition_element=>'P367_PATH_EXP'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(110559867050486825)
,p_event_id=>wwv_flow_imp.id(110559736341486824)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(107236257649843322)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(110559926056486826)
,p_event_id=>wwv_flow_imp.id(110559736341486824)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(107236257649843322)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(110560045066486827)
,p_name=>'DA_HABILITAR_BTN_LISTA_ERR'
,p_event_sequence=>300
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P367_PATH_LISTA_ERR'
,p_condition_element=>'P367_PATH_LISTA_ERR'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(110560161556486828)
,p_event_id=>wwv_flow_imp.id(110560045066486827)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(108057880513266427)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(110560229154486829)
,p_event_id=>wwv_flow_imp.id(110560045066486827)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(108057880513266427)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(110560357033486830)
,p_name=>'DA_HABILITAR_BTN_SPARE_PARTS'
,p_event_sequence=>310
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P367_PATH_SPARE'
,p_condition_element=>'P367_PATH_SPARE'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(110560486541486831)
,p_event_id=>wwv_flow_imp.id(110560357033486830)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(107236657495843326)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(110560509572486832)
,p_event_id=>wwv_flow_imp.id(110560357033486830)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(107236657495843326)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(110560644561486833)
,p_name=>'DA_HABILITAR_BTN_MANUAL_INST'
,p_event_sequence=>320
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P367_PATH_MANUAL_INST'
,p_condition_element=>'P367_PATH_MANUAL_INST'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(110560739459486834)
,p_event_id=>wwv_flow_imp.id(110560644561486833)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(107236031110843320)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(110560851758486835)
,p_event_id=>wwv_flow_imp.id(110560644561486833)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(107236031110843320)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(110560931149486836)
,p_name=>'DA_BUSCAR_EXPLOD_VIEW'
,p_event_sequence=>330
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(107236257649843322)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(110561197160486838)
,p_event_id=>wwv_flow_imp.id(110560931149486836)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    :P367_PATH_EXP := REPLACE(:P367_PATH_EXP, ''O:\APLIC\IMAGENES\manuales\explod_view\'',''https://ngosaeca.com.py/servicios/wango/imagenes/materiales/sta/explod_view/'');',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR (SQLERRM);',
'END;'))
,p_attribute_02=>'P367_PATH_EXP'
,p_attribute_03=>'P367_PATH_EXP'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(110561208373486839)
,p_event_id=>wwv_flow_imp.id(110560931149486836)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var url = apex.item("P367_PATH_EXP").getValue();',
'',
'apex.navigation.openInNewWindow(url, "_blank");'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(110561347372486840)
,p_name=>'DA_BUSCAR_SPARE_PARTS_LIST'
,p_event_sequence=>340
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(107236657495843326)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(110561514894486842)
,p_event_id=>wwv_flow_imp.id(110561347372486840)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    :P367_PATH_SPARE := REPLACE(:P367_PATH_SPARE, ''O:\APLIC\IMAGENES\manuales\spare_parts\'',''https://ngosaeca.com.py/servicios/wango/imagenes/materiales/sta/spare_parts/'');',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR (SQLERRM);',
'END;'))
,p_attribute_02=>'P367_PATH_SPARE'
,p_attribute_03=>'P367_PATH_SPARE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(110561653066486843)
,p_event_id=>wwv_flow_imp.id(110561347372486840)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var url = apex.item("P367_PATH_SPARE").getValue();',
'',
'apex.navigation.openInNewWindow(url, "_blank");'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(110561749394486844)
,p_name=>'DA_BUSCAR_LISTA_ERRORES'
,p_event_sequence=>350
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(108057880513266427)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(110561907989486846)
,p_event_id=>wwv_flow_imp.id(110561749394486844)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    :P367_PATH_LISTA_ERR := REPLACE(:P367_PATH_LISTA_ERR, ''O:\APLIC\IMAGENES\manuales\manual_st\'',''https://ngosaeca.com.py/servicios/wango/imagenes/materiales/sta/manual_st/'');',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR (SQLERRM);',
'END;'))
,p_attribute_02=>'P367_PATH_LISTA_ERR'
,p_attribute_03=>'P367_PATH_LISTA_ERR'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(110562000401486847)
,p_event_id=>wwv_flow_imp.id(110561749394486844)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var url = apex.item("P367_PATH_LISTA_ERR").getValue();',
'',
'apex.navigation.openInNewWindow(url, "_blank");'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(110662527811965203)
,p_name=>'DA_BUSCAR_SPARE_LIST'
,p_event_sequence=>360
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(107236901758843329)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(110662744245965205)
,p_event_id=>wwv_flow_imp.id(110662527811965203)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    :P367_PATH := ''https://ngosaeca.com.py/servicios/wango/imagenes/materiales/sta/spare_parts/'' || :P367_COD_ARTICULO || ''.csv'';',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR (SQLERRM);',
'END;'))
,p_attribute_02=>'P367_PATH'
,p_attribute_03=>'P367_PATH'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(110666155048965239)
,p_event_id=>wwv_flow_imp.id(110662527811965203)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var url = apex.item("P367_PATH").getValue();',
'',
'apex.navigation.openInNewWindow(url, "_blank");'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(114292974909304601)
,p_event_id=>wwv_flow_imp.id(110662527811965203)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    CAARTICU.PR_CREAR_COL_PARAMETROS (PI_COD_ARTICULO => :P367_COD_ARTICULO,',
'                                      PI_COD_ARTICULO_CORTO => :P367_COD_ART_CORTO,',
'                                      PI_COD_EMPRESA => :P_COD_EMPRESA,',
'                                      PI_COD_PAIS_ORIGEN => :P367_COD_PAIS_ORIGEN,',
'                                      PI_COD_MARCA => :P367_COD_MARCA,',
'                                      PI_COD_FAMILIA => :P367_COD_FAMILIA,',
'                                      PI_COD_LINEA => :P367_COD_LINEA,',
'                                      PI_APP_USER => :APP_USER,',
'                                      PI_COD_PROVEEDOR_DFLT => :P367_COD_PROVEEDOR_DFLT);',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR (SQLERRM);',
'END;'))
,p_attribute_02=>'P367_COD_ARTICULO,P367_COD_ART_CORTO,P_COD_EMPRESA,P367_COD_PAIS_ORIGEN,P367_COD_MARCA,P367_COD_FAMILIA,P367_COD_LINEA,APP_USER,P367_COD_PROVEEDOR_DFLT'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(110666209807965240)
,p_event_id=>wwv_flow_imp.id(110662527811965203)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    	SELECT APEX_PAGE.GET_URL (  p_page   => 383) f_url_1',
'		INTO :P367_URL_REPUESTO',
'		FROM DUAL;  ',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR (SQLERRM);',
'END;'))
,p_attribute_02=>'P367_URL_REPUESTO'
,p_attribute_03=>'P367_URL_REPUESTO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(110666351154965241)
,p_event_id=>wwv_flow_imp.id(110662527811965203)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var url = apex.item("P367_URL_REPUESTO").getValue();',
'',
'apex.navigation.redirect(url);'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(110662803255965206)
,p_name=>'DA_HABILITAR_BTNS_SPARE_PARTS'
,p_event_sequence=>370
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P367_PATH'
,p_condition_element=>'P367_PATH'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(110662950311965207)
,p_event_id=>wwv_flow_imp.id(110662803255965206)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(107237137456843331)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(110663222276965210)
,p_event_id=>wwv_flow_imp.id(110662803255965206)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(107237065026843330)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(110663012221965208)
,p_event_id=>wwv_flow_imp.id(110662803255965206)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(107237065026843330)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(110663168639965209)
,p_event_id=>wwv_flow_imp.id(110662803255965206)
,p_event_result=>'FALSE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(107237137456843331)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(110664677042965224)
,p_name=>'DA_CARGAR_COL_REPUESTOS'
,p_event_sequence=>380
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P367_COD_ARTICULO'
,p_condition_element=>'P367_COD_ARTICULO'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(110664793785965225)
,p_event_id=>wwv_flow_imp.id(110664677042965224)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    CAARTICU.PR_CREAR_COL_REP (PI_COD_EMPRESA => :P_COD_EMPRESA,',
'                               PI_COD_ARTICULO => :P367_COD_ARTICULO);',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;',
'',
'',
''))
,p_attribute_02=>'P_COD_EMPRESA,P367_COD_ARTICULO'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(110665120013965229)
,p_name=>'DA_GENERAR_NG'
,p_event_sequence=>390
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(107237065026843330)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(110665623122965234)
,p_event_id=>wwv_flow_imp.id(110665120013965229)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    :P367_MENSAJE := NULL;',
'    ',
'    CAARTICU.PR_MIGRA_REPUESTOS (PI_COD_EMPRESA => :P_COD_EMPRESA,',
'                                 PI_COD_ARTICULO => :P367_COD_ARTICULO,',
'                                 PI_COD_PROVEEDOR_DFLT => :P367_COD_PROVEEDOR_DFLT,',
'                                 PI_USUARIO => :APP_USER,',
'                                 PO_MENSAJE => :P367_MENSAJE);',
'',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;',
''))
,p_attribute_02=>'P_COD_EMPRESA,P367_COD_ARTICULO,P367_COD_PROVEEDOR_DFLT,APP_USER,P367_MENSAJE'
,p_attribute_03=>'P367_MENSAJE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(110665796078965235)
,p_event_id=>wwv_flow_imp.id(110665120013965229)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'&P367_MENSAJE.'
,p_attribute_03=>'success'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P367_MENSAJE'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(112853688705303819)
,p_name=>'DA_ABRIR_BUSQUEDA_ARTICULO'
,p_event_sequence=>400
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(112853700818303820)
,p_event_id=>wwv_flow_imp.id(112853688705303819)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(112853598855303818)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(112855320475303836)
,p_name=>'DA_LIMPIAR_CAMPOS_BUSQ_ART'
,p_event_sequence=>410
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(112855244035303835)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(112855465233303837)
,p_event_id=>wwv_flow_imp.id(112855320475303836)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P367_COD_ART_CORTO_BUSQ,P367_COD_ARTICULO_BUSQ,P367_COD_ORIGEN_BUSQ,P367_COD_RUBRO_BUSQ,P367_COD_LINEA_BUSQ,P367_COD_GRUPO_BUSQ,P367_COD_FAMILIA_BUSQ,P367_COD_DIVISION_BUSQ,P367_COD_MARCA_BUSQ,P367_COD_CATEGORIA_BUSQ'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(113385787364763316)
,p_event_id=>wwv_flow_imp.id(112855320475303836)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    :P367_INDICADOR_REP_ARTICULO := ''0'';',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;'))
,p_attribute_03=>'P367_INDICADOR_REP_ARTICULO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(113385886427763317)
,p_event_id=>wwv_flow_imp.id(112855320475303836)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(112855057976303833)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(113384295973763301)
,p_name=>'DA_BUSCAR_ARTICULO_BUSQ'
,p_event_sequence=>420
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(112855152554303834)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(113384366935763302)
,p_event_id=>wwv_flow_imp.id(113384295973763301)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    :P367_INDICADOR_REP_ARTICULO := ''1'';',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;'))
,p_attribute_03=>'P367_INDICADOR_REP_ARTICULO'
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
 p_id=>wwv_flow_imp.id(113384418015763303)
,p_event_id=>wwv_flow_imp.id(113384295973763301)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(112855057976303833)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(113384725215763306)
,p_name=>'DA_BUSCAR_DATOS_ARTICULO'
,p_event_sequence=>430
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P367_ROW_ID_ARTICULO_SEL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(113384884830763307)
,p_event_id=>wwv_flow_imp.id(113384725215763306)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(112853598855303818)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(113385973971763318)
,p_event_id=>wwv_flow_imp.id(113384725215763306)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    SELECT COD_ARTICULO',
'    INTO :P367_COD_ARTICULO',
'    FROM ST_ARTICULOS',
'    WHERE ROWID = :P367_ROW_ID_ARTICULO_SEL',
'    and  cod_empresa = :P_COD_EMPRESA;',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;'))
,p_attribute_02=>'P367_ROW_ID_ARTICULO_SEL'
,p_attribute_03=>'P367_COD_ARTICULO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(113385106161763310)
,p_name=>'DA_ABRIR_BUSQ_ARTICULO'
,p_event_sequence=>440
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(113385063988763309)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(113385467266763313)
,p_event_id=>wwv_flow_imp.id(113385106161763310)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P367_COD_ART_CORTO_BUSQ,P367_COD_ARTICULO_BUSQ,P367_COD_ORIGEN_BUSQ,P367_COD_RUBRO_BUSQ,P367_COD_LINEA_BUSQ,P367_COD_GRUPO_BUSQ,P367_COD_FAMILIA_BUSQ,P367_COD_DIVISION_BUSQ,P367_COD_MARCA_BUSQ,P367_COD_CATEGORIA_BUSQ'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(113385556071763314)
,p_event_id=>wwv_flow_imp.id(113385106161763310)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    :P367_INDICADOR_REP_ARTICULO := ''0'';',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;'))
,p_attribute_03=>'P367_INDICADOR_REP_ARTICULO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(113385680384763315)
,p_event_id=>wwv_flow_imp.id(113385106161763310)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(112855057976303833)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(113385387812763312)
,p_event_id=>wwv_flow_imp.id(113385106161763310)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(112853598855303818)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(113386516352763324)
,p_name=>'DA_ELIMINAR_IMAGEN_2'
,p_event_sequence=>450
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(113386147341763320)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(113386766091763326)
,p_event_id=>wwv_flow_imp.id(113386516352763324)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>unistr('\00BFDesea eliminar la imagen?')
,p_attribute_03=>'warning'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(113386831572763327)
,p_event_id=>wwv_flow_imp.id(113386516352763324)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    UPDATE ST_ARTICULOS',
'    SET PATH_IMG_PRO_1 = NULL',
'    WHERE ROWID = :P367_ROW_ID',
'      and cod_empresa = :P_COD_EMPRESA;',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;'))
,p_attribute_02=>'P367_ROW_ID'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(113386950074763328)
,p_name=>'DA_ELIMINAR_IMAGEN_3'
,p_event_sequence=>460
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(113386255364763321)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(113387140166763330)
,p_event_id=>wwv_flow_imp.id(113386950074763328)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>unistr('\00BFDesea eliminar la imagen?')
,p_attribute_03=>'warning'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(113387293829763331)
,p_event_id=>wwv_flow_imp.id(113386950074763328)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    UPDATE ST_ARTICULOS',
'    SET PATH_IMG_PRO_2 = NULL',
'    WHERE ROWID = :P367_ROW_ID',
'      and cod_empresa = :P_COD_EMPRESA;',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;'))
,p_attribute_02=>'P367_ROW_ID'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(113387357093763332)
,p_name=>'DA_HABILITAR_BTNS_IMG'
,p_event_sequence=>470
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P367_PATH_IMG_PRO'
,p_condition_element=>'P367_PATH_IMG_PRO'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(113387403766763333)
,p_event_id=>wwv_flow_imp.id(113387357093763332)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(107235504281843315)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(113388539458763344)
,p_event_id=>wwv_flow_imp.id(113387357093763332)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(107236418871843324)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(113388422620763343)
,p_event_id=>wwv_flow_imp.id(113387357093763332)
,p_event_result=>'FALSE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(107235504281843315)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(113387560035763334)
,p_event_id=>wwv_flow_imp.id(113387357093763332)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(107236418871843324)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(113387687831763335)
,p_name=>'DA_HABILITAR_BTNS_IMG_2'
,p_event_sequence=>480
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P367_PATH_IMG_PRO_1'
,p_condition_element=>'P367_PATH_IMG_PRO_1'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(113387856044763337)
,p_event_id=>wwv_flow_imp.id(113387687831763335)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(107236334740843323)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(113388715795763346)
,p_event_id=>wwv_flow_imp.id(113387687831763335)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(113386147341763320)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(113388662440763345)
,p_event_id=>wwv_flow_imp.id(113387687831763335)
,p_event_result=>'FALSE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(107236334740843323)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(113387925436763338)
,p_event_id=>wwv_flow_imp.id(113387687831763335)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(113386147341763320)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(113388080365763339)
,p_name=>'DA_HABILITAR_BTNS_IMG_3'
,p_event_sequence=>490
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P367_PATH_IMG_PRO_2'
,p_condition_element=>'P367_PATH_IMG_PRO_2'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(113388277210763341)
,p_event_id=>wwv_flow_imp.id(113388080365763339)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(107235928589843319)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(113388933534763348)
,p_event_id=>wwv_flow_imp.id(113388080365763339)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(113386255364763321)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(113388307343763342)
,p_event_id=>wwv_flow_imp.id(113388080365763339)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(113386255364763321)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(113388860234763347)
,p_event_id=>wwv_flow_imp.id(113388080365763339)
,p_event_result=>'FALSE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(107235928589843319)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(268950116733157510)
,p_name=>'DA_SELECT_REP'
,p_event_sequence=>500
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'#rep_reporte .a-IRR-table tr'
,p_bind_type=>'live'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(268950293934157511)
,p_event_id=>wwv_flow_imp.id(268950116733157510)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'   var codtar = $(this.triggeringElement).closest(''tr'').find(''[headers="COD_ARTICULO"]'').text(); ',
'    $s(''P367_VER_REP'',codtar);',
' '))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(268950429243157513)
,p_name=>'da_refresh_repvinc'
,p_event_sequence=>510
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P367_VER_REP'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(268950508196157514)
,p_event_id=>wwv_flow_imp.id(268950429243157513)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(267420763554303611)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(268950791156157516)
,p_event_id=>wwv_flow_imp.id(268950429243157513)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(267421171327303615)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(268950656818157515)
,p_event_id=>wwv_flow_imp.id(268950429243157513)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(267421656997303620)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(268950889183157517)
,p_name=>'da_set_ver_rep'
,p_event_sequence=>520
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(108060198338266450)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterrefresh'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(268950917374157518)
,p_event_id=>wwv_flow_imp.id(268950889183157517)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P367_VER_REP'
,p_attribute_01=>'STATIC_ASSIGNMENT'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(110558253417486809)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'PR_LIMPIAR_CAMPOS_INICIAL'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(107143995503060303)
,p_process_sequence=>20
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_INIT'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    :P367_COD_MODULO := ''CA'';',
'    ',
'    IF :P367_P_NRO_LLAMADA IS NOT NULL THEN',
'	 :P367_COD_CLIENTE := :P367_P_COD_CLIENTE;',
'	 :P367_NRO_LLAMADA := :P367_P_NRO_LLAMADA;',
'    END IF;',
'',
'-----------------------------------------------',
'--BLOQUEO; ',
'-----------------------------------------------',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;'))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(107235448630843314)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'PR_LIMPIAR_CAMPOS'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp.component_end;
end;
/
