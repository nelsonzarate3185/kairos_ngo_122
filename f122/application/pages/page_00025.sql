prompt --application/pages/page_00025
begin
--   Manifest
--     PAGE: 00025
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
 p_id=>25
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>unistr('Devoluci\00F3n por Nota de Cr\00E9dito')
,p_alias=>'DEVOLUCION-POR-NOTA-DE-CREDITO'
,p_step_title=>unistr('Devoluci\00F3n por Nota de Cr\00E9dito')
,p_autocomplete_on_off=>'OFF'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#bt_imprimir {',
'    margin-left: 25%;',
'    width: 50%;',
'    margin-top: 30px;',
'    height: 60px;',
'    font-size: 25px;',
'}',
'',
'#bt_imprimir2 {',
'    color: rgb(233, 236, 240);',
'    background-color: rgb(73, 37, 145);',
'}',
'',
'',
'',
'#bt_aceptar {',
'    margin-left: 40%;',
'    width: 20%;',
'    margin-top: 15px;',
'    height: 40px;',
'    font-size: 15px;',
'    }',
'',
'#bt_autorizar{',
'    color: white;',
'    background-color: rgb(62, 132, 62);',
'}',
'',
'#P25_MSJ_ERROR_DISPLAY {',
'    color: red;',
'}',
'',
'.apex-item-select:focus, .apex-item-text:focus, .apex-item-textarea:focus {',
'   background-color:  hsl(147, 69%, 87%)  !important;',
'   border-color:  #c9fceb  !important;',
'}',
'',
'',
'#GRILLA   th.a-IRR-header {',
'  background-color:  #003A85;',
'  color: yellow;',
' /* border-color: rgb(43, 79, 80);*/',
'}',
'',
'',
'',
'.t-Form-label{',
'    color:  darkblue !important;',
'    font-weight: bold !important;;',
'    }',
'',
'#PARAMETROS{',
'      background-color: #003a85 !important;',
'      box-shadow: black 1px 1px 5px 1px;}',
'',
'#P94_FECHA_FIN, #P94_FECHA_INI, #P94_ORIGEN, #P94_ESTADO, #P94_CLIENTE {',
'    background: white;',
'    border-color: yellow; ',
'    color: darkblue;',
'}      ',
'',
' .a-IRR-header{',
'      background-color: #003a85 !important;',
'	  font-weight: bold !important;',
'      border:0.5px solid #16488a !important;',
'   }',
'',
'  .a-IRR-headerLink{',
'    background-color: #003a85 !important;',
'	  color: #FFED00 !important;    }',
'   ',
'.a-IRR-table tr td { ',
'        color: black !important;',
'   }',
' ',
'.a-IRR-table td {',
'    border: 1px solid #003a85b7 !important;',
'}',
'',
'',
'',
'#btn{ ',
'       ',
'        background:white;',
'        background-image: linear-gradient(180deg, rgb(1, 1, 131)  0%, #003a85de 100%);',
'        color:  yellow; ',
'        justify-content: center;',
'        align-items: center; ',
'        box-shadow: #79beca 1px 1px 5px 1px; ',
'        border-style: solid;',
'        border-width: 0.5px;',
'        border-color: darkblue; ',
'}',
'',
'#btn2, #btn3, #btn4{ ',
'       ',
'        background:white;',
'        background-image: linear-gradient(180deg, rgb(1, 1, 131)  0%, #003a85de 100%);',
'        color:  yellow; ',
'        justify-content: center;',
'        align-items: center; ',
'        box-shadow: #79beca 1px 1px 5px 1px; ',
'        border-style: solid;',
'        border-width: 0.5px;',
'        border-color: darkblue; ',
'}',
'',
'',
'',
'',
'',
' ',
'',
'',
'',
'.chip {',
'    padding: 4px 10px;',
'    border-radius: 16px;',
'    box-shadow: 0 1px 2px 0 rgba(0, 0, 0, .05);',
'}',
'',
'.chip-success {',
'    background: #cdffe0;',
'    color: #00592e;',
'}',
'',
'.chip-danger {',
'    background: #ffebeb;',
'    color: #a50000;',
'}',
'',
'.chip-warning {',
'    background: #fffedc;',
'    color: #764400;',
'}',
'',
'.chip-primary {',
'    background: #e9f5ff;',
'    color: #004f95;',
'}',
'',
'.chip-purple {',
'    background: #eddbfa;',
'    color: #5200a5;',
'}',
'',
'.chip-pink {',
'    background: #ffeffa;',
'    color: #990067;',
'}',
'',
'.chip-orange {',
'    background: #fff2e4;',
'    color: #8d3600;',
'}',
'',
'.chip-teal {',
'    background: #e4fdff;',
'    color: #00526e;',
'}',
'',
'#btndet{   ',
'        background:white;',
'        background-image: linear-gradient(180deg, rgb(1, 1, 131)  0%, #003a85de 100%);',
'        color:  yellow; ',
'        ',
'        justify-content: center;',
'        align-items: center; ',
'        box-shadow: #79beca 1px 1px 5px 1px; ',
'        border-style: solid;',
'        border-width: 0.5px;',
'        border-color: rgb(97, 91, 0); ',
'        ',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_last_updated_by=>'INV'
,p_last_upd_yyyymmddhh24miss=>'20230925100430'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(9594667737965832)
,p_plug_name=>'Principal'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(9594772043965833)
,p_plug_name=>'Listado de Comprobantes'
,p_parent_plug_id=>wwv_flow_imp.id(9594667737965832)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select SEQ_ID,',
'       C001 COD_EMPRESA,',
'       C002 TIP_COMPROBANTE,',
'       C003 SER_COMPROBANTE,',
'       C004 NRO_COMPROBANTE,',
'       C005 COD_SUCURSAL,',
'       C006 FEC_COMPROBANTE,',
'       C007 COD_CLIENTE,',
'       C008 COD_VENDEDOR,',
'       C009 COD_MONEDA,',
'       to_number(C010) TOT_COMPROBANTE,',
'       C011 FEC_ESTADO,',
'       to_number(C012) MONTO_DEV_NCR,',
'       C013 ESTADO,',
'       C014 IND_CAJA,',
'       NULL CARGAR_MONTO_DEV,',
'       NULL AUTORIZA,',
'       NULL IMPRIMIR',
'  from APEX_COLLECTIONS',
' WHERE collection_name = ''VTDEVNCR''',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Listado de Comprobantes'
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
 p_id=>wwv_flow_imp.id(10816605495676408)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'MILAGROFE'
,p_internal_uid=>10816605495676408
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11170423652969238)
,p_db_column_name=>'SEQ_ID'
,p_display_order=>10
,p_column_identifier=>'DI'
,p_column_label=>'Seq Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10816739594676409)
,p_db_column_name=>'COD_EMPRESA'
,p_display_order=>20
,p_column_identifier=>'A'
,p_column_label=>'Cod Empresa'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10816827832676410)
,p_db_column_name=>'TIP_COMPROBANTE'
,p_display_order=>30
,p_column_identifier=>'B'
,p_column_label=>'Tipo Comprobante'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10816943703676411)
,p_db_column_name=>'SER_COMPROBANTE'
,p_display_order=>40
,p_column_identifier=>'C'
,p_column_label=>'Serie Comprobante'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10817136538676413)
,p_db_column_name=>'COD_SUCURSAL'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Cod Sucursal'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10817303173676415)
,p_db_column_name=>'COD_CLIENTE'
,p_display_order=>60
,p_column_identifier=>'G'
,p_column_label=>'Cliente'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_rpt_named_lov=>wwv_flow_imp.id(6220104513588210)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10817478071676416)
,p_db_column_name=>'COD_VENDEDOR'
,p_display_order=>70
,p_column_identifier=>'H'
,p_column_label=>'Vendedor'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_rpt_named_lov=>wwv_flow_imp.id(6512217793593966)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10818172936676423)
,p_db_column_name=>'COD_MONEDA'
,p_display_order=>80
,p_column_identifier=>'O'
,p_column_label=>'Moneda'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_column_alignment=>'CENTER'
,p_rpt_named_lov=>wwv_flow_imp.id(6217923132509467)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10818885717676430)
,p_db_column_name=>'ESTADO'
,p_display_order=>90
,p_column_identifier=>'V'
,p_column_label=>'Estado'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11169435080969228)
,p_db_column_name=>'NRO_COMPROBANTE'
,p_display_order=>100
,p_column_identifier=>'CZ'
,p_column_label=>'Nro Comprobante'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11169570348969229)
,p_db_column_name=>'FEC_COMPROBANTE'
,p_display_order=>110
,p_column_identifier=>'DA'
,p_column_label=>'Fecha'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11169798945969231)
,p_db_column_name=>'FEC_ESTADO'
,p_display_order=>120
,p_column_identifier=>'DC'
,p_column_label=>'Fecha de Alta'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11169952120969233)
,p_db_column_name=>'IND_CAJA'
,p_display_order=>130
,p_column_identifier=>'DE'
,p_column_label=>'Ind Caja'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11170191258969235)
,p_db_column_name=>'TOT_COMPROBANTE'
,p_display_order=>140
,p_column_identifier=>'DF'
,p_column_label=>'Total'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11170267980969236)
,p_db_column_name=>'MONTO_DEV_NCR'
,p_display_order=>150
,p_column_identifier=>'DG'
,p_column_label=>unistr('Monto Devoluci\00F3n')
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11170307984969237)
,p_db_column_name=>'CARGAR_MONTO_DEV'
,p_display_order=>160
,p_column_identifier=>'DH'
,p_column_label=>unistr('Monto Devoluci\00F3n')
,p_column_link=>'javascript:$s(''P25_SEQ_ID'',''#SEQ_ID#'');'
,p_column_linktext=>'<input type = "button" value = "Ingresar" id="bt_grilla"/>'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11169151271969225)
,p_db_column_name=>'AUTORIZA'
,p_display_order=>170
,p_column_identifier=>'CY'
,p_column_label=>unistr('Devoluci\00F3n')
,p_column_link=>'javascript:$s(''P25_AUTORIZAR'',''#SEQ_ID#'');'
,p_column_linktext=>'<input type = "button" value = "Autorizar" id="bt_autorizar"/>'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(208558167917354620)
,p_db_column_name=>'IMPRIMIR'
,p_display_order=>180
,p_column_identifier=>'DJ'
,p_column_label=>'Imprimir'
,p_column_link=>'javascript:$s(''P25_IMPRIMIR'',''#SEQ_ID#'');'
,p_column_linktext=>'<input type = "button" value = "Imprimir" id="bt_imprimir2"/>'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(11129313275824520)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'111294'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>10
,p_report_columns=>'TIP_COMPROBANTE:SER_COMPROBANTE:NRO_COMPROBANTE:FEC_COMPROBANTE:COD_CLIENTE:COD_VENDEDOR:COD_MONEDA:TOT_COMPROBANTE:MONTO_DEV_NCR:CARGAR_MONTO_DEV:AUTORIZA:IMPRIMIR:'
,p_sort_column_1=>'FEC_COMPROBANTE'
,p_sort_direction_1=>'DESC'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(10649835909001237)
,p_plug_name=>unistr('Ingresar Monto de Devoluci\00F3n')
,p_region_template_options=>'#DEFAULT#:js-dialog-autoheight:js-dialog-size600x400'
,p_plug_template=>wwv_flow_imp.id(40117728043263659)
,p_plug_display_sequence=>50
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_grid_column_span=>8
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(10650556028001244)
,p_plug_name=>'Derecha_imprimir'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>60
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_new_grid_row=>false
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(11005395937806511)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_plug_template=>wwv_flow_imp.id(40134615190263663)
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_source=>unistr('<p style="font-size:20px;font-weight:600;margin-top:10px;margin-bottom:10px">Devoluci\00F3n por Nota de Cr\00E9dito</p>')
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(10650600501001245)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(10650556028001244)
,p_button_name=>'BT_IMPRIMIR'
,p_button_static_id=>'bt_imprimir'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Imprimir'
,p_button_condition_type=>'NEVER'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(11169307118969227)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_imp.id(10649835909001237)
,p_button_name=>'BT_ACEPTAR'
,p_button_static_id=>'bt_aceptar'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Aceptar'
,p_warn_on_unsaved_changes=>null
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11169251224969226)
,p_name=>'P25_MONTO_DEV'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(10649835909001237)
,p_prompt=>'&nbsp'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_colspan=>8
,p_grid_column=>3
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11170503133969239)
,p_name=>'P25_SEQ_ID'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(10649835909001237)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11641170475537402)
,p_name=>'P25_AUTORIZAR'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(10649835909001237)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11641962648537410)
,p_name=>'P25_MSJ_ERROR'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(10649835909001237)
,p_prompt=>'MSJ'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_colspan=>8
,p_grid_column=>3
,p_grid_label_column_span=>0
,p_field_template=>wwv_flow_imp.id(40186463825263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(208558292999354621)
,p_name=>'P25_IMPRIMIR'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(10649835909001237)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(208558859746354627)
,p_name=>'P25_COD_CLIENTE'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(10649835909001237)
,p_prompt=>'Cod Cliente'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(11642326667537414)
,p_validation_name=>'VA_MONTO_DEV'
,p_validation_sequence=>10
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    V_MONTO NUMBER;',
'BEGIN    ',
'    SELECT C012',
'      INTO V_MONTO',
'      FROM APEX_COLLECTIONS',
'     WHERE COLLECTION_NAME = ''VTDEVNCR''',
'       AND SEQ_ID = :P25_SEQ_ID;',
'    ',
'    IF V_MONTO IS NOT NULL THEN',
'        RETURN TRUE;',
'    ELSE',
'        RETURN FALSE;',
'    END IF;',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'        RETURN FALSE;',
'END;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'Debe ingresar un monto.'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(10650859663001247)
,p_name=>'DA_CARGAR_REGION'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P25_NRO_COMPROBANTE'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(10650958861001248)
,p_event_id=>wwv_flow_imp.id(10650859663001247)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    SELECT MO.DESCRIPCION',
'      INTO :P25_MONEDA',
'      FROM VT_COMPROBANTES_CABECERA VT, MONEDAS MO',
'     WHERE VT.COD_MONEDA = MO.COD_MONEDA',
'       AND COD_EMPRESA = :P_COD_EMPRESA',
'       AND NRO_COMPROBANTE = :P25_NRO_COMPROBANTE',
'       AND TIP_COMPROBANTE =:P25_TIP_COMPROBANTE',
'       AND SER_COMPROBANTE = :P25_SER_COMPROBANTE ;',
'EXCEPTION    ',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;'))
,p_attribute_02=>'P25_NRO_COMPROBANTE,P25_SER_COMPROBANTE,P25_TIP_COMPROBANTE'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(10799367565598901)
,p_name=>'DA_SER_ASIGNADO'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P25_SER_COMPROBANTE'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(10799477640598902)
,p_event_id=>wwv_flow_imp.id(10799367565598901)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_02=>'P25_SER_COMPROBANTE'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(10799598879598903)
,p_name=>'DA_TIP_COMPROBANTE'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P25_TIP_COMPROBANTE'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(10799689744598904)
,p_event_id=>wwv_flow_imp.id(10799598879598903)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_02=>'P25_TIP_COMPROBANTE'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(11170664013969240)
,p_name=>'DA_ASIGNAR_MONTO'
,p_event_sequence=>40
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P25_SEQ_ID'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(11170797854969241)
,p_event_id=>wwv_flow_imp.id(11170664013969240)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'null;'
,p_attribute_02=>'P25_SEQ_ID'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(11641565092537406)
,p_event_id=>wwv_flow_imp.id(11170664013969240)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P25_MONTO_DEV,P25_MSJ_ERROR'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(11170837056969242)
,p_event_id=>wwv_flow_imp.id(11170664013969240)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(10649835909001237)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(11170946133969243)
,p_name=>'DA_CARGAR_MONTO'
,p_event_sequence=>50
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(11169307118969227)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(11171016811969244)
,p_event_id=>wwv_flow_imp.id(11170946133969243)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    TOT_COMPROBANTE NUMBER;',
'BEGIN',
'    SELECT TO_NUMBER(C010)',
'      INTO TOT_COMPROBANTE',
'      FROM APEX_COLLECTIONS',
'     WHERE COLLECTION_NAME = ''VTDEVNCR''',
'       AND SEQ_ID = :P25_SEQ_ID;',
'',
'    :P25_MSJ_ERROR := null;',
'',
'    IF TOT_COMPROBANTE >= TO_NUMBER(:P25_MONTO_DEV) AND TO_NUMBER(:P25_MONTO_DEV) > 0 THEN',
'',
'        FOR C IN (select   SEQ_ID,',
'                           C001 COD_EMPRESA,',
'                           C002 TIP_COMPROBANTE,',
'                           C003 SER_COMPROBANTE,',
'                           C004 NRO_COMPROBANTE,',
'                           C005 COD_SUCURSAL,',
'                           C006 FEC_COMPROBANTE,',
'                           C007 COD_CLIENTE,',
'                           C008 COD_VENDEDOR,',
'                           C009 COD_MONEDA,',
'                           C010 TOT_COMPROBANTE,',
'                           C011 FEC_ESTADO,',
'                           C012 MONTO_DEV_NCR,',
'                           C013 ESTADO,',
'                           C014 IND_CAJA',
'                    from   APEX_COLLECTIONS',
'                    WHERE  SEQ_ID = :P25_SEQ_ID)',
'        LOOP',
'                 APEX_COLLECTION.UPDATE_MEMBER (P_COLLECTION_NAME => ''VTDEVNCR'',',
'                                                P_SEQ => C.SEQ_ID,',
'                                                P_C001 => C.COD_EMPRESA,',
'                                                P_C002 => C.TIP_COMPROBANTE,',
'                                                P_C003 => C.SER_COMPROBANTE,',
'                                                P_C004 => C.NRO_COMPROBANTE,',
'                                                P_C005 => C.COD_SUCURSAL,',
'                                                P_C006 => C.FEC_COMPROBANTE,',
'                                                P_C007 => C.COD_CLIENTE,',
'                                                P_C008 => C.COD_VENDEDOR,',
'                                                P_C009 => C.COD_MONEDA,',
'                                                P_C010 => C.TOT_COMPROBANTE,',
'                                                P_C011 => C.FEC_ESTADO,',
'                                                P_C012 => :P25_MONTO_DEV,',
'                                                P_C013 => C.ESTADO,',
'                                                P_C014 => C.IND_CAJA);',
'        END LOOP;',
'        ',
'    ELSE ',
'        :P25_MSJ_ERROR := ''Monto a devolver invalido.'';',
'    END IF;',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;'))
,p_attribute_02=>'P25_MONTO_DEV,P25_SEQ_ID'
,p_attribute_03=>'P25_MSJ_ERROR'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(11171198467969245)
,p_event_id=>wwv_flow_imp.id(11170946133969243)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(9594772043965833)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(11171253730969246)
,p_event_id=>wwv_flow_imp.id(11170946133969243)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(10649835909001237)
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P25_MSJ_ERROR'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(11641296917537403)
,p_name=>'DA_AUTORIZAR'
,p_event_sequence=>60
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P25_AUTORIZAR'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(11641624632537407)
,p_event_id=>wwv_flow_imp.id(11641296917537403)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>unistr('\00BFDesea realizar la devoluci\00F3n?')
,p_attribute_02=>unistr('Confirmaci\00F3n')
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(11641384029537404)
,p_event_id=>wwv_flow_imp.id(11641296917537403)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'null;'
,p_attribute_02=>'P25_AUTORIZAR'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(11642058092537411)
,p_event_id=>wwv_flow_imp.id(11641296917537403)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_01=>'AUTORIZAR'
,p_attribute_02=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(208558381100354622)
,p_name=>'da_imprimir'
,p_event_sequence=>70
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P25_AUTORIZAR,P25_IMPRIMIR'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(208558483857354623)
,p_event_id=>wwv_flow_imp.id(208558381100354622)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>unistr('\00BFDesea realizar la Impresion?')
,p_attribute_02=>unistr('Confirmaci\00F3n')
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(208559019670354629)
,p_event_id=>wwv_flow_imp.id(208558381100354622)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_02=>'P25_IMPRIMIR'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(208558938905354628)
,p_event_id=>wwv_flow_imp.id(208558381100354622)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'select  C007 COD_CLIENTE ',
' INTO :P25_COD_CLIENTE',
'  from APEX_COLLECTIONS',
' WHERE collection_name = ''VTDEVNCR''',
' AND SEQ_ID= :P25_IMPRIMIR;',
'',
'END;'))
,p_attribute_02=>'P25_IMPRIMIR'
,p_attribute_03=>'P25_COD_CLIENTE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(208558741445354626)
,p_event_id=>wwv_flow_imp.id(208558381100354622)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var comprobante = document.getElementById("P25_IMPRIMIR").value; ',
'var params = []',
'var empresa = apex.item("P_COD_EMPRESA").getValue();',
'var cod_cliente = apex.item("P25_COD_CLIENTE").getValue();',
'var id_registro = apex.item("P25_IMPRIMIR").getValue();',
'var usuario = ''&APP_USER.'';',
'var vfacnom = "VTDEVONCR";',
'params.push({ name: ''P_COD_EMPRESA'', value: empresa})',
'params.push({ name: ''P_COD_CLIENTE'', value: cod_cliente})',
'params.push({ name: ''P_REGISTRO'', value: id_registro})  ',
'createReportUrl(vfacnom, params)',
'',
'/*',
'https://ngosaeca.com.py/reportes/rest_v2/reports/reports/VTDEVONCR.pdf?P_COD_EMPRESA=''|| V_COMPROBANTE.COD_EMPRESA||''&P_COD_CLIENTE=''||',
'            V_COMPROBANTE.COD_CLIENTE||''&P_REGISTRO=''||V_COMPROBANTE.NRO_REGISTRO_DEV||''&j_username=jasperadmin&j_password=jasperadmin target="blank',
' */'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(34204529867626918)
,p_name=>'DA_MONTO_DEV'
,p_event_sequence=>80
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P25_MONTO_DEV_1'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(34204658673626919)
,p_event_id=>wwv_flow_imp.id(34204529867626918)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>':P25_MONTO_DEV := :P25_MONTO_DEV_1;'
,p_attribute_02=>'P25_MONTO_DEV_1'
,p_attribute_03=>'P25_MONTO_DEV'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(11170085780969234)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_INIT'
,p_process_sql_clob=>'VTDEVNCR.PR_CARGAR_COL_VTDEVNCR();'
,p_process_clob_language=>'PLSQL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(11642196627537412)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_AUTORIZAR'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    VTDEVNCR.AUTORIZAR_DEVOLUCION(PI_SEQ_ID => :P25_SEQ_ID);',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'AUTORIZAR'
,p_process_when_type=>'REQUEST_EQUALS_CONDITION'
);
wwv_flow_imp.component_end;
end;
/
