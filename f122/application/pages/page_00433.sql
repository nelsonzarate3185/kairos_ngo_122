prompt --application/pages/page_00433
begin
--   Manifest
--     PAGE: 00433
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
 p_id=>433
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'PRODUCT FILE'
,p_alias=>'PRODUCT-FILE'
,p_step_title=>'PRODUCT FILE'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr(' /*AGREGA DE FORMA AUTOM\00C1TICA LA MASCARA DE FECHA DD/MM/YYYY*/'),
'function setDateFormat1(obj){',
'    alert(obj.value);',
'   if(event.keyCode < 48 || (event.keyCode > 57 && event.keyCode < 96) || event.keyCode > 105){',
'   } ',
'    else{  ',
'            if(obj.value.length==2){',
'                if(parseInt(obj.value)>=1 && parseInt(obj.value)<32){',
'                    obj.value = obj.value + "/"; ',
'                    } else {',
'                obj.value='''';',
'                    ',
'                }',
'            }',
'                if(obj.value.length==5){',
'                    ',
'                    var d=obj.value.substr(3,2); ',
'                if(d>=1 && d<13){',
'                    obj.value = obj.value + "/";',
'                    } else {',
'                        var dd=obj.value.substr(0,3); ',
'                obj.value=dd;',
'                    ',
'                }',
'            }',
'                if(obj.value.length==10){',
'                var valoranho =obj.value.substr(6,4); ',
'                if(valoranho > 1899 && valoranho < 9999){',
'                            var dd=obj.value.substr(6,4); ',
'                    obj.value = obj.value;',
'                    } else {',
'                        var dd=obj.value.substr(0,6); ',
'                obj.value=dd;',
'                    ',
'                }',
'            }',
'                if(obj.value.length==11 || obj.value.length > 11){',
'                obj.value='''';',
'            }',
'            if(obj.value.length==6){',
'            var d=obj.value.substr(5,1);',
'            if(d !="/"){',
'                obj.value='''';',
'            }',
'            }',
'            if(obj.value.length==3){',
'            var d=obj.value.substr(2,1);',
'            if(d !="/"){',
'                obj.value='''';',
'            }',
'            }',
'        }',
'   ',
'}',
'',
''))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'02'
,p_last_updated_by=>'HSEGOVIA'
,p_last_upd_yyyymmddhh24miss=>'20230330085933'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(128550556628042338)
,p_name=>'Informes '
,p_template=>wwv_flow_imp.id(40125238939263661)
,p_display_sequence=>990
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select prod_id,',
'prod_name,',
'unit,',
'rate,',
'''<img src="http://localhost:8080/i/APP_IMAGEN/''||prod_id||''.png" width=100px height=100px </img>'' image',
'from PRODUCT_INFO'))
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
 p_id=>wwv_flow_imp.id(128550683435042339)
,p_query_column_id=>1
,p_column_alias=>'PROD_ID'
,p_column_display_sequence=>10
,p_column_heading=>'Prod Id'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(128550725219042340)
,p_query_column_id=>2
,p_column_alias=>'PROD_NAME'
,p_column_display_sequence=>20
,p_column_heading=>'Prod Name'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(128550833218042341)
,p_query_column_id=>3
,p_column_alias=>'UNIT'
,p_column_display_sequence=>30
,p_column_heading=>'Unit'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(128550988256042342)
,p_query_column_id=>4
,p_column_alias=>'RATE'
,p_column_display_sequence=>40
,p_column_heading=>'Rate'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(128551056162042343)
,p_query_column_id=>5
,p_column_alias=>'IMAGE'
,p_column_display_sequence=>50
,p_column_heading=>'Image'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(131307530025093706)
,p_plug_name=>'PRODUCT FILE'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>10
,p_query_type=>'TABLE'
,p_query_table=>'PRODUCT_INFO'
,p_include_rowid_column=>false
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(131312382495093700)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(131307530025093706)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Aplicar Cambios'
,p_button_position=>'CHANGE'
,p_button_condition=>'P433_PROD_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(131311302575093700)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(131307530025093706)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_image_alt=>'Cancelar'
,p_button_position=>'CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.:::'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(131312795727093699)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(131307530025093706)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Crear'
,p_button_position=>'CREATE'
,p_button_condition=>'P433_PROD_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(131311979748093700)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(131307530025093706)
,p_button_name=>'DELETE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_image_alt=>'Suprimir'
,p_button_position=>'DELETE'
,p_button_execute_validations=>'N'
,p_confirm_message=>'&APP_TEXT$DELETE_MSG!RAW.'
,p_confirm_style=>'danger'
,p_button_condition=>'P433_PROD_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(131313089823093699)
,p_branch_action=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(131307812612093705)
,p_name=>'P433_PROD_ID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(131307530025093706)
,p_item_source_plug_id=>wwv_flow_imp.id(131307530025093706)
,p_prompt=>'PROD_ID'
,p_source=>'PROD_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(131308279462093703)
,p_name=>'P433_PROD_NAME'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(131307530025093706)
,p_item_source_plug_id=>wwv_flow_imp.id(131307530025093706)
,p_prompt=>'Prod Name'
,p_format_mask=>'DD/MM/YYYY'
,p_source=>'PROD_NAME'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER_JET'
,p_cSize=>32
,p_cMaxlength=>50
,p_tag_css_classes=>'allow_only_numbers'
,p_tag_attributes=>'onkeyup = "setDateFormat1(this);" '
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'POPUP'
,p_attribute_03=>'NONE'
,p_attribute_06=>'NONE'
,p_attribute_09=>'N'
,p_attribute_11=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(131308637445093703)
,p_name=>'P433_UNIT'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(131307530025093706)
,p_item_source_plug_id=>wwv_flow_imp.id(131307530025093706)
,p_prompt=>'Unit'
,p_source=>'UNIT'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>20
,p_tag_css_classes=>'allow_only_numbers'
,p_tag_attributes=>'onkeyup = "setDateFormat1(this);" '
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(131309079051093702)
,p_name=>'P433_RATE'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(131307530025093706)
,p_item_source_plug_id=>wwv_flow_imp.id(131307530025093706)
,p_prompt=>'Rate'
,p_source=>'RATE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_03=>'right'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(131309442920093702)
,p_name=>'P433_IMAGE'
,p_source_data_type=>'BLOB'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(131307530025093706)
,p_item_source_plug_id=>wwv_flow_imp.id(131307530025093706)
,p_prompt=>'Image'
,p_source=>'IMAGE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_FILE'
,p_cSize=>60
,p_cMaxlength=>255
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'APEX_APPLICATION_TEMP_FILES'
,p_attribute_09=>'SESSION'
,p_attribute_10=>'Y'
,p_attribute_12=>'INLINE'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(128550432725042337)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Carga imagen'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
' l_blob  BLOB;',
'BEGIN',
'',
' select  BLOB_CONTENT ',
' INTO   l_blob  ',
' FROM apex_application_temp_files',
' where NAME= :P433_IMAGE;',
'  ',
' ',
'     ',
'  inv.blob_to_file(p_blob     => l_blob,',
'               p_dir      => ''C:\APP_IMAGES'',',
'               p_filename => :P433_PROD_ID||''.png'');',
'',
'  ',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(131311302575093700)
,p_process_when_type=>'NEVER'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(135661713033519803)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Carga imagen_1'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'V_IMAGE APEX_APPLICATION_TEMP_FILES.BLOB_CONTENT%TYPE;',
'V_FILENAME APEX_APPLICATION_TEMP_FILES.FILENAME%TYPE;',
'BEGIN',
'BEGIN',
'SELECT BLOB_CONTENT,FILENAME INTO V_IMAGE,V_FILENAME',
'FROM APEX_APPLICATION_TEMP_FILES',
'WHERE UPPER(NAME)=UPPER(:P433_IMAGE);',
'EXCEPTION WHEN NO_DATA_FOUND THEN',
'V_IMAGE:=NULL;',
'V_FILENAME:=NULL;',
'WHEN OTHERS THEN',
'V_IMAGE:=NULL;',
'V_FILENAME:=NULL;',
'END;',
'RAISE_APPLICATION_ERROR(-20001,:P433_IMAGE);',
'IF V_IMAGE IS NOT NULL AND V_FILENAME IS NOT NULL THEN',
'INV.SaveFile(V_IMAGE,''UPLOAD_IMAGE_APEX'',V_FILENAME);',
'RAISE_APPLICATION_ERROR(-20001,V_FILENAME);',
'ELSE',
'APEX_ERROR.ADD_ERROR (',
' p_message  => ''Image Not Upload'',',
'p_display_location => apex_error.c_inline_in_notification );',
'END IF;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(131312795727093699)
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(131313958710093699)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(131307530025093706)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Procesar pantalla PRODUCT FILE'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(131313551363093699)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(131307530025093706)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Inicializar pantalla PRODUCT FILE'
);
wwv_flow_imp.component_end;
end;
/
