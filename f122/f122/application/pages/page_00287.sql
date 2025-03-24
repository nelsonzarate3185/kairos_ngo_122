prompt --application/pages/page_00287
begin
--   Manifest
--     PAGE: 00287
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
 p_id=>287
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'BSEMPRES'
,p_alias=>'BSEMPRES'
,p_step_title=>'BSEMPRES'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_last_updated_by=>'JUANASIS'
,p_last_upd_yyyymmddhh24miss=>'20230104163917'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(70412944303288618)
,p_plug_name=>'EMPRESAS'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>990
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(70413001549288619)
,p_plug_name=>'AGREGAR/EDITAR'
,p_parent_plug_id=>wwv_flow_imp.id(70412944303288618)
,p_region_template_options=>'#DEFAULT#:js-dialog-autoheight:js-dialog-size720x480'
,p_plug_template=>wwv_flow_imp.id(40117728043263659)
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(70414513227288634)
,p_plug_name=>'VARIABLES'
,p_parent_plug_id=>wwv_flow_imp.id(70412944303288618)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>30
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(70415838274288647)
,p_plug_name=>'EMPRESAS'
,p_parent_plug_id=>wwv_flow_imp.id(70412944303288618)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'    ROWID P_ID,',
'    NULL EDITAR,',
'    NULL ELIMINAR,',
'    NULL DETALLE,',
'    COD_EMPRESA,',
'    DESCRIPCION,',
'    TITULO_REPORTES,',
'    RUC_EMPRESA,',
'    COD_PER_JURIDICA,',
'    COD_MONEDA_ORIGEN',
'FROM EMPRESAS ',
'ORDER BY lpad(ltrim(rtrim(cod_empresa)), 5,'' '' );'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'EMPRESAS'
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
 p_id=>wwv_flow_imp.id(70415915418288648)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_actions_menu=>'N'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_enable_mail_download=>'Y'
,p_owner=>'JUANASIS'
,p_internal_uid=>70415915418288648
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(70416116601288650)
,p_db_column_name=>'DESCRIPCION'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>unistr('Descripci\00F3n')
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(74131847644915701)
,p_db_column_name=>'TITULO_REPORTES'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Titulo para Reportes'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(74131913966915702)
,p_db_column_name=>'RUC_EMPRESA'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'RUC'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(74132071005915703)
,p_db_column_name=>'COD_PER_JURIDICA'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Persona'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_rpt_named_lov=>wwv_flow_imp.id(25345769790214481)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(74132117370915704)
,p_db_column_name=>'COD_MONEDA_ORIGEN'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Moneda'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_rpt_named_lov=>wwv_flow_imp.id(11429983188001511)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(74132271576915705)
,p_db_column_name=>'EDITAR'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Editar'
,p_column_link=>'javascript:$s(''P287_SEQ_ID_EDITAR'',''#P_ID#'');'
,p_column_linktext=>'<span aria-hidden="true" class="fa fa-edit"></span>'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(74132355089915706)
,p_db_column_name=>'ELIMINAR'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Eliminar'
,p_column_link=>'javascript:$s(''P287_SEQ_ID_ELIMINAR'',#COD_EMPRESA#);'
,p_column_linktext=>'<span class="fa fa-trash" aria-hidden="true"></span>'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(74132491447915707)
,p_db_column_name=>'DETALLE'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Detalle'
,p_column_link=>'javascript:$s(''P287_SEQ_ID_DETALLE'',#COD_EMPRESA#);'
,p_column_linktext=>'<span class="fa fa-search" aria-hidden="true"></span>'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(74132599205915708)
,p_db_column_name=>'P_ID'
,p_display_order=>100
,p_column_identifier=>'J'
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
 p_id=>wwv_flow_imp.id(74450854777326116)
,p_db_column_name=>'COD_EMPRESA'
,p_display_order=>110
,p_column_identifier=>'L'
,p_column_label=>unistr('C\00F3digo')
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(74097418684894200)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'740975'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'EDITAR:DESCRIPCION:TITULO_REPORTES:RUC_EMPRESA:COD_PER_JURIDICA:COD_MONEDA_ORIGEN:ELIMINAR:DETALLE:'
,p_sort_column_1=>'COD_EMPRESA'
,p_sort_direction_1=>'DESC'
,p_sort_column_2=>'0'
,p_sort_direction_2=>'ASC'
,p_sort_column_3=>'0'
,p_sort_direction_3=>'ASC'
,p_sort_column_4=>'0'
,p_sort_direction_4=>'ASC'
,p_sort_column_5=>'0'
,p_sort_direction_5=>'ASC'
,p_sort_column_6=>'0'
,p_sort_direction_6=>'ASC'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(74449887937326106)
,p_plug_name=>'DETALLES'
,p_parent_plug_id=>wwv_flow_imp.id(70412944303288618)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>40
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(74133067072915713)
,p_button_sequence=>160
,p_button_plug_id=>wwv_flow_imp.id(70413001549288619)
,p_button_name=>'BT_CANCELAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Cancelar'
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(74132868309915711)
,p_button_sequence=>150
,p_button_plug_id=>wwv_flow_imp.id(70413001549288619)
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
 p_id=>wwv_flow_imp.id(74132985850915712)
,p_button_sequence=>170
,p_button_plug_id=>wwv_flow_imp.id(70413001549288619)
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
 p_id=>wwv_flow_imp.id(74132719104915710)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(70415838274288647)
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
 p_id=>wwv_flow_imp.id(70413104797288620)
,p_name=>'P287_E_COD_EMPRESA'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(70413001549288619)
,p_prompt=>'Cod Empresa'
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
 p_id=>wwv_flow_imp.id(70413265085288621)
,p_name=>'P287_DESCRIPCION'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(70413001549288619)
,p_prompt=>unistr('Descripci\00F3n')
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
 p_id=>wwv_flow_imp.id(70413368172288622)
,p_name=>'P287_TITULO_REPORTES'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(70413001549288619)
,p_prompt=>'Titulo Reportes'
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
 p_id=>wwv_flow_imp.id(70413472318288623)
,p_name=>'P287_RUC_EMPRESA'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(70413001549288619)
,p_prompt=>'Ruc Empresa'
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
 p_id=>wwv_flow_imp.id(70413575461288624)
,p_name=>'P287_COD_PER_JURIDICA'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(70413001549288619)
,p_prompt=>'Cod Per Juridica'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_PERSONAS'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select cod_persona || '' - '' || ltrim( rtrim( nvl( nombre, nomb_fantasia ) ) ) d, cod_persona r ',
'from personas',
'order by 1;'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- seleccione -'
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
 p_id=>wwv_flow_imp.id(70413624053288625)
,p_name=>'P287_DESC_NOMBRE'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(70413001549288619)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(70413708086288626)
,p_name=>'P287_COD_MONEDA_ORIGEN'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(70413001549288619)
,p_prompt=>'Cod Moneda Origen'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_MONEDAS'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select descripcion as d,',
'       cod_moneda r',
'  from monedas',
' order by 1'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- seleccione -'
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
 p_id=>wwv_flow_imp.id(70413883348288627)
,p_name=>'P287_DESC_MONEDA'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(70413001549288619)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(70413921805288628)
,p_name=>'P287_ACTIVIDAD'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(70413001549288619)
,p_prompt=>'Actividad'
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
 p_id=>wwv_flow_imp.id(70414034553288629)
,p_name=>'P287_DIRECCION'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(70413001549288619)
,p_prompt=>'Direccion'
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
 p_id=>wwv_flow_imp.id(70414187720288630)
,p_name=>'P287_NRO_INSCRIPCION_AD'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(70413001549288619)
,p_prompt=>'Nro Inscripcion Ad'
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
 p_id=>wwv_flow_imp.id(70414278723288631)
,p_name=>'P287_NRO_REGISTRO_DT'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(70413001549288619)
,p_prompt=>'Nro Registro Dt'
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
 p_id=>wwv_flow_imp.id(70414347784288632)
,p_name=>'P287_RUTA_LOGO'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(70413001549288619)
,p_prompt=>'Ruta Logo'
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
 p_id=>wwv_flow_imp.id(70414484534288633)
,p_name=>'P287_MENBRETE'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(70413001549288619)
,p_prompt=>'Menbrete'
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
 p_id=>wwv_flow_imp.id(70414679928288635)
,p_name=>'P287_DERECHOS'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(70414513227288634)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(70414714104288636)
,p_name=>'P287_COD_MODULO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(70414513227288634)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(70414845281288637)
,p_name=>'P287_NOM_MODULO'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(70414513227288634)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(70414934441288638)
,p_name=>'P287_COD_FORMA'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(70414513227288634)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(70415032895288639)
,p_name=>'P287_NOM_FORMA'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(70414513227288634)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(70415106199288640)
,p_name=>'P287_NOM_EMPRESA'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(70414513227288634)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(70415289480288641)
,p_name=>'P287_COD_SUCURSAL'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(70414513227288634)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(70415308987288642)
,p_name=>'P287_NOM_SUCURSAL'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(70414513227288634)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(70415469944288643)
,p_name=>'P287_COD_USUARIO'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(70414513227288634)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(70415541672288644)
,p_name=>'P287_COD_IDIOMA'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(70414513227288634)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(70415690310288645)
,p_name=>'P287_CODSISMENU'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(70414513227288634)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(74133487250915717)
,p_name=>'P287_SEQ_ID_EDITAR'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(70414513227288634)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(74133537086915718)
,p_name=>'P287_SEQ_ID_ELIMINAR'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(70414513227288634)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(74133773615915720)
,p_name=>'P287_COD_EMPRESA'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(70414513227288634)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(74134287562915725)
,p_name=>'P287_AUX_MSJ_CONTROL'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(70414513227288634)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(74449583565326103)
,p_name=>'P287_SEQ_ID_DETALLE'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(70414513227288634)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(74449924737326107)
,p_name=>'P287_DET_ACTIVIDAD'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(74449887937326106)
,p_prompt=>'ACTIVIDAD'
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
 p_id=>wwv_flow_imp.id(74450018114326108)
,p_name=>'P287_DET_DIRECCION'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(74449887937326106)
,p_prompt=>'DIRECCION'
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
 p_id=>wwv_flow_imp.id(74450155836326109)
,p_name=>'P287_DET_RUTA_LOGO'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(74449887937326106)
,p_prompt=>'RUTA LOGO'
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
 p_id=>wwv_flow_imp.id(74450247672326110)
,p_name=>'P287_DET_MEMBRETE'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(74449887937326106)
,p_prompt=>'MEMBRETE'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>30
,p_cHeight=>5
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'Y'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(74450347740326111)
,p_name=>'P287_DET_NRO_INSC_AD'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(74449887937326106)
,p_prompt=>'REG. IMPORTADOR'
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
 p_id=>wwv_flow_imp.id(74450484572326112)
,p_name=>'P287_DET_NRO_REG_DT'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(74449887937326106)
,p_prompt=>'REG. DISTRIBUIDOR'
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
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(74133151448915714)
,p_name=>'DA_ABRIR_REGION'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(74132719104915710)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(74135763336915740)
,p_event_id=>wwv_flow_imp.id(74133151448915714)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P287_DESCRIPCION,P287_TITULO_REPORTES,P287_RUC_EMPRESA,P287_COD_PER_JURIDICA,P287_COD_MONEDA_ORIGEN,P287_ACTIVIDAD,P287_DIRECCION,P287_NRO_INSCRIPCION_AD,P287_NRO_REGISTRO_DT,P287_RUTA_LOGO,P287_MENBRETE'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(74133242068915715)
,p_event_id=>wwv_flow_imp.id(74133151448915714)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(70413001549288619)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(74133654598915719)
,p_event_id=>wwv_flow_imp.id(74133151448915714)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT MAX(TO_NUMBER(COD_EMPRESA))+1',
'INTO',
'    :P287_E_COD_EMPRESA',
'FROM EMPRESAS;'))
,p_attribute_03=>'P287_E_COD_EMPRESA'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(74133857192915721)
,p_event_id=>wwv_flow_imp.id(74133151448915714)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(74132868309915711)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(74133934038915722)
,p_event_id=>wwv_flow_imp.id(74133151448915714)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(74132985850915712)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(74134098673915723)
,p_name=>'DA_GUARDAR_CREAR'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(74132868309915711)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(74134161558915724)
,p_event_id=>wwv_flow_imp.id(74134098673915723)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P287_AUX_MSJ_CONTROL := NULL;',
'IF :P287_DESCRIPCION IS NULL THEN',
unistr('    :P287_AUX_MSJ_CONTROL := ''AGREGE UNA DESCRIPCI\00D3N'';'),
'    ELSIF :P287_TITULO_REPORTES IS NULL THEN',
'        :P287_AUX_MSJ_CONTROL := ''AGREGE UN TITULO PARA REPORTES'';',
'        ELSIF :P287_COD_PER_JURIDICA IS NULL THEN',
'            :P287_AUX_MSJ_CONTROL := ''SELECCIONE UNA PERSONA JURIDICA'';',
'            ELSIF :P287_COD_MONEDA_ORIGEN IS NULL THEN',
'                :P287_AUX_MSJ_CONTROL := ''SELECCIONE UNA MONEDA'';',
'                ELSE',
'                    BEGIN',
'                        ',
'                    BSEMPRES.pr_agregar (PI_COD_EMPRESA =>:P287_E_COD_EMPRESA,',
'                        PI_DESCRIPCION =>:P287_DESCRIPCION,',
'                        PI_TITULO_REPORTES =>:P287_TITULO_REPORTES,',
'                        PI_RUC_EMPRESA => :P287_RUC_EMPRESA,',
'                        PI_COD_PER_JURIDICA =>:P287_COD_PER_JURIDICA,',
'                        PI_COD_MONEDA_ORIGEN => :P287_COD_MONEDA_ORIGEN,',
'                        PI_ACTIVIDAD =>:P287_ACTIVIDAD,',
'                        PI_DIRECCION =>:P287_DIRECCION,',
'                        PI_NRO_INSCRIPCION_AD =>:P287_NRO_INSCRIPCION_AD,',
'                        PI_NRO_REGISTRO_DT =>:P287_NRO_REGISTRO_DT,',
'                        PI_RUTA_LOGO =>:P287_RUTA_LOGO,',
'                        PI_MENBRETE => :P287_MENBRETE',
'                            ',
'                                 ',
'                             );',
'                    END;',
'',
'END IF;',
' '))
,p_attribute_02=>'P287_E_COD_EMPRESA,P287_DESCRIPCION,P287_TITULO_REPORTES,P287_RUC_EMPRESA,P287_COD_PER_JURIDICA,P287_COD_MONEDA_ORIGEN,P287_ACTIVIDAD,P287_DIRECCION,P287_NRO_INSCRIPCION_AD,P287_NRO_REGISTRO_DT,P287_RUTA_LOGO,P287_MENBRETE'
,p_attribute_03=>'P287_AUX_MSJ_CONTROL'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(74134399015915726)
,p_event_id=>wwv_flow_imp.id(74134098673915723)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'&P287_AUX_MSJ_CONTROL.'
,p_attribute_02=>'ERROR'
,p_attribute_03=>'warning'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P287_AUX_MSJ_CONTROL'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(74134446762915727)
,p_event_id=>wwv_flow_imp.id(74134098673915723)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(70415838274288647)
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P287_AUX_MSJ_CONTROL'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(74135689258915739)
,p_event_id=>wwv_flow_imp.id(74134098673915723)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'Nuevo registro creado correctamente'
,p_attribute_02=>unistr('\00C9xito')
,p_attribute_03=>'success'
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P287_AUX_MSJ_CONTROL'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(74134547058915728)
,p_event_id=>wwv_flow_imp.id(74134098673915723)
,p_event_result=>'TRUE'
,p_action_sequence=>90
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(70413001549288619)
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P287_AUX_MSJ_CONTROL'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(74134672869915729)
,p_name=>'DA_ELIMINAR'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P287_SEQ_ID_ELIMINAR'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(74134721233915730)
,p_event_id=>wwv_flow_imp.id(74134672869915729)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>unistr('\00BFDesea eliminar?')
,p_attribute_02=>'Eliminar'
,p_attribute_03=>'danger'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(74135261933915735)
,p_event_id=>wwv_flow_imp.id(74134672869915729)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'        apex_debug.error(''p_id: ''||:P287_SEQ_ID_ELIMINAR);',
'    	delete from empresas ',
'    	where COD_EMPRESA = :P287_SEQ_ID_ELIMINAR;',
'',
'	exception',
'    	when others then',
'        apex_debug.error(''error en eliminar registro ''||sqlerrm);',
unistr('        raise_application_error(-20201,''No se encuentra el c\00F3digo de empresa.''||sqlerrm);'),
'	end;'))
,p_attribute_02=>'P287_SEQ_ID_ELIMINAR'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(74135310033915736)
,p_event_id=>wwv_flow_imp.id(74134672869915729)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(70415838274288647)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(74135494179915737)
,p_name=>'DA_ABRIR_EDITAR'
,p_event_sequence=>40
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P287_SEQ_ID_EDITAR'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(74135887063915741)
,p_event_id=>wwv_flow_imp.id(74135494179915737)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin ',
'    select ',
'        cod_empresa,',
'        COD_MONEDA_ORIGEN,',
'        COD_PER_JURIDICA,',
'        TITULO_REPORTES,',
'        DESCRIPCION,',
'        RUC_EMPRESA,',
'        DIRECCION,',
'        ACTIVIDAD,',
'        NRO_INSCRIPCION_AD,',
'        NRO_REGISTRO_DT,',
'        RUTA_LOGO,',
'        MEMBRETE',
'    into ',
'        :P287_E_COD_EMPRESA,',
'        :P287_COD_MONEDA_ORIGEN,',
'        :P287_COD_PER_JURIDICA,',
'        :P287_TITULO_REPORTES,',
'        :P287_DESCRIPCION,',
'        :P287_RUC_EMPRESA,',
'        :P287_DIRECCION,',
'        :P287_ACTIVIDAD,',
'        :P287_NRO_INSCRIPCION_AD,',
'        :P287_NRO_REGISTRO_DT,',
'        :P287_RUTA_LOGO,',
'        :P287_MENBRETE',
'    from empresas',
'    where rowid = :P287_SEQ_ID_EDITAR;',
' exception',
'    when others then',
'        apex_debug.error(''error al editar ''||sqlerrm);',
'end;'))
,p_attribute_02=>'P287_SEQ_ID_EDITAR'
,p_attribute_03=>'P287_E_COD_EMPRESA,,P287_DESCRIPCION,P287_TITULO_REPORTES,P287_RUC_EMPRESA,P287_COD_PER_JURIDICA,P287_COD_MONEDA_ORIGEN,P287_ACTIVIDAD,P287_DIRECCION,P287_NRO_INSCRIPCION_AD,P287_NRO_REGISTRO_DT,P287_RUTA_LOGO,P287_MENBRETE'
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
 p_id=>wwv_flow_imp.id(74135592647915738)
,p_event_id=>wwv_flow_imp.id(74135494179915737)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(70413001549288619)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(74449371840326101)
,p_event_id=>wwv_flow_imp.id(74135494179915737)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(74132985850915712)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(74449404132326102)
,p_event_id=>wwv_flow_imp.id(74135494179915737)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(74132868309915711)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(74136059667915743)
,p_name=>'DA_GUARDAR_EDITAR'
,p_event_sequence=>50
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(74132985850915712)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(74135915514915742)
,p_event_id=>wwv_flow_imp.id(74136059667915743)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P287_AUX_MSJ_CONTROL := null;',
'IF :P287_DESCRIPCION IS NULL THEN',
unistr('    :P287_AUX_MSJ_CONTROL := ''AGREGE UNA DESCRIPCI\00D3N'';'),
'    ELSIF :P287_TITULO_REPORTES IS NULL THEN',
'        :P287_AUX_MSJ_CONTROL := ''AGREGE UN TITULO PARA REPORTES'';',
'        ELSIF :P287_COD_PER_JURIDICA IS NULL THEN',
'            :P287_AUX_MSJ_CONTROL := ''SELECCIONE UNA PERSONA JURIDICA'';',
'            ELSIF :P287_COD_MONEDA_ORIGEN IS NULL THEN',
'                :P287_AUX_MSJ_CONTROL := ''SELECCIONE UNA MONEDA'';',
'                ELSE',
'                    BEGIN',
'                         UPDATE Empresas',
'                         SET COD_EMPRESA = :P287_E_COD_EMPRESA,',
'                                COD_MONEDA_ORIGEN = :P287_COD_MONEDA_ORIGEN,',
'                                COD_PER_JURIDICA = :P287_COD_PER_JURIDICA,',
'                                TITULO_REPORTES = :P287_TITULO_REPORTES,',
'                                DESCRIPCION = :P287_DESCRIPCION,',
'                                RUC_EMPRESA = :P287_RUC_EMPRESA,',
'                                DIRECCION = :P287_DIRECCION,',
'                                ACTIVIDAD = :P287_ACTIVIDAD,',
'                                NRO_INSCRIPCION_AD = :P287_NRO_INSCRIPCION_AD,',
'                                NRO_REGISTRO_DT = :P287_NRO_REGISTRO_DT,',
'                                RUTA_LOGO = :P287_RUTA_LOGO,',
'                                MEMBRETE = :P287_MENBRETE',
'                          WHERE ROWID = :P287_SEQ_ID_EDITAR;',
'                    exception',
'                        when others then',
'                            apex_debug.error(''error al editar registro ''||sqlerrm);',
unistr('                            raise_application_error(-20201,''No se encuentra el c\00F3digo de empresa.''||sqlerrm);'),
'                    END;',
'',
'END IF;',
' '))
,p_attribute_02=>'P287_E_COD_EMPRESA,P287_DESCRIPCION,P287_TITULO_REPORTES,P287_RUC_EMPRESA,P287_COD_PER_JURIDICA,P287_COD_MONEDA_ORIGEN,P287_ACTIVIDAD,P287_DIRECCION,P287_NRO_INSCRIPCION_AD,P287_NRO_REGISTRO_DT,P287_RUTA_LOGO,P287_MENBRETE,P287_SEQ_ID_EDITAR'
,p_attribute_03=>'P287_AUX_MSJ_CONTROL'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(74136254817915745)
,p_event_id=>wwv_flow_imp.id(74136059667915743)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'&P287_AUX_MSJ_CONTROL.'
,p_attribute_02=>'ERROR'
,p_attribute_03=>'warning'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P287_AUX_MSJ_CONTROL'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(74136369156915746)
,p_event_id=>wwv_flow_imp.id(74136059667915743)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(70415838274288647)
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P287_AUX_MSJ_CONTROL'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(74136414908915747)
,p_event_id=>wwv_flow_imp.id(74136059667915743)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'registro editado crrectamente'
,p_attribute_02=>unistr('\00C9xito')
,p_attribute_03=>'success'
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P287_AUX_MSJ_CONTROL'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(74136556000915748)
,p_event_id=>wwv_flow_imp.id(74136059667915743)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(70413001549288619)
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P287_AUX_MSJ_CONTROL'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(74136657403915749)
,p_name=>'DA_CANCELAR'
,p_event_sequence=>60
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(74133067072915713)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(74136755929915750)
,p_event_id=>wwv_flow_imp.id(74136657403915749)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(70413001549288619)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(74449633930326104)
,p_name=>'DA_DETALLE'
,p_event_sequence=>70
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P287_SEQ_ID_DETALLE'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(74450517517326113)
,p_event_id=>wwv_flow_imp.id(74449633930326104)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN ',
'    SELECT DIRECCION,',
'    ACTIVIDAD,',
'    NRO_INSCRIPCION_AD,',
'    NRO_REGISTRO_DT,',
'    RUTA_LOGO,',
'    MEMBRETE',
'    INTO ',
'    :P287_DET_DIRECCION,',
'    :P287_DET_ACTIVIDAD,',
'    :P287_DET_NRO_INSC_AD,',
'    :P287_DET_NRO_REG_DT,',
'    :P287_DET_RUTA_LOGO,',
'    :P287_DET_MEMBRETE',
'    FROM EMPRESAS ',
'    WHERE COD_EMPRESA = :P287_SEQ_ID_DETALLE;',
'  EXCEPTION',
'    WHEN OTHERS THEN',
'    APEX_DEBUG.ERROR(SQLERRM);',
'',
'END;'))
,p_attribute_02=>'P287_SEQ_ID_DETALLE'
,p_attribute_03=>'P287_DET_ACTIVIDAD,P287_DET_NRO_INSC_AD,P287_DET_DIRECCION,P287_DET_NRO_REG_DT,P287_DET_RUTA_LOGO,P287_DET_MEMBRETE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(74450665581326114)
,p_event_id=>wwv_flow_imp.id(74449633930326104)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(74449887937326106)
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(70415777606288646)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_INIT'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
' ',
'',
':P287_COD_USUARIO := NVL(:P_COD_USUARIO,USER);',
':P287_COD_EMPRESA := NVL(:P_COD_EMPRESA,''1'');',
':P287_NOM_EMPRESA := NVL(:P_NOM_EMPRESA,NULL);',
':P287_COD_SUCURSAL := NVL(:P_COD_SUCURSAL,NULL);',
':P287_NOM_SUCURSAL:= NVL(:P_NOM_SUCURSAL,NULL);',
':P287_COD_MODULO := NVL(:P_COD_MODULO,''BS'');',
':P287_AUX_MSJ_CONTROL := NULL;'))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_imp.component_end;
end;
/
