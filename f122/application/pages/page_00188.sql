prompt --application/pages/page_00188
begin
--   Manifest
--     PAGE: 00188
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
 p_id=>188
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'Sectores por Usuario - VTUSUSEC'
,p_alias=>'SECTORES-POR-USUARIO-VTUSUSEC'
,p_step_title=>'Sectores por Usuario - VTUSUSEC'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_last_updated_by=>'INV'
,p_last_upd_yyyymmddhh24miss=>'20221111122726'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(77205652734260670)
,p_plug_name=>'VARIABLES AUXILIARES'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>70
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(97981371614528879)
,p_plug_name=>'Sectores por Usuario'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(97981560316528881)
,p_plug_name=>'REPORTE'
,p_parent_plug_id=>wwv_flow_imp.id(97981371614528879)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>80
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT           ',
'        seq_id p_id,',
'       c001 cod_empresa,',
'                     c002 COD_USUARIO,',
'                     c003 COD_PERSONA,',
'                     c004 NOMBRE,',
'                     c005 COD_SECTOR,',
'                     C006 DESC_SECTOR,',
'        null DETALLE,',
'        null EDITAR,',
'        null ELIMINAR',
'',
'FROM APEX_COLLECTIONS',
'WHERE COLLECTION_NAME = ''VTUSUSEC''',
'AND nvl(c020, ''O'') <> ''B'';',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'REPORTE'
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
 p_id=>wwv_flow_imp.id(97981680344528882)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'EMILIANOP'
,p_internal_uid=>97981680344528882
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(39177584649924642)
,p_db_column_name=>'COD_USUARIO'
,p_display_order=>60
,p_column_identifier=>'P'
,p_column_label=>'Usuario'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(39178390112924642)
,p_db_column_name=>'P_ID'
,p_display_order=>80
,p_column_identifier=>'R'
,p_column_label=>'P Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(39178788555924643)
,p_db_column_name=>'DETALLE'
,p_display_order=>100
,p_column_identifier=>'T'
,p_column_label=>'Detalle'
,p_column_link=>'javascript:$s(''P188_SEQ_ID'',#P_ID#);'
,p_column_linktext=>'<span class="fa fa-search" aria-hidden="true"></span>'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(39179573301924643)
,p_db_column_name=>'EDITAR'
,p_display_order=>120
,p_column_identifier=>'V'
,p_column_label=>'Editar'
,p_column_link=>'javascript:$s(''P188_SEQ_ID_EDITAR'',#P_ID#);'
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
 p_id=>wwv_flow_imp.id(39179996068924643)
,p_db_column_name=>'ELIMINAR'
,p_display_order=>130
,p_column_identifier=>'W'
,p_column_label=>'Eliminar'
,p_column_link=>'javascript:$s(''P188_SEQ_ID_ELIMINAR'',#P_ID#);'
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
 p_id=>wwv_flow_imp.id(38190030676756529)
,p_db_column_name=>'COD_EMPRESA'
,p_display_order=>140
,p_column_identifier=>'X'
,p_column_label=>'Cod Empresa'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(38190145161756530)
,p_db_column_name=>'COD_PERSONA'
,p_display_order=>150
,p_column_identifier=>'Y'
,p_column_label=>'Cod Persona'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(38190233299756531)
,p_db_column_name=>'NOMBRE'
,p_display_order=>160
,p_column_identifier=>'Z'
,p_column_label=>'Nombre'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(38190343824756532)
,p_db_column_name=>'COD_SECTOR'
,p_display_order=>170
,p_column_identifier=>'AA'
,p_column_label=>'Cod Sector'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(38190496097756533)
,p_db_column_name=>'DESC_SECTOR'
,p_display_order=>180
,p_column_identifier=>'AB'
,p_column_label=>'Desc Sector'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(98316285884746844)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'258406'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'COD_USUARIO:COD_PERSONA:NOMBRE:COD_SECTOR:DESC_SECTOR:EDITAR:ELIMINAR:'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(98415458423534479)
,p_plug_name=>'Agregar/Editar Balance'
,p_region_template_options=>'#DEFAULT#:js-dialog-autoheight:js-dialog-size720x480'
,p_plug_template=>wwv_flow_imp.id(40117728043263659)
,p_plug_display_sequence=>60
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(39174019955924639)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(97981371614528879)
,p_button_name=>'P188_BOTON_INICIO'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Inicio'
,p_button_position=>'BOTTOM'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(39169384226924636)
,p_button_sequence=>160
,p_button_plug_id=>wwv_flow_imp.id(98415458423534479)
,p_button_name=>'P188_CANCELAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_image_alt=>'Cancelar'
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(39168945436924636)
,p_button_sequence=>140
,p_button_plug_id=>wwv_flow_imp.id(98415458423534479)
,p_button_name=>'P188_ACEPTAR_CREAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Aceptar'
,p_button_position=>'CREATE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(39169786578924636)
,p_button_sequence=>150
,p_button_plug_id=>wwv_flow_imp.id(98415458423534479)
,p_button_name=>'P188_ACEPTAR_EDITAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Aceptar'
,p_button_position=>'CREATE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(39180662040924644)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(97981371614528879)
,p_button_name=>'P188_AGREGAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Agregar'
,p_button_position=>'TOP'
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
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(39173600618924639)
,p_button_sequence=>90
,p_button_plug_id=>wwv_flow_imp.id(97981371614528879)
,p_button_name=>'P188_BOTON_CONFIRMAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Confirmar'
,p_button_position=>'TOP'
,p_warn_on_unsaved_changes=>null
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    RETURN SEGURIDAD_GRANULAR.FC_MOSTRAR_CONFIRMAR (pusua0100_id => :P_USUA0100_ID,',
'                                                    ppage_id => :APP_PAGE_ID,',
'                                                    papli0100_id => :P_APLI0100_ID);',
'END;'))
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'FUNCTION_BODY'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(38190584209756534)
,p_name=>'P188_DESC_USUARIO'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(98415458423534479)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Usuario'
,p_source=>'APP_USER'
,p_source_type=>'ITEM'
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
 p_id=>wwv_flow_imp.id(39170121083924637)
,p_name=>'P188_COD_SECTOR'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(98415458423534479)
,p_prompt=>unistr('C\00F3digo Sector')
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>'select descripcion || '' - ''|| cod_sector d, cod_sector c from sectores'
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'Y'
,p_attribute_05=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(39170504027924638)
,p_name=>'P188_DESCRIPCION'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(98415458423534479)
,p_prompt=>unistr('Descripci\00F3n')
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
 p_id=>wwv_flow_imp.id(39172527295924638)
,p_name=>'P188_COD_USUARIO'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(98415458423534479)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Usuario'
,p_source=>'APP_USER'
,p_source_type=>'ITEM'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>'select  p.nombre|| '' ''||u.cod_usuario desc_usuario ,u.cod_usuario from usuarios u, personas p where u.cod_persona = p.cod_persona and u.estado = ''A'''
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'Y'
,p_attribute_05=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(39181712782924645)
,p_name=>'P188_SEQ_ID'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(98415458423534479)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(39182164838924645)
,p_name=>'P188_SEQ_ID_EDITAR'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(98415458423534479)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(39182597138924645)
,p_name=>'P188_SEQ_ID_ELIMINAR'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(98415458423534479)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(39183213632924645)
,p_name=>'P188_ALERT'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(77205652734260670)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(39198710804924653)
,p_name=>'DA_CAMBIAR_COMENTARIO'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P188_SEQ_ID'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(39199267362924654)
,p_event_id=>wwv_flow_imp.id(39198710804924653)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'        SELECT c005 OBSERVACION ',
'        INTO :P188_COMENTARIOS',
'        FROM apex_collections',
'        WHERE collection_name = ''VTUSUSEC''',
'        AND   SEQ_ID = :P188_SEQ_ID;',
'',
'END;'))
,p_attribute_02=>'P188_SEQ_ID'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(39196318096924653)
,p_name=>'DA_ABRIR_GUARDAR'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(39180662040924644)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(39197816771924653)
,p_event_id=>wwv_flow_imp.id(39196318096924653)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(39168945436924636)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(39198317100924653)
,p_event_id=>wwv_flow_imp.id(39196318096924653)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(39169786578924636)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(39196879736924653)
,p_event_id=>wwv_flow_imp.id(39196318096924653)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(98415458423534479)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(39197374515924653)
,p_event_id=>wwv_flow_imp.id(39196318096924653)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P188_COD_SECTOR,P188_DESCRIPCION'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(39184485410924648)
,p_name=>'DA_REGRESAR'
,p_event_sequence=>30
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(39169384226924636)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(39184930418924648)
,p_event_id=>wwv_flow_imp.id(39184485410924648)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(98415458423534479)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(39185315995924649)
,p_name=>'DA_GUARDAR_MIEMBRO_COLECCION'
,p_event_sequence=>40
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(39168945436924636)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(39187370635924649)
,p_event_id=>wwv_flow_imp.id(39185315995924649)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'IF  :P188_COD_DOC IS NULL OR :P188_DESCRIPCION IS NULL OR :P188_MONTO IS NULL OR ',
'    :P188_FECHA_INICIO IS NULL OR :P188_FECHA_VENCIMIENTO IS NULL ',
'    THEN',
'    ',
'        :P188_ALERT := 1;',
'ELSE ',
'        IF :P188_ALERT = 2 THEN',
'           :P188_ALERT := 2;',
'        ELSE',
'            :P188_ALERT := 0;',
'            BSCOMP.pr_agregar_miembro_collection (  :P188_COD_DOC,',
'                                                    :P188_DESCRIPCION,',
'                                                    :P188_MONTO,',
'                                                    :P188_FECHA_INICIO,',
'                                                    :P188_FECHA_VENCIMIENTO,',
'                                                    :P188_FEC_ALTA,',
'                                                    :P188_COD_USUARIO,',
'                                                    :P188_AGREGAR_COMENTARIOS);',
'        END IF;  ',
'END IF;',
'',
'EXCEPTION',
'',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(sqlerrm);',
'',
'END;',
''))
,p_attribute_02=>'P188_COD_SECTOR,P188_DESCRIPCION,P188_COD_USUARIO,P188_ALERT'
,p_attribute_03=>'P188_ALERT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(39186851486924649)
,p_event_id=>wwv_flow_imp.id(39185315995924649)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>unistr('Compruebe que los campos requeridos no est\00E9n vac\00EDos.')
,p_attribute_02=>'Corroborar los datos'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P188_ALERT'
,p_client_condition_expression=>'1'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(39185811866924649)
,p_event_id=>wwv_flow_imp.id(39185315995924649)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'IF  TO_DATE(:P188_FECHA_INICIO, ''dd/mm/yyyy'') > TO_DATE(:P188_FECHA_VENCIMIENTO, ''dd/mm/yyyy'') THEN',
'    ',
'       :P188_ALERT := 2;',
'ELSE ',
'    IF :P188_ALERT = 1 THEN        ',
'        :P188_ALERT := 1;',
'    ELSE',
'        :P188_ALERT := 0;',
'        BSCOMP.pr_agregar_miembro_collection (  :P188_COD_DOC,',
'                                                :P188_DESCRIPCION,',
'                                                :P188_MONTO,',
'                                                :P188_FECHA_INICIO,',
'                                                :P188_FECHA_VENCIMIENTO,',
'                                                :P188_FEC_ALTA,',
'                                                :P188_COD_USUARIO,',
'                                                :P188_AGREGAR_COMENTARIOS);',
'    END IF;',
'END IF;',
'       ',
'',
'EXCEPTION',
'',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(sqlerrm);',
'',
'END;',
''))
,p_attribute_02=>'P188_COD_SECTOR,P188_DESCRIPCION,P188_COD_USUARIO,P188_ALERT'
,p_attribute_03=>'P188_ALERT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(39186319484924649)
,p_event_id=>wwv_flow_imp.id(39185315995924649)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'La fecha de inicio no puede ser mayor a la fecha de vencimiento.'
,p_attribute_02=>'Corroborar los datos'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P188_ALERT'
,p_client_condition_expression=>'2'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(39188304146924650)
,p_event_id=>wwv_flow_imp.id(39185315995924649)
,p_event_result=>'TRUE'
,p_action_sequence=>80
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(97981560316528881)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P188_ALERT'
,p_client_condition_expression=>'0'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(39187823399924650)
,p_event_id=>wwv_flow_imp.id(39185315995924649)
,p_event_result=>'TRUE'
,p_action_sequence=>90
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(98415458423534479)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P188_ALERT'
,p_client_condition_expression=>'0'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(39199679637924654)
,p_name=>'DA_CAMBIAR_DESCRIPCION'
,p_event_sequence=>50
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P188_COD_SECTOR'
,p_condition_element=>'P188_COD_SECTOR'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(39200159823924654)
,p_event_id=>wwv_flow_imp.id(39199679637924654)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'SELECT  descripcion INTO :P188_DESCRIPCION',
'from sectores',
'WHERE    cod_empresa = :P_cod_empresa',
'       and cod_sector = :P188_COD_SECTOR;',
'',
'',
'EXCEPTION',
'',
'    WHEN OTHERS THEN',
'        apex_debug.error(sqlerrm);',
'',
'END;'))
,p_attribute_02=>'P188_COD_SECTOR'
,p_attribute_03=>'P188_DESCRIPCION'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(39188786752924650)
,p_name=>'DA_ELIMINAR_MIEMBRO'
,p_event_sequence=>80
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P188_SEQ_ID_ELIMINAR'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(39189766115924650)
,p_event_id=>wwv_flow_imp.id(39188786752924650)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>unistr('\00BFDesea eliminar?')
,p_attribute_02=>unistr('\00BFDesea Eliminar?')
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(39189248859924650)
,p_event_id=>wwv_flow_imp.id(39188786752924650)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'VTUSUSEC.pr_borrar_miembro_collection(:P188_SEQ_ID_ELIMINAR,',
'                                    :P_COD_EMPRESA,',
'                                    :P188_COD_USUARIO,',
'                                    :NULL,',
'                                    NULL,',
'                                    :P188_COD_SECTOR,',
'                                    NULL);',
' ',
'EXCEPTION',
'',
'    WHEN OTHERS THEN',
'',
'        apex_debug.ERROR(sqlerrm);',
'',
'END;'))
,p_attribute_02=>'P188_SEQ_ID_ELIMINAR,P188_COD_SECTOR,P188_DESCRIPCION,P188_COD_USUARIO'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(39190744029924650)
,p_event_id=>wwv_flow_imp.id(39188786752924650)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P188_COMENTARIOS'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(39190228838924650)
,p_event_id=>wwv_flow_imp.id(39188786752924650)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(97981560316528881)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(39191194562924651)
,p_name=>'DA_EDITAR_MIEMBRO'
,p_event_sequence=>90
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P188_SEQ_ID_EDITAR'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(39193158658924652)
,p_event_id=>wwv_flow_imp.id(39191194562924651)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'',
'    SELECT     ',
'                     c002 COD_USUARIO,                    ',
'                     c005 COD_SECTOR',
'    ',
'    INTO    :P188_COD_USUARIO, ',
'            :P188_COD_SECTOR ',
'    FROM APEX_COLLECTIONS',
'    WHERE COLLECTION_NAME = ''VTUSUSEC''',
'    AND SEQ_ID = :P188_SEQ_ID_EDITAR;',
' ',
'',
'EXCEPTION',
'        when others then',
'',
'            raise_application_error(-20000, ''Ha ocurrido un error en la carga de datos'');',
'',
'END;'))
,p_attribute_02=>'P188_SEQ_ID_EDITAR'
,p_attribute_03=>'P188_COD_SECTOR,P188_COD_USUARIO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(39191673001924651)
,p_event_id=>wwv_flow_imp.id(39191194562924651)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(39169786578924636)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(39192128409924651)
,p_event_id=>wwv_flow_imp.id(39191194562924651)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(39168945436924636)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(39192609160924651)
,p_event_id=>wwv_flow_imp.id(39191194562924651)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(98415458423534479)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(39193557935924652)
,p_name=>'DA_OCULTAR_BOTON_GUARDAR_EDITAR'
,p_event_sequence=>100
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(39194017149924652)
,p_event_id=>wwv_flow_imp.id(39193557935924652)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(39168945436924636)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(39194546570924652)
,p_event_id=>wwv_flow_imp.id(39193557935924652)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(39169786578924636)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(39200553943924654)
,p_name=>'DA_GUARDAR_CAMBIOS_EDICION'
,p_event_sequence=>110
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(39169786578924636)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(39201009388924654)
,p_event_id=>wwv_flow_imp.id(39200553943924654)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    BSCOMP.pr_modificar_miembro (:P188_SEQ_ID_EDITAR,',
'                                    :P188_COD_DOC,',
'                                    :P188_DESCRIPCION,',
'                                    :P188_MONTO,',
'                                    :P188_FECHA_INICIO,',
'                                    :P188_FECHA_VENCIMIENTO,',
'                                    :P188_FEC_ALTA,',
'                                    :P188_COD_USUARIO,',
'                                    :P188_AGREGAR_COMENTARIOS);',
'',
'EXCEPTION',
'',
'    WHEN OTHERS THEN',
'        apex_debug.ERROR(sqlerrm);',
'',
'END;'))
,p_attribute_02=>'P188_SEQ_ID_EDITAR,P188_COD_SECTOR,P188_DESCRIPCION,P188_COD_USUARIO'
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
 p_id=>wwv_flow_imp.id(39201535686924654)
,p_event_id=>wwv_flow_imp.id(39200553943924654)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(97981560316528881)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(39202038795924655)
,p_event_id=>wwv_flow_imp.id(39200553943924654)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(98415458423534479)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(39194959242924652)
,p_name=>'DA_CONFIRMAR_DATOS'
,p_event_sequence=>120
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(39173600618924639)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(39195952099924652)
,p_event_id=>wwv_flow_imp.id(39194959242924652)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>unistr('\00BFDesea confirmar los cambios?')
,p_attribute_02=>unistr('\00BFDesea confirmar los cambios?')
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(39195420280924652)
,p_event_id=>wwv_flow_imp.id(39194959242924652)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_01=>'CONFIRMAR'
,p_attribute_02=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(38190654308756535)
,p_name=>'DA_CAMBIAR_USUARIO'
,p_event_sequence=>130
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P188_COD_USUARIO'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(38190743295756536)
,p_event_id=>wwv_flow_imp.id(38190654308756535)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'SELECT  P.NOMBRE INTO :P188_DESC_USUARIO',
'from usuarios u, personas p',
'WHERE    U.cod_empresa = :P_cod_empresa',
'       and U.cod_usuario = :P188_COD_USUARIO',
'       AND P.COD_PERSONA=U.COD_PERSONA;',
'',
'',
'EXCEPTION',
'',
'    WHEN OTHERS THEN',
'        apex_debug.error(sqlerrm);',
'',
'END;'))
,p_attribute_02=>'P188_COD_USUARIO'
,p_attribute_03=>'P188_DESC_USUARIO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(39183692135924647)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_INIT'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'--PRE-FORM',
':P_COD_MODULO := ''VT'';',
' ',
'',
'',
'VTUSUSEC.pr_crear_collection(:P_COD_EMPRESA) ;',
'',
'',
'',
''))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(39184056985924648)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_CONFIRMAR_DATOS'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    VTUSUSEC.pr_confirmar_accion(:P_COD_EMPRESA,:P188_COD_USUARIO, :P188_COD_SECTOR);',
'',
'',
'    EXCEPTION',
'            WHEN OTHERS THEN',
'                APEX_DEBUG.ERROR(sqlerrm);',
'',
'',
'',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CONFIRMAR'
,p_process_when_type=>'REQUEST_EQUALS_CONDITION'
,p_process_success_message=>'Los datos se guardaron exitosamente.'
);
wwv_flow_imp.component_end;
end;
/
