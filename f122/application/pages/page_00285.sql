prompt --application/pages/page_00285
begin
--   Manifest
--     PAGE: 00285
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
 p_id=>285
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'VTANUPED(MODAL) - ANULACION DE PEDIDOS'
,p_alias=>'VTANUPED-MODAL-ANULACION-DE-PEDIDOS'
,p_page_mode=>'MODAL'
,p_step_title=>'ANULACION DE PEDIDOS'
,p_autocomplete_on_off=>'OFF'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#DET{',
'    font-weight: bold;',
'}'))
,p_page_template_options=>'#DEFAULT#:ui-dialog--stretch'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_last_updated_by=>'ETRINIDAD'
,p_last_upd_yyyymmddhh24miss=>'20230104140241'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(69761783262374336)
,p_plug_name=>'Pedidos'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--textContent:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select COD_EMPRESA,',
'       TIP_COMPROBANTE,',
'       SER_COMPROBANTE,',
'       NRO_COMPROBANTE,',
'       COD_SUCURSAL,',
'       FEC_COMPROBANTE,',
'       COD_CLIENTE,',
'       COD_VENDEDOR,',
'       COD_CONDICION_VENTA,',
'       COD_MONEDA,',
'       TOT_COMPROBANTE,',
'       TOT_GRAVADAS,',
'       TOT_EXENTAS,',
'       TOT_IVA,',
'       COD_USUARIO,',
'       NOM_CLIENTE,',
'       NOMBRE_CAB,',
'       rowid',
'  from VT_PEDIDOS_CABECERA',
' where SER_COMPROBANTE = :P285_SER_COMPROBANTE',
'   and NRO_COMPROBANTE = :P285_NRO_COMPROBANTE'))
,p_is_editable=>false
,p_plug_source_type=>'NATIVE_FORM'
,p_ajax_items_to_submit=>'P285_SER_COMPROBANTE,P285_NRO_COMPROBANTE'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(70626589037711622)
,p_plug_name=>'Detalles'
,p_region_name=>'DET'
,p_parent_plug_id=>wwv_flow_imp.id(69761783262374336)
,p_region_template_options=>'#DEFAULT#:t-Region--accent3:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT D.COD_ARTICULO CODIGO,',
'       A.DESCRIPCION ARTICULO,',
'       D.CANTIDAD CANTIDAD,',
'       D.PRECIO_UNITARIO,',
'       D.MONTO_TOTAL,',
'       D.TOTAL_IVA,',
'       D.PORC_DESCUENTO,',
'       D.DESCUENTO',
'  FROM VT_PEDIDOS_DETALLE D,',
'       ST_ARTICULOS A ',
' WHERE D.SER_COMPROBANTE = :P285_SER_COMPROBANTE',
'   AND D.NRO_COMPROBANTE = :P285_NRO_COMPROBANTE',
'   AND D.COD_ARTICULO    = A.COD_ARTICULO',
'   AND D.COD_EMPRESA     = A.COD_EMPRESA',
'   AND D.COD_EMPRESA     = :P285_COD_EMPRESA'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P285_SER_COMPROBANTE,P285_NRO_COMPROBANTE, P285_COD_EMPRESA'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Detalles'
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
 p_id=>wwv_flow_imp.id(70626646053711623)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'ETRINIDAD'
,p_internal_uid=>70626646053711623
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(70626788247711624)
,p_db_column_name=>'CODIGO'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Codigo'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(70626827823711625)
,p_db_column_name=>'ARTICULO'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Articulo'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(70626929183711626)
,p_db_column_name=>'CANTIDAD'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Cantidad'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(70627021046711627)
,p_db_column_name=>'PRECIO_UNITARIO'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Precio Unitario'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(70627119809711628)
,p_db_column_name=>'MONTO_TOTAL'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Monto Total'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(70627226242711629)
,p_db_column_name=>'TOTAL_IVA'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Total Iva'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(70627335188711630)
,p_db_column_name=>'PORC_DESCUENTO'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Porc. Descuento'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(70627475474711631)
,p_db_column_name=>'DESCUENTO'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Descuento'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(71037363505163098)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'710374'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'CODIGO:ARTICULO:CANTIDAD:PRECIO_UNITARIO:TOTAL_IVA:PORC_DESCUENTO:DESCUENTO:MONTO_TOTAL:'
,p_sum_columns_on_break=>'CANTIDAD:PRECIO_UNITARIO:MONTO_TOTAL:TOTAL_IVA:DESCUENTO'
);
wwv_flow_imp_page.create_worksheet_condition(
 p_id=>wwv_flow_imp.id(75871447374625183)
,p_report_id=>wwv_flow_imp.id(71037363505163098)
,p_name=>'10'
,p_condition_type=>'HIGHLIGHT'
,p_allow_delete=>'Y'
,p_column_name=>'CODIGO'
,p_operator=>'is not null'
,p_condition_sql=>' (case when ("CODIGO" is not null) then #APXWS_HL_ID# end) '
,p_condition_display=>'#APXWS_COL_NAME# #APXWS_OP_NAME#'
,p_enabled=>'Y'
,p_highlight_sequence=>10
,p_row_bg_color=>'#c6e3f7'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(70627567834711632)
,p_plug_name=>'Botones'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40097820288263654)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(70628015655711637)
,p_plug_name=>'Datos'
,p_region_name=>'ANULAR'
,p_region_template_options=>'#DEFAULT#:js-dialog-autoheight:js-dialog-size600x400'
,p_plug_template=>wwv_flow_imp.id(40117728043263659)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(70627717451711634)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(70627567834711632)
,p_button_name=>'CANCELAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Cancelar'
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(70627658099711633)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(70627567834711632)
,p_button_name=>'ANULAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--simple:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Anular'
,p_button_position=>'CREATE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(70628302172711640)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(70628015655711637)
,p_button_name=>'ACEPTAR'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--simple:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Aceptar'
,p_button_position=>'NEXT'
,p_confirm_message=>'Estas seguro(a) de que deseas anular este Pedido?'
,p_confirm_style=>'warning'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(70628401160711641)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(70628015655711637)
,p_button_name=>'ATRAS'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Atras'
,p_button_position=>'PREVIOUS'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(71120162066147504)
,p_branch_name=>'Branch To Page Accept 240'
,p_branch_action=>'f?p=&APP_ID.:240:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(69761586699374334)
,p_name=>'P285_SER_PEDIDO'
,p_item_sequence=>20
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(69761698007374335)
,p_name=>'P285_NRO_PEDIDO'
,p_item_sequence=>30
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(69761982199374338)
,p_name=>'P285_COD_EMPRESA'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(69761783262374336)
,p_item_source_plug_id=>wwv_flow_imp.id(69761783262374336)
,p_source=>'COD_EMPRESA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(69762040125374339)
,p_name=>'P285_TIP_COMPROBANTE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(69761783262374336)
,p_item_source_plug_id=>wwv_flow_imp.id(69761783262374336)
,p_prompt=>'Tipo Comprobante'
,p_source=>'TIP_COMPROBANTE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_imp.id(40186576483263678)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(69762169929374340)
,p_name=>'P285_SER_COMPROBANTE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(69761783262374336)
,p_item_source_plug_id=>wwv_flow_imp.id(69761783262374336)
,p_prompt=>'Serie Comprobante'
,p_source=>'SER_COMPROBANTE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186576483263678)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(69762299271374341)
,p_name=>'P285_NRO_COMPROBANTE'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(69761783262374336)
,p_item_source_plug_id=>wwv_flow_imp.id(69761783262374336)
,p_prompt=>'Nro. Comprobante'
,p_source=>'NRO_COMPROBANTE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186576483263678)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(69762382268374342)
,p_name=>'P285_COD_SUCURSAL'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(69761783262374336)
,p_item_source_plug_id=>wwv_flow_imp.id(69761783262374336)
,p_prompt=>'Sucursal'
,p_source=>'COD_SUCURSAL'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT S.COD_SUCURSAL||''-''||S.DESCRIPCION D ,',
'       S.COD_SUCURSAL R',
'  FROM SUCURSALES S',
' WHERE S.COD_EMPRESA = :P_COD_EMPRESA'))
,p_field_template=>wwv_flow_imp.id(40186576483263678)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
,p_attribute_02=>'LOV'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(69762409894374343)
,p_name=>'P285_FEC_COMPROBANTE'
,p_source_data_type=>'DATE'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(69761783262374336)
,p_item_source_plug_id=>wwv_flow_imp.id(69761783262374336)
,p_prompt=>'Fec Comprobante'
,p_source=>'FEC_COMPROBANTE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186576483263678)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(69762546347374344)
,p_name=>'P285_COD_CLIENTE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(69761783262374336)
,p_item_source_plug_id=>wwv_flow_imp.id(69761783262374336)
,p_prompt=>'Codigo'
,p_source=>'COD_CLIENTE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_colspan=>1
,p_field_template=>wwv_flow_imp.id(40186576483263678)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(69762643644374345)
,p_name=>'P285_COD_VENDEDOR'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(69761783262374336)
,p_item_source_plug_id=>wwv_flow_imp.id(69761783262374336)
,p_prompt=>'Vendedor'
,p_source=>'COD_VENDEDOR'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT F.COD_VENDEDOR||''-''||P.NOMBRE D,',
'       F.COD_VENDEDOR R',
'  FROM FV_VENDEDORES F ,',
'       PERSONAS P ',
' WHERE P.COD_PERSONA = F.COD_PERSONA',
'   AND F.COD_EMPRESA = ''1'''))
,p_field_template=>wwv_flow_imp.id(40186576483263678)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
,p_attribute_02=>'LOV'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(69762779479374346)
,p_name=>'P285_COD_CONDICION_VENTA'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(69761783262374336)
,p_item_source_plug_id=>wwv_flow_imp.id(69761783262374336)
,p_prompt=>'Condicion Venta'
,p_source=>'COD_CONDICION_VENTA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT C.COD_CONDICION_VENTA||''-''||C.DESCRIPCION D,',
'       C.COD_CONDICION_VENTA R ',
'  FROM CC_CONDICIONES_VENTAS C',
' WHERE C.COD_EMPRESA = :P_COD_EMPRESA'))
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186576483263678)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
,p_attribute_02=>'LOV'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(69763068365374349)
,p_name=>'P285_COD_MONEDA'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(69761783262374336)
,p_item_source_plug_id=>wwv_flow_imp.id(69761783262374336)
,p_prompt=>'Moneda'
,p_source=>'COD_MONEDA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_named_lov=>'LV_MONEDAS'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select descripcion as d,',
'       cod_moneda r',
'  from monedas',
' order by 1'))
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186576483263678)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
,p_attribute_02=>'LOV'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(70614457949711601)
,p_name=>'P285_TOT_COMPROBANTE'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(69761783262374336)
,p_item_source_plug_id=>wwv_flow_imp.id(69761783262374336)
,p_prompt=>'Total Comprobante'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_source=>'TOT_COMPROBANTE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186576483263678)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(70614593801711602)
,p_name=>'P285_TOT_GRAVADAS'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(69761783262374336)
,p_item_source_plug_id=>wwv_flow_imp.id(69761783262374336)
,p_prompt=>'Total Gravadas'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_source=>'TOT_GRAVADAS'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_imp.id(40186576483263678)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(70614615154711603)
,p_name=>'P285_TOT_EXENTAS'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(69761783262374336)
,p_item_source_plug_id=>wwv_flow_imp.id(69761783262374336)
,p_prompt=>'Total Exentas'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_source=>'TOT_EXENTAS'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186576483263678)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(70614701030711604)
,p_name=>'P285_TOT_IVA'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(69761783262374336)
,p_item_source_plug_id=>wwv_flow_imp.id(69761783262374336)
,p_prompt=>'Total Iva'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_source=>'TOT_IVA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186576483263678)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(70615082633711607)
,p_name=>'P285_COD_USUARIO'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_imp.id(69761783262374336)
,p_item_source_plug_id=>wwv_flow_imp.id(69761783262374336)
,p_prompt=>'Usuario'
,p_source=>'COD_USUARIO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186576483263678)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(70616245050711619)
,p_name=>'P285_NOM_CLIENTE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(69761783262374336)
,p_item_source_plug_id=>wwv_flow_imp.id(69761783262374336)
,p_prompt=>'Cliente'
,p_source=>'NOM_CLIENTE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_field_template=>wwv_flow_imp.id(40186576483263678)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(70616392475711620)
,p_name=>'P285_NOMBRE_CAB'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_imp.id(69761783262374336)
,p_item_source_plug_id=>wwv_flow_imp.id(69761783262374336)
,p_source=>'NOMBRE_CAB'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(70626105353711618)
,p_name=>'P285_ROWID'
,p_source_data_type=>'ROWID'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_imp.id(69761783262374336)
,p_item_source_plug_id=>wwv_flow_imp.id(69761783262374336)
,p_source=>'ROWID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(70628160223711638)
,p_name=>'P285_MOTIVO_ANULACION'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(70628015655711637)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Motivo Anulacion'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_MOTIVO_ANU'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  select cod_motivo_anu||'' - ''||descripcion D, cod_motivo_anu R',
'    from vt_motivo_anulacion',
'   where cod_empresa = :P_COD_EMPRESA;'))
,p_lov_display_null=>'YES'
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
 p_id=>wwv_flow_imp.id(70628292019711639)
,p_name=>'P285_OBSERVACION'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(70628015655711637)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Observacion'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>30
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(70629041391711647)
,p_validation_name=>'Valida_Motivo'
,p_validation_sequence=>10
,p_validation=>'P285_MOTIVO_ANULACION'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Debe ingresar un motivo antes de cerrar!'
,p_always_execute=>'Y'
,p_validation_condition=>'ACEPTAR'
,p_validation_condition_type=>'REQUEST_IN_CONDITION'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(70627846263711635)
,p_name=>'Clic_Cancelar'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(70627717451711634)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(70628700874711644)
,p_event_id=>wwv_flow_imp.id(70627846263711635)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(70628554252711642)
,p_name=>'Clic_Anular'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(70627658099711633)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(70627963185711636)
,p_event_id=>wwv_flow_imp.id(70628554252711642)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'javascript:openModal(''ANULAR'');'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(70628884139711645)
,p_name=>'New'
,p_event_sequence=>30
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(70628401160711641)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(70628910333711646)
,p_event_id=>wwv_flow_imp.id(70628884139711645)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'closeModal();'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(70629185162711648)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_ANULAR'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    VTANUPED.PR_ANULAR_COMPROBANTE(PI_NRO_COMPROBANTE => :P285_NRO_COMPROBANTE, ',
'                                   PI_SER_COMPROBANTE => :P285_SER_COMPROBANTE,',
'                                   PI_OBSERVACION => :P285_OBSERVACION,',
'                                   PI_MOTIVO_ANULACION => :P2855_MOTIVO_ANULACION);',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        RAISE_APPLICATION_ERROR(-20001,SQLERRM);',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'ACEPTAR'
,p_process_when_type=>'REQUEST_IN_CONDITION'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(69761854279374337)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(69761783262374336)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form VTANUPED(MODAL) - ANULACION DE PEDIDOS'
,p_attribute_01=>'P285_SER_PEDIDO'
,p_attribute_02=>'P285_NRO_PEDIDO'
);
wwv_flow_imp.component_end;
end;
/
