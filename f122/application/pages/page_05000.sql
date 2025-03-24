prompt --application/pages/page_05000
begin
--   Manifest
--     PAGE: 05000
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
 p_id=>5000
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'Alta de paginas en menu'
,p_alias=>'ALTA-DE-PAGINAS-EN-MENU'
,p_step_title=>'Alta de paginas en menu'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_last_updated_by=>'ANDRESDI'
,p_last_upd_yyyymmddhh24miss=>'20221121140923'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(7780087101592904)
,p_plug_name=>'principal'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(7780996040592913)
,p_plug_name=>'Pantallas actuales'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT vw.id,',
'       vw.stat, ',
'       vw.leve,',
'       vw.labe title,',
'       vw.orde,',
'       vw.page_id,',
'       VW.icon,',
'       vw.ID value',
'from VW$ASP$MODU0300 vw',
'WHERE vw.apli0100$id = :P_APLI0100_ID',
'  AND vw.dm$acti = 1',
'order by vw.path'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Pantallas actuales'
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
 p_id=>wwv_flow_imp.id(7781004001592914)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:5001:&SESSION.::&DEBUG.:5001:P5001_ID:#ID#'
,p_detail_link_text=>'<img src="#APEX_FILES#app_ui/img/icons/apex-edit-pencil.png" class="apex-edit-pencil" alt="">'
,p_owner=>'ANDRESDI'
,p_internal_uid=>7781004001592914
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(7781198618592915)
,p_db_column_name=>'STAT'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Stat'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(7781294989592916)
,p_db_column_name=>'LEVE'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Nivel'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(7781357801592917)
,p_db_column_name=>'TITLE'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Nombre'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(7781400318592918)
,p_db_column_name=>'ORDE'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Orden'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(7781516952592919)
,p_db_column_name=>'PAGE_ID'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Page Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(7781782622592921)
,p_db_column_name=>'ICON'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Icono'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(7781834561592922)
,p_db_column_name=>'VALUE'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'ID Modu0300'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(46966968272983604)
,p_db_column_name=>'ID'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(14654803318546426)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'146549'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'STAT:LEVE:TITLE:ORDE:PAGE_ID:ICON:VALUE'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(14631737441469869)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40134615190263663)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(40070279985263645)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_imp.id(40189153869263678)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(7780899685592912)
,p_button_sequence=>80
,p_button_plug_id=>wwv_flow_imp.id(7780087101592904)
,p_button_name=>'bt_agregar'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Agregar'
,p_button_position=>'BOTTOM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(7780159299592905)
,p_name=>'P5000_PAGE_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(7780087101592904)
,p_prompt=>'Numero de pagina'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186576483263678)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--large'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(7780287953592906)
,p_name=>'P5000_ID_APP'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(7780087101592904)
,p_prompt=>'ID de APP en APEX'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186576483263678)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--large'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(7780363633592907)
,p_name=>'P5000_ORDEN'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(7780087101592904)
,p_prompt=>'Orden'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186576483263678)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--large'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(7780438891592908)
,p_name=>'P5000_APLI0100_ID'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(7780087101592904)
,p_prompt=>'ID tabla ASP$APLI0100'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select nomb,',
'       id',
'from asp$apli0100'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- seleccione -'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186576483263678)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--large'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(7780503414592909)
,p_name=>'P5000_IMAGEN'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(7780087101592904)
,p_prompt=>'Icono'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT icon_name as d,',
'       icon_name as r',
'FROM APEX_220100.WWV_FLOW_STANDARD_ICONS'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- Seleccione -'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186576483263678)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--large'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(7780619501592910)
,p_name=>'P5000_NOMBRE'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(7780087101592904)
,p_prompt=>'Nombre'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186576483263678)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--large'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(7780708257592911)
,p_name=>'P5000_MODU0300_ID'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(7780087101592904)
,p_prompt=>'ID del menu padre'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
' SELECT CASE ',
'            WHEN',
'   		        M300_3.ID IS NOT NULL THEN  M300.id ||'' ''|| INITCAP(M300_3.nomb) || ''->'' || INITCAP(M300_2.nomb) || ''->'' || INITCAP(M300.nomb)',
'            WHEN',
'                M300_3.ID IS NULL AND M300_2.ID IS NOT NULL THEN M300.id ||'' ''|| INITCAP(M300_2.nomb) || ''->'' || INITCAP(M300.nomb)',
'            ELSE',
'                M300.id ||'' ''|| INITCAP(M300.nomb)',
'        END D,',
'        M300.id R',
'   FROM asp$modu0300 M300,',
'        asp$modu0300 M300_2,',
'        asp$modu0300 M300_3',
'  WHERE M300.modu0300$id = M300_2.id (+)',
'    AND M300_2.modu0300$id = M300_3.id (+)',
'    AND M300.apli0100$id = :P5000_APLI0100_ID',
'    AND NVL(M300.dm$acti, 2) = 1',
'    START WITH M300.modu0300$id IS NULL',
'    CONNECT BY PRIOR M300.id = M300.modu0300$id',
'    ORDER SIBLINGS BY M300.orde'))
,p_lov_display_null=>'YES'
,p_lov_cascade_parent_items=>'P5000_APLI0100_ID'
,p_ajax_items_to_submit=>'P5000_APLI0100_ID'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186576483263678)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--large'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(7782050564592924)
,p_validation_name=>'PAGE_ID_NONULO'
,p_validation_sequence=>10
,p_validation=>'P5000_PAGE_ID'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Ingrese un valor'
,p_associated_item=>wwv_flow_imp.id(7780159299592905)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(7782164340592925)
,p_validation_name=>'order_nonulo'
,p_validation_sequence=>20
,p_validation=>'P5000_ORDEN'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Ingrese un valor'
,p_associated_item=>wwv_flow_imp.id(7780363633592907)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(7782240382592926)
,p_validation_name=>'imagen_nonula'
,p_validation_sequence=>30
,p_validation=>'P5000_IMAGEN'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Ingrese un valor'
,p_associated_item=>wwv_flow_imp.id(7780503414592909)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(7782408973592928)
,p_validation_name=>'id_app_nonula'
,p_validation_sequence=>40
,p_validation=>'P5000_ID_APP'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Ingrese un valor'
,p_associated_item=>wwv_flow_imp.id(7780287953592906)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(7782582171592929)
,p_validation_name=>'apli0100_nonula'
,p_validation_sequence=>50
,p_validation=>'P5000_APLI0100_ID'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Ingrese un valor'
,p_associated_item=>wwv_flow_imp.id(7780438891592908)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(7782614755592930)
,p_validation_name=>'nombre_nonulo'
,p_validation_sequence=>60
,p_validation=>'P5000_NOMBRE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Ingrese un valor'
,p_associated_item=>wwv_flow_imp.id(7780619501592910)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(46968676667983621)
,p_name=>'REFRESCAR'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(7780996040592913)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(46968781810983622)
,p_event_id=>wwv_flow_imp.id(46968676667983621)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(7780996040592913)
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(7781999425592923)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'GUARDAR{'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'utils.pr_agregar_menu(p_page_id => :P5000_PAGE_ID,',
'                      p_orden => :P5000_ORDEN,',
'                      p_imagen => :P5000_IMAGEN,',
'                      p_application_id => :P5000_ID_APP,',
'                      p_apli0100_id => :P5000_APLI0100_ID,',
'                      p_nombre => :P5000_NOMBRE,',
'                      p_modu0300_id => :P5000_MODU0300_ID);',
'EXCEPTION',
'    WHEN OTHERS THEN',
'    APEX_DEBUG.ERROR(SQLERRM);',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp.component_end;
end;
/
