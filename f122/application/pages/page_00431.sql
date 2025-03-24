prompt --application/pages/page_00431
begin
--   Manifest
--     PAGE: 00431
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
 p_id=>431
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'Tarifario de Fletes de Vehiculos'
,p_alias=>'RPVETARI'
,p_step_title=>'Tarifario de Fletes de Vehiculos'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function soloNumeros1(e){',
'  var key = e.charCode;',
'    return key >= 48 && key <= 57 || key == 44',
'}',
'',
'function soloNumeros2(e){',
'  var key = e.charCode;',
'    return key >= 48 && key <= 57;',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_last_updated_by=>'FCARDOZO'
,p_last_upd_yyyymmddhh24miss=>'20230317143938'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(127155753591924534)
,p_plug_name=>'Crear/Editar'
,p_region_template_options=>'#DEFAULT#:js-dialog-autoheight:js-dialog-size720x480'
,p_plug_template=>wwv_flow_imp.id(40117728043263659)
,p_plug_display_sequence=>1010
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(127157197005924548)
,p_plug_name=>'Tarifario de Fletes de Vehiculos'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>1020
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(127153119073924508)
,p_plug_name=>'B_VEHITAR'
,p_parent_plug_id=>wwv_flow_imp.id(127157197005924548)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>990
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select COD_EMPRESA,',
'       COD_VEHICULO,',
'       (select descripcion',
'        from rp_vehiculos ',
'        where cod_empresa = :P_COD_EMPRESA and t.cod_vehiculo=cod_vehiculo',
'       ) Descripcion,',
'       TIPO,',
'       MONTO,',
'       CANT_AYUD,',
'       PLUS_AYUD,',
'       NULL EDITAR,',
'       NULL ELIMINAR,',
'       ROWID',
'  from RP_VEHICULOS_TARIFAS t ',
'  order by COD_VEHICULO;'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'B_VEHITAR'
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
 p_id=>wwv_flow_imp.id(127153479849924511)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_finder_drop_down=>'N'
,p_show_actions_menu=>'N'
,p_report_list_mode=>'NONE'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_enable_mail_download=>'Y'
,p_owner=>'FCARDOZO'
,p_internal_uid=>127153479849924511
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(127153504398924512)
,p_db_column_name=>'COD_EMPRESA'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Cod Empresa'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(127153693118924513)
,p_db_column_name=>'COD_VEHICULO'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>unistr('C\00F3digo')
,p_column_link=>'javascript:$s(''P431_AUX_ROWID'',''#COD_VEHICULO#'');'
,p_column_linktext=>'#COD_VEHICULO#'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(127153730217924514)
,p_db_column_name=>'TIPO'
,p_display_order=>40
,p_column_identifier=>'C'
,p_column_label=>'Tipo'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(127153813455924515)
,p_db_column_name=>'MONTO'
,p_display_order=>50
,p_column_identifier=>'D'
,p_column_label=>'Costo'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(127153958765924516)
,p_db_column_name=>'CANT_AYUD'
,p_display_order=>60
,p_column_identifier=>'E'
,p_column_label=>'Nro. de Ayudante'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(127154022214924517)
,p_db_column_name=>'PLUS_AYUD'
,p_display_order=>70
,p_column_identifier=>'F'
,p_column_label=>'Plus x Ayudante'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(127154772318924524)
,p_db_column_name=>'ROWID'
,p_display_order=>80
,p_column_identifier=>'I'
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
 p_id=>wwv_flow_imp.id(127154549232924522)
,p_db_column_name=>'EDITAR'
,p_display_order=>90
,p_column_identifier=>'G'
,p_column_label=>'&nbsp'
,p_column_link=>'javascript:$s(''P431_EDITAR'',''#ROWID#'');'
,p_column_linktext=>'<span aria-hidden="true" class="fa fa-edit"></span>'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_display_condition_type=>'FUNCTION_BODY'
,p_display_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'VCONTROL NUMBER;',
'BEGIN',
'',
'    VCONTROL := SEGURIDAD_GRANULAR.RETORNA_PERMISO_BOTON(ppage_id     => :APP_PAGE_ID,',
'                                                         papli0100_id => :P_APLI0100_ID,',
'                                                         pcod_empresa => :P_COD_EMPRESA,',
'                                                         pusua0100_id => :P_USUA0100_ID,',
'                                                         pdm_boto     => 2); --1 guardar, 2 editar, 3 eliminar',
'',
'    IF VCONTROL = 0 THEN',
'        RETURN FALSE;',
'    ELSE',
'        RETURN TRUE;',
'    END IF;',
'END;'))
,p_display_condition2=>'PLSQL'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(127154677440924523)
,p_db_column_name=>'ELIMINAR'
,p_display_order=>100
,p_column_identifier=>'H'
,p_column_label=>'&nbsp'
,p_column_link=>'javascript:$s(''P431_ELIMINAR'',''#ROWID#'');'
,p_column_linktext=>'<span class="fa fa-trash-o" aria-hidden="true"></span>'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_display_condition_type=>'FUNCTION_BODY'
,p_display_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'VCONTROL NUMBER;',
'BEGIN',
'',
'    VCONTROL := SEGURIDAD_GRANULAR.RETORNA_PERMISO_BOTON(ppage_id     => :APP_PAGE_ID,',
'                                                         papli0100_id => :P_APLI0100_ID,',
'                                                         pcod_empresa => :P_COD_EMPRESA,',
'                                                         pusua0100_id => :P_USUA0100_ID,',
'                                                         pdm_boto     => 3); --1 guardar, 2 editar, 3 eliminar',
'',
'    IF VCONTROL = 0 THEN',
'        RETURN FALSE;',
'    ELSE',
'        RETURN TRUE;',
'    END IF;',
'END;'))
,p_display_condition2=>'PLSQL'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(127154949059924526)
,p_db_column_name=>'DESCRIPCION'
,p_display_order=>110
,p_column_identifier=>'J'
,p_column_label=>unistr('Descripci\00F3n Veh\00EDculo')
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_rpt_named_lov=>wwv_flow_imp.id(127828153527403029)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(127805992467552865)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1278060'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>15
,p_report_columns=>'EDITAR:COD_VEHICULO:DESCRIPCION:TIPO:MONTO:CANT_AYUD:PLUS_AYUD:ELIMINAR:'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(127153236044924509)
,p_plug_name=>'VARIABLES'
,p_parent_plug_id=>wwv_flow_imp.id(127157197005924548)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>1000
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(127157252006924549)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(127155753591924534)
,p_button_name=>'Cancelar'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_image_alt=>'Cancelar'
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(128366395085470901)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(127155753591924534)
,p_button_name=>'Guardar'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Guardar'
,p_button_position=>'CREATE'
,p_button_execute_validations=>'N'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(127156574216924542)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(127153119073924508)
,p_button_name=>'BT_AGREGAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Agregar'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_warn_on_unsaved_changes=>null
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'VCONTROL NUMBER;',
'BEGIN',
'',
'    VCONTROL := SEGURIDAD_GRANULAR.RETORNA_PERMISO_BOTON(ppage_id     => :APP_PAGE_ID,',
'                                                         papli0100_id => :P_APLI0100_ID,',
'                                                         pcod_empresa => :P_COD_EMPRESA,',
'                                                         pusua0100_id => :P_USUA0100_ID,',
'                                                         pdm_boto     => 1); --1 guardar, 2 editar, 3 eliminar',
'',
'    IF VCONTROL = 0 THEN',
'        RETURN FALSE;',
'    ELSE',
'        RETURN TRUE;',
'    END IF;',
'END;'))
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'FUNCTION_BODY'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(127154190344924518)
,p_name=>'P431_TRANSPORT'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(127153236044924509)
,p_prompt=>'Transport'
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
 p_id=>wwv_flow_imp.id(127154284879924519)
,p_name=>'P431_CHAPA'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(127153236044924509)
,p_prompt=>'Chapa'
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
 p_id=>wwv_flow_imp.id(127154324519924520)
,p_name=>'P431_PESO_KG'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(127153236044924509)
,p_prompt=>'Peso Kg'
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
 p_id=>wwv_flow_imp.id(127154482066924521)
,p_name=>'P431_VOLUMEN'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(127153236044924509)
,p_prompt=>'Volumen'
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
 p_id=>wwv_flow_imp.id(127154897438924525)
,p_name=>'P431_COD_EMPRESA'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(127153236044924509)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(127155038196924527)
,p_name=>'P431_AUX_ROWID'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(127153236044924509)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(127155237659924529)
,p_name=>'P431_COD_USUARIO'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(127153236044924509)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(127155394853924530)
,p_name=>'P431_COD_SUCURSAL'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(127153236044924509)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(127155850624924535)
,p_name=>'P431_COD_VEHICULO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(127155753591924534)
,p_prompt=>unistr('C\00F3digo')
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_VEHICULOS_RPVETARI'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select descripcion D, cod_vehiculo R',
'from rp_vehiculos ',
'where cod_empresa = :P_COD_EMPRESA ',
'order by descripcion'))
,p_cSize=>30
,p_tag_attributes=>'readonly'
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
 p_id=>wwv_flow_imp.id(127156027505924537)
,p_name=>'P431_TIPO'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(127155753591924534)
,p_prompt=>'Tipo'
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
 p_id=>wwv_flow_imp.id(127156149032924538)
,p_name=>'P431_CANT_AYUD'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(127155753591924534)
,p_prompt=>'Nro. de Ayudante'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(127156277069924539)
,p_name=>'P431_MONTO'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(127155753591924534)
,p_prompt=>'Costo'
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
 p_id=>wwv_flow_imp.id(127156352659924540)
,p_name=>'P431_PLUS_AYUD'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(127155753591924534)
,p_prompt=>'Plus x Ayudante'
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
 p_id=>wwv_flow_imp.id(128366613594470904)
,p_name=>'P431_DESCRIPCION'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(127155753591924534)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(128368333414470921)
,p_name=>'P431_ELIMINAR'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(127153119073924508)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(128368858331470926)
,p_name=>'P431_EDITAR'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(127153119073924508)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(128369985068470937)
,p_name=>'P431_ERR'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(127153119073924508)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(128370674902470944)
,p_validation_name=>'VA_COD_VEHICULO'
,p_validation_sequence=>10
,p_validation=>'P431_COD_VEHICULO'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Seleccione una opcion'
,p_validation_condition=>'P431_COD_VEHICULO'
,p_validation_condition_type=>'ITEM_IS_NOT_NULL'
,p_when_button_pressed=>wwv_flow_imp.id(128366395085470901)
,p_associated_item=>wwv_flow_imp.id(127155850624924535)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(127155437232924531)
,p_name=>'DA_MOSTRAR_DETALLE'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P431_AUX_ROWID'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(127155518028924532)
,p_event_id=>wwv_flow_imp.id(127155437232924531)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT TIPO,CHAPA,PESO_KG,VOLUMEN INTO :P431_TRANSPORT,:P431_CHAPA,:P431_PESO_KG,:P431_VOLUMEN',
'FROM RP_VEHICULOS',
'WHERE COD_EMPRESA = :P_COD_EMPRESA AND COD_VEHICULO = :P431_AUX_ROWID;',
'',
'',
''))
,p_attribute_02=>'P431_AUX_ROWID'
,p_attribute_03=>'P431_TRANSPORT,P431_CHAPA,P431_PESO_KG,P431_VOLUMEN'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(127156653354924543)
,p_name=>'DA_AGREGAR'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(127156574216924542)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(127156707096924544)
,p_event_id=>wwv_flow_imp.id(127156653354924543)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P431_COD_VEHICULO,P431_TIPO,P431_CANT_AYUD,P431_PLUS_AYUD'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(128371105250470949)
,p_event_id=>wwv_flow_imp.id(127156653354924543)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'NULL;',
''))
,p_attribute_03=>'P431_COD_VEHICULO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(127156933094924546)
,p_event_id=>wwv_flow_imp.id(127156653354924543)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(127155753591924534)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(128366423587470902)
,p_name=>'DA_GUARDAR'
,p_event_sequence=>30
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(128366395085470901)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(128366527145470903)
,p_event_id=>wwv_flow_imp.id(128366423587470902)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
' ',
':P431_ERR := null;',
'    IF :P431_TIPO is not null ',
'    and :P431_COD_VEHICULO is not null then',
'            IF :P431_EDITAR IS NULL THEN',
'                --INSERTAR REGISTRO',
'                INSERT INTO RP_VEHICULOS_TARIFAS (',
'                        COD_VEHICULO,',
'                        COD_EMPRESA,',
'                        TIPO,',
'                        MONTO,',
'                        CANT_AYUD,',
'                        PLUS_AYUD',
'                ) VALUES (',
'                        :P431_COD_VEHICULO,',
'                        :P431_COD_EMPRESA,',
'                        :P431_TIPO,',
'                        :P431_MONTO,',
'                        :P431_CANT_AYUD,',
'                        :P431_PLUS_AYUD',
'                );',
'            ELSE ',
'                ',
'                --ACTUALIZO EL REGISTRO',
'                UPDATE RP_VEHICULOS_TARIFAS SET',
'                        COD_VEHICULO= :P431_COD_VEHICULO,',
'                        TIPO = :P431_TIPO,',
'                        MONTO = :P431_MONTO,',
'                        CANT_AYUD = :P431_CANT_AYUD,',
'                        PLUS_AYUD = :P431_PLUS_AYUD',
'                WHERE ROWID = :P431_EDITAR;',
'            END IF;',
'    ELSE',
'        CASE',
'            when :P431_TIPO is null then :P431_ERR := ''Por favor: ingrese el campo "tipo" '';',
'            when :P431_COD_VEHICULO is null then :P431_ERR := ''Debe seleccionar un codigo.'';        ',
'',
'        end case;',
'    END IF;',
'EXCEPTION',
'    WHEN OTHERS THEN ',
'        APEX_DEBUG.ERROR(SQLERRM);',
'',
'END;'))
,p_attribute_02=>'P431_COD_VEHICULO,P431_TIPO,P431_MONTO,P431_CANT_AYUD'
,p_attribute_03=>'P431_ERR'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(128366988655470907)
,p_event_id=>wwv_flow_imp.id(128366423587470902)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(127153119073924508)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(128366896594470906)
,p_event_id=>wwv_flow_imp.id(128366423587470902)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(127155753591924534)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(128370440091470942)
,p_event_id=>wwv_flow_imp.id(128366423587470902)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'Se guardaron los cambios.'
,p_attribute_03=>'success'
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P431_ERR'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(128368417389470922)
,p_name=>'DA_ELIMINAR'
,p_event_sequence=>40
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P431_ELIMINAR'
,p_condition_element=>'P431_ELIMINAR'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(128368521630470923)
,p_event_id=>wwv_flow_imp.id(128368417389470922)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>unistr('\00BFEsta seguro/a de borrar?')
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(128368613846470924)
,p_event_id=>wwv_flow_imp.id(128368417389470922)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN ',
'',
'    DELETE RP_VEHICULOS_TARIFAS ',
'    WHERE ROWID = :P431_ELIMINAR;',
'    EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'',
'',
'',
'END;'))
,p_attribute_02=>'P431_ELIMINAR'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(128368732892470925)
,p_event_id=>wwv_flow_imp.id(128368417389470922)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(127153119073924508)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(128368913587470927)
,p_name=>'DA_EDITAR'
,p_event_sequence=>50
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P431_EDITAR'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(128369093342470928)
,p_event_id=>wwv_flow_imp.id(128368913587470927)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(127155753591924534)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(128369165393470929)
,p_event_id=>wwv_flow_imp.id(128368913587470927)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'    if :P431_EDITAR is not null then',
'        select COD_VEHICULO,',
'                TIPO,',
'                MONTO,',
'                CANT_AYUD,',
'                PLUS_AYUD',
'        into :P431_COD_VEHICULO,',
'        :P431_TIPO,',
'        :P431_MONTO,',
'        :P431_CANT_AYUD,',
'        :P431_PLUS_AYUD',
'        from RP_VEHICULOS_TARIFAS',
'        where rowid = :P431_EDITAR;',
'    end if;',
'exception',
'    when others then    ',
'    apex_debug.error(sqlerrm);',
'end;'))
,p_attribute_02=>'P431_EDITAR'
,p_attribute_03=>'P431_COD_VEHICULO,P431_TIPO,P431_MONTO,P431_CANT_AYUD,P431_PLUS_AYUD'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(128369418962470932)
,p_name=>'DA_SOLO_NUM'
,p_event_sequence=>60
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P431_CANT_AYUD,P431_MONTO'
,p_bind_type=>'bind'
,p_bind_event_type=>'keypress'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(128369505670470933)
,p_event_id=>wwv_flow_imp.id(128369418962470932)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if (!soloNumeros1(event)){',
'    event.preventDefault();',
'}'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(128369677025470934)
,p_name=>'DA_CANCELAR'
,p_event_sequence=>70
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(127157252006924549)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(128369729172470935)
,p_event_id=>wwv_flow_imp.id(128369677025470934)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(127155753591924534)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(128370076726470938)
,p_name=>'DA_ERROR'
,p_event_sequence=>80
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P431_ERR'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(128370126675470939)
,p_event_id=>wwv_flow_imp.id(128370076726470938)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'&P431_ERR.'
,p_attribute_03=>'warning'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P431_ERR'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(127155137558924528)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_INIT'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P431_COD_EMPRESA := NVL(:P_COD_EMPRESA,''1'') ;',
':P431_COD_USUARIO := NVL(:P_COD_USUARIO,:APP_USER) ;',
':P431_COD_SUCURSAL := NVL(:P_COD_SUCURSAL,''01''); '))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_imp.component_end;
end;
/
