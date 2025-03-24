prompt --application/pages/page_00519
begin
--   Manifest
--     PAGE: 00519
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
 p_id=>519
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'Cierre De Pedidos - VTACIEPE'
,p_alias=>'CIERRE-DE-PEDIDOS-VTACIEPE'
,p_step_title=>'Cierre De Pedidos - VTACIEPE'
,p_allow_duplicate_submissions=>'N'
,p_warn_on_unsaved_changes=>'N'
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
,p_last_upd_yyyymmddhh24miss=>'20230926153921'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(155286120246688206)
,p_plug_name=>'Cierre de Pedidos'
,p_region_template_options=>'#DEFAULT#:t-Region--accent1:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>1140
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(155286200412688207)
,p_plug_name=>'Report'
,p_parent_plug_id=>wwv_flow_imp.id(155286120246688206)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT COD_EMPRESA,	',
'       TIP_COMPROBANTE,	',
'       SER_COMPROBANTE,	',
'       NRO_COMPROBANTE,	',
'       COD_SUCURSAL,	',
'       FEC_COMPROBANTE,	',
'       COD_CLIENTE,	',
'       ( select ltrim( rtrim( nvl( p.nombre, p.nomb_fantasia ) ) )',
'        from cc_clientes c, personas p',
'        where c.cod_empresa = VT.cod_empresa',
'        and c.cod_cliente = VT.cod_cliente',
'        and VT.estado <> ''C''',
'        and c.cod_persona = p.cod_persona',
'        union',
'        select ''CERRADO''',
'        from cc_clientes c, personas p',
'        where c.cod_empresa = VT.cod_empresa',
'        and c.cod_cliente = VT.cod_cliente',
'        and VT.estado = ''C''',
'        and c.cod_persona = p.cod_persona) NOMBRE,',
'       COD_VENDEDOR,	',
'       COD_CONDICION_VENTA,	',
'       COD_LISTA_PRECIO	DESCUENTO,	',
'       COD_MONEDA,	',
'       TIP_CAMBIO,	',
'       TOT_COMPROBANTE,	',
'       ROWID,',
'       NULL INFO',
' FROM VT_PEDIDOS_CABECERA VT',
'where VT.COD_EMPRESA=:P_COD_EMPRESA',
' AND ESTADO =''F'' ',
'AND ESTADO NOT IN (''A'',''C'') ',
'and(VT.ser_comprobante||nro_comprobante in(select d.ser_comprobante||d.nro_comprobante',
'from vt_pedidos_detalle d where ',
'd.cod_empresa=VT.cod_empresa',
'and d.tip_comprobante=VT.tip_comprobante',
'and d.ser_comprobante=VT.ser_comprobante',
'and d.nro_comprobante=VT.nro_comprobante',
'and d.cod_articulo<>''ZZGASFIN''',
'and d.cantidad           > 0',
'and nvl( d.cantidad,0 )  > nvl( d.cantidad_facturada, 0 )))',
'and VT.fec_comprobante>sysdate-180',
' '))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P_COD_EMPRESA'
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
 p_id=>wwv_flow_imp.id(155286418966688209)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'AIBANEZ'
,p_internal_uid=>155286418966688209
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(155286554980688210)
,p_db_column_name=>'COD_EMPRESA'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Cod Empresa'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(155286695551688211)
,p_db_column_name=>'TIP_COMPROBANTE'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Tipo'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(155286702670688212)
,p_db_column_name=>'SER_COMPROBANTE'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Serie'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(155286835654688213)
,p_db_column_name=>'NRO_COMPROBANTE'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>unistr('N\00FAmero')
,p_column_link=>'f?p=&APP_ID.:234:&SESSION.::&DEBUG.::P234_TIP_COMPROBANTE,P234_SER_COMPROBANTE,P234_NRO_COMPROBANTE:#TIP_COMPROBANTE#,#SER_COMPROBANTE#,#NRO_COMPROBANTE#'
,p_column_linktext=>'#NRO_COMPROBANTE#'
,p_column_type=>'NUMBER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(155286992996688214)
,p_db_column_name=>'COD_SUCURSAL'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Cod Sucursal'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(155287017391688215)
,p_db_column_name=>'FEC_COMPROBANTE'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Fec Comprobante'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(155287169473688216)
,p_db_column_name=>'COD_CLIENTE'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>' Cliente'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(155287278750688217)
,p_db_column_name=>'NOMBRE'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Nombre'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(155287329858688218)
,p_db_column_name=>'COD_VENDEDOR'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Vendedor'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_column_alignment=>'CENTER'
,p_rpt_named_lov=>wwv_flow_imp.id(12299613844963402)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(155287434708688219)
,p_db_column_name=>'COD_CONDICION_VENTA'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Cod Condicion Venta'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(155287531788688220)
,p_db_column_name=>'DESCUENTO'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Descuento'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(155287625206688221)
,p_db_column_name=>'COD_MONEDA'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Cod Moneda'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(155287773738688222)
,p_db_column_name=>'TIP_CAMBIO'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Tip Cambio'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(155287804583688223)
,p_db_column_name=>'TOT_COMPROBANTE'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>'Total'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(155287932762688224)
,p_db_column_name=>'ROWID'
,p_display_order=>150
,p_column_identifier=>'O'
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
 p_id=>wwv_flow_imp.id(155289420267688239)
,p_db_column_name=>'INFO'
,p_display_order=>180
,p_column_identifier=>'R'
,p_column_label=>'Ver Detalle'
,p_column_link=>'javascript:$s(''P519_INFO'', ''#ROWID#'');'
,p_column_linktext=>'<span aria-hidden="true" class="fa fa-eye"></span>'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(155303719423523715)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1553038'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>10
,p_report_columns=>'FEC_COMPROBANTE:TIP_COMPROBANTE:SER_COMPROBANTE:NRO_COMPROBANTE:COD_CLIENTE:NOMBRE:COD_VENDEDOR:TOT_COMPROBANTE:INFO:'
,p_sort_column_1=>'FEC_COMPROBANTE'
,p_sort_direction_1=>'DESC'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(155286333607688208)
,p_plug_name=>'Info'
,p_parent_plug_id=>wwv_flow_imp.id(155286120246688206)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--noBorder:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>20
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(155289067384688235)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(155286333607688208)
,p_button_name=>'BT_CERRAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--iconRight:t-Button--hoverIconPush'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Cerrar'
,p_button_position=>'CHANGE'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-window-close-o'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(155285700193688202)
,p_name=>'P519_COD_EMPRESA'
,p_item_sequence=>990
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(155285851694688203)
,p_name=>'P519_COD_MODULO'
,p_item_sequence=>1060
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(155285959195688204)
,p_name=>'P519_COD_SUCURSAL'
,p_item_sequence=>1040
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(155286005333688205)
,p_name=>'P519_COD_USUARIO'
,p_item_sequence=>1000
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(155288226764688227)
,p_name=>'P519_COD_MONEDA'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(155286333607688208)
,p_prompt=>'Moneda'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select m.cod_moneda ||'' - '' ||m.descripcion D,',
'       m.cod_moneda R',
'into :p519_cod_moneda',
'from monedas m, VT_PEDIDOS_CABECERA v',
'where m.cod_moneda = v.cod_moneda;',
''))
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(155288365810688228)
,p_name=>'P519_COD_CONDICION_VENTA'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(155286333607688208)
,p_prompt=>unistr('Condici\00F3n Venta')
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select  c.cod_condicion_venta ||'' - '' ||c.descripcion D,',
'        c.cod_condicion_venta R',
'into :P519_COD_CONDICION_VENTA',
'from cc_condiciones_ventas c, VT_PEDIDOS_CABECERA v',
'where c.cod_empresa = :P519_COD_EMPRESA',
' and c.cod_condicion_venta = v.cod_condicion_venta;'))
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(155288434674688229)
,p_name=>'P519_COD_USUARIO_R'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(155286333607688208)
,p_prompt=>'Usuario '
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select u.cod_usuario|| '' - '' ||ltrim( rtrim( nvl( p.nombre, p.nomb_fantasia ) ) ) D,',
'       u.cod_usuario R',
'into :P519_COD_USUARIO_R',
'from usuarios u, personas p, VT_PEDIDOS_CABECERA v',
'where u.cod_empresa = :P519_COD_EMPRESA',
' and u.cod_usuario = v.cod_usuario',
' and u.cod_persona = p.cod_persona;'))
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(155288519233688230)
,p_name=>'P519_COD_MOTIVO_ANU'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(155286333607688208)
,p_prompt=>'Motivo Cliente'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select m.cod_motivo_anu ||'' - '' ||m.descripcion D,',
'       m.cod_motivo_anu R',
'into :P519_COD_MOTIVO_ANU',
'from vt_motivo_anulacion m, VT_PEDIDOS_CABECERA v',
'where m.cod_empresa = :P519_COD_EMPRESA',
'and m.cod_motivo_anu = v.cod_motivo_anu;'))
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(155288601280688231)
,p_name=>'P519_DESC_VENDEDOR'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(155286333607688208)
,p_prompt=>'Vendedor'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select descripcion',
'into :P519_DESC_VENDEDOR',
'from fv_vendedores v',
'where v.cod_empresa = :P519_COD_EMPRESA'))
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(155288720530688232)
,p_name=>'P519_OBSERVACION_ANULA'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(155286333607688208)
,p_prompt=>unistr('Observaci\00F3n Anula')
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
 p_id=>wwv_flow_imp.id(155289265823688237)
,p_name=>'P519_ELIMINAR'
,p_item_sequence=>1070
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(155289387322688238)
,p_name=>'P519_EDITAR'
,p_item_sequence=>1080
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(155289568218688240)
,p_name=>'P519_INFO'
,p_item_sequence=>1090
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(155434156396971915)
,p_name=>'P519_MENSAJE'
,p_item_sequence=>1050
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(155434502938971919)
,p_name=>'P519_TIP_COMPROBANTE_AUX'
,p_item_sequence=>1010
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(155434650352971920)
,p_name=>'P519_SER_COMPROBANTE_AUX'
,p_item_sequence=>1020
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(155434739449971921)
,p_name=>'P519_NRO_COMPROBANTE_AUX'
,p_item_sequence=>1030
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(155434853960971922)
,p_name=>'P519_NOMBRE'
,p_item_sequence=>1100
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(155434974213971923)
,p_name=>'P519_FEC_ESTADO'
,p_item_sequence=>1110
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(155435099829971924)
,p_name=>'P519_COD_USUARIO_ANU'
,p_item_sequence=>1120
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(155435115774971925)
,p_name=>'P519_ESTADO'
,p_item_sequence=>1130
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(155289630674688241)
,p_name=>'DA_INFO'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P519_INFO'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(155289750297688242)
,p_event_id=>wwv_flow_imp.id(155289630674688241)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'      SELECT (select m.cod_moneda ||'' - '' ||m.descripcion ',
'                from monedas m',
'                where m.cod_moneda = v.cod_moneda) COD_MONEDA,',
'             (select  c.cod_condicion_venta ||'' - '' ||c.descripcion ',
'                from cc_condiciones_ventas c',
'                where c.cod_empresa = :P519_COD_EMPRESA',
'                and c.cod_condicion_venta = v.cod_condicion_venta) COD_CONDICION_VENTA,',
'             (select NVL( u.cod_usuario|| '' - '' ||ltrim( rtrim( nvl( p.nombre, p.nomb_fantasia ) ) ), ''NO HAY DATOS.'' )',
'                from usuarios u, personas p',
'                 where u.cod_empresa = :P519_COD_EMPRESA',
'                 and u.cod_usuario = v.cod_usuario',
'                 and u.cod_persona = p.cod_persona) COD_USUARIO,',
'              (select NVL(m.cod_motivo_anu ||'' - '' ||m.descripcion, ''NO HAY DATOS.'')',
'                   from vt_motivo_anulacion m',
'                   where m.cod_empresa = :P519_COD_EMPRESA',
'                   and m.cod_motivo_anu = v.cod_motivo_anu)COD_MOTIVO_ANU,',
'               (select NVL(f.cod_vendedor|| '' - '' ||f.descripcion, ''NO HAY DATOS.'')',
'                from fv_vendedores f',
'                where f.cod_empresa = :P519_COD_EMPRESA',
'                and f.cod_vendedor = v.cod_vendedor) DESC_VENDEDOR,',
'                NVL(OBSERVACION_ANULA,''NO HAY DATOS.'')',
'    INTO :P519_COD_MONEDA,',
'         :P519_COD_CONDICION_VENTA,',
'         :P519_COD_USUARIO_R,',
'         :P519_COD_MOTIVO_ANU,',
'         :P519_DESC_VENDEDOR,',
'         :P519_OBSERVACION_ANULA',
'    FROM VT_PEDIDOS_CABECERA V',
'    WHERE ROWID = :P519_INFO;',
'',
'    EXCEPTION',
'        WHEN NO_DATA_FOUND THEN',
'                :P519_COD_MONEDA := NULL;',
'                :P519_COD_CONDICION_VENTA := NULL;',
'                :P519_COD_USUARIO_R := NULL;',
'                :P519_COD_MOTIVO_ANU := NULL;',
'                :P519_DESC_VENDEDOR := NULL;',
'                :P519_OBSERVACION_ANULA := NULL;',
'        WHEN OTHERS THEN',
'                APEX_DEBUG.ERROR(''Error al asignar valores ''||SQLERRM);',
'END;'))
,p_attribute_02=>'P519_INFO'
,p_attribute_03=>'P519_COD_MONEDA,P519_COD_CONDICION_VENTA,P519_COD_USUARIO_R,P519_COD_MOTIVO_ANU,P519_DESC_VENDEDOR,P519_OBSERVACION_ANULA'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(155289814595688243)
,p_event_id=>wwv_flow_imp.id(155289630674688241)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(155286200412688207)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(155290400070688249)
,p_name=>'DA_EDITAR'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P519_EDITAR'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(155341996555026501)
,p_name=>'DA_ELIMINAR'
,p_event_sequence=>40
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P519_ELIMINAR'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(155342050774026502)
,p_event_id=>wwv_flow_imp.id(155341996555026501)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>unistr('\00BFDesea eliminar este pedido?')
,p_attribute_03=>'warning'
,p_attribute_04=>'fa-trash-o'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(155342662160026508)
,p_event_id=>wwv_flow_imp.id(155341996555026501)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    DELETE vt_pedidos_cabecera',
'    WHERE ROWID = :P519_ELIMINAR;',
'',
'    EXCEPTION',
'        WHEN OTHERS THEN',
'            APEX_DEBUG.ERROR(''Error al eliminar: ''|| SQLERRM);',
'END;'))
,p_attribute_02=>'P519_ELIMINAR'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(155342774335026509)
,p_event_id=>wwv_flow_imp.id(155341996555026501)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(155286200412688207)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(155433721006971911)
,p_name=>'DA_ANULAR'
,p_event_sequence=>50
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(155289067384688235)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(155434468404971918)
,p_event_id=>wwv_flow_imp.id(155433721006971911)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'     :P519_MENSAJE := NULL;',
'     ',
'    IF :P519_INFO IS NOT NULL THEN',
'',
'    SELECT TIP_COMPROBANTE,',
'           SER_COMPROBANTE,',
'           NRO_COMPROBANTE',
'    INTO :P519_TIP_COMPROBANTE_AUX,',
'         :P519_SER_COMPROBANTE_AUX,',
'         :P519_NRO_COMPROBANTE_AUX',
'    FROM VT_PEDIDOS_CABECERA',
'    WHERE ROWID = :P519_INFO;',
'    ',
'    ELSE ',
'        :P519_MENSAJE := ''seleccione un pedido.'';',
'',
'    END IF;',
'       ',
'    EXCEPTION',
'        WHEN NO_DATA_FOUND THEN',
'                NULL;',
'        WHEN OTHERS THEN',
'            APEX_DEBUG.ERROR(''Error asignando datos 2: ''||SQLERRM);',
'END;'))
,p_attribute_02=>'P519_INFO'
,p_attribute_03=>'P519_TIP_COMPROBANTE_AUX,P519_SER_COMPROBANTE_AUX,P519_NRO_COMPROBANTE_AUX'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(155433931410971913)
,p_event_id=>wwv_flow_imp.id(155433721006971911)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('\00BFRealmente desea cerrar el pedido &P519_SER_COMPROBANTE_AUX. - '),
'         &P519_NRO_COMPROBANTE_AUX. ?'))
,p_attribute_03=>'information'
,p_attribute_04=>'fa-trash-o'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(155433879268971912)
,p_event_id=>wwv_flow_imp.id(155433721006971911)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'',
' f VARCHAR2(100);',
' v_nombre VARCHAR2(100);',
'',
'BEGIN',
'    :P519_MENSAJE := null;',
'',
'    IF :P519_TIP_COMPROBANTE_AUX = ''PED'' THEN',
'    f := ''PEDIDO '';',
'    ELSE',
'    f := :P519_TIP_COMPROBANTE_AUX || '' '';',
'    END IF;',
'',
'    UPDATE VT_PEDIDOS_CABECERA ',
'            SET',
'                estado = ''C'',',
'                fec_estado = sysdate,',
'                Cod_usuario_anu = :p519_cod_usuario',
'    WHERE ROWID = :P519_INFO;',
'',
'',
'    EXCEPTION',
'          WHEN NO_DATA_FOUND THEN',
'                    NULL;',
'          WHEN OTHERS THEN',
'            :P519_MENSAJE := ''Debe ingresar un motivo antes de cerrar!'';',
'END;'))
,p_attribute_02=>'P519_NOMBRE,P519_FEC_ESTADO,P519_COD_USUARIO_ANU,P519_ESTADO,P519_COD_USUARIO'
,p_attribute_03=>'P519_MENSAJE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(208559723905354636)
,p_event_id=>wwv_flow_imp.id(155433721006971911)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
' ',
' VEXISTE VARCHAR2(100);',
'',
'BEGIN',
'    :P519_MENSAJE := null;',
' ',
'',
'    select  ''S'' INTO VEXISTE',
'    FROM  VT_PEDIDOS_CABECERA ',
'         WHERE  estado = ''C'' ',
'    AND ROWID = :P519_INFO;',
'',
'  :P519_MENSAJE := ''Pedido Cerrado Exitosamente!'';',
'    EXCEPTION',
'          WHEN NO_DATA_FOUND THEN',
'                   :P519_MENSAJE := ''No se pudo cerrar el pedido!'';',
'          WHEN OTHERS THEN',
'            :P519_MENSAJE := ''No se pudo cerrar el pedido!'';',
'END;'))
,p_attribute_02=>'P519_NOMBRE,P519_FEC_ESTADO,P519_COD_USUARIO_ANU,P519_ESTADO,P519_COD_USUARIO'
,p_attribute_03=>'P519_MENSAJE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(155435235204971926)
,p_event_id=>wwv_flow_imp.id(155433721006971911)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(155286200412688207)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(155434289623971916)
,p_name=>'DA_MENSAJE'
,p_event_sequence=>60
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P519_MENSAJE'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(155434378730971917)
,p_event_id=>wwv_flow_imp.id(155434289623971916)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'&P519_MENSAJE.'
,p_attribute_03=>'information'
,p_attribute_04=>'fa-info-circle-o'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P519_MENSAJE'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(155342202973026504)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'PR_CLEAR'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
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
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(155285656427688201)
,p_process_sequence=>20
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_INIT'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P519_cod_usuario   := :P_cod_usuario;',
':P519_cod_empresa   := :P_cod_empresa;',
':P519_cod_sucursal  := :P_cod_sucursal;',
':P519_cod_modulo    := :P_cod_modulo;',
''))
,p_process_clob_language=>'PLSQL'
);
null;
wwv_flow_imp.component_end;
end;
/
