prompt --application/pages/page_00549
begin
--   Manifest
--     PAGE: 00549
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
 p_id=>549
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'Informe de Comisiones'
,p_alias=>'INFORME-DE-COMISIONES'
,p_step_title=>'Informe de Comisiones'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#btn { ',
'        margin-top: 15px;',
'        display: flex;',
'        background:white;',
'        background-image: linear-gradient(180deg, #ffee00e4  0%, #fff890 100%);',
'        color:  darkblue;',
'        justify-content: center;',
'        align-items: center; ',
'        box-shadow: #6585af 1px 1px 5px 1px; ',
'        border-style: solid;',
'        border-width: 0.5px;',
'        border-color:  yellow;',
'}',
'',
'',
'.t-Form-label{',
'    color:  darkblue !important;',
'    font-weight: bold !important;',
'    }',
'',
'#reg_parametros {',
'      background-color: #b0c3da !important;',
'      box-shadow: black 1px 1px 5px 1px;}',
'      /*487ab8*/',
'',
'  .t-Report-colHead {',
'      background: #003a85!important;',
'       color: yellow; ',
' }'))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_last_updated_by=>'JUANSA'
,p_last_upd_yyyymmddhh24miss=>'20240226091617'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(174990578223969502)
,p_plug_name=>'Informe de Comisiones'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>1010
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT  C001 COD_VENDEDOR',
'       ,C002 NOMBRE_VENDEDOR',
'       ,C003 CLIENTE  ',
'       ,C004 DIVISION  ',
'       ,to_number(Nvl(C005,0)) DTO_VTA_MIN',
'       ,to_number(Nvl(C006,0)) DTO_VTA_MAX',
'       ,to_number(C007) TOTAL_VENTA  ',
'       ,to_number(C008) META       ',
'       ,to_number(C009) PORC_COMISION       ',
'       ,to_number(C010) MONTO_COMISION',
'       ,to_number(C011) PLUS',
'       , null VER ',
'FROM APEX_COLLECTIONS  ',
'WHERE COLLECTION_NAME = ''COMISION_VENDEDORES''  '))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Informe de Comisiones'
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
 p_id=>wwv_flow_imp.id(174990739377969504)
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
,p_internal_uid=>174990739377969504
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(174990839914969505)
,p_db_column_name=>'COD_VENDEDOR'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Codigo'
,p_column_type=>'STRING'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(174990981099969506)
,p_db_column_name=>'NOMBRE_VENDEDOR'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Nombre Vendedor'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(174991080265969507)
,p_db_column_name=>'CLIENTE'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Cliente'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(174991100977969508)
,p_db_column_name=>'DIVISION'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Division'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(174991956493969516)
,p_db_column_name=>'VER'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Vtas.'
,p_column_link=>'javascript:$s(''P549_COD_VND_SELECT'',''#COD_VENDEDOR#'');'
,p_column_linktext=>'<span class="fa fa-search" aria-hidden="true"></span>'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(174993986903969536)
,p_db_column_name=>'DTO_VTA_MIN'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'%Dto.Vta.Min.'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_format_mask=>'990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(174994015022969537)
,p_db_column_name=>'DTO_VTA_MAX'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>'%Dto.Vta.Max.'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_format_mask=>'990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(174994153828969538)
,p_db_column_name=>'TOTAL_VENTA'
,p_display_order=>150
,p_column_identifier=>'O'
,p_column_label=>'Total Venta'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(174994223807969539)
,p_db_column_name=>'META'
,p_display_order=>160
,p_column_identifier=>'P'
,p_column_label=>'Meta'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(174994382830969540)
,p_db_column_name=>'PORC_COMISION'
,p_display_order=>170
,p_column_identifier=>'Q'
,p_column_label=>'%Comision'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_format_mask=>'990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(174994495882969541)
,p_db_column_name=>'MONTO_COMISION'
,p_display_order=>180
,p_column_identifier=>'R'
,p_column_label=>'Monto Comision'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(174994546096969542)
,p_db_column_name=>'PLUS'
,p_display_order=>190
,p_column_identifier=>'S'
,p_column_label=>'Plus'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(175017033139589709)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1750171'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'COD_VENDEDOR:NOMBRE_VENDEDOR:DIVISION:TOTAL_VENTA:META:PORC_COMISION:MONTO_COMISION:VER:'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(174990604517969503)
,p_plug_name=>'Detalle de Comisiones'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>1020
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT  C001 FECHA_FAC',
'       ,C002 TIPO',
'       ,C003 SERIE',
'       ,C004 NRO  ',
'       ,C005 COD_CLIENTE',
'       ,C006 NOMBRE_CLIENTE',
'       ,C007 COD_ARTICULO',
'       ,C008 DESC_ARTICULO',
'       ,C009 CANTIDAD        ',
'       ,to_number(C010) POR_DTO',
'       ,to_number(C011) COSTO_FLETE',
'       ,to_number(C012) TOTAL',
'FROM APEX_COLLECTIONS  ',
'WHERE COLLECTION_NAME = ''COMISION_DETALLE''  ',
'AND C013= :P549_COD_VND_SELECT'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P549_COD_VND_SELECT'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Detalle de Comisiones'
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
 p_id=>wwv_flow_imp.id(174992010338969517)
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
,p_internal_uid=>174992010338969517
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(174992160376969518)
,p_db_column_name=>'FECHA_FAC'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Fecha'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_format_mask=>'DD/MM/YYYY'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(174992206269969519)
,p_db_column_name=>'TIPO'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Tipo'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(174992359241969520)
,p_db_column_name=>'SERIE'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Serie'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(174992446894969521)
,p_db_column_name=>'NRO'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Nro'
,p_column_type=>'STRING'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(174992570384969522)
,p_db_column_name=>'COD_CLIENTE'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Codigo'
,p_column_type=>'STRING'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(174992648967969523)
,p_db_column_name=>'NOMBRE_CLIENTE'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Nombre Cliente'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(174992731677969524)
,p_db_column_name=>'COD_ARTICULO'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Codigo'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(174992863585969525)
,p_db_column_name=>'DESC_ARTICULO'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Descripcion Articulo'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(174992907337969526)
,p_db_column_name=>'CANTIDAD'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Cantidad'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(174995147265969548)
,p_db_column_name=>'POR_DTO'
,p_display_order=>100
,p_column_identifier=>'N'
,p_column_label=>'%Dto'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_format_mask=>'990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(174995299552969549)
,p_db_column_name=>'COSTO_FLETE'
,p_display_order=>110
,p_column_identifier=>'O'
,p_column_label=>'Costo Flete'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_format_mask=>'999G999G999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(174995372513969550)
,p_db_column_name=>'TOTAL'
,p_display_order=>120
,p_column_identifier=>'P'
,p_column_label=>'Total'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(175017682861589699)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1750177'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'FECHA_FAC:TIPO:SERIE:NRO:COD_CLIENTE:NOMBRE_CLIENTE:COD_ARTICULO:DESC_ARTICULO:CANTIDAD:POR_DTO:COSTO_FLETE:TOTAL:'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(224381921708172240)
,p_plug_name=>'PARAMETROS'
,p_region_name=>'reg_parametros'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>1000
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(171359865289796150)
,p_button_sequence=>140
,p_button_plug_id=>wwv_flow_imp.id(224381921708172240)
,p_button_name=>'Filtrar'
,p_button_static_id=>'btn'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--iconRight:t-Button--stretch:t-Button--gapTop'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Filtrar'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-refresh'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
,p_grid_column_span=>2
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(173896506490651322)
,p_name=>'P549_TIPO'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(224381921708172240)
,p_prompt=>'Mes Cerrado'
,p_display_as=>'NATIVE_YES_NO'
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--preTextBlock:t-Form-fieldContainer--postTextBlock:margin-top-none:margin-left-sm:margin-right-none'
,p_attribute_01=>'N'
,p_attribute_02=>'S'
,p_attribute_04=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(173896819781651321)
,p_name=>'P549_PERIODO'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(224381921708172240)
,p_prompt=>'Periodo'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_PERIODO'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT NUM_PERIODO||'' -  ''|| FEC_INICIAL ||''  al  ''||FEC_FINAL D,',
'	   FEC_INICIAL, FEC_FINAL,',
'	   NUM_PERIODO R',
'  FROM FV_PERIODOS_COMISION ',
' WHERE COD_EMPRESA = :P_COD_EMPRESA ',
' ORDER BY NUM_PERIODO DESC'))
,p_cSize=>30
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
 p_id=>wwv_flow_imp.id(173897255714651320)
,p_name=>'P549_INICIO'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(224381921708172240)
,p_prompt=>'Fecha Inicio'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
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
 p_id=>wwv_flow_imp.id(173897674045651320)
,p_name=>'P549_MES'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(224381921708172240)
,p_prompt=>'Mes:'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT LPAD(MES,2,''0'')||''-''||UPPER(DESCRIPCION) MES, LPAD(MES,2,''0'') COD',
'FROM MESES;',
''))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_colspan=>3
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(173898048227651320)
,p_name=>'P549_ANIO'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(224381921708172240)
,p_prompt=>unistr('A\00F1o:')
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
 p_id=>wwv_flow_imp.id(173898419670651320)
,p_name=>'P549_FIN'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(224381921708172240)
,p_prompt=>'Fecha Fin'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
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
 p_id=>wwv_flow_imp.id(173911663500576201)
,p_name=>'P549_VENDEDOR'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(224381921708172240)
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
,p_cSize=>30
,p_colspan=>5
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
 p_id=>wwv_flow_imp.id(173912062799576205)
,p_name=>'P549_INFORME'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(224381921708172240)
,p_prompt=>'Tipo:'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_display_when_type=>'NEVER'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(174994682084969543)
,p_name=>'P549_COD_VND_SELECT'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(224381921708172240)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(171359311195796145)
,p_name=>'DA_ACTIVA_PERIODOS'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P549_TIPO'
,p_condition_element=>'P549_TIPO'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'S'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(171359502548796147)
,p_event_id=>wwv_flow_imp.id(171359311195796145)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P549_MES,P549_ANIO'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(171359726449796149)
,p_event_id=>wwv_flow_imp.id(171359311195796145)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P549_PERIODO'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(171359491377796146)
,p_event_id=>wwv_flow_imp.id(171359311195796145)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P549_MES,P549_ANIO'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(171359681236796148)
,p_event_id=>wwv_flow_imp.id(171359311195796145)
,p_event_result=>'FALSE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P549_PERIODO'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(173911716708576202)
,p_name=>'da_limpiar'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P549_TIPO'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(173911852782576203)
,p_event_id=>wwv_flow_imp.id(173911716708576202)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P549_PERIODO,P549_MES,P549_ANIO,P549_INICIO,P549_FIN,P549_VENDEDOR'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(173912134483576206)
,p_name=>'da_periodo'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P549_PERIODO'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(173912231724576207)
,p_event_id=>wwv_flow_imp.id(173912134483576206)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    IF :P549_PERIODO IS NOT NULL THEN ',
'    	BEGIN',
'    	    SELECT  to_char(FEC_INICIAL,''DD/MM/YYYY''),to_char(FEC_FINAL,''DD/MM/YYYY'')',
'            INTO 	:P549_INICIO, :P549_FIN',
'    	    FROM fv_periodos_comision',
'    		WHERE cod_empresa= :P_COD_EMPRESA',
'    		AND	num_periodo = :P549_PERIODO;',
'    		EXCEPTION ',
'    			WHEN OTHERS THEN',
'    			:P549_INICIO :=NULL;',
'    			:P549_FIN :=NULL;',
'    			',
'    		END;',
'    ELSE',
'    	:P549_INICIO :=NULL;',
'    	:P549_FIN :=NULL;',
'    END IF;',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'     raise_application_error(-20000,  sqlerrm ); ',
'END;'))
,p_attribute_02=>'P549_PERIODO,P549_INICIO,P549_FIN'
,p_attribute_03=>'P549_INICIO,P549_FIN'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(173912388115576208)
,p_name=>'da_anio'
,p_event_sequence=>40
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P549_ANIO'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(173912456161576209)
,p_event_id=>wwv_flow_imp.id(173912388115576208)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    IF :P549_MES IS NOT NULL THEN ',
'    	BEGIN',
'                select to_date(''01''||''/''||:P549_mes||''/''||:P549_anio,''DD/MM/YYYY''),LAST_DAY(to_date(''01''||''/''||:P549_mes||''/''||:P549_anio,''DD/MM/YYYY''))',
'                INTO 	:P549_INICIO, :P549_FIN',
'                from dual;',
' ',
'    		EXCEPTION ',
'    			WHEN OTHERS THEN',
'    			:P549_INICIO :=NULL;',
'    			:P549_FIN :=NULL;',
'    			',
'    		END;',
'    ELSE',
'    	:P549_INICIO :=NULL;',
'    	:P549_FIN :=NULL;',
'    END IF;',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;'))
,p_attribute_02=>'P549_MES,P549_ANIO,P549_INICIO,P549_FIN'
,p_attribute_03=>'P549_INICIO,P549_FIN'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(173912552699576210)
,p_name=>'DA_MES'
,p_event_sequence=>50
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P549_MES'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(173912664174576211)
,p_event_id=>wwv_flow_imp.id(173912552699576210)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P549_ANIO,P549_INICIO,P549_FIN'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(173912924800576214)
,p_name=>'da_filtrar'
,p_event_sequence=>60
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(171359865289796150)
,p_condition_element=>'P549_INICIO'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(173913122797576216)
,p_event_id=>wwv_flow_imp.id(173912924800576214)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'Debe cargar correctamente la Fecha!'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(174993589867969532)
,p_event_id=>wwv_flow_imp.id(173912924800576214)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'var spinner = apex.util.showSpinner();'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(173913002320576215)
,p_event_id=>wwv_flow_imp.id(173912924800576214)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF :P549_INICIO is not null and :P549_FIN IS NOT NULL THEN',
'        inv.fvcomven.calcula_com_rep(:P549_VENDEDOR,:P549_MES||:P549_ANIO);',
'ELSE',
'        raise_application_error(-20000,''Debe cargar corretamente la Fecha.'');',
'END IF;'))
,p_attribute_02=>'P549_INICIO,P549_FIN,P549_VENDEDOR,P549_MES,P549_ANIO'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(174993407672969531)
,p_event_id=>wwv_flow_imp.id(173912924800576214)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(174990578223969502)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(379344318900055046)
,p_event_id=>wwv_flow_imp.id(173912924800576214)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(174990604517969503)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(174993606993969533)
,p_event_id=>wwv_flow_imp.id(173912924800576214)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$("#apex_wait_overlay").remove();',
'$(".u-Processing").remove();'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(174994766903969544)
,p_name=>'da_refresh'
,p_event_sequence=>70
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P549_COD_VND_SELECT'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(174994891630969545)
,p_event_id=>wwv_flow_imp.id(174994766903969544)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'null;'
,p_attribute_02=>'P549_COD_VND_SELECT'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(174994933842969546)
,p_event_id=>wwv_flow_imp.id(174994766903969544)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(174990604517969503)
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(174993700349969534)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'LIMPIAR'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(174993865865969535)
,p_process_sequence=>20
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'clear_collec'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'    apex_collection.create_or_truncate_collection(''COMISION_VENDEDORES'');',
'    apex_collection.create_or_truncate_collection(''COMISION_DETALLE'');',
'    :P549_TIPO:=''S'';'))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_imp.component_end;
end;
/
