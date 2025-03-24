prompt --application/pages/page_00241
begin
--   Manifest
--     PAGE: 00241
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
 p_id=>241
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'STPROMOC'
,p_alias=>'STPROMOC'
,p_step_title=>'STPROMOC'
,p_autocomplete_on_off=>'OFF'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.apex-item-single-checkbox{',
'    color:  darkblue  !important;',
'   font-weight:bold  !important; ',
'    } ',
'.t-Form-label {',
'    color:  #003A85  !important;',
'    } ',
'',
'.t-Form-fieldContainer--floatingLabel .apex-item-select, .t-Form-fieldContainer--floatingLabel .apex-item-text, .t-Form-fieldContainer--floatingLabel .apex-item-textarea, .t-Form-fieldContainer--floatingLabel .oj-text-field-container:not(.oj-text-fie'
||'ld-has-start-slot) .oj-text-field-input { font-weight: bold ;}',
' ',
' #btndet{   ',
'        background:white;',
'        background-image: linear-gradient(180deg, rgb(1, 1, 131)  0%, #003a85de 100%);',
'        color:  yellow; ',
'        justify-content: center;',
'        align-items: center; ',
'        box-shadow: #79beca 1px 1px 5px 1px; ',
'        border-style: solid;',
'        border-width: 0.5px;',
'        border-color: darkblue; ',
'        ',
'}',
' ',
'.t-Region-bodyWrap{',
'                background:#487ab8 ;',
'        }',
'',
'/*    ',
'.apex-item-group apex-item-group--popup-lov, .apex-item-text{',
'    border-color: darkblue !important;} font-weight: bold !important; ',
'*/',
'',
'.apex-item-text, .t-Form-fieldContainer--floatingLabel .apex-item-textarea , .apex-item-display-only{',
'    border-color: #3c5b83 !important;',
'    background: #FCFCF4 !important;',
'    border-style: solid !important; ',
'    }',
'',
'',
'.t-Tabs--pill .t-Tabs-link {',
'    background-color:  #003A85   !important;',
'    color:  yellow  !important; ',
'    border-color: white !important;',
'    font-style: oblique;',
'',
'}',
'.t-Tabs--pill .t-Tabs-link:focus {',
'    background-color:  darkblue   !important;',
'    color:  yellow  !important; }',
'',
'',
'',
'    .col-2  { background: #35355336   !important;}'))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_last_updated_by=>'NZARATE'
,p_last_upd_yyyymmddhh24miss=>'20241119085851'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(55455384642566433)
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
 p_id=>wwv_flow_imp.id(55456094264566440)
,p_plug_name=>'PROMOCION CABECERA'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>1000
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(55456237834566442)
,p_plug_name=>'IZQUIERDA'
,p_parent_plug_id=>wwv_flow_imp.id(55456094264566440)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(55456399116566443)
,p_plug_name=>'CENTRO'
,p_parent_plug_id=>wwv_flow_imp.id(55456094264566440)
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
 p_id=>wwv_flow_imp.id(55456452918566444)
,p_plug_name=>unistr('DATOS DE AUTORIZACI\00D3N')
,p_parent_plug_id=>wwv_flow_imp.id(55456094264566440)
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
 p_id=>wwv_flow_imp.id(55456151961566441)
,p_plug_name=>'DETALLE PROMOCION'
,p_region_name=>'detalle_promocion'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>1010
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'        SEQ_ID SEQ_ID,',
'        C001  COD_CORTO_ART,',
'        C002  COD_ARTICULO,',
'        C003  DESCRIPCION,',
'        C004  CANTIDAD_COMPRA_MIN,',
'        C005  PROMOTION_VOLUME,',
'        C006  ADDITIONAL_LEAD_TIME,',
'        C007  PRICE_FROM,',
'        C008  PRICE_FOR,',
'        C009  COD_TIP_PROMOCION,',
'        C010  TIPO_PROMOCION,',
'        C011  MARGEN,',
'        C012  PORCENTAJE,',
'        C013  CANTIDAD,',
'        C014  SEPARA_DEMANDA,',
'        C015  ESTADO,',
'        NULL  EDITAR,',
'        NULL  ELIMINAR,',
'        NULL  DETALLE,',
'        NULL  AGREGAR_REGALO,',
'        C024 ID_REGISTRO',
'',
'',
'FROM APEX_COLLECTIONS',
'WHERE COLLECTION_NAME = ''PRODUCTOS''',
'AND nvl(c020, ''O'') <> ''B'';'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'DETALLE PROMOCION'
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
 p_id=>wwv_flow_imp.id(58709759874299946)
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
,p_internal_uid=>58709759874299946
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(58709863780299947)
,p_db_column_name=>'COD_CORTO_ART'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Cod Corto Art'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(58709984549299948)
,p_db_column_name=>'COD_ARTICULO'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Cod Articulo'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(58710069249299949)
,p_db_column_name=>'DESCRIPCION'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Descripcion'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(58710197671299950)
,p_db_column_name=>'CANTIDAD_COMPRA_MIN'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Cantidad Compra Min'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(59074540607380901)
,p_db_column_name=>'PROMOTION_VOLUME'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Promotion Volume'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(59074610816380902)
,p_db_column_name=>'ADDITIONAL_LEAD_TIME'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Additional Lead Time'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(59074748220380903)
,p_db_column_name=>'PRICE_FROM'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Price From'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(59074881579380904)
,p_db_column_name=>'PRICE_FOR'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Price For'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(59074981635380905)
,p_db_column_name=>'COD_TIP_PROMOCION'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Cod Tip Promocion'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(59075031536380906)
,p_db_column_name=>'TIPO_PROMOCION'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Tipo Promocion'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(59075147380380907)
,p_db_column_name=>'MARGEN'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Margen'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(59075253769380908)
,p_db_column_name=>'PORCENTAJE'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Porcentaje'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(59075338798380909)
,p_db_column_name=>'CANTIDAD'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Cantidad'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(59075432609380910)
,p_db_column_name=>'SEPARA_DEMANDA'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>'Separa Demanda'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(59075578075380911)
,p_db_column_name=>'ESTADO'
,p_display_order=>150
,p_column_identifier=>'O'
,p_column_label=>'Estado'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_column_alignment=>'CENTER'
,p_rpt_named_lov=>wwv_flow_imp.id(60882894299719406)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(59075938301380915)
,p_db_column_name=>'EDITAR'
,p_display_order=>160
,p_column_identifier=>'P'
,p_column_label=>'Editar'
,p_column_link=>'javascript:$s(''P241_SEQ_ID_EDITAR'',#ID_REGISTRO#);'
,p_column_linktext=>'<span aria-hidden="true" class="fa fa-edit"></span>'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(59076096391380916)
,p_db_column_name=>'ELIMINAR'
,p_display_order=>170
,p_column_identifier=>'Q'
,p_column_label=>'Eliminar'
,p_column_link=>'javascript:$s(''P241_SEQ_ID_ELIMINAR'',#ID_REGISTRO#);'
,p_column_linktext=>'<span class="fa fa-trash" aria-hidden="true"></span>'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(59076396163380919)
,p_db_column_name=>'SEQ_ID'
,p_display_order=>180
,p_column_identifier=>'R'
,p_column_label=>'Seq Id'
,p_column_type=>'NUMBER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(59078913900380945)
,p_db_column_name=>'DETALLE'
,p_display_order=>190
,p_column_identifier=>'S'
,p_column_label=>'Detalle'
,p_column_link=>'javascript:$s(''P241_SEQ_ID_DETALLE'',''#ID_REGISTRO#'');'
,p_column_linktext=>'<span class="fa fa-search" aria-hidden="true"></span>'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(59079085683380946)
,p_db_column_name=>'AGREGAR_REGALO'
,p_display_order=>200
,p_column_identifier=>'T'
,p_column_label=>'Agregar Regalo'
,p_column_link=>'javascript:$s(''P241_SEQ_ID_AGREGAR_REG'',#ID_REGISTRO#);'
,p_column_linktext=>'<span aria-hidden="true" class="fa fa-plus-circle"></span>'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(156807078417017242)
,p_db_column_name=>'ID_REGISTRO'
,p_display_order=>210
,p_column_identifier=>'U'
,p_column_label=>'Id Registro'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(59085136754381456)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'590852'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'ID_REGISTRO:COD_CORTO_ART:COD_ARTICULO:DESCRIPCION:CANTIDAD_COMPRA_MIN:COD_TIP_PROMOCION:TIPO_PROMOCION:MARGEN:PORCENTAJE:CANTIDAD:ESTADO:EDITAR:ELIMINAR:DETALLE:AGREGAR_REGALO:'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(58706456584299913)
,p_plug_name=>'CREAR/EDITAR PRODUCTO'
,p_region_template_options=>'#DEFAULT#:js-dialog-size600x400'
,p_plug_template=>wwv_flow_imp.id(40117728043263659)
,p_plug_display_sequence=>1060
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(59077734737380933)
,p_plug_name=>unistr('DATOS DE RELACI\00D3N')
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>1030
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_grid_column_span=>3
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(59078060620380936)
,p_plug_name=>'REGALOS'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>1040
,p_plug_new_grid_row=>false
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'        SEQ_ID SEQ_ID_REG,',
'        C001  COD_CORTO_ART,',
'        C002  COD_ARTICULO,',
'        C003  DESCRIPCION,',
'        C004  CANTIDAD_COMPRA_MIN,',
'        C005  PROMOTION_VOLUME,',
'        C006  ADDITIONAL_LEAD_TIME,',
'        C007  PRICE_FROM,',
'        C008  PRICE_FOR,',
'        C009  COD_TIP_PROMOCION,',
'        C010  TIPO_PROMOCION,',
'        C011  MARGEN,',
'        C012  PORCENTAJE,',
'        C013  CANTIDAD,',
'        C014  SEPARA_DEMANDA,',
'        C015  ESTADO,',
'        C016  SEQ_ID_COL_PROD,',
'        C017  COD_ARTICULO_PRINCIPAL,',
'        NULL  EDITAR,',
'        NULL  ELIMINAR',
'',
'',
'FROM APEX_COLLECTIONS',
'WHERE COLLECTION_NAME = ''REGALOS''',
'AND c016 = :P241_SEQ_ID_DETALLE',
'--AND c017 = :P241_COD_ARTICULO_PRINCIPAL',
'AND nvl(c020, ''O'') <> ''B''',
'AND :P241_INDICADOR_REPORTE_REGALOS = ''1'';'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P241_COD_ARTICULO_PRINCIPAL,P241_SEQ_ID_DETALLE,P241_INDICADOR_REPORTE_REGALOS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'REGALOS'
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
 p_id=>wwv_flow_imp.id(60028682112259239)
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
,p_internal_uid=>60028682112259239
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(60028973181259242)
,p_db_column_name=>'COD_CORTO_ART'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Cod Corto Art'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(60029056080259243)
,p_db_column_name=>'COD_ARTICULO'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Cod Articulo'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(60029140318259244)
,p_db_column_name=>'DESCRIPCION'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Descripcion'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(60029229545259345)
,p_db_column_name=>'CANTIDAD_COMPRA_MIN'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Cantidad Compra Min'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(60029359608259346)
,p_db_column_name=>'PROMOTION_VOLUME'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Promotion Volume'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(60029423683259347)
,p_db_column_name=>'ADDITIONAL_LEAD_TIME'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Additional Lead Time'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(60029576507259348)
,p_db_column_name=>'PRICE_FROM'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Price From'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(60029613684259349)
,p_db_column_name=>'PRICE_FOR'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Price For'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(60029764704259350)
,p_db_column_name=>'COD_TIP_PROMOCION'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Cod Tip Promocion'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(60109058809359901)
,p_db_column_name=>'TIPO_PROMOCION'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Tipo Promocion'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(60109167571359902)
,p_db_column_name=>'MARGEN'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Margen'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(60109269030359903)
,p_db_column_name=>'PORCENTAJE'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Porcentaje'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(60109306264359904)
,p_db_column_name=>'CANTIDAD'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>'Cantidad'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(60109455106359905)
,p_db_column_name=>'SEPARA_DEMANDA'
,p_display_order=>150
,p_column_identifier=>'O'
,p_column_label=>'Separa Demanda'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(60109556178359906)
,p_db_column_name=>'ESTADO'
,p_display_order=>160
,p_column_identifier=>'P'
,p_column_label=>'Estado'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_column_alignment=>'CENTER'
,p_rpt_named_lov=>wwv_flow_imp.id(60882894299719406)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(60109644599359907)
,p_db_column_name=>'EDITAR'
,p_display_order=>170
,p_column_identifier=>'Q'
,p_column_label=>'Editar'
,p_column_link=>'javascript:$s(''P241_SEQ_ID_EDITAR_REG'',''#SEQ_ID_REG#'');'
,p_column_linktext=>'<span aria-hidden="true" class="fa fa-edit"></span>'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(60109739800359908)
,p_db_column_name=>'ELIMINAR'
,p_display_order=>180
,p_column_identifier=>'R'
,p_column_label=>'Eliminar'
,p_column_link=>'javascript:$s(''P241_SEQ_ID_ELIMINAR_REG'',''#SEQ_ID_REG#'');'
,p_column_linktext=>'<span class="fa fa-trash" aria-hidden="true"></span>'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(60109909482359910)
,p_db_column_name=>'SEQ_ID_COL_PROD'
,p_display_order=>190
,p_column_identifier=>'S'
,p_column_label=>'Seq Id Col Prod'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(60110740691359918)
,p_db_column_name=>'SEQ_ID_REG'
,p_display_order=>200
,p_column_identifier=>'T'
,p_column_label=>'Seq Id Reg'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(61221813149647328)
,p_db_column_name=>'COD_ARTICULO_PRINCIPAL'
,p_display_order=>210
,p_column_identifier=>'U'
,p_column_label=>'Cod Articulo Principal'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(60122279014365350)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'601223'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'COD_CORTO_ART:COD_ARTICULO:DESCRIPCION:CANTIDAD_COMPRA_MIN:COD_TIP_PROMOCION:TIPO_PROMOCION:MARGEN:PORCENTAJE:CANTIDAD:SEPARA_DEMANDA:ESTADO:EDITAR:ELIMINAR'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(59079121019380947)
,p_plug_name=>'CREAR/EDITAR REGALO'
,p_region_template_options=>'#DEFAULT#:js-dialog-size600x400'
,p_plug_template=>wwv_flow_imp.id(40117728043263659)
,p_plug_display_sequence=>1070
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(60948650594303001)
,p_plug_name=>'CLIENTES EXCLUIDOS'
,p_region_template_options=>'#DEFAULT#:js-dialog-size720x480'
,p_plug_template=>wwv_flow_imp.id(40117728043263659)
,p_plug_display_sequence=>1080
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(60948795360303002)
,p_plug_name=>'CLIENTES'
,p_parent_plug_id=>wwv_flow_imp.id(60948650594303001)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'        SEQ_ID SEQ_ID_CLI,',
'        C001  COD_EMPRESA,',
'        C002  EVENTID,',
'        C003  COD_CLIENTE,',
'        NULL  ELIMINAR',
'',
'',
'FROM APEX_COLLECTIONS',
'WHERE COLLECTION_NAME = ''CLIENTES_EXCLUIDOS''',
'AND nvl(c020, ''O'') <> ''B''',
'AND :P241_INDICADOR_REPORTE_CLIE = ''1'';'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'CLIENTES'
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
 p_id=>wwv_flow_imp.id(60951258252303027)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_search_bar=>'N'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_enable_mail_download=>'Y'
,p_owner=>'EMILIANOP'
,p_internal_uid=>60951258252303027
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(60953167206303046)
,p_db_column_name=>'ELIMINAR'
,p_display_order=>190
,p_column_identifier=>'S'
,p_column_label=>'Eliminar'
,p_column_link=>'javascript:$s(''P241_SEQ_ID_ELIMINAR_CLI'',#SEQ_ID_CLI#);'
,p_column_linktext=>'<span class="fa fa-trash" aria-hidden="true"></span>'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(60953505674303050)
,p_db_column_name=>'COD_EMPRESA'
,p_display_order=>200
,p_column_identifier=>'T'
,p_column_label=>'Cod Empresa'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(61219106914647301)
,p_db_column_name=>'EVENTID'
,p_display_order=>210
,p_column_identifier=>'U'
,p_column_label=>'Eventid'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(61219241945647302)
,p_db_column_name=>'COD_CLIENTE'
,p_display_order=>220
,p_column_identifier=>'V'
,p_column_label=>'Cod Cliente'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_column_alignment=>'CENTER'
,p_rpt_named_lov=>wwv_flow_imp.id(41126143156092713)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(61219798652647307)
,p_db_column_name=>'SEQ_ID_CLI'
,p_display_order=>230
,p_column_identifier=>'W'
,p_column_label=>'Seq Id Cli'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(61231664665651402)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'612317'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'COD_CLIENTE:ELIMINAR'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(60951160122303026)
,p_plug_name=>'AGREGAR CLIENTE'
,p_parent_plug_id=>wwv_flow_imp.id(60948650594303001)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(60949651134303011)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(60948795360303002)
,p_button_name=>'P241_BOTON_CERRAR_CLI'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_image_alt=>'Cerrar'
,p_button_position=>'BELOW_BOX'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(58705493769299903)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(55456399116566443)
,p_button_name=>'P241_BOTON_CLIENTES_EXCLUIDOS'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Clientes Excluidos'
,p_warn_on_unsaved_changes=>null
,p_grid_new_row=>'Y'
,p_grid_column_span=>7
,p_grid_column=>5
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(60949922611303014)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(60951160122303026)
,p_button_name=>'P241_BOTON_AGREGAR_CLI'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Agregar Cliente Excluido'
,p_button_position=>'BOTTOM'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(60025689373259209)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(59079121019380947)
,p_button_name=>'P241_BOTON_CERRAR_REG'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_image_alt=>'Cerrar'
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(58708394224299932)
,p_button_sequence=>190
,p_button_plug_id=>wwv_flow_imp.id(58706456584299913)
,p_button_name=>'P241_BOTON_CERRAR_CR_ED'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_image_alt=>'Cerrar'
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(60025782585259210)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(59079121019380947)
,p_button_name=>'P241_BOTON_ACEPTAR_ED_REG'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Aceptar'
,p_button_position=>'CREATE'
,p_warn_on_unsaved_changes=>null
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
 p_id=>wwv_flow_imp.id(60025870701259211)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(59079121019380947)
,p_button_name=>'P241_BOTON_ACEPTAR_CR_REG'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Aceptar'
,p_button_position=>'CREATE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(58708513699299934)
,p_button_sequence=>210
,p_button_plug_id=>wwv_flow_imp.id(58706456584299913)
,p_button_name=>'P241_BOTON_ACEPTAR_CR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Aceptar'
,p_button_position=>'CREATE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(58708619913299935)
,p_button_sequence=>230
,p_button_plug_id=>wwv_flow_imp.id(58706456584299913)
,p_button_name=>'P241_BOTON_ACEPTAR_ED'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Aceptar'
,p_button_position=>'CREATE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(138649406455528729)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(55456452918566444)
,p_button_name=>'Salir'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Salir'
,p_button_position=>'NEXT'
,p_button_redirect_url=>'f?p=&APP_ID.:485:&SESSION.::&DEBUG.:::'
,p_icon_css_classes=>'fa-reply'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(60950747508303022)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(55456151961566441)
,p_button_name=>'P241_BOTON_GUARDAR_BD'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--gapLeft:t-Button--gapRight:t-Button--gapTop:t-Button--gapBottom'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Guardar Cambios'
,p_button_position=>'TOP'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(58706091411299909)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(55456151961566441)
,p_button_name=>'P241_BOTON_AGREGAR_PROD'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Agregar Producto Principal'
,p_button_position=>'TOP'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(55455446155566434)
,p_name=>'P241_COD_EMPRESA'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(55455384642566433)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(55455521381566435)
,p_name=>'P241_PERMITE_APROBAR'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(55455384642566433)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(55455688206566436)
,p_name=>'P241_COD_MODULO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(55455384642566433)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(55455883283566438)
,p_name=>'P241_COD_FORMA'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(55455384642566433)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(55456501742566445)
,p_name=>'P241_EVENTID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(55456237834566442)
,p_prompt=>'Eventid'
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
 p_id=>wwv_flow_imp.id(55456632186566446)
,p_name=>'P241_FECHA_INICIO'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(55456237834566442)
,p_prompt=>'Fecha Inicio'
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
 p_id=>wwv_flow_imp.id(55456717887566447)
,p_name=>'P241_FECHA_FIN'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(55456237834566442)
,p_prompt=>'Fecha Fin'
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
 p_id=>wwv_flow_imp.id(55456885130566448)
,p_name=>'P241_CODIGO_MARCA'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(55456237834566442)
,p_prompt=>'Marca'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_MARCA'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT COD_MARCA || '' - '' || DESCRIPCION D, COD_MARCA R',
'FROM ST_MARCAS ',
'WHERE NVL(ESTADO,''N'') = ''S'''))
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
 p_id=>wwv_flow_imp.id(55456957454566449)
,p_name=>'P241_COD_CLIENTE'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(55456237834566442)
,p_prompt=>'Cliente'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LVCLIENTES'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT COD_CLIENTE||'' - ''||NOMBRE D, ',
'	   COD_CLIENTE R',
'  FROM CC_CLIENTES, ',
'       PERSONAS ',
' WHERE CC_CLIENTES.COD_EMPRESA = :P_COD_EMPRESA ',
'   AND CC_CLIENTES.COD_PERSONA = PERSONAS.COD_PERSONA ',
' ORDER BY NOMBRE'))
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
 p_id=>wwv_flow_imp.id(55457000295566450)
,p_name=>'P241_APLICA_LINEA'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(55456399116566443)
,p_prompt=>unistr('Aplica promoci\00F3n seg\00FAn L\00EDnea Cr\00E9dito?')
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'S'
,p_attribute_03=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(58705270026299901)
,p_name=>'P241_APLICA_MIX'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(55456399116566443)
,p_prompt=>'Aplica promo a mix de productos'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'S'
,p_attribute_03=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(58705384048299902)
,p_name=>'P241_IND_HASTA_AGOTAR_STOCK'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(55456399116566443)
,p_prompt=>'Hasta agotar Stock'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'S'
,p_attribute_03=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(58705534274299904)
,p_name=>'P241_CANTIDAD_VENDIDA'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(55456399116566443)
,p_prompt=>'Cantidad Vendida'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_colspan=>7
,p_grid_column=>4
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(58705655726299905)
,p_name=>'P241_AUTORIZADO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(55456452918566444)
,p_prompt=>'Autorizado'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'S'
,p_attribute_03=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(58705761607299906)
,p_name=>'P241_AUTORIZADO_POR'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(55456452918566444)
,p_prompt=>'Autorizado por'
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
 p_id=>wwv_flow_imp.id(58705816428299907)
,p_name=>'P241_FEC_AUTORIZADO'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(55456452918566444)
,p_prompt=>unistr('Fecha Autorizaci\00F3n')
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
 p_id=>wwv_flow_imp.id(58705946668299908)
,p_name=>'P241_EVENT_NAME'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(55456237834566442)
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
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(58706169414299910)
,p_name=>'P241_ESTADO'
,p_is_required=>true
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(55456237834566442)
,p_prompt=>'Estado'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:Activo;N,Inactivo;D,Borrador;B'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(58706213888299911)
,p_name=>'P241_COD_LISTA_PRECIO'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(55456237834566442)
,p_prompt=>'Lista de Precios'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_LISTA_PRECIOS'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select DESCRIPCION||''(''||COD_LISTA_PRECIO||'')'' D, COD_LISTA_PRECIO from VT_LISTAS_PRECIOS_CAB',
'WHERE COD_EMPRESA=:p_cod_empresa',
'AND ESTADO=''A''',
'order by 1'))
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
 p_id=>wwv_flow_imp.id(58706315721299912)
,p_name=>'P241_ORDEN_DETALLE'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(55455384642566433)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(58706730441299916)
,p_name=>'P241_COD_CORTO_ART_CR_ED'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(58706456584299913)
,p_prompt=>'Cod Articulo Corto'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LVARTICULO'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT cod_art_corto D, cod_art_corto R,r.cod_articulo, r.descripcion',
'FROM st_articulos r',
'WHERE cod_empresa = :p_cod_empresa ',
'AND COD_RUBRO = ''PR''',
'ORDER BY descripcion'))
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
 p_id=>wwv_flow_imp.id(58706857349299917)
,p_name=>'P241_COD_ARTICULO_CR_ED'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(58706456584299913)
,p_prompt=>'Cod Articulo'
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
 p_id=>wwv_flow_imp.id(58706927528299918)
,p_name=>'P241_DESCRIPCION_CR_ED'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(58706456584299913)
,p_prompt=>unistr('Descripci\00F3n')
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
 p_id=>wwv_flow_imp.id(58707037633299919)
,p_name=>'P241_CANTIDAD_COMPRA_MIN_CR_ED'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(58706456584299913)
,p_prompt=>'Cant. Min. Compra'
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
 p_id=>wwv_flow_imp.id(58707148251299920)
,p_name=>'P241_ADDITIONAL_LEAD_TIME_CRED'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(58706456584299913)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(58707201097299921)
,p_name=>'P241_PRICE_FROM_CR_ED'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(58706456584299913)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(58707312993299922)
,p_name=>'P241_PRICE_FOR_CR_ED'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(58706456584299913)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(58707494758299923)
,p_name=>'P241_PROMOTION_VOLUME_CR_ED'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(58706456584299913)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(58707505589299924)
,p_name=>'P241_COD_TIP_PROMOCION_CR_ED'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(58706456584299913)
,p_prompt=>unistr('Tipo Promoci\00F3n')
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:COMBO;COMBO,DESCUENTO;DESCUENTO,REGALO;REGALO'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_tag_attributes=>'readonly'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186937130263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(58707668948299925)
,p_name=>'P241_TIPO_PROMOCION_CR_ED'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(58706456584299913)
,p_prompt=>'Tipo Articulo'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:PRINCIPAL;PRINCIPAL'
,p_cHeight=>1
,p_tag_attributes=>'readonly'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186937130263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(58707807478299927)
,p_name=>'P241_MARGEN_CR_ED'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(58706456584299913)
,p_prompt=>'Margen'
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
 p_id=>wwv_flow_imp.id(58707959832299928)
,p_name=>'P241_PORCENTAJE_CR_ED'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(58706456584299913)
,p_prompt=>'Porcentaje'
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
 p_id=>wwv_flow_imp.id(58708031156299929)
,p_name=>'P241_CANTIDAD_CR_ED'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_imp.id(58706456584299913)
,p_prompt=>'Cantidad'
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
 p_id=>wwv_flow_imp.id(58708128983299930)
,p_name=>'P241_SEPARA_DEMANDA_CR_ED'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_imp.id(58706456584299913)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(58708224221299931)
,p_name=>'P241_ESTADO_CR_ED'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_imp.id(58706456584299913)
,p_prompt=>'Estado'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:Activo;N,Inactivo;D'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(59076100565380917)
,p_name=>'P241_SEQ_ID_EDITAR'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(55455384642566433)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(59076210682380918)
,p_name=>'P241_SEQ_ID_ELIMINAR'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(55455384642566433)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(59077891883380934)
,p_name=>'P241_COD_ARTICULO_PRINCIPAL'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(59077734737380933)
,p_prompt=>'Articulo'
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
 p_id=>wwv_flow_imp.id(59077913298380935)
,p_name=>'P241_NRO_PROMO'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(59077734737380933)
,p_prompt=>'Promo'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_colspan=>8
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(59078695603380942)
,p_name=>'P241_INDICADOR_ALERT'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(55455384642566433)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(59079277897380948)
,p_name=>'P241_SEQ_ID_AGREGAR_REG'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(55455384642566433)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(60024864371259201)
,p_name=>'P241_SEQ_ID_DETALLE'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(55455384642566433)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(60024964539259202)
,p_name=>'P241_COD_CORTO_ART_REG'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(59079121019380947)
,p_prompt=>'Cod Articulo Corto'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LVARTICULO'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT cod_art_corto D, cod_art_corto R,r.cod_articulo, r.descripcion',
'FROM st_articulos r',
'WHERE cod_empresa = :p_cod_empresa ',
'AND COD_RUBRO = ''PR''',
'ORDER BY descripcion'))
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
 p_id=>wwv_flow_imp.id(60025046172259203)
,p_name=>'P241_COD_ARTICULO_REG'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(59079121019380947)
,p_prompt=>'Cod Articulo'
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
 p_id=>wwv_flow_imp.id(60025180122259204)
,p_name=>'P241_DESCRIPCION_REG'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(59079121019380947)
,p_prompt=>unistr('Descripci\00F3n')
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
 p_id=>wwv_flow_imp.id(60025204640259205)
,p_name=>'P241_PORCENTAJE_REG'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(59079121019380947)
,p_prompt=>'Porcentaje'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186937130263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(60027395392259226)
,p_name=>'P241_TIPO_PROMOCION_REG'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(59079121019380947)
,p_prompt=>'Tipo Articulo'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:REGALO;REGALO,PRINCIPAL;PRINCIPAL'
,p_cHeight=>1
,p_tag_attributes=>'readonly'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186937130263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(60027567209259228)
,p_name=>'P241_PROMOTION_VOLUME_REG'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(59079121019380947)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(60027663430259229)
,p_name=>'P241_ADDITIONAL_LEAD_TIME_REG'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(59079121019380947)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(60027724634259230)
,p_name=>'P241_PRICE_FROM_REG'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(59079121019380947)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(60027841202259231)
,p_name=>'P241_PRICE_FOR_REG'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(59079121019380947)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(60027998416259232)
,p_name=>'P241_COD_TIP_PROMOCION_REG'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(59079121019380947)
,p_prompt=>unistr('Tipo Promoci\00F3n')
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:COMBO;COMBO,DESCUENTO;DESCUENTO,REGALO;REGALO'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_tag_attributes=>'readonly'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186937130263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(60028168688259234)
,p_name=>'P241_MARGEN_REG'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(59079121019380947)
,p_prompt=>'Margen'
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
 p_id=>wwv_flow_imp.id(60028317727259236)
,p_name=>'P241_CANTIDAD_REG'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(59079121019380947)
,p_prompt=>'Cantidad'
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
 p_id=>wwv_flow_imp.id(60028421614259237)
,p_name=>'P241_SEPARA_DEMANDA_REG'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(59079121019380947)
,p_prompt=>'Separa Demanda'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:NO;N,SI;S'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(60028586463259238)
,p_name=>'P241_ESTADO_REG'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(59079121019380947)
,p_prompt=>'Estado'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:Activo;N,Inactivo;D'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(60028762226259240)
,p_name=>'P241_INDICADOR_REPORTE_REGALOS'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(55455384642566433)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(60109817673359909)
,p_name=>'P241_CANTIDAD_COMPRA_MIN_REG'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(59079121019380947)
,p_prompt=>'Cant. Min. Compra'
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
 p_id=>wwv_flow_imp.id(60110573097359916)
,p_name=>'P241_SEQ_ID_EDITAR_REG'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(55455384642566433)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(60110615708359917)
,p_name=>'P241_SEQ_ID_ELIMINAR_REG'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(55455384642566433)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(60112775518359938)
,p_name=>'P241_DESC_ARTICULO_PRINCIPAL'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(59077734737380933)
,p_prompt=>unistr('Descripci\00F3n')
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
 p_id=>wwv_flow_imp.id(60113365920359944)
,p_name=>'P241_ID_REGISTRO'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(55455384642566433)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(60113441997359945)
,p_name=>'P241_FEC_ALTA'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(55455384642566433)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(60113591283359946)
,p_name=>'P241_IND_REQUERIDO'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_imp.id(55455384642566433)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(60113690207359947)
,p_name=>'P241_IND_PROMOCION'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_imp.id(55455384642566433)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(60113720972359948)
,p_name=>'P241_IND_COMBO'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_imp.id(55455384642566433)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(60949187418303006)
,p_name=>'P241_COD_EMPRESA_CLI'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(60951160122303026)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(60949279386303007)
,p_name=>'P241_EVENTOID_CLI'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(60951160122303026)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(60949342460303008)
,p_name=>'P241_COD_CLIENTE_CLI'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(60951160122303026)
,p_prompt=>'Cliente'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_CLIENTE'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  SELECT cod_cliente||'' - ''||nombre D, ',
'         cod_cliente R',
'    FROM cc_clientes c, personas p',
'   WHERE c.cod_empresa = :P_COD_EMPRESA ',
'     AND c.cod_persona = p.cod_persona ',
'     AND nvl(c.estado,''X'') = ''A'' ',
'ORDER BY nombre;'))
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
 p_id=>wwv_flow_imp.id(60953487466303049)
,p_name=>'P241_INDICADOR_REPORTE_CLIE'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_imp.id(55455384642566433)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(61219682572647306)
,p_name=>'P241_SEQ_ID_ELIMINAR_CLI'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(55455384642566433)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(61221970707647329)
,p_name=>'P241_COD_PROD_PRINC'
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_imp.id(55455384642566433)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(739757282536900413)
,p_name=>'P241_STOCK'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(59079121019380947)
,p_prompt=>'Stock Maximo'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
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
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(61220356476647313)
,p_validation_name=>'VL_FECHA_INICIO'
,p_validation_sequence=>10
,p_validation=>'P241_FECHA_INICIO'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'La fecha inicial no puede ser nula.'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(61220419221647314)
,p_validation_name=>'VL_FECHA_FIN'
,p_validation_sequence=>20
,p_validation=>'P241_FECHA_FIN'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'La fecha final no puede ser nula.'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(138649279929528727)
,p_validation_name=>'New'
,p_validation_sequence=>40
,p_validation=>'P241_EVENT_NAME'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'La descripcion no puede ser nula'
,p_associated_item=>wwv_flow_imp.id(58705946668299908)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(138649317608528728)
,p_validation_name=>'New_1'
,p_validation_sequence=>50
,p_validation=>'P241_ESTADO'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'El Estado no puede ser nulo'
,p_associated_item=>wwv_flow_imp.id(58706169414299910)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(58706510779299914)
,p_name=>'DA_ABRIR_REG_CREAR'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(58706091411299909)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(58709098454299939)
,p_event_id=>wwv_flow_imp.id(58706510779299914)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(58708513699299934)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(58709144807299940)
,p_event_id=>wwv_flow_imp.id(58706510779299914)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(58708619913299935)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(58709242651299941)
,p_event_id=>wwv_flow_imp.id(58706510779299914)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P241_COD_CORTO_ART_CR_ED,P241_COD_ARTICULO_CR_ED,P241_DESCRIPCION_CR_ED,P241_CANTIDAD_COMPRA_MIN_CR_ED,P241_PROMOTION_VOLUME_CR_ED,P241_ADDITIONAL_LEAD_TIME_CRED,P241_PRICE_FROM_CR_ED,P241_PRICE_FOR_CR_ED,P241_COD_TIP_PROMOCION_CR_ED,P241_TIPO_PROMOC'
||'ION_CR_ED,P241_MARGEN_CR_ED,P241_PORCENTAJE_CR_ED,P241_CANTIDAD_CR_ED,P241_SEPARA_DEMANDA_CR_ED,P241_ESTADO_CR_ED'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(59078391305380939)
,p_event_id=>wwv_flow_imp.id(58706510779299914)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    :P241_TIPO_PROMOCION_CR_ED := ''PRINCIPAL'';',
'    :P241_ESTADO_CR_ED := ''N'';',
'    :P241_SEPARA_DEMANDA_CR_ED := ''N'';',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;'))
,p_attribute_02=>'P241_TIPO_PROMOCION_CR_ED,P241_ESTADO_CR_ED,P241_SEPARA_DEMANDA_CR_ED'
,p_attribute_03=>'P241_TIPO_PROMOCION_CR_ED,P241_ESTADO_CR_ED,P241_SEPARA_DEMANDA_CR_ED'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(58706688499299915)
,p_event_id=>wwv_flow_imp.id(58706510779299914)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(58706456584299913)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(58708730312299936)
,p_name=>'DA_OCULTAR_BOTONES_CR_ED'
,p_event_sequence=>20
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(58708882450299937)
,p_event_id=>wwv_flow_imp.id(58708730312299936)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(58708513699299934)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(58708914399299938)
,p_event_id=>wwv_flow_imp.id(58708730312299936)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(58708619913299935)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(60025965817259212)
,p_event_id=>wwv_flow_imp.id(58708730312299936)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(60025782585259210)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(60026048133259213)
,p_event_id=>wwv_flow_imp.id(58708730312299936)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(60025870701259211)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(58709307914299942)
,p_name=>'DA_AGREGAR_MIEM_PROD'
,p_event_sequence=>30
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(58708513699299934)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(58709468106299943)
,p_event_id=>wwv_flow_imp.id(58709307914299942)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    IF :P241_COD_CORTO_ART_CR_ED IS NULL OR',
'       :P241_COD_TIP_PROMOCION_CR_ED IS NULL OR',
'       :P241_TIPO_PROMOCION_CR_ED IS NULL',
'       ',
'       THEN',
'        ',
'        :P241_INDICADOR_ALERT := ''1'';',
'        ',
'    ELSE',
'',
'        :P241_INDICADOR_ALERT := ''0'';',
'        :P241_ORDEN_DETALLE:=nvl(:P241_ORDEN_DETALLE,0)+1;',
'        STPROMOC.pr_agregar_mie_producto (:P241_COD_CORTO_ART_CR_ED,',
'                                          :P241_COD_ARTICULO_CR_ED,',
'                                          :P241_DESCRIPCION_CR_ED,',
'                                          :P241_CANTIDAD_COMPRA_MIN_CR_ED,',
'                                          :P241_PROMOTION_VOLUME_CR_ED,',
'                                          :P241_ADDITIONAL_LEAD_TIME_CRED,',
'                                          :P241_PRICE_FROM_CR_ED,',
'                                          :P241_PRICE_FOR_CR_ED,',
'                                          :P241_COD_TIP_PROMOCION_CR_ED,',
'                                          :P241_TIPO_PROMOCION_CR_ED,',
'                                          :P241_MARGEN_CR_ED,',
'                                          :P241_PORCENTAJE_CR_ED,',
'                                          :P241_CANTIDAD_CR_ED,',
'                                          :P241_SEPARA_DEMANDA_CR_ED,',
'                                          :P241_ESTADO_CR_ED,',
'                                          :P241_ORDEN_DETALLE);',
'        :P241_SEQ_ID_DETALLE := NULL;',
'',
'    END IF;',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;'))
,p_attribute_02=>'P241_TIPO_PROMOCION_CR_ED,P241_COD_TIP_PROMOCION_CR_ED,P241_COD_CORTO_ART_CR_ED,P241_COD_ARTICULO_CR_ED,P241_DESCRIPCION_CR_ED,P241_CANTIDAD_COMPRA_MIN_CR_ED,P241_PROMOTION_VOLUME_CR_ED,P241_ADDITIONAL_LEAD_TIME_CRED,P241_PRICE_FROM_CR_ED,P241_PRICE_'
||'FOR_CR_ED,P241_COD_TIP_PROMOCION_CR_ED,P241_TIPO_PROMOCION_CR_ED,P241_MARGEN_CR_ED,P241_PORCENTAJE_CR_ED,P241_CANTIDAD_CR_ED,P241_SEPARA_DEMANDA_CR_ED,P241_ESTADO_CR_ED'
,p_attribute_03=>'P241_INDICADOR_ALERT,P241_SEQ_ID_DETALLE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(59078743640380943)
,p_event_id=>wwv_flow_imp.id(58709307914299942)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'Compruebe que los campos requeridos no se encuentren vacios.'
,p_attribute_02=>'CAMPOS VACIOS'
,p_attribute_03=>'warning'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P241_INDICADOR_ALERT'
,p_client_condition_expression=>'1'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(58709662782299945)
,p_event_id=>wwv_flow_imp.id(58709307914299942)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(55456151961566441)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P241_INDICADOR_ALERT'
,p_client_condition_expression=>'0'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(60112439071359935)
,p_event_id=>wwv_flow_imp.id(58709307914299942)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(59078060620380936)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P241_INDICADOR_ALERT'
,p_client_condition_expression=>'0'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(58709553464299944)
,p_event_id=>wwv_flow_imp.id(58709307914299942)
,p_event_result=>'TRUE'
,p_action_sequence=>80
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(58706456584299913)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P241_INDICADOR_ALERT'
,p_client_condition_expression=>'0'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(59075792302380913)
,p_name=>'DA_CERRAR_REGION_CR_ED'
,p_event_sequence=>40
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(58708394224299932)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(59075675596380912)
,p_event_id=>wwv_flow_imp.id(59075792302380913)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(58706456584299913)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(59076430445380920)
,p_name=>'DA_ABRIR_REGION_ED'
,p_event_sequence=>50
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P241_SEQ_ID_EDITAR'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(59076759238380923)
,p_event_id=>wwv_flow_imp.id(59076430445380920)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(58708619913299935)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(59076852404380924)
,p_event_id=>wwv_flow_imp.id(59076430445380920)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(58708513699299934)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(59076671290380922)
,p_event_id=>wwv_flow_imp.id(59076430445380920)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'        SELECT ',
'                C001,',
'                C002,',
'                C003,',
'                C004,',
'                C005,',
'                C006,',
'                C007,',
'                C008,',
'                C009,',
'                C010,',
'                C011,',
'                C012,',
'                C013,',
'                C014,',
'                C015',
'        INTO',
'                :P241_COD_CORTO_ART_CR_ED,',
'                :P241_COD_ARTICULO_CR_ED,',
'                :P241_DESCRIPCION_CR_ED,',
'                :P241_CANTIDAD_COMPRA_MIN_CR_ED,',
'                :P241_PROMOTION_VOLUME_CR_ED,',
'                :P241_ADDITIONAL_LEAD_TIME_CRED,',
'                :P241_PRICE_FROM_CR_ED,',
'                :P241_PRICE_FOR_CR_ED,',
'                :P241_COD_TIP_PROMOCION_CR_ED,',
'                :P241_TIPO_PROMOCION_CR_ED,',
'                :P241_MARGEN_CR_ED,',
'                :P241_PORCENTAJE_CR_ED,',
'                :P241_CANTIDAD_CR_ED,',
'                :P241_SEPARA_DEMANDA_CR_ED,',
'                :P241_ESTADO_CR_ED',
'',
'        FROM APEX_COLLECTIONS',
'        WHERE COLLECTION_NAME = ''PRODUCTOS''',
'        --AND SEQ_ID = :P241_SEQ_ID_EDITAR',
'        AND C024 = :P241_SEQ_ID_EDITAR;',
'',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;'))
,p_attribute_02=>'P241_SEQ_ID_EDITAR'
,p_attribute_03=>'P241_COD_CORTO_ART_CR_ED,P241_COD_ARTICULO_CR_ED,P241_DESCRIPCION_CR_ED,P241_CANTIDAD_COMPRA_MIN_CR_ED,P241_PROMOTION_VOLUME_CR_ED,P241_ADDITIONAL_LEAD_TIME_CRED,P241_PRICE_FROM_CR_ED,P241_PRICE_FOR_CR_ED,P241_COD_TIP_PROMOCION_CR_ED,P241_TIPO_PROMOC'
||'ION_CR_ED,P241_MARGEN_CR_ED,P241_PORCENTAJE_CR_ED,P241_CANTIDAD_CR_ED,P241_SEPARA_DEMANDA_CR_ED,P241_ESTADO_CR_ED'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(59076571637380921)
,p_event_id=>wwv_flow_imp.id(59076430445380920)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(58706456584299913)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(59076945420380925)
,p_name=>'DA_MODIFICAR_MIEM_PROD'
,p_event_sequence=>60
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(58708619913299935)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(59077062202380926)
,p_event_id=>wwv_flow_imp.id(59076945420380925)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    IF :P241_COD_CORTO_ART_CR_ED IS NULL THEN',
'        ',
'        :P241_INDICADOR_ALERT := ''1'';',
'        ',
'    ELSE',
'',
'        :P241_INDICADOR_ALERT := ''0'';',
'        STPROMOC.pr_modificar_mie_producto (:P241_SEQ_ID_EDITAR,',
'                                            :P241_COD_CORTO_ART_CR_ED,',
'                                            :P241_COD_ARTICULO_CR_ED,',
'                                            :P241_DESCRIPCION_CR_ED,',
'                                            :P241_CANTIDAD_COMPRA_MIN_CR_ED,',
'                                            :P241_PROMOTION_VOLUME_CR_ED,',
'                                            :P241_ADDITIONAL_LEAD_TIME_CRED,',
'                                            :P241_PRICE_FROM_CR_ED,',
'                                            :P241_PRICE_FOR_CR_ED,',
'                                            :P241_COD_TIP_PROMOCION_CR_ED,',
'                                            :P241_TIPO_PROMOCION_CR_ED,',
'                                            :P241_MARGEN_CR_ED,',
'                                            :P241_PORCENTAJE_CR_ED,',
'                                            :P241_CANTIDAD_CR_ED,',
'                                            :P241_SEPARA_DEMANDA_CR_ED,',
'                                            :P241_ESTADO_CR_ED);',
'',
'        :P241_SEQ_ID_DETALLE := :P241_SEQ_ID_EDITAR;',
'',
'    END IF; ',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;'))
,p_attribute_02=>'P241_SEQ_ID_EDITAR,P241_COD_CORTO_ART_CR_ED,P241_COD_ARTICULO_CR_ED,P241_DESCRIPCION_CR_ED,P241_CANTIDAD_COMPRA_MIN_CR_ED,P241_PROMOTION_VOLUME_CR_ED,P241_ADDITIONAL_LEAD_TIME_CRED,P241_PRICE_FROM_CR_ED,P241_PRICE_FOR_CR_ED,P241_COD_TIP_PROMOCION_CR_'
||'ED,P241_TIPO_PROMOCION_CR_ED,P241_MARGEN_CR_ED,P241_PORCENTAJE_CR_ED,P241_CANTIDAD_CR_ED,P241_SEPARA_DEMANDA_CR_ED,P241_ESTADO_CR_ED'
,p_attribute_03=>'P241_INDICADOR_ALERT,P241_SEQ_ID_DETALLE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(59078808817380944)
,p_event_id=>wwv_flow_imp.id(59076945420380925)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'Compruebe que los campos requeridos no se encuentren vacios.'
,p_attribute_02=>'CAMPOS VACIOS'
,p_attribute_03=>'warning'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P241_INDICADOR_ALERT'
,p_client_condition_expression=>'1'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(59077229257380928)
,p_event_id=>wwv_flow_imp.id(59076945420380925)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(58706456584299913)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P241_INDICADOR_ALERT'
,p_client_condition_expression=>'0'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(59077165282380927)
,p_event_id=>wwv_flow_imp.id(59076945420380925)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(55456151961566441)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P241_INDICADOR_ALERT'
,p_client_condition_expression=>'0'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(60112572203359936)
,p_event_id=>wwv_flow_imp.id(59076945420380925)
,p_event_result=>'TRUE'
,p_action_sequence=>80
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(59078060620380936)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P241_INDICADOR_ALERT'
,p_client_condition_expression=>'0'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(59077339467380929)
,p_name=>'DA_ELIMINAR_MIEM_PROD'
,p_event_sequence=>70
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P241_SEQ_ID_ELIMINAR'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(59077492036380930)
,p_event_id=>wwv_flow_imp.id(59077339467380929)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>unistr('\00BFDesea eliminar el registro?')
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(59077547063380931)
,p_event_id=>wwv_flow_imp.id(59077339467380929)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'        STPROMOC.pr_eliminar_mie_producto (:P241_SEQ_ID_ELIMINAR);',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;'))
,p_attribute_02=>'P241_SEQ_ID_ELIMINAR'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(59077604037380932)
,p_event_id=>wwv_flow_imp.id(59077339467380929)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(55456151961566441)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(59078120817380937)
,p_name=>'DA_SETEAR_DATOS_PROD'
,p_event_sequence=>80
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P241_COD_CORTO_ART_CR_ED'
,p_condition_element=>'P241_COD_CORTO_ART_CR_ED'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(59078215565380938)
,p_event_id=>wwv_flow_imp.id(59078120817380937)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    SELECT a.descripcion, a.cod_articulo',
'    INTO :P241_DESCRIPCION_CR_ED, :P241_COD_ARTICULO_CR_ED',
'    FROM st_articulos a',
'    WHERE a.cod_empresa = :P_COD_EMPRESA',
'    AND a.cod_art_corto = :P241_COD_CORTO_ART_CR_ED;',
'',
'    :P241_PRICE_FROM_CR_ED := PRECIO(:P241_COD_ARTICULO_CR_ED, 0);',
'',
'    :P241_MARGEN_CR_ED:= F_MARGEN_PROMOCION (:P241_EVENTID, :P241_COD_ARTICULO_CR_ED);',
'',
'    :P241_PRICE_FOR_CR_ED := F_PRECIO_FOR (:P241_EVENTID, :P241_COD_ARTICULO_CR_ED);    ',
'',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;'))
,p_attribute_02=>'P241_EVENTID,P241_COD_CORTO_ART_CR_ED,P_COD_EMPRESA,P241_COD_ARTICULO_CR_ED'
,p_attribute_03=>'P241_PRICE_FROM_CR_ED,P241_MARGEN_CR_ED,P241_PRICE_FOR_CR_ED,P241_DESCRIPCION_CR_ED,P241_COD_ARTICULO_CR_ED,P241_PRICE_FROM_CR_ED'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(61220962082647319)
,p_event_id=>wwv_flow_imp.id(59078120817380937)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    STPROMOC.pr_cargar_prod_princ (:P_COD_EMPRESA,',
'                                   :P241_EVENTID);',
'    ',
'    :P241_INDICADOR_REPORTE_REGALOS := ''1'';    ',
'',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;'))
,p_attribute_02=>'P_COD_EMPRESA,P241_EVENTID'
,p_attribute_03=>'P241_INDICADOR_REPORTE_REGALOS'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_server_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(61221009972647320)
,p_event_id=>wwv_flow_imp.id(59078120817380937)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(55456151961566441)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(59079379325380949)
,p_name=>'DA_ABRIR_REG_REGALO'
,p_event_sequence=>90
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P241_SEQ_ID_AGREGAR_REG'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(60026432900259217)
,p_event_id=>wwv_flow_imp.id(59079379325380949)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P241_COD_CORTO_ART_REG,P241_COD_ARTICULO_REG,P241_DESCRIPCION_REG,P241_PROMOTION_VOLUME_REG,P241_ADDITIONAL_LEAD_TIME_REG,P241_PRICE_FROM_REG,P241_PRICE_FOR_REG,P241_COD_TIP_PROMOCION_REG,P241_TIPO_PROMOCION_REG,P241_MARGEN_REG,P241_PORCENTAJE_REG,P2'
||'41_CANTIDAD_REG,P241_SEPARA_DEMANDA_REG,P241_ESTADO_REG'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(60026591305259218)
,p_event_id=>wwv_flow_imp.id(59079379325380949)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(60025870701259211)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(60026613098259219)
,p_event_id=>wwv_flow_imp.id(59079379325380949)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(60025782585259210)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(60027429555259227)
,p_event_id=>wwv_flow_imp.id(59079379325380949)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    :P241_TIPO_PROMOCION_REG := ''REGALO'';',
'    :P241_ESTADO_REG := ''N'';',
'    :P241_SEPARA_DEMANDA_REG := ''N'';',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;'))
,p_attribute_02=>'P241_TIPO_PROMOCION_REG,P241_ESTADO_REG,P241_SEPARA_DEMANDA_REG'
,p_attribute_03=>'P241_TIPO_PROMOCION_REG,P241_ESTADO_REG ,P241_SEPARA_DEMANDA_REG'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(59079415059380950)
,p_event_id=>wwv_flow_imp.id(59079379325380949)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(59079121019380947)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(60025329529259206)
,p_name=>'DA_SETEAR_DATOS_REG'
,p_event_sequence=>100
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P241_COD_CORTO_ART_REG'
,p_condition_element=>'P241_COD_CORTO_ART_REG'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(60025548113259208)
,p_event_id=>wwv_flow_imp.id(60025329529259206)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    SELECT a.descripcion, a.cod_articulo',
'    INTO :P241_DESCRIPCION_REG, :P241_COD_ARTICULO_REG',
'    FROM st_articulos a',
'    WHERE a.cod_empresa = :P_COD_EMPRESA',
'    AND a.cod_art_corto = :P241_COD_CORTO_ART_REG;',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;'))
,p_attribute_02=>'P_COD_EMPRESA,P241_COD_CORTO_ART_REG'
,p_attribute_03=>'P241_DESCRIPCION_REG,P241_COD_ARTICULO_REG'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(60026174901259214)
,p_name=>'DA_CERRAR_REGION_REG'
,p_event_sequence=>110
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(60025689373259209)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(60026372719259216)
,p_event_id=>wwv_flow_imp.id(60026174901259214)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(59079121019380947)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(60026721792259220)
,p_name=>'DA_AGREGAR_MIEM_REG'
,p_event_sequence=>120
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(60025870701259211)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(60026945035259222)
,p_event_id=>wwv_flow_imp.id(60026721792259220)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    IF :P241_COD_CORTO_ART_REG IS NULL OR ',
'       :P241_PORCENTAJE_REG IS NULL OR',
'       :P241_COD_TIP_PROMOCION_REG IS NULL OR',
'       :P241_TIPO_PROMOCION_REG IS NULL',
'',
'       THEN        ',
'        ',
'        :P241_INDICADOR_ALERT := ''1'';',
'        ',
'    ELSE',
'',
'        :P241_INDICADOR_ALERT := ''0'';',
'         :P241_ORDEN_DETALLE:=nvl(:P241_ORDEN_DETALLE,0)+1;',
'        STPROMOC.pr_agregar_mie_regalo (',
'                                          :P241_SEQ_ID_AGREGAR_REG,',
'                                          :P241_COD_CORTO_ART_REG,',
'                                          :P241_COD_ARTICULO_REG,',
'                                          :P241_DESCRIPCION_REG,',
'                                          :P241_CANTIDAD_COMPRA_MIN_REG,',
'                                          :P241_PROMOTION_VOLUME_REG,',
'                                          :P241_ADDITIONAL_LEAD_TIME_CRED,',
'                                          :P241_PRICE_FROM_REG,',
'                                          :P241_PRICE_FOR_REG,',
'                                          :P241_COD_TIP_PROMOCION_REG,',
'                                          :P241_TIPO_PROMOCION_REG,',
'                                          :P241_MARGEN_REG,',
'                                          :P241_PORCENTAJE_REG,',
'                                          :P241_CANTIDAD_REG,',
'                                          :P241_SEPARA_DEMANDA_REG,',
'                                          :P241_ESTADO_REG,',
'                                          :P241_ORDEN_DETALLE);',
'',
'        :P241_INDICADOR_REPORTE_REGALOS := ''1'';',
'        :P241_SEQ_ID_DETALLE := :P241_SEQ_ID_AGREGAR_REG;',
'',
'    END IF;',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;',
'',
'',
''))
,p_attribute_02=>'P241_TIPO_PROMOCION_REG,P241_COD_TIP_PROMOCION_REG,P241_SEQ_ID_AGREGAR_REG,P241_SEQ_ID_AGREGAR_REG,P241_COD_CORTO_ART_REG,P241_COD_ARTICULO_REG,P241_DESCRIPCION_REG,P241_CANTIDAD_COMPRA_MIN_REG,P241_PROMOTION_VOLUME_REG,P241_ADDITIONAL_LEAD_TIME__REG'
||',P241_PRICE_FROM_REG,P241_PRICE_FOR_REG,P241_COD_TIP_PROMOCION_REG,P241_TIPO_PROMOCION_REG,P241_MARGEN_REG,P241_PORCENTAJE_REG,P241_CANTIDAD_REG,P241_SEPARA_DEMANDA_REG,P241_ESTADO_REG'
,p_attribute_03=>'P241_SEQ_ID_DETALLE ,P241_INDICADOR_ALERT,P241_INDICADOR_REPORTE_REGALOS'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(60027036392259223)
,p_event_id=>wwv_flow_imp.id(60026721792259220)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'Compruebe que los campos requeridos no se encuentren vacios.'
,p_attribute_02=>'CAMPOS VACIOS'
,p_attribute_03=>'warning'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P241_INDICADOR_ALERT'
,p_client_condition_expression=>'1'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(60027136043259224)
,p_event_id=>wwv_flow_imp.id(60026721792259220)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(59078060620380936)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P241_INDICADOR_ALERT'
,p_client_condition_expression=>'0'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(60027204967259225)
,p_event_id=>wwv_flow_imp.id(60026721792259220)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(59079121019380947)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P241_INDICADOR_ALERT'
,p_client_condition_expression=>'0'
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
 p_id=>wwv_flow_imp.id(60110312766359914)
,p_name=>'DA_CARGAR_DETALLES_REG'
,p_event_sequence=>140
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P241_SEQ_ID_DETALLE'
,p_condition_element=>'P241_SEQ_ID_DETALLE'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(60112679100359937)
,p_event_id=>wwv_flow_imp.id(60110312766359914)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    ',
'    SELECT ',
'            c002,',
'            c003',
'    INTO :P241_COD_ARTICULO_PRINCIPAL,',
'         :P241_DESC_ARTICULO_PRINCIPAL',
'    FROM APEX_COLLECTIONS',
'    WHERE   COLLECTION_NAME = ''PRODUCTOS''',
'    AND  nvl(C024,c016)= :P241_SEQ_ID_DETALLE;',
'',
'    :P241_NRO_PROMO := :P241_EVENTID;',
'    ',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;        '))
,p_attribute_02=>'P241_EVENTID,P241_SEQ_ID_DETALLE'
,p_attribute_03=>'P241_NRO_PROMO,P241_COD_ARTICULO_PRINCIPAL,P241_DESC_ARTICULO_PRINCIPAL'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(60110172528359912)
,p_event_id=>wwv_flow_imp.id(60110312766359914)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(59078060620380936)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(60110854553359919)
,p_name=>'DA_ELIMINAR_REG'
,p_event_sequence=>150
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P241_SEQ_ID_ELIMINAR_REG'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(60110964147359920)
,p_event_id=>wwv_flow_imp.id(60110854553359919)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>unistr('\00BFDesea borrar el registro?')
,p_attribute_02=>unistr('\00BFBorrar el registro?')
,p_attribute_03=>'warning'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(60111007924359921)
,p_event_id=>wwv_flow_imp.id(60110854553359919)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'        STPROMOC.pr_eliminar_mie_regalo ( :P241_SEQ_ID_DETALLE,',
'                                          :P241_SEQ_ID_ELIMINAR_REG);',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;'))
,p_attribute_02=>'P241_SEQ_ID_DETALLE,P241_SEQ_ID_ELIMINAR_REG'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(60111146042359922)
,p_event_id=>wwv_flow_imp.id(60110854553359919)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(59078060620380936)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(60111288335359923)
,p_name=>'DA_ABRIR_EDITAR_REG'
,p_event_sequence=>160
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P241_SEQ_ID_EDITAR_REG'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(60111497809359925)
,p_event_id=>wwv_flow_imp.id(60111288335359923)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(60025782585259210)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(60111556381359926)
,p_event_id=>wwv_flow_imp.id(60111288335359923)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(60025870701259211)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(60111602576359927)
,p_event_id=>wwv_flow_imp.id(60111288335359923)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    SELECT  C001,',
'            C002,',
'            C003,',
'            C004,',
'            C009,',
'            C010,',
'            C011,',
'            C012,',
'            C013,',
'            C014,',
'            C015',
'',
'    INTO :P241_COD_CORTO_ART_REG,',
'         :P241_COD_ARTICULO_REG,',
'         :P241_DESCRIPCION_REG,',
'         :P241_CANTIDAD_COMPRA_MIN_REG,',
'         :P241_COD_TIP_PROMOCION_REG,',
'         :P241_TIPO_PROMOCION_REG,',
'         :P241_MARGEN_REG,',
'         :P241_PORCENTAJE_REG,',
'         :P241_CANTIDAD_REG,',
'         :P241_SEPARA_DEMANDA_REG,',
'         :P241_ESTADO_REG',
'',
'    FROM APEX_COLLECTIONS',
'    WHERE COLLECTION_NAME = ''REGALOS''',
'    AND SEQ_ID = :P241_SEQ_ID_EDITAR_REG;',
'    --AND c016 = :P241_SEQ_ID_DETALLE',
'    --AND c017 = :P241_COD_ARTICULO_PRINCIPAL;',
'    --AND nvl(c020, ''O'') <> ''B''',
'    --AND :P241_INDICADOR_REPORTE_REGALOS = ''1'';',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;',
'',
''))
,p_attribute_02=>'P241_SEQ_ID_DETALLE,P241_INDICADOR_REPORTE_REGALOS,P241_COD_ARTICULO_PRINCIPAL,P241_SEQ_ID_EDITAR_REG'
,p_attribute_03=>'P241_COD_CORTO_ART_REG,P241_COD_ARTICULO_REG,P241_DESCRIPCION_REG,P241_CANTIDAD_COMPRA_MIN_REG,P241_COD_TIP_PROMOCION_REG,P241_TIPO_PROMOCION_REG,P241_MARGEN_REG,P241_PORCENTAJE_REG,P241_CANTIDAD_REG,P241_SEPARA_DEMANDA_REG,P241_ESTADO_REG'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(60111726272359928)
,p_event_id=>wwv_flow_imp.id(60111288335359923)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(59079121019380947)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(60111868310359929)
,p_name=>'DA_EDITAR_REG'
,p_event_sequence=>170
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(60025782585259210)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(60112043832359931)
,p_event_id=>wwv_flow_imp.id(60111868310359929)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    IF :P241_COD_CORTO_ART_REG IS NULL OR :P241_PORCENTAJE_REG IS NULL THEN',
'        ',
'        :P241_INDICADOR_ALERT := ''1'';',
'        ',
'    ELSE',
'',
'        :P241_INDICADOR_ALERT := ''0'';',
'        STPROMOC.pr_modificar_mie_regalo (  :P241_SEQ_ID_EDITAR_REG,',
'                                            :P241_COD_CORTO_ART_REG,',
'                                            :P241_COD_ARTICULO_REG,',
'                                            :P241_DESCRIPCION_REG,',
'                                            :P241_CANTIDAD_COMPRA_MIN_REG,',
'                                            :P241_COD_TIP_PROMOCION_REG,',
'                                            :P241_TIPO_PROMOCION_REG,',
'                                            :P241_MARGEN_REG,',
'                                            :P241_PORCENTAJE_REG,',
'                                            :P241_CANTIDAD_REG,',
'                                            :P241_SEPARA_DEMANDA_REG,',
'                                            :P241_ESTADO_REG,',
'                                            :P241_SEQ_ID_DETALLE);',
'',
'    END IF; ',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;',
'',
'',
'',
'',
''))
,p_attribute_02=>'P241_SEQ_ID_EDITAR_REG,P241_COD_CORTO_ART_REG,P241_COD_ARTICULO_REG,P241_DESCRIPCION_REG,P241_CANTIDAD_COMPRA_MIN_REG,P241_COD_TIP_PROMOCION_REG,P241_TIPO_PROMOCION_REG,P241_MARGEN_REG,P241_PORCENTAJE_REG,P241_CANTIDAD_REG,P241_SEPARA_DEMANDA_REG,P24'
||'1_ESTADO_REG,P241_SEQ_ID_DETALLE'
,p_attribute_03=>'P241_INDICADOR_ALERT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(60112113597359932)
,p_event_id=>wwv_flow_imp.id(60111868310359929)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'Compruebe que los campos requeridos no se encuentren vacios.'
,p_attribute_02=>'CAMPOS VACIOS'
,p_attribute_03=>'warning'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P241_INDICADOR_ALERT'
,p_client_condition_expression=>'1'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(60112214941359933)
,p_event_id=>wwv_flow_imp.id(60111868310359929)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(59079121019380947)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P241_INDICADOR_ALERT'
,p_client_condition_expression=>'0'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(60112306664359934)
,p_event_id=>wwv_flow_imp.id(60111868310359929)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(59078060620380936)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P241_INDICADOR_ALERT'
,p_client_condition_expression=>'0'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(60112951871359940)
,p_name=>'DA_SETEAR_AUTORIZADO'
,p_event_sequence=>180
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P241_AUTORIZADO'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(60113837128359949)
,p_event_id=>wwv_flow_imp.id(60112951871359940)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    :P241_ORDEN_DETALLE := NULL;',
'    :P241_ID_REGISTRO := NULL;',
'    :P241_FEC_ALTA := NULL;',
'    :P241_IND_REQUERIDO := NULL;',
'    :P241_IND_PROMOCION := NULL;',
'    :P241_IND_COMBO := NULL;',
'',
'    :P241_AUTORIZADO_POR := NULL;',
'    :P241_FEC_AUTORIZADO := NULL;',
'',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;'))
,p_attribute_02=>'P241_ORDEN_DETALLE'
,p_attribute_03=>'P241_ORDEN_DETALLE,P241_ID_REGISTRO,P241_FEC_ALTA,P241_IND_REQUERIDO,P241_IND_PROMOCION,P241_IND_COMBO,P241_AUTORIZADO_POR ,P241_FEC_AUTORIZADO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P241_AUTORIZADO'
,p_client_condition_expression=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(60113098645359941)
,p_event_id=>wwv_flow_imp.id(60112951871359940)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    :P241_ORDEN_DETALLE := nvl(:P241_ORDEN_DETALLE,1)+1;',
'    :P241_ID_REGISTRO := :P241_ORDEN_DETALLE;',
'    :P241_FEC_ALTA := SYSDATE;',
'    :P241_IND_REQUERIDO := ''N'';',
'    :P241_IND_PROMOCION := ''S'';',
'    :P241_IND_COMBO := ''N'';',
'',
'    :P241_AUTORIZADO_POR := :APP_USER;',
'    :P241_FEC_AUTORIZADO := SYSDATE;',
'',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;'))
,p_attribute_02=>'P241_ORDEN_DETALLE'
,p_attribute_03=>'P241_ORDEN_DETALLE,P241_ID_REGISTRO,P241_FEC_ALTA,P241_IND_REQUERIDO,P241_IND_PROMOCION,P241_IND_COMBO,P241_AUTORIZADO_POR ,P241_FEC_AUTORIZADO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P241_AUTORIZADO'
,p_client_condition_expression=>'S'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(60948928671303004)
,p_name=>'DA_ABRIR_CLIENTES'
,p_event_sequence=>190
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(58705493769299903)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(60953278709303047)
,p_event_id=>wwv_flow_imp.id(60948928671303004)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P241_COD_EMPRESA_CLI,P241_EVENTOID_CLI,P241_COD_CLIENTE_CLI'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(60949016721303005)
,p_event_id=>wwv_flow_imp.id(60948928671303004)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(60948650594303001)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(60949769338303012)
,p_name=>'DA_CERRAR_CR_ED_CLI'
,p_event_sequence=>200
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(60949651134303011)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(61219367680647303)
,p_event_id=>wwv_flow_imp.id(60949769338303012)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(60948650594303001)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(60950079638303015)
,p_name=>'DA_GUARDAR_CR_CLI'
,p_event_sequence=>210
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(60949922611303014)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(60950220513303017)
,p_event_id=>wwv_flow_imp.id(60950079638303015)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    IF :P241_COD_CLIENTE_CLI IS NULL THEN',
'        :P241_INDICADOR_ALERT := ''1'';',
'    ELSE',
'        :P241_INDICADOR_ALERT := ''0'';',
'        :P241_COD_EMPRESA_CLI := :P_COD_EMPRESA;',
'        :P241_EVENTOID_CLI := :P241_EVENTID;',
'',
'        :P241_INDICADOR_REPORTE_CLIE := ''1'';',
'',
'        STPROMOC.pr_agregar_mie_cliente  (:P241_COD_EMPRESA_CLI,',
'                                          :P241_EVENTOID_CLI,',
'                                          :P241_COD_CLIENTE_CLI);',
'    END IF;',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;'))
,p_attribute_02=>'P241_EVENTID,P_COD_EMPRESA,P241_COD_EMPRESA_CLI,P241_EVENTOID_CLI,P241_COD_CLIENTE_CLI'
,p_attribute_03=>'P241_INDICADOR_ALERT,P241_INDICADOR_REPORTE_CLIE,P241_COD_EMPRESA_CLI,P241_EVENTOID_CLI'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(61219597710647305)
,p_event_id=>wwv_flow_imp.id(60950079638303015)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>unistr('Compruebe que los campos requeridos no est\00E9n vac\00EDos.')
,p_attribute_02=>'CAMPOS VACIOS'
,p_attribute_03=>'warning'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P241_INDICADOR_ALERT'
,p_client_condition_expression=>'1'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(60950133578303016)
,p_event_id=>wwv_flow_imp.id(60950079638303015)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P241_COD_EMPRESA_CLI,P241_EVENTOID_CLI,P241_COD_CLIENTE_CLI'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P241_INDICADOR_ALERT'
,p_client_condition_expression=>'0'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(60953378713303048)
,p_event_id=>wwv_flow_imp.id(60950079638303015)
,p_event_result=>'TRUE'
,p_action_sequence=>80
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(60948795360303002)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P241_INDICADOR_ALERT'
,p_client_condition_expression=>'0'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(61219840718647308)
,p_name=>'DA_ELIMINAR_CLI'
,p_event_sequence=>230
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P241_SEQ_ID_ELIMINAR_CLI'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(61220099031647310)
,p_event_id=>wwv_flow_imp.id(61219840718647308)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>unistr('\00BFDesea eliminar el registro?')
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(61220179977647311)
,p_event_id=>wwv_flow_imp.id(61219840718647308)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'        STPROMOC.pr_eliminar_mie_clie ( :P241_SEQ_ID_ELIMINAR_CLI);',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;'))
,p_attribute_02=>'P241_SEQ_ID_ELIMINAR_CLI'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(61220256916647312)
,p_event_id=>wwv_flow_imp.id(61219840718647308)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(60948795360303002)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(153256490440869704)
,p_name=>'DA_SESION'
,p_event_sequence=>239
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P241_EVENTID'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(153256536815869705)
,p_event_id=>wwv_flow_imp.id(153256490440869704)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_03=>'P241_EVENTID'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(61220774614647317)
,p_name=>'DA_COMPLETAR_DATOS'
,p_event_sequence=>240
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P241_EVENTID'
,p_condition_element=>'P241_EVENTID'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(61220872867647318)
,p_event_id=>wwv_flow_imp.id(61220774614647317)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    SELECT  EVENT_NAME, FECHA_INICIO, FECHA_FIN, CODIGO_MARCA, ',
'            COD_CLIENTE, ESTADO, COD_LISTA_PRECIO,',
'            AUTORIZADO, AUTORIZADO_POR, FEC_AUTORIZADO,',
'            APLICA_LINEA, APLICA_MIX, IND_HASTA_AGOTAR_STOCK',
'',
'    INTO :P241_EVENT_NAME, :P241_FECHA_INICIO, :P241_FECHA_FIN, :P241_CODIGO_MARCA,',
'         :P241_COD_CLIENTE, :P241_ESTADO, :P241_COD_LISTA_PRECIO,',
'         :P241_AUTORIZADO, :P241_AUTORIZADO_POR, :P241_FEC_AUTORIZADO,',
'         :P241_APLICA_LINEA, :P241_APLICA_MIX, :P241_IND_HASTA_AGOTAR_STOCK         ',
'',
'    FROM ST_PROMOCION_CAB',
'    WHERE EVENTID = :P241_EVENTID',
'    AND COD_EMPRESA = :P_COD_EMPRESA;',
'    ',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'        :P241_EVENT_NAME := NULL;',
'        :P241_FECHA_INICIO := NULL;',
'        :P241_FECHA_FIN := NULL;',
'        :P241_CODIGO_MARCA := NULL;',
'        :P241_COD_CLIENTE := NULL;',
'        :P241_ESTADO := NULL;',
'        :P241_COD_LISTA_PRECIO := NULL;',
'        :P241_AUTORIZADO := NULL;',
'        :P241_AUTORIZADO_POR := NULL; ',
'        :P241_FEC_AUTORIZADO := NULL;',
'        :P241_APLICA_LINEA :=''S'';',
'        :P241_APLICA_MIX :=''N'';',
'        :P241_IND_HASTA_AGOTAR_STOCK :=''N'';',
'END;',
'',
''))
,p_attribute_02=>'P241_EVENTID,P_COD_EMPRESA'
,p_attribute_03=>'P241_APLICA_LINEA,P241_APLICA_MIX,P241_IND_HASTA_AGOTAR_STOCK,P241_EVENT_NAME,P241_FECHA_INICIO,P241_FECHA_FIN,P241_CODIGO_MARCA,P241_COD_CLIENTE,P241_ESTADO,P241_COD_LISTA_PRECIO,P241_AUTORIZADO,P241_AUTORIZADO_POR,P241_FEC_AUTORIZADO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(61221164914647321)
,p_event_id=>wwv_flow_imp.id(61220774614647317)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    APEX_COLLECTION.CREATE_OR_TRUNCATE_COLLECTION(''PRODUCTOS'');',
'    STPROMOC.pr_cargar_prod_princ (:P_COD_EMPRESA,',
'                                   :P241_EVENTID);',
'                                   ',
'    :P241_INDICADOR_REPORTE_REGALOS := ''1'';',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;',
'',
''))
,p_attribute_02=>'P241_EVENTID,P_COD_EMPRESA'
,p_attribute_03=>'P241_INDICADOR_REPORTE_REGALOS'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(61221378990647323)
,p_event_id=>wwv_flow_imp.id(61220774614647317)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    APEX_COLLECTION.CREATE_OR_TRUNCATE_COLLECTION(''REGALOS'');',
'    STPROMOC.pr_cargar_prod_regalo (:P_COD_EMPRESA,',
'                                   :P241_EVENTID);',
'                                   ',
'    :P241_INDICADOR_REPORTE_REGALOS := ''1'';',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;',
'',
''))
,p_attribute_02=>'P241_EVENTID,P_COD_EMPRESA'
,p_attribute_03=>'P241_INDICADOR_REPORTE_REGALOS'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(61221691791647326)
,p_event_id=>wwv_flow_imp.id(61220774614647317)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    APEX_COLLECTION.CREATE_OR_TRUNCATE_COLLECTION(''CLIENTES_EXCLUIDOS'');',
'',
'    STPROMOC.pr_cargar_cliente (:P_COD_EMPRESA, ',
'                                :P241_EVENTID);',
'                                   ',
'    :P241_INDICADOR_REPORTE_CLIE := ''1'';',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;',
'',
''))
,p_attribute_02=>'P241_EVENTID,P_COD_EMPRESA'
,p_attribute_03=>'P241_INDICADOR_REPORTE_CLIE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(65271442370719721)
,p_event_id=>wwv_flow_imp.id(61220774614647317)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    :P241_CANTIDAD_VENDIDA := STPROMOC.fc_calcular_cantidad_vendida (:P_COD_EMPRESA,',
'                                                                     :P241_FECHA_INICIO,',
'                                                                     :P241_FECHA_FIN,',
'                                                                     :P241_EVENTID); ',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;',
'',
''))
,p_attribute_02=>'P_COD_EMPRESA,P241_FECHA_INICIO,P241_FECHA_FIN,P241_EVENTID'
,p_attribute_03=>'P241_CANTIDAD_VENDIDA'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(61221265577647322)
,p_event_id=>wwv_flow_imp.id(61220774614647317)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(55456151961566441)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P241_INDICADOR_REPORTE_REGALOS'
,p_client_condition_expression=>'1'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(61221462319647324)
,p_event_id=>wwv_flow_imp.id(61220774614647317)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(59078060620380936)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P241_INDICADOR_REPORTE_REGALOS'
,p_client_condition_expression=>'1'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(61221516896647325)
,p_event_id=>wwv_flow_imp.id(61220774614647317)
,p_event_result=>'TRUE'
,p_action_sequence=>80
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(60948795360303002)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P241_INDICADOR_REPORTE_REGALOS'
,p_client_condition_expression=>'1'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(138650979557528744)
,p_name=>'DA_COMPLETAR_DATOS_1'
,p_event_sequence=>250
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P241_EVENTID'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
,p_display_when_type=>'ITEM_IS_NOT_NULL'
,p_display_when_cond=>'P241_EVENTID'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(138651085576528745)
,p_event_id=>wwv_flow_imp.id(138650979557528744)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'null;'
,p_attribute_03=>'P241_EVENTID'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(138651123780528746)
,p_event_id=>wwv_flow_imp.id(138650979557528744)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    SELECT  EVENT_NAME, FECHA_INICIO, FECHA_FIN, CODIGO_MARCA, ',
'            COD_CLIENTE, ESTADO, COD_LISTA_PRECIO,',
'            AUTORIZADO, AUTORIZADO_POR, FEC_AUTORIZADO,',
'            APLICA_LINEA, APLICA_MIX, IND_HASTA_AGOTAR_STOCK',
'',
'    INTO :P241_EVENT_NAME, :P241_FECHA_INICIO, :P241_FECHA_FIN, :P241_CODIGO_MARCA,',
'         :P241_COD_CLIENTE, :P241_ESTADO, :P241_COD_LISTA_PRECIO,',
'         :P241_AUTORIZADO, :P241_AUTORIZADO_POR, :P241_FEC_AUTORIZADO,',
'         :P241_APLICA_LINEA, :P241_APLICA_MIX, :P241_IND_HASTA_AGOTAR_STOCK         ',
'',
'    FROM ST_PROMOCION_CAB',
'    WHERE EVENTID = :P241_EVENTID',
'    AND COD_EMPRESA = :P_COD_EMPRESA;',
'    ',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'        :P241_EVENT_NAME := NULL;',
'        :P241_FECHA_INICIO := NULL;',
'        :P241_FECHA_FIN := NULL;',
'        :P241_CODIGO_MARCA := NULL;',
'        :P241_COD_CLIENTE := NULL;',
'        :P241_ESTADO := NULL;',
'        :P241_COD_LISTA_PRECIO := NULL;',
'        :P241_AUTORIZADO := NULL;',
'        :P241_AUTORIZADO_POR := NULL; ',
'        :P241_FEC_AUTORIZADO := NULL;',
'        :P241_APLICA_LINEA :=''S'';',
'        :P241_APLICA_MIX :=''N'';',
'        :P241_IND_HASTA_AGOTAR_STOCK :=''N'';',
'END;',
'',
''))
,p_attribute_02=>'P241_EVENTID,P_COD_EMPRESA'
,p_attribute_03=>'P241_APLICA_LINEA,P241_APLICA_MIX,P241_IND_HASTA_AGOTAR_STOCK,P241_EVENT_NAME,P241_FECHA_INICIO,P241_FECHA_FIN,P241_CODIGO_MARCA,P241_COD_CLIENTE,P241_ESTADO,P241_COD_LISTA_PRECIO,P241_AUTORIZADO,P241_AUTORIZADO_POR,P241_FEC_AUTORIZADO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(138651240578528747)
,p_event_id=>wwv_flow_imp.id(138650979557528744)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    APEX_COLLECTION.CREATE_OR_TRUNCATE_COLLECTION(''PRODUCTOS'');',
'    STPROMOC.pr_cargar_prod_princ (:P_COD_EMPRESA,',
'                                   :P241_EVENTID);',
'                                   ',
'    :P241_INDICADOR_REPORTE_REGALOS := ''1'';',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;',
'',
''))
,p_attribute_02=>'P241_EVENTID,P_COD_EMPRESA'
,p_attribute_03=>'P241_INDICADOR_REPORTE_REGALOS'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(138651307045528748)
,p_event_id=>wwv_flow_imp.id(138650979557528744)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    APEX_COLLECTION.CREATE_OR_TRUNCATE_COLLECTION(''REGALOS'');',
'    STPROMOC.pr_cargar_prod_regalo (:P_COD_EMPRESA,',
'                                   :P241_EVENTID);',
'                                   ',
'    :P241_INDICADOR_REPORTE_REGALOS := ''1'';',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;',
'',
''))
,p_attribute_02=>'P241_EVENTID,P_COD_EMPRESA'
,p_attribute_03=>'P241_INDICADOR_REPORTE_REGALOS'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(138651481405528749)
,p_event_id=>wwv_flow_imp.id(138650979557528744)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    APEX_COLLECTION.CREATE_OR_TRUNCATE_COLLECTION(''CLIENTES_EXCLUIDOS'');',
'',
'    STPROMOC.pr_cargar_cliente (:P_COD_EMPRESA, ',
'                                :P241_EVENTID);',
'                                   ',
'    :P241_INDICADOR_REPORTE_CLIE := ''1'';',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;',
'',
''))
,p_attribute_02=>'P241_EVENTID,P_COD_EMPRESA'
,p_attribute_03=>'P241_INDICADOR_REPORTE_CLIE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(138651583956528750)
,p_event_id=>wwv_flow_imp.id(138650979557528744)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    :P241_CANTIDAD_VENDIDA := STPROMOC.fc_calcular_cantidad_vendida (:P_COD_EMPRESA,',
'                                                                     :P241_FECHA_INICIO,',
'                                                                     :P241_FECHA_FIN,',
'                                                                     :P241_EVENTID); ',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;',
'',
''))
,p_attribute_02=>'P_COD_EMPRESA,P241_FECHA_INICIO,P241_FECHA_FIN,P241_EVENTID'
,p_attribute_03=>'P241_CANTIDAD_VENDIDA'
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
 p_id=>wwv_flow_imp.id(153256194467869701)
,p_event_id=>wwv_flow_imp.id(138650979557528744)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(55456151961566441)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P241_INDICADOR_REPORTE_REGALOS'
,p_client_condition_expression=>'1'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(153256233217869702)
,p_event_id=>wwv_flow_imp.id(138650979557528744)
,p_event_result=>'TRUE'
,p_action_sequence=>80
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(59078060620380936)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P241_INDICADOR_REPORTE_REGALOS'
,p_client_condition_expression=>'1'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(153256349928869703)
,p_event_id=>wwv_flow_imp.id(138650979557528744)
,p_event_result=>'TRUE'
,p_action_sequence=>90
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(60948795360303002)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P241_INDICADOR_REPORTE_REGALOS'
,p_client_condition_expression=>'1'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(61222021951647330)
,p_name=>'DA_PERMISO_APROBAR'
,p_event_sequence=>260
,p_condition_element=>'P241_PERMITE_APROBAR'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'N'
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(61222158159647331)
,p_event_id=>wwv_flow_imp.id(61222021951647330)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P241_AUTORIZADO,P241_AUTORIZADO_POR,P241_FEC_AUTORIZADO'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(55455786105566437)
,p_process_sequence=>20
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_INIT'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
' ',
'   ',
'',
'    :P241_PERMITE_APROBAR := BUSCA_PERMISO (  :P_COD_EMPRESA,',
'                                              ''STPROMOC'',',
'                                              :P_COD_USUARIO,',
'                                              ''PERMITE_APROBAR'');',
'',
'',
'    ',
'',
' :P241_COD_EMPRESA  := ''1'';',
'    :P241_COD_MODULO   := ''ST'';',
'    :P241_COD_FORMA    := ''ST'';',
'    :P241_INDICADOR_ALERT := ''0'';',
'    :P241_INDICADOR_REPORTE_REGALOS := ''0'';',
'    :P241_INDICADOR_REPORTE_CLIE := ''0'';',
'    :P241_AUTORIZADO :=''B'';',
'    :P241_APLICA_LINEA :=''S'';',
'    :P241_APLICA_MIX :=''N'';',
'    :P241_IND_HASTA_AGOTAR_STOCK :=''N'';',
'    :P241_ORDEN_DETALLE := ''1'';',
'',
'-- CARGA COLLECTIONS --',
'IF :P241_EVENTID IS   NULL THEN',
'    STPROMOC.pr_crear_col_productos;',
'    STPROMOC.pr_crear_col_regalos;',
'    STPROMOC.pr_crear_col_clientes;',
'',
'-- PROBAR PERMISO AUTORIZAR',
'--:P241_PERMITE_APROBAR := ''S'';',
'END IF;',
'',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;'))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(138648649027528721)
,p_process_sequence=>30
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_INIT_1'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF :P241_EVENTID IS NOT NULL THEN',
'BEGIN',
'',
'    SELECT  EVENT_NAME, FECHA_INICIO, FECHA_FIN, CODIGO_MARCA, ',
'            COD_CLIENTE, ESTADO, COD_LISTA_PRECIO,',
'            AUTORIZADO, AUTORIZADO_POR, FEC_AUTORIZADO,',
'            APLICA_LINEA, APLICA_MIX, IND_HASTA_AGOTAR_STOCK',
'',
'    INTO :P241_EVENT_NAME, :P241_FECHA_INICIO, :P241_FECHA_FIN, :P241_CODIGO_MARCA,',
'         :P241_COD_CLIENTE, :P241_ESTADO, :P241_COD_LISTA_PRECIO,',
'         :P241_AUTORIZADO, :P241_AUTORIZADO_POR, :P241_FEC_AUTORIZADO,',
'         :P241_APLICA_LINEA, :P241_APLICA_MIX, :P241_IND_HASTA_AGOTAR_STOCK         ',
'',
'    FROM ST_PROMOCION_CAB',
'    WHERE EVENTID = :P241_EVENTID',
'    AND COD_EMPRESA = :P_COD_EMPRESA;',
'    ',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'        :P241_EVENT_NAME := NULL;',
'        :P241_FECHA_INICIO := NULL;',
'        :P241_FECHA_FIN := NULL;',
'        :P241_CODIGO_MARCA := NULL;',
'        :P241_COD_CLIENTE := NULL;',
'        :P241_ESTADO := NULL;',
'        :P241_COD_LISTA_PRECIO := NULL;',
'        :P241_AUTORIZADO := NULL;',
'        :P241_AUTORIZADO_POR := NULL; ',
'        :P241_FEC_AUTORIZADO := NULL;',
'        :P241_APLICA_LINEA :=''S'';',
'        :P241_APLICA_MIX :=''N'';',
'        :P241_IND_HASTA_AGOTAR_STOCK :=''N'';',
'END;',
'BEGIN',
'',
'    :P241_CANTIDAD_VENDIDA := STPROMOC.fc_calcular_cantidad_vendida (:P_COD_EMPRESA,',
'                                                                     :P241_FECHA_INICIO,',
'                                                                     :P241_FECHA_FIN,',
'                                                                     :P241_EVENTID); ',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;',
'',
'',
'BEGIN',
'',
'    APEX_COLLECTION.CREATE_OR_TRUNCATE_COLLECTION(''PRODUCTOS'');',
'    STPROMOC.pr_cargar_prod_princ (:P_COD_EMPRESA,',
'                                   :P241_EVENTID);',
'                                   ',
'    :P241_INDICADOR_REPORTE_REGALOS := ''1'';',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;',
'',
'',
'',
'BEGIN',
'',
'    APEX_COLLECTION.CREATE_OR_TRUNCATE_COLLECTION(''REGALOS'');',
'    STPROMOC.pr_cargar_prod_regalo (:P_COD_EMPRESA,',
'                                   :P241_EVENTID);',
'                                   ',
'    :P241_INDICADOR_REPORTE_REGALOS := ''1'';',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;',
'',
'',
'',
'BEGIN',
'',
'    APEX_COLLECTION.CREATE_OR_TRUNCATE_COLLECTION(''CLIENTES_EXCLUIDOS'');',
'',
'    STPROMOC.pr_cargar_cliente (:P_COD_EMPRESA, ',
'                                :P241_EVENTID);',
'                                   ',
'    :P241_INDICADOR_REPORTE_CLIE := ''1'';',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;',
'',
' begin',
'	select nvl(max((s.id_registro))  ,1)',
'	  into :P241_ORDEN_DETALLE',
'	  from st_promocion s',
'	  where s.cod_empresa=''1''',
'    and nro_promo=:P241_EVENTID;',
'	  if :P241_ORDEN_DETALLE is null then',
'	  	 :P241_ORDEN_DETALLE:=''1'';',
'	  	 end if;',
'exception',
'	when others then',
'	 	 :P241_ORDEN_DETALLE:=''1'';',
'end;',
'',
'else',
':P241_ORDEN_DETALLE:=1;',
'END IF;'))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(138650436967528739)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'limpia'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(60950747508303022)
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(60950827455303023)
,p_process_sequence=>10
,p_process_point=>'ON_SUBMIT_BEFORE_COMPUTATION'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_GUARDAR_BD'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'if :P241_EVENTID is null then',
'BEGIN',
'    	SELECT max((s.EVENTID)) + 1',
'    	INTO :P241_EVENTID',
'    	FROM st_promocion_CAB s',
'    	WHERE s.cod_empresa= :P_COD_EMPRESA',
'      and :P241_EVENTID is null;',
'    EXCEPTION',
'	    WHEN OTHERS THEN',
'           :P241_EVENTID:=1;',
'    END;',
'    end if;',
'',
'    STPROMOC.guardar_cabecera ( :P_COD_EMPRESA,',
'                                :P241_EVENTID,',
'                                :P_COD_SUCURSAL,',
'                                :P241_EVENT_NAME,',
'                                :P241_FECHA_INICIO,',
'                                :P241_FECHA_FIN,',
'                                :P241_CODIGO_MARCA,',
'                                :P241_FEC_AUTORIZADO,',
'                                :P241_AUTORIZADO_POR,                                ',
'                                :P241_AUTORIZADO,',
'                                :P241_ESTADO,',
'                                :P241_COD_LISTA_PRECIO,',
'                                :P241_COD_CLIENTE,',
'                                :P241_APLICA_LINEA,',
'                                :P241_APLICA_MIX,',
'                                :P241_IND_HASTA_AGOTAR_STOCK);',
'',
'    STPROMOC.pr_confirmar_accion_cliente;',
'',
'    STPROMOC.pr_confirmar_productos (:P_COD_EMPRESA, :P241_EVENTID);',
'',
'    STPROMOC.pr_confirmar_regalos (:P_COD_EMPRESA, :P241_EVENTID);',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'    RAISE_APPLICATION_ERROR(-20000, ''Error en la tabla de promociones ''|| sqlerrm);',
'',
'        APEX_DEBUG.ERROR(SQLERRM);',
'        ROLLBACK;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>unistr('\00A1Ups!.. Ocurri\00F3 un error.')
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(60950747508303022)
,p_process_success_message=>unistr('\00A1Los datos se guardaron exitosamente! &P241_EVENTID.')
);
wwv_flow_imp.component_end;
end;
/
