prompt --application/pages/page_00461
begin
--   Manifest
--     PAGE: 00461
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
 p_id=>461
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'Pedidos de Compras - CPPRPECM'
,p_alias=>'PEDIDOS-DE-COMPRAS'
,p_step_title=>'Pedidos de Compras'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function soloNumeros(e){',
'  var key = e.charCode;',
'    return key >= 48 && key <= 57;',
'}',
'',
'function imprimirReporteCPPRPECM(p_cod_empresa, p_cod_usuario, p_nro_comprobante,p_sin_precios){',
'   var vURL = ''https://ngosaeca.com.py/reportes/rest_v2/reports/reports/CPPRPECM.pdf?''',
'            + ''P_COD_EMPRESA='' + p_cod_empresa ',
'            + ''&P_COD_USUARIO='' + p_cod_usuario',
'            + ''&P_NRO_COMPROBANTE=''+ p_nro_comprobante',
'            + ''&P_SIN_PRECIOS='' + p_sin_precios',
'            +''&j_username=jasperadmin&j_password=jasperadmin'';',
'',
'    console.log(vURL);',
'    window.open(unescape(vURL.replace(/&amp;/g,''g'')),''_blank'');',
'}'))
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#BT_RECHAZAR, ',
'#BT_REPORTE, ',
'#BT_EMAIL, ',
'#BT_PROCESAR, ',
'#BT_APROBAR, ',
'#BT_ANULAR {',
'        padding-left: 15px;',
'        padding-right: 15px;',
'        margin-top: 15px;',
'        display: block;',
'        margin-left: auto;',
'        margin-right: auto;',
'        width: 78px;',
'    } '))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_last_updated_by=>'CHARBA'
,p_last_upd_yyyymmddhh24miss=>'20240909112346'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(135827907137788801)
,p_plug_name=>'Cabecera'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>990
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(135829117725788813)
,p_plug_name=>'R1'
,p_parent_plug_id=>wwv_flow_imp.id(135827907137788801)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--removeHeader js-removeLandmark:t-Region--noBorder:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>10
,p_plug_grid_column_span=>3
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(135829200054788814)
,p_plug_name=>'R2'
,p_parent_plug_id=>wwv_flow_imp.id(135827907137788801)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--removeHeader js-removeLandmark:t-Region--noBorder:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>20
,p_plug_new_grid_row=>false
,p_plug_grid_column_span=>6
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(135829363296788815)
,p_plug_name=>'R3'
,p_parent_plug_id=>wwv_flow_imp.id(135827907137788801)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--removeHeader js-removeLandmark:t-Region--noBorder:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>30
,p_plug_new_grid_row=>false
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(135828000775788802)
,p_plug_name=>unistr('Art\00EDculos')
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>1000
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT  SEQ_ID,',
'        C001 COD_EMPRESA,',
'        C002 TIPO_PEDIDO,',
'        C003 NRO_PEDIDO,',
'        C004 COD_ARTICULO,',
'        C005 DESC_ARTICULO,',
'        C006 COD_UNIDAD_MEDIDA,',
'        C007 DESC_UNIDAD_MEDIDA,',
'        C008 CANTIDAD,',
'        C009 CANTIDAD_UB,',
'        C010 OBSERVACION,',
'        C011 R_ID,',
'        NULL EDITAR,',
'        NULL ELIMINAR',
'FROM APEX_COLLECTIONS',
'WHERE COLLECTION_NAME = ''COL_DET_CPPRPECM''',
'AND NVL(C020,''N'') <> ''D'';',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>unistr('Art\00EDculos')
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
 p_id=>wwv_flow_imp.id(135831108266788833)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_finder_drop_down=>'N'
,p_show_actions_menu=>'N'
,p_report_list_mode=>'NONE'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_enable_mail_download=>'Y'
,p_owner=>'AIBANEZ'
,p_internal_uid=>135831108266788833
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(135831211686788834)
,p_db_column_name=>'COD_ARTICULO'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>unistr('Art\00EDculo')
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_column_alignment=>'CENTER'
,p_rpt_named_lov=>wwv_flow_imp.id(139741380904679862)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(135831389362788835)
,p_db_column_name=>'DESC_ARTICULO'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>unistr('Descripci\00F3n del Art\00EDculo')
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(135831490899788836)
,p_db_column_name=>'COD_UNIDAD_MEDIDA'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Unidad de Medida'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(135831717571788839)
,p_db_column_name=>'OBSERVACION'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Observacion'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(131401294087803841)
,p_db_column_name=>'SEQ_ID'
,p_display_order=>70
,p_column_identifier=>'I'
,p_column_label=>'Seq Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(131401365407803842)
,p_db_column_name=>'COD_EMPRESA'
,p_display_order=>80
,p_column_identifier=>'J'
,p_column_label=>'Cod Empresa'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(131401455505803843)
,p_db_column_name=>'TIPO_PEDIDO'
,p_display_order=>90
,p_column_identifier=>'K'
,p_column_label=>'Tipo Pedido'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(131401526468803844)
,p_db_column_name=>'NRO_PEDIDO'
,p_display_order=>100
,p_column_identifier=>'L'
,p_column_label=>'Nro Pedido'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(131401648473803845)
,p_db_column_name=>'DESC_UNIDAD_MEDIDA'
,p_display_order=>110
,p_column_identifier=>'M'
,p_column_label=>'Unidad de Medida'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_rpt_named_lov=>wwv_flow_imp.id(139845743490037094)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(131401775895803846)
,p_db_column_name=>'CANTIDAD'
,p_display_order=>120
,p_column_identifier=>'N'
,p_column_label=>'Cantidad'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(131401863087803847)
,p_db_column_name=>'CANTIDAD_UB'
,p_display_order=>130
,p_column_identifier=>'O'
,p_column_label=>'Cantidad Ub'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(131401973244803848)
,p_db_column_name=>'R_ID'
,p_display_order=>140
,p_column_identifier=>'P'
,p_column_label=>'R Id'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(131402098119803849)
,p_db_column_name=>'EDITAR'
,p_display_order=>150
,p_column_identifier=>'Q'
,p_column_label=>'&nbsp'
,p_column_link=>'javascript:$s(''P461_EDITAR'',''#SEQ_ID#'');'
,p_column_linktext=>'<span class="fa fa-edit" aria-hidden="true"></span>'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_display_condition=>'P461_ESTADO'
,p_display_condition2=>'P'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(137670724545319401)
,p_db_column_name=>'ELIMINAR'
,p_display_order=>160
,p_column_identifier=>'R'
,p_column_label=>'&nbsp'
,p_column_link=>'javascript:$s(''P461_ELIMINAR'' ,''#SEQ_ID#'');'
,p_column_linktext=>'<span class="fa fa-trash-o" aria-hidden="true"></span>'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_display_condition=>'P461_ESTADO'
,p_display_condition2=>'P'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(135978320332439646)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1359784'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>5
,p_report_columns=>'EDITAR:NRO_PEDIDO:COD_ARTICULO:COD_UNIDAD_MEDIDA:CANTIDAD:OBSERVACION:ELIMINAR:'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(135832113139788843)
,p_plug_name=>unistr('Datos de inserci\00F3n')
,p_parent_plug_id=>wwv_flow_imp.id(135828000775788802)
,p_region_template_options=>'#DEFAULT#:t-Region--noBorder:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(135832430239788846)
,p_plug_name=>unistr('Datos de actualizaci\00F3n')
,p_parent_plug_id=>wwv_flow_imp.id(135828000775788802)
,p_region_template_options=>'#DEFAULT#:t-Region--noBorder:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>30
,p_plug_new_grid_row=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(136901504747869601)
,p_plug_name=>'Email'
,p_region_template_options=>'#DEFAULT#:js-dialog-size480x320'
,p_plug_template=>wwv_flow_imp.id(40117728043263659)
,p_plug_display_sequence=>1010
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(136902794235869613)
,p_plug_name=>'Editar/Agregar'
,p_region_template_options=>'#DEFAULT#:js-dialog-size600x400'
,p_plug_template=>wwv_flow_imp.id(40117728043263659)
,p_plug_display_sequence=>1020
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(164914059886155927)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(135829117725788813)
,p_button_name=>'BT_NRO_PED'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187078917263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Numero Nuevo'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-clipboard-new'
,p_button_cattributes=>'style="margin-top:15px;"'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
,p_grid_column_span=>2
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(135830648149788828)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(135829363296788815)
,p_button_name=>'BT_RECHAZAR'
,p_button_static_id=>'BT_RECHAZAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Rechazar'
,p_warn_on_unsaved_changes=>null
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(135830891327788830)
,p_button_sequence=>80
,p_button_plug_id=>wwv_flow_imp.id(135829363296788815)
,p_button_name=>'BT_PROCESAR'
,p_button_static_id=>'BT_PROCESAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Procesar'
,p_warn_on_unsaved_changes=>null
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(135830520743788827)
,p_button_sequence=>90
,p_button_plug_id=>wwv_flow_imp.id(135829363296788815)
,p_button_name=>'BT_APROBAR'
,p_button_static_id=>'BT_APROBAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Aprobar'
,p_warn_on_unsaved_changes=>null
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(135830712887788829)
,p_button_sequence=>100
,p_button_plug_id=>wwv_flow_imp.id(135829363296788815)
,p_button_name=>'BT_ANULAR'
,p_button_static_id=>'BT_ANULAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Anular'
,p_warn_on_unsaved_changes=>null
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(135830911852788831)
,p_button_sequence=>110
,p_button_plug_id=>wwv_flow_imp.id(135829363296788815)
,p_button_name=>'BT_REPORTE'
,p_button_static_id=>'BT_REPORTE'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Reporte'
,p_warn_on_unsaved_changes=>null
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(135831006671788832)
,p_button_sequence=>120
,p_button_plug_id=>wwv_flow_imp.id(135829363296788815)
,p_button_name=>'BT_EMAIL'
,p_button_static_id=>'BT_EMAIL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'E-mail'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-mail-forward'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(136902190546869607)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(136901504747869601)
,p_button_name=>'BT_VOLVER'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_image_alt=>'Volver'
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(136903043457869616)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(136902794235869613)
,p_button_name=>'BT_CANCELAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_image_alt=>'Cancelar'
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(136902055154869606)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(136901504747869601)
,p_button_name=>'BT_ENVIAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Enviar'
,p_button_position=>'CREATE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(136902914049869615)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(136902794235869613)
,p_button_name=>'BT_GUARDAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Guardar'
,p_button_position=>'EDIT'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(138314802503564315)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(135827907137788801)
,p_button_name=>'BT_BUSCAR_MODAL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--iconRight:t-Button--hoverIconPush'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Buscar '
,p_button_position=>'NEXT'
,p_button_redirect_url=>'f?p=&APP_ID.:544:&SESSION.::&DEBUG.:::'
,p_icon_css_classes=>'fa-server-search'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(139785648804358204)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(135827907137788801)
,p_button_name=>'BT_CONFIRMAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--iconRight:t-Button--hoverIconPush'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Guardar'
,p_button_position=>'NEXT'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-save-as'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(164913977344155926)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(135827907137788801)
,p_button_name=>'BT_ATRAS'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--iconLeft:t-Button--hoverIconPush'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Volver'
,p_button_position=>'PREVIOUS'
,p_button_redirect_url=>'f?p=&APP_ID.:544:&SESSION.::&DEBUG.:::'
,p_icon_css_classes=>'fa-undo-arrow'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(137671946070319413)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(135828000775788802)
,p_button_name=>'BT_ADD_DETALLE'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Nuevo'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-file-new'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(71553099198239508)
,p_name=>'P461_AUX_CREAR'
,p_item_sequence=>100
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(131400018577803829)
,p_name=>'P461_NOMBRE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(135829200054788814)
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
 p_id=>wwv_flow_imp.id(131400157132803830)
,p_name=>'P461_DESC_SUCURSAL_EMP'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(135829200054788814)
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
 p_id=>wwv_flow_imp.id(131400281476803831)
,p_name=>'P461_DESC_AREA'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(135829200054788814)
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
 p_id=>wwv_flow_imp.id(131400367627803832)
,p_name=>'P461_DESC_DEPARTAMENTO'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(135829200054788814)
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
 p_id=>wwv_flow_imp.id(131400426966803833)
,p_name=>'P461_DESC_CENTRO_COSTO'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(135829200054788814)
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
 p_id=>wwv_flow_imp.id(131400797852803836)
,p_name=>'P461_COD_EJERCICIO'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(135829200054788814)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(131400847324803837)
,p_name=>'P461_MENSAJE'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(135829200054788814)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(131401166613803840)
,p_name=>'P461_TIP_PEDIDO'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(135829117725788813)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(135828104897788803)
,p_name=>'P461_NRO_PEDIDO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(135829117725788813)
,p_prompt=>unistr('N\00FAmero Pedido')
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
 p_id=>wwv_flow_imp.id(135828236367788804)
,p_name=>'P461_FECHA'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(135829117725788813)
,p_prompt=>'Fecha'
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
 p_id=>wwv_flow_imp.id(135828327505788805)
,p_name=>'P461_COD_SUCURSAL'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(135829117725788813)
,p_prompt=>'Sucursal'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_SUCURSALES_PEDIDOS'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select distinct s.cod_sucursal || '' - '' || s.descripcion D, ',
'       s.cod_sucursal R',
'from SUCURSALES s, CP_ORD_PEDIDOS_CAB c ',
'where s.cod_empresa = :p_cod_empresa',
'and s.cod_sucursal = c.cod_sucursal'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'-- Seleccione -- '
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(135828499298788806)
,p_name=>'P461_FEC_COMPRA'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(135829117725788813)
,p_prompt=>'Fecha de Compra'
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
 p_id=>wwv_flow_imp.id(135828550608788807)
,p_name=>'P461_TIPO'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(135829117725788813)
,p_prompt=>'Tipo de Pedido'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:PRODUCTOS;PRODUCTOS,SERVICIOS;SERVICIOS'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(135828628128788808)
,p_name=>'P461_COD_SECTOR'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(135829117725788813)
,p_item_default=>'T'
,p_prompt=>'Rubro'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select   s.cod_sector ||'' - '' ||s.descripcion d,',
'       s.cod_sector r ',
' from SECTORES_ECON s  ',
' '))
,p_lov_cascade_parent_items=>'P461_COD_SUCURSAL,P461_NRO_PEDIDO'
,p_ajax_items_to_submit=>'P461_COD_SECTOR'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(135828764784788809)
,p_name=>'P461_COD_PERSONA'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(135829200054788814)
,p_prompt=>'Solicitado '
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select  distinct cod_persona || ''  -  '' || nombre D,',
'        cod_persona R',
'from cp_ord_pedidos_cab',
'where cod_empresa = :p_cod_empresa ',
'and cod_sucursal = :p461_cod_sucursal;'))
,p_lov_display_null=>'YES'
,p_lov_cascade_parent_items=>'P461_COD_SUCURSAL'
,p_ajax_items_to_submit=>'P461_COD_SUCURSAL'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_colspan=>3
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(135828818063788810)
,p_name=>'P461_COD_SUCURSAL_EMP'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(135829200054788814)
,p_prompt=>'Suc. Solicitante'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_colspan=>3
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(135828992437788811)
,p_name=>'P461_COD_AREA'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(135829200054788814)
,p_prompt=>unistr('\00C1rea Solicitante')
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_colspan=>3
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(135829706171788819)
,p_name=>'P461_COD_DEPARTAMENTO'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(135829200054788814)
,p_prompt=>'Dpto Solicitante'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_colspan=>3
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(135829925884788821)
,p_name=>'P461_COD_CENTRO_COSTO'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(135829200054788814)
,p_prompt=>'Centro Costo'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_colspan=>3
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(135830193838788823)
,p_name=>'P461_COMENTARIO'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(135829200054788814)
,p_prompt=>'Comentario'
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
 p_id=>wwv_flow_imp.id(135830234093788824)
,p_name=>'P461_ESTADO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(135829363296788815)
,p_prompt=>'Estado'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'LV_ESTADOS _PEDIDOS'
,p_lov=>'.'||wwv_flow_imp.id(138326226457490470)||'.'
,p_cHeight=>1
,p_tag_attributes=>'READONLY'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(135830345040788825)
,p_name=>'P461_COD_USUARIO_EST'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(135829363296788815)
,p_prompt=>'Usuario'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readOnly'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(135830457780788826)
,p_name=>'P461_FEC_ESTADO'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(135829363296788815)
,p_prompt=>'Fecha estado'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readOnly'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(135832249710788844)
,p_name=>'P461_COD_USR_INS'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(135832113139788843)
,p_prompt=>'Usuario '
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readOnly'
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
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(135832345417788845)
,p_name=>'P461_FEC_HOR_INS'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(135832113139788843)
,p_prompt=>'Fecha '
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readOnly'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(135832554072788847)
,p_name=>'P461_COD_USR_UPD'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(135832430239788846)
,p_prompt=>'Usuario '
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
 p_id=>wwv_flow_imp.id(135832617412788848)
,p_name=>'P461_FEC_USR_UPD'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(135832430239788846)
,p_prompt=>'Fecha '
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
 p_id=>wwv_flow_imp.id(136902480068869610)
,p_name=>'P461_EMAIL'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(136901504747869601)
,p_prompt=>'Email'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>200
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(136903412035869620)
,p_name=>'P461_EDITAR'
,p_item_sequence=>1050
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(136903831464869624)
,p_name=>'P461_NEW_COD_UNIDAD_MEDIDA'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(136902794235869613)
,p_item_default=>'UN'
,p_prompt=>'Unidad'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_UNIDAD_MEDIDA_PED'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select distinct  u.cod_unidad_medida || '' - '' || u.descripcion D,',
'       u.cod_unidad_medida R',
'from st_unidades_medida u , cp_ord_pedidos_det d',
'where d.cod_empresa = :P_COD_EMPRESA',
'and u.cod_unidad_medida = d.cod_unidad_medida;'))
,p_lov_cascade_parent_items=>'P461_LIST_COD_ARTICULO'
,p_ajax_items_to_submit=>'P461_NEW_COD_UNIDAD_MEDIDA'
,p_ajax_optimize_refresh=>'Y'
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
 p_id=>wwv_flow_imp.id(136903987508869625)
,p_name=>'P461_NEW_DESC_UNIDAD_MEDIDA'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(136902794235869613)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(136904173778869627)
,p_name=>'P461_NEW_CANTIDAD'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(136902794235869613)
,p_prompt=>'Cantidad'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>12
,p_colspan=>2
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(136904373592869629)
,p_name=>'P461_NEW_OBSERVACION'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(136902794235869613)
,p_prompt=>unistr('Observaci\00F3n')
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
 p_id=>wwv_flow_imp.id(137670802878319402)
,p_name=>'P461_ELIMINAR'
,p_item_sequence=>1060
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(137672409081319418)
,p_name=>'P461_LIST_COD_ARTICULO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(136902794235869613)
,p_prompt=>unistr('Art\00EDculo')
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select distinct x.cod_articulo || '' - '' || x.descripcion D,',
'       x.cod_articulo R',
'from cp_articulos x ',
'where x.cod_empresa = :P_COD_EMPRESA',
'   and (x.cod_sector  = :P461_COD_SECTOR OR :P461_COD_SECTOR=''T'' )',
'',
' ',
''))
,p_lov_cascade_parent_items=>'P461_COD_SECTOR'
,p_ajax_items_to_submit=>'P461_LIST_COD_ARTICULO'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(137674190769319435)
,p_name=>'P461_MESSAGE'
,p_item_sequence=>1080
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(140514909141100002)
,p_name=>'P461_VPUEDE'
,p_item_sequence=>1070
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(140515060721100003)
,p_name=>'P461_COD_MODULO'
,p_item_sequence=>1090
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(140515172418100004)
,p_name=>'P461_CARGA_SUCURSAL'
,p_item_sequence=>1100
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(140515274545100005)
,p_name=>'P461_COD_USUARIO'
,p_item_sequence=>1110
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(140515337670100006)
,p_name=>'P461_CONFIRMA_ORDEN'
,p_item_sequence=>1120
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(140515455774100007)
,p_name=>'P461_COD_FORMA'
,p_item_sequence=>1130
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(140515576722100008)
,p_name=>'P461_PERMITE_PROCESAR'
,p_item_sequence=>1140
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(140515672418100009)
,p_name=>'P461_CONF_REC_PED'
,p_item_sequence=>1150
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(140515788566100010)
,p_name=>'P461_APRUEBA_OC_PROPIA'
,p_item_sequence=>1160
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(140515855968100011)
,p_name=>'P461_PERMITE_MODIF_AREA'
,p_item_sequence=>1170
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(140516845674100021)
,p_name=>'P461_PROCESADO'
,p_item_sequence=>1180
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(140517240018100025)
,p_name=>'P461_VSUC_APRUEBA_VAL'
,p_item_sequence=>1190
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(140517317711100026)
,p_name=>'P461_VALERT'
,p_item_sequence=>1200
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(140518984689100042)
,p_name=>'P461_APROBADO_POR'
,p_item_sequence=>1210
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(140519084965100043)
,p_name=>'P461_FEC_APROBACION'
,p_item_sequence=>1220
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(140859372213985703)
,p_name=>'P461_PENVIA'
,p_item_sequence=>1230
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(140859460539985704)
,p_name=>'P461_PRECIBE'
,p_item_sequence=>1240
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(140859514053985705)
,p_name=>'P461_PASUNTO'
,p_item_sequence=>1250
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(140859694098985706)
,p_name=>'P461_PMENSAJE'
,p_item_sequence=>1260
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(140859788104985707)
,p_name=>'P461_PHOST'
,p_item_sequence=>1270
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(140859883386985708)
,p_name=>'P461_IMAGEN'
,p_item_sequence=>1280
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(140860240572985712)
,p_name=>'P461_SIN_PRECIO'
,p_item_sequence=>1290
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(164913499627155921)
,p_name=>'P461_AUX'
,p_item_sequence=>90
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(164915389459155940)
,p_name=>'P461_COD_MONEDA'
,p_item_sequence=>1030
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(164915414823155941)
,p_name=>'P461_TIP_CAMBIO'
,p_item_sequence=>1040
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(143547710092760122)
,p_validation_name=>'VA_EMAIL'
,p_validation_sequence=>10
,p_validation=>'P461_EMAIL'
,p_validation2=>'^[a-zA-Z0-9][a-zA-Z0-9._-]+@[a-zA-Z0-9.-]+.[a-zA-Z]{2,3}$'
,p_validation_type=>'REGULAR_EXPRESSION'
,p_error_message=>unistr('El email ingresado es inv\00E1lido.')
,p_always_execute=>'Y'
,p_associated_item=>wwv_flow_imp.id(136902480068869610)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(136367581464469710)
,p_name=>'DA_SUCURSAL'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P461_COD_SUCURSAL'
,p_condition_element=>'P461_COD_SUCURSAL'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(136367605286469711)
,p_event_id=>wwv_flow_imp.id(136367581464469710)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'        :P461_MESSAGE := null;',
'',
'        --apex_debug.error(''nro '' || :P461_NRO_PEDIDO);',
'',
'       IF :P461_COD_SUCURSAL is not null then',
'           ',
'            select tipo, fecha, fec_compra',
'            into :P461_TIPO,',
'                 :P461_FECHA, ',
'                 :P461_FEC_COMPRA',
'            from CP_ORD_PEDIDOS_CAB',
'            where nro_pedido = :P461_NRO_PEDIDO',
'            and cod_sucursal = :P461_COD_SUCURSAL',
'            and cod_empresa = :P_COD_EMPRESA',
'            and tip_pedido = :P461_TIP_PEDIDO;',
'',
'             ',
'       END IF;',
'',
'    EXCEPTION   ',
'            when NO_DATA_FOUND THEN',
'                    null;',
'',
'            when others then',
'                    apex_debug.error(''Error 12:''||sqlerrm);',
'END;'))
,p_attribute_02=>'P461_NRO_PEDIDO,P461_COD_SUCURSAL,P461_TIP_PEDIDO'
,p_attribute_03=>'P461_FEC_COMPRA,P461_FECHA,P461_TIPO,P461_MESSAGE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(136367799274469712)
,p_name=>'DA_NRO_BUSQUEDA'
,p_event_sequence=>20
,p_condition_element=>'P461_AUX_CREAR'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'N'
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(136367859483469713)
,p_event_id=>wwv_flow_imp.id(136367799274469712)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'       IF :P461_NRO_PEDIDO IS NOT NULL THEN',
'            :P461_AUX := ''N'';',
'            select nro_pedido,',
'                   tip_pedido ',
'            into :P461_NRO_PEDIDO,',
'                 :P461_TIP_PEDIDO',
'            from CP_ORD_PEDIDOS_CAB',
'            where nro_pedido = :P461_NRO_PEDIDO',
'            and cod_empresa = :P_COD_EMPRESA;',
'',
'           CPPRPECM.PR_OBTENER_DETALLE(PI_COD_EMPRESA => :P_COD_EMPRESA, ',
'                                       PI_TIPO_PEDIDO => :P461_TIP_PEDIDO,',
'                                       PI_NRO_PEDIDO => :P461_NRO_PEDIDO);',
'           ',
'       END IF;',
'',
'    EXCEPTION   ',
'            when no_data_found then',
'                    null;',
'            when others then',
'',
'                    apex_debug.error(''Error R1'' || '' - '' || sqlerrm);',
'END;'))
,p_attribute_02=>'P461_NRO_PEDIDO'
,p_attribute_03=>'P461_COD_SUCURSAL,P461_TIP_PEDIDO,P461_AUX'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(136367937792469714)
,p_event_id=>wwv_flow_imp.id(136367799274469712)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'       IF :P461_NRO_PEDIDO is not null then',
'            select cod_sucursal, ',
'                   cod_persona, ',
'                   cod_sector,',
'                   tipo',
'            into :P461_COD_SUCURSAL, ',
'                 :P461_COD_PERSONA, ',
'                 :P461_COD_SECTOR,',
'                 :P461_TIPO',
'            from CP_ORD_PEDIDOS_CAB',
'            where nro_pedido = :P461_NRO_PEDIDO',
'            and cod_empresa = :P_COD_EMPRESA',
'            and rownum = 1;',
'       END IF;',
'',
'    EXCEPTION   ',
'        when no_data_found then',
'                    null;',
'            when others then',
'                    apex_debug.error(sqlerrm);',
'END;'))
,p_attribute_02=>'P461_NRO_PEDIDO'
,p_attribute_03=>'P461_COD_SUCURSAL,P461_COD_PERSONA,P461_COD_SECTOR,P461_TIPO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(139786087079358208)
,p_event_id=>wwv_flow_imp.id(136367799274469712)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    IF :P461_NRO_PEDIDO is not null then',
'        select COD_USR_INS,	',
'               FEC_HOR_INS,',
'               COD_USR_UPD,	',
'               FEC_HOR_UPD',
'        into :P461_COD_USR_INS,',
'             :P461_FEC_HOR_INS,',
'             :P461_COD_USR_UPD,',
'             :P461_FEC_USR_UPD ',
'        from cp_ord_pedidos_cab',
'        where cod_empresa = :P_COD_EMPRESA',
'            and tip_pedido = :P461_TIP_PEDIDO',
'            and NRO_PEDIDO = :P461_NRO_PEDIDO;',
'    END IF;',
'',
'  EXCEPTION',
'        when no_data_found then',
'                null;',
'        when others then',
'                apex_debug.error(''Info error '' || sqlerrm);   ',
'END;',
''))
,p_attribute_02=>'P461_NRO_PEDIDO,P461_TIP_PEDIDO'
,p_attribute_03=>'P461_COD_USR_INS,P461_FEC_HOR_INS,P461_COD_USR_UPD,P461_FEC_USR_UPD'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(136368062559469715)
,p_event_id=>wwv_flow_imp.id(136367799274469712)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(135828000775788802)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(139786158884358209)
,p_event_id=>wwv_flow_imp.id(136367799274469712)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(135832113139788843)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(139786243455358210)
,p_event_id=>wwv_flow_imp.id(136367799274469712)
,p_event_result=>'TRUE'
,p_action_sequence=>80
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(135832430239788846)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(136901681637869602)
,p_name=>'DA_EMAIL'
,p_event_sequence=>30
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(135831006671788832)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(136901767418869603)
,p_event_id=>wwv_flow_imp.id(136901681637869602)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(136901504747869601)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(131400574446803834)
,p_name=>'da_obtener_datos'
,p_event_sequence=>40
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P461_COD_PERSONA'
,p_condition_element=>'P461_COD_PERSONA'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(131400693467803835)
,p_event_id=>wwv_flow_imp.id(131400574446803834)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'	  :P461_cod_ejercicio:= to_char(sysdate,''RRRR'');',
'if :P461_cod_persona is not null ',
'--and :P461_AUX = ''N'' ',
'then',
'	  ',
'	  --Si se trata de NGO sigue este flujo',
'	if :p_cod_empresa is not null then',
'',
'		CPPRPECM.PR_OBTENER_DATOS( pi_cod_empresa => :P_COD_EMPRESA,',
'						   pi_cod_persona => :P461_COD_PERSONA,',
'						   pi_cod_ejercicio => :P461_cod_ejercicio,',
'						   po_nombre => :P461_NOMBRE,',
'						   po_cod_sucursal_emp => :P461_COD_SUCURSAL_EMP,',
'						   po_cod_area => :P461_COD_AREA,',
'						   po_cod_departamento => :P461_COD_DEPARTAMENTO,',
'						   po_cod_centro_costo => :P461_COD_CENTRO_COSTO,',
'						   PO_desc_sucursal_emp => :P461_DESC_SUCURSAL_EMP,',
'						   PO_desc_area => :P461_DESC_AREA,',
'						   PO_desc_departamento => :P461_DESC_DEPARTAMENTO,',
'						   PO_desc_centro_costo => :P461_DESC_CENTRO_COSTO,',
'                           po_mensaje => :P461_MENSAJE);		',
'	else',
'		  Begin',
'           --- apex_debug.error(''Cod persona test'');',
'					select p.nombre',
'					  into :P461_NOMBRE',
'					  from personas p',
'					 where p.cod_persona = :P461_COD_PERSONA;',
'			exception                          ',
'					When Others Then',
unistr('							:P461_mensaje := ''Error al consultar el c\00F3digo de persona del solicitante. ''||sqlerrm;								'),
'			end;',
'	end if;',
'else',
'',
'Begin',
'          --  apex_debug.error(''Cod persona test 2'');',
'					select p.nombre',
'					  into :P461_NOMBRE',
'					  from personas p',
'					 where p.cod_persona = :P461_COD_PERSONA;',
'			exception                          ',
'					When Others Then',
unistr('							:P461_mensaje := ''Error al consultar el c\00F3digo de persona del solicitante. ''||sqlerrm;								'),
'			end;',
'',
'',
'',
'end if;',
'exception',
'when no_data_found then',
'        null;',
'when others then',
'',
'    apex_debug.error(''Error cod_persona: ''|| sqlerrm);',
'end;'))
,p_attribute_02=>'P461_COD_PERSONA,P461_AUX,P461_COD_EJERCICIO'
,p_attribute_03=>'P461_NOMBRE,P461_COD_SUCURSAL_EMP,P461_COD_AREA,P461_COD_DEPARTAMENTO,P461_COD_CENTRO_COSTO,P461_DESC_SUCURSAL_EMP,P461_DESC_AREA,P461_DESC_DEPARTAMENTO,P461_DESC_CENTRO_COSTO,P461_MENSAJE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(136901867895869604)
,p_event_id=>wwv_flow_imp.id(131400574446803834)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    if :P461_COD_PERSONA is not null',
'    --and :P461_AUX = ''N'' ',
'    then',
'    ',
'        select comentario, ',
'               estado, ',
'               cod_usuario_est, ',
'               fec_estado ',
'        into :P461_COMENTARIO,',
'             :P461_ESTADO,',
'             :P461_COD_USUARIO_EST,',
'             :P461_FEC_ESTADO',
'        from cp_ord_pedidos_cab ',
'        where cod_persona = :P461_COD_PERSONA ',
'            and cod_sucursal = :P461_COD_SUCURSAL',
'            and cod_empresa = :P_COD_EMPRESA',
'            and tip_pedido = :P461_TIP_PEDIDO',
'            and nro_pedido = :P461_NRO_PEDIDO;',
'',
'    end if;',
'',
'  EXCEPTION',
'        when no_data_found then',
'                null;',
'        when others then ',
'                apex_debug.error( ''Error datos R3''|| '' - '' || sqlerrm);',
'END;'))
,p_attribute_02=>'P461_COD_PERSONA,P461_NRO_PEDIDO,P461_COD_SUCURSAL,P461_TIP_PEDIDO,P461_AUX'
,p_attribute_03=>'P461_COMENTARIO,P461_ESTADO,P461_COD_USUARIO_EST,P461_FEC_ESTADO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(131400978225803838)
,p_name=>'da_cambio_mensaje'
,p_event_sequence=>50
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P461_MENSAJE'
,p_condition_element=>'P461_MENSAJE'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(131401053941803839)
,p_event_id=>wwv_flow_imp.id(131400978225803838)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'&P461_MENSAJE.'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(136902283922869608)
,p_name=>'DA_VOLVER'
,p_event_sequence=>60
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(136902190546869607)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(136902326952869609)
,p_event_id=>wwv_flow_imp.id(136902283922869608)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(136901504747869601)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(136903156378869617)
,p_name=>'DA_CANCEL'
,p_event_sequence=>70
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(136903043457869616)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(136903396739869619)
,p_event_id=>wwv_flow_imp.id(136903156378869617)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(136902794235869613)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(136903214231869618)
,p_event_id=>wwv_flow_imp.id(136903156378869617)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P461_NEW_DESC_ARTICULO'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(136903549168869621)
,p_name=>'DA_EDITAR'
,p_event_sequence=>80
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P461_EDITAR'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(138314704909564314)
,p_event_id=>wwv_flow_imp.id(136903549168869621)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P461_LIST_COD_ARTICULO'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(139785398702358201)
,p_event_id=>wwv_flow_imp.id(136903549168869621)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P461_NEW_COD_UNIDAD_MEDIDA,P461_NEW_OBSERVACION'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(136904522873869631)
,p_event_id=>wwv_flow_imp.id(136903549168869621)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'			',
'    IF :P461_EDITAR is not null then',
'        select c004,',
'               c006,',
'               c008,',
'               c010       ',
'        into :P461_LIST_COD_ARTICULO,',
'             :P461_NEW_COD_UNIDAD_MEDIDA,',
'             :P461_NEW_CANTIDAD,',
'             :P461_NEW_OBSERVACION',
'        from APEX_COLLECTIONS',
'        where COLLECTION_NAME = ''COL_DET_CPPRPECM'' ',
'        and SEQ_ID = :P461_EDITAR ;',
'    END IF;',
'',
'    EXCEPTION',
'            when others then',
unistr('                    apex_debug.error(''Editar error N\00B015'' || '' - '' || sqlerrm);'),
'END;'))
,p_attribute_02=>'P461_EDITAR'
,p_attribute_03=>'P461_NEW_COD_UNIDAD_MEDIDA,P461_NEW_CANTIDAD,P461_NEW_OBSERVACION,P461_LIST_COD_ARTICULO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(136903788325869623)
,p_event_id=>wwv_flow_imp.id(136903549168869621)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(136902794235869613)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(137670963079319403)
,p_name=>'DA_ELIMINAR'
,p_event_sequence=>90
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P461_ELIMINAR'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(137671056212319404)
,p_event_id=>wwv_flow_imp.id(137670963079319403)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>unistr('\00BFEsta seguro que desea eliminar la descripci\00F3n del pedido?')
,p_attribute_03=>'warning'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(137674469776319438)
,p_event_id=>wwv_flow_imp.id(137670963079319403)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    CPPRPECM.PR_ELIMINAR_REGISTRO(PI_SEQ_ID => :P461_ELIMINAR);',
'EXCEPTION',
'WHEN OTHERS THEN',
'    APEX_DEBUG.ERROR(SQLERRM);',
'END;'))
,p_attribute_02=>'P461_ELIMINAR'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(137674585106319439)
,p_event_id=>wwv_flow_imp.id(137670963079319403)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(135828000775788802)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(137671379840319407)
,p_name=>'DA_RECHAZAR'
,p_event_sequence=>100
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(135830648149788828)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(140514886546100001)
,p_event_id=>wwv_flow_imp.id(137671379840319407)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
' DECLARE ',
' ',
'    vseccion_solicita varchar2(100);',
'    vseccion_aprueba  varchar2(100);',
'   -- :P461_VPUEDE varchar2(400);',
'',
'    vsuc_solicita   rh_empleados.cod_sucursal%type;',
'	varea_solicita  rh_empleados.cod_area%type;',
'	vdpto_solicita  rh_empleados.cod_departamento%type;',
'	',
'    vsuc_aprueba   rh_empleados.cod_sucursal%type;',
'	varea_aprueba  rh_empleados.cod_area%type;',
'	vdpto_aprueba  rh_empleados.cod_departamento%type;',
'',
' -- vsuc_aprueba_VAL   rh_empleados.cod_sucursal%type;',
'	varea_aprueba_VAL  rh_empleados.cod_area%type;',
'	vdpto_aprueba_VAL  rh_empleados.cod_departamento%type;',
' BEGIN',
'    ',
'    --Estructura del Solicitante',
'        Begin',
'                select vsuc_solicita,',
'                       varea_solicita,',
'                       vdpto_solicita',
'                  into vsuc_solicita,',
'                       varea_solicita,',
'                       vdpto_solicita',
'                  from rh_empleados e,  ',
'                       personas p',
'                 where e.cod_empresa = :P_cod_empresa',
'                   and e.cod_persona = :P461_cod_persona',
'                   and e.cod_persona = p.cod_persona',
'                   and nvl(e.activo, ''N'') = ''S'' ',
'                   and rownum=1;',
'        exception                          ',
'                When Others Then',
'                    vsuc_solicita  := ''x'';',
'                    varea_solicita := ''x'';',
'                    vdpto_solicita := ''x'';',
'        end;',
'        ',
'        --Estructura del usuario conectado',
'        Begin',
'                select e.cod_sucursal,',
'                       e.cod_area,',
'                       e.cod_departamento',
'                  into vsuc_aprueba,',
'                       varea_aprueba,',
'                       vdpto_aprueba',
'                  from rh_empleados e,   ',
'                       usuarios u',
'                 where e.cod_empresa   = :P_cod_empresa',
'                   --and e.cod_empresa   = u.cod_empresa',
'                   and e.cod_persona   = u.cod_persona',
'                   and nvl(e.activo, ''N'') = ''S'' ',
'                   and U.cod_usuario   = :APP_USER',
'                   and rownum = 1;',
'        exception                          ',
'                When Others Then',
'                    vsuc_aprueba  := ''x'';',
'                    varea_aprueba := ''x'';',
'                    vdpto_aprueba := ''x'';',
'        end;',
'',
'',
'     IF (nvl(:P461_VSUC_APRUEBA_VAL, ''x'') = nvl(vsuc_solicita, ''z'') ',
'        and nvl(varea_aprueba, ''x'') = nvl(varea_solicita, ''z'') ',
'        and  nvl(vdpto_aprueba, ''x'') = nvl(vdpto_solicita, ''z'')) ',
'        THEN',
'				:P461_VPUEDE := ''S'';',
'		ELSE ',
'				:P461_VPUEDE := ''N'';',
'		end IF;',
'		Begin',
'				select e.cod_sucursal,',
'					   e.cod_area,',
'					   e.cod_departamento',
'				  into :P461_VSUC_APRUEBA_VAL,',
'				  	   varea_aprueba_val,',
'				  	   vdpto_aprueba_val',
'				  from cp_aprueba_oc e,   ',
'				  	   usuarios u',
'			 	 where e.cod_empresa  = :p_cod_empresa',
'				   --and e.cod_empresa  = u.cod_empresa',
'				   and e.cod_usuario  = u.cod_usuario',
'				   --',
'				   and e.cod_sucursal = :P461_COD_SUCURSAL_EMP ',
'				   and e.cod_area = :P461_COD_AREA ',
'				   and e.cod_departamento = :P461_COD_DEPARTAMENTO',
'				   --',
'				   and U.cod_usuario = :APP_USER',
'				   and rownum = 1;',
'		exception                          ',
'				When Others Then',
'					:P461_VSUC_APRUEBA_VAL   := ''x'';',
'			  		varea_aprueba_val  := ''x'';',
'			  		vdpto_aprueba_val  := ''x'';',
'			  	',
'			  		',
'		end;',
'',
'	  IF (nvl(:P461_VSUC_APRUEBA_VAL, ''x'') = nvl(:P461_COD_SUCURSAL_EMP, ''z'') ',
'        and nvl(varea_aprueba_val, ''x'') = nvl(:P461_COD_AREA, ''z'') ',
'        and nvl(vdpto_aprueba_val, ''x'') = nvl(:P461_COD_DEPARTAMENTO, ''z'')	) ',
'      THEN',
'		 :P461_VPUEDE:=''S'';  ',
'	end IF;',
'',
' END;'))
,p_attribute_02=>'P461_COD_PERSONA,:P461_VSUC_APRUEBA_VAL,P461_VPUEDE'
,p_attribute_03=>'P461_VPUEDE,P461_VSUC_APRUEBA_VAL,P461_CONF_REC_PED'
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
 p_id=>wwv_flow_imp.id(140517107204100024)
,p_event_id=>wwv_flow_imp.id(137671379840319407)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/*:P461_CONF_REC_PED := ''S''; ',
':P461_VPUEDE := ''S''; ',
':P461_VSUC_APRUEBA_VAL := ''S'';',
'*/',
'BEGIN',
'      :P461_MESSAGE := null;',
'      :P461_VALERT := null;',
'',
'    		IF :P_cod_empresa is not null then',
'         ',
'                IF NVL(:P461_CONF_REC_PED,''N'') =''S'' THEN ',
'              			IF :P461_VPUEDE =''S'' ',
'              			AND :P461_VSUC_APRUEBA_VAL <> ''x'' THEN ',
'                            ',
'                            begin ',
unistr('                                :P461_VALERT := ''\00BFDesea Rechazar el Pedido N\00BA ''||:P461_NRO_PEDIDO||'' ?'';'),
'                                                                                       ',
'                                exception',
'                                        when others then',
'                                                null;',
'                            end;',
'',
'                        ELSIF :P461_VPUEDE =''S'' ',
'              			AND :P461_VSUC_APRUEBA_VAL =''x'' THEN',
'              			   				',
'              			    :P461_MESSAGE :=''No cuenta con permiso para rechazar en este departamento.'';',
'',
'                        END IF;',
'			    ELSE',
'			    ',
'			    :P461_MESSAGE :=''No cuenta con el permiso para rechazar. '';    ',
'',
'            	END IF;',
'        ELSE',
'',
'            	null;',
'        END IF;',
'END;'))
,p_attribute_02=>'P461_CONF_REC_PED,P461_VSUC_APRUEBA_VAL,P461_NRO_PEDIDO,P461_CONF_REC_PED,P461_VPUEDE,P461_VALERT'
,p_attribute_03=>'P461_MESSAGE,P461_VALERT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(140517716080100030)
,p_event_id=>wwv_flow_imp.id(137671379840319407)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>'&P461_VALERT.'
,p_attribute_03=>'information'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P461_VALERT'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(140517865066100031)
,p_event_id=>wwv_flow_imp.id(137671379840319407)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
'DECLARE',
'',
'V_DATE DATE;',
'V_USUARIO VARCHAR2(30);',
'V_ESTADO VARCHAR2(3);',
'',
'BEGIN',
'',
'    IF :P461_VALERT is not null then',
'        V_DATE := SYSDATE;',
'        V_USUARIO := :APP_USER;',
'        V_ESTADO := ''R'';',
'',
'        UPDATE cp_ord_pedidos_cab',
'        SET',
'         ESTADO = V_ESTADO,',
'         COD_USUARIO_EST = V_USUARIO,',
'         FEC_ESTADO = V_DATE,',
'         COMENTARIO =:P461_COMENTARIO',
'',
'        WHERE cod_empresa = :P_COD_EMPRESA',
'            and nro_pedido = :P461_NRO_PEDIDO',
'            and tip_pedido = :P461_TIP_PEDIDO',
'            and cod_sucursal = :P461_COD_SUCURSAL;',
'    ELSE ',
'        null;',
'    ',
'    END IF;',
'',
'END;',
'',
''))
,p_attribute_02=>'P461_ESTADO,P461_COD_USUARIO_EST,P461_FEC_ESTADO'
,p_attribute_03=>'P461_ESTADO,P461_COD_USUARIO_EST,P461_FEC_ESTADO,P461_COMENTARIO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P461_VALERT'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(140519505428100048)
,p_event_id=>wwv_flow_imp.id(137671379840319407)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_02=>'Y'
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P461_MESSAGE'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(137671506416319409)
,p_name=>'DA_PROCESAR'
,p_event_sequence=>110
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(135830891327788830)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(137671694155319410)
,p_event_id=>wwv_flow_imp.id(137671506416319409)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>unistr('\00BFDesea procesar el siguiente pedido?')
,p_attribute_03=>'information'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(139786435278358212)
,p_event_id=>wwv_flow_imp.id(137671506416319409)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE ',
'',
'    V_ESTADO VARCHAR2(3);',
'    V_USUARIO VARCHAR2(40);',
'    V_DATE DATE;',
'BEGIN',
'        :P461_MESSAGE := null;',
'    IF :P461_NRO_PEDIDO is not null then',
'            V_ESTADO := ''C'';',
'            V_USUARIO := :APP_USER ;',
'            V_DATE := sysdate;',
'',
'            UPDATE cp_ord_pedidos_cab',
'            SET',
'             ESTADO = V_ESTADO,',
'             COD_USUARIO_EST = V_USUARIO,',
'             FEC_ESTADO = V_DATE,',
'             COMENTARIO =:P461_COMENTARIO',
'            WHERE cod_empresa = :P_COD_EMPRESA',
'                and nro_pedido = :P461_NRO_PEDIDO',
'                and tip_pedido = :P461_TIP_PEDIDO',
'                and cod_sucursal = :P461_COD_SUCURSAL;',
'',
'           --     apex_debug.error(''Dentro del IF  ESTADO: ''||V_ESTADO||'' Usuario ''||V_USUARIO||'' Fecha ''||sysdate||'' Comentario ''||:P461_COMENTARIO);',
'    ELSE',
'        V_ESTADO := null;',
'        V_USUARIO := null;',
'        V_DATE := null;',
'',
'    END IF;',
'',
'    EXCEPTION ',
'        /*  when no_data_found then',
'                apex_debug.error(''Error no data,  ESTADO: ''||V_ESTADO||'' Usuario ''||V_USUARIO||'' Fecha ''||sysdate||'' Comentario ''||:P461_COMENTARIO);',
'        */',
'        when others then',
'                :P461_MESSAGE := ''Error al Procesar.'';',
'                apex_debug.error(sqlerrm);',
'      ',
'END;'))
,p_attribute_02=>'P461_NRO_PEDIDO,P461_TIP_PEDIDO,P461_COD_SUCURSAL,P461_ESTADO,P461_FEC_ESTADO,P461_COD_USUARIO_EST,P461_COMENTARIO'
,p_attribute_03=>'P461_COD_USUARIO_EST,P461_FEC_ESTADO,P461_ESTADO,P461_COMENTARIO,P461_MESSAGE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(139786674688358214)
,p_event_id=>wwv_flow_imp.id(137671506416319409)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_02=>'Y'
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P461_MESSAGE'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(137671797761319411)
,p_name=>'DA_ANULAR'
,p_event_sequence=>120
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(135830712887788829)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(137671838632319412)
,p_event_id=>wwv_flow_imp.id(137671797761319411)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>unistr('\00BFDesea anular el siguiente pedido? ')
,p_attribute_03=>'information'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(139786818311358216)
,p_event_id=>wwv_flow_imp.id(137671797761319411)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE ',
'',
'    V_ESTADO VARCHAR2(3);',
'    V_USUARIO VARCHAR2(40);',
'    V_DATE DATE;',
'BEGIN',
'    :P461_MESSAGE := null;',
'    IF :P461_NRO_PEDIDO is not null then',
'            V_ESTADO := ''N'';',
'            V_USUARIO := :APP_USER ;',
'            V_DATE := sysdate;',
'',
'            UPDATE cp_ord_pedidos_cab',
'            SET',
'             ESTADO = V_ESTADO,',
'             COD_USUARIO_EST = V_USUARIO,',
'             FEC_ESTADO = V_DATE,',
'             COMENTARIO =:P461_COMENTARIO',
'            WHERE cod_empresa = :P_COD_EMPRESA',
'                and nro_pedido = :P461_NRO_PEDIDO',
'                and tip_pedido = :P461_TIP_PEDIDO',
'                and cod_sucursal = :P461_COD_SUCURSAL;',
'',
'    ELSE',
'        V_ESTADO := null;',
'        V_USUARIO := null;',
'        V_DATE := null;',
'',
'    END IF;',
'',
'    EXCEPTION ',
'',
'        when others then',
'                :P461_MESSAGE := ''Error al Anular.'';',
'                apex_debug.error(sqlerrm);',
'      ',
'END;'))
,p_attribute_02=>'P461_NRO_PEDIDO,P461_COD_SUCURSAL'
,p_attribute_03=>'P461_COD_USUARIO_EST,P461_FEC_ESTADO,P461_ESTADO,P461_COMENTARIO,P461_MESSAGE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(139786973724358217)
,p_event_id=>wwv_flow_imp.id(137671797761319411)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_02=>'Y'
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P461_MESSAGE'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(137672093442319414)
,p_name=>'DA_AGREGAR'
,p_event_sequence=>130
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(137671946070319413)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(137672241268319416)
,p_event_id=>wwv_flow_imp.id(137672093442319414)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P461_EDITAR :=null;',
':P461_LIST_COD_ARTICULO :=null;',
':P461_NEW_COD_UNIDAD_MEDIDA :=null;',
':P461_NEW_CANTIDAD :=null;',
':P461_NEW_OBSERVACION :=null;',
''))
,p_attribute_03=>'P461_EDITAR,P461_NEW_COD_UNIDAD_MEDIDA,P461_NEW_CANTIDAD,P461_NEW_OBSERVACION,P461_LIST_COD_ARTICULO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(165604968275260001)
,p_event_id=>wwv_flow_imp.id(137672093442319414)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'null;'
,p_attribute_02=>'P461_COD_SECTOR'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(139785552441358203)
,p_event_id=>wwv_flow_imp.id(137672093442319414)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P461_NEW_COD_UNIDAD_MEDIDA,P461_NEW_OBSERVACION'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(137672113564319415)
,p_event_id=>wwv_flow_imp.id(137672093442319414)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(136902794235869613)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(137672934092319423)
,p_name=>'DA_SOLO_NUM'
,p_event_sequence=>140
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P461_NEW_CANTIDAD'
,p_bind_type=>'bind'
,p_bind_event_type=>'keypress'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(137673093978319424)
,p_event_id=>wwv_flow_imp.id(137672934092319423)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P461_NEW_CANTIDAD'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if (!soloNumeros(event)){',
'      event.preventDefault();',
'}',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(137673652400319430)
,p_name=>'DA_GUARDAR'
,p_event_sequence=>160
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(136902914049869615)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(64602673310457125)
,p_event_id=>wwv_flow_imp.id(137673652400319430)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P461_NEW_CANTIDAD is null or :P461_NEW_CANTIDAD = ''0'' then ',
'        raise_application_error(-20001, ''Debe agregar la cantidad'');',
'    end if;'))
,p_attribute_02=>'P461_NEW_CANTIDAD'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(137673794407319431)
,p_event_id=>wwv_flow_imp.id(137673652400319430)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'',
'V_EXISTE NUMBER;',
'BEGIN',
'    if :P461_NEW_CANTIDAD is null or :P461_NEW_CANTIDAD = ''0'' then ',
'        raise_application_error(-20001, ''Debe agregar la cantidad'');',
'    end if;',
'',
'      :P461_MENSAJE :=null;',
'        ',
'    if :P461_EDITAR is null then',
'',
'         BEGIN',
'                  SELECT 1',
'                  INTO V_EXISTE',
'                  FROM APEX_COLLECTIONS',
'                  WHERE COLLECTION_NAME = ''COL_DET_CPPRPECM''',
'                  AND C004 = :P461_LIST_COD_ARTICULO;',
'                 EXCEPTION',
'                    WHEN OTHERS THEN',
'                            V_EXISTE := 0;',
'           END;',
'        IF V_EXISTE = 0 THEN  ',
'',
'          CPPRPECM.PR_ADD_PEDIDOS_COL(  PI_COD_EMPRESA => :P_COD_EMPRESA,',
'                                          PI_TIPO_PEDIDO => :P461_TIP_PEDIDO,',
'                                          PI_NRO_PEDIDO => :P461_NRO_PEDIDO,',
'                                          PI_COD_ARTICUlO => :P461_LIST_COD_ARTICULO,',
'                                          PI_COD_UNIDAD_MEDIDA => :P461_NEW_COD_UNIDAD_MEDIDA,',
'                                          PI_CANTIDAD => :P461_NEW_CANTIDAD,',
'                                          PI_OBSERVACIONES => :P461_NEW_OBSERVACION);',
'         ELSE ',
'',
'                :P461_MENSAJE := ''El Articulo no puede repetirse.'';',
'',
'         END IF;',
'    else',
'   ',
'            CPPRPECM.PR_UPDATE_PEDIDOS_COL(',
'                   PI_SEQ => :P461_EDITAR,',
'                   PI_COD_ARTICULO => :P461_LIST_COD_ARTICULO,',
'                   PI_CANTIDAD => :P461_NEW_CANTIDAD',
'',
'                   ); ',
'  --      APEX_DEBUG.ERROR( ''Cantidad '' ||:P461_NEW_CANTIDAD);',
'   --      APEX_DEBUG.ERROR(''Articulo  '' || :P461_LIST_COD_ARTICULO);         ',
'    end if;',
'',
'    EXCEPTION',
'        WHEN OTHERS THEN',
'            raise_application_error(-20001, SQLERRM);',
'',
'END;'))
,p_attribute_02=>'P461_EDITAR,P461_LIST_COD_ARTICULO,P461_NEW_CANTIDAD,P461_NEW_OBSERVACION,P461_NEW_COD_UNIDAD_MEDIDA'
,p_attribute_03=>'P461_LIST_COD_ARTICULO,P461_NEW_COD_UNIDAD_MEDIDA,P461_NEW_CANTIDAD,P461_NEW_OBSERVACION'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(137674023129319434)
,p_event_id=>wwv_flow_imp.id(137673652400319430)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(135828000775788802)
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P461_MESSAGE'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(137673880838319432)
,p_event_id=>wwv_flow_imp.id(137673652400319430)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(136902794235869613)
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P461_MESSAGE'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(137674234961319436)
,p_name=>'DA_MESSAGE'
,p_event_sequence=>170
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P461_MESSAGE'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(137674305411319437)
,p_event_id=>wwv_flow_imp.id(137674234961319436)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'&P461_MESSAGE.'
,p_attribute_03=>'information'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P461_MESSAGE'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(138314254189564309)
,p_name=>'DA_ESTADO'
,p_event_sequence=>190
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P461_ESTADO'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(138314335433564310)
,p_event_id=>wwv_flow_imp.id(138314254189564309)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P461_ESTADO'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(141306184414930315)
,p_event_id=>wwv_flow_imp.id(138314254189564309)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(137671946070319413)
,p_client_condition_type=>'NOT_EQUALS'
,p_client_condition_element=>'P461_ESTADO'
,p_client_condition_expression=>'P'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(141307290701930326)
,p_event_id=>wwv_flow_imp.id(138314254189564309)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(137671946070319413)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P461_ESTADO'
,p_client_condition_expression=>'P'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(141307309102930327)
,p_event_id=>wwv_flow_imp.id(138314254189564309)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(139785648804358204)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P461_ESTADO'
,p_client_condition_expression=>'P'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(141307149045930325)
,p_event_id=>wwv_flow_imp.id(138314254189564309)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(139785648804358204)
,p_client_condition_type=>'NOT_EQUALS'
,p_client_condition_element=>'P461_ESTADO'
,p_client_condition_expression=>'P'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(141306259697930316)
,p_event_id=>wwv_flow_imp.id(138314254189564309)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(135830712887788829)
,p_client_condition_type=>'NOT_EQUALS'
,p_client_condition_element=>'P461_ESTADO'
,p_client_condition_expression=>'P'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(141306526024930319)
,p_event_id=>wwv_flow_imp.id(138314254189564309)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(135830520743788827)
,p_client_condition_type=>'NOT_EQUALS'
,p_client_condition_element=>'P461_ESTADO'
,p_client_condition_expression=>'P'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(141307025802930324)
,p_event_id=>wwv_flow_imp.id(138314254189564309)
,p_event_result=>'TRUE'
,p_action_sequence=>80
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(135830648149788828)
,p_client_condition_type=>'NOT_EQUALS'
,p_client_condition_element=>'P461_ESTADO'
,p_client_condition_expression=>'P'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(141306693930930320)
,p_event_id=>wwv_flow_imp.id(138314254189564309)
,p_event_result=>'TRUE'
,p_action_sequence=>90
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(135830891327788830)
,p_client_condition_type=>'NOT_EQUALS'
,p_client_condition_element=>'P461_ESTADO'
,p_client_condition_expression=>'P'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(141306399701930317)
,p_event_id=>wwv_flow_imp.id(138314254189564309)
,p_event_result=>'TRUE'
,p_action_sequence=>100
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(135830712887788829)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P461_ESTADO'
,p_client_condition_expression=>'P'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(141306497652930318)
,p_event_id=>wwv_flow_imp.id(138314254189564309)
,p_event_result=>'TRUE'
,p_action_sequence=>110
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(135830520743788827)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P461_ESTADO'
,p_client_condition_expression=>'P'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(141306733924930321)
,p_event_id=>wwv_flow_imp.id(138314254189564309)
,p_event_result=>'TRUE'
,p_action_sequence=>120
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(135830891327788830)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P461_ESTADO'
,p_client_condition_expression=>'P'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(141306977461930323)
,p_event_id=>wwv_flow_imp.id(138314254189564309)
,p_event_result=>'TRUE'
,p_action_sequence=>130
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(135830648149788828)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P461_ESTADO'
,p_client_condition_expression=>'P'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(138316378705564330)
,p_name=>'DA_TIPO'
,p_event_sequence=>230
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(140516171504100014)
,p_event_id=>wwv_flow_imp.id(138316378705564330)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P461_ESTADO'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P461_CONFIRMA_ORDEN'
,p_client_condition_expression=>'S'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(138316633492564333)
,p_event_id=>wwv_flow_imp.id(138316378705564330)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P461_COD_SECTOR'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P461_AUX'
,p_client_condition_expression=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(140516502494100018)
,p_event_id=>wwv_flow_imp.id(138316378705564330)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P461_ESTADO'
,p_client_condition_type=>'NOT_EQUALS'
,p_client_condition_element=>'P461_CONFIRMA_ORDEN'
,p_client_condition_expression=>'S'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(138316471185564331)
,p_event_id=>wwv_flow_imp.id(138316378705564330)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P461_TIPO'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P461_AUX'
,p_client_condition_expression=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(139785754915358205)
,p_name=>'DA_CONFIRMAR'
,p_event_sequence=>250
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(139785648804358204)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(139785847809358206)
,p_event_id=>wwv_flow_imp.id(139785754915358205)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>unistr('\00BFDesea guardar los cambios? ')
,p_attribute_03=>'information'
,p_attribute_04=>'fa-save-as'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(164915251857155939)
,p_event_id=>wwv_flow_imp.id(139785754915358205)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    V_EXISTE NUMBER;',
'',
'BEGIN',
':P461_MESSAGE := null;',
'    BEGIN',
'        SELECT 1',
'        INTO V_EXISTE',
'        FROM CP_ORD_PEDIDOS_CAB',
'        WHERE NRO_PEDIDO = :P461_NRO_PEDIDO;',
'',
'        EXCEPTION ',
'            WHEN OTHERS THEN',
'                V_EXISTE := 0;',
'    END;',
'',
'   IF V_EXISTE = 0 THEN ',
'    :P461_cod_ejercicio:= to_char(sysdate,''RRRR'');',
'    :P461_cod_moneda   := bs_busca_parametro(''BS'', ''COD_MONEDA_ORIGEN'');',
'',
'',
' -- INSERT CABECERA/PEDIDO',
' INSERT INTO CP_ORD_PEDIDOS_CAB(',
'     COD_EMPRESA,    ',
'     TIP_PEDIDO, ',
'     NRO_PEDIDO, ',
'     COD_SUCURSAL,   ',
'     FECHA,   ',
'     ESTADO,  ',
'     COMENTARIO, ',
'     COD_MONEDA, ',
'     TIP_CAMBIO, ',
'     COD_PERSONA,    ',
'     FEC_COMPRA, ',
'     COD_USUARIO,    ',
'     COD_USUARIO_EST,    ',
'     FEC_ESTADO, ',
'     NOMBRE, ',
'     COD_SECCION,    ',
'     HORA_ALTA,  ',
'     IND_CREADO, ',
'     TIPO,   ',
'     COD_SECTOR,  ',
'     COD_SUCURSAL_EMP,   ',
'     COD_AREA,   ',
'     COD_DEPARTAMENTO,   ',
'     COD_USR_INS,    ',
'     FEC_HOR_INS,       ',
'     COD_CENTRO_COSTO,   ',
'     COD_EJERCICIO',
'     )VALUES (',
'      :P_COD_EMPRESA,',
'     ''PED'',',
'     :P461_NRO_PEDIDO,',
'     :P461_COD_SUCURSAL,',
'     :P461_FECHA,',
'     ''P'',',
'     :P461_COMENTARIO,',
'     :P461_COD_MONEDA,',
'     :P461_TIP_CAMBIO,',
'     :P461_COD_PERSONA,',
'     SYSDATE,',
'     :P_COD_USUARIO,',
'     :P_COD_USUARIO,',
'     SYSDATE,',
'     :P461_NOMBRE,',
'     NULL,',
'     to_char(sysdate,''HH24:MI:SS''),',
'     ''S'',',
'    :P461_TIPO,',
'    :p461_cod_sector,',
'    :P461_COD_SUCURSAL_EMP,',
'    :P461_COD_AREA,',
'    :P461_COD_DEPARTAMENTO,',
'    :P_COD_USUARIO,',
'    SYSDATE,',
'    :P461_COD_CENTRO_COSTO,',
'    :P461_COD_EJERCICIO);',
'',
'--INSERT DETALLE/ARTICULOS',
'',
'        CPPRPECM.PR_CONFIRMAR_DET( PI_COD_EMPRESA => :P_COD_EMPRESA,',
'                                   PI_NRO_PEDIDO => :P461_NRO_PEDIDO',
'                                  );',
'',
'  ELSE ',
'  -- UPDATE CABECERA/PEDIDO',
'',
'    UPDATE CP_ORD_PEDIDOS_CAB',
'    SET COD_PERSONA = :P461_COD_PERSONA,',
'        COD_SUCURSAL_EMP = :P461_COD_SUCURSAL_EMP,',
'        COD_AREA = :P461_COD_AREA,',
'        COD_DEPARTAMENTO = :P461_COD_DEPARTAMENTO,',
'        COD_CENTRO_COSTO = :P461_COD_CENTRO_COSTO,',
'        COMENTARIO = :P461_COMENTARIO,',
'        COD_USR_UPD = :P_COD_USUARIO,',
'        FEC_HOR_UPD = SYSDATE',
'    WHERE COD_EMPRESA = :P_COD_EMPRESA ',
'    AND NRO_PEDIDO = :P461_NRO_PEDIDO;',
'',
'    --- UPDATE DETALLE/ARTICULOS',
'     CPPRPECM.PR_CONFIRMAR_DET( PI_COD_EMPRESA => :P_COD_EMPRESA,',
'                                   PI_NRO_PEDIDO => :P461_NRO_PEDIDO',
'                                  );',
'',
'  END IF;',
'',
'        EXCEPTION',
'            WHEN OTHERS THEN ',
'                    :P461_MESSAGE := ''Error al guardar.'';',
'                    APEX_DEBUG.ERROR(SQLERRM);',
'    END;',
''))
,p_attribute_02=>'P461_NRO_PEDIDO,P461_COD_SUCURSAL,P461_FECHA,P461_COMENTARIO,P461_COD_MONEDA,P461_TIP_CAMBIO,P461_COD_PERSONA,P461_NOMBRE,P461_TIPO,P461_COD_SECTOR,P461_COD_SUCURSAL_EMP,P461_COD_AREA,P461_COD_DEPARTAMENTO,P461_COD_CENTRO_COSTO,P461_COD_EJERCICIO,P46'
||'1_TIP_PEDIDO,P461_LIST_COD_ARTICULO,P461_NEW_COD_UNIDAD_MEDIDA,P461_NEW_CANTIDAD,P461_NEW_OBSERVACION'
,p_attribute_03=>'P461_MESSAGE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(140860549587985715)
,p_event_id=>wwv_flow_imp.id(139785754915358205)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_02=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(140516914372100022)
,p_name=>'DA_PROCESADO'
,p_event_sequence=>270
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P461_PROCESADO'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(140516666918100019)
,p_event_id=>wwv_flow_imp.id(140516914372100022)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P461_ESTADO'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P461_PERMITE_PROCESAR'
,p_client_condition_expression=>'S'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(140516760211100020)
,p_event_id=>wwv_flow_imp.id(140516914372100022)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P461_ESTADO'
,p_client_condition_type=>'NOT_EQUALS'
,p_client_condition_element=>'P461_PERMITE_PROCESAR'
,p_client_condition_expression=>'S'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(140518277835100035)
,p_name=>'DA_APROBAR'
,p_event_sequence=>280
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(135830520743788827)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(140518380581100036)
,p_event_id=>wwv_flow_imp.id(140518277835100035)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'		vseccion_solicita varchar2(100);',
'		vseccion_aprueba varchar2(100);',
'		VPERSONA varchar2(100);',
'        ',
'		vsuc_solicita rh_empleados.cod_sucursal%type;   ',
'		varea_solicita rh_empleados.cod_area%type;',
'		vdpto_solicita rh_empleados.cod_departamento%type;',
'		',
'		vsuc_aprueba rh_empleados.cod_sucursal%type;   ',
'		varea_aprueba rh_empleados.cod_area%type;',
'		vdpto_aprueba rh_empleados.cod_departamento%type;',
'',
'		varea_aprueba_val rh_empleados.cod_area%type;',
'		vdpto_aprueba_val rh_empleados.cod_departamento%type;',
'		',
'BEGIN',
'				--Estructura del solicitante',
'				Begin',
'						select e.cod_sucursal,',
'							   e.cod_area,',
'							   e.cod_departamento',
'						  into vsuc_solicita,',
'						  	   varea_solicita,',
'						  	   vdpto_solicita',
'						  from rh_empleados e,  ',
'						  	   personas p',
'						 where e.cod_empresa  = :p_cod_empresa',
'						   and e.cod_persona  = :p461_cod_persona',
'						   and e.cod_persona  = p.cod_persona',
'						   and nvl(e.activo, ''N'') = ''S'' ',
'						   and rownum = 1;',
'				exception                          ',
'						When Others Then	',
'								vsuc_solicita  := ''x'';			',
'								varea_solicita := ''x'';',
'						        vdpto_solicita := ''x'';',
'				end;',
'				',
'				--Estructura del usuario conectado',
'',
'				Begin',
'						select e.cod_sucursal,',
'							   e.cod_area,',
'							   e.cod_departamento, ',
'							   U.COD_PERSONA',
'						  into vsuc_aprueba,',
'						  	   varea_aprueba,',
'						  	   vdpto_aprueba, ',
'						  	   VPERSONA',
'						  from rh_empleados e,   ',
'						  	   usuarios u',
'						 where e.cod_empresa  = :p_cod_empresa',
'							 --and e.cod_empresa  = u.cod_empresa',
'							 and e.cod_persona  = u.cod_persona',
'							 and U.cod_usuario  = :p_cod_usuario',
'							 and nvl(e.activo, ''N'') = ''S''',
'							 and rownum = 1;',
'				exception                          ',
'						When Others Then',
'						    vsuc_aprueba := ''x'';',
'						    varea_aprueba := ''x'';',
'						    vdpto_aprueba := ''x'';',
'				end;',
' 				',
unistr(' 				--Verifica si el usuario conectado puede aprobar en esa \00E1rea/departamento'),
'				Begin',
'						select e.cod_sucursal,',
'							   e.cod_area,',
'							   e.cod_departamento',
'						  into :P461_VSUC_APRUEBA_VAL,',
'						  	   varea_aprueba_val,',
'						  	   vdpto_aprueba_val',
'						  from cp_aprueba_oc e,   ',
'						  	   usuarios u',
'					 	 where e.cod_empresa  = :P_cod_empresa',
'						   --and e.cod_empresa  = u.cod_empresa',
'						   and e.cod_usuario  = u.cod_usuario',
'						   --',
'						   and e.cod_sucursal = :P461_cod_sucursal_emp--vsuc_solicita',
'						   and e.cod_area = :P461_cod_area--varea_solicita',
'						   and e.cod_departamento = :P461_cod_departamento--vdpto_solicita',
'						   --',
'						   and U.cod_usuario = :p_cod_usuario',
'						   and rownum = 1;',
'				exception                          ',
'						When Others Then',
'								:P461_VSUC_APRUEBA_VAL  := ''x'';',
'    					  		varea_aprueba_val  := ''x'';',
'    					  		vdpto_aprueba_val  := ''x'';',
'				end;',
'',
'',
'	IF :p_cod_empresa is not null',
'		then',
'			IF (nvl(vsuc_aprueba, ''x'') = nvl(vsuc_solicita, ''z'') ',
'				and nvl(varea_aprueba, ''x'') = nvl(varea_solicita, ''z'') ',
'                and nvl(vdpto_aprueba, ''x'') = nvl(vdpto_solicita, ''z'') ) ',
'                    THEN		 ',
'			   		    :P461_VPUEDE:= ''S'';',
'			else ',
'				',
'					:P461_VPUEDE:= ''N'';',
'			end IF;',
'		',
'			IF (nvl(:P461_VSUC_APRUEBA_VAL, ''x'') = nvl(vsuc_solicita, ''z'') ',
'            and nvl(varea_aprueba_val, ''x'') = nvl(varea_solicita, ''z'') ',
'            and nvl(vdpto_aprueba_val, ''x'') = nvl(vdpto_solicita, ''z'')) ',
'				THEN',
'					:P461_VPUEDE:=''S'';  ',
'			end IF;',
'',
'			IF (nvl(:P461_VSUC_APRUEBA_VAL, ''x'') = nvl(:P461_COD_SUCURSAL_EMP, ''z'') ',
'				and nvl(varea_aprueba_val, ''x'') = nvl(:P461_COD_AREA, ''z'') ',
'				and nvl(vdpto_aprueba_val, ''x'') = nvl(:P461_COD_DEPARTAMENTO, ''z'')) ',
'			THEN',
'				:P461_VPUEDE:=''S'';  ',
'			end IF;',
'		',
'			IF VPERSONA = :P461_COD_PERSONA ',
'				THEN ',
'					IF NVL(:P461_APRUEBA_OC_PROPIA,''N'') = ''N''  ',
'						THEN',
'		      				:P461_VPUEDE:=''N'';',
'					END IF;',
'			end IF;',
'	END IF;',
'',
'END;'))
,p_attribute_02=>'P461_COD_PERSONA,P461_COD_USUARIO,P461_COD_SUCURSAL_EMP,P461_COD_AREA,P461_COD_DEPARTAMENTO,P461_VSUC_APRUEBA_VAL,P461_VPUEDE'
,p_attribute_03=>'P461_VSUC_APRUEBA_VAL,P461_VPUEDE,P461_CONF_REC_PED'
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
 p_id=>wwv_flow_imp.id(140518458403100037)
,p_event_id=>wwv_flow_imp.id(140518277835100035)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
' /*:P461_CONF_REC_PED := ''S''; ',
':P461_VPUEDE := ''S''; ',
':P461_VSUC_APRUEBA_VAL := ''S'';',
'*/',
'BEGIN',
' 	:P461_MESSAGE := null;',
'    :P461_VALERT := null;',
'',
'		IF NVL(:P461_CONF_REC_PED,''N'') = ''S'' THEN  ',
'',
'				IF :P461_VPUEDE =''S'' ',
'				and :p461_vsuc_aprueba_val <> ''x'' THEN',
'					',
'					begin ',
'					    ',
unistr('					   :P461_VALERT := ''\00BFDesea Aprobar el Pedido N\00BA ''||:P461_NRO_PEDIDO||'' ?'';'),
'					    ',
'					   ',
'					exception',
'					    when others then',
'					       --apex_debug.error(''Error IF aprobar''||sqlerrm);',
'                           ',
'                           null;',
'					end;',
'',
'				ELSIF :P461_VPUEDE =''S'' ',
'				and :p461_vsuc_aprueba_val = ''x'' THEN',
'',
'						:P461_MESSAGE :=''No cuenta con permiso para autorizar el pedido de compra de este departamento.'';	',
'         else ',
'         	:P461_MESSAGE :=''No cuenta con permiso para autorizar el pedido de compra ..'';	',
'				END IF;',
'	ELSE',
'',
'		:P461_MESSAGE := ''No cuenta con el permiso para autorizar el pedido de compra.'';',
'',
'	END IF;',
'',
'    EXCEPTION ',
'            when others then',
'                 apex_debug.error(''Error Aprobar ''||sqlerrm);',
'END;'))
,p_attribute_02=>'P461_CONF_REC_PED,P461_VSUC_APRUEBA_VAL,P461_NRO_PEDIDO,P461_CONF_REC_PED,P461_VPUEDE,P461_VALERT'
,p_attribute_03=>'P461_VALERT,P461_MESSAGE,P461_VPUEDE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(140518570327100038)
,p_event_id=>wwv_flow_imp.id(140518277835100035)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>'&P461_VALERT.'
,p_attribute_03=>'information'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P461_VALERT'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(140518654764100039)
,p_event_id=>wwv_flow_imp.id(140518277835100035)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'',
'V_DATE DATE;',
'V_USUARIO VARCHAR2(30);',
'V_ESTADO VARCHAR2(3);',
'V_APROBADO_POR VARCHAR2(30);',
'V_FEC_APROBACION DATE;',
'',
'BEGIN',
'',
'    IF :P461_VALERT is not null then',
'        V_DATE := SYSDATE;',
'        V_USUARIO := :P_COD_USUARIO;',
'        V_ESTADO := ''A'';',
'        V_APROBADO_POR:= :P_COD_USUARIO;',
'        V_FEC_APROBACION := SYSDATE;',
'',
'        UPDATE cp_ord_pedidos_cab',
'        SET',
'         ESTADO = V_ESTADO,',
'         COD_USUARIO_EST = V_USUARIO,',
'         FEC_ESTADO = V_DATE,',
'         COMENTARIO =:P461_COMENTARIO,',
'         APROBADO_POR = V_APROBADO_POR,',
'         FEC_APROBACION = V_FEC_APROBACION',
'',
'        WHERE cod_empresa = :P_COD_EMPRESA',
'            and nro_pedido = :P461_NRO_PEDIDO',
'            --and tip_pedido = :P461_TIP_PEDIDO',
'            ;',
'    ELSE ',
'        null;',
'    ',
'    END IF;',
'',
'END;',
'',
''))
,p_attribute_03=>'P461_ESTADO,P461_APROBADO_POR,P461_FEC_APROBACION,P461_COD_USUARIO_EST,P461_COMENTARIO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P461_VALERT'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(140519648816100049)
,p_event_id=>wwv_flow_imp.id(140518277835100035)
,p_event_result=>'TRUE'
,p_action_sequence=>80
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_02=>'Y'
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P461_MESSAGE'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(140859101010985701)
,p_name=>'DA_ENVIAR_EMAIL'
,p_event_sequence=>290
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(136902055154869606)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(140859269434985702)
,p_event_id=>wwv_flow_imp.id(140859101010985701)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'vhost   varchar2(400) ;',
'vurl varchar(400);',
'vemail varchar(200);',
'vremitente varchar(100);',
'BEGIN',
'    :P461_MESSAGE := null;',
'       ',
'    IF :P461_EMAIL is not NULL ',
'    and :P461_NRO_PEDIDO is not NULL then',
'',
'    vhost := bs_busca_parametro(''BS'', ''HOST_CORREO'');',
'    vemail := :P461_EMAIL;',
'    ',
'    vurl :=''https://ngosaeca.com.py/reportes/rest_v2/reports/reports/CPPRPECM.pdf?''',
'            || ''P_COD_EMPRESA='' || :p_cod_empresa ',
'            || ''&P_COD_USUARIO='' || :P461_COD_USUARIO',
'            ||''&P_NRO_COMPROBANTE=''|| :P461_NRO_PEDIDO',
'            || ''&P_SIN_PRECIOS='' || :p_sin_precios',
'            ||''&j_username=jasperadmin&j_password=jasperadmin'';',
'',
'    vremitente := ''mail@ngosaeca.com.py'';',
'',
'',
'',
'',
'    EnviarCorreo( ENVIA => vremitente,',
'                  RECIBE => vemail,',
'                  ASUNTO => ''Link del Reporte, pedido N: ''||:P461_NRO_PEDIDO, ',
'                  MENSAJE => '' Para acceder al reporte, ingrese al siguiente link: ''|| vurl,',
'                  HOST =>  vhost',
'                  );',
'        ',
'     --  apex_debug.error(''Email: ''||:P461_EMAIL || '' Nro_pedido ''|| :P461_NRO_PEDIDO );',
'',
'    ELSE ',
'         CASE',
'            when :P461_EMAIL is null then :P461_MESSAGE := ''Ingrese un e-mail.'';',
unistr('            when :P461_NRO_PEDIDO is null then :P461_MESSAGE := ''Seleccione un N\00B0 de pedido.'';'),
'         END CASE;',
'           ',
'    END IF;',
' ',
'',
'',
'    EXCEPTION',
'            when others then',
'                    apex_debug.error(''Error al enviar e-mail ''||sqlerrm);',
' END;'))
,p_attribute_02=>'P461_EMAIL, P461_PRECIBE, P461_PASUNTO, P461_PMENSAJE, P461_PHOST, P461_IMAGEN,P461_NRO_PEDIDO'
,p_attribute_03=>'P461_EMAIL,P461_NRO_PEDIDO,P461_MESSAGE,P461_MENSAJE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(143546271593760107)
,p_event_id=>wwv_flow_imp.id(140859101010985701)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_02=>'Y'
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P461_MESSAGE'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(140859925209985709)
,p_name=>'DA_REPORTE'
,p_event_sequence=>300
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(135830911852788831)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(140860058381985710)
,p_event_id=>wwv_flow_imp.id(140859925209985709)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'imprimirReporteCPPRPECM(apex.item(''P_COD_EMPRESA'').getValue(),',
'                        apex.item(''P461_COD_USUARIO'').getValue(), ',
'                        apex.item(''P461_NRO_PEDIDO'').getValue(),',
'                         apex.item(''P461_SIN_PRECIO'').getValue() );'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(164913241774155919)
,p_name=>'DA_NRO_NEW'
,p_event_sequence=>310
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(164914059886155927)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(164914133656155928)
,p_event_id=>wwv_flow_imp.id(164913241774155919)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P461_NRO_PEDIDO := null;',
':P461_FECHA := null;',
':P461_COD_SUCURSAL :=  :P_COD_SUCURSAL;',
':P461_FEC_COMPRA := null;',
':P461_TIPO := null;',
':P461_COD_SECTOR := null;',
':P461_TIP_PEDIDO := null;',
':P461_COD_PERSONA := null;',
':P461_NOMBRE := null;',
':P461_COD_SUCURSAL_EMP := null;',
':P461_DESC_SUCURSAL_EMP := null;',
':P461_COD_AREA := null;',
':P461_DESC_AREA := null;',
':P461_COD_DEPARTAMENTO := null;',
':P461_DESC_DEPARTAMENTO := null;',
':P461_COD_CENTRO_COSTO := null;',
':P461_DESC_CENTRO_COSTO := null;',
':P461_COMENTARIO := null;',
':P461_COD_EJERCICIO := null;',
':P461_MENSAJE := null;',
':P461_ESTADO := null;',
':P461_COD_USUARIO_EST := null;',
':P461_FEC_ESTADO := null;',
':P461_COD_USR_INS := null;',
':P461_FEC_HOR_INS := null;',
':P461_COD_USR_UPD := null;',
':P461_FEC_USR_UPD := null;',
':P461_AUX_CREAR := ''S'';'))
,p_attribute_03=>'P461_NRO_PEDIDO ,P461_FECHA, P461_COD_SUCURSAL,P461_FEC_COMPRA,P461_TIPO,P461_COD_SECTOR,P461_TIP_PEDIDO,P461_COD_PERSONA,P461_NOMBRE,P461_COD_SUCURSAL_EMP,P461_DESC_SUCURSAL_EMP,P461_COD_AREA,P461_DESC_AREA,P461_COD_DEPARTAMENTO,P461_DESC_DEPARTAMEN'
||'TO,P461_COD_CENTRO_COSTO,P461_DESC_CENTRO_COSTO,P461_COMENTARIO,P461_COD_EJERCICIO,P461_MENSAJE,P461_ESTADO,P461_COD_USUARIO_EST,P461_FEC_ESTADO,P461_COD_USR_INS,P461_FEC_HOR_INS,P461_COD_USR_UPD,P461_FEC_USR_UPD,P461_AUX_CREAR'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(164914312269155930)
,p_event_id=>wwv_flow_imp.id(164913241774155919)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'apex_collection.create_or_truncate_collection(p_collection_name => ''COL_DET_CPPRPECM'');'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(164914220516155929)
,p_event_id=>wwv_flow_imp.id(164913241774155919)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(135828000775788802)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(164913350833155920)
,p_event_id=>wwv_flow_imp.id(164913241774155919)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    SELECT NVL(MAX(TO_NUMBER(NRO_PEDIDO)),0)+1',
'    INTO :P461_NRO_PEDIDO ',
'    FROM cp_ord_pedidos_cab;',
'',
'    :P461_AUX := ''S'';',
'    ',
'    EXCEPTION',
'        WHEN OTHERS THEN',
'                APEX_DEBUG.ERROR(''Error generando nro_pedido: ''||SQLERRM);',
'END;'))
,p_attribute_03=>'P461_NRO_PEDIDO,P461_AUX'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(164915736931155944)
,p_name=>'da_disable_bt_aux'
,p_event_sequence=>370
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P461_AUX'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(164915876066155945)
,p_event_id=>wwv_flow_imp.id(164915736931155944)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(135830712887788829)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P461_AUX'
,p_client_condition_expression=>'S'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(164915974120155946)
,p_event_id=>wwv_flow_imp.id(164915736931155944)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(135830520743788827)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P461_AUX'
,p_client_condition_expression=>'S'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(164916058387155947)
,p_event_id=>wwv_flow_imp.id(164915736931155944)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(135831006671788832)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P461_AUX'
,p_client_condition_expression=>'S'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(164916169852155948)
,p_event_id=>wwv_flow_imp.id(164915736931155944)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(135830891327788830)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P461_AUX'
,p_client_condition_expression=>'S'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(164916237531155949)
,p_event_id=>wwv_flow_imp.id(164915736931155944)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(135830648149788828)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P461_AUX'
,p_client_condition_expression=>'S'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(164913761344155924)
,p_event_id=>wwv_flow_imp.id(164915736931155944)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P461_COD_SECTOR'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P461_AUX'
,p_client_condition_expression=>'S'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(164916384091155950)
,p_event_id=>wwv_flow_imp.id(164915736931155944)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(135830911852788831)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P461_AUX'
,p_client_condition_expression=>'S'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(164913856064155925)
,p_event_id=>wwv_flow_imp.id(164915736931155944)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P461_COD_SECTOR,P461_TIPO'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P461_AUX'
,p_client_condition_expression=>'S'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(164913547014155922)
,p_event_id=>wwv_flow_imp.id(164915736931155944)
,p_event_result=>'TRUE'
,p_action_sequence=>80
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    ',
'    :P461_FECHA := SYSDATE;',
'    :P461_FEC_COMPRA := SYSDATE;',
'    :P461_FEC_ESTADO := SYSDATE;',
'    :P461_COD_USUARIO_EST := :P_COD_USUARIO;',
'',
'    EXCEPTION',
'        WHEN OTHERS THEN',
'            APEX_DEBUG.ERROR(''Error asignando valores: ''||SQLERRM);',
'END;'))
,p_attribute_02=>'P461_AUX'
,p_attribute_03=>'P461_FECHA,P461_FEC_COMPRA,P461_COD_USUARIO_EST,P461_FEC_ESTADO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P461_AUX'
,p_client_condition_expression=>'S'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(165166150189534708)
,p_name=>'da_enable_bt_aux'
,p_event_sequence=>380
,p_condition_element=>'P461_AUX'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'N'
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(165166202469534709)
,p_event_id=>wwv_flow_imp.id(165166150189534708)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(135830712887788829)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(165166305201534710)
,p_event_id=>wwv_flow_imp.id(165166150189534708)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(135830520743788827)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(165166429663534711)
,p_event_id=>wwv_flow_imp.id(165166150189534708)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(139785648804358204)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(165166518145534712)
,p_event_id=>wwv_flow_imp.id(165166150189534708)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(135831006671788832)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(165166693054534713)
,p_event_id=>wwv_flow_imp.id(165166150189534708)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(135830891327788830)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(165166783799534714)
,p_event_id=>wwv_flow_imp.id(165166150189534708)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(135830648149788828)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(165166857008534715)
,p_event_id=>wwv_flow_imp.id(165166150189534708)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(135830911852788831)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(71553130770239509)
,p_name=>'da_nuevo'
,p_event_sequence=>390
,p_condition_element=>'P461_AUX_CREAR'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'S'
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(71553258342239510)
,p_event_id=>wwv_flow_imp.id(71553130770239509)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    -- Genera un numero de pedido',
'    SELECT NVL(MAX(TO_NUMBER(NRO_PEDIDO)),0)+1',
'    INTO :P461_NRO_PEDIDO ',
'    FROM cp_ord_pedidos_cab;',
'',
'    :P461_AUX := ''S'';',
'',
'    :P461_COD_SUCURSAL := :P_COD_SUCURSAL;',
'    ',
'    EXCEPTION',
'        WHEN OTHERS THEN',
'                APEX_DEBUG.ERROR(''Error generando nro_pedido: ''||SQLERRM);',
'END;'))
,p_attribute_03=>'P461_NRO_PEDIDO,P461_AUX,P461_COD_SUCURSAL'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P461_AUX_CREAR'
,p_client_condition_expression=>'S'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(71553445025239512)
,p_event_id=>wwv_flow_imp.id(71553130770239509)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    ',
'',
'    apex_collection.create_or_truncate_collection(p_collection_name => ''COL_DET_CPPRPECM'');',
'',
'    EXCEPTION',
'        WHEN OTHERS THEN',
'                APEX_DEBUG.ERROR(SQLERRM);',
'END;'))
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(71553508814239513)
,p_event_id=>wwv_flow_imp.id(71553130770239509)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(135828000775788802)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(169508959771093701)
,p_name=>'da_aux_crear'
,p_event_sequence=>400
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P461_AUX_CREAR'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(169509058398093702)
,p_event_id=>wwv_flow_imp.id(169508959771093701)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    :P461_COD_SUCURSAL := :P_COD_SUCURSAL;',
'',
'    EXCEPTION',
'        WHEN OTHERS THEN',
'                APEX_DEBUG.ERROR(SQLERRM);',
'END;'))
,p_attribute_02=>'P461_AUX_CREAR'
,p_attribute_03=>'P461_COD_SUCURSAL'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_server_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_server_condition_expr1=>'P461_AUX_CREAR'
,p_server_condition_expr2=>'S'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(136367047570469705)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'PR_CLEAR'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_process_when_type=>'NEVER'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(136367299753469707)
,p_process_sequence=>20
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_INIT'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P461_Cod_Modulo := ''CP'';',
':P461_tip_pedido:= ''PED'';',
':P461_cod_forma:=''CPPRPECM'';',
':P461_cod_usuario:=:P_COD_USUARIO;',
':P461_carga_sucursal := busca_permiso(:P_cod_empresa,',
'	                                  :P461_cod_forma,',
'	                                  :P461_cod_usuario,',
'	                                  ''CARGA SUCURSAL'' );',
'',
':P461_CONFIRMA_ORDEN := busca_permiso(:P_cod_empresa,',
'                                      :p461_cod_forma,',
'                                      :p461_cod_usuario,',
'                                      ''CONF_RECH_PEDIDO'' );',
'                                               ',
':P461_permite_procesar := busca_permiso(:P_cod_empresa,',
'                                             :P461_cod_forma,',
'                                             :P461_cod_usuario,',
'                                             ''CONF_PROC_PEDIDO'' );',
'                                             ',
':P461_CONF_REC_PED := busca_permiso(:P_cod_empresa, ',
'									     :P461_cod_forma, ',
'									     :P461_cod_usuario,  ',
'									     ''CONF_RECH_PEDIDO'' ) ; ',
'																				 ',
':P461_APRUEBA_OC_PROPIA := busca_permiso(:P_cod_empresa, ',
'									          :P461_cod_forma, ',
'									          :P461_cod_usuario,  ',
'									          ''APRUEBA_OC_PROPIA'' ) ;	',
'																				 ',
':P461_permite_modif_area := busca_permiso(:P_cod_empresa, ',
'											   :P461_cod_forma, ',
'											   :P461_cod_usuario,  ',
'											   ''MODIF_AREA_PEDIDO''); 																				 																			 																			 ',
':P461_AUX := ''N'';',
'',
'',
''))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_imp.component_end;
end;
/
