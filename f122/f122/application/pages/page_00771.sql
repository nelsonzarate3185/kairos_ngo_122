prompt --application/pages/page_00771
begin
--   Manifest
--     PAGE: 00771
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
 p_id=>771
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>unistr('Definici\00F3n de Cuerpo - STCUERPO')
,p_alias=>unistr('DEFINICI\00D3N-DE-CUERPO-STCUERPO')
,p_step_title=>unistr('Definici\00F3n de Cuerpo - STCUERPO')
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_last_updated_by=>'AIBANEZ'
,p_last_upd_yyyymmddhh24miss=>'20240822090316'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(377901935564647415)
,p_plug_name=>'Agregar'
,p_region_template_options=>'#DEFAULT#:js-dialog-size600x400'
,p_plug_template=>wwv_flow_imp.id(40117728043263659)
,p_plug_display_sequence=>960
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(377904570932647441)
,p_plug_name=>unistr('Definici\00F3n de Cuerpo')
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>950
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(377900521978647401)
,p_plug_name=>'Reporte'
,p_parent_plug_id=>wwv_flow_imp.id(377904570932647441)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT COD_EMPRESA,',
'	   COD_ESTANTE,',
'       (SELECT ES.desc_estante',
'        from st_estantes es',
'        where ES.cod_empresa = :P_COD_EMPRESA',
'        and ES.cod_estante = C.cod_estante) DESC_ESTANTE,',
'       COD_CUERPO,	',
'       DESC_CUERPO,	',
'       FECHA_ALTA,	',
'       ALTA_POR,',
'       NULL EDITAR,',
'       NULL ELIMINAR,',
'       ROWID',
'FROM ST_CUERPO C',
'WHERE C.COD_EMPRESA = :P_COD_EMPRESA',
'ORDER BY cod_estante asc, cod_cuerpo asc'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Reporte'
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
 p_id=>wwv_flow_imp.id(377900613016647402)
,p_max_row_count=>'1000000'
,p_no_data_found_message=>'No se han encontrado registros.'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_finder_drop_down=>'N'
,p_show_actions_menu=>'N'
,p_report_list_mode=>'NONE'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_enable_mail_download=>'Y'
,p_owner=>'AIBANEZ'
,p_internal_uid=>377900613016647402
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(377900774143647403)
,p_db_column_name=>'COD_EMPRESA'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Cod Empresa'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(377900807797647404)
,p_db_column_name=>'COD_ESTANTE'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Estante'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(377900984771647405)
,p_db_column_name=>'COD_CUERPO'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Cuerpo'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(377901010509647406)
,p_db_column_name=>'DESC_CUERPO'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>unistr('Descripci\00F3n del Cuerpo')
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(377901157246647407)
,p_db_column_name=>'FECHA_ALTA'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Fecha Alta'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(377901263014647408)
,p_db_column_name=>'ALTA_POR'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Alta Por'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(377901307807647409)
,p_db_column_name=>'EDITAR'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'&nbsp'
,p_column_link=>'javascript:$s(''P771_EDITAR'',''#ROWID#'');'
,p_column_linktext=>'<span class="fa fa-edit" aria-hidden="true"></span>'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(377901418733647410)
,p_db_column_name=>'ELIMINAR'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'&nbsp'
,p_column_link=>'javascript:$s(''P771_ELIMINAR'',''#ROWID#'');'
,p_column_linktext=>'<span class="fa fa-trash" aria-hidden="true"></span>'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(377901549883647411)
,p_db_column_name=>'ROWID'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Rowid'
,p_column_type=>'OTHER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(377901659071647412)
,p_db_column_name=>'DESC_ESTANTE'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>unistr('Descripci\00F3n del Estante')
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(377925211661862569)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'3779253'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>10
,p_report_columns=>'EDITAR:COD_ESTANTE:DESC_ESTANTE:COD_CUERPO:DESC_CUERPO:ELIMINAR:'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(377940144503941307)
,p_plug_name=>'Editar'
,p_region_template_options=>'#DEFAULT#:js-dialog-size600x400'
,p_plug_template=>wwv_flow_imp.id(40117728043263659)
,p_plug_display_sequence=>970
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(377902459626647420)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(377901935564647415)
,p_button_name=>'BT_CANCELAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_image_alt=>'Cancelar'
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(377940252850941308)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(377940144503941307)
,p_button_name=>'BT_CANCELAR_1'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_image_alt=>'Cancelar'
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(377902590238647421)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(377901935564647415)
,p_button_name=>'BT_CREAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Agregar'
,p_button_position=>'CREATE'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-plus-square-o'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(377940520139941311)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(377904570932647441)
,p_button_name=>'BT_AGREGAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>' Agregar'
,p_button_position=>'NEXT'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-plus-square-o'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(377902393641647419)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(377940144503941307)
,p_button_name=>'BT_GUARDAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Guardar'
,p_button_position=>'NEXT'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-save'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(377901792848647413)
,p_name=>'P771_COD_MODULO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(377900521978647401)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(377902041757647416)
,p_name=>'P771_COD_ESTANTE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(377901935564647415)
,p_prompt=>'Cod Estante'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select desc_estante ||'' - ''|| cod_estante   D, ',
'        cod_estante R',
'from st_estantes ',
'where cod_empresa=:P_COD_EMPRESA;'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'-- Seleccionar --'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186937130263678)
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
 p_id=>wwv_flow_imp.id(377902194131647417)
,p_name=>'P771_COD_CUERPO'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(377901935564647415)
,p_prompt=>'Cuerpo'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>100
,p_field_template=>wwv_flow_imp.id(40186937130263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(377902241115647418)
,p_name=>'P771_DESC_CUERPO'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(377901935564647415)
,p_prompt=>unistr('Descripci\00F3n del Cuerpo')
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>100
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(377902814927647424)
,p_name=>'P771_EDITAR'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(377900521978647401)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(377902975563647425)
,p_name=>'P771_ELIMINAR'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(377900521978647401)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(377903928837647435)
,p_name=>'P771_DESC_ESTANTE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(377940144503941307)
,p_prompt=>'Estante'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(377904979029647445)
,p_name=>'P771_ERR'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(377900521978647401)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(377939951815941305)
,p_name=>'P771_USUARIO'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(377940144503941307)
,p_prompt=>'Alta Por'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(377940027444941306)
,p_name=>'P771_FECHA'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(377940144503941307)
,p_prompt=>'Fecha de Alta'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(377940333412941309)
,p_name=>'P771_E_COD_CUERPO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(377940144503941307)
,p_prompt=>'Cuerpo'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_colspan=>4
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(377940476247941310)
,p_name=>'P771_E_DESC_CUERPO'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(377940144503941307)
,p_prompt=>'Descripcion'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>100
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(377902650523647422)
,p_name=>'DA_AGREGAR'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(377902590238647421)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(377902781997647423)
,p_event_id=>wwv_flow_imp.id(377902650523647422)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE ',
'VUSERNAME VARCHAR2(100);',
'vexist number;',
'BEGIN',
'',
'        SELECT USRN',
'        INTO VUSERNAME',
'        FROM ASP$USUA0100',
'        WHERE ID = :P_USUA0100_ID;',
'        ',
' --   APEX_DEBUG.ERROR(''TEST ALTA'');',
'    IF :P771_COD_CUERPO IS NULL THEN',
'',
'       :P771_ERR := ''El cuerpo es requerido.'';',
'    ELSIF :P771_COD_ESTANTE IS NULL THEN',
unistr('        :P771_ERR := ''Seleccione un c\00F3digo de estante.'';'),
'    ELSIF :P771_COD_ESTANTE IS NULL AND :P771_COD_CUERPO IS NULL THEN',
unistr('        :P771_ERR :=''El c\00F3digo de estante y cuerpo son requeridos'';'),
'    ELSE',
'',
'        BEGIN',
'            SELECT 1',
'            INTO VEXIST',
'            FROM ST_CUERPO',
'            WHERE COD_ESTANTE = :P771_COD_ESTANTE',
'            AND COD_CUERPO = :P771_COD_CUERPO ',
'            AND COD_EMPRESA = :P_COD_EMPRESA;',
'',
'        EXCEPTION   ',
'            WHEN OTHERS THEN',
'',
'        INSERT INTO ST_CUERPO(COD_EMPRESA,	',
'                              COD_ESTANTE,	',
'                              COD_CUERPO,	',
'                              DESC_CUERPO,	',
'                              FECHA_ALTA,	',
'                              ALTA_POR) VALUES (:P_COD_EMPRESA,',
'                                                :P771_COD_ESTANTE,',
'                                                :P771_COD_CUERPO,',
'                                                :P771_DESC_CUERPO,',
'                                                SYSDATE,',
'                                                VUSERNAME); -- Se guarda el nombre del user, no el codigo.',
'         :P771_ERR := null;',
'        END;',
'    END IF;',
'',
'    IF VEXIST = 1 THEN',
'',
'        :P771_ERR := ''Ya existe un registro con los mismos valores'';',
'    END IF;',
'      EXCEPTION',
'        WHEN OTHERS THEN',
'                :P771_ERR := ''Error al insertar registro: ''||sqlerrm;',
'',
'END;'))
,p_attribute_02=>'P771_COD_MODULO,P771_COD_ESTANTE,P771_COD_CUERPO,P771_DESC_CUERPO'
,p_attribute_03=>'P771_ERR'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(377904840183647444)
,p_event_id=>wwv_flow_imp.id(377902650523647422)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(377900521978647401)
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P771_ERR'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(377903071426647426)
,p_event_id=>wwv_flow_imp.id(377902650523647422)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(377901935564647415)
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P771_ERR'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(379261574461580101)
,p_event_id=>wwv_flow_imp.id(377902650523647422)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'Registro insertado correctamente.'
,p_attribute_03=>'information'
,p_attribute_04=>'fa-lg fa-info-circle'
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P771_ERR'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(377903353301647429)
,p_name=>'DA_GUARDAR'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(377902393641647419)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(377905214984647448)
,p_event_id=>wwv_flow_imp.id(377903353301647429)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    UPDATE ST_CUERPO',
'    SET DESC_CUERPO = :P771_E_DESC_CUERPO',
'    WHERE ROWID = :P771_EDITAR;',
'',
'    :P771_ERR := null;',
'    EXCEPTION',
'        WHEN OTHERS THEN',
'                :P771_ERR := ''Error durante el update: ''||sqlerrm;',
'END;'))
,p_attribute_02=>'P771_E_DESC_CUERPO,P771_EDITAR'
,p_attribute_03=>'P771_ERR'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(377903584377647431)
,p_event_id=>wwv_flow_imp.id(377903353301647429)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(377940144503941307)
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P771_ERR'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(377905365572647449)
,p_event_id=>wwv_flow_imp.id(377903353301647429)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(377900521978647401)
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P771_ERR'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(379261677352580102)
,p_event_id=>wwv_flow_imp.id(377903353301647429)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'Registro modificado.'
,p_attribute_03=>'information'
,p_attribute_04=>'fa-lg fa-info-circle'
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P771_ERR'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(377903658058647432)
,p_name=>'DA_CANCELAR'
,p_event_sequence=>30
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(377902459626647420)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(377903883552647434)
,p_event_id=>wwv_flow_imp.id(377903658058647432)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(377901935564647415)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(377904220589647438)
,p_name=>'DA_ELIMINAR'
,p_event_sequence=>50
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P771_ELIMINAR'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(377904316488647439)
,p_event_id=>wwv_flow_imp.id(377904220589647438)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>unistr('\00BFDesea eliminar el registro?')
,p_attribute_03=>'information'
,p_attribute_04=>'fa-lg fa-trash-o'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(377904494848647440)
,p_event_id=>wwv_flow_imp.id(377904220589647438)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    DELETE ST_CUERPO',
'    WHERE ROWID = :P771_ELIMINAR;',
'',
'    EXCEPTION',
'        WHEN OTHERS THEN',
'                APEX_DEBUG.ERROR(''ERROR AL ELIMINAR: ''||SQLERRM);',
'',
'END;'))
,p_attribute_02=>'P771_ELIMINAR'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(377904660354647442)
,p_event_id=>wwv_flow_imp.id(377904220589647438)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'Registro eliminado.'
,p_attribute_03=>'information'
,p_attribute_04=>'fa-lg fa-info-circle'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(377904737758647443)
,p_event_id=>wwv_flow_imp.id(377904220589647438)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(377900521978647401)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(377905042703647446)
,p_name=>'DA_ERR'
,p_event_sequence=>60
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P771_ERR'
,p_condition_element=>'P771_ERR'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(377905161287647447)
,p_event_id=>wwv_flow_imp.id(377905042703647446)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'&P771_ERR.'
,p_attribute_03=>'information'
,p_attribute_04=>'fa-lg fa-warning'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(377905481095647450)
,p_name=>'DA_EDIT'
,p_event_sequence=>70
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P771_EDITAR'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(377939569049941301)
,p_event_id=>wwv_flow_imp.id(377905481095647450)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN ',
'    SELECT 	',
'            COD_CUERPO,',
'            DESC_CUERPO,',
'            FECHA_ALTA,',
'            ALTA_POR',
'     INTO :P771_E_COD_CUERPO,',
'          :P771_E_DESC_CUERPO,',
'          :P771_FECHA,',
'          :P771_USUARIO',
'    FROM ST_CUERPO C',
'    WHERE ROWID = :P771_EDITAR;',
'        :P771_ERR := NULL;',
'',
'    BEGIN',
'            select C.COD_ESTANTE ||'' - '' || ST.desc_estante ',
'            into :P771_DESC_ESTANTE',
'            from st_estantes  ST, st_cuerpo C',
'            where ST.cod_empresa = :P_COD_EMPRESA',
'            and ST.cod_estante = C.COD_ESTANTE',
'            and  C.rowid = :P771_EDITAR;',
'        exception',
'            when others then',
'                :P771_DESC_ESTANTE := null;',
'    END;',
'',
'    EXCEPTION',
'        WHEN NO_DATA_FOUND THEN',
'              :P771_DESC_CUERPO :=NULL;',
'              :P771_DESC_ESTANTE :=NULL;',
'        WHEN OTHERS THEN',
'                :P771_ERR := ''Error: ''||sqlerrm;',
'END;'))
,p_attribute_02=>'P771_EDITAR'
,p_attribute_03=>'P771_ERR,P771_E_COD_CUERPO,P771_E_DESC_CUERPO,P771_USUARIO,P771_FECHA,P771_DESC_ESTANTE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(377939677036941302)
,p_event_id=>wwv_flow_imp.id(377905481095647450)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(377940144503941307)
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P771_ERR'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(377940697231941312)
,p_name=>'DA_CREAR'
,p_event_sequence=>80
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(377940520139941311)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(377941246198941318)
,p_event_id=>wwv_flow_imp.id(377940697231941312)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P771_DESC_ESTANTE,P771_COD_ESTANTE,P771_COD_CUERPO,P771_DESC_CUERPO'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(377940766496941313)
,p_event_id=>wwv_flow_imp.id(377940697231941312)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(377901935564647415)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(377940897084941314)
,p_name=>'DA_CANCELAR_2'
,p_event_sequence=>90
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(377940252850941308)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(377941121601941317)
,p_event_id=>wwv_flow_imp.id(377940897084941314)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P771_DESC_ESTANTE,P771_E_COD_CUERPO,P771_E_DESC_CUERPO,P771_FECHA,P771_USUARIO'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(377941044741941316)
,p_event_id=>wwv_flow_imp.id(377940897084941314)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(377940144503941307)
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P771_ERR'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(377901895480647414)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_INIT'
,p_process_sql_clob=>':P_COD_MODULO := ''ST'';'
,p_process_clob_language=>'PLSQL'
);
wwv_flow_imp.component_end;
end;
/
