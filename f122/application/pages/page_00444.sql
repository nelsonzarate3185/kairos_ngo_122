prompt --application/pages/page_00444
begin
--   Manifest
--     PAGE: 00444
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
 p_id=>444
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'Barrios'
,p_alias=>'BSBARRIO'
,p_step_title=>'Barrios'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_last_updated_by=>'AIBANEZ'
,p_last_upd_yyyymmddhh24miss=>'20230322124253'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(132100711661210601)
,p_plug_name=>'Barrios'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>990
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(132100815767210602)
,p_plug_name=>'Report Barrios'
,p_parent_plug_id=>wwv_flow_imp.id(132100711661210601)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--removeHeader:t-Region--noBorder:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT B.COD_PAIS, ',
'           (',
'            select p.descripcion',
'            from provincias p',
'            where p.cod_pais = B.cod_pais',
'            and p.cod_provincia = B.cod_provincia) COD_PROVINCIA,',
'              ( select c.descripcion',
'            from ciudades c',
'            where c.cod_pais = B.cod_pais',
'            and c.cod_provincia = B.cod_provincia',
'            and c.cod_ciudad = B.cod_ciudad) COD_CIUDAD,',
'            (select COD_BARRIO ||'' - '' || b.descripcion ',
'             from barrios',
'             where cod_pais = b.cod_pais',
'             and cod_provincia= b.cod_provincia',
'             and cod_ciudad = b.cod_ciudad',
'             and cod_barrio = b.COD_BARRIO)COD_BARRIO,',
'       B.ABREVIATURA,',
'       ROWID,',
'       null EDITAR,',
'       null ELIMINAR,',
'       null DETALLE',
'    FROM BARRIOS B',
' ORDER BY lpad(ltrim(rtrim( cod_pais )),5,'' '' ), ',
'         lpad(ltrim(rtrim( cod_provincia )),5,'' '' ), ',
'         lpad(ltrim(rtrim( cod_ciudad )),5,'' '' ), ',
'         lpad(ltrim(rtrim( cod_barrio )),5,'' '' ) ',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Report Barrios'
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
 p_id=>wwv_flow_imp.id(132101072121210604)
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
,p_internal_uid=>132101072121210604
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(132101137922210605)
,p_db_column_name=>'COD_PAIS'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>unistr('Pa\00EDs')
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_column_alignment=>'CENTER'
,p_rpt_named_lov=>wwv_flow_imp.id(131622721549449667)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(132101330509210607)
,p_db_column_name=>'COD_PROVINCIA'
,p_display_order=>30
,p_column_identifier=>'B'
,p_column_label=>'Departamento'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(132101656043210610)
,p_db_column_name=>'COD_CIUDAD'
,p_display_order=>60
,p_column_identifier=>'C'
,p_column_label=>'Ciudad'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(132101791573210611)
,p_db_column_name=>'COD_BARRIO'
,p_display_order=>70
,p_column_identifier=>'D'
,p_column_label=>'Barrio'
,p_column_link=>'javascript:$s(''P444_DETALLE'',''#ROWID#'');'
,p_column_linktext=>'#COD_BARRIO#'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(132101992457210613)
,p_db_column_name=>'ABREVIATURA'
,p_display_order=>90
,p_column_identifier=>'F'
,p_column_label=>'Abreviatura'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(132102665313210620)
,p_db_column_name=>'ROWID'
,p_display_order=>100
,p_column_identifier=>'G'
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
 p_id=>wwv_flow_imp.id(132103181865210625)
,p_db_column_name=>'ELIMINAR'
,p_display_order=>110
,p_column_identifier=>'H'
,p_column_label=>'&nbsp'
,p_column_link=>'javascript:$s(''P444_ELIMINAR'', ''#ROWID#'');'
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
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(132104331377210637)
,p_db_column_name=>'DETALLE'
,p_display_order=>120
,p_column_identifier=>'I'
,p_column_label=>'Detalle'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(133185778809693503)
,p_db_column_name=>'EDITAR'
,p_display_order=>130
,p_column_identifier=>'J'
,p_column_label=>'&nbsp'
,p_column_link=>'javascript:$s(''P444_EDITAR'', ''#ROWID#'');'
,p_column_linktext=>'<span class="fa fa-edit" aria-hidden="true"></span>'
,p_column_type=>'STRING'
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
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(132114772068147808)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1321148'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>10
,p_report_columns=>'EDITAR:COD_PAIS:COD_PROVINCIA:COD_CIUDAD:COD_BARRIO:ABREVIATURA:ELIMINAR:'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(132100910692210603)
,p_plug_name=>'Info '
,p_parent_plug_id=>wwv_flow_imp.id(132100711661210601)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--removeHeader:t-Region--noBorder:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(132102833007210622)
,p_plug_name=>'Agregar/Editar'
,p_region_template_options=>'#DEFAULT#:js-dialog-autoheight:js-dialog-size600x400'
,p_plug_template=>wwv_flow_imp.id(40117728043263659)
,p_plug_display_sequence=>1070
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(132103632024210630)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(132102833007210622)
,p_button_name=>'BT_CANCELAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_image_alt=>'Cancelar'
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(132103723676210631)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(132102833007210622)
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
 p_id=>wwv_flow_imp.id(132102709988210621)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(132100711661210601)
,p_button_name=>'BT_CREAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Crear'
,p_button_position=>'EDIT'
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
 p_id=>wwv_flow_imp.id(132102053009210614)
,p_name=>'P444_DESC_PAISES'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(132100910692210603)
,p_prompt=>unistr('Pa\00EDs')
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
 p_id=>wwv_flow_imp.id(132102197796210615)
,p_name=>'P444_DESC_PROVINCIA'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(132100910692210603)
,p_prompt=>'Departamento'
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
 p_id=>wwv_flow_imp.id(132102296983210616)
,p_name=>'P444_DESC_CIUDAD'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(132100910692210603)
,p_prompt=>'Ciudad'
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
 p_id=>wwv_flow_imp.id(132102332737210617)
,p_name=>'P444_EDITAR'
,p_item_sequence=>1030
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(132102470575210618)
,p_name=>'P444_ELIMINAR'
,p_item_sequence=>1040
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(132102578623210619)
,p_name=>'P444_ERR'
,p_item_sequence=>1060
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(132104479083210638)
,p_name=>'P444_DETALLE'
,p_item_sequence=>1050
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(132104964339210643)
,p_name=>'P444_PAIS'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(132102833007210622)
,p_prompt=>'Pais'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_PAISES_BSCIUDAD'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select descripcion D, cod_pais R',
'from paises ',
'order by descripcion'))
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
 p_id=>wwv_flow_imp.id(132105071016210644)
,p_name=>'P444_PROVINCIA'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(132102833007210622)
,p_prompt=>'Departamento'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_DEPARTAMENTOS_BARRIOS'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select DISTINCT',
'	p.cod_provincia ||'' - ''|| p.Descripcion D,',
'	p.COD_PROVINCIA R',
'from provincias p, barrios B',
'where p.cod_pais = B.cod_pais',
'and p.cod_provincia = B.cod_provincia',
'and p.cod_pais = :P444_PAIS'))
,p_lov_cascade_parent_items=>'P444_PAIS'
,p_ajax_items_to_submit=>'P444_PAIS'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>30
,p_begin_on_new_line=>'N'
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
 p_id=>wwv_flow_imp.id(132105109963210645)
,p_name=>'P444_CIUDAD'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(132102833007210622)
,p_prompt=>'Ciudad'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_CIUDAD_BARRIOS'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/*select DISTINCT c.COD_CIUDAD ||''-'' || c.descripcion D,',
'	    c.cod_ciudad R',
'            from ciudades c, barrios B',
'            where c.cod_pais = B.cod_pais',
'            and c.cod_provincia = B.cod_provincia',
'            and c.cod_ciudad = B.cod_ciudad',
'            and c.cod_pais = :P444_PAIS',
'            and c.cod_ciudad = :P444_PROVINCIA */',
'',
'            select DISTINCT COD_CIUDAD ||''-'' || descripcion D,',
'	                        cod_ciudad R',
'            from ciudades ',
'            where  cod_pais = :P444_PAIS',
'            and cod_provincia = :P444_PROVINCIA',
'            and cod_ciudad =:P444_CIUDAD'))
,p_lov_cascade_parent_items=>'P444_PAIS,P444_PROVINCIA'
,p_ajax_items_to_submit=>'P444_PAIS,P444_PROVINCIA'
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
 p_id=>wwv_flow_imp.id(133185552610693501)
,p_name=>'P444_BARRIOS'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(132102833007210622)
,p_prompt=>'Cod Barrio'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_named_lov=>'LV_BARRIOS'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select COD_BARRIO ',
'from barrios',
'where cod_pais = cod_pais',
'and cod_provincia= :P444_PROVINCIA',
'and cod_ciudad = :P444_CIUDAD',
''))
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(133185644169693502)
,p_name=>'P444_ABREVIATURA'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(132102833007210622)
,p_prompt=>'Abreviatura'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>4
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(133186561765693511)
,p_name=>'P444_COD_EMPRESA'
,p_item_sequence=>1000
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(133186635060693512)
,p_name=>'P444_COD_USUARIO'
,p_item_sequence=>1010
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(133186705011693513)
,p_name=>'P444_COD_MODULO'
,p_item_sequence=>1020
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(133186849460693514)
,p_name=>'P444_DESCRIPCION'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(132102833007210622)
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
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(132102901336210623)
,p_name=>'DA_CREAR'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(132102709988210621)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(132341842129283104)
,p_event_id=>wwv_flow_imp.id(132102901336210623)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P444_PAIS,P444_PROVINCIA,P444_CIUDAD,P444_ABREVIATURA,P444_DESCRIPCION'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(133186986502693515)
,p_event_id=>wwv_flow_imp.id(132102901336210623)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>':P444_BARRIOS := BSBARRIO.FN_COD_BARRIO;'
,p_attribute_03=>'P444_BARRIOS'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(132103066552210624)
,p_event_id=>wwv_flow_imp.id(132102901336210623)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(132102833007210622)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(132103260476210626)
,p_name=>'DA_ELIMINAR'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P444_ELIMINAR'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(132103341625210627)
,p_event_id=>wwv_flow_imp.id(132103260476210626)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>unistr('\00BFEstas seguro que desea eliminarlo?')
,p_attribute_02=>'Eliminar Barrio'
,p_attribute_03=>'warning'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(133185897685693504)
,p_event_id=>wwv_flow_imp.id(132103260476210626)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    delete BARRIOS',
'    where ROWID = :P444_ELIMINAR;',
'',
'EXCEPTION',
'    when others then apex_debug.error(sqlerrm);',
'END;'))
,p_attribute_02=>'P444_ELIMINAR'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(133186298774693508)
,p_event_id=>wwv_flow_imp.id(132103260476210626)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(132100815767210602)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(132103405831210628)
,p_name=>'DA_EDITAR'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P444_EDITAR'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(132105401165210648)
,p_event_id=>wwv_flow_imp.id(132103405831210628)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    SELECT COD_PAIS, ',
'           COD_PROVINCIA, ',
'           COD_CIUDAD,',
'           COD_BARRIO,',
'           DESCRIPCION,',
'           ABREVIATURA',
'    INTO :P444_PAIS, ',
'	     :P444_PROVINCIA, ',
'	     :P444_CIUDAD,',
'         :P444_BARRIOS,',
'         :P444_DESCRIPCION,',
'         :P444_ABREVIATURA',
'    FROM BARRIOS ',
'    WHERE ROWID = :P444_EDITAR;',
'',
'',
'    EXCEPTION',
'        when others then',
'            apex_debug.error(sqlerrm);',
'END;'))
,p_attribute_02=>'P444_EDITAR'
,p_attribute_03=>'P444_PAIS,P444_PROVINCIA,P444_CIUDAD,P444_BARRIOS,P444_DESCRIPCION,P444_ABREVIATURA'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(132105593960210649)
,p_event_id=>wwv_flow_imp.id(132103405831210628)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(132102833007210622)
,p_server_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(132103560532210629)
,p_event_id=>wwv_flow_imp.id(132103405831210628)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(132102833007210622)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(132103820367210632)
,p_name=>'DA_CANCELAR'
,p_event_sequence=>40
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(132103632024210630)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(132103900717210633)
,p_event_id=>wwv_flow_imp.id(132103820367210632)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(132102833007210622)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(132104556011210639)
,p_name=>'DA_DETALLE'
,p_event_sequence=>50
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P444_DETALLE'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(132104610442210640)
,p_event_id=>wwv_flow_imp.id(132104556011210639)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    SELECT (select descripcion ',
'              from paises p',
'              where p.cod_pais = b.cod_pais) COD_PAIS, ',
'               (select p.descripcion',
'                from provincias p',
'                where p.cod_pais = b.cod_pais',
'                and p.cod_provincia = b.cod_provincia',
'               ) COD_PROVINCIA, ',
'                   ( select c.descripcion ',
'                from ciudades c ',
'                where c.cod_pais = b.cod_pais',
'                and  c.cod_provincia = b.cod_provincia',
'                and  c.cod_ciudad = b.cod_ciudad) COD_CIUDAD',
'    INTO :P444_DESC_PAISES, ',
'	     :P444_DESC_PROVINCIA, ',
'	     :P444_DESC_CIUDAD',
'    FROM BARRIOS b',
'    WHERE ROWID = :P444_DETALLE;',
'',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;',
''))
,p_attribute_02=>'P444_DETALLE'
,p_attribute_03=>'P444_DESC_PAISES,P444_DESC_PROVINCIA,P444_DESC_CIUDAD'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(132104766907210641)
,p_event_id=>wwv_flow_imp.id(132104556011210639)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(132100910692210603)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(132341531725283101)
,p_name=>'DA_GUARDAR'
,p_event_sequence=>60
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(132103723676210631)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(132341923720283105)
,p_event_id=>wwv_flow_imp.id(132341531725283101)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    V_EXISTE NUMBER;',
'BEGIN',
'   :P444_ERR := null;',
'',
'    IF :P444_PAIS is not null',
'        and :P444_PROVINCIA is not null',
'        and  :P444_CIUDAD is not null ',
'        and :P444_BARRIOS is not null then',
'',
'            if :P444_EDITAR is null then',
'                   BEGIN',
'                       select 1',
'                       into v_existe',
'                       from  BARRIOS',
'                       where cod_pais = :P444_PAIS',
'                       and cod_provincia = :P444_PROVINCIA',
'                       and cod_ciudad = :P444_CIUDAD',
'                       and cod_barrio = :P444_BARRIOS;',
'                   ',
'                      :P444_ERR := ''El barrio ya existe.'';',
'                     ',
'                    EXCEPTION WHEN NO_DATA_FOUND THEN ',
'                        insert into BARRIOS(',
'                            COD_PAIS,',
'                            COD_PROVINCIA,',
'                            COD_CIUDAD,',
'                            COD_BARRIO,',
'                            DESCRIPCION,',
'                            ABREVIATURA',
'                       ) values(',
'                           :P444_PAIS,',
'                           :P444_PROVINCIA,',
'                           :P444_CIUDAD,',
'                           :P444_BARRIOS,',
'                           UPPER(:P444_DESCRIPCION),',
'                           UPPER(:P444_ABREVIATURA)',
'                       );',
'                    END;',
'                ',
'           else',
'                      UPDATE BARRIOS',
'                            SET  ',
'                             COD_PAIS = :P444_PAIS,',
'                             COD_PROVINCIA =:P444_PROVINCIA,',
'                             COD_CIUDAD =:P444_CIUDAD,',
'                             COD_BARRIO =:P444_BARRIOS,',
'                             DESCRIPCION = UPPER(:P444_DESCRIPCION),',
'                             ABREVIATURA = UPPER(:P444_ABREVIATURA)',
'                        WHERE ROWID = :P444_EDITAR;',
'',
'            end if; ',
'           ',
'',
'    ELSE',
'             case ',
unistr('                      when :P444_PAIS is null then  :P444_ERR := '' Seleccione un pa\00EDs'';'),
'                      when :P444_PROVINCIA is null then :P444_ERR := ''Seleccione un departamento'';',
'                      when :P444_CIUDAD is null  then :P444_ERR := ''Seleccione una ciudad'';',
'                      when :P444_BARRIOS is null then :P444_ERR := ''Seleccione un barrio'';',
unistr('                      when :P444_DESCRIPCION is null then :P444_ERR := ''Ingrese una descripci\00F3n'';'),
'                else :P444_ERR := ''Completar los items requeridos'';',
'         end case;',
'',
'',
'    END IF; ',
'        EXCEPTION',
'            when others then',
'                    apex_debug.error(sqlerrm);',
'    END;'))
,p_attribute_02=>'P444_PAIS,P444_PROVINCIA,P444_CIUDAD,P444_BARRIOS,P444_ABREVIATURA,P444_EDITAR,P444_DESCRIPCION'
,p_attribute_03=>'P444_ERR'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(132341625360283102)
,p_event_id=>wwv_flow_imp.id(132341531725283101)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(132100815767210602)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(132342203239283108)
,p_event_id=>wwv_flow_imp.id(132341531725283101)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(132102833007210622)
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P444_ERR'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(132342315127283109)
,p_event_id=>wwv_flow_imp.id(132341531725283101)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'El proceso fue aprobado!'
,p_attribute_03=>'success'
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P444_ERR'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(132342096313283106)
,p_name=>'DA_ERR'
,p_event_sequence=>70
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P444_ERR'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(132342190911283107)
,p_event_id=>wwv_flow_imp.id(132342096313283106)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'&P444_ERR.'
,p_attribute_03=>'warning'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P444_ERR'
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
 p_id=>wwv_flow_imp.id(132104117356210635)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'PR_CLEAR'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(133186428463693510)
,p_process_sequence=>20
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_INIT'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P444_COD_EMPRESA := NVL(:P_COD_EMPRESA,''1'');',
':P444_COD_USUARIO := NVL(:P_COD_USUARIO,:APP_USER); ',
':P444_COD_MODULO := NVL(:P_COD_MODULO, ''BS'');'))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_imp.component_end;
end;
/
