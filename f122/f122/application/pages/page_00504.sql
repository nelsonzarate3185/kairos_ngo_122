prompt --application/pages/page_00504
begin
--   Manifest
--     PAGE: 00504
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
 p_id=>504
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'Mano de Obra - STARTIMO'
,p_alias=>'STARTIMO'
,p_step_title=>'Mano de Obra - STARTIMO'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function seleccionar(cb, p_tipo) {',
'    console.log(cb.value);',
'    console.log(cb.checked);',
'',
'    if (p_tipo == ''vincular'') {',
'        if (cb.checked == true){',
'            console.log("block" + cb.value);            ',
'            $s(''P504_SEQ_ID_VINCULAR'', cb.value,false);',
'            $s(''P504_VALOR_VINCULAR'', ''S'');',
'',
'            console.log(apex.item( "P504_SEQ_ID_VINCULAR" ).getValue());',
'            console.log(apex.item( "P504_VALOR_VINCULAR" ).getValue());',
'',
'',
'        } else {            ',
'            $s(''P504_SEQ_ID_VINCULAR'', cb.value,false);',
'            $s(''P504_VALOR_VINCULAR'', ''N'');',
'',
'            console.log(apex.item( "P504_SEQ_ID_VINCULAR" ).getValue());',
'            console.log(apex.item( "P504_VALOR_VINCULAR" ).getValue());',
'        }        ',
'    }     ',
'       ',
'    ',
'    if (p_tipo == ''equivalencia'') { ',
'        if (cb.checked == true){',
'            console.log("block" + cb.value);       ',
'            $s(''P504_SEQ_ID_EQUIVALENCIA'', cb.value,false);',
'            $s(''P504_VALOR_EQUIVALENCIA'', ''S'');',
'',
'            console.log(apex.item( "P504_SEQ_ID_EQUIVALENCIA" ).getValue());',
'            console.log(apex.item( "P504_VALOR_EQUIVALENCIA" ).getValue());            ',
'',
'        } else {            ',
'            $s(''P504_SEQ_ID_EQUIVALENCIA'', cb.value,false);',
'            $s(''P504_VALOR_EQUIVALENCIA'', ''N'');',
'',
'            console.log(apex.item( "P504_SEQ_ID_EQUIVALENCIA" ).getValue());',
'            console.log(apex.item( "P504_VALOR_EQUIVALENCIA" ).getValue());  ',
'',
'        }',
'    }',
'         ',
'',
'} '))
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
'.t-Body-content{',
'   background-color:  #ecf1f8 !important;}',
'   ',
'.apex-item-select:focus, .apex-item-text:focus, .apex-item-textarea:focus, .apex-item-group--popup-lov:focus {',
'   background-color: #fae5c6 !important;',
'   border-color: rgb(107, 1, 1) !important;',
'}',
'',
'  .tabla_color   td.t-Report-cell /*, .t-Form-label */ {',
'  color: darkblue  !important;',
'  border-color: #003a85;',
'}',
'',
' .t-Form-label   {',
'  color:navy  !important; ',
'}',
'',
'  th.t-Report-colHead,  th.t-Report-colHead a{',
'  background-color:  #fff6a4  !important;',
'  color: #003a85  !important;',
'  border-color: cadetblue;',
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
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_last_updated_by=>'JUANSA'
,p_last_upd_yyyymmddhh24miss=>'20250116165006'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(148075205511515449)
,p_plug_name=>'STARTIMO'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>1030
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(148532055174621712)
,p_plug_name=>'TOP'
,p_parent_plug_id=>wwv_flow_imp.id(148075205511515449)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(148075315980515450)
,p_plug_name=>'IZQ'
,p_parent_plug_id=>wwv_flow_imp.id(148532055174621712)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(148530981125621701)
,p_plug_name=>'DER'
,p_parent_plug_id=>wwv_flow_imp.id(148532055174621712)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>30
,p_plug_new_grid_row=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(149064121200508043)
,p_plug_name=>'MID'
,p_parent_plug_id=>wwv_flow_imp.id(148075205511515449)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(149064258239508044)
,p_plug_name=>'IZQ'
,p_parent_plug_id=>wwv_flow_imp.id(149064121200508043)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(149064389133508045)
,p_plug_name=>'MID'
,p_parent_plug_id=>wwv_flow_imp.id(149064121200508043)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>50
,p_plug_new_grid_row=>false
,p_plug_grid_column_span=>2
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(149064472615508046)
,p_plug_name=>'DER'
,p_parent_plug_id=>wwv_flow_imp.id(149064121200508043)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>60
,p_plug_new_grid_row=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(152764465599007629)
,p_plug_name=>'Precios'
,p_parent_plug_id=>wwv_flow_imp.id(149064472615508046)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(152764559939007630)
,p_plug_name=>unistr('T\00E9cnicos')
,p_parent_plug_id=>wwv_flow_imp.id(149064472615508046)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(152764600248007631)
,p_plug_name=>unistr('Jefe T\00E9cnico')
,p_parent_plug_id=>wwv_flow_imp.id(149064472615508046)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>30
,p_plug_new_grid_row=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'NEVER'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(152764794390007632)
,p_plug_name=>'Porcentaje SPP'
,p_parent_plug_id=>wwv_flow_imp.id(149064472615508046)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>40
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(152765861822007643)
,p_plug_name=>'Costos'
,p_parent_plug_id=>wwv_flow_imp.id(149064472615508046)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>50
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(152765946627007644)
,p_plug_name=>'1'
,p_parent_plug_id=>wwv_flow_imp.id(152765861822007643)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(152766017921007645)
,p_plug_name=>'2'
,p_parent_plug_id=>wwv_flow_imp.id(152765861822007643)
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
 p_id=>wwv_flow_imp.id(152766127352007646)
,p_plug_name=>'3'
,p_parent_plug_id=>wwv_flow_imp.id(152765861822007643)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>30
,p_plug_new_grid_row=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(152872874623770508)
,p_plug_name=>'Cantidades'
,p_parent_plug_id=>wwv_flow_imp.id(149064121200508043)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>20
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(152873085368770510)
,p_plug_name=>'DER'
,p_parent_plug_id=>wwv_flow_imp.id(149064121200508043)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>30
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(152874340110770523)
,p_plug_name=>unistr('Observaci\00F3n')
,p_parent_plug_id=>wwv_flow_imp.id(149064121200508043)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>70
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(152872780773770507)
,p_plug_name=>'BOTTOM'
,p_parent_plug_id=>wwv_flow_imp.id(148075205511515449)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>30
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(153436069340039619)
,p_plug_name=>unistr('C\00F3digo Alternativo')
,p_parent_plug_id=>wwv_flow_imp.id(148075205511515449)
,p_region_template_options=>'#DEFAULT#:js-dialog-size600x400'
,p_plug_template=>wwv_flow_imp.id(40117728043263659)
,p_plug_display_sequence=>60
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(155017325640928623)
,p_plug_name=>unistr('Reporte C\00F3digo Alternativo')
,p_parent_plug_id=>wwv_flow_imp.id(153436069340039619)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>70
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ',
'       SEQ_ID SEQ_ID_COD_ALT,',
'       C001 COD_ALTERNATIVO,',
'       D001 FEC_ALTA,',
'       C002 COD_USUARIO,',
'       NULL SELECCIONAR,',
'       NULL ELIMINAR',
'       ',
'FROM APEX_COLLECTIONS',
'WHERE COLLECTION_NAME = ''COD_ALTERNATIVO''',
'AND nvl(c020, ''O'') <> ''B''',
'AND :P504_IND_REP_COD_ALT = ''1'''))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P504_IND_REP_COD_ALT'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>unistr('Reporte C\00F3digo Alternativo')
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
 p_id=>wwv_flow_imp.id(155017485271928624)
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
,p_internal_uid=>155017485271928624
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(155017572349928625)
,p_db_column_name=>'FEC_ALTA'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Fec Alta'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(155017600566928626)
,p_db_column_name=>'COD_USUARIO'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Cod Usuario'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(155017845833928628)
,p_db_column_name=>'SELECCIONAR'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Seleccionar'
,p_column_link=>'javascript:$s(''P504_SEQ_ID_COD_ALT_SEL'',''#SEQ_ID_COD_ALT#'');'
,p_column_linktext=>'<span aria-hidden="true" class="fa fa-edit"></span>'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(155017926101928629)
,p_db_column_name=>'COD_ALTERNATIVO'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Cod Alternativo'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(155450145425904703)
,p_db_column_name=>'SEQ_ID_COD_ALT'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Seq Id Cod Alt'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(155450264841904704)
,p_db_column_name=>'ELIMINAR'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Eliminar'
,p_column_link=>'javascript:$s(''P504_SEQ_ID_COD_ALT_ELI'',''#SEQ_ID_COD_ALT#'');'
,p_column_linktext=>'<span class="fa fa-trash" aria-hidden="true"></span>'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(155355629390851656)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1553557'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'SELECCIONAR:COD_ALTERNATIVO:FEC_ALTA:COD_USUARIO:ELIMINAR:'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(155018786935928637)
,p_plug_name=>'AGREGAR COD ALTERNATIVO'
,p_parent_plug_id=>wwv_flow_imp.id(153436069340039619)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(155015393026928603)
,p_plug_name=>'EAN Alternativo'
,p_parent_plug_id=>wwv_flow_imp.id(148075205511515449)
,p_region_template_options=>'#DEFAULT#:js-dialog-size720x480'
,p_plug_template=>wwv_flow_imp.id(40117728043263659)
,p_plug_display_sequence=>50
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(153434348566039602)
,p_plug_name=>'Reporte EAN'
,p_parent_plug_id=>wwv_flow_imp.id(155015393026928603)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>40
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ',
'       SEQ_ID SEQ_ID_EAN,',
'       C001 COD_EAN,',
'       D001 FEC_ALTA,',
'       C002 COD_USUARIO,',
'       NULL SELECCIONAR,',
'       NULL ELIMINAR',
'       ',
'FROM APEX_COLLECTIONS',
'WHERE COLLECTION_NAME = ''EAN_ALTERNATIVO''',
'AND nvl(c020, ''O'') <> ''B''',
'AND :P504_IND_REPORTE_EAN = ''1''',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P504_IND_REPORTE_EAN,P504_COD_ARTICULO'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Reporte EAN'
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
 p_id=>wwv_flow_imp.id(153434608473039605)
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
,p_internal_uid=>153434608473039605
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(153434787561039606)
,p_db_column_name=>'COD_EAN'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Cod Ean'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(153434865450039607)
,p_db_column_name=>'FEC_ALTA'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Fec Alta'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(153434955364039608)
,p_db_column_name=>'COD_USUARIO'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Cod Usuario'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(155019110442928641)
,p_db_column_name=>'ELIMINAR'
,p_display_order=>50
,p_column_identifier=>'J'
,p_column_label=>'Eliminar'
,p_column_link=>'javascript:$s(''P504_SEQ_ID_EAN_ELIMINAR'',''#SEQ_ID_EAN#'');'
,p_column_linktext=>'<span class="fa fa-trash" aria-hidden="true"></span>'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(155019233964928642)
,p_db_column_name=>'SELECCIONAR'
,p_display_order=>60
,p_column_identifier=>'K'
,p_column_label=>'Seleccionar'
,p_column_link=>'javascript:$s(''P504_SEQ_ID_EAN_SELEC'',''#SEQ_ID_EAN#'');'
,p_column_linktext=>'<span aria-hidden="true" class="fa fa-edit"></span>'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(155019854008928648)
,p_db_column_name=>'SEQ_ID_EAN'
,p_display_order=>70
,p_column_identifier=>'L'
,p_column_label=>'Seq Id Ean'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(153804483138829992)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1538045'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'SELECCIONAR:COD_EAN:FEC_ALTA:COD_USUARIO:ELIMINAR:'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(155016088505928610)
,p_plug_name=>'AGREGAR EAN ALTERNATIVO'
,p_parent_plug_id=>wwv_flow_imp.id(155015393026928603)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>30
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(155452534721904727)
,p_plug_name=>'Carga de productos relacionados'
,p_parent_plug_id=>wwv_flow_imp.id(148075205511515449)
,p_region_template_options=>'#DEFAULT#:js-dialog-size720x480'
,p_plug_template=>wwv_flow_imp.id(40117728043263659)
,p_plug_display_sequence=>70
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(155452688450904728)
,p_plug_name=>'Productos relacionados'
,p_parent_plug_id=>wwv_flow_imp.id(155452534721904727)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'        C004 COD_ART_CORTO,',
'        C002 COD_ARTICULO,',
'        C003 DESCRIPCION,',
'        APEX_ITEM.CHECKBOX (p_idx  => 1,',
'                            p_value       => seq_id,',
'                            p_attributes  => (case C001',
'                                              when ''S'' ',
'                                              then ''checked''',
'                                              else null',
'                                              end ) ||''onclick="seleccionar(this,''''vincular'''')"'') as Vincular',
'',
'FROM APEX_COLLECTIONS',
'WHERE COLLECTION_NAME = ''PRODUCTOS_RELACIONADOS'''))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Productos relacionados'
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
 p_id=>wwv_flow_imp.id(155453632591904738)
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
,p_internal_uid=>155453632591904738
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(155453786397904739)
,p_db_column_name=>'COD_ART_CORTO'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Cod Art Corto'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(155453887016904740)
,p_db_column_name=>'COD_ARTICULO'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Cod Articulo'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(155453911672904741)
,p_db_column_name=>'DESCRIPCION'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Descripcion'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(155454047752904742)
,p_db_column_name=>'VINCULAR'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Vincular'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(156648408154312299)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1566485'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'COD_ART_CORTO:COD_ARTICULO:DESCRIPCION:VINCULAR'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(155454146085904743)
,p_plug_name=>'Equivalencia de repuestos'
,p_parent_plug_id=>wwv_flow_imp.id(148075205511515449)
,p_region_template_options=>'#DEFAULT#:js-dialog-size720x480'
,p_plug_template=>wwv_flow_imp.id(40117728043263659)
,p_plug_display_sequence=>80
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(155454231140904744)
,p_plug_name=>'Equivalencias de respuestos'
,p_parent_plug_id=>wwv_flow_imp.id(155454146085904743)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'        C004 COD_ART_CORTO,',
'        C002 COD_ARTICULO,',
'        C003 DESCRIPCION,',
'        APEX_ITEM.CHECKBOX (p_idx  => 1,',
'                            p_value       => seq_id,',
'                            p_attributes  => (case C001',
'                                              when ''S'' ',
'                                              then ''checked''',
'                                              else null',
'                                              end ) ||''onclick="seleccionar(this,''''equivalencia'''')"'') as Equivalencia',
'',
'FROM APEX_COLLECTIONS',
'WHERE COLLECTION_NAME = ''EQUIVALENCIA_REPUESTOS'''))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Equivalencias de respuestos'
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
 p_id=>wwv_flow_imp.id(155454822468904750)
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
,p_internal_uid=>155454822468904750
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(156680387506798601)
,p_db_column_name=>'COD_ART_CORTO'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Cod Art Corto'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(156680408790798602)
,p_db_column_name=>'COD_ARTICULO'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Cod Articulo'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(156680554688798603)
,p_db_column_name=>'DESCRIPCION'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Descripcion'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(156681240576798610)
,p_db_column_name=>'EQUIVALENCIA'
,p_display_order=>40
,p_column_identifier=>'E'
,p_column_label=>'Equivalencia'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
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
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(156688382965789535)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1566884'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'COD_ART_CORTO:COD_ARTICULO:DESCRIPCION:EQUIVALENCIA:'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(148531049183621702)
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
 p_id=>wwv_flow_imp.id(153435517981039614)
,p_plug_name=>'SEQ / ROW'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>1020
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(153437864233039637)
,p_plug_name=>'PARAMETROS'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>1000
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(154312848590956347)
,p_plug_name=>'INDICADORES'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>1010
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(155017011975928620)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(148075205511515449)
,p_button_name=>'BTN_BUSCAR_ARTICULO'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight:t-Button--gapBottom'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Buscar'
,p_button_position=>'ABOVE_BOX'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-search'
,p_button_cattributes=>'style=''width:150px'';'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(155017137629928621)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(148075205511515449)
,p_button_name=>'BTN_GUARDAR_CAMBIOS'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight:t-Button--gapBottom'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Guardar Cambios'
,p_button_position=>'ABOVE_BOX'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'u-color-7-text'
,p_icon_css_classes=>'fa-save'
,p_button_cattributes=>'style=''width:150px'';'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(155017291611928622)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(148075205511515449)
,p_button_name=>'BTN_LIMPIAR_CAMPOS'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight:t-Button--gapBottom'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Limpiar Campos'
,p_button_position=>'ABOVE_BOX'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-trash-o'
,p_button_cattributes=>'style=''width:150px'';'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(155018909197928639)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(155018786935928637)
,p_button_name=>'BTN_AGREGAR_COD_ALT'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight:t-Button--gapTop'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Agregar'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-plus-square-o'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(149063505422508037)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(148530981125621701)
,p_button_name=>'BTN_EAN_ALTERNATIVO'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--simple:t-Button--gapLeft:t-Button--gapRight:t-Button--gapTop'
,p_button_template_id=>wwv_flow_imp.id(40187078917263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'BTN_EAN_ALTERNATIVO'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-plus'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(155015203721928602)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(155016088505928610)
,p_button_name=>'BTN_AGREGAR_EAN'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight:t-Button--gapTop'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Agregar'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-plus-square-o'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(149063694901508038)
,p_button_sequence=>70
,p_button_plug_id=>wwv_flow_imp.id(148530981125621701)
,p_button_name=>'BTN_ALTERNATIVO'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--simple:t-Button--gapLeft:t-Button--gapRight:t-Button--gapTop'
,p_button_template_id=>wwv_flow_imp.id(40187078917263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'BTN_ALTERNATIVO'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-plus'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(155452973536904731)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(155452534721904727)
,p_button_name=>'BTN_AGREGAR_PROD_REL'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Agregar '
,p_button_position=>'CREATE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(155454352354904745)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(155454146085904743)
,p_button_name=>'BTN_AGREGAR_EQUIVALENCIA'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Agregar '
,p_button_position=>'CREATE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(155454422545904746)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(155454146085904743)
,p_button_name=>'BTN_VOLVER_EQUIVALENCIA'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Volver'
,p_button_position=>'CREATE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(155453094222904732)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(155452534721904727)
,p_button_name=>'BTN_VOLVER_PROD_REL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Volver'
,p_button_position=>'CREATE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(152872502054770505)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(149064472615508046)
,p_button_name=>'BTN_VINCULAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Vincular'
,p_button_position=>'NEXT'
,p_warn_on_unsaved_changes=>null
,p_button_cattributes=>'style="margin-left:150px;"'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(153435241380039611)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(155015393026928603)
,p_button_name=>'BTN_VOLVER_EAN'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--simple:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Volver'
,p_button_position=>'NEXT'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-arrow-circle-o-left'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(152872694529770506)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(149064472615508046)
,p_button_name=>'BTN_EQUIVALENTES'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Equivalencia'
,p_button_position=>'NEXT'
,p_warn_on_unsaved_changes=>null
,p_button_cattributes=>'style="margin-left:150px;"'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(153436710421039626)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(153436069340039619)
,p_button_name=>'BTN_VOLVER_COD_ALTERNATIVO'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--simple:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Volver'
,p_button_position=>'NEXT'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-arrow-circle-o-left'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(155452030320904722)
,p_branch_name=>'BR_LLAMAR_PAG_509'
,p_branch_action=>'f?p=&APP_ID.:509:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'BEFORE_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
,p_branch_condition_type=>'REQUEST_EQUALS_CONDITION'
,p_branch_condition=>'BUSCAR'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(148531108813621703)
,p_name=>'P504_CAMBIA_PRECIO'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(148531049183621702)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(148531264690621704)
,p_name=>'P504_VE_AUD'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(148531049183621702)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(148531330265621705)
,p_name=>'P504_MODIFICA_ARTICULOS'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(148531049183621702)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(148531470523621706)
,p_name=>'P504_COD_ART_CORTO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(148075315980515450)
,p_prompt=>unistr('C\00F3digo Corto')
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
 p_id=>wwv_flow_imp.id(148531588885621707)
,p_name=>'P504_COD_ARTICULO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(148075315980515450)
,p_prompt=>'Articulo'
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
 p_id=>wwv_flow_imp.id(148531673293621708)
,p_name=>'P504_COD_ORIGEN_ART'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(148075315980515450)
,p_prompt=>unistr('C\00F3digo de Origen')
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
 p_id=>wwv_flow_imp.id(148531737675621709)
,p_name=>'P504_COD_MODULO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(148531049183621702)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(148531897729621710)
,p_name=>'P504_COD_FORMA'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(148531049183621702)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(149063047218508032)
,p_name=>'P504_ART_DESC_PROVEEDOR'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(148075315980515450)
,p_prompt=>unistr('Descripci\00F3n Proveedor')
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
 p_id=>wwv_flow_imp.id(149063121675508033)
,p_name=>'P504_COD_EAN'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(148530981125621701)
,p_prompt=>'Cod Ean'
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
 p_id=>wwv_flow_imp.id(149063270120508034)
,p_name=>'P504_COD_MADRE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(148530981125621701)
,p_prompt=>unistr('C\00F3d. Hijo')
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select cod_articulo || '' - '' || trim(descripcion) D,  ',
'       cod_articulo R',
'from  st_articulos ',
'where cod_empresa = :P_COD_EMPRESA',
'order by cod_articulo'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>6
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
 p_id=>wwv_flow_imp.id(149063344724508035)
,p_name=>'P504_COD_ALTERNO'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(148530981125621701)
,p_prompt=>unistr('C\00F3d. Alterno')
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
 p_id=>wwv_flow_imp.id(149063442610508036)
,p_name=>'P504_MAX_COD'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(148530981125621701)
,p_prompt=>unistr('C\00F3d. Max.')
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select distinct cod_art_corto ',
'from st_articulos ',
'where cod_empresa =:P_COD_EMPRESA ',
'and cod_art_corto is not null ',
'and cod_marca = :P504_COD_MARCA ',
'order by 1'))
,p_lov_display_null=>'YES'
,p_lov_cascade_parent_items=>'P504_COD_MARCA'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>3
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
 p_id=>wwv_flow_imp.id(149063791005508039)
,p_name=>'P504_TIPO_MO'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(148530981125621701)
,p_prompt=>'Tipo MO'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:STNGO;STNGO,STA Normal;STA,STA Adicional;STAADI,Mantenimiento;MAN'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(149063881295508040)
,p_name=>'P504_COD_PAIS_ORIGEN'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(148075315980515450)
,p_prompt=>unistr('Pa\00EDs de origen')
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select cod_pais || '' - '' || descripcion D,',
'       cod_pais R ',
'from paises ',
'order by descripcion'))
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
 p_id=>wwv_flow_imp.id(149063952429508041)
,p_name=>'P504_COD_PUERTO'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(148530981125621701)
,p_prompt=>'Puerto de Embarque'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select cod_puerto || '' - '' || descripcion D,',
'       cod_puerto R ',
'from cm_puertos ',
'order by descripcion'))
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
 p_id=>wwv_flow_imp.id(149064027736508042)
,p_name=>'P504_ORIGEN_PUERTO'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(148530981125621701)
,p_prompt=>'Origen Puerto'
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
 p_id=>wwv_flow_imp.id(149064534797508047)
,p_name=>'P504_IND_MODIFICA_PRECIO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(149064389133508045)
,p_prompt=>'Modifica Precio'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large'
,p_attribute_01=>'N'
,p_attribute_02=>'S'
,p_attribute_03=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(149064613866508048)
,p_name=>'P504_IND_MANEJA_LOTES'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(149064389133508045)
,p_prompt=>'Maneja Lotes'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large'
,p_attribute_01=>'N'
,p_attribute_02=>'S'
,p_attribute_03=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(149064719824508049)
,p_name=>'P504_EN_OFERTA_WEB'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(149064389133508045)
,p_prompt=>'En oferta Web'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large'
,p_attribute_01=>'N'
,p_attribute_02=>'S'
,p_attribute_03=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(149064892056508050)
,p_name=>'P504_IND_NO_DESCUENTO'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(149064389133508045)
,p_prompt=>'Sin descuento'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large'
,p_attribute_01=>'N'
,p_attribute_02=>'S'
,p_attribute_03=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(152761685097007601)
,p_name=>'P504_ESTADO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(149064389133508045)
,p_prompt=>'Activo'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large'
,p_attribute_01=>'N'
,p_attribute_02=>'A'
,p_attribute_03=>'I'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(152761797278007602)
,p_name=>'P504_IND_MANEJA_STOCK'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(149064389133508045)
,p_prompt=>'Maneja Existencia'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large'
,p_attribute_01=>'N'
,p_attribute_02=>'S'
,p_attribute_03=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(152761877182007603)
,p_name=>'P504_GARANTIA'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(149064389133508045)
,p_prompt=>unistr('Garant\00EDa')
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large'
,p_attribute_01=>'N'
,p_attribute_02=>'S'
,p_attribute_03=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(152761928411007604)
,p_name=>'P504_IND_NO_CUBRE_GARANTIA'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(149064389133508045)
,p_prompt=>unistr('No Cubre Garant\00EDa')
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large'
,p_attribute_01=>'N'
,p_attribute_02=>'S'
,p_attribute_03=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(152762030473007605)
,p_name=>'P504_IND_MANTENIMIENTO'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(149064389133508045)
,p_prompt=>'Mantenimiento'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large'
,p_attribute_01=>'N'
,p_attribute_02=>'S'
,p_attribute_03=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(152762139447007606)
,p_name=>'P504_MANEJA_COSTO'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(149064389133508045)
,p_prompt=>'Maneja Costo'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large'
,p_attribute_01=>'N'
,p_attribute_02=>'S'
,p_attribute_03=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(152762259197007607)
,p_name=>'P504_IND_DISCONTINUADO'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(149064389133508045)
,p_prompt=>'No Stock'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large'
,p_attribute_01=>'N'
,p_attribute_02=>'S'
,p_attribute_03=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(152762330480007608)
,p_name=>'P504_IND_MUESTRA_WEB'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(149064389133508045)
,p_prompt=>'Muestra WEB'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large'
,p_attribute_01=>'N'
,p_attribute_02=>'S'
,p_attribute_03=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(152762445663007609)
,p_name=>'P504_IND_PARTICULAR'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(149064389133508045)
,p_prompt=>'Solo Particular'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large'
,p_attribute_01=>'N'
,p_attribute_02=>'S'
,p_attribute_03=>'X'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(152762581773007610)
,p_name=>'P504_IND_TECNICO_29'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(149064389133508045)
,p_prompt=>unistr('Solo T\00E9cnico (29)')
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large'
,p_attribute_01=>'N'
,p_attribute_02=>'S'
,p_attribute_03=>'X'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(152762619957007611)
,p_name=>'P504_COD_PROVEEDOR_DFLT'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(149064258239508044)
,p_prompt=>'Proveedor'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select pr.cod_proveedor  || '' - '' || ltrim(pe.nombre) D, ',
'       pr.cod_proveedor R ',
'from personas pe, cm_proveedores pr ',
'where pr.cod_empresa = :P_COD_EMPRESA',
'and pr.cod_persona = pe.cod_persona ',
'order by nombre'))
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
 p_id=>wwv_flow_imp.id(152762717227007612)
,p_name=>'P504_COD_RUBRO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(149064258239508044)
,p_prompt=>'Rubro'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select cod_rubro || '' - '' || descripcion D,',
'       cod_rubro R',
'from st_rubro ',
'where cod_empresa = :P_COD_EMPRESA',
'order by descripcion'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_begin_on_new_line=>'N'
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
 p_id=>wwv_flow_imp.id(152762892251007613)
,p_name=>'P504_COD_LINEA'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(149064258239508044)
,p_prompt=>unistr('L\00EDnea ')
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select cod_linea || '' - '' || descripcion D,',
'       cod_linea R ',
'from st_linea ',
'where cod_empresa = :P_COD_EMPRESA',
'and nvl(estado,''P'') NOT IN (''I'',''N'') ',
'order by descripcion'))
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
 p_id=>wwv_flow_imp.id(152762969587007614)
,p_name=>'P504_COD_CATEGORIA'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(149064258239508044)
,p_prompt=>unistr('Categor\00EDa')
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select cod_categoria || '' - '' || descripcion D, ',
'       cod_categoria R',
'from st_categorias ',
'where cod_empresa = :P_COD_EMPRESA',
'and  nvl(estado,''P'') NOT IN (''I'',''N'') ',
'order by 1 '))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_begin_on_new_line=>'N'
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
 p_id=>wwv_flow_imp.id(152763059286007615)
,p_name=>'P504_COD_FAMILIA'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(149064258239508044)
,p_prompt=>'Familia'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select cod_familia || '' - '' || descripcion D,',
'       cod_familia R ',
'from st_familia ',
'where cod_empresa = :P_COD_EMPRESA ',
'and nvl(estado,''P'') NOT IN (''I'',''N'')  ',
'order by descripcion'))
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
 p_id=>wwv_flow_imp.id(152763137132007616)
,p_name=>'P504_COD_DIVISION'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(149064258239508044)
,p_prompt=>unistr('Divisi\00F3n')
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select cod_division || '' - '' || desc_division D, ',
'       cod_division R',
'from st_division_articulos',
'where  nvl(estado,''P'') NOT IN (''I'',''N'') ',
'order by 1 asc'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_begin_on_new_line=>'N'
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
 p_id=>wwv_flow_imp.id(152763260871007617)
,p_name=>'P504_COD_GRUPO'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(149064258239508044)
,p_prompt=>'Grupo de articulo'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select cod_grupo || '' - '' || descripcion D, ',
'       cod_grupo R ',
'from st_grupos ',
'where cod_empresa = :P_COD_EMPRESA ',
'order by descripcion'))
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
 p_id=>wwv_flow_imp.id(152763372773007618)
,p_name=>'P504_COD_MARCA'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(149064258239508044)
,p_prompt=>'Marca'
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
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(152763491570007619)
,p_name=>'P504_COD_GRUPO_ART'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(149064258239508044)
,p_prompt=>'Grupo de precio'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select cod_grupo_art || '' - '' || descripcion D, ',
'       cod_grupo_art R ',
'from st_grupos_art ',
'order by descripcion'))
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
 p_id=>wwv_flow_imp.id(152763598032007620)
,p_name=>'P504_COD_GRUPO_COMISION'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(149064258239508044)
,p_prompt=>unistr('Grupo de comisi\00F3n')
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select cod_grupo_comision || '' - '' || descripcion D, ',
'       cod_grupo_comision R',
'from st_grupos_comision ',
'order by descripcion'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_begin_on_new_line=>'N'
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
 p_id=>wwv_flow_imp.id(152763691289007621)
,p_name=>'P504_COD_ENVASE'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(149064258239508044)
,p_prompt=>'Envase'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select cod_envase || '' - '' || descripcion D,',
'       cod_envase R ',
'from st_envases ',
'order by descripcion'))
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
 p_id=>wwv_flow_imp.id(152763709779007622)
,p_name=>'P504_COD_UNIDAD_MEDIDA'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(149064258239508044)
,p_prompt=>'Unidad de medida'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select cod_unidad_medida || '' - '' || descripcion D,',
'       cod_unidad_medida R ',
'from st_unidades_medida ',
'order by descripcion'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_begin_on_new_line=>'N'
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
 p_id=>wwv_flow_imp.id(152763892017007623)
,p_name=>'P504_COD_MONEDA_COSTO'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(149064258239508044)
,p_prompt=>'Moneda costo'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select cod_moneda || '' - '' || descripcion D, ',
'       cod_moneda R ',
'from monedas ',
'order by descripcion'))
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
 p_id=>wwv_flow_imp.id(152764045622007625)
,p_name=>'P504_COD_MONEDA_BASE'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(149064258239508044)
,p_prompt=>'Moneda base'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select cod_moneda || '' - '' || descripcion D, ',
'       cod_moneda R ',
'from monedas ',
'order by descripcion'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_begin_on_new_line=>'N'
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
 p_id=>wwv_flow_imp.id(152764119751007626)
,p_name=>'P504_COD_ARANCEL'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(149064258239508044)
,p_prompt=>'Arancel'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select cod_arancel || '' - '' || descripcion D, ',
'       cod_arancel R ',
'from cm_aranceles ',
'order by descripcion'))
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
 p_id=>wwv_flow_imp.id(152764280956007627)
,p_name=>'P504_COD_RELACION_UM'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_imp.id(149064258239508044)
,p_prompt=>'Rel. Unidad medida'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select cod_relacion_um || '' - '' || cod_unidad_rel || '' - '' || mult || '' - '' || div D,',
'       cod_relacion_um R',
'from st_relaciones'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_begin_on_new_line=>'N'
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
 p_id=>wwv_flow_imp.id(152764384376007628)
,p_name=>'P504_FEC_ULTIMA_COMP'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_imp.id(149064258239508044)
,p_prompt=>unistr('\00DAltima compra')
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
 p_id=>wwv_flow_imp.id(152764870792007633)
,p_name=>'P504_PORCENTAJE_SPP'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(152764794390007632)
,p_prompt=>'% Spp'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_colspan=>6
,p_grid_column=>4
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(152764979819007634)
,p_name=>'P504_PRECIO_BASE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(152764465599007629)
,p_prompt=>'Base'
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
 p_id=>wwv_flow_imp.id(152765046662007635)
,p_name=>'P504_PRECIO_BASE_GARANTIA'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(152764465599007629)
,p_prompt=>unistr('Garant\00EDa')
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
 p_id=>wwv_flow_imp.id(152765119478007636)
,p_name=>'P504_IMPORTE_COMI_PARTICULAR'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(152764559939007630)
,p_prompt=>'Particular'
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
 p_id=>wwv_flow_imp.id(152765291975007637)
,p_name=>'P504_IMPORTE_COMISION_GARANTIA'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(152764559939007630)
,p_prompt=>unistr('Garant\00EDa')
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
 p_id=>wwv_flow_imp.id(152765361190007638)
,p_name=>'P504_IMPORTE_COMISION_JT_15'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(152764600248007631)
,p_prompt=>'15%'
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
 p_id=>wwv_flow_imp.id(152765402980007639)
,p_name=>'P504_IMPORTE_COMISION_JT_7'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(152764600248007631)
,p_prompt=>'7%'
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
 p_id=>wwv_flow_imp.id(152765595246007640)
,p_name=>'P504_CANTIDAD_MINIMA_COMPRA'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(149064389133508045)
,p_prompt=>'Cant. Min. Comp.'
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
 p_id=>wwv_flow_imp.id(152765690645007641)
,p_name=>'P504_PLAZO_ENTREGA'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_imp.id(149064389133508045)
,p_prompt=>'Plazo Entrega'
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
 p_id=>wwv_flow_imp.id(152765775933007642)
,p_name=>'P504_DURACION_GARANTIA'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_imp.id(149064389133508045)
,p_prompt=>'Dur. Gar. Meses'
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
 p_id=>wwv_flow_imp.id(152766311427007648)
,p_name=>'P504_COSTO_PROM'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(152765946627007644)
,p_prompt=>'Promedio GS'
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
 p_id=>wwv_flow_imp.id(152766401283007649)
,p_name=>'P504_COSTO_ULTIMO'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(152765946627007644)
,p_prompt=>unistr('\00DAltimo GS')
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
 p_id=>wwv_flow_imp.id(152766552650007650)
,p_name=>'P504_COSTO_PROM_US'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(152766017921007645)
,p_prompt=>'Promedio U$'
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
 p_id=>wwv_flow_imp.id(152872141514770501)
,p_name=>'P504_COSTO_ULTIMO_US'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(152766017921007645)
,p_prompt=>unistr('\00DAltimo U$')
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
 p_id=>wwv_flow_imp.id(152872237069770502)
,p_name=>'P504_TIP_CAMBIO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(152766127352007646)
,p_prompt=>unistr('Cotizaci\00F3n')
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
 p_id=>wwv_flow_imp.id(152872359534770503)
,p_name=>'P504_COSTO_FOB_OC'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(152766127352007646)
,p_prompt=>'FOB Ult OC'
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
 p_id=>wwv_flow_imp.id(152872499893770504)
,p_name=>'P504_COSTO_FOB'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(152766127352007646)
,p_prompt=>'FOB'
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
 p_id=>wwv_flow_imp.id(152873148173770511)
,p_name=>'P504_AUTOAPILABLE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(152872874623770508)
,p_prompt=>'Autoapilable'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:SI;SI,NO;NO,N/A;N/A'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(152873225498770512)
,p_name=>'P504_COD_PACK'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(152872874623770508)
,p_prompt=>'Cod Packs'
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
 p_id=>wwv_flow_imp.id(152873343465770513)
,p_name=>'P504_CANT_X_PALLET'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(152872874623770508)
,p_prompt=>'Por Pallets'
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
 p_id=>wwv_flow_imp.id(152873446775770514)
,p_name=>'P504_CANT_X_PAQUETE'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(152872874623770508)
,p_prompt=>'Por paquete'
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
 p_id=>wwv_flow_imp.id(152873509682770515)
,p_name=>'P504_CANT_PEDIDO'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(152872874623770508)
,p_prompt=>'Pedidas'
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
 p_id=>wwv_flow_imp.id(152873691409770516)
,p_name=>'P504_COD_IVA'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(152873085368770510)
,p_prompt=>unistr('C\00F3digo')
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select cod_iva || '' - '' || descripcion D,',
'       cod_iva R ',
'from st_iva ',
'order by cod_iva'))
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
 p_id=>wwv_flow_imp.id(152873729163770517)
,p_name=>'P504_PORC_DESCUENTO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(152873085368770510)
,p_prompt=>'Porc. Descuento'
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
 p_id=>wwv_flow_imp.id(152873987367770519)
,p_name=>'P504_DESC_IVA'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(152873085368770510)
,p_prompt=>'Porcentaje'
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
 p_id=>wwv_flow_imp.id(152874019338770520)
,p_name=>'P504_DESCMAX'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(152873085368770510)
,p_prompt=>unistr('Desc. M\00E1ximo')
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
 p_id=>wwv_flow_imp.id(152874195097770521)
,p_name=>'P504_FEC_ALTA'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_imp.id(149064389133508045)
,p_prompt=>'Fec Alta'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'ReadOnly'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(152874286833770522)
,p_name=>'P504_COD_USUARIO'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_imp.id(149064389133508045)
,p_prompt=>'Usuario'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'ReadOnly'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(152874441586770524)
,p_name=>'P504_COMENTARIO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(152874340110770523)
,p_prompt=>'Obs'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>30
,p_cHeight=>5
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(152874801553770528)
,p_name=>'P504_COD_COLOR'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(148531049183621702)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(152874942138770529)
,p_name=>'P504_IND_CICLO_VIDA'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(149064389133508045)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(152875211208770532)
,p_name=>'P504_MSG_ALERT_COD_CORTO'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(148531049183621702)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(152875572728770535)
,p_name=>'P504_MSG_ALERT_COD_ART'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(148531049183621702)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(152876492352770544)
,p_name=>'P504_MSG_ALERT'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(148531049183621702)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(152876772814770547)
,p_name=>'P504_COD_LINEA_ST'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(149064258239508044)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(153435682270039615)
,p_name=>'P504_SEQ_ID_EAN_SELEC'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(153435517981039614)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(153437384035039632)
,p_name=>'P504_SEQ_ID_COD_ALT_SEL'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(153435517981039614)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(153437966828039638)
,p_name=>'P504_P_ROW_ID_ARTICULO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(153437864233039637)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(154312981993956348)
,p_name=>'P504_IND_REPORTE_EAN'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(154312848590956347)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(155016275670928612)
,p_name=>'P504_COD_EAN_ALTERNATIVO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(155016088505928610)
,p_prompt=>unistr('C\00F3d. Ean Alternativo')
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
 p_id=>wwv_flow_imp.id(155018836064928638)
,p_name=>'P504_COD_ALTERNATIVO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(155018786935928637)
,p_prompt=>unistr('C\00F3d. Alternativo')
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
 p_id=>wwv_flow_imp.id(155019358786928643)
,p_name=>'P504_SEQ_ID_EAN_ELIMINAR'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(153435517981039614)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(155450031457904702)
,p_name=>'P504_IND_REP_COD_ALT'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(154312848590956347)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(155450996696904711)
,p_name=>'P504_SEQ_ID_COD_ALT_ELI'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(153435517981039614)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(156681321258798611)
,p_name=>'P504_SEQ_ID_VINCULAR'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(153435517981039614)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(156681478974798612)
,p_name=>'P504_VALOR_VINCULAR'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(148531049183621702)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(156681866059798616)
,p_name=>'P504_SEQ_ID_EQUIVALENCIA'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(153435517981039614)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(156681968317798617)
,p_name=>'P504_VALOR_EQUIVALENCIA'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(148531049183621702)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(328609682653951522)
,p_name=>'P504_DESC_ARTICULO'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(148075315980515450)
,p_prompt=>unistr('Descripci\00F3n')
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
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(156682834609798626)
,p_validation_name=>'VA_COD_ARTICULO'
,p_validation_sequence=>10
,p_validation=>'P504_COD_ARTICULO'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>unistr('El c\00F3digo del articulo no puede ser nulo.')
,p_validation_condition=>'GUARDAR'
,p_validation_condition_type=>'REQUEST_EQUALS_CONDITION'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(156682902243798627)
,p_validation_name=>'VA_FEC_ALTA'
,p_validation_sequence=>20
,p_validation=>'P504_FEC_ALTA'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'La fecha de alta del articulo no puede ser nula.'
,p_validation_condition=>'GUARDAR'
,p_validation_condition_type=>'REQUEST_EQUALS_CONDITION'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(152874591459770525)
,p_name=>'DA_HABILITAR_CAMPOS'
,p_event_sequence=>10
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
,p_display_when_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(152874674810770526)
,p_event_id=>wwv_flow_imp.id(152874591459770525)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P504_COD_ART_CORTO,P504_COD_ARTICULO,P504_COD_PAIS_ORIGEN,P504_COD_EAN,P504_COD_PROVEEDOR_DFLT,P504_COD_RUBRO,P504_COD_LINEA,P504_COD_FAMILIA,P504_COD_GRUPO,P504_COD_MARCA,P504_COD_GRUPO_ART,P504_COD_MONEDA_BASE,P504_COD_ARANCEL,P504_IND_MODIFICA_PRE'
||'CIO,P504_ESTADO,P504_IND_MANEJA_STOCK,P504_PRECIO_BASE'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P504_MODIFICA_ARTICULOS'
,p_client_condition_expression=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(152874785469770527)
,p_event_id=>wwv_flow_imp.id(152874591459770525)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P504_COD_ART_CORTO,P504_COD_ARTICULO,P504_COD_PAIS_ORIGEN,P504_COD_EAN,P504_COD_PROVEEDOR_DFLT,P504_COD_RUBRO,P504_COD_LINEA,P504_COD_FAMILIA,P504_COD_GRUPO,P504_COD_MARCA,P504_COD_GRUPO_ART,P504_COD_MONEDA_BASE,P504_COD_ARANCEL,P504_IND_MODIFICA_PRE'
||'CIO,P504_ESTADO,P504_IND_MANEJA_STOCK,P504_PRECIO_BASE'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P504_MODIFICA_ARTICULOS'
,p_client_condition_expression=>'S'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(152875000523770530)
,p_name=>'DA_VALIDAR_COD_ART_CORTO'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P504_COD_ART_CORTO'
,p_condition_element=>'P504_COD_ART_CORTO'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(152875176591770531)
,p_event_id=>wwv_flow_imp.id(152875000523770530)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE ',
'    VEXISTE VARCHAR2(10);',
'    VEXIS EXCEPTION;',
'',
'BEGIN',
'',
'   SELECT ''S''',
'     INTO VEXISTE',
'     FROM ST_ARTICULOS ',
'    WHERE COD_EMPRESA = :P_COD_EMPRESA',
'     AND  COD_ART_CORTO = :P504_COD_ART_CORTO',
'      AND ROWNUM         = 1;',
'',
'    IF nvl(vexiste,''N'')=''S'' THEN',
'     :P504_MSG_ALERT_COD_CORTO := ''El codigo corto del articulo ya existe'';',
'    END IF;',
'',
'EXCEPTION',
'  WHEN NO_DATA_FOUND THEN',
'        :P504_MSG_ALERT_COD_CORTO := NULL;',
'  WHEN OTHERS THEN  ',
'         raise_application_error(-20000,''Error COD_ART_CORTO. '' || SQLERRM);  ',
'END ;',
''))
,p_attribute_02=>'P504_COD_ART_CORTO'
,p_attribute_03=>'P504_MSG_ALERT_COD_CORTO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(152875311291770533)
,p_event_id=>wwv_flow_imp.id(152875000523770530)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_FOCUS'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P504_COD_ART_CORTO'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P504_MSG_ALERT_COD_CORTO'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(152875420288770534)
,p_event_id=>wwv_flow_imp.id(152875000523770530)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'&P504_MSG_ALERT_COD_CORTO.'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P504_MSG_ALERT_COD_CORTO'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(152875694845770536)
,p_name=>'DA_VALIDAR_COD_ARTICULO'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P504_COD_ARTICULO'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(152875792638770537)
,p_event_id=>wwv_flow_imp.id(152875694845770536)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    :P504_MSG_ALERT_COD_ART := NULL;',
'',
'    IF NVL(length(:P504_COD_ARTICULO), 0)>29 THEN ',
'       :P504_MSG_ALERT_COD_ART := ''El codigo del Articulo no puede superar los 29 Caracteres'';',
'    END IF;',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        raise_application_error(-20000,SQLERRM);',
'END;'))
,p_attribute_02=>'P504_COD_ARTICULO'
,p_attribute_03=>'P504_MSG_ALERT_COD_ART'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(152875848199770538)
,p_event_id=>wwv_flow_imp.id(152875694845770536)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_FOCUS'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P504_COD_ARTICULO'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P504_MSG_ALERT_COD_ART'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(152875998079770539)
,p_event_id=>wwv_flow_imp.id(152875694845770536)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'&P504_MSG_ALERT_COD_ART.'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P504_MSG_ALERT_COD_ART'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(152876146788770541)
,p_event_id=>wwv_flow_imp.id(152875694845770536)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    BEGIN',
'      select max( fec_comprobante )',
'        into :P504_FEC_ULTIMA_COMP',
'        from st_costos_art',
'       where cod_empresa  = :P_COD_EMPRESA',
'         and cod_articulo = :P504_COD_ARTICULO;',
'    EXCEPTION',
'      when no_data_found then',
'        :P504_FEC_ULTIMA_COMP:= NULL ;',
'      when others then ',
'        :P504_FEC_ULTIMA_COMP := NULL ; ',
'    END;',
'',
'    BEGIN',
'      select costo_ultimo',
'        into :P504_COSTO_ULTIMO',
'        from st_costos_art',
'       where cod_empresa  = :P_COD_EMPRESA',
'         and cod_articulo = :P504_COD_ARTICULO',
'         and fec_comprobante    = :P504_FEC_ULTIMA_COMP;',
'    EXCEPTION',
'        when others then ',
'       :P504_FEC_ULTIMA_COMP := NULL ;',
'    END;',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'         raise_application_error(-20000,SQLERRM);',
'END;',
'',
'',
'',
''))
,p_attribute_02=>'P504_COD_ARTICULO,P504_FEC_ULTIMA_COMP'
,p_attribute_03=>'P504_FEC_ULTIMA_COMP,P504_COSTO_ULTIMO,P504_FEC_ULTIMA_COMP'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(152876276760770542)
,p_name=>'DA_VALIDAR_COD_MADRE'
,p_event_sequence=>40
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P504_COD_MADRE,P504_COD_ARTICULO'
,p_condition_element=>'P504_COD_MADRE'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(152876330725770543)
,p_event_id=>wwv_flow_imp.id(152876276760770542)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    :P504_MSG_ALERT := NULL;',
'    ',
'    IF :P504_COD_ARTICULO = :P504_COD_MADRE THEN',
'        :P504_MSG_ALERT := ''El articulo hijo y codigo de articulo no pueden ser iguales'';',
'    END IF;',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        raise_application_error(-20000,SQLERRM);',
'END;'))
,p_attribute_02=>'P504_COD_ARTICULO ,P504_COD_MADRE'
,p_attribute_03=>'P504_MSG_ALERT'
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
 p_id=>wwv_flow_imp.id(152876566383770545)
,p_event_id=>wwv_flow_imp.id(152876276760770542)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_FOCUS'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P504_COD_MADRE'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P504_MSG_ALERT'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(152876672062770546)
,p_event_id=>wwv_flow_imp.id(152876276760770542)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'&P504_MSG_ALERT.'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P504_MSG_ALERT'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(152876858173770548)
,p_name=>'DA_SETEAR_DATOS_LINEA'
,p_event_sequence=>50
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P504_COD_LINEA'
,p_condition_element=>'P504_COD_LINEA'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(152876917977770549)
,p_event_id=>wwv_flow_imp.id(152876858173770548)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'  select cod_categoria',
'    into :P504_COD_CATEGORIA',
'    from st_linea',
'   where cod_linea = :P504_COD_LINEA;',
'',
'   :P504_COD_LINEA_ST := :P504_COD_LINEA;',
'',
'EXCEPTION',
'  WHEN no_data_found THEN',
'    :P504_COD_CATEGORIA := NULL; ',
'',
'  WHEN OTHERS THEN',
'    :P504_COD_CATEGORIA := NULL; ',
'END;',
'',
'',
'',
''))
,p_attribute_02=>'P504_COD_LINEA'
,p_attribute_03=>'P504_COD_CATEGORIA,P504_COD_LINEA_ST'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(152877055557770550)
,p_name=>'DA_SETEAR_DATOS_DIVISION'
,p_event_sequence=>60
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P504_COD_FAMILIA'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(153434209173039601)
,p_event_id=>wwv_flow_imp.id(152877055557770550)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'  select cod_division',
'    into :P504_COD_DIVISION',
'    from st_familia',
'   where cod_familia = :P504_COD_FAMILIA',
'     and nvl(estado,''P'') NOT IN (''I'',''N'') ;',
'',
'EXCEPTION',
'  WHEN NO_DATA_FOUND THEN',
'    :P504_COD_DIVISION := NULL;',
'    ',
'  WHEN OTHERS THEN    ',
'   :P504_COD_DIVISION := NULL;',
' ',
'END;'))
,p_attribute_02=>'P504_COD_FAMILIA'
,p_attribute_03=>'P504_COD_DIVISION'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(153434477850039603)
,p_name=>'DA_ABRIR_EAN_ALTERNATIVO'
,p_event_sequence=>70
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(149063505422508037)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(154313085787956349)
,p_event_id=>wwv_flow_imp.id(153434477850039603)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
' ',
'    :P504_IND_REPORTE_EAN := ''1'';',
' '))
,p_attribute_03=>'P504_IND_REPORTE_EAN'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(155016956968928619)
,p_event_id=>wwv_flow_imp.id(153434477850039603)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P504_COD_EAN_ALTERNATIVO'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(154313123704956350)
,p_event_id=>wwv_flow_imp.id(153434477850039603)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(153434348566039602)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(153434535853039604)
,p_event_id=>wwv_flow_imp.id(153434477850039603)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(155015393026928603)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(153435366512039612)
,p_name=>'DA_CERRAR_EAN'
,p_event_sequence=>80
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(153435241380039611)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(153435472756039613)
,p_event_id=>wwv_flow_imp.id(153435366512039612)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(155015393026928603)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(153435727188039616)
,p_name=>'DA_BUSCAR_EAN'
,p_event_sequence=>90
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P504_SEQ_ID_EAN_SELEC'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(153435906957039618)
,p_event_id=>wwv_flow_imp.id(153435727188039616)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    SELECT C001',
'    INTO :P504_COD_EAN',
'    FROM APEX_COLLECTIONS',
'    WHERE COLLECTION_NAME = ''EAN_ALTERNATIVO''',
'    AND SEQ_ID = :P504_SEQ_ID_EAN_SELEC;',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'         raise_application_error(-20000,SQLERRM);',
'END;'))
,p_attribute_02=>'P504_SEQ_ID_EAN_SELEC'
,p_attribute_03=>'P504_COD_EAN'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(153435854271039617)
,p_event_id=>wwv_flow_imp.id(153435727188039616)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(155015393026928603)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(153436866426039627)
,p_name=>'DA_CERRAR_COD_ALTERNATIVO'
,p_event_sequence=>100
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(153436710421039626)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(153436902431039628)
,p_event_id=>wwv_flow_imp.id(153436866426039627)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(153436069340039619)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(153437110866039630)
,p_name=>'DA_ABRIR_COD_ALTERNATIVO'
,p_event_sequence=>110
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(149063694901508038)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(155019925226928649)
,p_event_id=>wwv_flow_imp.id(153437110866039630)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'   :P504_IND_REP_COD_ALT := ''1'';',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'         raise_application_error(-20000,SQLERRM);',
'END;'))
,p_attribute_03=>'P504_IND_REP_COD_ALT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(155020005948928650)
,p_event_id=>wwv_flow_imp.id(153437110866039630)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P504_COD_EAN_ALTERNATIVO,P504_COD_ALTERNATIVO'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(155449933362904701)
,p_event_id=>wwv_flow_imp.id(153437110866039630)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(155017325640928623)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(153437295691039631)
,p_event_id=>wwv_flow_imp.id(153437110866039630)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(153436069340039619)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(153437442652039633)
,p_name=>'DA_BUSCAR_COD_ALT'
,p_event_sequence=>120
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P504_SEQ_ID_COD_ALT_SEL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(153437656344039635)
,p_event_id=>wwv_flow_imp.id(153437442652039633)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    SELECT C001',
'    INTO :P504_COD_ALTERNO',
'    FROM APEX_COLLECTIONS',
'    WHERE COLLECTION_NAME = ''COD_ALTERNATIVO''',
'    AND SEQ_ID = :P504_SEQ_ID_COD_ALT_SEL;',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'       raise_application_error(-20000,SQLERRM);',
'END;'))
,p_attribute_02=>'P504_SEQ_ID_COD_ALT_SEL'
,p_attribute_03=>'P504_COD_ALTERNO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(153437713066039636)
,p_event_id=>wwv_flow_imp.id(153437442652039633)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(153436069340039619)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(154310856819956327)
,p_name=>'DA_BUSCAR_DATOS_ARTICULO'
,p_event_sequence=>130
,p_condition_element=>'P504_P_ROW_ID_ARTICULO'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(154310958595956328)
,p_event_id=>wwv_flow_imp.id(154310856819956327)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    SELECT ',
'           COD_ART_CORTO,',
'           COD_ARTICULO,',
'           COD_EAN,           ',
'           COD_MADRE,',
'           COD_ORIGEN_ART,',
'           ART_DESC_PROVEEDOR,',
'           COD_ALTERNO,',
'           descripcion,',
'           -----',
'           TIPO_MO,',
'           COD_PAIS_ORIGEN,',
'           COD_PUERTO,',
'           ORIGEN_PUERTO,',
'           COD_PROVEEDOR_DFLT,',
'           COD_RUBRO,',
'           COD_LINEA,',
'           COD_CATEGORIA,',
'           COD_FAMILIA,',
'           COD_DIVISION,',
'           COD_GRUPO_ART,',
'           COD_MARCA,',
'           COD_GRUPO_COMISION,',
'           COD_ENVASE,',
'           PRECIO_BASE,',
'           PRECIO_BASE_GARANTIA,',
'           IMPORTE_COMISION_PARTICULAR,',
'           IMPORTE_COMISION_GARANTIA,',
'           IMPORTE_COMISION_JT_15,',
'           IMPORTE_COMISION_JT_7,',
'           PORCENTAJE_SPP,',
'           COSTO_PROM,',
'           COSTO_ULTIMO,',
'           COSTO_PROM_US,',
'           COSTO_ULTIMO_US,',
'           TIP_CAMBIO,',
'           COSTO_FOB_OC,',
'           COSTO_FOB,',
'           COMENTARIO,',
'           AUTOAPILABLE,',
'           COD_PACK,',
'           CANT_X_PALLET,',
'           CANT_X_PAQUETE,',
'           CANT_PEDIDO,',
'           COD_USUARIO,',
'           FEC_ALTA,',
'           CANTIDAD_MINIMA_COMPRA,',
'           PLAZO_ENTREGA,',
'           DURACION_GARANTIA,',
'           IND_CICLO_VIDA,',
'           IND_MODIFICA_PRECIO,',
'           ESTADO,',
'           EN_OFERTA_WEB,',
'           IND_MANEJA_STOCK,',
'           IND_MANEJA_LOTES,',
'           IND_MANTENIMIENTO,',
'           GARANTIA,',
'           MANEJA_COSTO,',
'           IND_NO_DESCUENTO,',
'           IND_DISCONTINUADO,',
'           IND_NO_CUBRE_GARANTIA,',
'           IND_MUESTRA_WEB,',
'           IND_PARTICULAR,',
'           IND_TECNICO_29',
'     INTO ',
'           :P504_COD_ART_CORTO,',
'           :P504_COD_ARTICULO,',
'           :P504_COD_EAN,           ',
'           :P504_COD_MADRE,',
'           :P504_COD_ORIGEN_ART,',
'           :P504_ART_DESC_PROVEEDOR,',
'           :P504_COD_ALTERNO,',
'           :P504_DESC_ARTICULO,',
'           ',
'           :P504_TIPO_MO,',
'           :P504_COD_PAIS_ORIGEN,',
'           :P504_COD_PUERTO,',
'           :P504_ORIGEN_PUERTO,',
'           :P504_COD_PROVEEDOR_DFLT,',
'           :P504_COD_RUBRO,',
'           :P504_COD_LINEA,',
'           :P504_COD_CATEGORIA,',
'           :P504_COD_FAMILIA,',
'           :P504_COD_DIVISION,',
'           :P504_COD_GRUPO_ART,',
'           :P504_COD_MARCA,',
'           :P504_COD_GRUPO_COMISION,',
'           :P504_COD_ENVASE,',
'           :P504_PRECIO_BASE,',
'           :P504_PRECIO_BASE_GARANTIA,',
'           :P504_IMPORTE_COMI_PARTICULAR,',
'           :P504_IMPORTE_COMISION_GARANTIA,',
'           :P504_IMPORTE_COMISION_JT_15,',
'           :P504_IMPORTE_COMISION_JT_7,',
'           :P504_PORCENTAJE_SPP,',
'           :P504_COSTO_PROM,',
'           :P504_COSTO_ULTIMO,',
'           :P504_COSTO_PROM_US,',
'           :P504_COSTO_ULTIMO_US,',
'           :P504_TIP_CAMBIO,',
'           :P504_COSTO_FOB_OC,',
'           :P504_COSTO_FOB,',
'           :P504_COMENTARIO,',
'           :P504_AUTOAPILABLE,',
'           :P504_COD_PACK,',
'           :P504_CANT_X_PALLET,',
'           :P504_CANT_X_PAQUETE,',
'           :P504_CANT_PEDIDO,',
'           :P504_COD_USUARIO,',
'           :P504_FEC_ALTA,',
'           :P504_CANTIDAD_MINIMA_COMPRA,',
'           :P504_PLAZO_ENTREGA,',
'           :P504_DURACION_GARANTIA,',
'           :P504_IND_CICLO_VIDA,',
'           :P504_IND_MODIFICA_PRECIO,',
'           :P504_ESTADO,',
'           :P504_EN_OFERTA_WEB,',
'           :P504_IND_MANEJA_STOCK,',
'           :P504_IND_MANEJA_LOTES,',
'           :P504_IND_MANTENIMIENTO,',
'           :P504_GARANTIA,',
'           :P504_MANEJA_COSTO,',
'           :P504_IND_NO_DESCUENTO,',
'           :P504_IND_DISCONTINUADO,',
'           :P504_IND_NO_CUBRE_GARANTIA,',
'           :P504_IND_MUESTRA_WEB,',
'           :P504_IND_PARTICULAR,',
'           :P504_IND_TECNICO_29',
'     FROM ST_ARTICULOS',
'     WHERE ROWID = :P504_P_ROW_ID_ARTICULO;',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'         raise_application_error(-20000,SQLERRM);',
'END;',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
''))
,p_attribute_02=>'P504_P_ROW_ID_ARTICULO'
,p_attribute_03=>'P504_COD_ALTERNO,P504_COD_ART_CORTO,P504_COD_ARTICULO,P504_COD_EAN,P504_COD_MADRE,P504_COD_ORIGEN_ART,P504_ART_DESC_PROVEEDOR,P504_TIPO_MO,P504_COD_PAIS_ORIGEN,P504_COD_PUERTO,P504_ORIGEN_PUERTO,P504_COD_PROVEEDOR_DFLT,P504_COD_RUBRO,P504_COD_LINEA,P'
||'504_COD_CATEGORIA,P504_COD_FAMILIA,P504_COD_DIVISION,P504_COD_GRUPO_ART,P504_COD_MARCA,P504_COD_GRUPO_COMISION,P504_COD_ENVASE,P504_PRECIO_BASE,P504_PRECIO_BASE_GARANTIA,P504_IMPORTE_COMI_PARTICULAR,P504_IMPORTE_COMISION_GARANTIA,P504_IMPORTE_COMISIO'
||'N_JT_15,P504_IMPORTE_COMISION_JT_7,P504_PORCENTAJE_SPP,P504_COSTO_PROM,P504_COSTO_ULTIMO,P504_COSTO_PROM_US,P504_COSTO_ULTIMO_US,P504_TIP_CAMBIO,P504_COSTO_FOB_OC,P504_COSTO_FOB,P504_COMENTARIO,P504_AUTOAPILABLE,P504_COD_PACK,P504_CANT_X_PALLET,P504_'
||'CANT_X_PALLET,P504_CANT_X_PAQUETE,P504_COD_USUARIO,P504_FEC_ALTA,P504_CANTIDAD_MINIMA_COMPRA,P504_PLAZO_ENTREGA,P504_DURACION_GARANTIA,P504_IND_CICLO_VIDA,P504_IND_MODIFICA_PRECIO,P504_ESTADO,P504_EN_OFERTA_WEB,P504_IND_MANEJA_STOCK,P504_IND_MANEJA_L'
||'OTES,P504_IND_MANTENIMIENTO,P504_GARANTIA,P504_MANEJA_COSTO,P504_IND_NO_DESCUENTO,P504_IND_DISCONTINUADO,P504_IND_NO_CUBRE_GARANTIA,P504_IND_MUESTRA_WEB,P504_IND_PARTICULAR,P504_IND_TECNICO_29,P504_IND_CICLO_VIDA,P504_DESC_ARTICULO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(155016384051928613)
,p_name=>'DA_AGREGAR_EAN_ALTERNATIVO'
,p_event_sequence=>140
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(155015203721928602)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(155016441698928614)
,p_event_id=>wwv_flow_imp.id(155016384051928613)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    IF :P504_COD_ARTICULO IS NULL THEN',
unistr('        :P504_MSG_ALERT := ''Debe seleccionar un c\00F3digo de articulo para dar de alta un c\00F3digo EAN alternativo'';'),
'    ELSE',
'        IF :P504_COD_EAN_ALTERNATIVO IS NULL THEN',
unistr('            :P504_MSG_ALERT := ''El c\00F3digo EAN alternativo no puede ser nulo.'';'),
'        ELSE            ',
'            :P504_MSG_ALERT := NULL;',
'            STARTIMO.PR_AGREGAR_COL_EAN (PI_COD_ARTICULO => :P504_COD_ARTICULO,',
'                                         PI_COD_USUARIO => :APP_USER,',
'                                         PI_COD_EAN => :P504_COD_EAN_ALTERNATIVO);',
'        END IF;',
'    END IF;',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        raise_application_error(-20000,SQLERRM);',
'END;',
'',
'',
'',
''))
,p_attribute_02=>'P504_COD_ARTICULO,P504_COD_EAN_ALTERNATIVO'
,p_attribute_03=>'P504_MSG_ALERT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(155016747316928617)
,p_event_id=>wwv_flow_imp.id(155016384051928613)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'&P504_MSG_ALERT.'
,p_attribute_03=>'information'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P504_MSG_ALERT'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(155016625014928616)
,p_event_id=>wwv_flow_imp.id(155016384051928613)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(153434348566039602)
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P504_MSG_ALERT'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(155016531588928615)
,p_event_id=>wwv_flow_imp.id(155016384051928613)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P504_COD_EAN_ALTERNATIVO'
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P504_MSG_ALERT'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(155019462783928644)
,p_name=>'DA_ELIMINAR_EAN'
,p_event_sequence=>150
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P504_SEQ_ID_EAN_ELIMINAR'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(155019529995928645)
,p_event_id=>wwv_flow_imp.id(155019462783928644)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>unistr('\00BFDesea eliminar el registro?')
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(155019604959928646)
,p_event_id=>wwv_flow_imp.id(155019462783928644)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    STARTIMO.PR_BORRAR_COL_EAN (PI_SEQ_ID_ELIMINAR => :P504_SEQ_ID_EAN_ELIMINAR);',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        raise_application_error(-20000,SQLERRM);',
'END;'))
,p_attribute_02=>'P504_SEQ_ID_EAN_ELIMINAR'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(155019736980928647)
,p_event_id=>wwv_flow_imp.id(155019462783928644)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(153434348566039602)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(155450335794904705)
,p_name=>'DA_AGREGAR_COD_ALT'
,p_event_sequence=>160
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(155018909197928639)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(155450556035904707)
,p_event_id=>wwv_flow_imp.id(155450335794904705)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    IF :P504_COD_ARTICULO IS NULL THEN',
unistr('        :P504_MSG_ALERT := ''Debe seleccionar un c\00F3digo de articulo para dar de alta un c\00F3digo alternativo'';'),
'    ELSE',
'        IF :P504_COD_ALTERNATIVO IS NULL THEN',
unistr('            :P504_MSG_ALERT := ''El c\00F3digo alternativo no puede ser nulo.'';'),
'        ELSE            ',
'            :P504_MSG_ALERT := NULL;',
'            STARTIMO.PR_AGREGAR_COL_COD_ALT (PI_COD_ARTICULO => :P504_COD_ARTICULO,',
'                                         PI_COD_USUARIO => :APP_USER,',
'                                         PI_COD_ALTERNATIVO => :P504_COD_ALTERNATIVO);',
'        END IF;',
'    END IF;',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        raise_application_error(-20000,SQLERRM);',
'END;',
'',
'',
'',
''))
,p_attribute_02=>'P504_COD_ARTICULO,P504_COD_ALTERNATIVO'
,p_attribute_03=>'P504_MSG_ALERT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(155450677325904708)
,p_event_id=>wwv_flow_imp.id(155450335794904705)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'&P504_MSG_ALERT.'
,p_attribute_03=>'information'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P504_MSG_ALERT'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(155450725042904709)
,p_event_id=>wwv_flow_imp.id(155450335794904705)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(155017325640928623)
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P504_MSG_ALERT'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(155450861625904710)
,p_event_id=>wwv_flow_imp.id(155450335794904705)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P504_COD_EAN_ALTERNATIVO,P504_COD_ALTERNATIVO'
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P504_MSG_ALERT'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(155451023442904712)
,p_name=>'DA_ELIMINAR_COD_ALTERNATIVO'
,p_event_sequence=>170
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P504_SEQ_ID_COD_ALT_ELI'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(155451214118904714)
,p_event_id=>wwv_flow_imp.id(155451023442904712)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>unistr('\00BFDesea eliminar el registro?')
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(155451377688904715)
,p_event_id=>wwv_flow_imp.id(155451023442904712)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    STARTIMO.PR_BORRAR_COL_COD_ALTERNATIVO (PI_SEQ_ID_ELIMINAR => :P504_SEQ_ID_COD_ALT_ELI);',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        raise_application_error(-20000,SQLERRM);',
'END;'))
,p_attribute_02=>'P504_SEQ_ID_COD_ALT_ELI'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(155451442568904716)
,p_event_id=>wwv_flow_imp.id(155451023442904712)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(155017325640928623)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(155451574912904717)
,p_name=>'DA_LIMPIAR_CAMPOS'
,p_event_sequence=>180
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(155017291611928622)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(155451623910904718)
,p_event_id=>wwv_flow_imp.id(155451574912904717)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_01=>'LIMPIAR'
,p_attribute_02=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(155451869202904720)
,p_name=>'DA_LLAMAR_PAG_509'
,p_event_sequence=>190
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(155017011975928620)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(155451932917904721)
,p_event_id=>wwv_flow_imp.id(155451869202904720)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_01=>'BUSCAR'
,p_attribute_02=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(155453164905904733)
,p_name=>'DA_ABRIR_PROD_REL'
,p_event_sequence=>200
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(152872502054770505)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(155453269818904734)
,p_event_id=>wwv_flow_imp.id(155453164905904733)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(155452534721904727)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(155453483979904736)
,p_name=>'DA_CERRAR_PRODUCTOS_RELACIONADOS'
,p_event_sequence=>210
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(155453094222904732)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(155453544191904737)
,p_event_id=>wwv_flow_imp.id(155453483979904736)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(155452534721904727)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(155454564904904747)
,p_name=>'DA_ABRIR_EQUIVALENCIA'
,p_event_sequence=>220
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(152872694529770506)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(155454681740904748)
,p_event_id=>wwv_flow_imp.id(155454564904904747)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(155454146085904743)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(156680788400798605)
,p_name=>'DA_CERRAR_EQUIVALENCIA'
,p_event_sequence=>230
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(155454422545904746)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(156680868851798606)
,p_event_id=>wwv_flow_imp.id(156680788400798605)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(155454146085904743)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(156681052406798608)
,p_name=>'DA_SETEAR_DESC_IVA'
,p_event_sequence=>240
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P504_COD_IVA'
,p_condition_element=>'P504_COD_IVA'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(156681181794798609)
,p_event_id=>wwv_flow_imp.id(156681052406798608)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    select porc_iva_venta',
'    into :P504_DESC_IVA',
'    from st_iva',
'   where cod_iva = :P504_COD_IVA;',
'',
'EXCEPTION',
'    WHEN NO_DATA_FOUND THEN',
'        :P504_DESC_IVA := NULL; ',
'    WHEN OTHERS THEN',
'         raise_application_error(-20000,''Error en la tabla de Iva'' || SQLERRM);        ',
'END;'))
,p_attribute_02=>'P504_COD_IVA'
,p_attribute_03=>'P504_DESC_IVA'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(156681579966798613)
,p_name=>'DA_SETEAR_CHECKBOX_VINCULAR'
,p_event_sequence=>250
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P504_VALOR_VINCULAR'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(156681724071798615)
,p_event_id=>wwv_flow_imp.id(156681579966798613)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
' ',
'',
'    NULL;',
' '))
,p_attribute_02=>'P504_SEQ_ID_VINCULAR,P504_VALOR_VINCULAR'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(156681696996798614)
,p_event_id=>wwv_flow_imp.id(156681579966798613)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'        APEX_COLLECTION.UPDATE_MEMBER_ATTRIBUTE (P_COLLECTION_NAME => ''PRODUCTOS_RELACIONADOS'',',
'                                                 P_SEQ             => :P504_SEQ_ID_VINCULAR,',
'                                                 P_ATTR_NUMBER     => 1,',
'                                                 P_ATTR_VALUE      => :P504_VALOR_VINCULAR);',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        raise_application_error(-20000,SQLERRM);',
'END;',
'',
''))
,p_attribute_02=>'P504_SEQ_ID_VINCULAR,P504_VALOR_VINCULAR'
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
 p_id=>wwv_flow_imp.id(156682081589798618)
,p_name=>'DA_SETEAR_CHECKBOX_EQUIVALENCIA'
,p_event_sequence=>260
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P504_VALOR_EQUIVALENCIA'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(156682259177798620)
,p_event_id=>wwv_flow_imp.id(156682081589798618)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
' ',
'    NULL;',
' '))
,p_attribute_02=>'P504_SEQ_ID_EQUIVALENCIA,P504_VALOR_EQUIVALENCIA'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(156682310094798621)
,p_event_id=>wwv_flow_imp.id(156682081589798618)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'        APEX_COLLECTION.UPDATE_MEMBER_ATTRIBUTE (P_COLLECTION_NAME => ''EQUIVALENCIA_REPUESTOS'',',
'                                                 P_SEQ             => :P504_SEQ_ID_EQUIVALENCIA,',
'                                                 P_ATTR_NUMBER     => 1,',
'                                                 P_ATTR_VALUE      => :P504_VALOR_EQUIVALENCIA);',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'         raise_application_error(-20000,SQLERRM);',
'END;',
'',
'',
'',
''))
,p_attribute_02=>'P504_SEQ_ID_EQUIVALENCIA,P504_VALOR_EQUIVALENCIA'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(156682618610798624)
,p_name=>'DA_GUARDAR_CAMBIOS'
,p_event_sequence=>270
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(155017137629928621)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(156682747187798625)
,p_event_id=>wwv_flow_imp.id(156682618610798624)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_01=>'GUARDAR'
,p_attribute_02=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(156683040791798628)
,p_name=>'DA_OCULTAR_BOTONES'
,p_event_sequence=>280
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(156683132193798629)
,p_event_id=>wwv_flow_imp.id(156683040791798628)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(152872502054770505)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(156683237593798630)
,p_event_id=>wwv_flow_imp.id(156683040791798628)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(152872694529770506)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(156683376937798631)
,p_name=>'DA_SETEAR_COD_MAX'
,p_event_sequence=>290
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P504_COD_MARCA'
,p_condition_element=>'P504_COD_MARCA'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(156683417007798632)
,p_event_id=>wwv_flow_imp.id(156683376937798631)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    IF :P504_COD_MARCA NOT IN ( ''TRA'',''EV'',''MOU'',''ROW'') THEN',
'        BEGIN',
'            SELECT MAX(substr(cod_art_corto,1,1))||TO_CHAR(MAX(TO_NUMBER(substr(cod_art_corto,2,4))))',
'            	INTO :P504_MAX_COD',
'            	FROM st_articulos',
'            	WHERE cod_empresa = :P_COD_EMPRESA',
'            	AND cod_marca = :P504_COD_MARCA;',
'            EXCEPTION    ',
'                WHEN OTHERS THEN',
'                    NULL; ',
'            END;',
'    END IF;',
'',
'    IF :P504_COD_MARCA IN (''TRA'',''EV'',''MOU'',''ROW'')  THEN',
'        BEGIN',
'            SELECT MAX(substr(cod_art_corto,1,2))||TO_CHAR(MAX(TO_NUMBER(substr(cod_art_corto,3,4))))',
'            	into :P504_MAX_COD',
'            	from st_articulos',
'            	where cod_empresa = :P_COD_EMPRESA',
'            	and cod_marca = :P504_COD_MARCA;',
'            EXCEPTION    ',
'                WHEN OTHERS THEN',
'                NULL; ',
'        END;',
'    END IF;',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        raise_application_error(-20000,SQLERRM);',
'END;'))
,p_attribute_02=>'P504_COD_MARCA'
,p_attribute_03=>'P504_MAX_COD'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(627199036797991313)
,p_name=>'DA_SETEAR_DATOS_CATEGORIA'
,p_event_sequence=>300
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P504_COD_CATEGORIA'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(627199150195991314)
,p_event_id=>wwv_flow_imp.id(627199036797991313)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'  select cod_familia',
'    into :P504_COD_FAMILIA',
'    from st_categorias',
'   where cod_categoria = :P504_COD_CATEGORIA',
'   and cod_empresa = :P_COD_EMPRESA;',
'',
'   --:P504_COD_LINEA_ST := :P504_COD_LINEA;',
'',
'EXCEPTION',
'  WHEN no_data_found THEN',
'    :P504_COD_FAMILIA := NULL; ',
'',
'  WHEN OTHERS THEN',
'    :P504_COD_FAMILIA := NULL; ',
'END;',
'',
'',
'',
''))
,p_attribute_02=>'P504_COD_CATEGORIA'
,p_attribute_03=>'P504_COD_FAMILIA'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(148531928199621711)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_INIT'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    :P504_COD_MODULO := ''ST'';',
'    :P504_COD_FORMA := ''STARTIMO'';',
'',
'    :P504_CAMBIA_PRECIO :=  busca_permiso (:P_COD_EMPRESA,',
'                                           :P504_COD_FORMA,',
'                                           :P_COD_USUARIO,',
'                                           ''CAMBIA_PRECIO'');',
'',
'    :P504_VE_AUD := busca_permiso (:P_COD_EMPRESA,',
'                                   :P504_COD_FORMA,',
'                                   :P_COD_USUARIO,',
'                                   ''VER_AUDITORIA'');',
'',
'    :P504_MODIFICA_ARTICULOS := busca_permiso (:P_COD_EMPRESA,',
'                                   :P504_COD_FORMA,',
'                                   :P_COD_USUARIO,',
'                                   ''MODIFICA_ARTICULOS'');',
'',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'         raise_application_error(-20000,SQLERRM);',
'END;'))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(154310765626956326)
,p_process_sequence=>20
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'PR_LIMPIAR_DATOS'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_process_when=>'P504_P_ROW_ID_ARTICULO'
,p_process_when_type=>'ITEM_IS_NULL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(154310542754956324)
,p_process_sequence=>40
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_SETEAR_DATOS'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    :P504_IND_MANEJA_STOCK := ''S'';',
'    :P504_IND_MANEJA_LOTES := ''S'';',
'    :P504_ESTADO := ''S'';',
'    :P504_IND_MANTENIMIENTO := ''S'';',
'    :P504_IND_MODIFICA_PRECIO := ''N'';',
'    :P504_COD_COLOR := bs_busca_parametro (''ST'', ''COLOR_DEF'');',
'    :P504_FEC_ALTA := sysdate;',
'    :P504_GARANTIA := ''N'';',
'    :P504_EN_OFERTA_WEB := ''N'';',
'    :P504_IND_NO_DESCUENTO := ''N'';',
'    :P504_IND_CICLO_VIDA := ''N'';',
'    :P504_IND_PARTICULAR := ''X'';',
'    :P504_IND_DISCONTINUADO := ''N'';',
'    :P504_IND_MUESTRA_WEB := ''S'';',
'    :P504_CANTIDAD_MINIMA_COMPRA := ''1'';',
'    :P504_PLAZO_ENTREGA := NULL;',
'    :P504_COD_USUARIO := :APP_USER;',
'    :P504_DURACION_GARANTIA := ''0'';',
'    :P504_COD_UNIDAD_MEDIDA := ''UN'';',
'    :P504_COD_MONEDA_BASE := ''1'';',
'    :P504_COD_RELACION_UM := ''1'';',
'    :P504_COD_IVA := ''1'';',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'       raise_application_error(-20000,SQLERRM);',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_process_when=>'P504_P_ROW_ID_ARTICULO'
,p_process_when_type=>'ITEM_IS_NULL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(154310697804956325)
,p_process_sequence=>50
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_CREAR_COL'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    STARTIMO.PR_CREAR_COL_COD_ALT (PI_COD_ARTICULO => :P504_COD_ARTICULO);',
'',
'    STARTIMO.PR_CREAR_COL_EAN (PI_COD_ARTICULO => :P504_COD_ARTICULO);',
'',
'    STARTIMO.PR_CREAR_COL_PROD_REL (PI_COD_RUBRO => :P504_COD_RUBRO,',
'                                    PI_COD_ARTICULO => :P504_COD_ARTICULO);',
'',
'    STARTIMO.PR_CREAR_COL_EQUI_REP (PI_COD_ARTICULO => :P504_COD_ARTICULO);',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        raise_application_error(-20000,SQLERRM);',
'END;'))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(155451795989904719)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'PR_LIMPIAR_CAMPOS'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'LIMPIAR'
,p_process_when_type=>'REQUEST_EQUALS_CONDITION'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(156682565418798623)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_GUARDAR_CAMBIOS'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'     STARTIMO.PR_GUARDAR_ARTICULO_BD (PI_ROW_ID => :P504_P_ROW_ID_ARTICULO,',
'                                      PI_COD_ART_CORTO => :P504_COD_ART_CORTO,',
'                                      PI_COD_ARTICULO => :P504_COD_ARTICULO,',
'                                      PI_DESCRIPCION => :P504_DESC_ARTICULO,-- ADD JUAN ASIS 5/6/24',
'                                      PI_COD_EAN => :P504_COD_EAN,           ',
'                                      PI_COD_MADRE => :P504_COD_MADRE,',
'                                      PI_COD_ORIGEN_ART => :P504_COD_ORIGEN_ART,',
'                                      PI_ART_DESC_PROVEEDOR => :P504_ART_DESC_PROVEEDOR,',
'                                      PI_COD_ALTERNO => :P504_COD_ALTERNO,                                   ',
'                                       -----',
'                                      PI_TIPO_MO => :P504_TIPO_MO,',
'                                      PI_COD_PAIS_ORIGEN => :P504_COD_PAIS_ORIGEN,',
'                                      PI_COD_PUERTO => :P504_COD_PUERTO,',
'                                      PI_ORIGEN_PUERTO => :P504_ORIGEN_PUERTO,',
'                                      PI_COD_PROVEEDOR_DFLT => :P504_COD_PROVEEDOR_DFLT,',
'                                      PI_COD_RUBRO => :P504_COD_RUBRO,',
'                                      PI_COD_LINEA => :P504_COD_LINEA,',
'                                      PI_COD_CATEGORIA => :P504_COD_CATEGORIA,',
'                                      PI_COD_FAMILIA => :P504_COD_FAMILIA,',
'                                      PI_COD_DIVISION => :P504_COD_DIVISION,',
'                                      PI_COD_GRUPO_ART => :P504_COD_GRUPO_ART,',
'                                      PI_COD_MARCA => :P504_COD_MARCA,',
'                                      PI_COD_GRUPO_COMISION => :P504_COD_GRUPO_COMISION,',
'                                      PI_COD_ENVASE => :P504_COD_ENVASE,',
'                                      PI_PRECIO_BASE => :P504_PRECIO_BASE,',
'                                      PI_PRECIO_BASE_GARANTIA => :P504_PRECIO_BASE_GARANTIA,',
'                                      PI_IMPORTE_COMI_PARTICULAR => :P504_IMPORTE_COMI_PARTICULAR,',
'                                      PI_IMPORTE_COMISION_GARANTIA => :P504_IMPORTE_COMISION_GARANTIA,',
'                                      PI_IMPORTE_COMISION_JT_15 => :P504_IMPORTE_COMISION_JT_15,',
'                                      PI_IMPORTE_COMISION_JT_7 => :P504_IMPORTE_COMISION_JT_7,',
'                                      PI_PORCENTAJE_SPP => :P504_PORCENTAJE_SPP,',
'                                      PI_COSTO_PROM => :P504_COSTO_PROM,',
'                                      PI_COSTO_ULTIMO => :P504_COSTO_ULTIMO,',
'                                      PI_COSTO_PROM_US => :P504_COSTO_PROM_US,',
'                                      PI_COSTO_ULTIMO_US => :P504_COSTO_ULTIMO_US,',
'                                      PI_TIP_CAMBIO => :P504_TIP_CAMBIO,',
'                                      PI_COSTO_FOB_OC => :P504_COSTO_FOB_OC,',
'                                      PI_COSTO_FOB => :P504_COSTO_FOB,',
'                                      PI_COMENTARIO => :P504_COMENTARIO,',
'                                      PI_AUTOAPILABLE => :P504_AUTOAPILABLE,',
'                                      PI_COD_PACK => :P504_COD_PACK,',
'                                      PI_CANT_X_PALLET => :P504_CANT_X_PALLET,',
'                                      PI_CANT_X_PAQUETE => :P504_CANT_X_PAQUETE,',
'                                      PI_CANT_PEDIDO => :P504_CANT_PEDIDO,',
'                                      PI_COD_USUARIO => :P504_COD_USUARIO,',
'                                      PI_FEC_ALTA => :P504_FEC_ALTA,',
'                                      PI_CANTIDAD_MINIMA_COMPRA => :P504_CANTIDAD_MINIMA_COMPRA,',
'                                      PI_PLAZO_ENTREGA => :P504_PLAZO_ENTREGA,',
'                                      PI_DURACION_GARANTIA => :P504_DURACION_GARANTIA,',
'                                      PI_IND_CICLO_VIDA => :P504_IND_CICLO_VIDA,',
'                                      PI_IND_MODIFICA_PRECIO => :P504_IND_MODIFICA_PRECIO,',
'                                      PI_ESTADO => :P504_ESTADO,',
'                                      PI_EN_OFERTA_WEB => :P504_EN_OFERTA_WEB,',
'                                      PI_IND_MANEJA_STOCK => :P504_IND_MANEJA_STOCK,',
'                                      PI_IND_MANEJA_LOTES => :P504_IND_MANEJA_LOTES,',
'                                      PI_IND_MANTENIMIENTO => :P504_IND_MANTENIMIENTO,',
'                                      PI_GARANTIA => :P504_GARANTIA,',
'                                      PI_MANEJA_COSTO => :P504_MANEJA_COSTO,',
'                                      PI_IND_NO_DESCUENTO => :P504_IND_NO_DESCUENTO,',
'                                      PI_IND_DISCONTINUADO => :P504_IND_DISCONTINUADO,',
'                                      PI_IND_NO_CUBRE_GARANTIA => :P504_IND_NO_CUBRE_GARANTIA,',
'                                      PI_IND_MUESTRA_WEB => :P504_IND_MUESTRA_WEB,',
'                                      PI_IND_PARTICULAR => :P504_IND_PARTICULAR,',
'                                      PI_IND_TECNICO_29 => :P504_IND_TECNICO_29);',
'',
'     STARTIMO.PR_GUARDAR_EAN_BD;',
'',
'     STARTIMO.PR_GUARDAR_COD_ALT_BD;',
'',
'',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        ROLLBACK;',
'         raise_application_error(-20000,SQLERRM);',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>unistr('\00A1Ocurri\00F3 un error!')
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'GUARDAR'
,p_process_when_type=>'REQUEST_EQUALS_CONDITION'
,p_process_success_message=>unistr('\00A1Datos guardados exitosamente!')
);
wwv_flow_imp.component_end;
end;
/
