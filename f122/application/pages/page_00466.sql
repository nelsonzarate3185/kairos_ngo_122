prompt --application/pages/page_00466
begin
--   Manifest
--     PAGE: 00466
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
 p_id=>466
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'CARGA IMAGENES'
,p_alias=>'CARGA-IMAGENES'
,p_page_mode=>'MODAL'
,p_step_title=>'CARGA IMAGENES'
,p_autocomplete_on_off=>'OFF'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'td[headers="Imagen"] img  { ',
'   display: block; ',
'   margin-left: auto;',
'   margin-right: auto;',
'   width: 50px; ',
'   height:50px;    ',
'   border: 1px solid #999; ',
'   padding: 4px; ',
'   background: #f6f6f6; ',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'N'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_last_updated_by=>'VGAMARRA'
,p_last_upd_yyyymmddhh24miss=>'20240705095735'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(135662161648519807)
,p_plug_name=>'DATOS IMAGENES'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_plug_display_when_condition=>'P466_ID_IMAGEN'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(135663778036519823)
,p_plug_name=>'Images'
,p_parent_plug_id=>wwv_flow_imp.id(135662161648519807)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ID_IMG,',
'       NRO_IMG,',
'       ID_DIRECT,',
'       DIRECTORIO,',
'       ARCHIVO,',
'       DIR_NAME,',
'       SYS.DBMS_LOB.GETLENGTH(IMAGEN) IMAGEN',
'  from V_IMAGEN_APEX'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Images'
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
 p_id=>wwv_flow_imp.id(135663865635519824)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'ETRINIDAD'
,p_internal_uid=>135663865635519824
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(135663955007519825)
,p_db_column_name=>'ID_IMG'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Id Img'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(135664035625519826)
,p_db_column_name=>'NRO_IMG'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Nro Img'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(135664177524519827)
,p_db_column_name=>'ID_DIRECT'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Id Direct'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(135664255950519828)
,p_db_column_name=>'DIRECTORIO'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Directorio'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(135664364338519829)
,p_db_column_name=>'ARCHIVO'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Archivo'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(137163440015888205)
,p_db_column_name=>'IMAGEN'
,p_display_order=>60
,p_column_identifier=>'L'
,p_column_label=>'Imagen'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'IMAGE:V_IMAGEN_APEX:IMAGEN:ID_IMG:NRO_IMG:::::::'
,p_static_id=>'Imagen'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(137164194488888212)
,p_db_column_name=>'DIR_NAME'
,p_display_order=>70
,p_column_identifier=>'M'
,p_column_label=>'Dir Name'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(136488237077950872)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1364883'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'NRO_IMG:ARCHIVO:IMAGEN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(135663146546519817)
,p_plug_name=>'BOTONES'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40097820288263654)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(137165229800888223)
,p_plug_name=>unistr('No se encontr\00F3 el ID para la imagen')
,p_region_template_options=>'#DEFAULT#:t-Alert--colorBG:t-Alert--wizard:t-Alert--defaultIcons:t-Alert--info'
,p_plug_template=>wwv_flow_imp.id(40093179053263652)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'ITEM_IS_NULL'
,p_plug_display_when_condition=>'P466_ID_IMAGEN'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(135665099674519836)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(135662161648519807)
,p_button_name=>'CARGAR'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--simple:t-Button--iconRight:t-Button--stretch'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Cargar'
,p_icon_css_classes=>'fa-arrow-up'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(135663357828519819)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(135663146546519817)
,p_button_name=>'CANCELAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--simple:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Cancelar'
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(135663231430519818)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(135663146546519817)
,p_button_name=>'GUARDAR'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--simple:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Guardar'
,p_button_position=>'NEXT'
,p_button_execute_validations=>'N'
,p_button_condition=>'P466_ID_IMAGEN'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(135662235090519808)
,p_name=>'P466_ID_IMAGEN'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(135662161648519807)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(135662323178519809)
,p_name=>'P466_ID_DIRECTORIO'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(135662161648519807)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(135662467281519810)
,p_name=>'P466_DIRECTORIO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(135662161648519807)
,p_prompt=>'Directorio'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_imp.id(40186576483263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(135662713303519813)
,p_name=>'P466_COD_MODULO'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(135662161648519807)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(135662851215519814)
,p_name=>'P466_OPERACION'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(135662161648519807)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(135662923703519815)
,p_name=>'P466_ARCHIVOS'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(135662161648519807)
,p_prompt=>'Archivo(s)'
,p_display_as=>'NATIVE_FILE'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'APEX_APPLICATION_TEMP_FILES'
,p_attribute_09=>'REQUEST'
,p_attribute_10=>'Y'
,p_attribute_12=>'INLINE'
,p_attribute_15=>'5000'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(135665603879519842)
,p_name=>'P466_BANDERA'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(135662161648519807)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(137164093494888211)
,p_name=>'P466_DIR_NAME'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(135662161648519807)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(339226797773927945)
,p_name=>'P466_COD_ARTICULO'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(135662161648519807)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(135662540217519811)
,p_name=>'Cargar_Pagina '
,p_event_sequence=>10
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(135662623911519812)
,p_event_id=>wwv_flow_imp.id(135662540217519811)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF :P466_COD_MODULO IS NOT NULL  AND  :P466_OPERACION IS NOT NULL THEN ',
'   SELECT D.DIRECTORY_PATH,',
'        I.ID_REGISTRO,',
'        D.DIRECTORY_NAME   ',
'      INTO :P466_DIRECTORIO,',
'           :P466_ID_DIRECTORIO,',
'           :P466_DIR_NAME',
'      FROM ALL_DIRECTORIES D,',
'           DIRECTORIO_IMAGENES I ',
'     WHERE I.DIRECTORIO = D.DIRECTORY_NAME',
'       AND I.COD_MODULO = :P466_COD_MODULO',
'       AND I.OPERACION = :P466_OPERACION;',
'END IF;'))
,p_attribute_02=>'P466_COD_MODULO,P466_OPERACION'
,p_attribute_03=>'P466_DIRECTORIO,P466_ID_DIRECTORIO,P466_DIR_NAME'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(137163508195888206)
,p_name=>'Clic_Cancelar'
,p_event_sequence=>30
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(135663357828519819)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(137163687541888207)
,p_event_id=>wwv_flow_imp.id(137163508195888206)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>':P466_BANDERA := ''S'';'
,p_attribute_03=>'P466_BANDERA'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(137163767891888208)
,p_event_id=>wwv_flow_imp.id(137163508195888206)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(135664943912519835)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'LIMPIAR_COL'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
' APEX_COLLECTION.CREATE_OR_TRUNCATE_COLLECTION(P_COLLECTION_NAME => ''V_IMAGENES'');',
' :P466_BANDERA := ''N'';'))
,p_process_clob_language=>'PLSQL'
,p_process_when=>'P466_BANDERA'
,p_process_when_type=>'VAL_OF_ITEM_IN_COND_NOT_EQ_COND2'
,p_process_when2=>'N'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(135664482528519830)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Cargar_imagenes'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
'IMAGENES_APEX.PROCBD_CARGA_IMG_COL(:P466_ID_IMAGEN,',
'                                   :P466_ID_DIRECTORIO,',
'                                   :P466_DIRECTORIO,',
'                                   :P466_DIR_NAME,',
'                                   :P466_ARCHIVOS);',
':P466_BANDERA := ''N'';',
'             '))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CARGAR'
,p_process_when_type=>'REQUEST_IN_CONDITION'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(137163855560888209)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Guardar_Imagenes'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'V_IMAGE APEX_APPLICATION_TEMP_FILES.BLOB_CONTENT%TYPE;',
'VNOMARCHIVO VARCHAR2(200);',
'--V_FILENAME APEX_APPLICATION_TEMP_FILES.FILENAME%TYPE; ',
'BEGIN',
'       FOR C IN (select ID_IMG,NRO_IMG,ID_DIRECT,DIRECTORIO,ARCHIVO,IMAGEN,DIR_NAME, MIME_TYPE, ',
'                        :P466_OPERACION||''-''||:P466_ID_IMAGEN||''_''||TO_CHAR(SYSDATE,''DDMMYYYYhh24miss'')||''_''||ARCHIVO RENOMARCHIVO, :P466_COD_ARTICULO COD_ARTICULO from V_IMAGEN_APEX) LOOP ',
'                   ',
'                   V_IMAGE := C.IMAGEN;',
'',
'                IF :P466_OPERACION=''OBRA'' THEN ',
'',
'                    INV.SaveFile(V_IMAGE, C.DIR_NAME,C.RENOMARCHIVO);----CAMBIAR ACA NOMBRE DEL ARCHIVO  ',
'',
'                        insert into inv.sm_obra_archivos',
'                             (cod_empresa, tip_comprobante, ser_comprobante, nro_comprobante, id_file, file_name, dir_name, directorio, mymetype, text_name)',
'                           values',
'                             (:P_COD_EMPRESA, ''OBR'', ''A'', :P466_ID_IMAGEN, C.ID_IMG, C.RENOMARCHIVO, C.DIR_NAME, c.directorio, C.MIME_TYPE, c.ARCHIVO);',
'',
'',
'                ELSE   ',
'                  ----- CATALOGO DE REPUESTOS ------------------',
'                    INV.SaveFile(V_IMAGE, C.DIR_NAME,C.ARCHIVO);----CAMBIAR ACA NOMBRE DEL ARCHIVO                    ',
'                    INSERT INTO IMAGEN_APEX I (I.ID,',
'                                               I.NRO_IMG,',
'                                               I.ID_DIRECTORIO,',
'                                               I.IMG_NOMBRE,',
'                                               I.DIRECTORIO,',
'                                               I.COD_ARTICULO)',
'                                               VALUES',
'                                               (C.ID_IMG,',
'                                                C.NRO_IMG,',
'                                                C.ID_DIRECT,',
'                                                C.ARCHIVO,',
'                                                C.DIRECTORIO,',
'                                                C.COD_ARTICULO);',
'                END IF;',
'        END LOOP; ',
'      :P466_BANDERA := ''S'';',
'',
'       apex_application.g_print_success_message := ''<span style="color:white"> Archivo almacenado exitosamente..</span>'';',
'EXCEPTION',
'    WHEN OTHERS THEN',
'             raise_application_error(-20000, sqlerrm );',
'END;',
''))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'GUARDAR'
,p_process_when_type=>'REQUEST_IN_CONDITION'
,p_process_success_message=>unistr('Archivo guardado con \00C9xito!')
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(137165355948888224)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Cerrar Recuadro de dialogo'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'GUARDAR'
,p_process_when_type=>'REQUEST_IN_CONDITION'
,p_process_success_message=>unistr('Archivo guardado con \00C9xito!')
);
wwv_flow_imp.component_end;
end;
/
