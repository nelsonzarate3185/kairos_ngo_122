prompt --application/pages/page_00742
begin
--   Manifest
--     PAGE: 00742
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
 p_id=>742
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'Update_imagen_spee'
,p_alias=>'UPDATE-IMAGEN-SPEE'
,p_page_mode=>'MODAL'
,p_step_title=>'Agregar Archivo/s'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'16'
,p_last_updated_by=>'VGAMARRA'
,p_last_upd_yyyymmddhh24miss=>'20240327150107'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(286449058615853112)
,p_plug_name=>'Nuevo'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>940
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(286450187831853123)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(286449058615853112)
,p_button_name=>'BT_CERRAR_IMAGEN'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Cerrar'
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(286449731134853119)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(286449058615853112)
,p_button_name=>'BT_ACEPTAR_IMAGEN'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Aceptar'
,p_button_position=>'CREATE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(286449143011853113)
,p_name=>'P742_COD_EMPRESA'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(286449058615853112)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(286449235031853114)
,p_name=>'P742_NRO_INTERNO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(286449058615853112)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(286449337465853115)
,p_name=>'P742_COD_IMAGEN'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(286449058615853112)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(286449477287853116)
,p_name=>'P742_NOMBRE_IMAGEN'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(286449058615853112)
,p_prompt=>'Nombre Imagen'
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
 p_id=>wwv_flow_imp.id(286449531524853117)
,p_name=>'P742_ADJUNTO'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(286449058615853112)
,p_prompt=>'Adjunto'
,p_display_as=>'NATIVE_FILE'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'APEX_APPLICATION_TEMP_FILES'
,p_attribute_09=>'SESSION'
,p_attribute_10=>'N'
,p_attribute_12=>'DROPZONE_BLOCK'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(286449626823853118)
,p_name=>'P742_AUX_MSG'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(286449058615853112)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(286450498851853126)
,p_validation_name=>'VL_IMAGEN'
,p_validation_sequence=>10
,p_validation=>'P742_NOMBRE_IMAGEN'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Debe ingresar una descripcion.'
,p_validation_condition=>'GUARDAR'
,p_validation_condition_type=>'REQUEST_EQUALS_CONDITION'
,p_associated_item=>wwv_flow_imp.id(286449477287853116)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(286449874656853120)
,p_name=>'DA_GUARDAR_IMAGEN'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(286449731134853119)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(286449978714853121)
,p_event_id=>wwv_flow_imp.id(286449874656853120)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>unistr('\00BFDesea guardar la imagen?')
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(286450026225853122)
,p_event_id=>wwv_flow_imp.id(286449874656853120)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_02=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(286450277092853124)
,p_name=>'DA_CERRAR_IMAGEN'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(286450187831853123)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(286450333177853125)
,p_event_id=>wwv_flow_imp.id(286450277092853124)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CLOSE'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(286450503815853127)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_GUARDAR_IMAGEN'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    UPLOAD_BLOB BLOB;  ',
'    V_FILENAME  VARCHAR2(350);',
'    V_MIME_TYPE VARCHAR2(350);',
'    VDIR        VARCHAR2(100);',
'    V_SEQ_NOVE  NUMBER;',
'    V_SEQ_FILE  NUMBER;',
'BEGIN',
'',
'    :P742_AUX_MSG := NULL;',
'',
'    ',
'    IF :P742_ADJUNTO IS NOT NULL THEN',
'',
'        ---- GUARDARMOS LOS ARCHIVOS ADJUNTOS ----',
'        DECLARE',
'            tab apex_t_varchar2;',
'        BEGIN',
'            tab := apex_string.split (:P742_ADJUNTO, '':'');',
'            FOR i IN 1..tab.count LOOP',
'                BEGIN',
'                 -- UPDATE SOBRE TABLA PARA GUARDAR EL ARCHIVO',
'                 SELECT BLOB_CONTENT,',
'                        FILENAME, ',
'                        MIME_TYPE  ',
'                   INTO UPLOAD_BLOB,',
'                        V_FILENAME,',
'                        V_MIME_TYPE       ',
'                   FROM APEX_APPLICATION_TEMP_FILES   ',
'                 WHERE NAME = tab(i);--:P37_ARCHIVO_NOVEDAD;',
'',
'                 APEX_DEBUG.ERROR (SQLERRM);',
'',
'                 --APEX_DEBUG.ERROR (''UPLOAD_BLOB '' || UPLOAD_BLOB);',
'                 APEX_DEBUG.ERROR (''V_FILENAME '' || V_FILENAME);',
'                 APEX_DEBUG.ERROR (''V_MIME_TYPE '' || V_MIME_TYPE);',
'',
'                 V_SEQ_FILE := SEQ_IMAGEN_SPEE.NEXTVAL;',
'',
'                 INSERT INTO SPEE_IMAGENES(COD_EMPRESA,',
'                                                    NRO_INTERNO, ',
'                                                    COD_IMAGEN, ',
'                                                    FEC_ALTA,',
'                                                    NOMBRE_IMAGEN_CLOB,',
'                                                    BFILE_IMAGEN,',
'                                                    NOMBRE_IMAGEN,',
'                                                    MIME_TYPE,',
'                                                    NOMBRE_ARCHIVO',
'                                                    )',
'',
'                                            VALUES (:P_COD_EMPRESA,',
'                                                    :P742_NRO_INTERNO,',
'                                                    V_SEQ_FILE, ',
'                                                    SYSDATE,',
'                                                    UPLOAD_BLOB,',
'                                                    NULL,',
'                                                    :P742_NOMBRE_IMAGEN, ',
'                                                    V_MIME_TYPE,--empty_blob()',
'                                                    V_FILENAME',
'                                                    );',
'',
'                APEX_DEBUG.ERROR (SQLERRM);',
'    /*',
'             UPDATE ST_NOVEDADES_OT_FILES',
'                SET IMAGEN           = UPLOAD_BLOB,',
'                    NOMBRE_ARCHIVO   = V_FILENAME,',
'                    MIME_TYPE        = V_MIME_TYPE,',
'                    URL_ARCHIVO      = NULL',
'              WHERE TIP_COMPROBANTE_REF = :P37_SER_COMPROBANTE_REF_NOV',
'                AND SER_COMPROBANTE_REF = ''ORT''',
'                AND NRO_COMPROBANTE_REF = :P37_NRO_COMPROBANTE_REF_NOV',
'                AND COD_DOCUMENTO       = V_SEQ_FILE',
'                AND COD_NOVEDAD         = V_SEQ_NOVE  ',
'                AND COD_EMPRESA         = :P_COD_EMPRESA; */',
'',
'                APEX_DEBUG.ERROR (SQLERRM);',
'',
'                APEX_DEBUG.ERROR ('':P742_NRO_INTERNO) '' || :P742_NRO_INTERNO);',
'                APEX_DEBUG.ERROR (''V_SEQ_FILE '' || V_SEQ_FILE);',
'',
'            APEX_DEBUG.ERROR (''ENTRA WRITE_BLOB_TO_FILE'');',
'',
'            --- GUARDAR URL DEL ARCHIVO EN LA TABLA ---    ',
'            SPEE.WRITE_BLOB_TO_FILE(P_COD_EMPRESA      => :P_COD_EMPRESA,',
'                                    P_NRO_INTERNO      => :P742_NRO_INTERNO,',
'                                    P_COD_IMAGEN       =>  V_SEQ_FILE,',
'                                    P_DIR              => ''SPEE_IMAGENES''--''UPLOAD_FILES_OT_NOVEDADES''',
'                                    );',
'',
'            APEX_DEBUG.ERROR (''SALE WRITE_BLOB_TO_FILE'');',
'        EXCEPTION',
'            WHEN OTHERS THEN',
'                APEX_DEBUG.ERROR (''Error en PR_GUARDAR_Imagen - UPDATE FILE.'' || SQLERRM);',
'                :P742_AUX_MSG := SQLERRM;',
'        END;            ',
'            END LOOP;',
'        EXCEPTION',
'            WHEN OTHERS THEN',
'                APEX_DEBUG.ERROR (''Error en PR_GUARDAR_NOVEDAD - GUARDAR DOCUMENTOS. '' || SQLERRM);',
'                ROLLBACK;',
'        END;',
'',
'    END IF;',
'',
unistr('    :P742_AUX_MSG := ''Se agreg\00F3 la imagen exitosamente.''; '),
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR (''Error en PR_GUARDAR_NOVEDAD - 02. '' || SQLERRM);',
'        :P742_AUX_MSG := SQLERRM;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(286450609862853128)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'PR_CLOSE_DIALOG'
,p_attribute_01=>'P742_AUX_MSG'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp.component_end;
end;
/
