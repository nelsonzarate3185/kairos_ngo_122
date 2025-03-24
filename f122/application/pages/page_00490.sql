prompt --application/pages/page_00490
begin
--   Manifest
--     PAGE: 00490
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
 p_id=>490
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'Solicitud de Ajustes  - STSOLAJS'
,p_alias=>'STSOLAJS-BUSQ'
,p_step_title=>'Solicitud de Ajustes  - STSOLAJS'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_last_updated_by=>'INV'
,p_last_upd_yyyymmddhh24miss=>'20230510092636'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(145893735394456449)
,p_plug_name=>'FILTROS'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>1010
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(145893847530456450)
,p_plug_name=>'REPORTE'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>1020
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'    cod_empresa,',
'    cod_sucursal,',
'    num_ent_sal,',
'    fec_ent_sal,',
'    cod_motivo_ent_sal,',
'    cod_moneda,',
'    ser_ent_sal,',
'    tip_ent_sal,',
'    costo_total_despacho,',
'    fec_alta,',
'    cod_proveedor,',
'    observacion,',
'    tip_comprobante_ref,',
'    ser_comprobante_ref,',
'    nro_comprobante_ref,',
'    tip_cambio_us,',
'    hora_alta,',
'    cod_usuario,',
'    cod_cliente,',
'    cod_vendedor,',
'    tipo,',
'    ind_web,',
'    cod_motivo_dev,',
'    estado,',
'    fecha_rechazo,',
'    usuario_rechazo,',
'    fecha_alta,',
'    fecha_aut_comercial,',
'    usuario_aut_comercial,',
'    ind_confirmado,',
'    ind_pendiente,',
'    ind_rechazado,',
'    ind_aprobado,',
'    rowid row_id,',
'    NULL SELECCIONAR',
'FROM',
'    inv.st_solajus_cab',
'WHERE COD_EMPRESA = :P_COD_EMPRESA',
'AND (cod_sucursal = :P490_COD_SUCURSAL OR :P490_COD_SUCURSAL IS NULL)',
'AND (num_ent_sal = :P490_NRO_COMPROBANTE OR :P490_NRO_COMPROBANTE IS NULL)',
'AND (ser_ent_sal = :P490_SER_COMPROBANTE OR :P490_SER_COMPROBANTE IS NULL)',
'AND (tip_ent_sal = :P490_TIP_COMPROBANTE OR :P490_TIP_COMPROBANTE IS NULL)',
'AND (cod_motivo_ent_sal = :P490_COD_MOTIVO OR :P490_COD_MOTIVO IS NULL)',
'AND (estado = :P490_ESTADO OR :P490_ESTADO IS NULL)',
'AND (cod_usuario = :P490_USUARIO OR :P490_USUARIO IS NULL)',
'AND (fec_ent_sal >= :P490_FECHA_DESDE OR :P490_FECHA_DESDE IS NULL)',
'AND (fec_ent_sal <= :P490_FECHA_HASTA OR :P490_FECHA_HASTA IS NULL)',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P490_COD_SUCURSAL,P490_NRO_COMPROBANTE,P490_SER_COMPROBANTE,P490_TIP_COMPROBANTE,P490_COD_MOTIVO,P490_ESTADO,P490_USUARIO,P490_FECHA_DESDE,P490_FECHA_HASTA'
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
 p_id=>wwv_flow_imp.id(146032454459309101)
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
,p_internal_uid=>146032454459309101
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(146032562851309102)
,p_db_column_name=>'COD_EMPRESA'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Cod Empresa'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(146032636861309103)
,p_db_column_name=>'COD_SUCURSAL'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Sucursal'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_column_alignment=>'CENTER'
,p_rpt_named_lov=>wwv_flow_imp.id(41127354264101747)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(146032761607309104)
,p_db_column_name=>'NUM_ENT_SAL'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>unistr('N\00FAmero ')
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(146032804852309105)
,p_db_column_name=>'FEC_ENT_SAL'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Fecha'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(146032948462309106)
,p_db_column_name=>'COD_MOTIVO_ENT_SAL'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Motivo'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_column_alignment=>'CENTER'
,p_rpt_named_lov=>wwv_flow_imp.id(6219696464555216)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(146033018487309107)
,p_db_column_name=>'COD_MONEDA'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Cod Moneda'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(146033101686309108)
,p_db_column_name=>'SER_ENT_SAL'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Serie'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(146033296669309109)
,p_db_column_name=>'TIP_ENT_SAL'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Tipo'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(146033312295309110)
,p_db_column_name=>'COSTO_TOTAL_DESPACHO'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Costo Total Despacho'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(146033416671309111)
,p_db_column_name=>'FEC_ALTA'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Fec Alta'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(146033562539309112)
,p_db_column_name=>'COD_PROVEEDOR'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Cod Proveedor'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(146033681697309113)
,p_db_column_name=>'OBSERVACION'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Observacion'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(146033733064309114)
,p_db_column_name=>'TIP_COMPROBANTE_REF'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Tip Comprobante Ref'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(146033843264309115)
,p_db_column_name=>'SER_COMPROBANTE_REF'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>'Ser Comprobante Ref'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(146033960405309116)
,p_db_column_name=>'NRO_COMPROBANTE_REF'
,p_display_order=>150
,p_column_identifier=>'O'
,p_column_label=>'Nro Comprobante Ref'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(146034047427309117)
,p_db_column_name=>'TIP_CAMBIO_US'
,p_display_order=>160
,p_column_identifier=>'P'
,p_column_label=>'Tip Cambio Us'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(146034100381309118)
,p_db_column_name=>'HORA_ALTA'
,p_display_order=>170
,p_column_identifier=>'Q'
,p_column_label=>'Hora Alta'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(146034268532309119)
,p_db_column_name=>'COD_USUARIO'
,p_display_order=>180
,p_column_identifier=>'R'
,p_column_label=>'Usuario'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(146034315449309120)
,p_db_column_name=>'COD_CLIENTE'
,p_display_order=>190
,p_column_identifier=>'S'
,p_column_label=>'Cod Cliente'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(146034422060309121)
,p_db_column_name=>'COD_VENDEDOR'
,p_display_order=>200
,p_column_identifier=>'T'
,p_column_label=>'Cod Vendedor'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(146034572937309122)
,p_db_column_name=>'TIPO'
,p_display_order=>210
,p_column_identifier=>'U'
,p_column_label=>'Tipo'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(146034677582309123)
,p_db_column_name=>'IND_WEB'
,p_display_order=>220
,p_column_identifier=>'V'
,p_column_label=>'Ind Web'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(146034769566309124)
,p_db_column_name=>'COD_MOTIVO_DEV'
,p_display_order=>230
,p_column_identifier=>'W'
,p_column_label=>'Cod Motivo Dev'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(146034858136309125)
,p_db_column_name=>'ESTADO'
,p_display_order=>240
,p_column_identifier=>'X'
,p_column_label=>'Estado'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(146034909231309126)
,p_db_column_name=>'FECHA_RECHAZO'
,p_display_order=>250
,p_column_identifier=>'Y'
,p_column_label=>'Fecha Rechazo'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(146035060340309127)
,p_db_column_name=>'USUARIO_RECHAZO'
,p_display_order=>260
,p_column_identifier=>'Z'
,p_column_label=>'Usuario Rechazo'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(146035147513309128)
,p_db_column_name=>'FECHA_ALTA'
,p_display_order=>270
,p_column_identifier=>'AA'
,p_column_label=>'Fecha Alta'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(146035229086309129)
,p_db_column_name=>'FECHA_AUT_COMERCIAL'
,p_display_order=>280
,p_column_identifier=>'AB'
,p_column_label=>'Fecha Aut Comercial'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(146035365927309130)
,p_db_column_name=>'USUARIO_AUT_COMERCIAL'
,p_display_order=>290
,p_column_identifier=>'AC'
,p_column_label=>'Usuario Aut Comercial'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(146035477359309131)
,p_db_column_name=>'IND_CONFIRMADO'
,p_display_order=>300
,p_column_identifier=>'AD'
,p_column_label=>'Ind Confirmado'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(146035528351309132)
,p_db_column_name=>'IND_PENDIENTE'
,p_display_order=>310
,p_column_identifier=>'AE'
,p_column_label=>'Ind Pendiente'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(146035661824309133)
,p_db_column_name=>'IND_RECHAZADO'
,p_display_order=>320
,p_column_identifier=>'AF'
,p_column_label=>'Ind Rechazado'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(146035725376309134)
,p_db_column_name=>'IND_APROBADO'
,p_display_order=>330
,p_column_identifier=>'AG'
,p_column_label=>'Ind Aprobado'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(146036635685309143)
,p_db_column_name=>'ROW_ID'
,p_display_order=>340
,p_column_identifier=>'AH'
,p_column_label=>'Row Id'
,p_column_type=>'OTHER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(146036750668309144)
,p_db_column_name=>'SELECCIONAR'
,p_display_order=>350
,p_column_identifier=>'AI'
,p_column_label=>'Seleccionar'
,p_column_link=>'javascript:$s(''P490_ROW_ID_SOLAJUS'',''#ROW_ID#'');'
,p_column_linktext=>'<span aria-hidden="true" class="fa fa-edit"></span>'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(146048385935304106)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1460484'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'SELECCIONAR:TIP_ENT_SAL:SER_ENT_SAL:NUM_ENT_SAL:FEC_ENT_SAL:ESTADO:COD_MOTIVO_ENT_SAL:COD_USUARIO:COD_SUCURSAL:'
,p_sort_column_1=>'FEC_ENT_SAL'
,p_sort_direction_1=>'DESC'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(146036867851309145)
,p_plug_name=>'SEQ ROW'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>990
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(146105572076854402)
,p_plug_name=>'VARIABLES'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>1000
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(146037007314309147)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(145893847530456450)
,p_button_name=>'BTN_VOLVER'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight:t-Button--gapLeft:t-Button--gapRight:t-Button--gapTop:t-Button--gapBottom'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Volver'
,p_button_position=>'BOTTOM'
,p_button_redirect_url=>'f?p=&APP_ID.:491:&SESSION.::&DEBUG.:::'
,p_icon_css_classes=>'fa-arrow-circle-o-left'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(146106723640854414)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(145893735394456449)
,p_button_name=>'BTN_CREAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight:t-Button--gapLeft:t-Button--gapRight:t-Button--gapTop:t-Button--gapBottom'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Crear'
,p_button_position=>'BOTTOM'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-plus-square'
,p_button_cattributes=>'style=''width:150px'';'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(146037317739309150)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(145893735394456449)
,p_button_name=>'BTN_BUSCAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight:t-Button--gapLeft:t-Button--gapRight:t-Button--gapTop:t-Button--gapBottom'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Buscar'
,p_button_position=>'BOTTOM'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-search'
,p_button_cattributes=>'style=''width:150px'';'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(146105464397854401)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(145893735394456449)
,p_button_name=>'BTN_LIMPIAR_CAMPOS'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight:t-Button--gapLeft:t-Button--gapRight:t-Button--gapTop:t-Button--gapBottom'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Limpiar Campos'
,p_button_position=>'BOTTOM'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-trash'
,p_button_cattributes=>'style=''width:150px'';'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(146107480274854421)
,p_branch_name=>'BR_LLAMAR_PAG_491'
,p_branch_action=>'f?p=&APP_ID.:491:&SESSION.::&DEBUG.::P491_P_ROW_ID:&P490_ROW_ID_SOLAJUS.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'BEFORE_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
,p_branch_condition_type=>'REQUEST_EQUALS_CONDITION'
,p_branch_condition=>'REDIRECT'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(146107793362854424)
,p_branch_name=>'BR_LLAMAR_PAG_491_CREAR'
,p_branch_action=>'f?p=&APP_ID.:491:&SESSION.::&DEBUG.::P491_P_ROW_ID:&P490_ROW_ID_SOLAJUS.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'BEFORE_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>20
,p_branch_condition_type=>'REQUEST_EQUALS_CONDITION'
,p_branch_condition=>'CREAR'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(146035879026309135)
,p_name=>'P490_TIP_COMPROBANTE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(145893735394456449)
,p_prompt=>'Tipo Comprobante'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select tip_comprobante || '' - '' || descripcion D, tip_comprobante R',
'from tipos_comprobantes ',
'where cod_empresa = :P_COD_EMPRESA',
'and tip_comprobante <> :P490_TIPO_ENVIO',
'and cod_modulo = ''ST'' ',
'order by descripcion'))
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
 p_id=>wwv_flow_imp.id(146035908814309136)
,p_name=>'P490_SER_COMPROBANTE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(145893735394456449)
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
 p_id=>wwv_flow_imp.id(146036004550309137)
,p_name=>'P490_NRO_COMPROBANTE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(145893735394456449)
,p_prompt=>unistr('N\00FAmero')
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
 p_id=>wwv_flow_imp.id(146036186965309138)
,p_name=>'P490_FECHA_DESDE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(145893735394456449)
,p_prompt=>'Fecha desde'
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
 p_id=>wwv_flow_imp.id(146036206264309139)
,p_name=>'P490_FECHA_HASTA'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(145893735394456449)
,p_prompt=>'Fecha hasta'
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
 p_id=>wwv_flow_imp.id(146036317050309140)
,p_name=>'P490_ESTADO'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(145893735394456449)
,p_prompt=>'Estado'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:CREADO;CREADO,AUTORIZADO;AUTORIZADO,RECHAZADO;RECHAZADO'
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
 p_id=>wwv_flow_imp.id(146036458501309141)
,p_name=>'P490_USUARIO'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(145893735394456449)
,p_prompt=>unistr('Usuario Creaci\00F3n')
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
 p_id=>wwv_flow_imp.id(146036583801309142)
,p_name=>'P490_COD_SUCURSAL'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(145893735394456449)
,p_prompt=>'Sucursal'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_SUCURSALES'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  SELECT cod_sucursal||'' - ''||descripcion L, ',
'         cod_sucursal V',
'    FROM sucursales ',
'   WHERE cod_empresa = :P_COD_EMPRESA',
'ORDER BY descripcion'))
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
 p_id=>wwv_flow_imp.id(146036972602309146)
,p_name=>'P490_ROW_ID_SOLAJUS'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(146036867851309145)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(146105636141854403)
,p_name=>'P490_TIPO_ENVIO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(146105572076854402)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(146105897035854405)
,p_name=>'P490_COD_MODULO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(146105572076854402)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(146106442948854411)
,p_name=>'P490_COD_MOTIVO'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(145893735394456449)
,p_prompt=>'Motivo'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_MOTIVO_ENT_SAL_STSOLAJS'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select cod_motivo_ent_sal || '' - '' || descripcion D, cod_motivo_ent_sal R ',
'from st_motivo_ent_sal ',
'where  estado = ''S'' ',
'order by descripcion'))
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
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(146106077346854407)
,p_name=>'DA_BUSCAR'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(146037317739309150)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(146106166731854408)
,p_event_id=>wwv_flow_imp.id(146106077346854407)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(145893847530456450)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(146106285713854409)
,p_name=>'DA_LIMPIAR_CAMPOS'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(146105464397854401)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(146106307909854410)
,p_event_id=>wwv_flow_imp.id(146106285713854409)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P490_TIP_COMPROBANTE,P490_SER_COMPROBANTE,P490_NRO_COMPROBANTE,P490_FECHA_DESDE,P490_FECHA_HASTA,P490_COD_SUCURSAL,P490_ESTADO,P490_USUARIO'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(146107047123854417)
,p_name=>'DA_LLAMAR_PAG_491'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P490_ROW_ID_SOLAJUS'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(146107157398854418)
,p_event_id=>wwv_flow_imp.id(146107047123854417)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_01=>'REDIRECT'
,p_attribute_02=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(146107508549854422)
,p_name=>'DA_CREAR'
,p_event_sequence=>40
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(146106723640854414)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(146992223774425035)
,p_event_id=>wwv_flow_imp.id(146107508549854422)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    :P490_ROW_ID_SOLAJUS := NULL;',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;'))
,p_attribute_03=>'P490_ROW_ID_SOLAJUS'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(146107670889854423)
,p_event_id=>wwv_flow_imp.id(146107508549854422)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_01=>'CREAR'
,p_attribute_02=>'Y'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(146105771097854404)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_INIT'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    :P490_COD_MODULO := ''ST'';',
'    :P490_TIPO_ENVIO := bs_busca_parametro (:P490_COD_MODULO, ''TIPO_ENVIO'');',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;'))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_imp.component_end;
end;
/
