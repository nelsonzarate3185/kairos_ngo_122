prompt --application/pages/page_00560
begin
--   Manifest
--     PAGE: 00560
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
 p_id=>560
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'Importador de Articulos'
,p_alias=>'CARGAR-ARTICULOS-STGEINMO'
,p_page_mode=>'MODAL'
,p_step_title=>'Importador de Articulos para Inventario'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'03'
,p_last_updated_by=>'NZARATE'
,p_last_upd_yyyymmddhh24miss=>'20250218154732'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(180162500111605316)
,p_plug_name=>'Button Bar'
,p_region_template_options=>'#DEFAULT#:t-ButtonRegion--noUI'
,p_plug_template=>wwv_flow_imp.id(40097820288263654)
,p_plug_display_sequence=>10
,p_plug_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_plug_display_when_condition=>'P560_FILE'
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(180164527387605314)
,p_plug_name=>'Data Source'
,p_region_template_options=>'#DEFAULT#:t-Region--hideHeader:t-Region--noUI:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>20
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(180164945892605313)
,p_plug_name=>'Upload a File'
,p_parent_plug_id=>wwv_flow_imp.id(180164527387605314)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>30
,p_plug_display_condition_type=>'ITEM_IS_NULL'
,p_plug_display_when_condition=>'P560_FILE'
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(180167021808605305)
,p_plug_name=>'Loaded File'
,p_parent_plug_id=>wwv_flow_imp.id(180164527387605314)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>40
,p_plug_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_plug_display_when_condition=>'P560_FILE'
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(180168642161605302)
,p_name=>'Preview'
,p_template=>wwv_flow_imp.id(40125238939263661)
,p_display_sequence=>70
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--staticRowColors:t-Report--rowHighlight:t-Report--horizontalBorders:t-Report--hideNoPagination'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select p.line_number,',
'       p.col001, p.col002, p.col003, p.col004, p.col005, p.col006, p.col007, p.col008, p.col009, p.col010',
'       -- add more columns (col011 to col300) here.',
'  from apex_application_temp_files f, ',
'       table( apex_data_parser.parse(',
'                  p_content           => f.blob_content,',
'                  p_file_name         => f.filename,',
'                  p_file_profile      => apex_data_loading.get_file_profile( p_static_id => ''articulos_stgeinmo''),',
'                  p_max_rows          => 100 ) ) p',
' where f.name = :P560_FILE'))
,p_display_when_condition=>'P560_FILE'
,p_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(40147995650263667)
,p_query_headings_type=>'NO_HEADINGS'
,p_query_num_rows=>50
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'no data found'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_query_row_count_max=>500
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_prn_output=>'N'
,p_prn_format=>'PDF'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(180169037245605285)
,p_query_column_id=>1
,p_column_alias=>'LINE_NUMBER'
,p_column_display_sequence=>1
,p_column_heading=>'Line Number'
,p_use_as_row_header=>'N'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(180169411869605284)
,p_query_column_id=>2
,p_column_alias=>'COL001'
,p_column_display_sequence=>2
,p_column_heading=>'Col001'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(180169814933605284)
,p_query_column_id=>3
,p_column_alias=>'COL002'
,p_column_display_sequence=>3
,p_column_heading=>'Col002'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(180170268899605284)
,p_query_column_id=>4
,p_column_alias=>'COL003'
,p_column_display_sequence=>4
,p_column_heading=>'Col003'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(180170617317605284)
,p_query_column_id=>5
,p_column_alias=>'COL004'
,p_column_display_sequence=>5
,p_column_heading=>'Col004'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(180171034901605283)
,p_query_column_id=>6
,p_column_alias=>'COL005'
,p_column_display_sequence=>6
,p_column_heading=>'Col005'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(180171411671605283)
,p_query_column_id=>7
,p_column_alias=>'COL006'
,p_column_display_sequence=>7
,p_column_heading=>'Col006'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(180171801614605283)
,p_query_column_id=>8
,p_column_alias=>'COL007'
,p_column_display_sequence=>8
,p_column_heading=>'Col007'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(180172274231605283)
,p_query_column_id=>9
,p_column_alias=>'COL008'
,p_column_display_sequence=>9
,p_column_heading=>'Col008'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(180172688295605283)
,p_query_column_id=>10
,p_column_alias=>'COL009'
,p_column_display_sequence=>10
,p_column_heading=>'Col009'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(180173096050605282)
,p_query_column_id=>11
,p_column_alias=>'COL010'
,p_column_display_sequence=>11
,p_column_heading=>'Col010'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(180187713988478503)
,p_button_sequence=>30
,p_button_name=>'CERRAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Cerrar'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'u-color-29-bg u-normal-text'
,p_icon_css_classes=>'fa-undo-arrow'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(180163027044605315)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(180162500111605316)
,p_button_name=>'CLEAR'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_image_alt=>'Clear'
,p_button_position=>'NEXT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(180163319862605315)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(180162500111605316)
,p_button_name=>'LOAD'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Load Data'
,p_button_position=>'NEXT'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(180165329433605313)
,p_name=>'P560_FILE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(180164945892605313)
,p_prompt=>'Upload a File'
,p_display_as=>'NATIVE_FILE'
,p_grid_label_column_span=>0
,p_field_template=>wwv_flow_imp.id(40186365556263678)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'APEX_APPLICATION_TEMP_FILES'
,p_attribute_06=>'Y'
,p_attribute_08=>'attachment'
,p_attribute_09=>'SESSION'
,p_attribute_10=>'N'
,p_attribute_12=>'DROPZONE_BLOCK'
,p_attribute_14=>'Supported formats CSV, TXT'
,p_attribute_15=>'5000'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(180165759926605306)
,p_name=>'P560_ERROR_ROW_COUNT'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(180164945892605313)
,p_display_as=>'NATIVE_HIDDEN'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(180167404454605305)
,p_name=>'P560_FILE_NAME'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(180167021808605305)
,p_item_default=>'Pasted Data'
,p_prompt=>'Loaded File'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(898741097363768331)
,p_name=>'P560_COD_SUCURSAL'
,p_item_sequence=>40
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(898741119466768332)
,p_name=>'P560_EMPRESA'
,p_item_sequence=>50
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(898741203874768333)
,p_name=>'P560_INVENTARIO_OT'
,p_item_sequence=>60
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_computation(
 p_id=>wwv_flow_imp.id(180167906988605303)
,p_computation_sequence=>10
,p_computation_item=>'P560_FILE_NAME'
,p_computation_type=>'QUERY'
,p_computation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select filename',
'  from apex_application_temp_files ',
' where name = :P560_FILE'))
,p_compute_when=>'P560_FILE'
,p_compute_when_type=>'ITEM_IS_NOT_NULL'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(180168352522605302)
,p_validation_name=>'Is valid file type'
,p_validation_sequence=>10
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if apex_data_parser.assert_file_type(',
'       p_file_name => :P560_FILE_NAME,',
'       p_file_type => apex_data_parser.c_file_type_csv )',
'then',
'    return true;',
'else',
'    :P560_FILE := null;',
'    return false;',
'end if;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'Invalid file type. Supported file types CSV, TXT.'
,p_associated_item=>wwv_flow_imp.id(180165329433605313)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(180166111139605306)
,p_name=>'Upload a File'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P560_FILE'
,p_condition_element=>'P560_FILE'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(180166659785605305)
,p_event_id=>wwv_flow_imp.id(180166111139605306)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_02=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(180187891701478504)
,p_name=>'da_Cerrar'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(180187713988478503)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(180187995811478505)
,p_event_id=>wwv_flow_imp.id(180187891701478504)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CLOSE'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(180163838334605314)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_DATA_LOADING'
,p_process_name=>'Load Data'
,p_attribute_01=>wwv_flow_imp.id(180161790065608736)
,p_attribute_02=>'FILE'
,p_attribute_03=>'P560_FILE'
,p_attribute_08=>'P560_ERROR_ROW_COUNT'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(180163319862605315)
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(86525284567903949)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'pr_procesar'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE ',
'    V_DESCRIPCION VARCHAR2(500);',
'    V_CANT NUMBER;',
'    V_COSTO NUMBER;',
'    V_COD_ART_CORTO VARCHAR2(100);',
'    VEMPRESA VARCHAR2(100);',
'    VSUCURSAL VARCHAR2(100);',
'    V_ROWID VARCHAR2(100);',
'BEGIN',
'',
'   apex_collection.create_or_truncate_collection(p_collection_name => ''COL_DET_STGEINMO'');',
'/*IF :P560_EMPRESA=''N'' THEN',
'VEMPRESA:=''NGO'';',
'ELSIF :P560_EMPRESA=''S'' THEN',
'VEMPRESA:=''CPH'';',
'ELSIF :P560_EMPRESA=''B'' THEN',
'VEMPRESA:=''BH'';',
'ELSIF :P560_EMPRESA=''T'' THEN',
'VEMPRESA:=''TF'';',
'END IF;',
'VSUCURSAL:=:P560_COD_SUCURSAL;*/',
'IF VEMPRESA IS NULL  OR VSUCURSAL IS NULL THEN ',
'',
'BEGIN ',
'SELECT CASE WHEN  C001 =''N'' THEN ''NGO'' WHEN  C001 =''S'' THEN ''CPH'' WHEN  C001 =''T'' THEN ''TF'' END EMPRESA, C002 SUCURSAL',
' INTO VEMPRESA, VSUCURSAL',
'              FROM APEX_COLLECTIONS',
'              WHERE COLLECTION_NAME = ''CAB_INV''',
'              AND ROWNUM=1;',
'              EXCEPTION WHEN OTHERS THEN',
'              NULL;',
'              END;',
'END IF;',
'    FOR C IN (SELECT C001 COD_ARTICULO',
'              FROM APEX_COLLECTIONS',
'              WHERE COLLECTION_NAME = ''COL_AUX_STGEINMO'')',
'    LOOP',
'            select art.DESC_ARTICULO descripcion,',
'                   art.cod_Art_corto,',
'                   CASE WHEN VEMPRESA=''NGO'' THEN',
'                   (select sum(CANT_DISPON) from ST_EXISTENCIA_ART  where cod_articulo = art.cod_articulo and cod_empresa=''1'' and VEMPRESA=''NGO'' AND COD_SUCURSAL = VSUCURSAL) ',
'                   WHEN VEMPRESA=''CPH'' THEN',
'                   (select sum(CANT_DISPON) from ST_EXISTENCIA_ART@DBLINK_CPH  where cod_articulo = art.cod_articulo and cod_empresa=''1'' and VEMPRESA=''CPH'' AND COD_SUCURSAL = VSUCURSAL) ',
'                   WHEN VEMPRESA=''BH'' THEN',
'                   (select sum(CANT_DISPON) from ST_EXISTENCIA_ART  where cod_articulo = art.cod_articulo and cod_empresa=''18'' and VEMPRESA=''BH'' AND COD_SUCURSAL = VSUCURSAL) ',
'                   ',
'                   END cantidad,',
'',
'                     CASE WHEN VEMPRESA=''NGO'' THEN',
'                   (select sum(CANT_DISPON* nvl(art.COSTO_PROM,0)) from ST_EXISTENCIA_ART  where cod_articulo = art.cod_articulo and cod_empresa=''1'' and VEMPRESA=''NGO'' AND COD_SUCURSAL = VSUCURSAL) ',
'                   WHEN VEMPRESA=''CPH'' THEN',
'                   (select sum(CANT_DISPON* nvl(art.COSTO_PROM,0)) from ST_EXISTENCIA_ART@DBLINK_CPH  where cod_articulo = art.cod_articulo and cod_empresa=''1'' and VEMPRESA=''CPH'' AND COD_SUCURSAL = VSUCURSAL) ',
'                   WHEN VEMPRESA=''BH''  THEN',
'                   (select sum(CANT_DISPON* nvl(art.COSTO_PROM,0)) from ST_EXISTENCIA_ART  where cod_articulo = art.cod_articulo and cod_empresa=''18'' and VEMPRESA=''BH'' AND COD_SUCURSAL = VSUCURSAL) ',
'                   ',
'                   END costo ',
'             INTO   V_DESCRIPCION,',
'                   V_COD_ART_CORTO,',
'                   V_CANT,',
'                   V_COSTO',
'            from V_MAESTRO_ARTICULOS art',
'            where (art.cod_articulo = c.cod_articulo',
'            OR ART.COD_ART_CORTO=C.COD_ARTICULO)',
'            and EMPRESA_ORIGEN = VEMPRESA;',
'           ',
'',
'',
'                APEX_COLLECTION.ADD_MEMBER (P_COLLECTION_NAME => ''COL_DET_STGEINMO'',',
'                                            P_C004 => V_DESCRIPCION,',
'                                            P_C005 => C.COD_ARTICULO,',
'                                            P_C006 => nvl(V_CANT,0),',
'                                            P_C010 => V_COSTO,',
'                                            P_C015 => V_COD_ART_CORTO,',
'                                            P_C022 => ''A'');--,',
'                                            --P_C025 => V_ROWID);',
'    END LOOP;',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(180163319862605315)
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(180164216336605314)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'Clear Cache'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>':REQUEST = ''CLEAR'' or :P560_ERROR_ROW_COUNT = 0'
,p_process_when_type=>'EXPRESSION'
,p_process_when2=>'PLSQL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(180187684151478502)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'CERRAR'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(180187713988478503)
);
wwv_flow_imp.component_end;
end;
/
