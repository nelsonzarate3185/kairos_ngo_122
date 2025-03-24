prompt --application/pages/page_00210
begin
--   Manifest
--     PAGE: 00210
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
 p_id=>210
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'RPPROGUA'
,p_alias=>'RPPROGUA'
,p_step_title=>'RPPROGUA'
,p_autocomplete_on_off=>'OFF'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.no-close .ui-dialog-titlebar-close {',
'   display: none;',
'}',
'body .ui-dialog .ui-dialog-titlebar {',
'    background-color: #003a85;',
'    border-bottom: 1px solid rgba(0, 0, 0, 0.05);',
'    ',
'}',
'body .ui-dialog .ui-dialog-title {',
'    color: yellow;',
'    font-weight: bold !important;',
'}',
'',
'.t-Region-body>.container .t-Button{ ',
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
' #btndet{   ',
'        background:white;',
'        background-image: linear-gradient(180deg, rgb(1, 1, 131)  0%, #003a85de 100%);',
'        color:  yellow; ',
'        justify-content: center;',
'        align-items: center; ',
'        box-shadow: #79beca 1px 1px 5px 1px; ',
'        border-style: solid;',
'        border-width: 0.5px;',
'        border-color: rgb(97, 91, 0); ',
'}',
'',
'',
'',
'.t-Form-label{',
'    color:  darkblue !important;',
'    font-weight: bold !important;',
'    }',
'',
'#reg_parametros/*, #R12875002688605103,#P12_DETALLE_DISPLAY*/{',
'      background-color: #487ab8 !important;',
'      box-shadow: black 1px 1px 5px 1px;}',
'',
'#P210_COD_CLIENTE, #P210_NOMBRE , #P210_FECHA_DESDE, #P210_FECHA_HASTA, #P210_TIP_COMPROBANTE, ',
'#P210_SER_COMPROBANTE, #P210_NRO_COMPROBANTE, #P210_ID_GENERADO {',
'    background: white;',
'    border-color: darkblue; ',
'    color: darkblue;',
'}      ',
'',
'.a-GV-header {',
'    background: #003a85 !important;',
'    background-color: #003a85 !important;',
'	color: #FFED00 !important; ',
'      }',
'',
'',
'',
'.a-GV-footer { display:none;}',
'',
'',
' '))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_last_updated_by=>'NZARATE'
,p_last_upd_yyyymmddhh24miss=>'20240906152611'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(44835655955897228)
,p_plug_name=>'Envio a Clientes'
,p_region_name=>'reg_parametros'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(44835783533897229)
,p_plug_name=>'CABECERA'
,p_parent_plug_id=>wwv_flow_imp.id(44835655955897228)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(64087414848872839)
,p_plug_name=>'Pendientes'
,p_region_name=>'detalle_generado'
,p_parent_plug_id=>wwv_flow_imp.id(44835783533897229)
,p_region_css_classes=>'js-dialog-size1500x650'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40117728043263659)
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'	select  p.id,',
'                  p.cod_cliente,',
'                  p.nombre,',
'                  p.cod_sucursal_dist,',
'                  s.nombre desc_sucursal,',
'                  s.direccion,',
'                  p.cliente_retira,',
'                  p.observaciones,',
'                  p.fecha_entrega,',
'                  ss.cod_art_corto, ss.cod_articulo, p.cantidad,',
'                  case when p.estado=''I'' THEN ''PENDIENTE'' ELSE ''PROCESADO'' END ESTADO,        P.TIP_COMPROBANTE||'' ''||P.SER_COMPROBANTE||'' ''|| P.NRO_COMPROBANTE FACTURA,',
'                  FEC_HOR_INS fecha_generacio',
'    from rp_productos_en_guarda p,',
'         sucursal_cliente s, st_articulos ss',
'   where p.cod_cliente       = s.cod_cliente',
'     and p.cod_sucursal_dist = s.cod_sucursal',
'     and p.cod_empresa        = :P_COD_EMPRESA',
'     and (p.cod_cliente = :P210_COD_CLIENTE)',
'     /*and p.estado = ''I'' */',
'     AND FEC_HOR_INS>SYSDATE-180',
'     and p.cod_empresa=ss.cod_empresa',
'     and p.cod_articulo=ss.cod_articulo',
'     order by p.id,FEC_HOR_INS desc'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P210_COD_CLIENTE,P_COD_EMPRESA'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>400
,p_prn_height=>400
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Pendientes'
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
 p_id=>wwv_flow_imp.id(64087541310872840)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'INV'
,p_internal_uid=>64087541310872840
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(64087613623872841)
,p_db_column_name=>'ID'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(64087767921872842)
,p_db_column_name=>'COD_CLIENTE'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Cod Cliente'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(64087810228872843)
,p_db_column_name=>'NOMBRE'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Nombre'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(64087993717872844)
,p_db_column_name=>'COD_SUCURSAL_DIST'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Cod Sucursal Dist'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(64088019489872845)
,p_db_column_name=>'DESC_SUCURSAL'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Desc Sucursal'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(64088182121872846)
,p_db_column_name=>'DIRECCION'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Direccion'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(64088283335872847)
,p_db_column_name=>'CLIENTE_RETIRA'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Cliente Retira'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(64088353115872848)
,p_db_column_name=>'OBSERVACIONES'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Observaciones'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(64088466722872849)
,p_db_column_name=>'FECHA_ENTREGA'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Fecha Entrega'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(64088591864872850)
,p_db_column_name=>'COD_ART_CORTO'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Cod Art Corto'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(108920292650676401)
,p_db_column_name=>'COD_ARTICULO'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Cod Articulo'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(108920363695676402)
,p_db_column_name=>'CANTIDAD'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Cantidad'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(650046897678536524)
,p_db_column_name=>'ESTADO'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Estado'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(650047149407536527)
,p_db_column_name=>'FACTURA'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>'Factura'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(650047206384536528)
,p_db_column_name=>'FECHA_GENERACIO'
,p_display_order=>150
,p_column_identifier=>'O'
,p_column_label=>unistr('Fecha Creaci\00F3n')
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(108929304623679004)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1089294'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'ID:FACTURA:COD_CLIENTE:NOMBRE:COD_SUCURSAL_DIST:DESC_SUCURSAL:DIRECCION:OBSERVACIONES:FECHA_ENTREGA:COD_ART_CORTO:COD_ARTICULO:CANTIDAD:ESTADO:FECHA_GENERACIO:'
,p_sort_column_1=>'ID'
,p_sort_direction_1=>'DESC'
,p_sum_columns_on_break=>'CANTIDAD'
);
wwv_flow_imp_page.create_worksheet_condition(
 p_id=>wwv_flow_imp.id(705522960642850583)
,p_report_id=>wwv_flow_imp.id(108929304623679004)
,p_name=>'Procesado'
,p_condition_type=>'HIGHLIGHT'
,p_allow_delete=>'Y'
,p_column_name=>'ESTADO'
,p_operator=>'='
,p_expr=>'PROCESADO'
,p_condition_sql=>' (case when ("ESTADO" = #APXWS_EXPR#) then #APXWS_HL_ID# end) '
,p_condition_display=>'#APXWS_COL_NAME# = ''PROCESADO''  '
,p_enabled=>'Y'
,p_highlight_sequence=>10
,p_row_bg_color=>'#43fd1e'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(44836454145897236)
,p_plug_name=>'DETALLES_PEDIDO'
,p_parent_plug_id=>wwv_flow_imp.id(44835655955897228)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ',
'        seq_id SEQ_ID,',
'        d001  FECHA_FACT,',
'        c001  TICOMPROBANTE_REF,',
'        c002  SER_COMPROBANTE_REF,',
'        n001  NRO_COMPROBANTE_REF,                        ',
'        c003  COD_ART_CORTO,',
'        c004  COD_ARTICULO,',
'        c005  DESC_ARTICULO,                        ',
'        n002  CANT_FACT,',
'        n003  CANT_REM,',
'        n004  CANT_NCR,',
'        n005  CANT_GEN,      ',
'        c006  COD_CLIENTE,',
'        c007  COD_SUCURSAL,',
'        c008  TIPO_ENTREGA,',
'        c009  COD_USUARIO,',
'        c010  ESTADO_REPARTO,',
'        c011  NOMBRE,',
'        c012  RUC,',
'        c013  TEL_CLIENTE,',
'        c014  SALDO_VENCIDO,',
'        c015 ENVIAR,',
'        c016 CANTIDAD_DISPONIBLE,  ',
'        NULL EDITAR,',
'        NULL DETALLES ',
'',
'FROM APEX_COLLECTIONS',
'WHERE COLLECTION_NAME = ''CLIENTE_PEDIDOS''',
'AND :P210_INDICADOR_REPORTE = ''1'';'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P210_INDICADOR_REPORTE'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'DETALLES_PEDIDO'
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
 p_id=>wwv_flow_imp.id(45022124864017116)
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
,p_internal_uid=>45022124864017116
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(45022250505017117)
,p_db_column_name=>'SEQ_ID'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Seq Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(45022352253017118)
,p_db_column_name=>'FECHA_FACT'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Fec. Fact'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(45022495089017119)
,p_db_column_name=>'TICOMPROBANTE_REF'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Tipo'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(45022591485017120)
,p_db_column_name=>'SER_COMPROBANTE_REF'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Serie'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(45022657168017121)
,p_db_column_name=>'NRO_COMPROBANTE_REF'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Nro. Fact'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(45022735262017122)
,p_db_column_name=>'COD_ART_CORTO'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Cod Corto'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(45022836778017123)
,p_db_column_name=>'COD_ARTICULO'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Cod Articulo'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(45022987366017124)
,p_db_column_name=>'DESC_ARTICULO'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>unistr('Descripci\00F3n')
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(45023055509017125)
,p_db_column_name=>'CANT_FACT'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Fact.'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(45023101744017126)
,p_db_column_name=>'CANT_REM'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Rem.'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(45023235060017127)
,p_db_column_name=>'CANT_NCR'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'NCR'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(45023308620017128)
,p_db_column_name=>'CANT_GEN'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Gen. '
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(45023470189017129)
,p_db_column_name=>'COD_CLIENTE'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Cod Cliente'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(45023574242017130)
,p_db_column_name=>'COD_SUCURSAL'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>'Cod Sucursal'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(45023687879017131)
,p_db_column_name=>'TIPO_ENTREGA'
,p_display_order=>150
,p_column_identifier=>'O'
,p_column_label=>'Tipo Entrega'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(45023755467017132)
,p_db_column_name=>'COD_USUARIO'
,p_display_order=>160
,p_column_identifier=>'P'
,p_column_label=>'Cod Usuario'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(45023810251017133)
,p_db_column_name=>'ESTADO_REPARTO'
,p_display_order=>170
,p_column_identifier=>'Q'
,p_column_label=>'Estado Reparto'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(45023942399017134)
,p_db_column_name=>'NOMBRE'
,p_display_order=>180
,p_column_identifier=>'R'
,p_column_label=>'Nombre'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(45024004327017135)
,p_db_column_name=>'RUC'
,p_display_order=>190
,p_column_identifier=>'S'
,p_column_label=>'Ruc'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(45024106250017136)
,p_db_column_name=>'TEL_CLIENTE'
,p_display_order=>200
,p_column_identifier=>'T'
,p_column_label=>'Tel Cliente'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(45024222859017137)
,p_db_column_name=>'SALDO_VENCIDO'
,p_display_order=>210
,p_column_identifier=>'U'
,p_column_label=>'Saldo Vencido'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(45024532492017140)
,p_db_column_name=>'ENVIAR'
,p_display_order=>230
,p_column_identifier=>'X'
,p_column_label=>'Enviar'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(45024774201017142)
,p_db_column_name=>'EDITAR'
,p_display_order=>240
,p_column_identifier=>'Y'
,p_column_label=>'Editar'
,p_column_link=>'javascript:$s(''P210_SEQ_ID_EDITAR'',''#SEQ_ID#'');'
,p_column_linktext=>'<span aria-hidden="true" class="fa fa-edit"></span>'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(45491233558535515)
,p_db_column_name=>'DETALLES'
,p_display_order=>250
,p_column_identifier=>'Z'
,p_column_label=>'Detalles'
,p_column_link=>'javascript:$s(''P210_SEQ_ID_DETALLES'',''#SEQ_ID#'');'
,p_column_linktext=>'<span class="fa fa-search" aria-hidden="true"></span>'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(45491792975535520)
,p_db_column_name=>'CANTIDAD_DISPONIBLE'
,p_display_order=>260
,p_column_identifier=>'AA'
,p_column_label=>'Cantidad Disponible'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(45131930138731868)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'451320'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>20
,p_report_columns=>'FECHA_FACT:TICOMPROBANTE_REF:SER_COMPROBANTE_REF:NRO_COMPROBANTE_REF:COD_ART_CORTO:DESC_ARTICULO:CANT_FACT:CANT_REM:CANT_NCR:CANT_GEN:CANTIDAD_DISPONIBLE:ENVIAR:SALDO_VENCIDO:EDITAR:DETALLES:'
,p_sum_columns_on_break=>'CANT_GEN:CANT_FACT:CANT_REM:CANT_NCR'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(44836554002897237)
,p_plug_name=>'DETALLES_SUCURSAL'
,p_parent_plug_id=>wwv_flow_imp.id(44835655955897228)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>30
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(44837139157897243)
,p_plug_name=>'IZQ'
,p_parent_plug_id=>wwv_flow_imp.id(44836554002897237)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(44837275225897244)
,p_plug_name=>'DER'
,p_parent_plug_id=>wwv_flow_imp.id(44836554002897237)
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
 p_id=>wwv_flow_imp.id(45021902743017114)
,p_plug_name=>'VARIABLES AUXILIARES'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>50
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(45025060575017145)
,p_plug_name=>'EDITAR_CANTIDAD_ENVIAR'
,p_region_template_options=>'#DEFAULT#:js-dialog-size600x400'
,p_plug_template=>wwv_flow_imp.id(40117728043263659)
,p_plug_display_sequence=>60
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(45494725185535550)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(44836454145897236)
,p_button_name=>'P210_BOTON_ENVIAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('Enviar Cantidad M\00E1xima')
,p_button_position=>'BOTTOM'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(45025595734017150)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(45025060575017145)
,p_button_name=>'P210_BOTON_CANCELAR_EDITAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_image_alt=>'Cancelar'
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(44837884478897250)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(44835655955897228)
,p_button_name=>'P210_BOTON_PROCESAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Procesar'
,p_button_position=>'CREATE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(45490052871535503)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(45025060575017145)
,p_button_name=>'P210_BOTON_ACEPTAR_EDITAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Aceptar'
,p_button_position=>'EDIT'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(64087366860872838)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(44836454145897236)
,p_button_name=>'ReporteGenerados'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_image_alt=>'Reporte ID Generado'
,p_button_position=>'TOP'
,p_button_alignment=>'LEFT'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(45021501956017110)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(44836454145897236)
,p_button_name=>'P210_BUSCAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Buscar'
,p_button_position=>'TOP'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(44835872009897230)
,p_name=>'P210_COD_CLIENTE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(44835783533897229)
,p_prompt=>'Cliente'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_CLIENTES1'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT nombre,',
'       nomb_fantasia,',
'       cod_cliente,',
'       codigo_area,',
'       num_telefono,',
'       cod_ident,',
'       numero,',
'       cod_ident||'' - ''||nombre DESCRI,',
'       c.cod_cliente codi',
'  FROM cc_clientes c, personas p, telef_personas pt, ident_personas pi',
' WHERE c.cod_empresa = :P_COD_EMPRESA',
'   AND c.cod_persona = p.cod_persona',
'   AND p.cod_persona = pt.cod_persona(+)',
'   AND p.cod_persona = pi.cod_persona(+)',
'   AND nvl(c.estado, ''X'') in(''A'',''B'',''C'')',
' ORDER BY nombre'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_colspan=>2
,p_field_template=>wwv_flow_imp.id(40186937130263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'Y'
,p_attribute_05=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(44835989914897231)
,p_name=>'P210_FECHA_DESDE'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(44835783533897229)
,p_prompt=>'Fecha Desde'
,p_display_as=>'NATIVE_DATE_PICKER_JET'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186937130263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'POPUP'
,p_attribute_03=>'NONE'
,p_attribute_06=>'NONE'
,p_attribute_09=>'N'
,p_attribute_11=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(44836050330897232)
,p_name=>'P210_TIP_COMPROBANTE'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(44835783533897229)
,p_prompt=>'Tipo Comprobante'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:1) FCR;FCR,2) ORT;ORT,3) FCO;FCO,4) REM;REM'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(40186937130263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(44836211198897234)
,p_name=>'P210_SER_COMPROBANTE'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(44835783533897229)
,p_prompt=>'Serie'
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
 p_id=>wwv_flow_imp.id(44836375092897235)
,p_name=>'P210_NRO_COMPROBANTE'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(44835783533897229)
,p_prompt=>'Nro'
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
 p_id=>wwv_flow_imp.id(44836635861897238)
,p_name=>'P210_FECHA_HASTA'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(44835783533897229)
,p_prompt=>'Fecha Hasta'
,p_display_as=>'NATIVE_DATE_PICKER_JET'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186937130263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'POPUP'
,p_attribute_03=>'NONE'
,p_attribute_06=>'NONE'
,p_attribute_09=>'N'
,p_attribute_11=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(44836943906897241)
,p_name=>'P210_COD_SUCURSAL_DIST'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(44837139157897243)
,p_prompt=>'Suc. a enviar'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT s.cod_sucursal || '' - '' || s.nombre D ,  s.cod_sucursal R',
'',
'FROM bs_sucursal_cliente s,',
'     cc_clientes c',
'WHERE s.cod_empresa = c.cod_empresa',
'AND s.cod_cliente = c.cod_cliente',
'AND s.cod_empresa = :P_COD_EMPRESA',
'AND s.cod_cliente = :P210_COD_CLIENTE',
'ORDER BY to_number(s.cod_sucursal)'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186937130263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(44837356801897245)
,p_name=>'P210_OBSERVACIONES'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(44837275225897244)
,p_prompt=>'Observaciones'
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
 p_id=>wwv_flow_imp.id(44837526417897247)
,p_name=>'P210_FECHA_ENTREGA'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(44837275225897244)
,p_prompt=>'Fecha Entrega'
,p_display_as=>'NATIVE_DATE_PICKER_JET'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186937130263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'POPUP'
,p_attribute_03=>'NONE'
,p_attribute_06=>'NONE'
,p_attribute_09=>'N'
,p_attribute_11=>'Y'
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
 p_id=>wwv_flow_imp.id(44837625395897248)
,p_name=>'P210_DIRECCION'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(44837139157897243)
,p_prompt=>'Direccion'
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
 p_id=>wwv_flow_imp.id(44837787484897249)
,p_name=>'P210_CLIENTE_RETIRA'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(44837139157897243)
,p_prompt=>'Cliente Retira?'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'S'
,p_attribute_03=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(45022079188017115)
,p_name=>'P210_INDICADOR_REPORTE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(45021902743017114)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(45024898837017143)
,p_name=>'P210_SEQ_ID_EDITAR'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(45021902743017114)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(45025349758017148)
,p_name=>'P210_DISPONIBLE_EDITAR'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(45025060575017145)
,p_prompt=>'Cantidad disponible'
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
 p_id=>wwv_flow_imp.id(45025428622017149)
,p_name=>'P210_ENVIAR_EDITAR'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(45025060575017145)
,p_prompt=>'Cantidad a enviar'
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
 p_id=>wwv_flow_imp.id(45490621871535509)
,p_name=>'P210_INDICADOR_ALERT'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(45021902743017114)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(45491325640535516)
,p_name=>'P210_SEQ_ID_DETALLES'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(45021902743017114)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(45491432627535517)
,p_name=>'P210_ENVIA_VENCIDO'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(45021902743017114)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(45492283484535525)
,p_name=>'P210_COD_FORMA'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(45021902743017114)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(45492307714535526)
,p_name=>'P210_NOM_FORMA'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(45021902743017114)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(45492433507535527)
,p_name=>'P210_NOM_MODULO'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(45021902743017114)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(64085085247872815)
,p_name=>'P210_NOMBRE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(44835783533897229)
,p_prompt=>'Nombre'
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
 p_id=>wwv_flow_imp.id(64085320379872818)
,p_name=>'P210_ID_GENERADO'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(44835783533897229)
,p_prompt=>'Id Generado'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(45020823485017103)
,p_name=>'DA_SETEAR_DIRECCION'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P210_COD_SUCURSAL_DIST'
,p_condition_element=>'P210_COD_SUCURSAL_DIST'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(45020991176017104)
,p_event_id=>wwv_flow_imp.id(45020823485017103)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    SELECT DIRECCION INTO :P210_DIRECCION',
'    FROM bs_sucursal_cliente',
'    WHERE COD_EMPRESA = :P_COD_EMPRESA',
'    AND COD_CLIENTE = :P210_COD_CLIENTE',
'    AND COD_SUCURSAL = :P210_COD_SUCURSAL_DIST;',
'',
'    APEX_DEBUG.ERROR(:P210_DIRECCION);',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'',
'END;'))
,p_attribute_02=>'P_COD_EMPRESA,P210_COD_SUCURSAL_DIST,P210_COD_CLIENTE'
,p_attribute_03=>'P210_DIRECCION'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(45021451492017109)
,p_event_id=>wwv_flow_imp.id(45020823485017103)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P210_DIRECCION'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(45021657676017111)
,p_name=>'DA_CARGAR_PEDIDOS'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(45021501956017110)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(47487537099735705)
,p_event_id=>wwv_flow_imp.id(45021657676017111)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    IF ',
'       :P210_COD_CLIENTE IS NULL OR',
'       :P210_TIP_COMPROBANTE IS NULL OR',
'       :P210_FECHA_HASTA IS NULL OR',
'       :P210_FECHA_DESDE IS NULL ',
'    THEN',
'           :P210_INDICADOR_ALERT := ''4'';',
'    ELSE',
'        IF :P210_INDICADOR_ALERT = 3 THEN',
'           :P210_INDICADOR_ALERT := ''3'';',
'        ELSE',
'            :P210_INDICADOR_ALERT := ''0'';',
'        END IF;',
'    END IF;',
'',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'',
'END;'))
,p_attribute_02=>'P210_COD_CLIENTE,P210_TIP_COMPROBANTE,P210_FECHA_HASTA,P210_FECHA_DESDE,P210_INDICADOR_ALERT'
,p_attribute_03=>'P210_INDICADOR_ALERT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(47487660856735706)
,p_event_id=>wwv_flow_imp.id(45021657676017111)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'Compruebe que los campos requeridos no se encuentren vacios.'
,p_attribute_02=>'CAMPOS VACIOS'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P210_INDICADOR_ALERT'
,p_client_condition_expression=>'4'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(45021738771017112)
,p_event_id=>wwv_flow_imp.id(45021657676017111)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    IF to_date(:P210_FECHA_HASTA, ''dd/mm/yyyy'') < to_date(:P210_FECHA_DESDE, ''dd/mm/yyyy'') THEN',
'        :P210_INDICADOR_ALERT := ''3'';',
'    ELSE',
'        IF :P210_INDICADOR_ALERT = ''4'' THEN',
'            :P210_INDICADOR_ALERT := ''4'';',
'        ELSE',
'            :P210_INDICADOR_ALERT := ''O'';',
'            RPPROGUA.pr_crear_coleccion_pedidos( :P_COD_EMPRESA, ',
'                                                     :P210_FECHA_DESDE, ',
'                                                     :P210_FECHA_HASTA, ',
'                                                     :P210_COD_CLIENTE, ',
'                                                     :P210_TIP_COMPROBANTE, ',
'                                                     :P210_SER_COMPROBANTE, ',
'                                                     :P210_NRO_COMPROBANTE);',
'            :P210_INDICADOR_REPORTE := ''1'';',
'        END IF;',
'    END IF;',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'',
'END;',
''))
,p_attribute_02=>'P_COD_EMPRESA,P210_FECHA_DESDE,P210_FECHA_HASTA,P210_COD_CLIENTE,P210_TIP_COMPROBANTE,P210_SER_COMPROBANTE,P210_NRO_COMPROBANTE,P210_INDICADOR_REPORTE'
,p_attribute_03=>'P210_INDICADOR_REPORTE,P210_INDICADOR_ALERT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(45493065772535533)
,p_event_id=>wwv_flow_imp.id(45021657676017111)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'La fecha inicial no puede ser mayor a la fecha final.'
,p_attribute_02=>'Error en las fechas'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P210_INDICADOR_ALERT'
,p_client_condition_expression=>'3'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(45021842905017113)
,p_event_id=>wwv_flow_imp.id(45021657676017111)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(44836454145897236)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(45025131756017146)
,p_name=>'DA_ABRIR_REGION_EDITAR'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P210_SEQ_ID_EDITAR'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(45491640515535519)
,p_event_id=>wwv_flow_imp.id(45025131756017146)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P210_DISPONIBLE_EDITAR,P210_ENVIAR_EDITAR'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(45025248840017147)
,p_event_id=>wwv_flow_imp.id(45025131756017146)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(45025060575017145)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(45490160476535504)
,p_event_id=>wwv_flow_imp.id(45025131756017146)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    SELECT ',
'        c015,',
'        c016',
'                                                   ',
'    INTO',
'            :P210_ENVIAR_EDITAR, :P210_DISPONIBLE_EDITAR',
'      ',
'    FROM',
'            APEX_COLLECTIONS',
'    WHERE',
'            COLLECTION_NAME = ''CLIENTE_PEDIDOS''',
'    AND',
'            SEQ_ID = :P210_SEQ_ID_EDITAR;',
'',
'',
'EXCEPTION',
'            WHEN OTHERS THEN',
'                APEX_DEBUG.ERROR(sqlerrm);',
'',
'END;'))
,p_attribute_02=>'SEP,P210_SEQ_ID_EDITAR,P210_ENVIAR_EDITAR'
,p_attribute_03=>'P210_DISPONIBLE_EDITAR,P210_ENVIAR_EDITAR'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(45489836151535501)
,p_name=>'DA_CERRAR_REGION_EDITAR'
,p_event_sequence=>40
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(45025595734017150)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(45489966358535502)
,p_event_id=>wwv_flow_imp.id(45489836151535501)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(45025060575017145)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(45490286514535505)
,p_name=>'DA_SET_FOCUS_ENVIAR'
,p_event_sequence=>50
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P210_DISPONIBLE_EDITAR'
,p_bind_type=>'bind'
,p_bind_event_type=>'focusin'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(45490314742535506)
,p_event_id=>wwv_flow_imp.id(45490286514535505)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_FOCUS'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P210_ENVIAR_EDITAR'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(45490443894535507)
,p_name=>'DA_GUARDAR_ENVIAR'
,p_event_sequence=>60
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(45490052871535503)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(45490521391535508)
,p_event_id=>wwv_flow_imp.id(45490443894535507)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    apex_debug.error(:P210_DISPONIBLE_EDITAR);',
'    apex_debug.error(:P210_ENVIAR_EDITAR);',
'    apex_debug.error(:P210_INDICADOR_ALERT);',
'',
'',
'    IF to_number(:P210_DISPONIBLE_EDITAR) < to_number(:P210_ENVIAR_EDITAR) THEN',
'        apex_debug.error(''entra if'');',
'        :P210_INDICADOR_ALERT := ''1'';',
'    ELSE',
'        :P210_INDICADOR_ALERT := ''0'';',
'        apex_debug.error(''entra else'');',
'    END IF;',
'',
'    apex_debug.error(:P210_DISPONIBLE_EDITAR);',
'    apex_debug.error(:P210_ENVIAR_EDITAR);',
'    apex_debug.error(:P210_INDICADOR_ALERT);',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;',
''))
,p_attribute_02=>'P210_DISPONIBLE_EDITAR,P210_ENVIAR_EDITAR,P210_INDICADOR_ALERT'
,p_attribute_03=>'P210_DISPONIBLE_EDITAR,P210_ENVIAR_EDITAR,P210_INDICADOR_ALERT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(45490784526535510)
,p_event_id=>wwv_flow_imp.id(45490443894535507)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'La cantidad a enviar no puede ser mayor a la cantidad disponible.'
,p_attribute_02=>'Cantidad a enviar erronea'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P210_INDICADOR_ALERT'
,p_client_condition_expression=>'1'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(45491524175535518)
,p_event_id=>wwv_flow_imp.id(45490443894535507)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    RPPROGUA.pr_editar_coleccion_pedidos( :P210_SEQ_ID_EDITAR, ',
'                                          :P210_ENVIAR_EDITAR);',
'',
'',
'EXCEPTION',
'',
'        WHEN OTHERS THEN',
'            APEX_DEBUG.ERROR(SQLERRM);',
'',
'END;'))
,p_attribute_02=>'P210_SEQ_ID_EDITAR,P210_ENVIAR_EDITAR'
,p_attribute_03=>'P210_SEQ_ID_EDITAR,P210_ENVIAR_EDITAR'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P210_INDICADOR_ALERT'
,p_client_condition_expression=>'0'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(45491079291535513)
,p_event_id=>wwv_flow_imp.id(45490443894535507)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(44836454145897236)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P210_INDICADOR_ALERT'
,p_client_condition_expression=>'0'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(45491139422535514)
,p_event_id=>wwv_flow_imp.id(45490443894535507)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(45025060575017145)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P210_INDICADOR_ALERT'
,p_client_condition_expression=>'0'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(45493449181535537)
,p_name=>'DA_CONFIRMAR_CAMBIOS'
,p_event_sequence=>70
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(44837884478897250)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(47487754296735707)
,p_event_id=>wwv_flow_imp.id(45493449181535537)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    IF ',
'       :P210_COD_SUCURSAL_DIST IS NULL OR',
'       :P210_FECHA_ENTREGA IS NULL',
'    THEN',
'           :P210_INDICADOR_ALERT := ''5'';',
'    ELSE',
'           :P210_INDICADOR_ALERT := ''0'';',
'    END IF;',
'',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'',
'END;',
'',
'',
''))
,p_attribute_02=>'P210_COD_SUCURSAL_DIST,P210_INDICADOR_ALERT,P210_FECHA_ENTREGA'
,p_attribute_03=>'P210_INDICADOR_ALERT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(47487915880735709)
,p_event_id=>wwv_flow_imp.id(45493449181535537)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'Compruebe que los campos requeridos no se encuentren vacios.'
,p_attribute_02=>'CAMPOS VACIOS'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P210_INDICADOR_ALERT'
,p_client_condition_expression=>'5'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(47488115278735711)
,p_event_id=>wwv_flow_imp.id(45493449181535537)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    IF APEX_COLLECTION.COLLECTION_MEMBER_COUNT( p_collection_name => ''CLIENTE_PEDIDOS'') = 0 THEN',
'        IF :P210_INDICADOR_ALERT = ''5'' THEN',
'           :P210_INDICADOR_ALERT := ''5'';',
'        ELSE',
'           :P210_INDICADOR_ALERT := ''6'';',
'        END IF;',
'    ELSE',
'        :P210_INDICADOR_ALERT := ''0'';',
'    END IF;',
'',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'',
'END;',
'',
'',
''))
,p_attribute_02=>'P210_COD_SUCURSAL_DIST,P210_INDICADOR_ALERT,P210_FECHA_ENTREGA'
,p_attribute_03=>'P210_INDICADOR_ALERT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(47488223121735712)
,p_event_id=>wwv_flow_imp.id(45493449181535537)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'No hay datos para procesar.'
,p_attribute_02=>'NO SE PUEDE GUARDAR'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P210_INDICADOR_ALERT'
,p_client_condition_expression=>'6'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(45493621541535539)
,p_event_id=>wwv_flow_imp.id(45493449181535537)
,p_event_result=>'TRUE'
,p_action_sequence=>80
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>unistr('\00BFDesea guardar los cambios?')
,p_attribute_02=>unistr('\00BFDesea guardar los cambios?')
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P210_INDICADOR_ALERT'
,p_client_condition_expression=>'0'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(45493562688535538)
,p_event_id=>wwv_flow_imp.id(45493449181535537)
,p_event_result=>'TRUE'
,p_action_sequence=>90
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_02=>'Y'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P210_INDICADOR_ALERT'
,p_client_condition_expression=>'0'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(47487167461735701)
,p_name=>'DA_CANTIDAD_MAX'
,p_event_sequence=>80
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(45494725185535550)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(47487224909735702)
,p_event_id=>wwv_flow_imp.id(47487167461735701)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    RPPROGUA.pr_editar_col_pedidos_envmax;',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'',
'END;'))
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(47487330190735703)
,p_event_id=>wwv_flow_imp.id(47487167461735701)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(44836454145897236)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(64085164054872816)
,p_name=>'da_cliente'
,p_event_sequence=>90
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P210_COD_CLIENTE'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(64085265666872817)
,p_event_id=>wwv_flow_imp.id(64085164054872816)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P210_NOMBRE'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
' ',
'    select nombre',
'      ',
'      from cc_clientes    c,',
'           personas       p ',
'          ',
'     where c.cod_empresa =:P_COD_EMPRESA',
'       and c.cod_cliente = :P210_cod_cliente',
'       and c.cod_persona = p.cod_persona  '))
,p_attribute_07=>'P_COD_EMPRESA,P210_COD_CLIENTE'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(390609013839583047)
,p_event_id=>wwv_flow_imp.id(64085164054872816)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'null;'
,p_attribute_02=>'P210_COD_CLIENTE'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(108920571623676404)
,p_name=>'da_generados'
,p_event_sequence=>100
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(64087366860872838)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(108920609857676405)
,p_event_id=>wwv_flow_imp.id(108920571623676404)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(64087414848872839)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(108920929545676408)
,p_event_id=>wwv_flow_imp.id(108920571623676404)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'javascript:openModal(''detalle_generado'');',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(650046917065536525)
,p_name=>'New'
,p_event_sequence=>110
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(650047053797536526)
,p_event_id=>wwv_flow_imp.id(650046917065536525)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(64087414848872839)
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(45021327474017108)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'PR_LIMPIAR_CAMPOS'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(45021280411017107)
,p_process_sequence=>20
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_INIT'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'',
'--:P210_COD_CLIENTE := ''889'';',
':P210_TIP_COMPROBANTE:=''FCR'';',
':P210_INDICADOR_REPORTE := ''0'';',
':P210_INDICADOR_ALERT := ''0'';',
'',
':P210_FECHA_DESDE := ''01/01/2020'';',
'',
':P210_FECHA_HASTA := sysdate+180;',
'',
'',
'LIBRERIA_FORMAS.RUTINA_INICIAL(PI_COD_MODULO => :P_COD_MODULO,',
'                               PI_COD_FORMA  => :P210_COD_FORMA,',
'                               PI_NOM_MODULO => :P_COD_MODULO,',
'                               PI_NOM_FORMA  => :P210_NOM_FORMA,',
'            				   PO_NOM_MODULO => :P210_NOM_MODULO,',
'            				   PO_NOM_FORMA  => :P210_NOM_FORMA);',
'',
'-- PERMISO PARA EDITAR UN PEDIDO VENCIDO',
':P210_ENVIA_VENCIDO := busca_permiso (:P_COD_EMPRESA,',
'                                      :P210_COD_FORMA,',
'                                      :P_COD_USUARIO,',
'                                      ''ENVIA_VENCIDO'');',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'',
'END;'))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(45493939493535542)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_GUARDAR_CAMBIOS'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'RPPROGUA.pr_confirmar_accion (      :P_COD_EMPRESA,',
'                                    :P210_COD_CLIENTE,',
'                                    :P210_COD_SUCURSAL_DIST,',
'                                    :P_COD_SUCURSAL,',
'                                    :P210_CLIENTE_RETIRA,',
'                                    :P210_OBSERVACIONES,',
'                                    :P210_FECHA_ENTREGA,',
'                                    :P210_ID_GENERADO);',
'',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Id Generado &P210_ID_GENERADO.'
);
wwv_flow_imp.component_end;
end;
/
