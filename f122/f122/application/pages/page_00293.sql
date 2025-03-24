prompt --application/pages/page_00293
begin
--   Manifest
--     PAGE: 00293
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
 p_id=>293
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'BSTIPTRA'
,p_alias=>'BSTPTRA'
,p_step_title=>'Tipo de  Transacciones'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function soloNumeros(e){',
'  var key = e.charCode;',
'    return key >= 48 && key <= 57;',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_last_updated_by=>'INV'
,p_last_upd_yyyymmddhh24miss=>'20230106110740'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(73166250927138104)
,p_plug_name=>'Tipo de transacciones'
,p_region_template_options=>'#DEFAULT#:t-Region--accent1:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>990
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(69496224593710421)
,p_plug_name=>'Tipo de Transacciones'
,p_parent_plug_id=>wwv_flow_imp.id(73166250927138104)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>1010
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ROWID ROW_ID,',
'       COD_EMPRESA,',
'       COD_MODULO,',
'       TIPO_TRANS,',
'       APEX_ITEM.CHECKBOX (p_idx         => 1 ,',
'        				    p_value       => ROWID,',
'        				    p_attributes  => (case CONTABILIZA',
'        										 when ''S'' then ''checked ''',
'        									  else ''N''',
'        										 end ) ||''style="width:40px;" disabled'')as CONTABILIZA,',
'       APEX_ITEM.CHECKBOX (p_idx         => 1 ,',
'        				    p_value       => ROWID,',
'        				    p_attributes  => (case ESTADO',
'        										 when ''S'' then ''checked ''',
'        									  else ''N''',
'        										 end ) ||''style="width:40px;" disabled'')as ESTADO,',
'        APEX_ITEM.CHECKBOX (p_idx         => 1 ,',
'        				    p_value       => ROWID,',
'        				    p_attributes  => (case IMPRIME_COMPROB',
'        										 when ''S'' then ''checked ''',
'        									  else ''N''',
'        										 end ) ||''style="width:40px;" disabled'')as IMPRIME_COMPROB,',
'      APEX_ITEM.CHECKBOX (p_idx         => 1 ,',
'        				    p_value       => ROWID,',
'        				    p_attributes  => (case COSTO_X_SERVIC',
'        										 when ''S'' then ''checked ''',
'        									  else ''N''',
'        										 end ) ||''style="width:40px;" disabled'')as COSTO_X_SERVIC,',
'       DESCRIPCION,',
'       NULL EDITAR,',
'       NULL ELIMINAR',
'  from TIPOS_TRANS',
' where cod_empresa = :P_cod_empresa'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P_COD_EMPRESA'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Tipo de Transacciones'
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
 p_id=>wwv_flow_imp.id(69498782733710446)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'JOSEFINAGU'
,p_internal_uid=>69498782733710446
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(69498908479710448)
,p_db_column_name=>'COD_EMPRESA'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Cod Empresa'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(69499023239710449)
,p_db_column_name=>'COD_MODULO'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>unistr('M\00F3dulo')
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_rpt_named_lov=>wwv_flow_imp.id(72496881195648733)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(69499152283710450)
,p_db_column_name=>'TIPO_TRANS'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>unistr('Tipo de Transacci\00F3n')
,p_column_type=>'NUMBER'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(73035159390550101)
,p_db_column_name=>'CONTABILIZA'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Contabiliza'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(73035343639550103)
,p_db_column_name=>'IMPRIME_COMPROB'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Imprime Comprobante'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(73035495149550104)
,p_db_column_name=>'COSTO_X_SERVIC'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Costo Servicio'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(73035289189550102)
,p_db_column_name=>'ESTADO'
,p_display_order=>90
,p_column_identifier=>'F'
,p_column_label=>'Activo'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(73035549160550105)
,p_db_column_name=>'DESCRIPCION'
,p_display_order=>100
,p_column_identifier=>'I'
,p_column_label=>'Descripcion'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(73035642040550106)
,p_db_column_name=>'EDITAR'
,p_display_order=>110
,p_column_identifier=>'J'
,p_column_label=>'Editar'
,p_column_link=>'javascript:$s(''P293_AUX_ID_EDITAR'',''#ROW_ID#'');'
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
'                                                         pdm_boto     => 2); ',
'',
'    IF VCONTROL = 0 THEN',
'        RETURN FALSE;',
'    ELSE',
'        RETURN TRUE;',
'    END IF;                                                     ',
'END;'))
,p_display_condition2=>'PLSQL'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(73035782412550107)
,p_db_column_name=>'ELIMINAR'
,p_display_order=>120
,p_column_identifier=>'K'
,p_column_label=>'Eliminar'
,p_column_link=>'javascript:$s(''P293_AUX_ID_ELIMINAR'',''#ROW_ID#'');'
,p_column_linktext=>'<span class="fa fa-trash" aria-hidden="true"></span>'
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
'                                                         pdm_boto     => 3); ',
'',
'    IF VCONTROL = 0 THEN',
'        RETURN FALSE;',
'    ELSE',
'        RETURN TRUE;',
'    END IF;                                                     ',
'END;'))
,p_display_condition2=>'PLSQL'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(73038392323550133)
,p_db_column_name=>'ROW_ID'
,p_display_order=>130
,p_column_identifier=>'L'
,p_column_label=>'Row Id'
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
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(73102072084684736)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'731021'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>15
,p_report_columns=>'COD_MODULO:TIPO_TRANS:DESCRIPCION:CONTABILIZA:ESTADO:IMPRIME_COMPROB:COSTO_X_SERVIC:'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(69497585522710434)
,p_plug_name=>'VARIABLES'
,p_parent_plug_id=>wwv_flow_imp.id(73166250927138104)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>1000
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(73036022491550110)
,p_plug_name=>'AGREGAR/EDITAR'
,p_parent_plug_id=>wwv_flow_imp.id(73166250927138104)
,p_region_template_options=>'#DEFAULT#:js-dialog-size600x400'
,p_plug_template=>wwv_flow_imp.id(40117728043263659)
,p_plug_display_sequence=>1020
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(73038831884550138)
,p_button_sequence=>110
,p_button_plug_id=>wwv_flow_imp.id(73036022491550110)
,p_button_name=>'BT_CERRAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_image_alt=>'Cerrar'
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(73038093379550130)
,p_button_sequence=>100
,p_button_plug_id=>wwv_flow_imp.id(73036022491550110)
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
 p_id=>wwv_flow_imp.id(73037317972550123)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(69496224593710421)
,p_button_name=>'BT_CREAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Crear'
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
'                                                         pdm_boto     => 1); ',
'',
'    IF VCONTROL = 0 THEN',
'        RETURN FALSE;',
'    ELSE',
'        RETURN TRUE;',
'    END IF;                                                     ',
'END;'))
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'FUNCTION_BODY'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(69497677213710435)
,p_name=>'P293_VBLE_COD_MODULO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(69497585522710434)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(69497773441710436)
,p_name=>'P293_VBLE_COD_EMPRESA'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(69497585522710434)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(69497868175710437)
,p_name=>'P293_COD_FORMA'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(69497585522710434)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(69497980751710438)
,p_name=>'P293_COD_SUCURSAL'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(69497585522710434)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(69498047252710439)
,p_name=>'P293_NOM_MODULO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(69497585522710434)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(69498173282710440)
,p_name=>'P293_NOM_FORMA'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(69497585522710434)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(69498291504710441)
,p_name=>'P293_NOM_EMPRESA'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(69497585522710434)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(69498307958710442)
,p_name=>'P293_NOM_SUCURSAL'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(69497585522710434)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(69498533071710444)
,p_name=>'P293_COD_USUARIO'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(69497585522710434)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(73035883162550108)
,p_name=>'P293_AUX_ID_EDITAR'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(69497585522710434)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(73035947920550109)
,p_name=>'P293_AUX_ID_ELIMINAR'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(69497585522710434)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(73036461056550114)
,p_name=>'P293_COD_EMPRESA'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(73036022491550110)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(73036592420550115)
,p_name=>'P293_CONTABILIZA'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(73036022491550110)
,p_item_default=>'N'
,p_prompt=>'Contabiliza'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'S'
,p_attribute_03=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(73036634293550116)
,p_name=>'P293_TIPO_TRANS'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(73036022491550110)
,p_prompt=>unistr('Tipo de Transacci\00F3n')
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
 p_id=>wwv_flow_imp.id(73036760058550117)
,p_name=>'P293_IMPRIME_COMPROB'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(73036022491550110)
,p_item_default=>'N'
,p_prompt=>'Imprime Comprobante'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'S'
,p_attribute_03=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(73036863994550118)
,p_name=>'P293_COD_MODULO'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(73036022491550110)
,p_prompt=>unistr('M\00F3dulo')
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_MODULO_BSPARAME'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT cod_modulo || '' - '' || descripcion D, cod_modulo R ',
'FROM modulos ',
'ORDER BY descripcion'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- Seleccione - '
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
 p_id=>wwv_flow_imp.id(73036930847550119)
,p_name=>'P293_DESCRIPCION'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(73036022491550110)
,p_prompt=>unistr('Descripci\00F3n')
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
 p_id=>wwv_flow_imp.id(73037073240550120)
,p_name=>'P293_ESTADO'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(73036022491550110)
,p_item_default=>'N'
,p_prompt=>'Estado'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'S'
,p_attribute_03=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(73037160729550121)
,p_name=>'P293_COSTO_X_SERVIC'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(73036022491550110)
,p_item_default=>'N'
,p_prompt=>'Costo Servicio'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'S'
,p_attribute_03=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(73039555031550145)
,p_name=>'P293_MSJE_SUCCESS'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(73036022491550110)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(73039970704550149)
,p_name=>'P293_MSJE_ERROR'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(73036022491550110)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(73036157755550111)
,p_name=>'DA_EDITAR'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P293_AUX_ID_EDITAR'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(73036273103550112)
,p_event_id=>wwv_flow_imp.id(73036157755550111)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT COD_EMPRESA,',
'       COD_MODULO,',
'       TIPO_TRANS,',
'       CONTABILIZA,',
'       ESTADO,',
'       IMPRIME_COMPROB,',
'       COSTO_X_SERVIC,',
'       DESCRIPCION ',
'  INTO :P293_NOM_EMPRESA,',
'       :P293_COD_MODULO,',
'       :P293_TIPO_TRANS,',
'       :P293_CONTABILIZA,',
'       :P293_ESTADO,',
'       :P293_IMPRIME_COMPROB,',
'       :P293_COSTO_X_SERVIC,',
'       :P293_DESCRIPCION',
'  FROM TIPOS_TRANS',
' WHERE ROWID = :P293_AUX_ID_EDITAR;'))
,p_attribute_02=>'P293_AUX_ID_EDITAR'
,p_attribute_03=>'P293_NOM_EMPRESA,P293_COD_MODULO,P293_TIPO_TRANS,P293_CONTABILIZA,P293_ESTADO,P293_IMPRIME_COMPROB,P293_COSTO_X_SERVIC,P293_DESCRIPCION'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(73037609745550126)
,p_event_id=>wwv_flow_imp.id(73036157755550111)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(73036022491550110)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(73037763705550127)
,p_event_id=>wwv_flow_imp.id(73036157755550111)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(73036022491550110)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(73037427614550124)
,p_name=>'DA_HIDE'
,p_event_sequence=>20
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(73037507945550125)
,p_event_id=>wwv_flow_imp.id(73037427614550124)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(73036022491550110)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(73037852579550128)
,p_name=>'DA_OPEN_NEW_REGION'
,p_event_sequence=>30
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(73037317972550123)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(73165935540138101)
,p_event_id=>wwv_flow_imp.id(73037852579550128)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P293_COD_MODULO,P293_TIPO_TRANS,P293_CONTABILIZA,P293_ESTADO,P293_IMPRIME_COMPROB,P293_COSTO_X_SERVIC,P293_DESCRIPCION'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(73037913914550129)
,p_event_id=>wwv_flow_imp.id(73037852579550128)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(73036022491550110)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(73038465120550134)
,p_name=>'DA_ELIMINAR'
,p_event_sequence=>40
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P293_AUX_ID_ELIMINAR'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(73038643968550136)
,p_event_id=>wwv_flow_imp.id(73038465120550134)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>unistr('\00BFDesea eliminar el registro?')
,p_attribute_02=>unistr('\00A1Atenci\00F3n!')
,p_attribute_03=>'warning'
,p_attribute_04=>'fa-warning'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(73038550635550135)
,p_event_id=>wwv_flow_imp.id(73038465120550134)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    DELETE INV.TIPOS_TRANS',
'     WHERE ROWID = :P293_AUX_ID_ELIMINAR;',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;'))
,p_attribute_02=>'P293_AUX_ID_ELIMINAR'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(73038774169550137)
,p_event_id=>wwv_flow_imp.id(73038465120550134)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(69496224593710421)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(73038940494550139)
,p_name=>'DA_GUARDAR'
,p_event_sequence=>50
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(73038093379550130)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(73039073466550140)
,p_event_id=>wwv_flow_imp.id(73038940494550139)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P293_MSJE_ERROR := 0;',
'IF :P293_COD_MODULO IS NULL OR :P293_TIPO_TRANS IS NULL THEN',
'    :P293_MSJE_ERROR := 1;',
'ELSE',
'',
'    IF :P293_AUX_ID_EDITAR IS NOT NULL THEN',
'        UPDATE INV.TIPOS_TRANS',
'           SET COD_MODULO = :P293_COD_MODULO,',
'               TIPO_TRANS = :P293_TIPO_TRANS,',
'               CONTABILIZA = :P293_CONTABILIZA,',
'               ESTADO = :P293_ESTADO,',
'               IMPRIME_COMPROB = :P293_IMPRIME_COMPROB,',
'               COSTO_X_SERVIC = :P293_COSTO_X_SERVIC,',
'               DESCRIPCION = :P293_DESCRIPCION',
'         WHERE ROWID = :P293_AUX_ID_EDITAR;',
'        ',
'        :P293_MSJE_SUCCESS := 1;',
'    ELSE',
'        INSERT INTO INV.TIPOS_TRANS( COD_MODULO,',
'                                     TIPO_TRANS, ',
'                                     CONTABILIZA, ',
'                                     ESTADO, ',
'                                     IMPRIME_COMPROB,',
'                                     COSTO_X_SERVIC,',
'                                     DESCRIPCION)',
'               VALUES(:P293_COD_MODULO,',
'                     :P293_TIPO_TRANS,',
'                     :P293_CONTABILIZA,',
'                     :P293_ESTADO,',
'                     :P293_IMPRIME_COMPROB,',
'                     :P293_COSTO_X_SERVIC,',
'                     :P293_DESCRIPCION);',
'                     ',
'        :P293_MSJE_SUCCESS := 2;',
'    END IF;',
'   ',
'END IF;'))
,p_attribute_02=>'P293_COD_MODULO,P293_TIPO_TRANS,P293_CONTABILIZA,P293_ESTADO,P293_IMPRIME_COMPROB,P293_COSTO_X_SERVIC,P293_DESCRIPCION,P293_AUX_ID_EDITAR,P293_AUX_ID_EDITAR'
,p_attribute_03=>'P293_MSJE_SUCCESS,P293_MSJE_ERROR'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(73040044249550150)
,p_event_id=>wwv_flow_imp.id(73038940494550139)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>unistr('El m\00F3dulo y el tipo de transacci\00F3n deben tener un valor.')
,p_attribute_02=>unistr('\00A1Atenci\00F3n!')
,p_attribute_03=>'warning'
,p_attribute_04=>'fa-warning'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P293_MSJE_ERROR'
,p_client_condition_expression=>'1'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(73039421974550144)
,p_event_id=>wwv_flow_imp.id(73038940494550139)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'Los cambios fueron guardados correctamente.'
,p_attribute_03=>'success'
,p_attribute_04=>'fa-check-circle'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P293_MSJE_SUCCESS'
,p_client_condition_expression=>'1'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(73039656586550146)
,p_event_id=>wwv_flow_imp.id(73038940494550139)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'El registro fue creado correctamente.'
,p_attribute_02=>unistr('\00A1Operaci\00F3n exitosa!')
,p_attribute_03=>'success'
,p_attribute_04=>'fa-check-circle'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P293_MSJE_SUCCESS'
,p_client_condition_expression=>'2'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(73039108979550141)
,p_event_id=>wwv_flow_imp.id(73038940494550139)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(69496224593710421)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(73039238292550142)
,p_event_id=>wwv_flow_imp.id(73038940494550139)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(73036022491550110)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(73039767074550147)
,p_name=>'PR_CLOSE'
,p_event_sequence=>60
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(73038831884550138)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(73039886353550148)
,p_event_id=>wwv_flow_imp.id(73039767074550147)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(73036022491550110)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(73166014961138102)
,p_name=>'DA_SOLO_NUMEROS'
,p_event_sequence=>70
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P293_TIPO_TRANS'
,p_bind_type=>'bind'
,p_bind_event_type=>'keypress'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(73166109996138103)
,p_event_id=>wwv_flow_imp.id(73166014961138102)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P293_TIPO_TRANS'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if (!soloNumeros(event)){',
'  	event.preventDefault();',
'}'))
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(69497484805710433)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(69496224593710421)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>'B_TIPTRAN - Save Interactive Grid Data'
,p_attribute_01=>'PLSQL_CODE'
,p_attribute_04=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'    case :APEX$ROW_STATUS',
'    when ''C'' then',
'        insert into INV.TIPOS_TRANS ( cod_empresa, cod_modulo, tipo_trans,contabiliza, estado, imprime_comprob,costo_x_servic, descripcion )',
'             values ( :P293_COD_EMPRESA, :cod_modulo, :tipo_trans,:contabiliza, :estado, :imprime_comprob,:costo_x_servic, :descripcion )',
'        returning rowid into :ROWID;',
'    when ''U'' then',
'        update INV.TIPOS_TRANS',
'           set cod_modulo = :cod_modulo, ',
'               tipo_trans = :tipo_trans, ',
'               contabiliza = :contabiliza, ',
'               estado = :estado,  ',
'               imprime_comprob = :imprime_comprob, ',
'               costo_x_servic = :costo_x_servic,  ',
'               descripcion = :descripcion',
'         where rowid  = :ROWID;',
'    when ''D'' then',
'        delete INV.TIPOS_TRANS',
'         where rowid = :ROWID;',
'    end case;',
'end;'))
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Los cambios se registraron correctamente.'
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
 p_id=>wwv_flow_imp.id(69498440851710443)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_INIT'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P_COD_MODULO := ''BS'';',
'',
':P293_COD_USUARIO := NVL(:P_COD_USUARIO, :APP_USER);',
':P293_VBLE_COD_EMPRESA := NVL(:P_COD_EMPRESA,''1'');',
':P293_NOM_EMPRESA := :P_NOM_EMPRESA;',
':P293_COD_SUCURSAL := :P_COD_SUCURSAL;',
':P293_NOM_SUCURSAL := :P_NOM_SUCURSAL;',
':P293_VBLE_COD_MODULO := :P_COD_MODULO;',
'',
'LIBRERIA_FORMAS.RUTINA_INICIAL(PI_COD_MODULO => :P293_VBLE_COD_MODULO,',
'                               PI_COD_FORMA  => :P293_COD_FORMA,',
'                               PI_NOM_MODULO => :P293_NOM_MODULO,',
'                               PI_NOM_FORMA  => :P293_NOM_FORMA,',
'            				   PO_NOM_MODULO => :P293_NOM_MODULO,',
'            				   PO_NOM_FORMA  => :P293_NOM_FORMA);'))
,p_process_clob_language=>'PLSQL'
);
null;
wwv_flow_imp.component_end;
end;
/
