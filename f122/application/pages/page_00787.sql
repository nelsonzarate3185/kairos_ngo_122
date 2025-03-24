prompt --application/pages/page_00787
begin
--   Manifest
--     PAGE: 00787
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
 p_id=>787
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'Comentarios/Adjuntos'
,p_alias=>'COMENTARIOS-ADJUNTOS'
,p_page_mode=>'MODAL'
,p_step_title=>'Comentarios/Adjuntos'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_page_component_map=>'16'
,p_last_updated_by=>'NZARATE'
,p_last_upd_yyyymmddhh24miss=>'20241017125523'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1022568465839379032)
,p_plug_name=>'Adjuntar Imagen'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(417328022826992960)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(1022568465839379032)
,p_button_name=>'Volver'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Volver'
,p_button_position=>'CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:730:&SESSION.::&DEBUG.:RP,::'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(417328420962992960)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(1022568465839379032)
,p_button_name=>'Adjuntar'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Adjuntar'
,p_button_position=>'CREATE'
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(417328870853992960)
,p_name=>'P787_SERIE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(1022568465839379032)
,p_use_cache_before_default=>'NO'
,p_source=>'SER_COMPROBANTE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(417329276286992961)
,p_name=>'P787_NRO_TICKET'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(1022568465839379032)
,p_use_cache_before_default=>'NO'
,p_source=>'NRO_COMPROBANTE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(417329685588992961)
,p_name=>'P787_COMENTARIO'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(1022568465839379032)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Comentario'
,p_source=>'COMENTARIO'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>500
,p_cHeight=>5
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(417330043129992961)
,p_name=>'P787_FILE'
,p_is_required=>true
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(1022568465839379032)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Archivo Adjunto'
,p_source=>'ARCHIVO_ADJUNTO'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_FILE'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'APEX_APPLICATION_TEMP_FILES'
,p_attribute_09=>'SESSION'
,p_attribute_10=>'N'
,p_attribute_12=>'NATIVE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(417330479850992961)
,p_name=>'P787_FILENAME'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(1022568465839379032)
,p_use_cache_before_default=>'NO'
,p_source=>'FILENAME'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(417330879469992961)
,p_name=>'P787_MIMETYPE'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(1022568465839379032)
,p_use_cache_before_default=>'NO'
,p_source=>'MIMETYPE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(417331235200992962)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'guarda_imagen'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'   l_blob blob;',
'  l_MIME_TYPE varchar2(300);',
'  l_FILENAME varchar2(300);',
'begin',
'   -------------aca crea al cliente',
' SELECT blob_content, MIME_TYPE, FILENAME',
'    INTO l_blob, l_MIME_TYPE, l_FILENAME',
'    FROM apex_application_temp_files',
'    WHERE name = :P787_FILE',
'',
'    and rownum=1;',
'    ',
'    /*',
'      apex_collection.create_collection(p_collection_name    => ''CAORDTRA_370_IMAGENES''',
'                                    ,p_truncate_if_exists       => ''YES''',
'                                      );*/',
'    ',
'     apex_collection.add_member(p_collection_name => ''PAGINA_59'',',
'                                p_c001            => :P787_COMENTARIO,',
'                                p_c002           => l_MIME_TYPE,',
'                                p_c003            => l_FILENAME,                                ',
'                                p_blob001         => l_blob ',
'                              );',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'Error el ARchivo no fue adjunto'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(417328420962992960)
,p_process_success_message=>'Adjuntado Exitosamente'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(417331672472992962)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'cierra'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(417328420962992960)
,p_process_success_message=>'Adjuntado Exitosamente'
);
wwv_flow_imp.component_end;
end;
/
