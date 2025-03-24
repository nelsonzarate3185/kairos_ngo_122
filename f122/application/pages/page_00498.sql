prompt --application/pages/page_00498
begin
--   Manifest
--     PAGE: 00498
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
 p_id=>498
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'Contactos de Proveedores - CMCONTAC'
,p_alias=>'CONTACTOS-DE-PROVEEDORES-CMCONTAC'
,p_step_title=>'Contactos de Proveedores - CMCONTAC'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function soloNumeros(e){',
'  var key = e.charCode;',
'    return key >= 48 && key <= 57 || key == 43;',
'}',
''))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_last_updated_by=>'AIBANEZ'
,p_last_upd_yyyymmddhh24miss=>'20230421142550'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(147740818343102411)
,p_plug_name=>'Main'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--removeHeader:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>1070
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(147740957170102412)
,p_plug_name=>'Proveedor'
,p_parent_plug_id=>wwv_flow_imp.id(147740818343102411)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--noBorder:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>10
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(147741022866102413)
,p_plug_name=>'Report'
,p_parent_plug_id=>wwv_flow_imp.id(147740818343102411)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>20
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT COD_EMPRESA,	',
'       COD_CONTACTO,',
'       COD_PROVEEDOR,	',
'       NOMBRE,	',
'       TIPO_CONTACTO,	',
'       EMAIL,	',
'       CELULAR,	',
'       COD_PERSONA,',
'       ROWID,',
'       NULL EDITAR,',
'       NULL ELIMINAR',
'FROM CM_PROVEEDORES_CONTACTOS',
'WHERE COD_EMPRESA = :P498_COD_EMPRESA',
'AND :P498_COD_PERSONA is not NULL',
'AND cod_persona = :P498_COD_PERSONA;'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P498_COD_PERSONA,P498_COD_EMPRESA'
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
 p_id=>wwv_flow_imp.id(147741276153102415)
,p_max_row_count=>'1000000'
,p_no_data_found_message=>'No se han encontrado datos relacionados en la busqueda. '
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_finder_drop_down=>'N'
,p_show_actions_menu=>'N'
,p_report_list_mode=>'NONE'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_enable_mail_download=>'Y'
,p_owner=>'AIBANEZ'
,p_internal_uid=>147741276153102415
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(147741351828102416)
,p_db_column_name=>'COD_EMPRESA'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Cod Empresa'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(147741443412102417)
,p_db_column_name=>'COD_CONTACTO'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>unistr('C\00F3digo')
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(147741592111102418)
,p_db_column_name=>'COD_PROVEEDOR'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Cod Proveedor'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(147741685292102419)
,p_db_column_name=>'NOMBRE'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Nombre'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(147741704514102420)
,p_db_column_name=>'TIPO_CONTACTO'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Tipo '
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(147741800196102421)
,p_db_column_name=>'EMAIL'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Email'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(147741988431102422)
,p_db_column_name=>'CELULAR'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Celular'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(147742056363102423)
,p_db_column_name=>'COD_PERSONA'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Cod Persona'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(147742127138102424)
,p_db_column_name=>'ROWID'
,p_display_order=>90
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
 p_id=>wwv_flow_imp.id(147742297663102425)
,p_db_column_name=>'EDITAR'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'&nbsp'
,p_column_link=>'javascript:$s(''P498_EDITAR'',''#ROWID#'');'
,p_column_linktext=>'<span class="fa fa-edit" aria-hidden="true"></span>'
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
 p_id=>wwv_flow_imp.id(147742330611102426)
,p_db_column_name=>'ELIMINAR'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'&nbsp'
,p_column_link=>'javascript:$s(''P498_ELIMINAR'',''#ROWID#'');'
,p_column_linktext=>'<span aria-hidden="true" class="fa fa-trash-o"></span>'
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
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(147945327575535617)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1479454'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>10
,p_report_columns=>'EDITAR:COD_CONTACTO:NOMBRE:TIPO_CONTACTO:EMAIL:CELULAR:ELIMINAR:'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(147743575554102438)
,p_plug_name=>'Editar/Agregar'
,p_parent_plug_id=>wwv_flow_imp.id(147740818343102411)
,p_region_template_options=>'#DEFAULT#:js-dialog-size600x400'
,p_plug_template=>wwv_flow_imp.id(40117728043263659)
,p_plug_display_sequence=>30
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(147742726849102430)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(147740957170102412)
,p_button_name=>'BT_BUSCAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight:t-Button--hoverIconPush'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Buscar'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-folder-search'
,p_button_cattributes=>'style="margin-top:15px;"'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(147744162682102444)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(147743575554102438)
,p_button_name=>'BT_CANCELAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_image_alt=>'Cancelar'
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(147744250566102445)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(147743575554102438)
,p_button_name=>'BT_GUARDAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Guardar'
,p_button_position=>'CREATE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(147743672267102439)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(147741022866102413)
,p_button_name=>'BT_AGREGAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight:t-Button--hoverIconPush'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Nuevo'
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
,p_icon_css_classes=>'fa-contacts'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(147740484693102407)
,p_name=>'P498_COD_EMPRESA'
,p_item_sequence=>990
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(147740520269102408)
,p_name=>'P498_COD_USUARIO'
,p_item_sequence=>1000
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(147740685225102409)
,p_name=>'P498_COD_SUCURSAL'
,p_item_sequence=>1010
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(147740796116102410)
,p_name=>'P498_COD_MODULO'
,p_item_sequence=>1020
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(147741160659102414)
,p_name=>'P498_COD_PERSONA'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(147740957170102412)
,p_prompt=>'Proveedor'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_PERSONAS_CMCONTAC'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select distinct p.cod_persona ||'' - '' ||ltrim( rtrim( nvl( p.nombre, p.nomb_fantasia ) ) )D, ',
'       p.cod_persona R ',
'from personas p, CM_PROVEEDORES_contactos C',
'where c.cod_empresa = :p498_cod_empresa',
'and p.cod_persona = c.cod_persona'))
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
 p_id=>wwv_flow_imp.id(147742420892102427)
,p_name=>'P498_EDITAR'
,p_item_sequence=>1030
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(147742519870102428)
,p_name=>'P498_ELIMINAR'
,p_item_sequence=>1040
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(147976622276302702)
,p_name=>'P498_NOMBRE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(147743575554102438)
,p_prompt=>'Nombre'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>200
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(147976746275302703)
,p_name=>'P498_TIPO_CONTACTO'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(147743575554102438)
,p_prompt=>'Tipo '
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>unistr('STATIC:Comercial;Comercial,T\00E9cnico;Tecnico')
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_colspan=>5
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(147977050783302706)
,p_name=>'P498_EMAIL'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(147743575554102438)
,p_prompt=>'Email'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>200
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(147977182638302707)
,p_name=>'P498_CELULAR'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(147743575554102438)
,p_prompt=>'Celular'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>100
,p_colspan=>5
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(147977439026302710)
,p_name=>'P498_PROVEEDOR'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(147743575554102438)
,p_prompt=>'Proveedor'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select p.cod_persona ||'' - '' ||ltrim( rtrim( nvl( p.nombre, p.nomb_fantasia ) ) )D, ',
'       p.cod_persona R',
'from personas p'))
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
 p_id=>wwv_flow_imp.id(147977671694302712)
,p_name=>'P498_ERR'
,p_item_sequence=>1050
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(147978418329302720)
,p_name=>'P498_CONTACTO'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(147743575554102438)
,p_prompt=>'Contacto'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_colspan=>2
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(147742839967102431)
,p_name=>'DA_BUSCAR'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(147742726849102430)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(147742922571102432)
,p_event_id=>wwv_flow_imp.id(147742839967102431)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(147741022866102413)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(147743107315102434)
,p_name=>'DA_EDITAR'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P498_EDITAR'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(147977933888302715)
,p_event_id=>wwv_flow_imp.id(147743107315102434)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    SELECT COD_CONTACTO,',
'           COD_PERSONA,',
'           NOMBRE,',
'           TIPO_CONTACTO,',
'           CELULAR,',
'           EMAIL',
'    INTO :P498_CONTACTO,',
'         :P498_PROVEEDOR,',
'         :P498_NOMBRE,',
'         :P498_TIPO_CONTACTO,',
'         :P498_CELULAR,',
'         :P498_EMAIL',
'    FROM CM_PROVEEDORES_CONTACTOS',
'    WHERE ROWID = :P498_EDITAR;',
'',
'    EXCEPTION',
'            WHEN NO_DATA_FOUND THEN',
'                    null;',
'            WHEN OTHERS THEN',
'                    apex_debug.error(''Error al editar ''|| SQLERRM);',
'END;'))
,p_attribute_02=>'P498_EDITAR'
,p_attribute_03=>'P498_PROVEEDOR,P498_NOMBRE,P498_TIPO_CONTACTO,P498_CELULAR,P498_EMAIL,P498_CONTACTO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(147743230629102435)
,p_event_id=>wwv_flow_imp.id(147743107315102434)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(147743575554102438)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(147743301815102436)
,p_name=>'DA_ELIMINAR'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P498_ELIMINAR'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(147743421541102437)
,p_event_id=>wwv_flow_imp.id(147743301815102436)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>unistr('\00BFDesea eliminar el contacto?')
,p_attribute_03=>'warning'
,p_attribute_04=>'fa-trash-o'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(147744767532102450)
,p_event_id=>wwv_flow_imp.id(147743301815102436)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    DELETE CM_PROVEEDORES_CONTACTOS',
'    WHERE ROWID = :P498_ELIMINAR;',
'',
'    EXCEPTION',
'        WHEN OTHERS THEN',
'                apex_debug.error(''Error al eliminar ''||sqlerrm);',
'END;'))
,p_attribute_02=>'P498_ELIMINAR'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(147976515931302701)
,p_event_id=>wwv_flow_imp.id(147743301815102436)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(147741022866102413)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(147743744565102440)
,p_name=>'DA_AGREGAR'
,p_event_sequence=>40
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(147743672267102439)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(147977522491302711)
,p_event_id=>wwv_flow_imp.id(147743744565102440)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P498_EDITAR := null;',
':P498_PROVEEDOR := null;',
':P498_NOMBRE := null;',
':P498_TIPO_CONTACTO := null;',
':P498_CELULAR := null;',
':P498_EMAIL := null;',
':P498_CONTACTO :=  CMCONTAC.FN_COD_CONTACTO( PI_COD_EMPRESA => :P498_COD_EMPRESA,',
'                                             PI_COD_PERSONA => :P498_COD_PERSONA',
'                                             ',
');'))
,p_attribute_03=>'P498_PROVEEDOR,P498_NOMBRE,P498_TIPO_CONTACTO,P498_CELULAR,P498_EMAIL,P498_EDITAR,P498_CONTACTO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(147743843571102441)
,p_event_id=>wwv_flow_imp.id(147743744565102440)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(147743575554102438)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(147744356273102446)
,p_name=>'DA_CANCELAR'
,p_event_sequence=>50
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(147744162682102444)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(147744460541102447)
,p_event_id=>wwv_flow_imp.id(147744356273102446)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(147743575554102438)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(147744545190102448)
,p_name=>'DA_GUARDAR'
,p_event_sequence=>60
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(147744250566102445)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(147978081789302716)
,p_event_id=>wwv_flow_imp.id(147744545190102448)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
'BEGIN',
'    :P498_ERR := null ;',
'    ',
'',
'    IF :P498_EDITAR IS NULL THEN',
'        ',
'        INSERT INTO CM_PROVEEDORES_CONTACTOS( ',
'                    COD_EMPRESA,	',
'                    COD_CONTACTO,	',
'                    NOMBRE,	',
'                    TIPO_CONTACTO,	',
'                    EMAIL,	',
'                    CELULAR,	',
'                    COD_PERSONA',
'        )VALUES (',
'            :P498_COD_EMPRESA,',
'            :P498_CONTACTO,',
'            :P498_NOMBRE,',
'            :P498_TIPO_CONTACTO,',
'            :P498_EMAIL,',
'            :P498_CELULAR,',
'            :P498_PROVEEDOR',
'        );',
'        ',
'    ELSE',
'            UPDATE CM_PROVEEDORES_CONTACTOS',
'            SET ',
'                NOMBRE = :P498_NOMBRE,	',
'                TIPO_CONTACTO = :P498_TIPO_CONTACTO,	',
'                EMAIL = :P498_EMAIL,	',
'                CELULAR = :P498_CELULAR,	',
'                COD_PERSONA = :P498_PROVEEDOR',
'            WHERE ROWID = :P498_EDITAR;',
'    END IF;',
'',
'  ',
'    CASE',
'        WHEN :P498_PROVEEDOR IS NULL THEN',
'                    :P498_ERR := ''Seleccione un Proveedor.'';',
'        WHEN :P498_NOMBRE IS NULL THEN',
'                     :P498_ERR := ''Escriba un nombre.'';',
'    ELSE ',
'        NULL;',
'    END CASE;',
'',
'    EXCEPTION',
'         WHEN OTHERS THEN',
'                apex_debug.error(''Error al guardar ''||sqlerrm);',
'END;'))
,p_attribute_02=>'P498_CONTACTO,P498_PROVEEDOR,P498_NOMBRE,P498_TIPO_CONTACTO,P498_CELULAR,P498_EMAIL,P498_COD_EMPRESA,P498_EDITAR'
,p_attribute_03=>'P498_ERR'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(147978752142302723)
,p_event_id=>wwv_flow_imp.id(147744545190102448)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(147741022866102413)
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P498_ERR'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(147744680467102449)
,p_event_id=>wwv_flow_imp.id(147744545190102448)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(147743575554102438)
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P498_ERR'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(147977251176302708)
,p_name=>'DA_NUM'
,p_event_sequence=>70
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P498_CELULAR'
,p_bind_type=>'bind'
,p_bind_event_type=>'keypress'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(147977357200302709)
,p_event_id=>wwv_flow_imp.id(147977251176302708)
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
 p_id=>wwv_flow_imp.id(147977791915302713)
,p_name=>'DA_ERR'
,p_event_sequence=>80
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P498_ERR'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(147977817826302714)
,p_event_id=>wwv_flow_imp.id(147977791915302713)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'&P498_ERR.'
,p_attribute_03=>'information'
,p_attribute_04=>'fa-info-square-o'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P498_ERR'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(147743012688102433)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'PR_CLEAR'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_process_when_type=>'NEVER'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(147740394172102406)
,p_process_sequence=>20
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_INIT'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P498_cod_usuario   := :P_cod_usuario;',
':P498_cod_empresa   := :P_cod_empresa;',
':P498_cod_sucursal  := :P_cod_sucursal;',
':P498_cod_modulo    := :P_cod_modulo;'))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_imp.component_end;
end;
/
