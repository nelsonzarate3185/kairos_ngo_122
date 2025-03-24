prompt --application/pages/page_00355
begin
--   Manifest
--     PAGE: 00355
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
 p_id=>355
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'RPPLAPED'
,p_alias=>'RPPLAPED'
,p_step_title=>'RPPLAPED'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_last_updated_by=>'EMILIANOP'
,p_last_upd_yyyymmddhh24miss=>'20230127135252'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(97758360570442911)
,p_plug_name=>'PARAMETROS'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>1010
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(97758637085442914)
,p_plug_name=>'Reporte'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>990
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select NRO_PLANILLA,',
'    FEC_PLANILLA,',
'    FEC_RENDICION,',
'    FEC_RENDICION_ORIG,',
'    COD_ZONA_REPARTO,',
'    COD_REPARTIDOR,',
'    COD_VEHICULO,',
'    COD_USUARIO,',
'    ESTADO,',
'    KM_SALIDA,',
'    KM_ESTIMADO,',
'    KM_LLEGADA,',
'    COMENTARIO,',
'    HORA_ALTA,',
'    COD_REPARTIDOR_MM,',
'    COD_USUARIO_RENDICION,',
'    IND_ENTREGA,',
'    FEC_CONFIRMADO,',
'    PORTON,',
'    TIPO_ENTREGA,',
'    PLANILLA_FACTURADA,',
'    CONFIRMADO_DISTRIBUCION,',
'    FEC_CONFIRMADO_DISTRIBUCION,',
'    USER_CONFIRMADO_DISTRIBUCION,',
'    ROWID RID,',
'    NULL EDITAR',
'from RP_REPARTO_PEDIDO_CAB;'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Reporte'
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
 p_id=>wwv_flow_imp.id(97758748170442915)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'JUANASIS'
,p_internal_uid=>97758748170442915
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(97758888748442916)
,p_db_column_name=>'NRO_PLANILLA'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Nro Planilla'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(97758967976442917)
,p_db_column_name=>'FEC_PLANILLA'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Fec Planilla'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(97759097438442918)
,p_db_column_name=>'FEC_RENDICION'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Fec Rendicion'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(97759119172442919)
,p_db_column_name=>'FEC_RENDICION_ORIG'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Fec Rendicion Orig'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(97759288924442920)
,p_db_column_name=>'COD_ZONA_REPARTO'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Cod Zona Reparto'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(97759376820442921)
,p_db_column_name=>'COD_REPARTIDOR'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Cod Repartidor'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(97759447884442922)
,p_db_column_name=>'COD_VEHICULO'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Cod Vehiculo'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(97759561138442923)
,p_db_column_name=>'COD_USUARIO'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Cod Usuario'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(97759699003442924)
,p_db_column_name=>'ESTADO'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Estado'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(97759796138442925)
,p_db_column_name=>'KM_SALIDA'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Km Salida'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(97759851834442926)
,p_db_column_name=>'KM_ESTIMADO'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Km Estimado'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(97759948665442927)
,p_db_column_name=>'KM_LLEGADA'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Km Llegada'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(97760080639442928)
,p_db_column_name=>'COMENTARIO'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Comentario'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(97760197066442929)
,p_db_column_name=>'HORA_ALTA'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>'Hora Alta'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(97760218356442930)
,p_db_column_name=>'COD_REPARTIDOR_MM'
,p_display_order=>150
,p_column_identifier=>'O'
,p_column_label=>'Cod Repartidor Mm'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(97760341529442931)
,p_db_column_name=>'COD_USUARIO_RENDICION'
,p_display_order=>160
,p_column_identifier=>'P'
,p_column_label=>'Cod Usuario Rendicion'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(97760498597442932)
,p_db_column_name=>'IND_ENTREGA'
,p_display_order=>170
,p_column_identifier=>'Q'
,p_column_label=>'Ind Entrega'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(97760565477442933)
,p_db_column_name=>'FEC_CONFIRMADO'
,p_display_order=>180
,p_column_identifier=>'R'
,p_column_label=>'Fec Confirmado'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(97760616889442934)
,p_db_column_name=>'PORTON'
,p_display_order=>190
,p_column_identifier=>'S'
,p_column_label=>'Porton'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(97760774632442935)
,p_db_column_name=>'TIPO_ENTREGA'
,p_display_order=>200
,p_column_identifier=>'T'
,p_column_label=>'Tipo Entrega'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(97760881157442936)
,p_db_column_name=>'PLANILLA_FACTURADA'
,p_display_order=>210
,p_column_identifier=>'U'
,p_column_label=>'Planilla Facturada'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(97760929880442937)
,p_db_column_name=>'CONFIRMADO_DISTRIBUCION'
,p_display_order=>220
,p_column_identifier=>'V'
,p_column_label=>'Confirmado Distribucion'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(97761076057442938)
,p_db_column_name=>'FEC_CONFIRMADO_DISTRIBUCION'
,p_display_order=>230
,p_column_identifier=>'W'
,p_column_label=>'Fec Confirmado Distribucion'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(97761132600442939)
,p_db_column_name=>'USER_CONFIRMADO_DISTRIBUCION'
,p_display_order=>240
,p_column_identifier=>'X'
,p_column_label=>'User Confirmado Distribucion'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(97761202034442940)
,p_db_column_name=>'RID'
,p_display_order=>250
,p_column_identifier=>'Y'
,p_column_label=>'Rid'
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
 p_id=>wwv_flow_imp.id(97761364673442941)
,p_db_column_name=>'EDITAR'
,p_display_order=>260
,p_column_identifier=>'Z'
,p_column_label=>'Editar'
,p_column_link=>'javascript:$s(''P355_SEQ_ID_EDITAR'',''#NRO_PLANILLA#'');'
,p_column_linktext=>'<span aria-hidden="true" class="fa fa-edit"></span>'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(98352942454163403)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'983530'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'EDITAR:NRO_PLANILLA:FEC_PLANILLA:FEC_RENDICION:COD_USUARIO:ESTADO:COMENTARIO:HORA_ALTA:COD_REPARTIDOR_MM:COD_USUARIO_RENDICION:IND_ENTREGA:FEC_CONFIRMADO:PORTON:TIPO_ENTREGA:PLANILLA_FACTURADA:CONFIRMADO_DISTRIBUCION:FEC_CONFIRMADO_DISTRIBUCION:USER_'
||'CONFIRMADO_DISTRIBUCION:'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(97761420358442942)
,p_plug_name=>'VARIABLES'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>1000
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(97761763967442945)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(97758637085442914)
,p_button_name=>'bt_agregar'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Agregar'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:358:&SESSION.::&DEBUG.:358:P358_P_IND_LOGISTICA,P358_P_PLANILLA:&P355_P_IND_LOGISTICA.,&P355_P_PLANILLA.'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(98889198599038718)
,p_branch_name=>'PR_IR_PAG358'
,p_branch_action=>'f?p=&APP_ID.:358:&SESSION.::&DEBUG.:358:P358_P_IND_LOGISTICA,P358_P_PLANILLA:&P355_P_IND_LOGISTICA.,&P355_SEQ_ID_EDITAR.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'BEFORE_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(97758428434442912)
,p_name=>'P355_P_IND_LOGISTICA'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(97758360570442911)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(97758596949442913)
,p_name=>'P355_P_PLANILLA'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(97758360570442911)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(97761588255442943)
,p_name=>'P355_SEQ_ID_EDITAR'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(97761420358442942)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(97761937936442947)
,p_name=>'P355_CANTIDAD_LINEAS'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(97761420358442942)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(97762000380442948)
,p_name=>'P355_DERECHOS'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(97761420358442942)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(97762120728442949)
,p_name=>'P355_COD_MODULO'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(97761420358442942)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(97762234012442950)
,p_name=>'P355_NOM_MODULO'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(97761420358442942)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(98388641294430901)
,p_name=>'P355_COD_FORMA'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(97761420358442942)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(98388780067430902)
,p_name=>'P355_NOM_FORMA'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(97761420358442942)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(98388864042430903)
,p_name=>'P355_COD_MONEDA_BASE'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(97761420358442942)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(98388917477430904)
,p_name=>'P355_SER_CONTADO'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(97761420358442942)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(98389015425430905)
,p_name=>'P355_SER_CREDITO'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(97761420358442942)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(98389149854430906)
,p_name=>'P355_ESTADO_REPARTO'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(97761420358442942)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(98389281589430907)
,p_name=>'P355_FAC_CONTADO'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(97761420358442942)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(98389394056430908)
,p_name=>'P355_FAC_CREDITO'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(97761420358442942)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(98389462227430909)
,p_name=>'P355_NOTA_REMISION'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(97761420358442942)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(98389525682430910)
,p_name=>'P355_COD_EMPRESA'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(97761420358442942)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(98389642370430911)
,p_name=>'P355_NOM_EMPRESA'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(97761420358442942)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(98389716155430912)
,p_name=>'P355_COD_SUCURSAL'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_imp.id(97761420358442942)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(98389863419430913)
,p_name=>'P355_NOM_SUCURSAL'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_imp.id(97761420358442942)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(98389954456430914)
,p_name=>'P355_COD_USUARIO'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_imp.id(97761420358442942)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(98390009527430915)
,p_name=>'P355_COD_IDIOMA'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_imp.id(97761420358442942)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(98390120241430916)
,p_name=>'P355_CODSISMENU'
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_imp.id(97761420358442942)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(98390280775430917)
,p_name=>'P355_TIPO_TRANS'
,p_item_sequence=>220
,p_item_plug_id=>wwv_flow_imp.id(97761420358442942)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(98390373524430918)
,p_name=>'P355_SER_RECIBO'
,p_item_sequence=>230
,p_item_plug_id=>wwv_flow_imp.id(97761420358442942)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(98390438167430919)
,p_name=>'P355_FEC_ACTUAL'
,p_item_sequence=>240
,p_item_plug_id=>wwv_flow_imp.id(97761420358442942)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(98390530398430920)
,p_name=>'P355_MAX_DIAS_RENDICION'
,p_item_sequence=>250
,p_item_plug_id=>wwv_flow_imp.id(97761420358442942)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(98888940853038716)
,p_name=>'DA_IR_PAG258'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P355_SEQ_ID_EDITAR'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(98889056656038717)
,p_event_id=>wwv_flow_imp.id(98888940853038716)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_01=>'PAG258'
,p_attribute_02=>'Y'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(97761861266442946)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_INIT'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  --pre form',
':P355_COD_MODULO := ''RP'';',
':P355_COD_USUARIO := nvl(:P_COD_USUARIO,user);',
':P355_COD_EMPRESA := nvl(:P_COD_EMPRESA,''1'');',
':P355_NOM_EMPRESA := nvl(:P_NOM_EMPRESA,null);',
':P355_COD_SUCURSAL := nvl(:P_COD_SUCURSAL,''01'');',
':P355_NOM_SUCURSAL := nvl(:P_NOM_SUCURSAL,null);',
':P355_COD_MODULO := nvl(:P_COD_MODULO,''RP'');',
'',
':P355_COD_MONEDA_BASE := bs_busca_parametro( :P355_COD_MODULO, ''COD_MONEDA_BASE'' );',
':P355_FAC_CREDITO := bs_busca_parametro( :P355_COD_MODULO, ''TIPO_CREDITO'' );',
':P355_fac_contado     :=bs_busca_parametro( :P355_COD_MODULO, ''TIPO_CONTADO'' );',
':P355_nota_remision   :=bs_busca_parametro( :P355_COD_MODULO, ''TIPO_REMISION'' );',
':P355_ser_contado     :=bs_busca_parametro( :P355_COD_MODULO, ''SERIE_CONTADO'' );',
'',
':P355_P_IND_LOGISTICA := ''S'';',
'--:P355_P_PLANILLA := 173078 ;',
''))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_imp.component_end;
end;
/
