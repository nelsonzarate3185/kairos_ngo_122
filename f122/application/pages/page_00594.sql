prompt --application/pages/page_00594
begin
--   Manifest
--     PAGE: 00594
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
 p_id=>594
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'MOTIVO DERIVACION POSTVTA'
,p_alias=>'MOTIVO-DERIVACION-POSTVTA'
,p_step_title=>'MOTIVO DERIVACION POSTVTA'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_last_updated_by=>'CHARBA'
,p_last_upd_yyyymmddhh24miss=>'20230926155237'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(190694053635286610)
,p_plug_name=>unistr('Motivo de Derivaci\00F3n')
,p_region_template_options=>'#DEFAULT#:js-dialog-size480x320'
,p_plug_template=>wwv_flow_imp.id(40117728043263659)
,p_plug_display_sequence=>940
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(190694314101286613)
,p_name=>'Listado'
,p_parent_plug_id=>wwv_flow_imp.id(190694053635286610)
,p_template=>wwv_flow_imp.id(40096829222263653)
,p_display_sequence=>30
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select COD_MOTIVO,',
'       DESCRIPCION,',
'       APEX_ITEM.CHECKBOX(1,ACTIVO,decode(ACTIVO,''S'',''CHECKED'',''UNCHECKED'' )||'' disabled'')ACTIVO',
'       ,null Eliminar',
'  from CRM_MOTIVO_DERIVACION',
'  order by 1 asc'))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(40147995650263667)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(190694420911286614)
,p_query_column_id=>1
,p_column_alias=>'COD_MOTIVO'
,p_column_display_sequence=>10
,p_column_heading=>'Codigo'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_derived_column=>'N'
,p_include_in_export=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(190694575348286615)
,p_query_column_id=>2
,p_column_alias=>'DESCRIPCION'
,p_column_display_sequence=>20
,p_column_heading=>unistr('Motivo Descripci\00F3n ')
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(190694656222286616)
,p_query_column_id=>3
,p_column_alias=>'ACTIVO'
,p_column_display_sequence=>30
,p_column_heading=>'Activo'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(190695190312286621)
,p_query_column_id=>4
,p_column_alias=>'ELIMINAR'
,p_column_display_sequence=>40
,p_column_heading=>'Eliminar'
,p_use_as_row_header=>'N'
,p_column_link=>'javascript:$s(''P594_ELIMINA_DET'',''#COD_MOTIVO#'');'
,p_column_linktext=>'<span class="fa fa-trash" aria-hidden="true"></span>'
,p_column_alignment=>'CENTER'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(190731652241790375)
,p_plug_name=>'MOTIVO DERIVACION POSTVTA'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select COD_MOTIVO_PRINCIPAL,',
'       COD_MOTIVO_DERIVA,',
'       COD_AREA_RESPONSABLE, ',
'       COD_PERS_RESPONSABLE,',
'       COD_MOTIVO_PRINCIPAL COD_MP,',
'       COD_MOTIVO_DERIVA COD_MD,',
'       NULL ELIMINAR',
'  from CRM_MOTIVO_DERIVACION_PV',
'  WHERE COD_EMPRESA = :P_COD_EMPRESA'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_page_header=>'MOTIVO DERIVACION POSTVTA'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(190731733585790375)
,p_name=>'MOTIVO DERIVACION POSTVTA'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_base_pk2=>'COD_MOTIVO_DERIVA'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:595:&SESSION.::&DEBUG.:RP,:P595_COD_MOTIVO_PRINCIPAL,P595_COD_MOTIVO_DERIVA:#COD_MP#,#COD_MD#'
,p_detail_link_text=>'<span aria-label="Edit"><span class="fa fa-edit" aria-hidden="true" title="Editar"></span></span>'
,p_owner=>'JUANSA'
,p_internal_uid=>190731733585790375
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(190732849422790364)
,p_db_column_name=>'COD_MOTIVO_PRINCIPAL'
,p_display_order=>0
,p_column_identifier=>'B'
,p_column_label=>'Motivo Principal'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_rpt_named_lov=>wwv_flow_imp.id(24154841655067951)
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(190693636773286606)
,p_db_column_name=>'COD_MOTIVO_DERIVA'
,p_display_order=>16
,p_column_identifier=>'G'
,p_column_label=>unistr('Motivo Derivaci\00F3n')
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_rpt_named_lov=>wwv_flow_imp.id(307113639598079598)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(190733616543790363)
,p_db_column_name=>'COD_AREA_RESPONSABLE'
,p_display_order=>26
,p_column_identifier=>'D'
,p_column_label=>'Area'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_column_alignment=>'CENTER'
,p_rpt_named_lov=>wwv_flow_imp.id(307117145729094858)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(190693747243286607)
,p_db_column_name=>'COD_PERS_RESPONSABLE'
,p_display_order=>36
,p_column_identifier=>'H'
,p_column_label=>'Responsable'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_column_alignment=>'CENTER'
,p_rpt_named_lov=>wwv_flow_imp.id(25345769790214481)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(190693870494286608)
,p_db_column_name=>'COD_MP'
,p_display_order=>46
,p_column_identifier=>'I'
,p_column_label=>'Cod Mp'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(190693976077286609)
,p_db_column_name=>'COD_MD'
,p_display_order=>56
,p_column_identifier=>'J'
,p_column_label=>'Cod Md'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(190695263334286622)
,p_db_column_name=>'ELIMINAR'
,p_display_order=>66
,p_column_identifier=>'K'
,p_column_label=>'Eliminar'
,p_column_link=>'javascript:$s(''P459_SEQID'',''#SEQ_ID#'');'
,p_column_linktext=>'<span class="fa fa-trash" aria-hidden="true"></span>'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(190736971609780589)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1907370'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'COD_MOTIVO_PRINCIPAL:COD_MOTIVO_DERIVA:COD_PERS_RESPONSABLE:COD_AREA_RESPONSABLE:ELIMINAR:'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(190694236071286612)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(190694053635286610)
,p_button_name=>'Guardar'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--iconRight:t-Button--padLeft:t-Button--gapRight:t-Button--gapTop'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Agregar'
,p_warn_on_unsaved_changes=>null
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
,p_grid_column_span=>3
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(190694757396286617)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(190731652241790375)
,p_button_name=>'motivo'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight:t-Button--gapRight'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Motivos'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-search'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(190734967150790358)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(190731652241790375)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight:t-Button--gapLeft'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Crear'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:595:&SESSION.::&DEBUG.:595'
,p_button_css_classes=>'u-color-22-text'
,p_icon_css_classes=>'fa-plus'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(190694181394286611)
,p_name=>'P594_DESCRIPCION'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(190694053635286610)
,p_prompt=>unistr('Descripci\00F3n - Nuevo Motivo')
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
 p_id=>wwv_flow_imp.id(190695088419286620)
,p_name=>'P594_ELIMINA_DET'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(190694053635286610)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(190695333846286623)
,p_name=>'P594_ELIMINA_PV'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(190731652241790375)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(190735229628790358)
,p_name=>'Edit Report - Dialog Closed'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(190731652241790375)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(190735722773790355)
,p_event_id=>wwv_flow_imp.id(190735229628790358)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(190731652241790375)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(190694846849286618)
,p_name=>'New'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(190694757396286617)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(190694926712286619)
,p_event_id=>wwv_flow_imp.id(190694846849286618)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(190694053635286610)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(190696515611286635)
,p_event_id=>wwv_flow_imp.id(190694846849286618)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P594_DESCRIPCION'
,p_attribute_01=>'STATIC_ASSIGNMENT'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(190695433521286624)
,p_name=>'da_eliminar_pv'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P594_ELIMINA_PV'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(190695560342286625)
,p_event_id=>wwv_flow_imp.id(190695433521286624)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>'Esta seguro de eliminar el registro?'
,p_attribute_02=>'Eliminar Motivo Post Venta'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(190695845269286628)
,p_event_id=>wwv_flow_imp.id(190695433521286624)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'null;'
,p_attribute_02=>'P594_ELIMINA_PV'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(190695651742286626)
,p_name=>'da_eliminar'
,p_event_sequence=>40
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P594_ELIMINA_DET'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(190695706885286627)
,p_event_id=>wwv_flow_imp.id(190695651742286626)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>'Esta seguro de eliminar el registro?'
,p_attribute_02=>'Eliminar Motivo'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(190695944957286629)
,p_event_id=>wwv_flow_imp.id(190695651742286626)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'delete crm_motivo_derivacion',
'where cod_motivo=:P594_ELIMINA_DET; '))
,p_attribute_02=>'P594_ELIMINA_DET'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(190696028919286630)
,p_event_id=>wwv_flow_imp.id(190695651742286626)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(190694314101286613)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(190696105542286631)
,p_name=>'da_guardar_det'
,p_event_sequence=>50
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(190694236071286612)
,p_condition_element=>'P594_DESCRIPCION'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(190696271858286632)
,p_event_id=>wwv_flow_imp.id(190696105542286631)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    vcodigo number;',
'begin',
'    select nvl(max(cod_motivo),0)+1',
'    into vcodigo',
'    from crm_motivo_derivacion;',
'',
'    ',
'        insert into inv.crm_motivo_derivacion',
'          (cod_motivo, descripcion, activo)',
'        values',
'          (vcodigo, :P594_DESCRIPCION, ''S'');',
':P594_DESCRIPCION:=null;',
'exception',
'    when others then',
'             raise_application_error(-20000,sqlerrm );',
'end;'))
,p_attribute_02=>'P594_DESCRIPCION'
,p_attribute_03=>'P594_DESCRIPCION'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(190696471921286634)
,p_event_id=>wwv_flow_imp.id(190696105542286631)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'Debe cargar la descripcion!'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(190696392977286633)
,p_event_id=>wwv_flow_imp.id(190696105542286631)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(190694314101286613)
);
wwv_flow_imp.component_end;
end;
/
