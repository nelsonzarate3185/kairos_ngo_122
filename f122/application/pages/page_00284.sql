prompt --application/pages/page_00284
begin
--   Manifest
--     PAGE: 00284
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
 p_id=>284
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'Carga de Puntos Promo - STCANPUN'
,p_alias=>'CARGA-DE-PUNTOS-PROMO-STCANPUN'
,p_step_title=>'Carga de Puntos Promo '
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function soloNumeros(e){',
'  var key = e.charCode;',
'    return key >= 48 && key <= 57;',
'}',
''))
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.apex-item-wrapper--date-picker-jet .oj-text-field .oj-text-field-container {',
'    height: 32px;',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_last_updated_by=>'NZARATE'
,p_last_upd_yyyymmddhh24miss=>'20240917161006'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(68939790323359517)
,p_plug_name=>'Carga de Puntos Promo'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>990
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(68939841620359518)
,p_plug_name=>'VARIABLES'
,p_parent_plug_id=>wwv_flow_imp.id(68939790323359517)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(68940371461359523)
,p_plug_name=>'CABECERA'
,p_parent_plug_id=>wwv_flow_imp.id(68939790323359517)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(68940493529359524)
,p_plug_name=>'CAB1'
,p_parent_plug_id=>wwv_flow_imp.id(68940371461359523)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>10
,p_plug_grid_column_span=>8
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(68942407523359544)
,p_plug_name=>'Datos de la Promo'
,p_parent_plug_id=>wwv_flow_imp.id(68940371461359523)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>20
,p_plug_new_grid_row=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(69385919472504741)
,p_plug_name=>'Listar Cargas'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>1000
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(70141926058326701)
,p_plug_name=>unistr('PAR\00C1METROS')
,p_parent_plug_id=>wwv_flow_imp.id(69385919472504741)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(70143924831326721)
,p_plug_name=>'PARAMETROS1'
,p_parent_plug_id=>wwv_flow_imp.id(70141926058326701)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(70144016349326722)
,p_plug_name=>'PARAMETROS2'
,p_parent_plug_id=>wwv_flow_imp.id(70141926058326701)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>20
,p_plug_new_grid_row=>false
,p_plug_display_column=>7
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(70144203983326724)
,p_plug_name=>'REPORTE'
,p_parent_plug_id=>wwv_flow_imp.id(69385919472504741)
,p_region_template_options=>'#DEFAULT#:margin-top-sm'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT a.cod_EMPRESA,a.nro_movimiento, v.cod_vendedor, p.nombre,s.nro_promo, ar.descripcion, a.cantidad,',
'       a.puntos, s.puntos puntos_unitarios, fec_CARGA, a.cod_usuario, S.FEC_ALTA, S.FEC_CIERRE, A.NRO_FACTURA, ',
'       AR.COD_ARTICULO, CC.COD_CLIENTE, P1.NOMBRE NOMBRE_CLIENTE,',
'       a.puntos_vales puntos_vale,',
'       CASE WHEN SEGURIDAD_GRANULAR.RETORNA_PERMISO_BOTON(ppage_id    => :APP_PAGE_ID,',
'                                                         papli0100_id => :P_APLI0100_ID,',
'                                                         pcod_empresa => :P_COD_EMPRESA,',
'                                                         pusua0100_id => :P_USUA0100_ID,',
'                                                         pdm_boto     => 2) = 1 THEN',
'                 ''<a href="javascript:$s(''''P284_AUX_REGISTRO'''',''||a.nro_movimiento||'');">''||a.nro_movimiento||''</a>''',
'            ELSE TO_CHAR(a.nro_movimiento)',
'        END nro_mov         ',
'  FROM st_puntos_vendedores A, st_vendedor_promo v, personas p, ST_PUNTOS_PRODUCTOS_PROMO s,st_articulos ar, cc_CLIENTES CC, PERSONAS P1',
' WHERE A.COD_EMPRESA= :P284_COD_EMPRESA',
'   AND (A.FEC_CARGA BETWEEN TO_DATE(:P284_PAR_FEC_DESDE, ''DD/MM/YYYY'') AND TO_DATE(:P284_PAR_FEC_HASTA,''DD/MM/YYYY''))',
'   AND (A.COD_VENDEDOR = :P284_PAR_COD_VENDEDOR OR :P284_PAR_COD_VENDEDOR IS NULL)',
'   AND( A.NRO_PROMO = :P284_PAR_NRO_PROMO OR :P284_PAR_NRO_PROMO IS NULL)',
'   AND v.cod_empresa=a.cod_empresa',
'   AND v.cod_vendedor=a.cod_vendedor',
'   AND v.cod_persona=p.cod_persona',
'   AND s.cod_empresa=a.cod_empresa',
'   AND a.cod_articulo=s.cod_articulo',
'   AND s.nro_promo=a.nro_promo',
'   AND ar.cod_articulo=s.cod_articulo',
'   AND ar.cod_empresa=s.cod_empresa',
'   /*AND a.nro_movimiento=579732*/',
'   AND ( :P284_PAR_COD_RUBRO IS NULL OR ar.cod_rubro = :P284_PAR_COD_RUBRO )',
'   AND ( :P284_PAR_COD_FAMILIA IS NULL OR ar.cod_familia = :P284_PAR_COD_FAMILIA )',
'   AND ( :P284_PAR_COD_MARCA_DES IS NULL OR ar.cod_marca = :P284_PAR_COD_MARCA_DES )',
'   AND ( :P284_PAR_COD_CATEGORIA is null or ar.cod_categoria = :P284_PAR_COD_CATEGORIA)',
'   AND ( :P284_PAR_LINEA_DES IS NULL OR ar.cod_linea = :P284_PAR_LINEA_DES )',
'   AND ( :P284_PAR_COD_ARTICULO IS NULL OR ar.cod_articulo = :P284_PAR_COD_ARTICULO )',
'   --AND ( :p_cod_art_corto IS NULL OR ar.cod_art_corto = :p_cod_art_corto )',
'   AND CC.COD_EMPRESA=V.COD_EMPRESA',
'   AND CC.COD_CLIENTE=V.COD_DISTRIBUIDOR',
'   AND CC.COD_PERSONA=P1.COD_PERSONA',
'   AND (:P284_PAR_COD_CLIENTE IS NULL OR V.cod_DISTRIBUIDOR = :P284_PAR_COD_CLIENTE )',
'   AND :P284_AUX_EJECUTAR_REPORTE = 1',
'ORDER BY a.nro_movimiento',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P284_COD_EMPRESA,P284_PAR_COD_CLIENTE,P284_PAR_COD_ARTICULO,P284_PAR_LINEA_DES,P284_PAR_COD_CATEGORIA, P284_PAR_COD_MARCA_DES,P284_PAR_COD_FAMILIA,P284_PAR_COD_RUBRO,P284_PAR_NRO_PROMO,P284_PAR_COD_VENDEDOR, P284_PAR_FEC_DESDE,P284_PAR_FEC_HASTA'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'REPORTE'
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
 p_id=>wwv_flow_imp.id(70144663151326728)
,p_max_row_count=>'1000000'
,p_no_data_found_message=>'No se han encontrado datos.'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'MARIANABLA'
,p_internal_uid=>70144663151326728
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(70144709097326729)
,p_db_column_name=>'COD_EMPRESA'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Cod Empresa'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(70144824282326730)
,p_db_column_name=>'NRO_MOVIMIENTO'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Nro. '
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(70144947608326731)
,p_db_column_name=>'COD_VENDEDOR'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Vendedor'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(70145077881326732)
,p_db_column_name=>'NOMBRE'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Nombre'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(70145110513326733)
,p_db_column_name=>'NRO_PROMO'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Producto'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(70145231869326734)
,p_db_column_name=>'DESCRIPCION'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>unistr('Descripci\00F3n')
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(70145358637326735)
,p_db_column_name=>'CANTIDAD'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Cantidad'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(70145402334326736)
,p_db_column_name=>'PUNTOS'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Montos'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(70145580163326737)
,p_db_column_name=>'PUNTOS_UNITARIOS'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Monto Unitario'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(70145666798326738)
,p_db_column_name=>'FEC_CARGA'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Fec Carga'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(70145768298326739)
,p_db_column_name=>'COD_USUARIO'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Cod Usuario'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(70145821105326740)
,p_db_column_name=>'FEC_ALTA'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Fecha Inicio'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(70145957968326741)
,p_db_column_name=>'FEC_CIERRE'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Fecha Fin'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(70146052501326742)
,p_db_column_name=>'NRO_FACTURA'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>'Factura'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(70146105505326743)
,p_db_column_name=>'COD_ARTICULO'
,p_display_order=>150
,p_column_identifier=>'O'
,p_column_label=>'Producto'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(70146209577326744)
,p_db_column_name=>'COD_CLIENTE'
,p_display_order=>160
,p_column_identifier=>'P'
,p_column_label=>'Cod Cliente'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(70146341676326745)
,p_db_column_name=>'NOMBRE_CLIENTE'
,p_display_order=>170
,p_column_identifier=>'Q'
,p_column_label=>'Nombre Cliente'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(70146467031326746)
,p_db_column_name=>'PUNTOS_VALE'
,p_display_order=>180
,p_column_identifier=>'R'
,p_column_label=>'Puntos'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(70278869568782449)
,p_db_column_name=>'NRO_MOV'
,p_display_order=>190
,p_column_identifier=>'T'
,p_column_label=>'Nro.'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(70252589252610804)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'702526'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>15
,p_report_columns=>'NRO_MOV:COD_VENDEDOR:NOMBRE:NRO_PROMO:DESCRIPCION:COD_USUARIO:FEC_ALTA:FEC_CIERRE:NRO_FACTURA:CANTIDAD:PUNTOS_UNITARIOS:PUNTOS_VALE:PUNTOS:'
,p_sum_columns_on_break=>'CANTIDAD:PUNTOS_VALE:PUNTOS'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(70144137224326723)
,p_button_sequence=>200
,p_button_plug_id=>wwv_flow_imp.id(70144016349326722)
,p_button_name=>'EJECUTAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--stretch:t-Button--gapTop'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Ejecutar'
,p_warn_on_unsaved_changes=>null
,p_grid_new_row=>'N'
,p_grid_column=>11
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(69382611390504708)
,p_button_sequence=>250
,p_button_plug_id=>wwv_flow_imp.id(68940493529359524)
,p_button_name=>'GENERAR'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--stretch:t-Button--gapTop'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Generar'
,p_button_condition_type=>'NEVER'
,p_grid_new_row=>'N'
,p_grid_column=>11
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(69386212626504744)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(69385919472504741)
,p_button_name=>'VOLVER'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Volver'
,p_button_position=>'EDIT'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(258027718947182542)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(68939790323359517)
,p_button_name=>'Eliminar'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Eliminar'
,p_button_position=>'EDIT'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'u-color-24-bg'
,p_icon_css_classes=>'fa-eraser'
,p_security_scheme=>wwv_flow_imp.id(255764441592110386)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(70276224431782423)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(69385919472504741)
,p_button_name=>'LIMPIAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Limpiar'
,p_button_position=>'EDIT'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(70276677873782427)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(68939790323359517)
,p_button_name=>'LIMPIAR_CARGA'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Limpiar'
,p_button_position=>'EDIT'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(183047119461013032)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(68939790323359517)
,p_button_name=>'Importar'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Importar'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:569:&SESSION.::&DEBUG.:569::'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(183047293351013033)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(68939790323359517)
,p_button_name=>'confirmar'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Guardar'
,p_button_position=>'EDIT'
,p_icon_css_classes=>'fa-save'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(69385536219504737)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_imp.id(68939790323359517)
,p_button_name=>'REPORTE'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Listar Cargas'
,p_button_position=>'EDIT'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(69385610082504738)
,p_button_sequence=>70
,p_button_plug_id=>wwv_flow_imp.id(68939790323359517)
,p_button_name=>unistr('INSERCI\00D3N')
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('Inserci\00F3n')
,p_button_position=>'EDIT'
,p_warn_on_unsaved_changes=>null
,p_button_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(68939941453359519)
,p_name=>'P284_COD_EMPRESA'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(68939841620359518)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(68940062635359520)
,p_name=>'P284_COD_MODULO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(68939841620359518)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(68940109312359521)
,p_name=>'P284_COD_SUCURSAL'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(68939841620359518)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(68940238329359522)
,p_name=>'P284_COD_USUARIO'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(68939841620359518)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(68940589945359525)
,p_name=>'P284_COD_VENDEDOR'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(68940493529359524)
,p_prompt=>'Vendedor'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_VENDEDORES_PUN_STCANPUN'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select p.nombre D, COD_VENDEDOR R, P.COD_PERSONA, I.NUMERO',
'  from st_vendedor_promo v, personas p, IDENT_PERSONAS I',
' where v.cod_empresa=:P_COD_EMPRESA',
'   and v.cod_persona=p.cod_persona',
'   AND  NVL(ACTIVO,''A'')<>''I''',
'   AND I.COD_PERSONA = P.COD_PERSONA',
'   AND I.COD_IDENT IN(''CI'',''RUC'')'))
,p_cSize=>30
,p_colspan=>5
,p_grid_label_column_span=>2
,p_field_template=>wwv_flow_imp.id(40186463825263678)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'Y'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(68940661665359526)
,p_name=>'P284_DESC_VENDEDOR'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(68940493529359524)
,p_prompt=>'&nbsp'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>0
,p_field_template=>wwv_flow_imp.id(40186463825263678)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--large'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(68940789871359527)
,p_name=>'P284_COD_DISTRIBUIDOR_VENDEDOR'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(68940493529359524)
,p_prompt=>'Distribuidor'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_VENDEDORES_PUN_STCANPUN'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select p.nombre D, COD_VENDEDOR R, P.COD_PERSONA, I.NUMERO',
'  from st_vendedor_promo v, personas p, IDENT_PERSONAS I',
' where v.cod_empresa=:P_COD_EMPRESA',
'   and v.cod_persona=p.cod_persona',
'   AND  NVL(ACTIVO,''A'')<>''I''',
'   AND I.COD_PERSONA = P.COD_PERSONA',
'   AND I.COD_IDENT IN(''CI'',''RUC'')'))
,p_cSize=>30
,p_colspan=>5
,p_grid_label_column_span=>2
,p_field_template=>wwv_flow_imp.id(40186463825263678)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(68940872871359528)
,p_name=>'P284_DESC_DISTRIBUIDOR_VEND'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(68940493529359524)
,p_prompt=>'&nbsp'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>0
,p_field_template=>wwv_flow_imp.id(40186463825263678)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--large'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(68940926326359529)
,p_name=>'P284_COD_SUCURSAL_CLIENTE'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(68940493529359524)
,p_prompt=>'Sucursal Dist.'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_SUCURSAL_DIST_STCANPUN'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select p.nombre D, p.direccion, p.telefono, P.cod_SUCURSAL R',
'  from cc_clientes c, BS_SUCURSAL_CLIENTE p',
' where c.cod_empresa=:P_COD_EMPRESA',
'   and c.cod_cliente=:P284_COD_DISTRIBUIDOR_VENDEDOR',
'   and c.cod_persona=p.cod_persona',
'   AND C.COD_EMPRESA=P.COD_EMPRESA'))
,p_lov_cascade_parent_items=>'P284_COD_DISTRIBUIDOR_VENDEDOR'
,p_ajax_items_to_submit=>'P284_COD_DISTRIBUIDOR_VENDEDOR'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>30
,p_colspan=>5
,p_grid_label_column_span=>2
,p_field_template=>wwv_flow_imp.id(40186463825263678)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(68941080158359530)
,p_name=>'P284_DESC_SUCURSAL_CLIENTE'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(68940493529359524)
,p_prompt=>'&nbsp'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>0
,p_field_template=>wwv_flow_imp.id(40186463825263678)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--large'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(68941197389359531)
,p_name=>'P284_NRO_PROMO'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(68940493529359524)
,p_prompt=>unistr('Promo N\00B0')
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_PROMOS_STCANPUN'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select s.descripcion, S.COD_ART_CORTO,  v.cod_articulo, v.puntos, v.fec_cierre, nro_promo,',
'v.puntos_vale ',
'from ST_PUNTOS_PRODUCTOS_PROMO v, st_articulos s',
'where v.cod_emprEsa=:P_COD_EMPRESA',
'and v.cod_empresa=s.cod_emprEsa',
'and v.cod_articulo= s.cod_articulo',
'and v.fec_cierre >to_date(to_char(sysdate,''dd/mm/yyyy''),''dd/mm/yyyy'')',
'and nvl(v.activo,''A'')<>''I'''))
,p_cSize=>30
,p_colspan=>5
,p_grid_label_column_span=>2
,p_field_template=>wwv_flow_imp.id(40186463825263678)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
,p_attribute_08=>'700'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(68941235341359532)
,p_name=>'P284_DESC_PROMO'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(68940493529359524)
,p_prompt=>'&nbsp'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>0
,p_field_template=>wwv_flow_imp.id(40186463825263678)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--large'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(68941386937359533)
,p_name=>'P284_COD_ARTICULO'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(68940493529359524)
,p_prompt=>unistr('Art\00EDculo')
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_ARTICULOS_STCANPUN'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select descripcion D, cod_articulo R,cod_art_corto ',
'  from st_articulos ',
' where cod_empresa = :P_COD_EMPRESA ',
'   AND COD_RUBRO=''PR''',
'order by descripcion'))
,p_cSize=>30
,p_colspan=>5
,p_grid_label_column_span=>2
,p_field_template=>wwv_flow_imp.id(40186463825263678)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(68941443719359534)
,p_name=>'P284_DESCRIPCION'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(68940493529359524)
,p_prompt=>'&nbsp'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>0
,p_field_template=>wwv_flow_imp.id(40186463825263678)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--large'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(68941569987359535)
,p_name=>'P284_CANTIDAD'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(68940493529359524)
,p_prompt=>'Cantidad'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_colspan=>5
,p_grid_label_column_span=>2
,p_field_template=>wwv_flow_imp.id(40186463825263678)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--large'
,p_attribute_03=>'right'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(68941619699359536)
,p_name=>'P284_PUNTOS_VALES'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(68940493529359524)
,p_prompt=>'Puntos'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>2
,p_field_template=>wwv_flow_imp.id(40186463825263678)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--large'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(68941730595359537)
,p_name=>'P284_NRO_FACTURA'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_imp.id(68940493529359524)
,p_prompt=>'Nro. Factura'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_grid_label_column_span=>2
,p_field_template=>wwv_flow_imp.id(40186463825263678)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--large'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(68941824366359538)
,p_name=>'P284_CI_CLIENTE'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_imp.id(68940493529359524)
,p_prompt=>'Documento Cliente'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_colspan=>5
,p_grid_label_column_span=>2
,p_field_template=>wwv_flow_imp.id(40186463825263678)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--large'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(68941957428359539)
,p_name=>'P284_PUNTOS'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_imp.id(68940493529359524)
,p_prompt=>'&nbsp'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>4
,p_grid_label_column_span=>0
,p_field_template=>wwv_flow_imp.id(40186463825263678)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--large'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(68942068383359540)
,p_name=>'P284_NOMBRE_CLIENTE'
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_imp.id(68940493529359524)
,p_prompt=>'Nombre Cliente'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_grid_label_column_span=>2
,p_field_template=>wwv_flow_imp.id(40186463825263678)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--large'
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
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(68942118841359541)
,p_name=>'P284_NRO_MOVIMIENTO'
,p_item_sequence=>220
,p_item_plug_id=>wwv_flow_imp.id(68940493529359524)
,p_prompt=>'Nro. Movimiento'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_colspan=>5
,p_grid_label_column_span=>2
,p_field_template=>wwv_flow_imp.id(40186463825263678)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--large'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(68942231361359542)
,p_name=>'P284_TELEFONO'
,p_item_sequence=>230
,p_item_plug_id=>wwv_flow_imp.id(68940493529359524)
,p_prompt=>unistr('Tel\00E9fono Cliente')
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>2
,p_field_template=>wwv_flow_imp.id(40186463825263678)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--large'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(68942325735359543)
,p_name=>'P284_FEC_CARGA'
,p_item_sequence=>240
,p_item_plug_id=>wwv_flow_imp.id(68940493529359524)
,p_prompt=>'Fecha Canje'
,p_display_as=>'NATIVE_DATE_PICKER_JET'
,p_cSize=>30
,p_tag_css_classes=>'date_inp'
,p_colspan=>5
,p_grid_label_column_span=>2
,p_field_template=>wwv_flow_imp.id(40186463825263678)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--large'
,p_attribute_01=>'N'
,p_attribute_02=>'POPUP'
,p_attribute_03=>'NONE'
,p_attribute_06=>'NONE'
,p_attribute_09=>'N'
,p_attribute_11=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(68943021010359550)
,p_name=>'P284_FEC_ALTA'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(68942407523359544)
,p_prompt=>'Fecha Inicio'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_imp.id(40186463825263678)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--large'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(69381920109504701)
,p_name=>'P284_FEC_CIERRE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(68942407523359544)
,p_prompt=>'Fecha Cierre'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_imp.id(40186463825263678)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--large'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(69382024989504702)
,p_name=>'P284_PUNTOS_PROMO'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(68942407523359544)
,p_prompt=>'Montos'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_imp.id(40186463825263678)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--large'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(69382191900504703)
,p_name=>'P284_PUNTOS_PROMO_VALE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(68942407523359544)
,p_prompt=>'Puntos'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_imp.id(40186463825263678)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--large'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(69382299580504704)
,p_name=>'P284_PUNTOS_ACUMULADO'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(68942407523359544)
,p_prompt=>'Montos Acumulado'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_imp.id(40186463825263678)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--large'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(69382398410504705)
,p_name=>'P284_PUNTOS_VALES_ACUMULADO'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(68942407523359544)
,p_prompt=>'Puntos Acumulado'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_imp.id(40186463825263678)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--large'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(69382499403504706)
,p_name=>'P284_FEC_CANJE'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(68942407523359544)
,p_prompt=>'Fecha Canje'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_imp.id(40186463825263678)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--large'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(69382512141504707)
,p_name=>'P284_CANJEADO'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(68942407523359544)
,p_item_default=>'A'
,p_prompt=>'Canjeado'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_imp.id(40186463825263678)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--large'
,p_attribute_01=>'N'
,p_attribute_02=>'A'
,p_attribute_03=>'I'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(69384587351504727)
,p_name=>'P284_AUX_MSJ'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(68939841620359518)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(70142018243326702)
,p_name=>'P284_PAR_COD_CLIENTE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(70143924831326721)
,p_prompt=>'Cliente'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_CLIENTES_STCANPUN'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select p.nombre D, c.cod_cliente R',
'from cc_clientes c, personas p ',
'where c.cod_empresa = :P_COD_EMPRESA',
'and c.cod_persona = p.cod_persona ',
'and nvl(c.estado,''A'') <> ''I'' ',
'order by 1'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'TODOS'
,p_cSize=>30
,p_colspan=>5
,p_grid_label_column_span=>2
,p_field_template=>wwv_flow_imp.id(40186463825263678)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'Y'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(70142151530326703)
,p_name=>'P284_PAR_DESC_CLIENTE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(70143924831326721)
,p_prompt=>'&nbsp'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>0
,p_field_template=>wwv_flow_imp.id(40186463825263678)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--large'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(70142290478326704)
,p_name=>'P284_PAR_COD_VENDEDOR'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(70143924831326721)
,p_prompt=>'Vendedor'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_VENDEDORES_REP_STCANPUN'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select p.nombre d, COD_VENDEDOR r, P.COD_PERSONA, I.NUMERO',
'  from st_vendedor_promo v, personas p, IDENT_PERSONAS I',
' where v.cod_empresa=:P_COD_EMPRESA',
'   and v.cod_persona=p.cod_persona',
'   and  NVL(ACTIVO,''A'')<>''I''',
'   and I.COD_PERSONA = P.COD_PERSONA',
'   and I.COD_IDENT IN(''CI'',''RUC'')'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'TODOS'
,p_cSize=>30
,p_colspan=>5
,p_grid_label_column_span=>2
,p_field_template=>wwv_flow_imp.id(40186463825263678)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'Y'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(70142386176326705)
,p_name=>'P284_PAR_DESC_VENDEDOR'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(70143924831326721)
,p_prompt=>'&nbsp'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>0
,p_field_template=>wwv_flow_imp.id(40186463825263678)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--large'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(70142449144326706)
,p_name=>'P284_PAR_COD_RUBRO'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(70143924831326721)
,p_prompt=>'Rubro '
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_RUBROS_STCANPUN'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select descripcion D, cod_rubro R',
'  from st_rubro ',
' where cod_empresa = :P_COD_EMPRESA ',
'order by lpad( cod_rubro, 5, '' '' )'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'TODOS'
,p_cSize=>30
,p_colspan=>5
,p_grid_label_column_span=>2
,p_field_template=>wwv_flow_imp.id(40186463825263678)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(70142552353326707)
,p_name=>'P284_PAR_DESC_RUBRO'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(70143924831326721)
,p_prompt=>'&nbsp'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>0
,p_field_template=>wwv_flow_imp.id(40186463825263678)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--large'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(70142615287326708)
,p_name=>'P284_PAR_COD_FAMILIA'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(70143924831326721)
,p_prompt=>'Familia'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_FAMILIAS_STCANPUN'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select descripcion D, cod_familia R',
'  from st_familia ',
'order by 1'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'TODAS'
,p_cSize=>30
,p_colspan=>5
,p_grid_label_column_span=>2
,p_field_template=>wwv_flow_imp.id(40186463825263678)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(70142765207326709)
,p_name=>'P284_PAR_DESC_FAMILIA'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(70143924831326721)
,p_prompt=>'&nbsp'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>0
,p_field_template=>wwv_flow_imp.id(40186463825263678)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--large'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(70142842550326710)
,p_name=>'P284_PAR_COD_MARCA_DES'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(70143924831326721)
,p_prompt=>'Marca'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_MARCAS_STCANPUN'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select cod_marca R, descripcion D',
'  from st_marcas ',
'order by 2'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'TODAS'
,p_cSize=>30
,p_colspan=>5
,p_grid_label_column_span=>2
,p_field_template=>wwv_flow_imp.id(40186463825263678)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(70142905296326711)
,p_name=>'P284_PAR_DESC_MARCA_DES'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(70143924831326721)
,p_prompt=>'&nbsp'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>0
,p_field_template=>wwv_flow_imp.id(40186463825263678)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--large'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(70143003432326712)
,p_name=>'P284_PAR_LINEA_DES'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(70144016349326722)
,p_prompt=>'Linea '
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_LINEAS_STCANPUN'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select l.descripcion D, l.cod_linea R',
'  from st_linea l ',
'order by lpad( l.cod_linea, 5, '' '' )'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'TODAS'
,p_cSize=>30
,p_colspan=>5
,p_grid_label_column_span=>2
,p_field_template=>wwv_flow_imp.id(40186463825263678)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(70143114934326713)
,p_name=>'P284_PAR_DESC_LINEA_DES'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(70144016349326722)
,p_prompt=>'&nbsp'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>0
,p_field_template=>wwv_flow_imp.id(40186463825263678)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--large'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(70143246112326714)
,p_name=>'P284_PAR_COD_CATEGORIA'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(70144016349326722)
,p_prompt=>unistr('Categor\00EDa')
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_CATEGORIAS_STCANPUN'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select descripcion D, cod_categoria R',
'  from st_categorias',
'order by 1 '))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'TODAS'
,p_cSize=>30
,p_colspan=>5
,p_grid_label_column_span=>2
,p_field_template=>wwv_flow_imp.id(40186463825263678)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(70143375430326715)
,p_name=>'P284_PAR_DESC_CATEGORIA'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(70144016349326722)
,p_prompt=>'&nbsp'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>0
,p_field_template=>wwv_flow_imp.id(40186463825263678)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--large'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(70143445690326716)
,p_name=>'P284_PAR_COD_ARTICULO'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(70144016349326722)
,p_prompt=>unistr('Art\00EDculo')
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_ARTICULOS_STCANPUN'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select descripcion D, cod_articulo R,cod_art_corto ',
'  from st_articulos ',
' where cod_empresa = :P_COD_EMPRESA ',
'   AND COD_RUBRO=''PR''',
'order by descripcion'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'TODOS'
,p_cSize=>30
,p_colspan=>5
,p_grid_label_column_span=>2
,p_field_template=>wwv_flow_imp.id(40186463825263678)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(70143594099326717)
,p_name=>'P284_PAR_DESC_ARTICULO'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(70144016349326722)
,p_prompt=>'&nbsp'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>0
,p_field_template=>wwv_flow_imp.id(40186463825263678)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--large'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(70143609062326718)
,p_name=>'P284_PAR_FEC_DESDE'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_imp.id(70144016349326722)
,p_prompt=>'Fecha Alta'
,p_display_as=>'NATIVE_DATE_PICKER_JET'
,p_cSize=>30
,p_colspan=>5
,p_grid_label_column_span=>2
,p_field_template=>wwv_flow_imp.id(40186463825263678)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--large'
,p_attribute_01=>'N'
,p_attribute_02=>'POPUP'
,p_attribute_03=>'NONE'
,p_attribute_06=>'NONE'
,p_attribute_09=>'N'
,p_attribute_11=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(70143707616326719)
,p_name=>'P284_PAR_FEC_HASTA'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_imp.id(70144016349326722)
,p_prompt=>'Fecha Hasta'
,p_display_as=>'NATIVE_DATE_PICKER_JET'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>5
,p_grid_label_column_span=>2
,p_field_template=>wwv_flow_imp.id(40186463825263678)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large'
,p_attribute_01=>'N'
,p_attribute_02=>'POPUP'
,p_attribute_03=>'NONE'
,p_attribute_06=>'NONE'
,p_attribute_09=>'N'
,p_attribute_11=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(70143827691326720)
,p_name=>'P284_PAR_NRO_PROMO'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_imp.id(70144016349326722)
,p_prompt=>'Nro. Promo'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_PROMOS_REP_STCANPUN'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select s.descripcion, S.COD_ART_CORTO,  v.cod_articulo, v.puntos, v.fec_cierre, nro_promo R',
'  from ST_PUNTOS_PRODUCTOS_PROMO v, st_articulos s ',
' where v.cod_emprEsa=:P_COD_EMPRESA',
'   and v.cod_empresa=s.cod_emprEsa',
'   and v.cod_articulo= s.cod_articulo'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_colspan=>5
,p_grid_label_column_span=>2
,p_field_template=>wwv_flow_imp.id(40186463825263678)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
,p_attribute_08=>'700'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(70144388000326725)
,p_name=>'P284_AUX_EJECUTAR_REPORTE'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(70143924831326721)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(70277987556782440)
,p_name=>'P284_AUX_REGISTRO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(70144203983326724)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(69382877194504710)
,p_name=>'DA_COD_VENDEDOR'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P284_COD_VENDEDOR'
,p_condition_element=>'P284_COD_VENDEDOR'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'focusout'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(69382957717504711)
,p_event_id=>wwv_flow_imp.id(69382877194504710)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'STCANPUN.PR_VALIDA_COD_VENDEDOR(PI_COD_EMPRESA                 => :P284_COD_EMPRESA,',
'                                PI_COD_VENDEDOR                => :P284_COD_VENDEDOR,',
'                                PO_COD_DISTRIBUIDOR_VENDEDOR   => :P284_COD_DISTRIBUIDOR_VENDEDOR,',
'                                PO_DESC_DISTRIBUIDOR_VENDEDOR  => :P284_DESC_DISTRIBUIDOR_VEND,',
'                                PO_DESC_VENDEDOR               => :P284_DESC_VENDEDOR);',
'',
'STCANPUN.PR_VALIDA_COD_VENDEDOR1(PI_COD_EMPRESA                 => :P284_COD_EMPRESA,',
'                                 PI_COD_VENDEDOR                => :P284_COD_VENDEDOR,',
'                                 PO_PUNTOS_ACUMULADO            => :P284_PUNTOS_ACUMULADO, ',
'                                 PO_PUNTOS_VALES_ACUMULADO      => :P284_PUNTOS_VALES_ACUMULADO);',
''))
,p_attribute_02=>'P284_COD_VENDEDOR,P284_COD_EMPRESA,P284_COD_VENDEDOR'
,p_attribute_03=>'P284_COD_DISTRIBUIDOR_VENDEDOR,P284_DESC_DISTRIBUIDOR_VEND,P284_DESC_VENDEDOR,P284_PUNTOS_ACUMULADO,P284_PUNTOS_VALES_ACUMULADO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(70277700494782438)
,p_event_id=>wwv_flow_imp.id(69382877194504710)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P284_DESC_VENDEDOR,P284_DESC_DISTRIBUIDOR_VEND'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(69383058067504712)
,p_name=>'DA_COD_DIST_VENDEDOR'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P284_COD_DISTRIBUIDOR_VENDEDOR'
,p_bind_type=>'bind'
,p_bind_event_type=>'focusout'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(69383116436504713)
,p_event_id=>wwv_flow_imp.id(69383058067504712)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF :P284_COD_VENDEDOR IS NOT NULL THEN',
'    STCANPUN.PR_VALIDA_COD_DIST_VEND(PI_COD_EMPRESA                 => :P284_COD_EMPRESA,',
'                                     PI_COD_VENDEDOR                => :P284_COD_VENDEDOR,',
'                                     PO_DESC_VENDEDOR               => :P284_DESC_VENDEDOR);',
'ELSE',
'    :P284_DESC_VENDEDOR := NULL;',
'END IF;               ',
'STCANPUN.PR_VALIDA_COD_VENDEDOR1(PI_COD_EMPRESA                 => :P284_COD_EMPRESA,',
'                                 PI_COD_VENDEDOR                => :P284_COD_VENDEDOR,',
'                                 PO_PUNTOS_ACUMULADO            => :P284_PUNTOS_ACUMULADO, ',
'                                 PO_PUNTOS_VALES_ACUMULADO      => :P284_PUNTOS_VALES_ACUMULADO);           ',
'                                           '))
,p_attribute_02=>'P284_COD_EMPRESA,P284_COD_VENDEDOR'
,p_attribute_03=>'P284_DESC_VENDEDOR,P284_PUNTOS_ACUMULADO,P284_PUNTOS_VALES_ACUMULADO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(69383277482504714)
,p_name=>'DA_COD_SUC_CLIENTE'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P284_COD_SUCURSAL_CLIENTE'
,p_condition_element=>'P284_COD_SUCURSAL_CLIENTE'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'focusout'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(69383319933504715)
,p_event_id=>wwv_flow_imp.id(69383277482504714)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'STCANPUN.PR_COD_SUCURSAL(PI_COD_EMPRESA               => :P284_COD_EMPRESA,',
'                         PI_COD_DISTRIBUIDOR_VENDEDOR => :P284_COD_DISTRIBUIDOR_VENDEDOR,',
'                         PI_COD_SUCURSAL_CLIENTE      => :P284_COD_SUCURSAL_CLIENTE,',
'                         PO_DESC_SUCURSAL_CLIENTE     => :P284_DESC_SUCURSAL_CLIENTE);'))
,p_attribute_02=>'P284_COD_EMPRESA,P284_COD_DISTRIBUIDOR_VENDEDOR,P284_COD_SUCURSAL_CLIENTE'
,p_attribute_03=>'P284_DESC_SUCURSAL_CLIENTE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(69383580993504717)
,p_name=>'DA_NRO_PROMO'
,p_event_sequence=>40
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P284_NRO_PROMO'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(69383691994504718)
,p_event_id=>wwv_flow_imp.id(69383580993504717)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'STCANPUN.PR_VALIDA_NRO_PROMO(PI_COD_EMPRESA               => :P284_COD_EMPRESA,',
'                             PI_NRO_PROMO                 => :P284_NRO_PROMO,',
'                             PO_DESC_PROMO                => :P284_DESC_PROMO, ',
'                             PO_COD_ARTICULO              => :P284_COD_ARTICULO, ',
'                             PO_PUNTOS_PROMO              => :P284_PUNTOS_PROMO, ',
'                             PO_FEC_CIERRE                => :P284_FEC_CIERRE, ',
'                             PO_FEC_ALTA                  => :P284_FEC_ALTA,',
'                             PO_PUNTOS_PROMO_VALE         => :P284_PUNTOS_PROMO_VALE); ',
''))
,p_attribute_02=>'P284_COD_EMPRESA,P284_NRO_PROMO'
,p_attribute_03=>'P284_DESC_PROMO,P284_COD_ARTICULO,P284_PUNTOS_PROMO,P284_FEC_CIERRE,P284_FEC_ALTA,P284_PUNTOS_PROMO_VALE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(69383741592504719)
,p_name=>'DA_COD_ARTICULO'
,p_event_sequence=>50
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P284_COD_ARTICULO'
,p_condition_element=>'P284_COD_ARTICULO'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(69383895772504720)
,p_event_id=>wwv_flow_imp.id(69383741592504719)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'STCANPUN.PR_VALIDA_ARTICULO(PI_COD_EMPRESA   => :P284_COD_EMPRESA,',
'                            PI_COD_ARTICULO  => :P284_COD_ARTICULO,',
'                            PO_DESCRIPCION   => :P284_DESCRIPCION);'))
,p_attribute_02=>'P284_COD_EMPRESA,P284_COD_ARTICULO'
,p_attribute_03=>'P284_DESCRIPCION'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(69383980381504721)
,p_name=>'DA_CANTIDAD'
,p_event_sequence=>60
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P284_CANTIDAD'
,p_condition_element=>'P284_CANTIDAD'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'focusout'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(69384001867504722)
,p_event_id=>wwv_flow_imp.id(69383980381504721)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P284_PUNTOS:=nvl(TO_NUMBER(:P284_PUNTOS_PROMO),0) * nvl(TO_NUMBER(:P284_CANTIDAD),0);',
':P284_PUNTOS_VALES:=nvl(TO_NUMBER(:P284_PUNTOS_PROMO_VALE),0) * nvl(TO_NUMBER(:P284_CANTIDAD),0);',
''))
,p_attribute_02=>'P284_PUNTOS_PROMO,P284_CANTIDAD,P284_PUNTOS_PROMO_VALE'
,p_attribute_03=>'P284_PUNTOS,P284_PUNTOS_VALES'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(69384274296504724)
,p_name=>'DA_NRO_FACTURA'
,p_event_sequence=>70
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P284_NRO_FACTURA'
,p_condition_element=>'P284_NRO_FACTURA'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(69384305619504725)
,p_event_id=>wwv_flow_imp.id(69384274296504724)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF :P284_AUX_REGISTRO IS NULL THEN',
'    --Valida el nro_factura en la carga de un nuevo registro.',
'    :P284_AUX_MSJ := NULL;',
'    :P284_PUNTOS:=nvl(:P284_PUNTOS_PROMO,0) * nvl(:P284_CANTIDAD,0);',
'    STCANPUN.PR_VALIDA_NRO_FACTURA(PI_COD_EMPRESA   => :P284_COD_EMPRESA,',
'                                   PI_COD_VENDEDOR  => :P284_COD_VENDEDOR,',
'                                   PI_NRO_FACTURA   => :P284_NRO_FACTURA,',
'                                   PO_MENSAJE       => :P284_AUX_MSJ);                           ',
'ELSE',
'    --Valida el nro de factura en el caso de se abra un registro desde el reporte. ',
'    DECLARE',
'        VFACTURA VARCHAR(60);',
'    BEGIN',
'        SELECT NRO_FACTURA   ',
'          INTO VFACTURA                                    ',
'          FROM st_puntos_vendedores',
'        WHERE COD_EMPRESA = :P284_COD_EMPRESA',
'          AND NRO_MOVIMIENTO = :P284_AUX_REGISTRO;',
'        IF VFACTURA = :P284_NRO_FACTURA THEN',
'            NULL;',
'        ELSE',
'            :P284_AUX_MSJ := NULL;',
'            :P284_PUNTOS:=nvl(:P284_PUNTOS_PROMO,0) * nvl(:P284_CANTIDAD,0);',
'            STCANPUN.PR_VALIDA_NRO_FACTURA(PI_COD_EMPRESA   => :P284_COD_EMPRESA,',
'                                           PI_COD_VENDEDOR  => :P284_COD_VENDEDOR,',
'                                           PI_NRO_FACTURA   => :P284_NRO_FACTURA,',
'                                           PO_MENSAJE       => :P284_AUX_MSJ);                                        ',
'        END IF;  ',
'    EXCEPTION',
'        WHEN OTHERS THEN',
unistr('            APEX_DEBUG.ERROR(''VALIDACI\00D3N NRO_FACTURA ''||SQLERRM);'),
'    END;                      ',
'END IF;                                   ',
'',
''))
,p_attribute_02=>'P284_NRO_FACTURA,P284_PUNTOS_PROMO,P284_CANTIDAD,P284_AUX_REGISTRO,P284_COD_EMPRESA,P284_COD_VENDEDOR'
,p_attribute_03=>'P284_PUNTOS,P284_AUX_MSJ'
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
 p_id=>wwv_flow_imp.id(69384493174504726)
,p_event_id=>wwv_flow_imp.id(69384274296504724)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'&P284_AUX_MSJ.'
,p_attribute_02=>'Error'
,p_attribute_03=>'warning'
,p_attribute_04=>'fa-warning'
,p_attribute_06=>'Aceptar'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P284_AUX_MSJ'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(69384687717504728)
,p_name=>'DA_SOLO_NUM'
,p_event_sequence=>80
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P284_CANTIDAD'
,p_bind_type=>'bind'
,p_bind_event_type=>'keypress'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(69384746036504729)
,p_event_id=>wwv_flow_imp.id(69384687717504728)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if (!soloNumeros(event)){',
'      event.preventDefault();',
'}',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(69385092091504732)
,p_name=>'DA_CI_CLIENTE'
,p_event_sequence=>90
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P284_CI_CLIENTE'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(69385172754504733)
,p_event_id=>wwv_flow_imp.id(69385092091504732)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'STCANPUN.PR_VALIDA_CI_CLI(PI_CI_CLIENTE      => :P284_CI_CLIENTE,',
'                          PO_NOMBRE_CLIENTE  => :P284_NOMBRE_CLIENTE);'))
,p_attribute_02=>'P284_CI_CLIENTE'
,p_attribute_03=>'P284_NOMBRE_CLIENTE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(69385243680504734)
,p_name=>'DA_TELEFONO'
,p_event_sequence=>100
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P284_TELEFONO'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(69385320937504735)
,p_event_id=>wwv_flow_imp.id(69385243680504734)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'STCANPUN.PR_VALIDA_CI_CLI(PI_CI_CLIENTE      => :P284_CI_CLIENTE,',
'                          PO_NOMBRE_CLIENTE  => :P284_NOMBRE_CLIENTE);'))
,p_attribute_02=>'P284_CI_CLIENTE'
,p_attribute_03=>'P284_NOMBRE_CLIENTE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(69385725487504739)
,p_name=>'DA_STFPMASI'
,p_event_sequence=>110
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(69385610082504738)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(69385802630504740)
,p_event_id=>wwv_flow_imp.id(69385725487504739)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'--  CALL_FORM( ''STFPMASI'', NO_HIDE, NO_REPLACE, NO_QUERY_ONLY );',
'null;'))
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(69386072884504742)
,p_name=>'DA_HIDE_REPORTE'
,p_event_sequence=>120
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(69386164878504743)
,p_event_id=>wwv_flow_imp.id(69386072884504742)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(69385919472504741)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(69386390792504745)
,p_name=>'DA_VOLVER'
,p_event_sequence=>130
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(69386212626504744)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(69386468826504746)
,p_event_id=>wwv_flow_imp.id(69386390792504745)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(69385919472504741)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(69386502565504747)
,p_event_id=>wwv_flow_imp.id(69386390792504745)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(68939790323359517)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(70274408249782405)
,p_event_id=>wwv_flow_imp.id(69386390792504745)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P284_AUX_EJECUTAR_REPORTE'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(69386678068504748)
,p_name=>'DA_REPORTE'
,p_event_sequence=>140
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(69385536219504737)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(69386758186504749)
,p_event_id=>wwv_flow_imp.id(69386678068504748)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(68939790323359517)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(69386879995504750)
,p_event_id=>wwv_flow_imp.id(69386678068504748)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(69385919472504741)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(70144499114326726)
,p_name=>'DA_EJECUTA_REPORTE'
,p_event_sequence=>150
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(70144137224326723)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(70144525381326727)
,p_event_id=>wwv_flow_imp.id(70144499114326726)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P284_AUX_EJECUTAR_REPORTE := 1;',
':P284_AUX_MSJ := NULL;',
'IF :P284_PAR_FEC_DESDE IS NULL OR :P284_PAR_FEC_HASTA IS NULL THEN',
'    :P284_AUX_MSJ := ''Debe seleccionar las fechas de Alta y Hasta.'';',
'END IF;    '))
,p_attribute_02=>'P284_PAR_FEC_DESDE,P284_PAR_FEC_HASTA'
,p_attribute_03=>'P284_AUX_MSJ,P284_AUX_EJECUTAR_REPORTE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(70146694119326748)
,p_event_id=>wwv_flow_imp.id(70144499114326726)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'&P284_AUX_MSJ.'
,p_attribute_02=>unistr('Atenci\00F3n')
,p_attribute_03=>'information'
,p_attribute_06=>'Aceptar'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P284_AUX_MSJ'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(70146597883326747)
,p_event_id=>wwv_flow_imp.id(70144499114326726)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(70144203983326724)
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P284_AUX_MSJ'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(70146723456326749)
,p_name=>'DA_PAR_COD_CLIENTE'
,p_event_sequence=>160
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P284_PAR_COD_CLIENTE'
,p_condition_element=>'P284_PAR_COD_CLIENTE'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(70146871475326750)
,p_event_id=>wwv_flow_imp.id(70146723456326749)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P284_PAR_DESC_CLIENTE := NULL;',
'STCANPUN.PR_DESC_CLIENTE(PI_COD_EMPRESA  => :P284_COD_EMPRESA, ',
'                         PI_COD_CLIENTE  => :P284_PAR_COD_CLIENTE,',
'                         PO_DESC_CLIENTE => :P284_PAR_DESC_CLIENTE);'))
,p_attribute_02=>'P284_COD_EMPRESA,P284_PAR_COD_CLIENTE'
,p_attribute_03=>'P284_PAR_DESC_CLIENTE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(70274068231782401)
,p_event_id=>wwv_flow_imp.id(70146723456326749)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P284_PAR_DESC_CLIENTE'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(70274189531782402)
,p_name=>'DA_PAR_COD_FAMILIA'
,p_event_sequence=>170
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P284_PAR_COD_FAMILIA'
,p_condition_element=>'P284_PAR_COD_FAMILIA'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(70274246723782403)
,p_event_id=>wwv_flow_imp.id(70274189531782402)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P284_PAR_DESC_FAMILIA := NULL;',
'STCANPUN.PR_DESC_FAMILIA(PI_COD_FAMILIA  => :P284_PAR_COD_FAMILIA,',
'                         PO_DESC_FAMILIA => :P284_PAR_DESC_FAMILIA);'))
,p_attribute_02=>'P284_PAR_COD_FAMILIA'
,p_attribute_03=>'P284_PAR_DESC_FAMILIA'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(70274389589782404)
,p_event_id=>wwv_flow_imp.id(70274189531782402)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P284_PAR_DESC_FAMILIA'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(70274526505782406)
,p_name=>'DA_PAR_COD_VENDEDOR'
,p_event_sequence=>180
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P284_PAR_COD_VENDEDOR'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(70274657900782407)
,p_event_id=>wwv_flow_imp.id(70274526505782406)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'STCANPUN.PR_DESC_VENDEDOR(PI_COD_EMPRESA   => :P284_COD_EMPRESA,',
'                          PI_COD_VENDEDOR  => :P284_PAR_COD_VENDEDOR, ',
'                          PO_DESC_VENDEDOR => :P284_PAR_DESC_VENDEDOR);'))
,p_attribute_02=>'P284_COD_EMPRESA,P284_PAR_COD_VENDEDOR'
,p_attribute_03=>'P284_PAR_DESC_VENDEDOR'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(70274765947782408)
,p_name=>'DA_PAR_COD_RUBRO'
,p_event_sequence=>190
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P284_PAR_COD_RUBRO'
,p_condition_element=>'P284_PAR_COD_RUBRO'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(70274865212782409)
,p_event_id=>wwv_flow_imp.id(70274765947782408)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P284_PAR_DESC_RUBRO := NULL;',
'STCANPUN.PR_DESC_RUBRO(PI_COD_EMPRESA   => :P284_COD_EMPRESA,',
'                       PI_COD_RUBRO     => :P284_PAR_COD_RUBRO, ',
'                       PO_DESC_RUBRO    => :P284_PAR_DESC_RUBRO);'))
,p_attribute_02=>'P284_COD_EMPRESA,P284_PAR_COD_RUBRO'
,p_attribute_03=>'P284_PAR_DESC_RUBRO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(70274952773782410)
,p_event_id=>wwv_flow_imp.id(70274765947782408)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P284_PAR_DESC_RUBRO'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(70275001377782411)
,p_name=>'DA_COD_MARCA_DES'
,p_event_sequence=>200
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P284_PAR_COD_MARCA_DES'
,p_condition_element=>'P284_PAR_COD_MARCA_DES'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(70275174036782412)
,p_event_id=>wwv_flow_imp.id(70275001377782411)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P284_PAR_DESC_MARCA_DES := NULL;',
'STCANPUN.PR_DESC_MARCA_DES(PI_COD_MARCA_DES  => :P284_PAR_COD_MARCA_DES, ',
'                           PO_DESC_MARCA_DES => :P284_PAR_DESC_MARCA_DES);'))
,p_attribute_02=>'P284_PAR_COD_MARCA_DES'
,p_attribute_03=>'P284_PAR_DESC_MARCA_DES'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(70275233113782413)
,p_event_id=>wwv_flow_imp.id(70275001377782411)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>':P284_PAR_DESC_MARCA_DES := NULL;'
,p_attribute_03=>'P284_PAR_DESC_MARCA_DES'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(70275336644782414)
,p_name=>'DA_LINEA_DES'
,p_event_sequence=>210
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P284_PAR_LINEA_DES'
,p_condition_element=>'P284_PAR_LINEA_DES'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(70275429985782415)
,p_event_id=>wwv_flow_imp.id(70275336644782414)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P284_PAR_DESC_LINEA_DES := NULL;',
'STCANPUN.PR_DESC_LINEA_DES(PI_COD_LINEA_DES  => :P284_PAR_LINEA_DES, ',
'                           PO_DESC_LINEA_DES => :P284_PAR_DESC_LINEA_DES);'))
,p_attribute_02=>'P284_PAR_LINEA_DES'
,p_attribute_03=>'P284_PAR_DESC_LINEA_DES'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(70275560430782416)
,p_event_id=>wwv_flow_imp.id(70275336644782414)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>':P284_PAR_DESC_LINEA_DES := NULL;'
,p_attribute_03=>'P284_PAR_DESC_LINEA_DES'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(70275609820782417)
,p_name=>'DA_PAR_COD_CATEGORIA'
,p_event_sequence=>220
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P284_PAR_COD_CATEGORIA'
,p_condition_element=>'P284_PAR_COD_CATEGORIA'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(70275792531782418)
,p_event_id=>wwv_flow_imp.id(70275609820782417)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P284_PAR_DESC_CATEGORIA := NULL;',
'STCANPUN.PR_DESC_CATEGORIA(PI_COD_CATEGORIA  => :P284_PAR_COD_CATEGORIA, ',
'                           PO_DESC_CATEGORIA => :P284_PAR_DESC_CATEGORIA);'))
,p_attribute_02=>'P284_PAR_COD_CATEGORIA'
,p_attribute_03=>'P284_PAR_DESC_CATEGORIA'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(70275896021782419)
,p_event_id=>wwv_flow_imp.id(70275609820782417)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P284_PAR_DESC_CATEGORIA'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(70275923598782420)
,p_name=>'DA_PAR_COD_ARTICULO'
,p_event_sequence=>230
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P284_PAR_COD_ARTICULO'
,p_condition_element=>'P284_PAR_COD_ARTICULO'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(70276067432782421)
,p_event_id=>wwv_flow_imp.id(70275923598782420)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P284_PAR_DESC_ARTICULO := NULL;',
'STCANPUN.PR_DESC_ARTICULO(PI_COD_EMPRESA   => :P284_COD_EMPRESA,',
'                          PI_COD_ARTICULO  => :P284_PAR_COD_ARTICULO,',
'                          PO_DESC_ARTICULO => :P284_PAR_DESC_ARTICULO);'))
,p_attribute_02=>'P284_COD_EMPRESA,P284_PAR_COD_ARTICULO'
,p_attribute_03=>'P284_PAR_DESC_ARTICULO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(70276165471782422)
,p_event_id=>wwv_flow_imp.id(70275923598782420)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P284_PAR_DESC_ARTICULO'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(70276330069782424)
,p_name=>'DA_LIMPIAR'
,p_event_sequence=>240
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(70276224431782423)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(70276477202782425)
,p_event_id=>wwv_flow_imp.id(70276330069782424)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P284_PAR_COD_CLIENTE,P284_PAR_COD_VENDEDOR,P284_PAR_COD_RUBRO,P284_PAR_COD_FAMILIA,P284_PAR_COD_MARCA_DES,P284_PAR_LINEA_DES,P284_PAR_COD_CATEGORIA,P284_PAR_COD_ARTICULO,P284_PAR_FEC_DESDE,P284_PAR_FEC_HASTA,P284_PAR_NRO_PROMO,P284_AUX_EJECUTAR_REPOR'
||'TE,P284_AUX_REGISTRO'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(70277080633782431)
,p_event_id=>wwv_flow_imp.id(70276330069782424)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(70144203983326724)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(70276753779782428)
,p_name=>'DA_LIMPIAR_CARGA'
,p_event_sequence=>250
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(70276677873782427)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(70276853164782429)
,p_event_id=>wwv_flow_imp.id(70276753779782428)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P284_COD_VENDEDOR,P284_DESC_VENDEDOR,P284_COD_DISTRIBUIDOR_VENDEDOR,P284_DESC_DISTRIBUIDOR_VEND,P284_COD_SUCURSAL_CLIENTE,P284_DESC_SUCURSAL_CLIENTE,P284_NRO_PROMO,P284_COD_ARTICULO,P284_DESCRIPCION,P284_CANTIDAD,P284_PUNTOS_VALES,P284_NRO_FACTURA,P2'
||'84_CI_CLIENTE,P284_PUNTOS,P284_NOMBRE_CLIENTE,P284_NRO_MOVIMIENTO,P284_TELEFONO,P284_FEC_CARGA,P284_FEC_ALTA,P284_FEC_CIERRE,P284_PUNTOS_PROMO,P284_PUNTOS_PROMO_VALE,P284_PUNTOS_ACUMULADO,P284_PUNTOS_VALES_ACUMULADO,P284_CANJEADO,P284_FEC_CANJE,P284_'
||'AUX_REGISTRO'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(70277683272782437)
,p_event_id=>wwv_flow_imp.id(70276753779782428)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P284_CANJEADO := ''A'';',
':P284_FEC_CARGA := SYSDATE;'))
,p_attribute_03=>'P284_FEC_CARGA,P284_CANJEADO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(70278033615782441)
,p_name=>'DA_BUSCA_REGISTRO'
,p_event_sequence=>260
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P284_AUX_REGISTRO'
,p_condition_element=>'P284_AUX_REGISTRO'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(70278162315782442)
,p_event_id=>wwv_flow_imp.id(70278033615782441)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'STCANPUN.PR_BUSCA_PROMO(PI_COD_EMPRESA                  => :P284_COD_EMPRESA,',
'                        PI_NRO_MOVIMIENTO               => :P284_AUX_REGISTRO,',
'                        PO_FEC_CARGA                    => :P284_FEC_CARGA,',
'                        PO_COD_ARTICULO                 => :P284_COD_ARTICULO,',
'                        PO_CANTIDAD                     => :P284_CANTIDAD,',
'                        PO_PUNTOS                       => :P284_PUNTOS,',
'                        PO_CANJEADO                     => :P284_CANJEADO,',
'                        PO_FEC_CANJE                    => :P284_FEC_CANJE,',
'                        PO_COD_VENDEDOR                 => :P284_COD_VENDEDOR,',
'                        PO_NRO_PROMO                    => :P284_NRO_PROMO,',
'                        PO_FEC_ALTA                     => :P284_FEC_ALTA,',
'                        PO_NRO_FACTURA                  => :P284_NRO_FACTURA,',
'                        PO_CI_CLIENTE                   => :P284_CI_CLIENTE,',
'                        PO_NOMBRE_CLIENTE               => :P284_NOMBRE_CLIENTE,',
'                        PO_TELEFONO                     => :P284_TELEFONO,',
'                        PO_PUNTOS_VALES                 => :P284_PUNTOS_VALES,',
'                        PO_COD_DISTRIBUIDOR_VENDEDOR    => :P284_COD_DISTRIBUIDOR_VENDEDOR,',
'                        PO_COD_SUCURSAL_CLIENTE         => :P284_COD_SUCURSAL_CLIENTE,',
'                        PO_DESC_PROMO                   => :P284_DESC_PROMO,',
'                        PO_PUNTOS_PROMO                 => :P284_PUNTOS_PROMO, ',
'                        PO_FEC_CIERRE                   => :P284_FEC_CIERRE,',
'                        PO_PUNTOS_PROMO_VALE            => :P284_PUNTOS_PROMO_VALE,',
'                        PO_DESCRIPCION                  => :P284_DESCRIPCION,',
'                        PO_DESC_VENDEDOR                => :P284_DESC_VENDEDOR,',
'                        PO_DESC_SUCURSAL_CLIENTE        => :P284_DESC_SUCURSAL_CLIENTE,',
'                        PO_DESC_DISTRIBUIDOR_VENDEDOR   => :P284_DESC_DISTRIBUIDOR_VEND,',
'                        PO_NRO_MOVIMIENTO               => :P284_NRO_MOVIMIENTO);                   ',
''))
,p_attribute_02=>'P284_AUX_REGISTRO,P284_COD_EMPRESA'
,p_attribute_03=>'P284_NRO_MOVIMIENTO,P284_DESC_DISTRIBUIDOR_VEND,P284_FEC_CARGA,P284_COD_ARTICULO,P284_CANTIDAD,P284_PUNTOS,P284_CANJEADO,P284_FEC_CANJE,P284_COD_VENDEDOR,P284_NRO_PROMO,P284_FEC_ALTA,P284_NRO_FACTURA,P284_CI_CLIENTE,P284_NOMBRE_CLIENTE,P284_TELEFONO,'
||'P284_PUNTOS_VALES,P284_COD_DISTRIBUIDOR_VENDEDOR,P284_COD_SUCURSAL_CLIENTE,P284_DESC_PROMO,P284_PUNTOS_PROMO, P284_FEC_CIERRE,P284_PUNTOS_PROMO_VALE,P284_DESCRIPCION,P284_DESC_VENDEDOR,P284_DESC_SUCURSAL_CLIENTE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(70278632833782447)
,p_event_id=>wwv_flow_imp.id(70278033615782441)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'document.getElementById(''P284_NRO_MOVIMIENTO'').readOnly = true;'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(70278351284782444)
,p_event_id=>wwv_flow_imp.id(70278033615782441)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(69385919472504741)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(70278422868782445)
,p_event_id=>wwv_flow_imp.id(70278033615782441)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(68939790323359517)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(258027828420182543)
,p_name=>'da_eliminar_registro'
,p_event_sequence=>270
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(258027718947182542)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(258027976394182544)
,p_event_id=>wwv_flow_imp.id(258027828420182543)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>'Esta seguro de eliminar el registro &P284_AUX_REGISTRO. ?'
,p_attribute_02=>'Eliminar'
,p_attribute_03=>'warning'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(258028065118182545)
,p_event_id=>wwv_flow_imp.id(258027828420182543)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'delete st_puntos_vendedores where nro_movimiento=:P284_AUX_REGISTRO;'
,p_attribute_02=>'P284_AUX_REGISTRO'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(258028117052182546)
,p_event_id=>wwv_flow_imp.id(258027828420182543)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_02=>'Y'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(69382745491504709)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_INIT'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P_COD_MODULO := ''ST'';',
':P284_COD_USUARIO := NVL(:P_COD_USUARIO, :APP_USER);',
':P284_COD_EMPRESA := NVL(:P_COD_EMPRESA, ''1'');',
':P284_COD_MODULO := :P_COD_MODULO;',
':P284_COD_SUCURSAL := :P_COD_SUCURSAL;',
'',
':P284_FEC_CARGA:=sysdate;',
'',
':P284_AUX_EJECUTAR_REPORTE := 2;',
'   APEX_COLLECTION.CREATE_OR_TRUNCATE_COLLECTION(p_collection_name => ''FV_PUNTOS_PRODUCTOS'');'))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(69385483713504736)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_GENERAR'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF :P284_NRO_PROMO IS NULL THEN',
'    :P284_NRO_PROMO := STCANPUN.FN_NRO_PROMO(PI_COD_EMPRESA  => :P284_COD_EMPRESA);',
'END IF;    ',
'',
'STCANPUN.PR_GENERAR(PI_COD_EMPRESA                 => :P284_COD_EMPRESA,                                        ',
'                    PI_NRO_MOVIMIENTO              => :P284_AUX_REGISTRO,',
'                    PO_NRO_MOVIMIENTO              => :P284_NRO_MOVIMIENTO,',
'                    PI_FEC_CARGA                   => TRUNC(SYSDATE),',
'                    PI_COD_ARTICULO                => :P284_COD_ARTICULO,                     ',
'                    PI_CANTIDAD                    => TO_NUMBER(:P284_CANTIDAD),',
'                    PI_PUNTOS                      => TO_NUMBER(:P284_PUNTOS),',
'                    PI_CANJEADO                    => :P284_CANJEADO,',
'                    PI_FEC_CANJE                   => TO_DATE(:P284_FEC_CANJE,''DD/MM/YYYY''),',
'                    PI_COD_VENDEDOR                => :P284_COD_VENDEDOR,',
'                    PI_NRO_PROMO                   => :P284_NRO_PROMO,',
'                    PI_FEC_ALTA                    => TRUNC(SYSDATE),',
'                    PI_NRO_FACTURA                 => :P284_NRO_FACTURA,    ',
'                    PI_CI_CLIENTE                  => :P284_CI_CLIENTE,',
'                    PI_NOMBRE_CLIENTE              => :P284_NOMBRE_CLIENTE,',
'                    PI_TELEFONO                    => :P284_TELEFONO,',
'                    PI_PUNTOS_VALES                => TO_NUMBER(:P284_PUNTOS_VALES),',
'                    PI_COD_SUCURSAL_CLIENTE        => :P284_COD_SUCURSAL_CLIENTE,',
'                    PI_COD_DISTRIBUIDOR_VENDEDOR   => :P284_COD_DISTRIBUIDOR_VENDEDOR);'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(183047293351013033)
,p_process_success_message=>unistr('Transacci\00F3n nro. &P284_NRO_MOVIMIENTO. completa.')
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(258028298682182547)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_GENERAR_1'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF :P284_NRO_PROMO IS NULL THEN',
'    :P284_NRO_PROMO := STCANPUN.FN_NRO_PROMO(PI_COD_EMPRESA  => :P284_COD_EMPRESA);',
'END IF;    ',
'',
'/*STCANPUN.PR_GENERAR(PI_COD_EMPRESA                 => :P284_COD_EMPRESA,                                        ',
'                    PI_NRO_MOVIMIENTO              => :P284_AUX_REGISTRO,',
'                    PO_NRO_MOVIMIENTO              => :P284_NRO_MOVIMIENTO,',
'                    PI_FEC_CARGA                   => TRUNC(SYSDATE),',
'                    PI_COD_ARTICULO                => :P284_COD_ARTICULO,                     ',
'                    PI_CANTIDAD                    => TO_NUMBER(:P284_CANTIDAD),',
'                    PI_PUNTOS                      => TO_NUMBER(:P284_PUNTOS),',
'                    PI_CANJEADO                    => :P284_CANJEADO,',
'                    PI_FEC_CANJE                   => TO_DATE(:P284_FEC_CANJE,''DD/MM/YYYY''),',
'                    PI_COD_VENDEDOR                => :P284_COD_VENDEDOR,',
'                    PI_NRO_PROMO                   => :P284_NRO_PROMO,',
'                    PI_FEC_ALTA                    => TRUNC(SYSDATE),',
'                    PI_NRO_FACTURA                 => :P284_NRO_FACTURA,    ',
'                    PI_CI_CLIENTE                  => :P284_CI_CLIENTE,',
'                    PI_NOMBRE_CLIENTE              => :P284_NOMBRE_CLIENTE,',
'                    PI_TELEFONO                    => :P284_TELEFONO,',
'                    PI_PUNTOS_VALES                => TO_NUMBER(:P284_PUNTOS_VALES),',
'                    PI_COD_SUCURSAL_CLIENTE        => :P284_COD_SUCURSAL_CLIENTE,',
'                    PI_COD_DISTRIBUIDOR_VENDEDOR   => :P284_COD_DISTRIBUIDOR_VENDEDOR);*/'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(69382611390504708)
,p_process_success_message=>unistr('Transacci\00F3n nro. &P284_NRO_MOVIMIENTO. completa.')
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
 p_id=>wwv_flow_imp.id(70276955832782430)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'CLEAR'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(183047388757013034)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'guardar'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'vnro_vale varchar2(500);',
'vnro_movimiento NUMBER;',
'varticulo VARCHAR2(600);',
'vcod_articulo VARCHAR2(600);',
'vpuntos NUMBER;',
'vpuntos_vales NUMBER;',
'vfec_alta DATE;',
'vCOD_DISTRIBUIDOR_VENDEDOR VARCHAR2(600);',
'vcod_vendedor  VARCHAR2(600);',
'',
'begin',
'  DECLARE',
'    CURSOR CCAB IS',
'      select seq_id,',
'             C001   cod_art_corto,',
'             C002   cedula,',
'             C003   cantidad,',
'             C004   nro_factura,',
'             C005   fecha_factura,',
'             C006   ci_cliente,',
'             C007   nombre_cliente,',
'             C008   garantia',
'        from apex_collections p',
'       where collection_name = ''FV_PUNTOS_PRODUCTOS''',
'       order by 1 asc;',
'       vnro_promo number;',
'',
'  BEGIN',
'    FOR X IN CCAB LOOP',
'      BEGIN',
'       begin',
'		  select max(nro_movimiento)',
'		    into vnro_movimiento',
'		    from st_puntos_vendedores;',
'    end; ',
'    vnro_movimiento:=nvl(vnro_movimiento,0)+1;',
'varticulo:=  INV.f_busca_articulo(:P_cod_empresa,',
'	                             													   	  							 ltrim(rtrim(x.cod_art_corto)),',
'	                             														   	  						 X.ci_cliente);',
'select max(nro_promo)',
'    into vnro_promo',
'	  from ST_PUNTOS_PRODUCTOS_PROMO',
'	 where cod_empresa     = :p_cod_empresa',
'	   and cod_articulo    = varticulo',
'	   and fec_cierre      > TRUNC(sysdate )',
'	   and nvl(activo,''A'')<>''I'';',
'',
'     vnro_promo:=nvl(vnro_promo,0)+1;',
' begin',
'	            select puntos,',
'							       fec_alta,',
'							       puntos_vale',
'							  into vpuntos,',
'							       vfec_alta,',
'							       vpuntos_vales',
'							  from st_puntos_productos_promo',
'							 where cod_empresa = :P_cod_empresa',
'							   and nro_promo = vnro_promo;',
'	          exception',
'	          	when others then',
'	          	  Vpuntos := 0;',
'                vpuntos_vales:=null;',
'	          	  Vfec_alta := null;',
'	          end;',
'',
'',
'begin',
'		select v.cod_distribuidor,',
'		       v.cod_vendedor',
'		  into vCOD_DISTRIBUIDOR_VENDEDOR,',
'		       vcod_vendedor',
'		  from st_vendedor_promo v, ',
'		       personas p,',
'		       ident_personas i',
'		 where v.cod_empresa = :p_cod_empresa',
'		   and v.cod_persona = p.cod_persona',
'		   and p.cod_persona = i.cod_persona',
'		   and i.numero      = X.cedula',
'		   and NVL(ACTIVO,''A'')<>''I'';',
'	exception',
'		when others then ',
'		  ',
'		  vCOD_DISTRIBUIDOR_VENDEDOR := null;',
'     raise_application_error(-20000, SQLERRM || '' noi existe el vendedor con la cedula  '' ||x.cedula);',
'         ',
'	end;',
'',
'     /*   insert into INV.st_puntos_vendedores',
'          (COD_EMPRESA,',
'           nro_movimiento,',
'           cod_articulo,',
'           cantidad,',
'           nro_promo,',
'           cod_vendedor,',
'           COD_DISTRIBUIDOR_VENDEDOR,',
'           nro_factura,           ',
'           fecha_factura,',
'           ci_cliente,',
'           nro_garantia,',
'           fec_carga,',
'           cod_usuario,',
'           puntos,',
'							       fec_alta,',
'							       puntos_vales)',
'        values',
'          (:P_COD_EMPRESA,',
'           vnro_movimiento,',
'           varticulo,',
'           x.cantidad,',
'            vnro_promo,',
'            vcod_vendedor,',
'            vCOD_DISTRIBUIDOR_VENDEDOR,',
'            X.NRO_fACTURA,',
'            NULL,',
'           X.ci_cliente,',
'           X.garantia,',
'           TRUNC(SYSDATE),',
'           :P_COD_USUARIO,',
'           Vpuntos,',
'							       VFec_alta,',
'							       Vpuntos_vales',
'           ',
'           );*/',
'           ',
'         commit;',
'      ',
'      EXCEPTION',
'        WHEN OTHERS THEN',
'          raise_application_error(-20000, SQLERRM || '' ERROR '' ||X.COD_ART_CORTO);',
'           apex_collection.create_or_truncate_collection(p_collection_name => ''FV_PUNTOS_PRODUCTOS'');',
'      END;',
'      COMMIT;',
'      varticulo:=null;',
'      vCOD_DISTRIBUIDOR_VENDEDOR:=null;',
'		       vcod_vendedor:=null;',
'    END LOOP;',
'       apex_collection.create_or_truncate_collection(p_collection_name => ''FV_PUNTOS_PRODUCTOS'');',
'  EXCEPTION',
'    WHEN OTHERS THEN',
'      raise_application_error(-20000, SQLERRM || '' ERROR 12 '' );',
'           apex_collection.create_or_truncate_collection(p_collection_name => ''FV_PUNTOS_PRODUCTOS'');',
'  END;',
'end;',
' '))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_type=>'NEVER'
,p_process_success_message=>'Procesado Correctamente'
);
wwv_flow_imp.component_end;
end;
/
