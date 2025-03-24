prompt --application/pages/page_00344
begin
--   Manifest
--     PAGE: 00344
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
 p_id=>344
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'AUCONTRO'
,p_alias=>'AUCONTRO'
,p_step_title=>'AUCONTRO'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function soloNumeros(e){',
'  var key = e.charCode;',
'    return key >= 48 && key <= 57;',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_last_updated_by=>'ANDRESDI'
,p_last_upd_yyyymmddhh24miss=>'20230116172455'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(338863939384821775)
,p_plug_name=>'CONTROL CAJAS'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>990
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(338864063181821776)
,p_plug_name=>'TABLA_CO_CONTROLES'
,p_parent_plug_id=>wwv_flow_imp.id(338863939384821775)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ',
'    rowid id,',
'    COD_EMPRESA,',
'	COD_CONTROL,',
'	DESCRIPCION,',
'    APEX_ITEM.CHECKBOX (p_idx  => 1,',
'                        p_value       => rowid,',
'                        p_attributes  => (case ACTIVO',
'                                           when ''S'' then ''checked ''',
'                                      else null',
'                                     end ))as ACTIVO,',
'',
'    NULL EDITAR,',
'    NULL ELIMINAR',
'',
'FROM CO_CONTROLES',
'where cod_empresa = :P344_COD_EMPRESA',
'order by TO_NUMBER(COD_CONTROL) desc'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P344_COD_EMPRESA'
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
 p_id=>wwv_flow_imp.id(341330445681566247)
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
,p_internal_uid=>341330445681566247
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(88748926294714692)
,p_db_column_name=>'EDITAR'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Editar'
,p_column_link=>'javascript:$s(''P344_SEQ_ID_EDITAR'',''#ID#'');'
,p_column_linktext=>' <span aria-hidden="true" class="fa fa-edit"></span>'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(88749311944714692)
,p_db_column_name=>'ELIMINAR'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Eliminar'
,p_column_link=>'javascript:$s(''P344_SEQ_ID_ELIMINAR'',''#ID#'');'
,p_column_linktext=>'<span class="fa fa-trash" aria-hidden="true"></span>'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(88748102355714692)
,p_db_column_name=>'COD_EMPRESA'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Cod Empresa'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(88748504357714692)
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
 p_id=>wwv_flow_imp.id(88746548323714691)
,p_db_column_name=>'DESCRIPCION'
,p_display_order=>170
,p_column_identifier=>'Q'
,p_column_label=>'Descripcion'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(88746966100714691)
,p_db_column_name=>'ACTIVO'
,p_display_order=>180
,p_column_identifier=>'R'
,p_column_label=>'Activo'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(83625430675059727)
,p_db_column_name=>'COD_CONTROL'
,p_display_order=>190
,p_column_identifier=>'U'
,p_column_label=>'Cod Control'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(341345644881724792)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'835819'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>10
,p_report_columns=>'EDITAR:COD_CONTROL:DESCRIPCION:ACTIVO:ELIMINAR:'
,p_sort_column_1=>'COD_TIP_CLIENTE'
,p_sort_direction_1=>'DESC'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(338864139949821777)
,p_plug_name=>'AGREGAR/EDITAR'
,p_parent_plug_id=>wwv_flow_imp.id(338863939384821775)
,p_region_template_options=>'#DEFAULT#:js-dialog-autoheight:js-dialog-size600x400'
,p_plug_template=>wwv_flow_imp.id(40117728043263659)
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(338864329911821778)
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
 p_id=>wwv_flow_imp.id(88750707483714693)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_imp.id(338864139949821777)
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
 p_id=>wwv_flow_imp.id(88751134233714693)
,p_button_sequence=>70
,p_button_plug_id=>wwv_flow_imp.id(338864139949821777)
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
 p_id=>wwv_flow_imp.id(88751562609714693)
,p_button_sequence=>80
,p_button_plug_id=>wwv_flow_imp.id(338864139949821777)
,p_button_name=>'BT_CANCELAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_image_alt=>'Cancelar'
,p_button_position=>'DELETE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(88750081298714693)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(338864063181821776)
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
 p_id=>wwv_flow_imp.id(88751952418714694)
,p_name=>'P344_COD_CONTROL'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(338864139949821777)
,p_prompt=>'Control'
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
 p_id=>wwv_flow_imp.id(88752711280714694)
,p_name=>'P344_DESCRIPCION'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(338864139949821777)
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
 p_id=>wwv_flow_imp.id(88753150110714694)
,p_name=>'P344_ACTIVO'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(338864139949821777)
,p_prompt=>'Activo'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'S'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(88754213184714695)
,p_name=>'P344_DERECHOS'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(338864329911821778)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(88754672968714695)
,p_name=>'P344_COD_MODULO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(338864329911821778)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(88755034419714695)
,p_name=>'P344_NOM_MODULO'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(338864329911821778)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(88755462818714695)
,p_name=>'P344_COD_FORMA'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(338864329911821778)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(88755878574714696)
,p_name=>'P344_NOM_FORMA'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(338864329911821778)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(88756230672714696)
,p_name=>'P344_COD_EMPRESA'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(338864329911821778)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(88756616174714696)
,p_name=>'P344_NOM_EMPRESA'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(338864329911821778)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(88757003154714696)
,p_name=>'P344_COD_SUCURSAL'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(338864329911821778)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(88757401997714696)
,p_name=>'P344_NOM_SUCURSAL'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(338864329911821778)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(88757839557714696)
,p_name=>'P344_COD_USUARIO'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(338864329911821778)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(88758229214714696)
,p_name=>'P344_COD_IDIOMA'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(338864329911821778)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(88758614057714697)
,p_name=>'P344_COD_SISMENU'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(338864329911821778)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(88759096177714697)
,p_name=>'P344_SEQ_ID_EDITAR'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(338864329911821778)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(88759483792714697)
,p_name=>'P344_SEQ_ID_ELIMINAR'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(338864329911821778)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(88759882036714697)
,p_name=>'P344_AUX_MSJ_CONTROL'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(338864329911821778)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(88761072981714704)
,p_name=>'DA_CREAR'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(88750081298714693)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(88763584543714705)
,p_event_id=>wwv_flow_imp.id(88761072981714704)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P344_COD_CONTROL,P344_DESCRIPCION,P344_ACTIVO'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(88762053430714704)
,p_event_id=>wwv_flow_imp.id(88761072981714704)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(88750707483714693)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(88762527686714704)
,p_event_id=>wwv_flow_imp.id(88761072981714704)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(88751134233714693)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(88763009431714705)
,p_event_id=>wwv_flow_imp.id(88761072981714704)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(338864139949821777)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(88761562325714704)
,p_event_id=>wwv_flow_imp.id(88761072981714704)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
' 	select nvl(max(to_number(cod_control)),0)+1',
'	 into :P344_COD_CONTROL',
'	from co_controles a where cod_empresa=:P344_COD_EMPRESA;',
' ',
'    :P344_ACTIVO := ''S'';',
'end;'))
,p_attribute_02=>'P344_COD_EMPRESA'
,p_attribute_03=>'P344_ACTIVO,P344_COD_CONTROL'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(88769263238714707)
,p_name=>'BT_GUARDAR'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(88750707483714693)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(88770284983714707)
,p_event_id=>wwv_flow_imp.id(88769263238714707)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P344_AUX_MSJ_CONTROL := null;',
'IF :P344_COD_CONTROL IS NULL THEN',
'    :P344_AUX_MSJ_CONTROL := ''Ingrese el Control'';',
'    else',
'    BEGIN',
'    AUCONTRO.pr_crear (',
'	PI_COD_EMPRESA => :P344_COD_EMPRESA,',
'	PI_COD_CONTROL => :P344_COD_CONTROL,',
'	PI_DESCRIPCION => :P344_DESCRIPCION,',
'	PI_ACTIVO => :P344_ACTIVO);',
' EXCEPTION',
'    ',
'    WHEN OTHERS THEN',
unistr('        raise_application_error(-20201,''El Control que desea crear ya \00E9xiste.''||sqlerrm);'),
'        APEX_DEBUG.ERROR (SQLERRM);',
'',
'    END;',
' ',
' ',
'    ',
' ',
' end if;'))
,p_attribute_02=>'P344_COD_EMPRESA,P344_COD_CONTROL,P344_DESCRIPCION,P344_ACTIVO'
,p_attribute_03=>'P344_AUX_MSJ_CONTROL'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(88769774058714707)
,p_event_id=>wwv_flow_imp.id(88769263238714707)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'&P344_AUX_MSJ_CONTROL.'
,p_attribute_02=>'ERROR'
,p_attribute_03=>'warning'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P344_AUX_MSJ_CONTROL'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(88771266240714707)
,p_event_id=>wwv_flow_imp.id(88769263238714707)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(338864063181821776)
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P344_AUX_MSJ_CONTROL'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(88771799625714708)
,p_event_id=>wwv_flow_imp.id(88769263238714707)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(338864139949821777)
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P344_AUX_MSJ_CONTROL'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(88770768994714707)
,p_event_id=>wwv_flow_imp.id(88769263238714707)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'nuevo registro creado exitosamente'
,p_attribute_02=>unistr('\00C9XITO')
,p_attribute_03=>'success'
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P344_AUX_MSJ_CONTROL'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(88763911775714705)
,p_name=>'DA_ABRIR_EDITAR'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P344_SEQ_ID_EDITAR'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(88765496487714706)
,p_event_id=>wwv_flow_imp.id(88763911775714705)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'		COD_CONTROL,',
'		DESCRIPCION,',
'		ACTIVO   ',
'INTO',
'   ',
'    :P344_COD_CONTROL,',
'    :P344_DESCRIPCION,',
'    :P344_ACTIVO',
'     ',
'from co_controles',
'WHERE  rowid = :P344_SEQ_ID_EDITAR;'))
,p_attribute_02=>'P344_SEQ_ID_EDITAR'
,p_attribute_03=>'P344_COD_CONTROL,P344_DESCRIPCION,P344_ACTIVO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(88765926298714706)
,p_event_id=>wwv_flow_imp.id(88763911775714705)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(88751134233714693)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(88764996460714705)
,p_event_id=>wwv_flow_imp.id(88763911775714705)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(88750707483714693)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(88764476538714705)
,p_event_id=>wwv_flow_imp.id(88763911775714705)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(338864139949821777)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(88766377355714706)
,p_name=>'DA_GUARDAR_EDITAR'
,p_event_sequence=>40
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(88751134233714693)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(88766892710714706)
,p_event_id=>wwv_flow_imp.id(88766377355714706)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P344_AUX_MSJ_CONTROL := null;',
'IF :P344_COD_CONTROL IS NULL THEN',
'    :P344_AUX_MSJ_CONTROL := ''Ingrese el Control'';',
'    else',
'    BEGIN',
'    AUCONTRO.pr_modificar (',
'    PI_SEQ_ID_EDITAR => :P344_SEQ_ID_EDITAR,',
'    PI_COD_EMPRESA => :P344_COD_EMPRESA,',
'	PI_COD_CONTROL => :P344_COD_CONTROL,',
'	PI_DESCRIPCION => :P344_DESCRIPCION,',
'	PI_ACTIVO => :P344_ACTIVO',
'   );',
' EXCEPTION',
'    ',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR (SQLERRM);',
'',
'    END;',
' ',
' ',
'    ',
' ',
' end if;'))
,p_attribute_02=>'P344_COD_EMPRESA,P344_COD_CONTROL,P344_DESCRIPCION,P344_ACTIVO,P344_SEQ_ID_EDITAR'
,p_attribute_03=>'P344_AUX_MSJ_CONTROL'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(88767329804714706)
,p_event_id=>wwv_flow_imp.id(88766377355714706)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'&P344_AUX_MSJ_CONTROL.'
,p_attribute_02=>'ERROR'
,p_attribute_03=>'warning'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P344_AUX_MSJ_CONTROL'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(88767889025714706)
,p_event_id=>wwv_flow_imp.id(88766377355714706)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(338864063181821776)
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P344_AUX_MSJ_CONTROL'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(88768338327714707)
,p_event_id=>wwv_flow_imp.id(88766377355714706)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(338864139949821777)
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P344_AUX_MSJ_CONTROL'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(88768856007714707)
,p_event_id=>wwv_flow_imp.id(88766377355714706)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'registro editado exitosamente'
,p_attribute_02=>unistr('\00C9XITO')
,p_attribute_03=>'success'
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P344_AUX_MSJ_CONTROL'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(88772161630714708)
,p_name=>'DA_ELIMINAR'
,p_event_sequence=>60
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P344_SEQ_ID_ELIMINAR'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(88772676868714708)
,p_event_id=>wwv_flow_imp.id(88772161630714708)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>unistr('\00BFEsta seguro que desea eliminar?')
,p_attribute_02=>'ELIMINAR'
,p_attribute_03=>'danger'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(88773196125714708)
,p_event_id=>wwv_flow_imp.id(88772161630714708)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'    AUCONTRO.pr_eliminar (',
'    PI_SEQ_ID_ELIMINAR => :P344_SEQ_ID_ELIMINAR   );',
'end;'))
,p_attribute_02=>'P344_SEQ_ID_ELIMINAR'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(88773662740714708)
,p_event_id=>wwv_flow_imp.id(88772161630714708)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(338864063181821776)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(88774074662714708)
,p_name=>'DA_VOLVER'
,p_event_sequence=>70
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(88751562609714693)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(88774507766714709)
,p_event_id=>wwv_flow_imp.id(88774074662714708)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(338864139949821777)
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(88760603792714703)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'PR_LIMPIAR'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(88760230319714703)
,p_process_sequence=>20
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_INIT'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'   :P344_COD_USUARIO := nvl(:P_COD_USUARIO, user);',
'   :P344_COD_EMPRESA := nvl(:P_COD_EMPRESA,''1'');',
'   :P344_NOM_EMPRESA := nvl(:P_NOM_EMPRESA, null);',
'   :P344_COD_SUCURSAL := nvl(:P_COD_SUCURSAL,null);',
'   :P344_NOM_SUCURSAL := nvl(:P_NOM_SUCURSAL, NULL);',
'   :P344_COD_MODULO := nvl(:P_COD_MODULO, ''CC'');',
'    :P344_AUX_MSJ_CONTROL := NULL;',
' ',
' ',
' ',
' '))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_imp.component_end;
end;
/
