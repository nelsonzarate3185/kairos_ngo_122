prompt --application/pages/page_00288
begin
--   Manifest
--     PAGE: 00288
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
 p_id=>288
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'BSSUCUR'
,p_alias=>'BSSUCUR'
,p_step_title=>'BSSUCUR'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_last_updated_by=>'INV'
,p_last_upd_yyyymmddhh24miss=>'20230204103204'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(74451022232326118)
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
 p_id=>wwv_flow_imp.id(74452667779326134)
,p_plug_name=>'SUCURSALES'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>990
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(74452746524326135)
,p_plug_name=>'SUCURSALES'
,p_parent_plug_id=>wwv_flow_imp.id(74452667779326134)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ',
'    rowid p_id,',
'    null detalle,',
'    null editar,',
'    null eliminar,',
'    COD_EMPRESA,',
'    COD_SUCURSAL,',
'    DESCRIPCION,',
'    ES_MATRIZ,',
'    ESTADO,',
'    CASILLA_CORREO,',
'    CODIGO_POSTAL,',
'    DETALLE_DIR,',
'    TRABAJA_DOM,',
'    TRABAJA_SAB,',
'    COD_PAIS,',
'    COD_PROVINCIA,',
'    COD_CIUDAD,',
'    COD_BARRIO,',
'    COD_CUSTODIO_INI,',
'    COD_SUCURSAL_CENTRAL,',
'    IND_FACTURA,',
'    IND_RESERVA,',
'    SAL_DEPOSITO_DE,',
'    COD_SUCURSAL_FACT,',
'    CODIGO_SLIM4,',
'    DEMANDA_SLIM4,',
'    STOCK_SLIM4,',
'    GESTIONAR_SLIM4,',
'    DEMANDLINKEDWAREHOUSE1,',
'    STOCKLINKEDWAREHOUSE1 ',
'FROM SUCURSALES',
'where cod_empresa = :P_COD_EMPRESA',
'ORDER BY lpad( cod_sucursal, 5, '' '' );'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P_COD_EMPRESA'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'SUCURSALES'
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
 p_id=>wwv_flow_imp.id(74453032832326138)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_actions_menu=>'N'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_enable_mail_download=>'Y'
,p_owner=>'JUANASIS'
,p_internal_uid=>74453032832326138
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(74453148795326139)
,p_db_column_name=>'COD_EMPRESA'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Cod Empresa'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(74453222058326140)
,p_db_column_name=>'COD_SUCURSAL'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Deposito'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(74453325007326141)
,p_db_column_name=>'DESCRIPCION'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Descripcion'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(74453496513326142)
,p_db_column_name=>'ES_MATRIZ'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Es Matriz'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(74453539438326143)
,p_db_column_name=>'ESTADO'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Estado'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(74453689815326144)
,p_db_column_name=>'CASILLA_CORREO'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Casilla  de Correo'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(74453748946326145)
,p_db_column_name=>'CODIGO_POSTAL'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Codigo Postal'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(74453826982326146)
,p_db_column_name=>'DETALLE_DIR'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>unistr('Direcci\00F3n')
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(74453901691326147)
,p_db_column_name=>'TRABAJA_DOM'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Trabaja Dom'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(74454042831326148)
,p_db_column_name=>'TRABAJA_SAB'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Trabaja Sab'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(74454155921326149)
,p_db_column_name=>'COD_PAIS'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Pais'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(74454217948326150)
,p_db_column_name=>'COD_PROVINCIA'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Provincia'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(74975619001186801)
,p_db_column_name=>'COD_CIUDAD'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Ciudad'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(74975770726186802)
,p_db_column_name=>'COD_BARRIO'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>'Barrio'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(74975856927186803)
,p_db_column_name=>'COD_CUSTODIO_INI'
,p_display_order=>150
,p_column_identifier=>'O'
,p_column_label=>'Custodio '
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_rpt_named_lov=>wwv_flow_imp.id(30820581861995845)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(74975968421186804)
,p_db_column_name=>'COD_SUCURSAL_CENTRAL'
,p_display_order=>160
,p_column_identifier=>'P'
,p_column_label=>'Sucursal Central'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_rpt_named_lov=>wwv_flow_imp.id(41127354264101747)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(74976008098186805)
,p_db_column_name=>'IND_FACTURA'
,p_display_order=>170
,p_column_identifier=>'Q'
,p_column_label=>'Ind Factura'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(74976194032186806)
,p_db_column_name=>'IND_RESERVA'
,p_display_order=>180
,p_column_identifier=>'R'
,p_column_label=>'Ind Reserva'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(74976274478186807)
,p_db_column_name=>'COD_SUCURSAL_FACT'
,p_display_order=>190
,p_column_identifier=>'S'
,p_column_label=>'Sucursal Fact'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_rpt_named_lov=>wwv_flow_imp.id(76075042366473112)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(74976345038186808)
,p_db_column_name=>'CODIGO_SLIM4'
,p_display_order=>200
,p_column_identifier=>'T'
,p_column_label=>'Codigo Slim4'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(74976433352186809)
,p_db_column_name=>'DEMANDA_SLIM4'
,p_display_order=>210
,p_column_identifier=>'U'
,p_column_label=>'Demanda Slim4'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(74976506565186810)
,p_db_column_name=>'STOCK_SLIM4'
,p_display_order=>220
,p_column_identifier=>'V'
,p_column_label=>'Stock Slim4'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(74976622981186811)
,p_db_column_name=>'GESTIONAR_SLIM4'
,p_display_order=>230
,p_column_identifier=>'W'
,p_column_label=>'Gestionar Slim4'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(74976788324186812)
,p_db_column_name=>'DEMANDLINKEDWAREHOUSE1'
,p_display_order=>240
,p_column_identifier=>'X'
,p_column_label=>'Demandlinkedwarehouse1'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(74976842687186813)
,p_db_column_name=>'STOCKLINKEDWAREHOUSE1'
,p_display_order=>250
,p_column_identifier=>'Y'
,p_column_label=>'Stocklinkedwarehouse1'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(75414844532110844)
,p_db_column_name=>'P_ID'
,p_display_order=>260
,p_column_identifier=>'Z'
,p_column_label=>'P Id'
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
 p_id=>wwv_flow_imp.id(75414928631110845)
,p_db_column_name=>'DETALLE'
,p_display_order=>270
,p_column_identifier=>'AA'
,p_column_label=>'Detalle'
,p_column_link=>'javascript:$s(''P288_SEQ_ID_DETALLE'',''#P_ID#'');'
,p_column_linktext=>'<span class="fa fa-search" aria-hidden="true"></span>'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(75415089440110846)
,p_db_column_name=>'EDITAR'
,p_display_order=>280
,p_column_identifier=>'AB'
,p_column_label=>'Editar'
,p_column_link=>'javascript:$s(''P288_SEQ_ID_EDITAR'',''#P_ID#'');'
,p_column_linktext=>'<span aria-hidden="true" class="fa fa-edit"></span>'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(75415152590110847)
,p_db_column_name=>'ELIMINAR'
,p_display_order=>290
,p_column_identifier=>'AC'
,p_column_label=>'Eliminar'
,p_column_link=>'javascript:$s(''P288_SEQ_ID_ELIMINAR'',''#P_ID#'');'
,p_column_linktext=>' <span class="fa fa-trash" aria-hidden="true"></span>'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(75758488595816718)
,p_db_column_name=>'SAL_DEPOSITO_DE'
,p_display_order=>300
,p_column_identifier=>'AD'
,p_column_label=>'Sal Deposito De'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(74989046565187287)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'749891'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>10
,p_report_columns=>'EDITAR:COD_SUCURSAL:DESCRIPCION:COD_SUCURSAL_CENTRAL:COD_CUSTODIO_INI:DETALLE_DIR:COD_PAIS:COD_PROVINCIA:COD_CIUDAD:COD_BARRIO:CASILLA_CORREO:CODIGO_POSTAL:COD_SUCURSAL_FACT:DETALLE:ELIMINAR:'
,p_sort_column_1=>'COD_SUCURSAL'
,p_sort_direction_1=>'DESC'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(74452802219326136)
,p_plug_name=>'AGREGAR/EDITAR'
,p_parent_plug_id=>wwv_flow_imp.id(74452667779326134)
,p_region_template_options=>'#DEFAULT#:js-dialog-autoheight:js-dialog-size720x480'
,p_plug_template=>wwv_flow_imp.id(40117728043263659)
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(74452948051326137)
,p_plug_name=>'DETALLES'
,p_parent_plug_id=>wwv_flow_imp.id(74452667779326134)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>30
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(74980598922186850)
,p_button_sequence=>440
,p_button_plug_id=>wwv_flow_imp.id(74452802219326136)
,p_button_name=>'BT_CANCELAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_image_alt=>'Cancelar'
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(74980313621186848)
,p_button_sequence=>420
,p_button_plug_id=>wwv_flow_imp.id(74452802219326136)
,p_button_name=>'BT_ACEPTAR_CREAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Aceptar'
,p_button_position=>'CREATE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(74980458800186849)
,p_button_sequence=>440
,p_button_plug_id=>wwv_flow_imp.id(74452802219326136)
,p_button_name=>'BT_ACEPTAR_EDITAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Aceptar'
,p_button_position=>'CREATE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(75410767566110803)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(74452746524326135)
,p_button_name=>'BT_AGREGAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Agregar'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(74451101504326119)
,p_name=>'P288_COD_EMPRESA'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(74451022232326118)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(74451238947326120)
,p_name=>'P288_NOM_EMPRESA'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(74451022232326118)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(74451314008326121)
,p_name=>'P288_COD_SUCURSAL'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(74451022232326118)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(74451461730326122)
,p_name=>'P288_NOM_SUCURSAL'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(74451022232326118)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(74451512319326123)
,p_name=>'P288_COD_USUARIO'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(74451022232326118)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(74451654942326124)
,p_name=>'P288_COD_MODULO'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(74451022232326118)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(74451712519326125)
,p_name=>'P288_DERECHOS'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(74451022232326118)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(74451814575326126)
,p_name=>'P288_COD_FORMA'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(74451022232326118)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(74451953783326127)
,p_name=>'P288_NOM_FORMA'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(74451022232326118)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(74452096791326128)
,p_name=>'P288_COD_IDIOMA'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(74451022232326118)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(74452178895326129)
,p_name=>'P288_CODSISMENU'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(74451022232326118)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(74452370822326131)
,p_name=>'P288_SEQ_ID_EDITAR'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(74451022232326118)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(74452458758326132)
,p_name=>'P288_SEQ_ID_ELIMINAR'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(74451022232326118)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(74452561657326133)
,p_name=>'P288_SEQ_ID_DETALLE'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(74451022232326118)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(74977014797186815)
,p_name=>'P288_A_COD_SUCURSAL'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(74452802219326136)
,p_prompt=>'Deposito'
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
 p_id=>wwv_flow_imp.id(74977101955186816)
,p_name=>'P288_DESCRIPCION'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(74452802219326136)
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
 p_id=>wwv_flow_imp.id(74977294028186817)
,p_name=>'P288_COD_SUCURSAL_CENTRAL'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(74452802219326136)
,p_prompt=>'Sucursal Central'
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
,p_colspan=>5
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
 p_id=>wwv_flow_imp.id(74977362082186818)
,p_name=>'P288_DESC_SUC_CENTRAL'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(74452802219326136)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(74977430482186819)
,p_name=>'P288_COD_CUSTODIO_INI'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(74452802219326136)
,p_prompt=>'Custodio'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select descripcion  ||'' - ''||  cod_custodio, cod_custodio',
'from cc_custodios',
'where activo =''S''',
'and cod_empresa = :P_COD_EMPRESA',
'--order by cod_custodio'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>' '
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_grid_column=>6
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
 p_id=>wwv_flow_imp.id(74977515147186820)
,p_name=>'P288_DESC_CUSTODIO_INI'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(74452802219326136)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(74977651211186821)
,p_name=>'P288_DETALLE_DIR'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(74452802219326136)
,p_prompt=>unistr('Direcci\00F3n')
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_colspan=>3
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(74977790747186822)
,p_name=>'P288_COD_PAIS'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(74452802219326136)
,p_prompt=>unistr('Pa\00EDs')
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_PAISES'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Select descripcion',
'			, cod_pais',
'			    from paises'))
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
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(74977890701186823)
,p_name=>'P288_DESC_PAISES'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(74452802219326136)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(74977976119186824)
,p_name=>'P288_COD_PROVINCIA'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(74452802219326136)
,p_prompt=>'Departamento'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select cod_provincia ||'' - ''||  descripcion d,',
'        cod_provincia r',
'from provincias ',
'where cod_pais = :P288_COD_PAIS ',
'--order by descripcion'))
,p_lov_display_null=>'YES'
,p_lov_cascade_parent_items=>'P288_COD_PAIS'
,p_ajax_items_to_submit=>'P288_COD_PAIS'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>30
,p_begin_on_new_line=>'N'
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
 p_id=>wwv_flow_imp.id(74978072084186825)
,p_name=>'P288_DESC_PROVINCIA'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(74452802219326136)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(74978154917186826)
,p_name=>'P288_COD_CIUDAD'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(74452802219326136)
,p_prompt=>'Ciudad'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select descripcion,cod_ciudad ',
'from ciudades ',
'where cod_pais = :P288_COD_PAIS ',
'and cod_provincia = :P288_COD_PROVINCIA',
' order by descripcion'))
,p_lov_display_null=>'YES'
,p_lov_cascade_parent_items=>'P288_COD_PROVINCIA'
,p_ajax_items_to_submit=>'P288_COD_PROVINCIA'
,p_ajax_optimize_refresh=>'Y'
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
 p_id=>wwv_flow_imp.id(74978284105186827)
,p_name=>'P288_DESC_CIUDAD'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(74452802219326136)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(74978307160186828)
,p_name=>'P288_COD_BARRIO'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(74452802219326136)
,p_prompt=>'Barrio'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select descripcion,cod_barrio ',
'from barrios ',
'where cod_pais = :P288_COD_PAIS',
'and cod_provincia = :P288_COD_PROVINCIA ',
'and cod_ciudad = :P288_COD_CIUDAD',
'order by descripcion'))
,p_lov_display_null=>'YES'
,p_lov_cascade_parent_items=>'P288_COD_CIUDAD'
,p_ajax_items_to_submit=>'P288_COD_CIUDAD'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>30
,p_begin_on_new_line=>'N'
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
 p_id=>wwv_flow_imp.id(74978428382186829)
,p_name=>'P288_DESC_BARRIO'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(74452802219326136)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(74978515834186830)
,p_name=>'P288_CASILLA_CORREO'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_imp.id(74452802219326136)
,p_prompt=>'Casilla de Correo'
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
 p_id=>wwv_flow_imp.id(74978662590186831)
,p_name=>'P288_CODIGO_POSTAL'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_imp.id(74452802219326136)
,p_prompt=>unistr('C\00F3digo postal')
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
 p_id=>wwv_flow_imp.id(74978769357186832)
,p_name=>'P288_SAL_DEPOSITO_DE'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_imp.id(74452802219326136)
,p_prompt=>unistr('Salida Dep\00F3sito de:')
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
 p_id=>wwv_flow_imp.id(74978812299186833)
,p_name=>'P288_COD_SUCURSAL_FACT'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_imp.id(74452802219326136)
,p_prompt=>'Sucursal Fact.'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Select cod_sucursal ||'' - ''|| descripcion d,',
'        cod_sucursal r',
'from sucursales',
'where cod_empresa = :P_COD_EMPRESA',
'and estado = ''S''',
'--order by cod_sucursal',
'',
' '))
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
 p_id=>wwv_flow_imp.id(74978972745186834)
,p_name=>'P288_DESC_SUCURSAL_FACT'
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_imp.id(74452802219326136)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(74979036053186835)
,p_name=>'P288_ES_MATRIZ'
,p_item_sequence=>320
,p_item_plug_id=>wwv_flow_imp.id(74452802219326136)
,p_prompt=>'Casa Central'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'S'
,p_attribute_03=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(74979167072186836)
,p_name=>'P288_ESTADO'
,p_item_sequence=>360
,p_item_plug_id=>wwv_flow_imp.id(74452802219326136)
,p_prompt=>'Activo'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'S'
,p_attribute_03=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(74979266380186837)
,p_name=>'P288_IND_FACTURA'
,p_item_sequence=>400
,p_item_plug_id=>wwv_flow_imp.id(74452802219326136)
,p_prompt=>'P Facturar'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'S'
,p_attribute_03=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(74979302091186838)
,p_name=>'P288_IND_RESERVA'
,p_item_sequence=>440
,p_item_plug_id=>wwv_flow_imp.id(74452802219326136)
,p_prompt=>'P Reserva'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'S'
,p_attribute_03=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(74979481993186839)
,p_name=>'P288_TRABAJA_DOM'
,p_item_sequence=>520
,p_item_plug_id=>wwv_flow_imp.id(74452802219326136)
,p_prompt=>'Trabaja Domingo'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'S'
,p_attribute_03=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(74979549390186840)
,p_name=>'P288_TRABAJA_SAB'
,p_item_sequence=>480
,p_item_plug_id=>wwv_flow_imp.id(74452802219326136)
,p_prompt=>'Trabaja Sabado'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'S'
,p_attribute_03=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(74979637055186841)
,p_name=>'P288_DESC_EMPRESA'
,p_item_sequence=>280
,p_item_plug_id=>wwv_flow_imp.id(74452802219326136)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
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
 p_id=>wwv_flow_imp.id(74979742868186842)
,p_name=>'P288_CODIGO_SLIM4'
,p_item_sequence=>300
,p_item_plug_id=>wwv_flow_imp.id(74452802219326136)
,p_prompt=>'CODIGO SLIM4'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_colspan=>8
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(74979835056186843)
,p_name=>'P288_DEMANDA_SLIM4'
,p_item_sequence=>340
,p_item_plug_id=>wwv_flow_imp.id(74452802219326136)
,p_prompt=>'DEMANDA SLIM4'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_colspan=>8
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(74979988258186844)
,p_name=>'P288_STOCK_SLIM4'
,p_item_sequence=>380
,p_item_plug_id=>wwv_flow_imp.id(74452802219326136)
,p_prompt=>'STOCK SLIM4'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_colspan=>8
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(74980063821186845)
,p_name=>'P288_GESTIONAR_SLIM4'
,p_item_sequence=>420
,p_item_plug_id=>wwv_flow_imp.id(74452802219326136)
,p_prompt=>'GESTIONAR SLIM4'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_colspan=>8
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(74980173434186846)
,p_name=>'P288_DEMANDLINKEDWARRREHOUSE1'
,p_item_sequence=>460
,p_item_plug_id=>wwv_flow_imp.id(74452802219326136)
,p_prompt=>'DEMANDLINKEDWARRREHOUSE1'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_colspan=>8
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(74980285651186847)
,p_name=>'P288_STOCKLINKEDWARRREHOUSE1'
,p_item_sequence=>500
,p_item_plug_id=>wwv_flow_imp.id(74452802219326136)
,p_prompt=>'STOCKLINKEDWARRREHOUSE1'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_colspan=>8
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(75410960099110805)
,p_name=>'P288_D_CODIGO_SLIM4'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(74452948051326137)
,p_prompt=>'CODIGO SLIM4'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_colspan=>8
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(75411064506110806)
,p_name=>'P288_D_ES_MATRIZ'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(74452948051326137)
,p_prompt=>'Casa Central'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'S'
,p_attribute_03=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(75411110402110807)
,p_name=>'P288_D_DEMANDA_SLIM4'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(74452948051326137)
,p_prompt=>'DEMANDA SLIM4'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_colspan=>8
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(75411265887110808)
,p_name=>'P288_D_ESTADO'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(74452948051326137)
,p_prompt=>'Activo'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'S'
,p_attribute_03=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(75411306895110809)
,p_name=>'P288_D_STOCK_SLIM4'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(74452948051326137)
,p_prompt=>'STOCK SLIM4'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_colspan=>8
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(75411484009110810)
,p_name=>'P288_D_IND_FACTURA'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(74452948051326137)
,p_prompt=>'P Facturar'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'S'
,p_attribute_03=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(75411591306110811)
,p_name=>'P288_D_GESTIONAR_SLIM4'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(74452948051326137)
,p_prompt=>'GESTIONAR SLIM4'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_colspan=>8
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(75411600983110812)
,p_name=>'P288_D_IND_RESERVA'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(74452948051326137)
,p_prompt=>'P Reserva'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'S'
,p_attribute_03=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(75411730770110813)
,p_name=>'P288_D_DEMANDLINKEDWARRRE'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(74452948051326137)
,p_prompt=>'DEMANDLINKEDWARRREHOUSE1'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_colspan=>8
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(75411840976110814)
,p_name=>'P288_D_TRABAJA_SAB'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(74452948051326137)
,p_prompt=>'Trabaja Sabado'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'S'
,p_attribute_03=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(75411961179110815)
,p_name=>'P288_D_STOCKLINKEDWARRREHOUSE1'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(74452948051326137)
,p_prompt=>'STOCKLINKEDWARRREHOUSE1'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_colspan=>8
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(75412039665110816)
,p_name=>'P288_D_TRABAJA_DOM'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(74452948051326137)
,p_prompt=>'Trabaja Domingo'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'S'
,p_attribute_03=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(75412529858110821)
,p_name=>'P288_AUX_MSJ_CONTROL'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(74451022232326118)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(75412101679110817)
,p_name=>'DA_AGREGAR'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(75410767566110803)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(75412250633110818)
,p_event_id=>wwv_flow_imp.id(75412101679110817)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(74980313621186848)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(75412386845110819)
,p_event_id=>wwv_flow_imp.id(75412101679110817)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(74980458800186849)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(75756925117816703)
,p_event_id=>wwv_flow_imp.id(75412101679110817)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P288_A_COD_SUCURSAL,P288_DESCRIPCION,P288_ES_MATRIZ,P288_ESTADO,P288_CASILLA_CORREO,P288_CODIGO_POSTAL,P288_DETALLE_DIR,P288_TRABAJA_DOM,P288_TRABAJA_SAB,P288_COD_PAIS,P288_COD_PROVINCIA,P288_COD_CIUDAD,P288_COD_BARRIO,P288_COD_CUSTODIO_INI,P288_COD_'
||'SUCURSAL_CENTRAL,P288_IND_FACTURA,P288_IND_RESERVA,P288_SAL_DEPOSITO_DE, P288_COD_SUCURSAL_FACT,P288_CODIGO_SLIM4,P288_DEMANDA_SLIM4,P288_STOCK_SLIM4,P288_GESTIONAR_SLIM4,P288_DEMANDLINKEDWARRREHOUSE1,P288_STOCKLINKEDWARRREHOUSE1'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(75412427859110820)
,p_event_id=>wwv_flow_imp.id(75412101679110817)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(74452802219326136)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(75412676267110822)
,p_name=>'DA_GUARDAR_CREAR'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(74980313621186848)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(75412748139110823)
,p_event_id=>wwv_flow_imp.id(75412676267110822)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P288_AUX_MSJ_CONTROL := NULL;',
'IF :P288_A_COD_SUCURSAL IS NULL THEN',
unistr('    :P288_AUX_MSJ_CONTROL := ''Ingrese c\00F3digo de deposito'';'),
'    elsif :P288_DESCRIPCION is null then',
unistr('        :P288_AUX_MSJ_CONTROL := ''Ingrese la descripci\00F3n de sucursal'';'),
'        else',
'        begin',
'            :P288_AUX_MSJ_CONTROL := null;',
'            BSSUCUR.pr_agregar(PI_COD_EMPRESA => :P288_COD_EMPRESA,',
'                            PI_COD_SUCURSAL => :P288_A_COD_SUCURSAL,',
'                            PI_DESCRIPCION => :P288_DESCRIPCION,',
'                            PI_ES_MATRIZ => :P288_ES_MATRIZ,',
'                            PI_ESTADO => :P288_ESTADO,',
'                            PI_CASILLA_CORREO => :P288_CASILLA_CORREO,',
'                            PI_CODIGO_POSTAL => :P288_CODIGO_POSTAL,',
'                            PI_DETALLE_DIR => :P288_DETALLE_DIR,',
'                            PI_TRABAJA_DOM => :P288_TRABAJA_DOM,',
'                            PI_TRABAJA_SAB => :P288_TRABAJA_SAB,',
'                            PI_COD_PAIS => :P288_COD_PAIS,',
'                            PI_COD_PROVINCIA => :P288_COD_PROVINCIA,',
'                            PI_COD_CIUDAD => :P288_COD_CIUDAD,',
'                            PI_COD_BARRIO => :P288_COD_BARRIO,',
'                            PI_COD_CUSTODIO_INI => :P288_COD_CUSTODIO_INI,',
'                            PI_COD_SUCURSAL_CENTRAL => :P288_COD_SUCURSAL_CENTRAL,',
'                            PI_IND_FACTURA => :P288_IND_FACTURA,',
'                            PI_IND_RESERVA => :P288_IND_RESERVA,',
'                            PI_SAL_DEPOSITO_DE => :P288_SAL_DEPOSITO_DE,',
'                            PI_COD_SUCURSAL_FACT => :P288_COD_SUCURSAL_FACT,',
'                            PI_CODIGO_SLIM4 => :P288_CODIGO_SLIM4,',
'                            PI_DEMANDA_SLIM4 => :P288_DEMANDA_SLIM4,',
'                            PI_STOCK_SLIM4 => :P288_STOCK_SLIM4,',
'                            PI_GESTIONAR_SLIM4 => :P288_GESTIONAR_SLIM4,',
'                            PI_DEMANDLINKEDWAREHOUSE1 => :P288_DEMANDLINKEDWARRREHOUSE1,',
'                            PI_STOCKLINKEDWAREHOUSE1 => :P288_STOCKLINKEDWARRREHOUSE1 );',
'',
'        end;',
'end if;'))
,p_attribute_02=>'P288_COD_EMPRESA, P288_A_COD_SUCURSAL, P288_DESCRIPCION, P288_ES_MATRIZ ,P288_ESTADO, P288_CASILLA_CORREO, P288_CODIGO_POSTAL, P288_DETALLE_DIR, P288_TRABAJA_DOM, P288_TRABAJA_SAB, P288_COD_PAIS, P288_COD_PROVINCIA, P288_COD_CIUDAD ,P288_COD_BARRIO ,'
||'P288_COD_CUSTODIO_INI, P288_COD_SUCURSAL_CENTRAL ,P288_IND_FACTURA, P288_IND_RESERVA ,P288_SAL_DEPOSITO_DE ,P288_COD_SUCURSAL_FACT, P288_CODIGO_SLIM4 ,P288_DEMANDA_SLIM4 ,P288_STOCK_SLIM4 ,P288_GESTIONAR_SLIM4 ,P288_DEMANDLINKEDWARRREHOUSE1 ,P288_STO'
||'CKLINKEDWARRREHOUSE1'
,p_attribute_03=>'P288_AUX_MSJ_CONTROL'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(75412830768110824)
,p_event_id=>wwv_flow_imp.id(75412676267110822)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'&P288_AUX_MSJ_CONTROL.'
,p_attribute_02=>'Error'
,p_attribute_03=>'warning'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P288_AUX_MSJ_CONTROL'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(75412919170110825)
,p_event_id=>wwv_flow_imp.id(75412676267110822)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(74452746524326135)
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P288_AUX_MSJ_CONTROL'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(75413171645110827)
,p_event_id=>wwv_flow_imp.id(75412676267110822)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(74452802219326136)
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P288_AUX_MSJ_CONTROL'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(75413082444110826)
,p_event_id=>wwv_flow_imp.id(75412676267110822)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>unistr('Nuevo Registro A\00F1adido')
,p_attribute_02=>unistr('\00C9xito')
,p_attribute_03=>'success'
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P288_AUX_MSJ_CONTROL'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(75413745043110833)
,p_name=>'DA_GUARDAR_EDITAR'
,p_event_sequence=>30
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(74980458800186849)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(75413979955110835)
,p_event_id=>wwv_flow_imp.id(75413745043110833)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P288_AUX_MSJ_CONTROL := NULL;',
'IF :P288_A_COD_SUCURSAL IS NULL THEN',
unistr('    :P288_AUX_MSJ_CONTROL := ''Ingrese c\00F3digo de deposito'';'),
'    elsif :P288_DESCRIPCION is null then',
unistr('        :P288_AUX_MSJ_CONTROL := ''Ingrese la descripci\00F3n de sucursal'';'),
'        else',
'        begin',
'            BSSUCUR.pr_modificar( PI_SEQ_ID_EDITAR => :P288_SEQ_ID_EDITAR,',
'                            PI_COD_EMPRESA => :P288_COD_EMPRESA,',
'                            PI_COD_SUCURSAL => :P288_A_COD_SUCURSAL,',
'                            PI_DESCRIPCION => :P288_DESCRIPCION,',
'                            PI_ES_MATRIZ => :P288_ES_MATRIZ,',
'                            PI_ESTADO => :P288_ESTADO,',
'                            PI_CASILLA_CORREO => :P288_CASILLA_CORREO,',
'                            PI_CODIGO_POSTAL => :P288_CODIGO_POSTAL,',
'                            PI_DETALLE_DIR => :P288_DETALLE_DIR,',
'                            PI_TRABAJA_DOM => :P288_TRABAJA_DOM,',
'                            PI_TRABAJA_SAB => :P288_TRABAJA_SAB,',
'                            PI_COD_PAIS => :P288_COD_PAIS,',
'                            PI_COD_PROVINCIA => :P288_COD_PROVINCIA,',
'                            PI_COD_CIUDAD => :P288_COD_CIUDAD,',
'                            PI_COD_BARRIO => :P288_COD_BARRIO,',
'                            PI_COD_CUSTODIO_INI => :P288_COD_CUSTODIO_INI,',
'                            PI_COD_SUCURSAL_CENTRAL => :P288_COD_SUCURSAL_CENTRAL,',
'                            PI_IND_FACTURA => :P288_IND_FACTURA,',
'                            PI_IND_RESERVA => :P288_IND_RESERVA,',
'                            PI_SAL_DEPOSITO_DE => :P288_SAL_DEPOSITO_DE,',
'                            PI_COD_SUCURSAL_FACT => :P288_COD_SUCURSAL_FACT,',
'                            PI_CODIGO_SLIM4 => :P288_CODIGO_SLIM4,',
'                            PI_DEMANDA_SLIM4 => :P288_DEMANDA_SLIM4,',
'                            PI_STOCK_SLIM4 => :P288_STOCK_SLIM4,',
'                            PI_GESTIONAR_SLIM4 => :P288_GESTIONAR_SLIM4,',
'                            PI_DEMANDLINKEDWAREHOUSE1 => :P288_DEMANDLINKEDWARRREHOUSE1,',
'                            PI_STOCKLINKEDWAREHOUSE1 => :P288_STOCKLINKEDWARRREHOUSE1 );',
'',
'        end;',
'end if;'))
,p_attribute_02=>'P288_COD_EMPRESA, P288_A_COD_SUCURSAL, P288_DESCRIPCION, P288_ES_MATRIZ ,P288_ESTADO, P288_CASILLA_CORREO, P288_CODIGO_POSTAL, P288_DETALLE_DIR, P288_TRABAJA_DOM, P288_TRABAJA_SAB, P288_COD_PAIS, P288_COD_PROVINCIA, P288_COD_CIUDAD ,P288_COD_BARRIO ,'
||'P288_COD_CUSTODIO_INI, P288_COD_SUCURSAL_CENTRAL ,P288_IND_FACTURA, P288_IND_RESERVA ,P288_SAL_DEPOSITO_DE ,P288_COD_SUCURSAL_FACT, P288_CODIGO_SLIM4 ,P288_DEMANDA_SLIM4 ,P288_STOCK_SLIM4 ,P288_GESTIONAR_SLIM4 ,P288_DEMANDLINKEDWARRREHOUSE1 ,P288_STO'
||'CKLINKEDWARRREHOUSE1,P288_SEQ_ID_EDITAR'
,p_attribute_03=>'P288_AUX_MSJ_CONTROL'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(75414095372110836)
,p_event_id=>wwv_flow_imp.id(75413745043110833)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'&P288_AUX_MSJ_CONTROL.'
,p_attribute_02=>'Error'
,p_attribute_03=>'warning'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P288_AUX_MSJ_CONTROL'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(75414121511110837)
,p_event_id=>wwv_flow_imp.id(75413745043110833)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(74452746524326135)
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P288_AUX_MSJ_CONTROL'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(75414350444110839)
,p_event_id=>wwv_flow_imp.id(75413745043110833)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(74452802219326136)
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P288_AUX_MSJ_CONTROL'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(75414285559110838)
,p_event_id=>wwv_flow_imp.id(75413745043110833)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'Registro Editado'
,p_attribute_02=>unistr('\00C9xito')
,p_attribute_03=>'success'
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P288_AUX_MSJ_CONTROL'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(75414454239110840)
,p_name=>'DA_ELIMINAR'
,p_event_sequence=>40
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P288_SEQ_ID_ELIMINAR'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(75414574989110841)
,p_event_id=>wwv_flow_imp.id(75414454239110840)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>unistr('\00BFDesea Eliminar?')
,p_attribute_02=>'ELIMINAR'
,p_attribute_03=>'danger'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(75414668448110842)
,p_event_id=>wwv_flow_imp.id(75414454239110840)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin ',
'    BSSUCUR.pr_eliminar(PI_SEQ_ID_ELIMINAR => :P288_SEQ_ID_ELIMINAR);',
'end;'))
,p_attribute_02=>'P288_SEQ_ID_ELIMINAR'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(75414795168110843)
,p_event_id=>wwv_flow_imp.id(75414454239110840)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(74452746524326135)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(75415257423110848)
,p_name=>'DA_EDITAR'
,p_event_sequence=>50
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P288_SEQ_ID_EDITAR'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(75415334275110849)
,p_event_id=>wwv_flow_imp.id(75415257423110848)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(74980458800186849)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(75415446382110850)
,p_event_id=>wwv_flow_imp.id(75415257423110848)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(74980313621186848)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(75756887387816702)
,p_event_id=>wwv_flow_imp.id(75415257423110848)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN ',
'    SELECT ',
'        COD_EMPRESA,',
'        COD_SUCURSAL,',
'        DESCRIPCION,',
'        ES_MATRIZ,',
'        ESTADO,',
'        CASILLA_CORREO,',
'        CODIGO_POSTAL,',
'        DETALLE_DIR,',
'        TRABAJA_DOM,',
'        TRABAJA_SAB,',
'        COD_PAIS,',
'        COD_PROVINCIA,',
'        COD_CIUDAD,',
'        COD_BARRIO,',
'        COD_CUSTODIO_INI,',
'        COD_SUCURSAL_CENTRAL,',
'        IND_FACTURA,',
'        IND_RESERVA,',
'        SAL_DEPOSITO_DE,',
'        COD_SUCURSAL_FACT,',
'        CODIGO_SLIM4,',
'        DEMANDA_SLIM4,',
'        STOCK_SLIM4,',
'        GESTIONAR_SLIM4,',
'        DEMANDLINKEDWAREHOUSE1,',
'        STOCKLINKEDWAREHOUSE1   ',
'    ',
'    INTO ',
'    :P288_COD_EMPRESA,',
'    :P288_A_COD_SUCURSAL,',
'    :P288_DESCRIPCION,',
'    :P288_ES_MATRIZ,',
'    :P288_ESTADO,',
'    :P288_CASILLA_CORREO,',
'    :P288_CODIGO_POSTAL,',
'    :P288_DETALLE_DIR,',
'    :P288_TRABAJA_DOM,',
'    :P288_TRABAJA_SAB,',
'    :P288_COD_PAIS,',
'    :P288_COD_PROVINCIA,',
'    :P288_COD_CIUDAD,',
'    :P288_COD_BARRIO,',
'    :P288_COD_CUSTODIO_INI,',
'    :P288_COD_SUCURSAL_CENTRAL,',
'    :P288_IND_FACTURA,',
'    :P288_IND_RESERVA,',
'    :P288_SAL_DEPOSITO_DE,',
'    :P288_COD_SUCURSAL_FACT,',
'    :P288_CODIGO_SLIM4,',
'    :P288_DEMANDA_SLIM4,',
'    :P288_STOCK_SLIM4,',
'    :P288_GESTIONAR_SLIM4,',
'    :P288_DEMANDLINKEDWARRREHOUSE1,',
'    :P288_STOCKLINKEDWARRREHOUSE1',
'',
'    FROM SUCURSALES ',
'    WHERE ROWID = :P288_SEQ_ID_EDITAR;',
'END;'))
,p_attribute_02=>'P288_SEQ_ID_EDITAR'
,p_attribute_03=>'P288_COD_EMPRESA,P288_A_COD_SUCURSAL,P288_DESCRIPCION,P288_ES_MATRIZ,P288_ESTADO,P288_CASILLA_CORREO,P288_CODIGO_POSTAL,P288_DETALLE_DIR,P288_TRABAJA_DOM,P288_TRABAJA_SAB,P288_COD_PAIS,P288_COD_PROVINCIA,P288_COD_CIUDAD,P288_COD_BARRIO,P288_COD_CUSTO'
||'DIO_INI,P288_COD_SUCURSAL_CENTRAL,P288_IND_FACTURA,P288_IND_RESERVA,P288_SAL_DEPOSITO_DE, P288_COD_SUCURSAL_FACT,P288_CODIGO_SLIM4,P288_DEMANDA_SLIM4,P288_STOCK_SLIM4,P288_GESTIONAR_SLIM4,P288_DEMANDLINKEDWARRREHOUSE1,P288_STOCKLINKEDWARRREHOUSE1'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(75756702407816701)
,p_event_id=>wwv_flow_imp.id(75415257423110848)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(74452802219326136)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(75757004927816704)
,p_name=>'DA_CANCELAR'
,p_event_sequence=>60
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(74980598922186850)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(75757193501816705)
,p_event_id=>wwv_flow_imp.id(75757004927816704)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(74452802219326136)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(75757239832816706)
,p_name=>'DA_REFRESH'
,p_event_sequence=>70
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P288_COD_PAIS'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(75757479283816708)
,p_event_id=>wwv_flow_imp.id(75757239832816706)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P288_COD_PROVINCIA,P288_COD_CIUDAD,P288_COD_BARRIO'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(75757513219816709)
,p_name=>'DA_REFRESH_CIUD'
,p_event_sequence=>80
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P288_COD_PROVINCIA'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(75757755664816711)
,p_event_id=>wwv_flow_imp.id(75757513219816709)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P288_COD_CIUDAD,P288_COD_BARRIO'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(75757881778816712)
,p_name=>'DA_REFRESH_BAR'
,p_event_sequence=>90
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P288_COD_CIUDAD'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(75758013018816714)
,p_event_id=>wwv_flow_imp.id(75757881778816712)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P288_COD_BARRIO'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(75758106696816715)
,p_name=>'DA_DETALLE'
,p_event_sequence=>100
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P288_SEQ_ID_DETALLE'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(75758278618816716)
,p_event_id=>wwv_flow_imp.id(75758106696816715)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'   ',
'    SELECT ',
'        CODIGO_SLIM4,',
'        DEMANDA_SLIM4,',
'        STOCK_SLIM4,',
'        GESTIONAR_SLIM4,',
'        DEMANDLINKEDWAREHOUSE1, ',
'        STOCKLINKEDWAREHOUSE1, ',
'        ES_MATRIZ,',
'        ESTADO,',
'        TRABAJA_DOM,',
'        TRABAJA_SAB,',
'        IND_FACTURA,',
'        IND_RESERVA',
'    INTO ',
'        :P288_D_CODIGO_SLIM4,',
'        :P288_D_DEMANDA_SLIM4,',
'        :P288_D_STOCK_SLIM4,        ',
'        :P288_D_GESTIONAR_SLIM4,',
'        :P288_D_DEMANDLINKEDWARRRE,',
'        :P288_D_STOCKLINKEDWARRREHOUSE1,',
'        :P288_D_ES_MATRIZ,',
'        :P288_D_ESTADO,',
'        :P288_D_TRABAJA_DOM,',
'        :P288_D_TRABAJA_SAB,',
'        :P288_D_IND_FACTURA,',
'        :P288_D_IND_RESERVA',
'',
'    FROM SUCURSALES',
'    WHERE COD_EMPRESA = :P_COD_EMPRESA',
'    AND ROWID = :P288_SEQ_ID_DETALLE;',
'',
'END;'))
,p_attribute_02=>'P_COD_EMPRESA,P288_SEQ_ID_DETALLE'
,p_attribute_03=>'P288_D_CODIGO_SLIM4, P288_D_STOCK_SLIM4, P288_D_DEMANDA_SLIM4, P288_D_GESTIONAR_SLIM4, P288_D_DEMANDLINKEDWARRRE, P288_D_STOCKLINKEDWARRREHOUSE1, P288_D_ES_MATRIZ, P288_D_ESTADO, P288_D_TRABAJA_DOM, P288_D_TRABAJA_SAB, P288_D_IND_FACTURA, P288_D_IND_'
||'RESERVA'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(75758366539816717)
,p_event_id=>wwv_flow_imp.id(75758106696816715)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(74452948051326137)
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(74450931215326117)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_INIT'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'   :P288_COD_USUARIO := NVL(:P_COD_USUARIO,USER);',
'   :P288_COD_EMPRESA := NVL(:P_COD_EMPRESA,''1'');',
'   :P288_NOM_EMPRESA := NVL(:P_NOM_EMPRESA,NULL);',
'   :P288_COD_SUCURSAL := NVL(:P_COD_SUCURSAL,NULL);',
'   :P288_NOM_SUCURSAL := NVL(:P_NOM_SUCURSAL,NULL);',
'   :P288_COD_MODULO := NVL(:P_COD_MODULO,''BS'');',
'   :P288_AUX_MSJ_CONTROL := NULL;'))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_imp.component_end;
end;
/
