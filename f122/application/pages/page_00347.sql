prompt --application/pages/page_00347
begin
--   Manifest
--     PAGE: 00347
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
 p_id=>347
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'AUAREAS'
,p_alias=>'AUAREAS'
,p_step_title=>'AUAREAS'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function soloNumeros(e){',
'  var key = e.charCode;',
'    return key >= 48 && key <= 57;',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_last_updated_by=>'PABLOALV'
,p_last_upd_yyyymmddhh24miss=>'20241111074931'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(429714944740966044)
,p_plug_name=>'AREAS CAJAS'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>990
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(429715068537966045)
,p_plug_name=>'TABLA_CO_AREAS'
,p_parent_plug_id=>wwv_flow_imp.id(429714944740966044)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ',
'    rowid id,',
'    COD_EMPRESA,',
'    COD_AREA,',
'    DESCRIPCION,',
'    APEX_ITEM.CHECKBOX (p_idx  => 1,',
'                        p_value       => rowid,',
'                        p_attributes  => (case ACTIVO',
'                                           when ''S'' then ''checked ''',
'                                      else null',
'                                     end ))as ACTIVO,',
'   TIPO_AUDITORIA ,',
'',
'    NULL EDITAR,',
'    NULL ELIMINAR',
'',
'FROM CO_AREAS',
'where cod_empresa = :P347_COD_EMPRESA',
' '))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P347_COD_EMPRESA'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'TIPO CLIENTES'
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
 p_id=>wwv_flow_imp.id(432181451037710516)
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
,p_internal_uid=>432181451037710516
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(90853806228144273)
,p_db_column_name=>'EDITAR'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Editar'
,p_column_link=>'javascript:$s(''P347_SEQ_ID_EDITAR'',''#ID#'');'
,p_column_linktext=>' <span aria-hidden="true" class="fa fa-edit"></span>'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(90854209450144273)
,p_db_column_name=>'ELIMINAR'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Eliminar'
,p_column_link=>'javascript:$s(''P347_SEQ_ID_ELIMINAR'',''#ID#'');'
,p_column_linktext=>'<span class="fa fa-trash" aria-hidden="true"></span>'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(90853039298144272)
,p_db_column_name=>'COD_EMPRESA'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Cod Empresa'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(90853427336144272)
,p_db_column_name=>'ID'
,p_display_order=>150
,p_column_identifier=>'O'
,p_column_label=>'Id'
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
 p_id=>wwv_flow_imp.id(90852368706144272)
,p_db_column_name=>'DESCRIPCION'
,p_display_order=>170
,p_column_identifier=>'Q'
,p_column_label=>'Descripcion'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(90852758050144272)
,p_db_column_name=>'ACTIVO'
,p_display_order=>180
,p_column_identifier=>'R'
,p_column_label=>'Activo'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(83625574529059728)
,p_db_column_name=>'COD_AREA'
,p_display_order=>190
,p_column_identifier=>'V'
,p_column_label=>'Cod Area'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(83625606055059729)
,p_db_column_name=>'TIPO_AUDITORIA'
,p_display_order=>200
,p_column_identifier=>'W'
,p_column_label=>'Tipo Auditoria'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(432196650237869061)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'835819'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>10
,p_report_columns=>'EDITAR:COD_AREA:DESCRIPCION:TIPO_AUDITORIA:ACTIVO:ELIMINAR:'
,p_sort_column_1=>'COD_AREA'
,p_sort_direction_1=>'DESC'
,p_sort_column_2=>'0'
,p_sort_direction_2=>'DESC'
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
 p_id=>wwv_flow_imp.id(429715145305966046)
,p_plug_name=>'AGREGAR/EDITAR'
,p_parent_plug_id=>wwv_flow_imp.id(429714944740966044)
,p_region_template_options=>'#DEFAULT#:js-dialog-autoheight:js-dialog-size600x400'
,p_plug_template=>wwv_flow_imp.id(40117728043263659)
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(429715335267966047)
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
 p_id=>wwv_flow_imp.id(90855652384144274)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_imp.id(429715145305966046)
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
 p_id=>wwv_flow_imp.id(90856054372144274)
,p_button_sequence=>70
,p_button_plug_id=>wwv_flow_imp.id(429715145305966046)
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
 p_id=>wwv_flow_imp.id(90856478968144274)
,p_button_sequence=>80
,p_button_plug_id=>wwv_flow_imp.id(429715145305966046)
,p_button_name=>'BT_CANCELAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_image_alt=>'Cancelar'
,p_button_position=>'DELETE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(90854989178144274)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(429715068537966045)
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
 p_id=>wwv_flow_imp.id(83625782731059730)
,p_name=>'P347_TIPO_AUDITORIA'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(429715145305966046)
,p_prompt=>'Tipo Auditoria'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:PROCESO;PROCESO,GESTION;GESTION,AUDITORIA ESPECIAL;AUDITORIA ESPECIAL'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(90856838184144274)
,p_name=>'P347_COD_AREA'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(429715145305966046)
,p_prompt=>unistr('C\00F3digo')
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
 p_id=>wwv_flow_imp.id(90857285554144275)
,p_name=>'P347_DESCRIPCION'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(429715145305966046)
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
 p_id=>wwv_flow_imp.id(90857656198144275)
,p_name=>'P347_ACTIVO'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(429715145305966046)
,p_prompt=>'Activo'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'S'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(90858361095144275)
,p_name=>'P347_DERECHOS'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(429715335267966047)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(90858746115144276)
,p_name=>'P347_COD_MODULO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(429715335267966047)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(90859147371144276)
,p_name=>'P347_NOM_MODULO'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(429715335267966047)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(90859586877144276)
,p_name=>'P347_COD_FORMA'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(429715335267966047)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(90859909851144276)
,p_name=>'P347_NOM_FORMA'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(429715335267966047)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(90860391981144276)
,p_name=>'P347_COD_EMPRESA'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(429715335267966047)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(90860721861144276)
,p_name=>'P347_NOM_EMPRESA'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(429715335267966047)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(90861125321144276)
,p_name=>'P347_COD_SUCURSAL'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(429715335267966047)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(90861532889144277)
,p_name=>'P347_NOM_SUCURSAL'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(429715335267966047)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(90861975245144277)
,p_name=>'P347_COD_USUARIO'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(429715335267966047)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(90862306980144277)
,p_name=>'P347_COD_IDIOMA'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(429715335267966047)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(90862759985144277)
,p_name=>'P347_COD_SISMENU'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(429715335267966047)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(90863149372144277)
,p_name=>'P347_SEQ_ID_EDITAR'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(429715335267966047)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(90863585398144277)
,p_name=>'P347_SEQ_ID_ELIMINAR'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(429715335267966047)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(90863996457144278)
,p_name=>'P347_AUX_MSJ_CONTROL'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(429715335267966047)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(90865197938144280)
,p_name=>'DA_CREAR'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(90854989178144274)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(90867639056144281)
,p_event_id=>wwv_flow_imp.id(90865197938144280)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P347_COD_AREA,P347_DESCRIPCION,P347_ACTIVO'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(90866129355144280)
,p_event_id=>wwv_flow_imp.id(90865197938144280)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(90855652384144274)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(90866626801144281)
,p_event_id=>wwv_flow_imp.id(90865197938144280)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(90856054372144274)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(90867101646144281)
,p_event_id=>wwv_flow_imp.id(90865197938144280)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(429715145305966046)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(90865613078144280)
,p_event_id=>wwv_flow_imp.id(90865197938144280)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
' 	 select nvl(max(to_number(cod_area)),0)+1',
'	 into :P347_COD_AREA',
'	from co_areas a where cod_empresa=:P347_COD_EMPRESA;',
'    :P347_ACTIVO := ''S'';',
'end;'))
,p_attribute_02=>'P347_COD_EMPRESA'
,p_attribute_03=>'P347_ACTIVO,P347_COD_AREA'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(90873365175144283)
,p_name=>'BT_GUARDAR'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(90855652384144274)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(90874347678144283)
,p_event_id=>wwv_flow_imp.id(90873365175144283)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P347_AUX_MSJ_CONTROL := null;',
'IF :P347_COD_AREA IS NULL THEN',
'    :P347_AUX_MSJ_CONTROL := ''Ingrese el Area'';',
'    else',
'    BEGIN',
'    AUAREAS.pr_crear ( ',
'    	PI_COD_EMPRESA => :P347_COD_EMPRESA,',
'    	PI_COD_area => :P347_COD_AREA,',
'    	PI_DESCRIPCION => :P347_DESCRIPCION,',
'        PI_ACTIVO => :P347_ACTIVO,',
'        PI_TIPO_AUDITORIA => :P347_TIPO_AUDITORIA',
'    	);',
' EXCEPTION',
'    ',
'    WHEN OTHERS THEN',
unistr('        raise_application_error(-20201,''El area que desea crear ya \00E9xiste.''||sqlerrm);'),
'        APEX_DEBUG.ERROR (SQLERRM);',
'',
'    END;',
' ',
' ',
'    ',
' ',
' end if;'))
,p_attribute_02=>'P347_COD_EMPRESA,P347_COD_AREA,P347_DESCRIPCION,P347_ACTIVO,P347_TIPO_AUDITORIA'
,p_attribute_03=>'P347_AUX_MSJ_CONTROL'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(90873815669144283)
,p_event_id=>wwv_flow_imp.id(90873365175144283)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'&P347_AUX_MSJ_CONTROL.'
,p_attribute_02=>'ERROR'
,p_attribute_03=>'warning'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P347_AUX_MSJ_CONTROL'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(90875301041144283)
,p_event_id=>wwv_flow_imp.id(90873365175144283)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(429715068537966045)
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P347_AUX_MSJ_CONTROL'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(90875827788144284)
,p_event_id=>wwv_flow_imp.id(90873365175144283)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(429715145305966046)
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P347_AUX_MSJ_CONTROL'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(90874816780144283)
,p_event_id=>wwv_flow_imp.id(90873365175144283)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'nuevo registro creado exitosamente'
,p_attribute_02=>unistr('\00C9XITO')
,p_attribute_03=>'success'
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P347_AUX_MSJ_CONTROL'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(90868008351144281)
,p_name=>'DA_ABRIR_EDITAR'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P347_SEQ_ID_EDITAR'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(90869504204144282)
,p_event_id=>wwv_flow_imp.id(90868008351144281)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT	 ',
'    COD_AREA,',
'    DESCRIPCION,',
'    ACTIVO,',
'    TIPO_AUDITORIA  ',
'INTO',
'    :P347_COD_AREA,',
'    :P347_DESCRIPCION,',
'    :P347_ACTIVO,',
'    :P347_TIPO_AUDITORIA',
'     ',
'from co_areas',
'WHERE  rowid = :P347_SEQ_ID_EDITAR;'))
,p_attribute_02=>'P347_SEQ_ID_EDITAR'
,p_attribute_03=>'P347_COD_AREA,P347_DESCRIPCION,P347_ACTIVO,P347_TIPO_AUDITORIA'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(90870061546144282)
,p_event_id=>wwv_flow_imp.id(90868008351144281)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(90856054372144274)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(90869095177144281)
,p_event_id=>wwv_flow_imp.id(90868008351144281)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(90855652384144274)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(90868598674144281)
,p_event_id=>wwv_flow_imp.id(90868008351144281)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(429715145305966046)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(90870468751144282)
,p_name=>'DA_GUARDAR_EDITAR'
,p_event_sequence=>40
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(90856054372144274)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(83625806239059731)
,p_event_id=>wwv_flow_imp.id(90870468751144282)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P347_AUX_MSJ_CONTROL := null;',
'IF :P347_COD_AREA IS NULL THEN',
'    :P347_AUX_MSJ_CONTROL := ''Ingrese el Area'';',
'    else',
'    BEGIN',
'    AUAREAS.pr_modificar (    ',
'    PI_SEQ_ID_EDITAR => :P347_SEQ_ID_EDITAR,',
'    PI_COD_EMPRESA => :P347_COD_EMPRESA,',
'    PI_COD_AREA => :P347_COD_AREA,',
'	PI_DESCRIPCION => :P347_DESCRIPCION,',
'	PI_ACTIVO => :P347_ACTIVO,',
'	PI_TIPO_AUDITORIA => :P347_TIPO_AUDITORIA',
'   );',
' EXCEPTION',
'    ',
'    WHEN OTHERS THEN',
'        raise_application_error(-20201,''No es posible modificar el cod area.''||sqlerrm);',
'        APEX_DEBUG.ERROR (SQLERRM);',
'',
'    END;',
' ',
' ',
'    ',
' ',
' end if;'))
,p_attribute_02=>'P347_COD_EMPRESA,P347_COD_AREA,P347_DESCRIPCION,P347_ACTIVO,P347_TIPO_AUDITORIA'
,p_attribute_03=>'P347_AUX_MSJ_CONTROL'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(90871424206144282)
,p_event_id=>wwv_flow_imp.id(90870468751144282)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'&P347_AUX_MSJ_CONTROL.'
,p_attribute_02=>'ERROR'
,p_attribute_03=>'warning'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P347_AUX_MSJ_CONTROL'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(90871961740144282)
,p_event_id=>wwv_flow_imp.id(90870468751144282)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(429715068537966045)
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P347_AUX_MSJ_CONTROL'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(90872429405144282)
,p_event_id=>wwv_flow_imp.id(90870468751144282)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(429715145305966046)
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P347_AUX_MSJ_CONTROL'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(90872902926144283)
,p_event_id=>wwv_flow_imp.id(90870468751144282)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'registro editado exitosamente'
,p_attribute_02=>unistr('\00C9XITO')
,p_attribute_03=>'success'
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P347_AUX_MSJ_CONTROL'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(90876220395144284)
,p_name=>'DA_ELIMINAR'
,p_event_sequence=>60
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P347_SEQ_ID_ELIMINAR'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(90876731074144284)
,p_event_id=>wwv_flow_imp.id(90876220395144284)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>unistr('\00BFEsta seguro que desea eliminar?')
,p_attribute_02=>'ELIMINAR'
,p_attribute_03=>'danger'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(90877257350144284)
,p_event_id=>wwv_flow_imp.id(90876220395144284)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'    AUAREAS.pr_eliminar (',
'    PI_SEQ_ID_ELIMINAR => :P347_SEQ_ID_ELIMINAR   );',
'end;'))
,p_attribute_02=>'P347_SEQ_ID_ELIMINAR'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(90877730531144284)
,p_event_id=>wwv_flow_imp.id(90876220395144284)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(429715068537966045)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(90878162763144284)
,p_name=>'DA_VOLVER'
,p_event_sequence=>70
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(90856478968144274)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(90878671937144285)
,p_event_id=>wwv_flow_imp.id(90878162763144284)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(429715145305966046)
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(90864797454144280)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'PR_LIMPIAR'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(90864344531144279)
,p_process_sequence=>20
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_INIT'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'   :P347_COD_USUARIO := nvl(:P_COD_USUARIO, user);',
'   :P347_COD_EMPRESA := nvl(:P_COD_EMPRESA,''1'');',
'   :P347_NOM_EMPRESA := nvl(:P_NOM_EMPRESA, null);',
'   :P347_COD_SUCURSAL := nvl(:P_COD_SUCURSAL,null);',
'   :P347_NOM_SUCURSAL := nvl(:P_NOM_SUCURSAL, NULL);',
'   :P347_COD_MODULO := nvl(:P_COD_MODULO, ''CC'');',
'    :P347_AUX_MSJ_CONTROL := NULL;',
' ',
' ',
' ',
' '))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_imp.component_end;
end;
/
