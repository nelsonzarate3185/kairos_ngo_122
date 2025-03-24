prompt --application/pages/page_00243
begin
--   Manifest
--     PAGE: 00243
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
 p_id=>243
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'STCONGAR'
,p_alias=>'STCONGAR'
,p_step_title=>'STCONGAR'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
' ',
'',
'',
'.apex-item-select:focus, .apex-item-text:focus, .apex-item-textarea:focus {',
'   background-color: #e9ffbf !important;',
'   border-color: #8f0000 !important;',
'}',
'',
'.apex-item-select,  .apex-item-text , .apex-item-textarea , .apex-item-group, .display_only ,.t-Form-itemWrapper{',
'  border-color: #b4c6dd !important;',
'  background-color: #f8f6ea !important;',
'}',
'',
'',
'#PARAM, #FILTROS{    ',
'  background-color: #487ab8  !important;',
'}',
'',
'',
'.t-Body-content{',
'   background-color:  #d0e0f783!important;}',
'',
'',
'',
'  .tabla_color   td.t-Report-cell  {',
'  color: yellow  !important;',
'  border-color: #003a85 !important;',
'}',
'',
'  th.t-Report-colHead,  th.t-Report-colHead a{',
'  background-color:  #003a85  !important;',
'  color: yellow   !important;',
'  border-color: #487ab8;',
'}',
'',
' .a-IRR-header{',
'      background-color: #003a85  !important;',
'	  font-weight: bold !important;',
'      border:0.5px solid #16488a !important;',
'   }',
'',
'  .a-IRR-headerLink{',
'    background-color: #003a85  !important;',
'	  color: yellow !important;    }',
'   ',
'.a-IRR-table tr td , .t-Form-label { ',
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
,p_last_updated_by=>'PBOGADO'
,p_last_upd_yyyymmddhh24miss=>'20250102091029'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(58418416689106142)
,p_plug_name=>'CONSULTA DE GARANTIA DE  PRODUCTOS'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>990
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(58418655582106144)
,p_plug_name=>'ELEMENTOS'
,p_region_name=>'FILTROS'
,p_parent_plug_id=>wwv_flow_imp.id(58418416689106142)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(58997171779404633)
,p_plug_name=>'CONSULTA_DATOS'
,p_parent_plug_id=>wwv_flow_imp.id(58418416689106142)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select',
'    seq_id p_id  ,   ',
'    C001 COD_EMPRESA,',
'    C002 COD_SUCURSAL  , ',
'    C003 COD_DEPOSITO  ,',
'    C004 OBSERVACIONES  ,',
'    C005 FEC_VENCIMIENTO  ,',
'    C006 MESES_DURACION_ACTUAL  ,',
'    C007 NRO_SERIE  ,',
'    C008 TIP_COMPROBANTE  ,',
'    C009 NRO_COMPROBANTE  ,',
'    C010 SER_COMPROBANTE  ,',
'    C011 NRO_GARANTIA  ,',
'    C012 NRO_REMISION  ,',
'    C013 COD_BLOQUE  ,',
'    C014 COD_ARTICULO  ,',
'    C015 COD_CLIENTE  ,',
'    C016 COD_ART_CORTO  ,',
'    C017 COD_USUARIO  ,',
'    C018 IND_DEVUELTO  ,',
'    C019 FECHA_FACTURA  ,',
'    C020 DESC_ARTICULO  ,',
'    C021 RID  ,',
'    C022 NOM_CLIENTE  ,',
'    C023 DESC_BLOQUE  ,',
'    C024 TIPO  ,',
'    C025 FECHA_REPARTO  ,',
'    C026 FECHA_REMISION ,',
'    C027 NUMERO_REMISION,',
'    null DETALLE',
'from apex_collections     ',
'where collection_name = ''COL_STCONGAR'' ',
';',
' ',
'',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
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
 p_id=>wwv_flow_imp.id(58997251700404634)
,p_max_row_count=>'1000000'
,p_no_data_found_message=>'NO SE ENCONTRARON REGISTROS'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'JUANASIS'
,p_internal_uid=>58997251700404634
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(59100409130479722)
,p_db_column_name=>'COD_EMPRESA'
,p_display_order=>10
,p_column_identifier=>'AB'
,p_column_label=>'Cod Empresa'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(59100585834479723)
,p_db_column_name=>'COD_SUCURSAL'
,p_display_order=>20
,p_column_identifier=>'AC'
,p_column_label=>'Cod Sucursal'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(59100607958479724)
,p_db_column_name=>'COD_DEPOSITO'
,p_display_order=>30
,p_column_identifier=>'AD'
,p_column_label=>'Cod Deposito'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(59100776100479725)
,p_db_column_name=>'OBSERVACIONES'
,p_display_order=>40
,p_column_identifier=>'AE'
,p_column_label=>'Observaciones'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(59100894332479726)
,p_db_column_name=>'FEC_VENCIMIENTO'
,p_display_order=>50
,p_column_identifier=>'AF'
,p_column_label=>'FECHA REGISTRO'
,p_column_type=>'STRING'
,p_format_mask=>'DD/MM/YYYY HH24:MI'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(59100965293479727)
,p_db_column_name=>'MESES_DURACION_ACTUAL'
,p_display_order=>60
,p_column_identifier=>'AG'
,p_column_label=>'Meses Duracion Actual'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(59101087875479728)
,p_db_column_name=>'NRO_SERIE'
,p_display_order=>70
,p_column_identifier=>'AH'
,p_column_label=>'Nro Serie'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(59101142521479729)
,p_db_column_name=>'TIP_COMPROBANTE'
,p_display_order=>80
,p_column_identifier=>'AI'
,p_column_label=>'TIPO'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(59101215324479730)
,p_db_column_name=>'NRO_COMPROBANTE'
,p_display_order=>90
,p_column_identifier=>'AJ'
,p_column_label=>'NUMERO'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(59101384772479731)
,p_db_column_name=>'SER_COMPROBANTE'
,p_display_order=>100
,p_column_identifier=>'AK'
,p_column_label=>'SERIE'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(59101426206479732)
,p_db_column_name=>'NRO_GARANTIA'
,p_display_order=>110
,p_column_identifier=>'AL'
,p_column_label=>'NRO. GARANTIA'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(59101550727479733)
,p_db_column_name=>'NRO_REMISION'
,p_display_order=>120
,p_column_identifier=>'AM'
,p_column_label=>'Nro Remision'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(59101647787479734)
,p_db_column_name=>'COD_BLOQUE'
,p_display_order=>130
,p_column_identifier=>'AN'
,p_column_label=>'Cod Bloque'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(59101785973479735)
,p_db_column_name=>'COD_ARTICULO'
,p_display_order=>140
,p_column_identifier=>'AO'
,p_column_label=>'CODIGO'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(59101811961479736)
,p_db_column_name=>'COD_CLIENTE'
,p_display_order=>150
,p_column_identifier=>'AP'
,p_column_label=>'COD. CLIENTE'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(59101915217479737)
,p_db_column_name=>'COD_ART_CORTO'
,p_display_order=>160
,p_column_identifier=>'AQ'
,p_column_label=>'COD. CORTO'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(59102034533479738)
,p_db_column_name=>'COD_USUARIO'
,p_display_order=>170
,p_column_identifier=>'AR'
,p_column_label=>'Cod Usuario'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(59102163620479739)
,p_db_column_name=>'IND_DEVUELTO'
,p_display_order=>180
,p_column_identifier=>'AS'
,p_column_label=>'Ind Devuelto'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(59102268328479740)
,p_db_column_name=>'FECHA_FACTURA'
,p_display_order=>190
,p_column_identifier=>'AT'
,p_column_label=>'FECHA'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_format_mask=>'DD/MM/YYYY'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(59102308259479741)
,p_db_column_name=>'DESC_ARTICULO'
,p_display_order=>200
,p_column_identifier=>'AU'
,p_column_label=>'DESCRIPCION ARTICULO'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(59102494490479742)
,p_db_column_name=>'RID'
,p_display_order=>210
,p_column_identifier=>'AV'
,p_column_label=>'Rid'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(59102571005479743)
,p_db_column_name=>'NOM_CLIENTE'
,p_display_order=>220
,p_column_identifier=>'AW'
,p_column_label=>'NOMBRE CLIENTE'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(59102605112479744)
,p_db_column_name=>'DESC_BLOQUE'
,p_display_order=>230
,p_column_identifier=>'AX'
,p_column_label=>'Desc Bloque'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(59102701361479745)
,p_db_column_name=>'TIPO'
,p_display_order=>240
,p_column_identifier=>'AY'
,p_column_label=>'Tipo'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(59102876057479746)
,p_db_column_name=>'FECHA_REPARTO'
,p_display_order=>250
,p_column_identifier=>'AZ'
,p_column_label=>'Fecha Reparto'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(59102986362479747)
,p_db_column_name=>'FECHA_REMISION'
,p_display_order=>260
,p_column_identifier=>'BA'
,p_column_label=>'Fecha Remision'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(59346467373791016)
,p_db_column_name=>'P_ID'
,p_display_order=>270
,p_column_identifier=>'BB'
,p_column_label=>'P Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(59346520460791017)
,p_db_column_name=>'DETALLE'
,p_display_order=>280
,p_column_identifier=>'BC'
,p_column_label=>'Detalle'
,p_column_link=>'javascript:$s(''P243_SEQ_ID_DETALLE'',''#P_ID#'');'
,p_column_linktext=>'<span class="fa fa-search" aria-hidden="true"></span>'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(59346884769791020)
,p_db_column_name=>'NUMERO_REMISION'
,p_display_order=>290
,p_column_identifier=>'BD'
,p_column_label=>'Numero Remision'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(59111618540480246)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'591117'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>10
,p_report_columns=>'FECHA_FACTURA:TIP_COMPROBANTE:SER_COMPROBANTE:NRO_COMPROBANTE:COD_CLIENTE:NOM_CLIENTE:COD_ARTICULO:COD_ART_CORTO:DESC_ARTICULO:NRO_GARANTIA:FEC_VENCIMIENTO:DETALLE:'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(59345489467791006)
,p_plug_name=>'DETALLE'
,p_region_name=>'PARAM'
,p_parent_plug_id=>wwv_flow_imp.id(58418416689106142)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>30
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(58418540054106143)
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
 p_id=>wwv_flow_imp.id(61697614632624302)
,p_plug_name=>'Mensaje'
,p_region_template_options=>'#DEFAULT#:js-dialog-autoheight:js-dialog-size600x400'
,p_plug_template=>wwv_flow_imp.id(40117728043263659)
,p_plug_display_sequence=>1010
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_source=>'<SPAN>Por favor, espere...</SPAN>'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(59099533679479713)
,p_button_sequence=>170
,p_button_plug_id=>wwv_flow_imp.id(58418655582106144)
,p_button_name=>'BT_BUSCAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft:t-Button--stretch:t-Button--gapTop'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'BUSCAR'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'u-color-21-bg u-color-43-text'
,p_icon_css_classes=>'fa-search'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
,p_grid_column_span=>2
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(59103224163479750)
,p_button_sequence=>180
,p_button_plug_id=>wwv_flow_imp.id(58418655582106144)
,p_button_name=>'BT_LIMPIAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft:t-Button--stretch:t-Button--gapTop'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'LIMPIAR'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'u-color-21-bg u-color-43-text'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
,p_grid_column_span=>2
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(58418701318106145)
,p_name=>'P243_COD_EMPRESA'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(58418655582106144)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(58418838695106146)
,p_name=>'P243_COD_SUCURSAL'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(58418655582106144)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(58418932547106147)
,p_name=>'P243_COD_DEPOSITO'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(58418655582106144)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(58419078191106148)
,p_name=>'P243_OBSERVACIONES'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(58418655582106144)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(58419122842106149)
,p_name=>'P243_FEC_VENCIMIENTO'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(58418655582106144)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(58419283866106150)
,p_name=>'P243_FECHA_FACTURA'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(58418655582106144)
,p_prompt=>'FECHA'
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
 p_id=>wwv_flow_imp.id(58993959007404601)
,p_name=>'P243_MESES_DURACION_ACTUAL'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(58418655582106144)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(58994000088404602)
,p_name=>'P243_NRO_SERIE'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(58418655582106144)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(58994135462404603)
,p_name=>'P243_TIP_COMPROBANTE'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(58418655582106144)
,p_prompt=>'TIPO'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:FCR;FCR,FCO;FCO'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_colspan=>1
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(58994225857404604)
,p_name=>'P243_NRO_COMPROBANTE'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(58418655582106144)
,p_prompt=>'NRO FACTURA'
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
 p_id=>wwv_flow_imp.id(58994315115404605)
,p_name=>'P243_SER_COMPROBANTE'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(58418655582106144)
,p_prompt=>'SERIE'
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
,p_attribute_06=>'UPPER'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(58994423125404606)
,p_name=>'P243_NRO_GARANTIA'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(58418655582106144)
,p_prompt=>'NRO GARANTIA'
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
 p_id=>wwv_flow_imp.id(58994553373404607)
,p_name=>'P243_NRO_REMISION'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_imp.id(58418655582106144)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(58994618046404608)
,p_name=>'P243_COD_BLOQUE'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_imp.id(58418655582106144)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(58994719355404609)
,p_name=>'P243_COD_ARTICULO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(58418655582106144)
,p_prompt=>' ARTICULO'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select  TRIM(descripcion) ||'' - ''||cod_art_corto||'' - ''||cod_articulo descripcion,',
'    cod_articulo R',
'from st_articulos ',
'where cod_empresa = :P_COD_EMPRESA',
'---and nvl( estado, ''S'' ) <> ''N'' ',
'and cod_rubro=''PR''',
' order ',
'by cod_articulo,descripcion,  nvl( estado, ''S'' ) DESC',
'',
''))
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
 p_id=>wwv_flow_imp.id(58994886805404610)
,p_name=>'P243_COD_CLIENTE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(58418655582106144)
,p_prompt=>'CLIENTE'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  SELECT nombre||'' - ''|| cod_cliente D, ',
'         cod_cliente R',
'    FROM cc_clientes c, personas p',
'   WHERE c.cod_empresa = :P_COD_EMPRESA ',
'     AND c.cod_persona = p.cod_persona ',
'     AND nvl(c.estado,''X'') = ''A'' ',
'ORDER BY nombre;'))
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
 p_id=>wwv_flow_imp.id(58994913639404611)
,p_name=>'P243_COD_ART_CORTO'
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_imp.id(58418655582106144)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(58995023349404612)
,p_name=>'P243_DESC_ARTICULO'
,p_item_sequence=>220
,p_item_plug_id=>wwv_flow_imp.id(58418655582106144)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(58995164364404613)
,p_name=>'P243_NOM_CLIENTE'
,p_item_sequence=>230
,p_item_plug_id=>wwv_flow_imp.id(58418655582106144)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(58995259718404614)
,p_name=>'P243_DESC_BLOQUE'
,p_item_sequence=>240
,p_item_plug_id=>wwv_flow_imp.id(58418655582106144)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(58995333247404615)
,p_name=>'P243_COD_USUARIO'
,p_item_sequence=>250
,p_item_plug_id=>wwv_flow_imp.id(58418655582106144)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(58995403452404616)
,p_name=>'P243_TIPO'
,p_item_sequence=>260
,p_item_plug_id=>wwv_flow_imp.id(58418655582106144)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(58995561246404617)
,p_name=>'P243_IND_DEVUELVTO'
,p_item_sequence=>270
,p_item_plug_id=>wwv_flow_imp.id(58418655582106144)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(58995688423404618)
,p_name=>'P243_FECHA_REPARTO'
,p_item_sequence=>280
,p_item_plug_id=>wwv_flow_imp.id(58418655582106144)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(58995734789404619)
,p_name=>'P243_FECHA_REMISION'
,p_item_sequence=>290
,p_item_plug_id=>wwv_flow_imp.id(58418655582106144)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(58995851149404620)
,p_name=>'P243_NUMERO_REMISION'
,p_item_sequence=>300
,p_item_plug_id=>wwv_flow_imp.id(58418655582106144)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(58996075660404622)
,p_name=>'P243_VAR_DERECHOS'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(58418540054106143)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(58996140259404623)
,p_name=>'P243_COD_MODULO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(58418540054106143)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(58996213784404624)
,p_name=>'P243_VAR_NOM_MODULO'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(58418540054106143)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(58996353416404625)
,p_name=>'P243_VAR_COD_FORMA'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(58418540054106143)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(58996492619404626)
,p_name=>'P243_VAR_NOM_FORMA'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(58418540054106143)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(58996504848404627)
,p_name=>'P243_VAR_COD_EMPRESA'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(58418540054106143)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(58996640999404628)
,p_name=>'P243_NOM_EMPRESA'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(58418540054106143)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(58996713554404629)
,p_name=>'P243_VAR_COD_SUCURSAL'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(58418540054106143)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(58996878355404630)
,p_name=>'P243_CODSISMENU'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(58418540054106143)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(58996942901404631)
,p_name=>'P243_VAR_COD_USUARIO'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(58418540054106143)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(58997056447404632)
,p_name=>'P243_VAR_COD_IDIOMA'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(58418540054106143)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(59099450996479712)
,p_name=>'P243_NOM_SUCURSAL'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(58418540054106143)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(59345514181791007)
,p_name=>'P243_D_COD_BLOQUE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(59345489467791006)
,p_prompt=>'Cod Bloque'
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
 p_id=>wwv_flow_imp.id(59345667666791008)
,p_name=>'P243_D_DESC_BLOQUE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(59345489467791006)
,p_prompt=>'Nom Bloque'
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
 p_id=>wwv_flow_imp.id(59345704841791009)
,p_name=>'P243_D_FECHA_FACTURA'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(59345489467791006)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(59345891895791010)
,p_name=>'P243_D_FECHA_REPARTO'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(59345489467791006)
,p_prompt=>'Fecha Reparto'
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
 p_id=>wwv_flow_imp.id(59345963804791011)
,p_name=>'P243_D_FECHA_REMISION'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(59345489467791006)
,p_prompt=>'Fecha Remision'
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
 p_id=>wwv_flow_imp.id(59346087060791012)
,p_name=>'P243_D_NUMERO_REMISION'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(59345489467791006)
,p_prompt=>'Numero Remision'
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
 p_id=>wwv_flow_imp.id(59346143565791013)
,p_name=>'P243_D_COD_USUARIO'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(59345489467791006)
,p_prompt=>'Usuario'
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
 p_id=>wwv_flow_imp.id(59346264571791014)
,p_name=>'P243_D_TIPO'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(59345489467791006)
,p_prompt=>'Tipo'
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
 p_id=>wwv_flow_imp.id(59346316354791015)
,p_name=>'P243_SEQ_ID_DETALLE'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(58418540054106143)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(59346901312791021)
,p_name=>'P243_D_NOM_CLIENTE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(59345489467791006)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
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
 p_id=>wwv_flow_imp.id(59099964685479717)
,p_name=>'DA_BUSCAR'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(59099533679479713)
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>wwv_flow_string.join(wwv_flow_t_varchar2(
' apex.item(''P243_TIP_COMPROBANTE'').getValue() != ""||',
' apex.item(''P243_SER_COMPROBANTE'').getValue() != ""||',
' apex.item(''P243_NRO_COMPROBANTE'').getValue() != ""||',
' apex.item(''P243_COD_CLIENTE'').getValue() != "" ||',
' apex.item(''P243_NRO_GARANTIA'').getValue() != "" || ',
' apex.item(''P243_FECHA_FACTURA'').getValue() != "" ||',
' apex.item(''P243_COD_ARTICULO'').getValue() !=""  ',
''))
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(59103129181479749)
,p_event_id=>wwv_flow_imp.id(59099964685479717)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'Debe cargar un campo como filtro.'
,p_attribute_02=>'ERROR'
,p_attribute_03=>'warning'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(61697528377624301)
,p_event_id=>wwv_flow_imp.id(59099964685479717)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>' var spinner = apex.util.showSpinner();'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(59100082846479718)
,p_event_id=>wwv_flow_imp.id(59099964685479717)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'    BEGIN ',
'        STCONGAR.pr_crear_collection(',
'            PI_COD_EMPRESA=> :P_COD_EMPRESA,',
'                                PI_TIPO=> :P243_TIP_COMPROBANTE,',
'                                PI_SERIE=> :P243_SER_COMPROBANTE,',
'                                PI_NRO_FACTURA => :P243_NRO_COMPROBANTE,',
'                            	PI_NRO_GARANTIA => :P243_NRO_GARANTIA,',
'                            	PI_COD_ARTICULO => :P243_COD_ARTICULO,',
'                            	PI_COD_CLIENTE => :P243_COD_CLIENTE,',
'                            	PI_FECHA_FACTURA => :P243_FECHA_FACTURA); ',
'      ',
'      EXCEPTION',
'            WHEN OTHERS THEN ',
'             raise_application_error(-20000, sqlerrm );',
'    END; '))
,p_attribute_02=>'P243_NRO_COMPROBANTE,P243_COD_ARTICULO,P243_NRO_GARANTIA,P243_FECHA_FACTURA,P243_COD_CLIENTE,P_COD_EMPRESA,P243_SER_COMPROBANTE'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(61697749738624303)
,p_event_id=>wwv_flow_imp.id(59099964685479717)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$("#apex_wait_overlay").remove(); ',
'$(".u-Processing").remove();'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(59345133578791003)
,p_event_id=>wwv_flow_imp.id(59099964685479717)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(58997171779404633)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(59344907169791001)
,p_name=>'DA_LIMPIAR'
,p_event_sequence=>30
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(59103224163479750)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(59345029652791002)
,p_event_id=>wwv_flow_imp.id(59344907169791001)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P243_COD_CLIENTE,P243_FECHA_FACTURA,P243_NRO_COMPROBANTE,P243_NRO_GARANTIA,P243_COD_ARTICULO,P243_SER_COMPROBANTE,P243_TIP_COMPROBANTE'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(298023941625211930)
,p_event_id=>wwv_flow_imp.id(59344907169791001)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'    apex_collection.create_or_truncate_collection(p_collection_name => ''COL_AUX'');',
'    apex_collection.create_or_truncate_collection(p_collection_name => ''COL_STCONGAR'');'))
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(298024054107211931)
,p_event_id=>wwv_flow_imp.id(59344907169791001)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(58997171779404633)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(59346629279791018)
,p_name=>'DA_MOSTRAR_DETALLE'
,p_event_sequence=>40
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P243_SEQ_ID_DETALLE'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(59346716671791019)
,p_event_id=>wwv_flow_imp.id(59346629279791018)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE ',
'    V_SEQ_ID NUMBER;',
'    V_FECH_REM VARCHAR2(4000);',
'    V_NUM_REM VARCHAR2(4000);',
'BEGIN ',
'    ',
'    SELECT  SEQ_ID,',
'            C013 COD_BLOQUE,',
'            C022 NOM_CLIENTE,',
'            C023 DESC_BLOQUE,',
'            C019 FECHA_FACTURA,',
'            C025 FECHA_REPARTO,',
'            --C026 FECHA_REMISION,',
'            --C027 NUMERO_REMISION,',
'            C017 COD_USUARIO,',
'            C024 TIPO',
'    INTO ',
'         V_SEQ_ID,         ',
'        :P243_D_COD_BLOQUE,',
'        :P243_D_NOM_CLIENTE,',
'        :P243_D_DESC_BLOQUE,',
'        :P243_D_FECHA_FACTURA,',
'        :P243_D_FECHA_REPARTO,',
'        --:P243_D_FECHA_REMISION,',
'        --:P243_D_NUMERO_REMISION,',
'        :P243_D_COD_USUARIO,',
'        :P243_D_TIPO',
'    FROM  APEX_COLLECTIONS',
'    WHERE COLLECTION_NAME = ''COL_STCONGAR''',
'    AND SEQ_ID = :P243_SEQ_ID_DETALLE;',
'    ',
'    for c in (select C001 FECHA_REMISION,',
'                     C002 NUM_REMISION',
'              from   APEX_COLLECTIONS',
'              where  COLLECTION_NAME = ''COL_AUX''',
'              and    N001 = V_SEQ_ID)LOOP',
'                 V_FECH_REM := V_FECH_REM ||'' ''||C.FECHA_REMISION;   ',
'                 V_NUM_REM := V_NUM_REM ||'' - ''||C.NUM_REMISION;',
'              END LOOP;',
'',
'    :P243_D_FECHA_REMISION := V_FECH_REM;',
'    :P243_D_NUMERO_REMISION := V_NUM_REM;',
'',
'   exception',
'		 when others then',
'        apex_debug.error(sqlerrm);',
'',
'',
'',
'END;'))
,p_attribute_02=>'P243_SEQ_ID_DETALLE'
,p_attribute_03=>'P243_D_COD_BLOQUE,P243_D_NOM_CLIENTE,P243_D_DESC_BLOQUE,P243_D_FECHA_FACTURA,P243_D_FECHA_REPARTO,P243_D_FECHA_REMISION,P243_D_NUMERO_REMISION,P243_D_COD_USUARIO,P243_D_TIPO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(59345338628791005)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'PR_LIMPIAR'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(59099310103479711)
,p_process_sequence=>20
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_INIT'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
' ',
'BEGIN',
'    :P243_COD_USUARIO := NVL(:P_COD_USUARIO,USER);',
'    :P243_COD_EMPRESA := NVL(:P_COD_EMPRESA,''1'');',
'    :P243_NOM_EMPRESA := NVL(:P_NOM_EMPRESA,NULL);',
'    :P243_COD_SUCURSAL := NVL(:P_COD_SUCURSAL,NULL);',
'    :P243_NOM_SUCURSAL := NVL(:P_NOM_SUCURSAL,NULL);',
'    :P243_COD_MODULO := NVL(:P_COD_MODULO,''ST'');',
'  ',
'    apex_collection.create_or_truncate_collection(p_collection_name => ''COL_AUX'');',
'    apex_collection.create_or_truncate_collection(p_collection_name => ''COL_STCONGAR'');',
'    EXCEPTION',
'        WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'',
'END;'))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_imp.component_end;
end;
/
