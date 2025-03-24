prompt --application/pages/page_00776
begin
--   Manifest
--     PAGE: 00776
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
 p_id=>776
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'Planilla de recepcion de Pedidos-CMRECPED'
,p_alias=>'PLANILLA-DE-RECEPCION-DE-PEDIDOS'
,p_step_title=>'Planilla de recepcion de Pedidos'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function soloNumeros(e){',
'  var key = e.charCode;',
'    return key >= 48 && key <= 57;',
'}',
'function validarNoNulo(){',
'    var item_1 = apex.item("P776_NRO_COMPROBANTE_REF").getValue();    ',
' ',
'  apex.message.clearErrors();',
'  apex.item("P776_ERROR").setValue(''0'');    ',
'',
'    if (item_1 == '''' ){',
'        apex.message.showErrors([{',
'                                type: apex.message.TYPE.ERROR,',
'                                location: "inline",',
'                                pageItem: "P776_NRO_COMPROBANTE_REF",',
unistr('                                message: "Ingrese el N\00FAmero de comprobante REF."'),
'                                }]); ',
'        apex.item("P776_ERROR").setValue(''1'');                            ',
'    }  ',
'} '))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_last_updated_by=>'JUANASIS'
,p_last_upd_yyyymmddhh24miss=>'20240905154128'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(392509712968334713)
,p_plug_name=>'CM_REC_PEDIDO_CAB'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>940
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ROWID R_ID,',
'       COD_EMPRESA',
'       ,TIP_COMPROBANTE',
'       ,SER_COMPROBANTE',
'       ,NRO_COMPROBANTE',
'       ,TIP_COMPROBANTE||''-''||SER_COMPROBANTE||''-''||NRO_COMPROBANTE Comprobante,     ',
'       COD_SUCURSAL,',
'       FEC_COMPROBANTE,',
'       HORA,       ',
'       TIP_COMPROBANTE_REF,',
'       SER_COMPROBANTE_REF,',
'       NRO_COMPROBANTE_REF,',
'       ESTADO,',
'       FEC_ESTADO,',
'       COD_USUARIO,',
'       FEC_ALTA,       ',
'       CHOFER,      ',
'       HORA_ALTA,',
'       TOT_COMPROBANTE,',
'       COD_SUCURSAL_ENV,',
'       TRASLADO',
'       ,NULL TRAS_PEND',
'       ,null editar',
'  from CM_REC_PEDIDO_CAB',
'  WHERE COD_EMPRESA = :P_COD_EMPRESA',
'  and (TIP_COMPROBANTE = :P776_F_TIP_COMPROBANTE or :P776_F_TIP_COMPROBANTE is null)',
'  and (SER_COMPROBANTE = :P776_F_SER_COMPROBANTE or :P776_F_SER_COMPROBANTE is null)',
'  and (NRO_COMPROBANTE = :P776_F_NRO_COMPROBANTE or :P776_F_NRO_COMPROBANTE is null)',
'  and (COD_SUCURSAL = :P776_F_COD_SUCURSAL or :P776_F_COD_SUCURSAL is null)',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P776_F_TIP_COMPROBANTE,P776_F_SER_COMPROBANTE,P776_F_NRO_COMPROBANTE,P776_F_COD_SUCURSAL'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'CM_REC_PEDIDO_CAB'
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
 p_id=>wwv_flow_imp.id(392509848094334714)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y_OF_Z'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'JUANASIS'
,p_internal_uid=>392509848094334714
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(392509909596334715)
,p_db_column_name=>'COD_EMPRESA'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Cod Empresa'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(392510334590334719)
,p_db_column_name=>'COD_SUCURSAL'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Cod Sucursal'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(392510449998334720)
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
 p_id=>wwv_flow_imp.id(392510569312334721)
,p_db_column_name=>'HORA'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Hora'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(392510704153334723)
,p_db_column_name=>'TIP_COMPROBANTE_REF'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Tip Comprobante Ref'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(392510873734334724)
,p_db_column_name=>'SER_COMPROBANTE_REF'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Ser Comprobante Ref'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(392510967908334725)
,p_db_column_name=>'NRO_COMPROBANTE_REF'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Nro Comprobante Ref'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(392511082558334726)
,p_db_column_name=>'ESTADO'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Estado'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(392511193665334727)
,p_db_column_name=>'FEC_ESTADO'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Fec Estado'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(392511285905334728)
,p_db_column_name=>'COD_USUARIO'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>'Cod Usuario'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(392511335898334729)
,p_db_column_name=>'FEC_ALTA'
,p_display_order=>150
,p_column_identifier=>'O'
,p_column_label=>'Fec Alta'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(392511802149334734)
,p_db_column_name=>'CHOFER'
,p_display_order=>200
,p_column_identifier=>'T'
,p_column_label=>'Chofer'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(392512000850334736)
,p_db_column_name=>'HORA_ALTA'
,p_display_order=>220
,p_column_identifier=>'V'
,p_column_label=>'Hora Alta'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(392512101617334737)
,p_db_column_name=>'TOT_COMPROBANTE'
,p_display_order=>230
,p_column_identifier=>'W'
,p_column_label=>'Tot Comprobante'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(392512202840334738)
,p_db_column_name=>'COD_SUCURSAL_ENV'
,p_display_order=>240
,p_column_identifier=>'X'
,p_column_label=>'Cod Sucursal Env'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(392512331797334739)
,p_db_column_name=>'TRASLADO'
,p_display_order=>250
,p_column_identifier=>'Y'
,p_column_label=>'Traslado'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(392512493092334740)
,p_db_column_name=>'COMPROBANTE'
,p_display_order=>260
,p_column_identifier=>'Z'
,p_column_label=>'Comprobante'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(392604844497818504)
,p_db_column_name=>'TRAS_PEND'
,p_display_order=>270
,p_column_identifier=>'AA'
,p_column_label=>'Trasladar'
,p_column_link=>'javascript:$s(''P776_ROW_ID_TRASLADAR'',''#R_ID#'');'
,p_column_linktext=>'<span aria-hidden="true" class="fa fa-truck"></span>'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(392605123806818507)
,p_db_column_name=>'R_ID'
,p_display_order=>280
,p_column_identifier=>'AB'
,p_column_label=>'R Id'
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
 p_id=>wwv_flow_imp.id(393047177473806631)
,p_db_column_name=>'EDITAR'
,p_display_order=>290
,p_column_identifier=>'AC'
,p_column_label=>'Editar'
,p_column_link=>'f?p=&APP_ID.:782:&SESSION.::&DEBUG.::P782_P_NRO_COMPROBANTE,P782_P_SER_COMPROBANTE,P782_P_TIP_COMPROBANTE,P782_P_CARGA_PEDIDO:#NRO_COMPROBANTE#,#SER_COMPROBANTE#,#TIP_COMPROBANTE#,&P776_CARGA_PEDIDO.'
,p_column_linktext=>'<span aria-hidden="true" class="fa fa-edit"></span>'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(393047208000806632)
,p_db_column_name=>'TIP_COMPROBANTE'
,p_display_order=>300
,p_column_identifier=>'AD'
,p_column_label=>'Tip Comprobante'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(393047379679806633)
,p_db_column_name=>'SER_COMPROBANTE'
,p_display_order=>310
,p_column_identifier=>'AE'
,p_column_label=>'Ser Comprobante'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(393047477640806634)
,p_db_column_name=>'NRO_COMPROBANTE'
,p_display_order=>320
,p_column_identifier=>'AF'
,p_column_label=>'Nro Comprobante'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(392575546076613611)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'3925756'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>5
,p_report_columns=>'COMPROBANTE:FEC_COMPROBANTE:HORA:TIP_COMPROBANTE_REF:SER_COMPROBANTE_REF:NRO_COMPROBANTE_REF:COD_USUARIO:FEC_ALTA:CHOFER:TRASLADO:EDITAR:TRAS_PEND:'
,p_sort_column_1=>'FEC_COMPROBANTE'
,p_sort_direction_1=>'DESC'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(392512582031334741)
,p_plug_name=>'Trasladar'
,p_region_template_options=>'#DEFAULT#:js-dialog-size480x320'
,p_plug_template=>wwv_flow_imp.id(40117728043263659)
,p_plug_display_sequence=>950
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_grid_column_span=>6
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(392512730575334743)
,p_plug_name=>'Filtros'
,p_region_template_options=>'#DEFAULT#:is-expanded:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40108275410263656)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(392604519051818501)
,p_plug_name=>'AGREGAR'
,p_region_template_options=>'#DEFAULT#:js-dialog-size720x480'
,p_plug_template=>wwv_flow_imp.id(40117728043263659)
,p_plug_display_sequence=>960
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(378668113620118327)
,p_plug_name=>'Cabecera'
,p_parent_plug_id=>wwv_flow_imp.id(392604519051818501)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>940
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(378669409308118340)
,p_plug_name=>'Cabecera2'
,p_parent_plug_id=>wwv_flow_imp.id(392604519051818501)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>950
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(392508645585334702)
,p_plug_name=>unistr('Datos de creaci\00F3n')
,p_parent_plug_id=>wwv_flow_imp.id(392604519051818501)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>960
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(392604930533818505)
,p_plug_name=>'VARIABLES'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(392607463586818530)
,p_plug_name=>'PARAMETROS'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(392512629258334742)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(392512582031334741)
,p_button_name=>'BT_TRASLADO'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--stretch'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Traslado'
,p_warn_on_unsaved_changes=>null
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(392605795896818513)
,p_button_sequence=>110
,p_button_plug_id=>wwv_flow_imp.id(392604519051818501)
,p_button_name=>'BT_CANCELAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_image_alt=>'Cancelar'
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(392605634652818512)
,p_button_sequence=>100
,p_button_plug_id=>wwv_flow_imp.id(392604519051818501)
,p_button_name=>'BT_ACEPTAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Aceptar'
,p_button_position=>'CREATE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(392513435205334750)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(392512730575334743)
,p_button_name=>'BT_REFRESCAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Refrescar'
,p_button_position=>'NEXT'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-refresh'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(392605353896818509)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(392509712968334713)
,p_button_name=>'BT_AGREGAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Agregar'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(392743850081843037)
,p_branch_action=>'f?p=&APP_ID.:782:&SESSION.::&DEBUG.::P782_P_NRO_COMPROBANTE,P782_P_SER_COMPROBANTE,P782_P_TIP_COMPROBANTE:&P776_NRO_COMPROBANTE.,&P776_SER_COMPROBANTE.,&P776_TIP_COMPROBANTE.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(378668206605118328)
,p_name=>'P776_COD_EMPRESA'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(378668113620118327)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(378668384979118329)
,p_name=>'P776_COD_SUCURSAL'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(378668113620118327)
,p_prompt=>'Cod Sucursal'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
' Select descripcion D, COD_SUCURSAL R',
'       ',
'       from sucursales',
'      where cod_empresa = :P_COD_EMPRESA'))
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
 p_id=>wwv_flow_imp.id(378668493824118330)
,p_name=>'P776_NOM_SUCURSAL'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(378668113620118327)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(378668564345118331)
,p_name=>'P776_TIP_COMPROBANTE'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(378668113620118327)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(378668630970118332)
,p_name=>'P776_SER_COMPROBANTE'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(378668113620118327)
,p_prompt=>'Ser Comprobante'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cattributes_element=>'readonly'
,p_tag_attributes=>'readonly'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(378668794329118333)
,p_name=>'P776_NRO_COMPROBANTE'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(378668113620118327)
,p_prompt=>'Nro Comprobante'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cattributes_element=>'readonly'
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
 p_id=>wwv_flow_imp.id(378668854327118334)
,p_name=>'P776_FEC_COMPROBANTE'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(378668113620118327)
,p_prompt=>'Fec Comprobante'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cattributes_element=>'readonly'
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
 p_id=>wwv_flow_imp.id(378668971065118335)
,p_name=>'P776_HORA'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(378668113620118327)
,p_prompt=>'Hora'
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
 p_id=>wwv_flow_imp.id(378669025053118336)
,p_name=>'P776_TIP_COMPROBANTE_REF'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(378668113620118327)
,p_prompt=>'Tip Comprobante Ref'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cattributes_element=>'readonly'
,p_tag_attributes=>'readonly'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(378669183150118337)
,p_name=>'P776_SER_COMPROBANTE_REF'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(378668113620118327)
,p_prompt=>'Ser Comprobante Ref'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cattributes_element=>'readonly'
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
 p_id=>wwv_flow_imp.id(378669240226118338)
,p_name=>'P776_NRO_COMPROBANTE_REF'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(378668113620118327)
,p_prompt=>'Nro Comprobante Ref'
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
 p_id=>wwv_flow_imp.id(378669375801118339)
,p_name=>'P776_CHOFER'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(378669409308118340)
,p_prompt=>unistr('Observaci\00F3n')
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>30
,p_cHeight=>3
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(378669532584118341)
,p_name=>'P776_COD_USUARIO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(392508645585334702)
,p_prompt=>'Por'
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
 p_id=>wwv_flow_imp.id(378669625125118342)
,p_name=>'P776_FEC_ALTA'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(392508645585334702)
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
 p_id=>wwv_flow_imp.id(378669703718118343)
,p_name=>'P776_IVA_PARCIAL'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(378669409308118340)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(378669875987118344)
,p_name=>'P776_SUBTOTAL_PARCIAL'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(378669409308118340)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(378669912817118345)
,p_name=>'P776_EXCENTAS_PARCIAL'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(378669409308118340)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(378670024455118346)
,p_name=>'P776_GRAVADAS_PARCIAL'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(378669409308118340)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(378670156617118347)
,p_name=>'P776_DECIMALES'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(378669409308118340)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(378670221101118348)
,p_name=>'P776_CARGA_PEDIDO'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(378669409308118340)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(378670398726118349)
,p_name=>'P776_TIPO_IMPUESTO'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(378669409308118340)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(378670426294118350)
,p_name=>'P776_CONFIR_STOCK'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(378669409308118340)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(392508588594334701)
,p_name=>'P776_SUBTOTAL_ADUANA'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(378669409308118340)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(392508721925334703)
,p_name=>'P776_TOTAL_IVA'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(392508645585334702)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(392508853499334704)
,p_name=>'P776_GRAVADAS'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(392508645585334702)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(392508922399334705)
,p_name=>'P776_EXENTAS'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(392508645585334702)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(392509044933334706)
,p_name=>'P776_TOTAL'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(392508645585334702)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(392509178109334707)
,p_name=>'P776_SUB_TOT_PAR_ADUANA'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(392508645585334702)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(392509254846334708)
,p_name=>'P776_HORA_ALTA'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(392508645585334702)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(392509302974334709)
,p_name=>'P776_TRASLADO'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(392512582031334741)
,p_prompt=>'Traslado'
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
 p_id=>wwv_flow_imp.id(392509436879334710)
,p_name=>'P776_COD_SUCURSAL_ENV'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(392512582031334741)
,p_prompt=>unistr('C\00F3d. Sucursal')
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select cod_sucursal||''-''||descripcion D, cod_sucursal R',
'from sucursales ',
'where cod_empresa = :P_COD_EMPRESA',
'order by descripcion'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'Y'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(392509554676334711)
,p_name=>'P776_DESC_SUCURSAL_ENV'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(392512582031334741)
,p_prompt=>'Sucursal'
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
 p_id=>wwv_flow_imp.id(392512829940334744)
,p_name=>'P776_F_COD_SUCURSAL'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(392512730575334743)
,p_prompt=>'Sucursal'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Select  COD_SUCURSAL||''-''||descripcion  ,COD_SUCURSAL',
'from sucursales',
'where cod_empresa = :P_COD_EMPRESA',
'order by descripcion'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'TODAS'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'Y'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(392513080943334746)
,p_name=>'P776_F_SER_COMPROBANTE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(392512730575334743)
,p_prompt=>'Ser Comprobante'
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
 p_id=>wwv_flow_imp.id(392513131075334747)
,p_name=>'P776_F_NRO_COMPROBANTE'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(392512730575334743)
,p_prompt=>'Nro Comprobante'
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
 p_id=>wwv_flow_imp.id(392513314738334749)
,p_name=>'P776_F_TIP_COMPROBANTE'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(392512730575334743)
,p_prompt=>'Tip Comprobante'
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
 p_id=>wwv_flow_imp.id(392605027149818506)
,p_name=>'P776_ROW_ID_TRASLADAR'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(392604930533818505)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(392606048110818516)
,p_name=>'P776_V_CARGA_CONDICION'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(392604930533818505)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(392606101756818517)
,p_name=>'P776_V_CARGA_DESCUENTOS'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(392604930533818505)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(392606296266818518)
,p_name=>'P776_V_TIP_PEDIDO'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(392604930533818505)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(392606338333818519)
,p_name=>'P776_V_CARGA_COTIZACION'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(392604930533818505)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(392606410570818520)
,p_name=>'P776_V_CAMBIA_NRO_COMPROBANTE'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(392604930533818505)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(392606542938818521)
,p_name=>'P776_V_CONDICION_VENTA'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(392604930533818505)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(392606647458818522)
,p_name=>'P776_V_REFERENCIA'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(392604930533818505)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(392606735422818523)
,p_name=>'P776_V_PERMITE_ANULAR'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(392604930533818505)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(392606824296818524)
,p_name=>'P776_V_CARGA_PRECIOS'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(392604930533818505)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(392606943037818525)
,p_name=>'P776_V_PERMITE_AUTORIZAR'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(392604930533818505)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(392607055223818526)
,p_name=>'P776_V_COD_MONEDA_PREC'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(392604930533818505)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(392607117406818527)
,p_name=>'P776_V_LISTA_PRECIOS'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_imp.id(392604930533818505)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(392607271645818528)
,p_name=>'P776_V_SER_COMPROBANTE'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_imp.id(392604930533818505)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(392607338989818529)
,p_name=>'P776_V_TIP_COMPROBANTE'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_imp.id(392604930533818505)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(392607538005818531)
,p_name=>'P_IND_AJUSTE_STOCK'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(392607463586818530)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(392608068015818536)
,p_name=>'P776_ERROR'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(392604930533818505)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(392608877516818544)
,p_name=>'P776_MSJ'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(392604930533818505)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(392740559321843004)
,p_name=>'P776_MSJ_ERROR'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(392604930533818505)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(392604624881818502)
,p_name=>'DA_REFRESCAR'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(392513435205334750)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(392604703580818503)
,p_event_id=>wwv_flow_imp.id(392604624881818502)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(392509712968334713)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(392605467357818510)
,p_name=>'DA_AGREGAR'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(392605353896818509)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(392609140634818547)
,p_event_id=>wwv_flow_imp.id(392605467357818510)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF :P776_TIP_COMPROBANTE IS NULL THEN',
'    :P776_TIP_COMPROBANTE := :P776_V_TIP_COMPROBANTE;',
'END IF;'))
,p_attribute_02=>'P776_V_TIP_COMPROBANTE'
,p_attribute_03=>'P776_TIP_COMPROBANTE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(392605800908818514)
,p_event_id=>wwv_flow_imp.id(392605467357818510)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'--WHEN-CREATE-RECORD',
':P776_COD_EMPRESA := :P_COD_EMPRESA;',
':P776_COD_SUCURSAL := :P_COD_SUCURSAL;',
':P776_COD_USUARIO := :P_COD_USUARIO; ',
':P776_SER_COMPROBANTE:= :P776_V_SER_COMPROBANTE;',
':P776_TIP_COMPROBANTE_REF  := ''FAC'' ;',
':P776_SER_COMPROBANTE_REF  := ''A'' ;',
':P776_CARGA_PEDIDO :=''S'';',
':P776_HORA := TO_CHAR(sysdate, ''HH24:MI:SS'');',
'if :P776_NRO_COMPROBANTE IS NULL then',
'  begin',
'   Select max(nro_comprobante)',
'     into :P776_NRO_COMPROBANTE',
'     from CM_REC_PEDIDO_CAB',
'     where cod_empresa     = :P776_COD_EMPRESA and',
'          ',
'           ser_comprobante = ''A'';',
'       :P776_NRO_COMPROBANTE := nvl(:P776_NRO_COMPROBANTE,0) + 1;',
'   exception',
'     when others then',
'       :P776_NRO_COMPROBANTE := 1; ',
'  end;',
'end if; ',
'',
':P776_FEC_ALTA := sysdate;',
':P776_FEC_COMPROBANTE := sysdate;',
''))
,p_attribute_02=>'P776_V_SER_COMPROBANTE'
,p_attribute_03=>'P776_COD_EMPRESA,P776_COD_SUCURSAL,P776_COD_USUARIO,P776_SER_COMPROBANTE,P776_TIP_COMPROBANTE_REF,P776_SER_COMPROBANTE_REF,P776_CARGA_PEDIDO,P776_HORA,P776_NRO_COMPROBANTE,P776_FEC_ALTA,P776_FEC_COMPROBANTE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(392605541209818511)
,p_event_id=>wwv_flow_imp.id(392605467357818510)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(392604519051818501)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(392607679084818532)
,p_name=>'DA_COD_SUCURSAL'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P776_COD_SUCURSAL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
,p_display_when_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(392607748998818533)
,p_event_id=>wwv_flow_imp.id(392607679084818532)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P776_COD_SUCURSAL is not null then',
'   Begin',
'     Select descripcion',
'       into :P776_NOM_SUCURSAL',
'       from sucursales',
'      where cod_empresa = :P_COD_EMPRESA  and',
'            cod_sucursal = :P776_COD_SUCURSAL;',
'   exception',
'     when others then',
'         APEX_DEBUG.ERROR( ''No se encuentra Sucursal ''|| sqlerrm ) ;',
'   end;',
'end if;'))
,p_attribute_02=>'P776_COD_SUCURSAL'
,p_attribute_03=>'P776_NOM_SUCURSAL'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(392607875816818534)
,p_name=>'DA_SOLO_NUMEROS'
,p_event_sequence=>40
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P776_NRO_COMPROBANTE_REF'
,p_bind_type=>'bind'
,p_bind_event_type=>'keypress'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(392607942948818535)
,p_event_id=>wwv_flow_imp.id(392607875816818534)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if (!soloNumeros(event)){',
'      event.preventDefault();',
'}'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(392608106033818537)
,p_name=>'DA_ACEPTAR'
,p_event_sequence=>50
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(392605634652818512)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(392608265992818538)
,p_event_id=>wwv_flow_imp.id(392608106033818537)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'validarNoNulo();'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(392608392209818539)
,p_event_id=>wwv_flow_imp.id(392608106033818537)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(392604519051818501)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P776_ERROR'
,p_client_condition_expression=>'0'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(392608613073818542)
,p_event_id=>wwv_flow_imp.id(392608106033818537)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_01=>'GUARDAR'
,p_attribute_02=>'Y'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P776_ERROR'
,p_client_condition_expression=>'0'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(392608443577818540)
,p_name=>'DA_CANCELAR'
,p_event_sequence=>60
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(392605795896818513)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(392608511467818541)
,p_event_id=>wwv_flow_imp.id(392608443577818540)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(392604519051818501)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(392609375644818549)
,p_name=>'DA_ROW_ID_TRASLADAR'
,p_event_sequence=>80
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P776_ROW_ID_TRASLADAR'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(392741389384843012)
,p_event_id=>wwv_flow_imp.id(392609375644818549)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P776_TRASLADO,P776_DESC_SUCURSAL_ENV,P776_COD_SUCURSAL_ENV'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(392740299109843001)
,p_event_id=>wwv_flow_imp.id(392609375644818549)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(392512582031334741)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(392740633617843005)
,p_name=>'DA_MSJ_ERROR'
,p_event_sequence=>90
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P776_MSJ_ERROR'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(392740727022843006)
,p_event_id=>wwv_flow_imp.id(392740633617843005)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'&P776_MSJ_ERROR.'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(392741163374843010)
,p_name=>'DA_TRASLADO'
,p_event_sequence=>100
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(392512629258334742)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(392609421684818550)
,p_event_id=>wwv_flow_imp.id(392741163374843010)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>unistr('\00BFDesea generar el traslado?')
,p_attribute_02=>'Trasladar'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(392740880320843007)
,p_event_id=>wwv_flow_imp.id(392741163374843010)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'V_TRASLADO NUMBER;',
'V_SER_COMPROBANTE_REF VARCHAR2(100);',
'V_LOTE VARCHAR2(30);',
'V_NRO_COMPROBANTE_REF NUMBER; ',
'BEGIN',
'  ',
'    begin',
'        select TRASLADO,SER_COMPROBANTE,NRO_COMPROBANTE ',
'        INTO V_TRASLADO,V_SER_COMPROBANTE_REF,V_NRO_COMPROBANTE_REF ',
'        from CM_REC_PEDIDO_CAB',
'        WHERE ROWID = :P776_ROW_ID_TRASLADAR;',
'    EXCEPTION',
'        WHEN OTHERS THEN',
'            V_TRASLADO := NULL;             ',
'    end;',
'    if V_TRASLADO is null then',
'        if :P776_COD_SUCURSAL_ENV  is not null then ',
'         ',
'         BEGIN',
'            select descripcion',
'            into :P776_DESC_SUCURSAL_ENV',
'            from sucursales',
'           where cod_empresa = :P776_COD_EMPRESA',
'             and cod_sucursal = :P776_COD_SUCURSAL_ENV;',
'         EXCEPTION',
'            WHEN OTHERS THEN',
'                :P776_DESC_SUCURSAL_ENV := NULL;',
'         END;  ',
'    --VER LOTE',
'        CMRECPED.PR_VERIFICAR_LOTE_ARTICULO(PI_COD_EMPRESA =>:P_COD_EMPRESA,',
'                                    PI_SER_COMPROBANTE_REF =>V_SER_COMPROBANTE_REF,',
'                                    PI_NRO_COMPROBANTE_REF =>V_NRO_COMPROBANTE_REF,',
'                                    PI_COD_SUCURSAL_ENV => :P776_COD_SUCURSAL_ENV,',
'                                    PO_LOTE  => V_LOTE);',
'        IF V_LOTE IS NOT NULL THEN',
'            BEGIN         	',
'                :P776_TRASLADO:= V_NRO_COMPROBANTE_REF;',
'                CREA_traslado_repuesto_imp(p_cod_empresa => :P776_COD_EMPRESA,',
'                                        P_SER_COMPROBANTE_REF => V_SER_COMPROBANTE_REF ,',
'                                        P_NRO_COMPROBANTE_REF  => V_NRO_COMPROBANTE_REF,',
'                                        P_COD_SUCURSAL_ENV  => :P776_COD_SUCURSAL_ENV,',
'                                        P_NRO_COMPROBANTE  => :P776_TRASLADO );',
'               :P776_MSJ_ERROR := ''TRASLADO #''||:P776_TRASLADO||'' GENERADO'';',
'               :P776_ERROR := 0;',
'            EXCEPTION',
'         	    WHEN OTHERS THEN ',
'         	        :P776_MSJ_ERROR := ''ERROR-No se puede generar un traslado.''||SQLERRM;',
'            END;',
'        ELSE',
unistr('            :P776_MSJ_ERROR := ''ERROR-No se puede generar un traslado. No se encontro n\00FAmero de lote'';'),
'        END IF;',
'        else',
'        	 :P776_MSJ_ERROR := ''Debe seleccionar una sucursal para procesar el traslado'';',
'        	end if;',
'    ELSE',
'         :P776_MSJ_ERROR := ''No se puede generar un traslado, ya existe.'';     ',
'    end if;',
'END;'))
,p_attribute_02=>'P776_ROW_ID_TRASLADAR,P776_COD_EMPRESA,P776_COD_SUCURSAL_ENV'
,p_attribute_03=>'P776_MSJ_ERROR,P776_TRASLADO,P776_COD_SUCURSAL_ENV,P776_DESC_SUCURSAL_ENV'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(392740961728843008)
,p_event_id=>wwv_flow_imp.id(392741163374843010)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(392509712968334713)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P776_ERROR'
,p_client_condition_expression=>'0'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(392741434506843013)
,p_event_id=>wwv_flow_imp.id(392741163374843010)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(392512582031334741)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(392741535284843014)
,p_name=>'DA_COD_SUCURSAL_ENV'
,p_event_sequence=>110
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P776_COD_SUCURSAL_ENV'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(392741601663843015)
,p_event_id=>wwv_flow_imp.id(392741535284843014)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF :P776_COD_SUCURSAL_ENV is not null THEN',
'  BEGIN',
'  select descripcion',
'    into :P776_DESC_SUCURSAL_ENV',
'    from sucursales',
'   where cod_empresa = :P776_COD_EMPRESA',
'     and cod_sucursal = :P776_COD_SUCURSAL_ENV;',
'  EXCEPTION',
'  when no_data_found then',
'    :P776_DESC_SUCURSAL_ENV := NULL;',
unistr('    APEX_DEBUG.ERROR(''No se encuentra c\00F3digo de sucursal.'');'),
' ',
'  when others then',
'    :P776_DESC_SUCURSAL_ENV := NULL;',
'     APEX_DEBUG.ERROR(''Error en la tabla de Sucursales ''|| sqlerrm); ',
'  END;',
'END IF;'))
,p_attribute_02=>'P776_COD_EMPRESA,P776_COD_SUCURSAL_ENV'
,p_attribute_03=>'P776_DESC_SUCURSAL_ENV'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(392608775772818543)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_GUARDAR'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'CMRECPED.PR_GUARDAR_CAB(PI_COD_EMPRESA => :P776_COD_EMPRESA, ',
'                        PI_TIP_COMPROBANTE => :P776_TIP_COMPROBANTE,',
'                        PI_SER_COMPROBANTE => :P776_SER_COMPROBANTE,',
'                        PI_NRO_COMPROBANTE => :P776_NRO_COMPROBANTE,',
'                        PI_COD_SUCURSAL => :P776_COD_SUCURSAL,',
'                        PI_FEC_COMPROBANTE => :P776_FEC_COMPROBANTE,',
'                        PI_HORA => :P776_HORA, ',
'                        PI_TIP_COMPROBANTE_REF => :P776_TIP_COMPROBANTE_REF,',
'                        PI_SER_COMPROBANTE_REF => :P776_SER_COMPROBANTE_REF,',
'                        PI_NRO_COMPROBANTE_REF => :P776_NRO_COMPROBANTE_REF, ',
'                        PI_COD_USUARIO => :P776_COD_USUARIO,',
'                        PI_FEC_ALTA	 => :P776_FEC_ALTA, ',
'                        PI_CHOFER => :P776_CHOFER, ',
'                        PI_HORA_ALTA => :P776_HORA_ALTA, ',
'                        PI_COD_SUCURSAL_ENV => :P776_COD_SUCURSAL_ENV,',
'                        PI_TRASLADO => :P776_TRASLADO ,',
'                        PO_MSJ => :P776_MSJ);'))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'&P776_MSJ.'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'GUARDAR'
,p_process_when_type=>'REQUEST_EQUALS_CONDITION'
,p_process_success_message=>'&P776_MSJ.'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(392744416334843043)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'PR_LIMPIAR'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(392605935936818515)
,p_process_sequence=>20
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_INIT'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  --PRE-FORM',
'  --Almacena los valores en variables locales',
':P776_COD_EMPRESA := :P_COD_EMPRESA;',
'  if nvl( :P_IND_AJUSTE_STOCK, ''N'' ) = ''S'' then',
'      :P776_V_TIP_COMPROBANTE := BS_BUSCA_PARAMETRO( pcod_modulo => :P_COD_MODULO ,',
'                                                   pparametro =>''TIPO_FACTURA_AJS''  );',
'                           ',
'  else',
'     :P776_V_TIP_COMPROBANTE := BS_BUSCA_PARAMETRO( pcod_modulo => :P_COD_MODULO ,',
'                                                   pparametro =>''TIPO_FACTURA'' ) ;',
'  end if ;',
'  ',
'  :P776_V_SER_COMPROBANTE := BS_BUSCA_PARAMETRO( pcod_modulo => :P_COD_MODULO ,',
'                                                   pparametro => ''SERIE_FACTURA'') ;',
'  :P776_V_LISTA_PRECIOS   := BS_BUSCA_PARAMETRO( pcod_modulo => :P_COD_MODULO ,',
'                                                   pparametro => ''PRECIO_CONTADO''    ) ;',
'  :P776_V_CONDICION_VENTA :=BS_BUSCA_PARAMETRO( pcod_modulo => :P_COD_MODULO ,',
'                                                   pparametro => ''CONDICION_CONTADO'' ) ;',
'  :P776_V_COD_MONEDA_PREC := BS_BUSCA_PARAMETRO( pcod_modulo =>  ''ST'', ',
'                                                   pparametro =>  ''COD_MONEDA_PREC'' ) ;                                             ',
'  :P776_V_TIP_PEDIDO      := BS_BUSCA_PARAMETRO( pcod_modulo => ''CM'', ',
'                                                   pparametro => ''PEDIDOS_COMPRAS'') ;',
'  :P776_V_permite_autorizar :=   busca_permiso(p_empresa => :P_cod_empresa,',
'                                             p_forma   =>  ''CMRECPED'',',
'                                             p_usuario => :P_cod_usuario,',
'                                             p_permiso => ''PERMITE AUTORIZAR'') ;',
'  :P776_V_cambia_nro_comprobante := busca_permiso( :P_cod_empresa,',
'                                                     ''CMRECPED'',',
'                                                     :P_cod_usuario,',
'                                                     ''CAMBIA_NRO_COMPROBANTE'' ) ;',
'  begin',
'     Select permiso',
'     into :P776_V_carga_precios',
'     from permisos_opciones',
'     where cod_empresa = :P_cod_empresa and',
'           cod_usuario = :P_cod_usuario and',
'           parametro = ''CARGA PRECIOS'' ;',
'  exception',
'     when others then',
'          :P776_V_carga_precios := ''N'' ;',
'  end ;',
'  begin',
'     Select permiso',
'     into :P776_V_carga_descuentos',
'     from permisos_opciones',
'     where cod_empresa = :P_cod_empresa and',
'           cod_usuario = :P_cod_usuario and',
'           parametro = ''CARGA DESCUENTOS'' ;',
'  exception',
'     when others then',
'          :P776_V_carga_descuentos := ''N'' ;',
'  end ;  ',
'begin',
'     Select permiso',
'     into :P776_V_permite_anular',
'     from permisos_opciones',
'     where cod_empresa = :P_cod_empresa and',
'           cod_usuario = :P_cod_usuario and',
'           parametro = ''PERMITE ANULAR'' ;',
'  exception',
'     when others then',
'          :P776_V_carga_descuentos := ''N'' ;',
'  end ;',
'  begin',
'     Select permiso',
'     into :P776_V_carga_cotizacion',
'     from permisos_opciones',
'     where cod_empresa = :P_cod_empresa and',
'           cod_usuario = :P_cod_usuario and',
'           parametro = ''CARGA COTIZACION'' ;',
'  exception',
'     when others then',
'          :P776_V_carga_cotizacion := ''N'' ;',
'  end ;  ',
'  begin',
'     select ltrim(rtrim(valor))',
'       into :P776_V_referencia',
'       from parametros_generales',
'       where parametro = ''CODIFICA_CAMBIO'' ;',
'  exception',
'       when others then',
'           :P776_V_referencia := null ;',
'  end ;',
'  begin',
'     Select permiso',
'     into :P776_V_carga_condicion',
'     from permisos_opciones',
'     where cod_empresa = :P_cod_empresa and',
'           cod_usuario = :P_cod_usuario and',
'           parametro = ''CARGA CONDICION'' ;',
'  exception',
'     when others then',
'          :P776_V_carga_condicion := ''N'' ;',
'  end ;'))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_imp.component_end;
end;
/
