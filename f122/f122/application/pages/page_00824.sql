prompt --application/pages/page_00824
begin
--   Manifest
--     PAGE: 00824
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
 p_id=>824
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'Images_org'
,p_alias=>'IMAGES-ORG'
,p_page_mode=>'MODAL'
,p_step_title=>'Images_org'
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
,p_last_upd_yyyymmddhh24miss=>'20250203092759'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(605778963789582885)
,p_plug_name=>'DATOS IMAGENES'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_plug_display_when_condition=>'P824_ID_IMAGEN'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(605780580177582901)
,p_plug_name=>'Images'
,p_parent_plug_id=>wwv_flow_imp.id(605778963789582885)
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
,p_plug_display_condition_type=>'NEVER'
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
 p_id=>wwv_flow_imp.id(605780667776582902)
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
,p_internal_uid=>605780667776582902
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(470121765973063088)
,p_db_column_name=>'ID_IMG'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Id Img'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(470122181534063089)
,p_db_column_name=>'NRO_IMG'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Nro Img'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(470122531126063090)
,p_db_column_name=>'ID_DIRECT'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Id Direct'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(470122943732063090)
,p_db_column_name=>'DIRECTORIO'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Directorio'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(470123310306063090)
,p_db_column_name=>'ARCHIVO'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Archivo'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(470123740945063090)
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
 p_id=>wwv_flow_imp.id(470124190475063090)
,p_db_column_name=>'DIR_NAME'
,p_display_order=>70
,p_column_identifier=>'M'
,p_column_label=>'Dir Name'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(606605039219013950)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1364883'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'NRO_IMG:ARCHIVO:IMAGEN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(605779948687582895)
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
 p_id=>wwv_flow_imp.id(607282031941951301)
,p_plug_name=>unistr('No se encontr\00F3 el ID para la imagen')
,p_region_template_options=>'#DEFAULT#:t-Alert--colorBG:t-Alert--wizard:t-Alert--defaultIcons:t-Alert--info'
,p_plug_template=>wwv_flow_imp.id(40093179053263652)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'NEVER'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(470117437747063084)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(605778963789582885)
,p_button_name=>'CARGAR'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--simple:t-Button--iconRight:t-Button--stretch'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Cargar'
,p_button_condition_type=>'NEVER'
,p_icon_css_classes=>'fa-arrow-up'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(470125109510063092)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(605779948687582895)
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
 p_id=>wwv_flow_imp.id(470125547436063093)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(605779948687582895)
,p_button_name=>'GUARDAR'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--simple:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Guardar'
,p_button_position=>'NEXT'
,p_button_execute_validations=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(259357080415445531)
,p_name=>'P824_COD_CONCEPTO'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(605778963789582885)
,p_prompt=>'COD CONCEPTO'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_DOCUMENTOS_ORG'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select desc_concepto, cod_concepto',
'from inv.BS_CONEPTOS_ORG'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_begin_on_new_field=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(259357196065445532)
,p_name=>'P824_COD_AREA'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(605778963789582885)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(470117837116063084)
,p_name=>'P824_DIRECTORIO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(605778963789582885)
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
 p_id=>wwv_flow_imp.id(470118255177063085)
,p_name=>'P824_ARCHIVOS'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(605778963789582885)
,p_prompt=>'Archivo(s)'
,p_display_as=>'NATIVE_FILE'
,p_cSize=>9999
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'APEX_APPLICATION_TEMP_FILES'
,p_attribute_09=>'REQUEST'
,p_attribute_10=>'Y'
,p_attribute_12=>'DROPZONE_BLOCK'
,p_attribute_15=>'9000'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(470118645507063085)
,p_name=>'P824_ID_DIRECTORIO'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(605778963789582885)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(470119009624063085)
,p_name=>'P824_DIR_NAME'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(605778963789582885)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(470119486362063085)
,p_name=>'P824_ID_IMAGEN'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(605778963789582885)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(470119871130063086)
,p_name=>'P824_OPERACION'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(605778963789582885)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(470120287234063086)
,p_name=>'P824_COD_MODULO'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(605778963789582885)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(470120610907063086)
,p_name=>'P824_BANDERA'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(605778963789582885)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(470121051503063086)
,p_name=>'P824_COD_ARTICULO'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(605778963789582885)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(470127873956063097)
,p_name=>'Cargar_Pagina '
,p_event_sequence=>10
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(470128313022063098)
,p_event_id=>wwv_flow_imp.id(470127873956063097)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF :P824_ID_IMAGEN IS NOT NULL   THEN ',
'   SELECT D.DIRECTORY_PATH,',
'        I.ID_REGISTRO,',
'        D.DIRECTORY_NAME   ',
'      INTO :P824_DIRECTORIO,',
'           :P824_ID_DIRECTORIO,',
'           :P824_DIR_NAME',
'      FROM ALL_DIRECTORIES D,',
'           DIRECTORIO_IMAGENES I ',
'     WHERE I.DIRECTORIO = D.DIRECTORY_NAME',
'       AND d.DIRECTORY_NAME = ''IMAGEN_ORG'';',
'END IF;'))
,p_attribute_02=>'P824_ID_IMAGEN'
,p_attribute_03=>'P824_DIRECTORIO,P824_ID_DIRECTORIO,P824_DIR_NAME'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(470128731194063098)
,p_name=>'Clic_Cancelar'
,p_event_sequence=>30
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(470125109510063092)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(470129259711063098)
,p_event_id=>wwv_flow_imp.id(470128731194063098)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>':P824_BANDERA := ''S'';'
,p_attribute_03=>'P824_BANDERA'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(470129786690063098)
,p_event_id=>wwv_flow_imp.id(470128731194063098)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(470126613594063097)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'LIMPIAR_COL'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
' APEX_COLLECTION.CREATE_OR_TRUNCATE_COLLECTION(P_COLLECTION_NAME => ''V_IMAGENES_ORG'');',
' :P824_BANDERA := ''N'';'))
,p_process_clob_language=>'PLSQL'
,p_process_when=>'P824_BANDERA'
,p_process_when_type=>'VAL_OF_ITEM_IN_COND_NOT_EQ_COND2'
,p_process_when2=>'N'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(470126288460063096)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Cargar_imagenes'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/*IMAGENES_APEX.PROCBD_CARGA_IMG_COL(:P824_ID_IMAGEN,',
'                                   :P824_ID_DIRECTORIO,',
'                                   ''IMAGEN_ORG'',',
'                                   :P824_DIR_NAME,',
'                                   :P824_ARCHIVOS);*/',
'INV.IMAGENES_ORG.PROCBD_CARGA_IMG_ORG(:P824_ID_IMAGEN,',
'                                   :P824_ID_DIRECTORIO,',
'                                   ''IMAGEN_ORG'',',
'                                   :P824_DIR_NAME,',
'                                   :P824_ARCHIVOS);                                  ',
':P824_BANDERA := ''N'';',
'             '))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CARGAR'
,p_process_when_type=>'REQUEST_IN_CONDITION'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(470127068049063097)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Guardar_Imagenes'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'V_IMAGE APEX_APPLICATION_TEMP_FILES.BLOB_CONTENT%TYPE;',
'VNOMARCHIVO        VARCHAR2(800);',
'v_seq_file         NUMBER;',
' v_id_caso         NUMBER; ',
' v_id_derivaciones number;',
' VRESP             VARCHAR2(3200);',
' upload_blob       BLOB;',
' v_filename        VARCHAR2(950);',
' v_mime_type       VARCHAR2(850);',
'--V_FILENAME APEX_APPLICATION_TEMP_FILES.FILENAME%TYPE; ',
'BEGIN',
'      IF :P824_ARCHIVOS IS NOT NULL THEN',
'',
'        ---- GUARDARMOS LOS ARCHIVOS ADJUNTOS ----',
'        DECLARE',
'            tab  apex_t_varchar2;',
'        BEGIN',
'            tab := apex_string.split(:P824_ARCHIVOS, '':'');',
'            FOR i IN 1..tab.count LOOP',
'                BEGIN',
'                 -- UPDATE SOBRE TABLA PARA GUARDAR EL ARCHIVO',
'                    SELECT',
'                        blob_content,',
'                        filename,',
'                        mime_type',
'                    INTO',
'                        upload_blob,',
'                        v_filename,',
'                        v_mime_type',
'                    FROM',
'                        apex_application_temp_files',
'                    WHERE',
'                        name = tab(i);--:P42_ARCHIVO_NOVEDAD;',
'',
'                    apex_debug.error(sqlerrm);',
'',
'                 --APEX_DEBUG.ERROR (''UPLOAD_BLOB '' || UPLOAD_BLOB);',
'                 --   apex_debug.error(''V_FILENAME '' || v_filename);',
'                 --   apex_debug.error(''V_MIME_TYPE '' || v_mime_type);',
'                    v_seq_file := SEQ_IMAGEN_ORG.nextval;',
'                                   begin',
'                                    INSERT INTO  inv.BS_IMAGENES_ORG I(I.COD_EMPRESA,',
'                                                                       I.COD_AREA,',
'                                                                       I.COD_CONCEPTO,',
'                                                                       I.FEC_ALTA,',
'                                                                       I.IMAGEN_BLOB,',
'                                                                       I.BFILE_IMAGEN,',
'                                                                       I.NOMBRE_IMAGEN,',
'                                                                       I.MIME_TYPO,',
'                                                                       I.NRO_IMG,',
'                                                                       I.NOMBRE_REFERENCIA',
'                                                ) VALUES ( :P_COD_EMPRESA,',
'                                                           :P824_COD_AREA,',
'                                                           :P824_COD_CONCEPTO,',
'                                                           sysdate,',
'                                                            upload_blob,',
'                                                            null,',
'                                                            substr(v_filename,1 , 6)||''_''||v_seq_file,',
'                                                            v_mime_type,',
'                                                            v_seq_file,',
'                                                            v_filename );',
'                                    exception',
'                                    when others then',
'                                            RAISE_APPLICATION_ERROR(-20000,''Error al intentar la imagen en BS_IMAGENES_ORG '' || SQLERRM);',
'                                    end;',
'',
'                 --- GUARDAR URL DEL ARCHIVO EN LA TABLA ---    ',
'                  inv.IMAGENES_ORG.write_blob_to_file_org(p_cod_area => :P824_ID_IMAGEN, ',
'                                                        p_cod_concepto => :P824_COD_CONCEPTO,                          ',
'                                                        p_nro_img => v_seq_file, ',
'                                                        p_cod_documento => null, ',
'                                                        p_cod_novedad => null,       ',
'                                                        p_dir => ''IMAGEN_ORG'');',
'',
'                    apex_debug.error(''SALE WRITE_BLOB_TO_FILE'');',
'                EXCEPTION',
'                    WHEN OTHERS THEN',
'                      raise_application_error(-20001, sqlerrm );',
'                        apex_debug.error(''Error en Crea casos - UPDATE FILE.'' || sqlerrm);',
'                        --:p42_aux_msg := sqlerrm;',
'                END;',
'            END LOOP;',
'',
'        EXCEPTION',
'            WHEN OTHERS THEN',
'               raise_application_error(-20002, sqlerrm );',
'                apex_debug.error(''Error en Crea casos - GUARDAR DOCUMENTOS. '' || sqlerrm);',
'                ROLLBACK;',
'        END;',
'    END IF;',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'             raise_application_error(-20000, sqlerrm );',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'No se pudo guardar la imagen'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(470125547436063093)
,p_process_success_message=>unistr('Archivo guardado con \00C9xito!')
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(470127447809063097)
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
