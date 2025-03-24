prompt --application/pages/page_05001
begin
--   Manifest
--     PAGE: 05001
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
 p_id=>5001
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'Modificar Menu'
,p_alias=>'MODIFICAR-MENU'
,p_page_mode=>'MODAL'
,p_step_title=>'Modificar Menu'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'16'
,p_last_updated_by=>'JOSEFINAGU'
,p_last_upd_yyyymmddhh24miss=>'20230104135439'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(30807941550914223)
,p_plug_name=>'menu'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ID,',
'       CODI,',
'       NOMB,',
'       MODU0300$ID,',
'       ORDE,',
'       DM$IMPU,',
'       APPLICATION_ID,',
'       PAGE_ID,',
'       ITEMNAMES,',
'       ITEMVALUES,',
'       REPORT_ALIAS,',
'       DM$ACTI,',
'       PAGE_ID_LIST,',
'       DM$ACCD,',
'       IMGN,',
'       CLEA,',
'       REPA,',
'       DM$CLEA,',
'       REQUEST,',
'       AYUD,',
'       CONT,',
'       DM$ACTN,',
'       CSSC,',
'       APLI0100$ID',
'  from ASP$MODU0300'))
,p_is_editable=>false
,p_plug_source_type=>'NATIVE_FORM'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(30810587327914249)
,p_plug_name=>'botones'
,p_region_template_options=>'#DEFAULT#:t-ButtonRegion--noUI'
,p_plug_template=>wwv_flow_imp.id(40097820288263654)
,p_plug_display_sequence=>50
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(30810699316914250)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(30810587327914249)
,p_button_name=>'cancelar'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_image_alt=>'Cancelar'
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(46966653337983601)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(30810587327914249)
,p_button_name=>'guardar'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Guardar'
,p_button_position=>'CREATE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(30808160197914225)
,p_name=>'P5001_ID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(30807941550914223)
,p_item_source_plug_id=>wwv_flow_imp.id(30807941550914223)
,p_source=>'ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(30808278848914226)
,p_name=>'P5001_CODI'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(30807941550914223)
,p_item_source_plug_id=>wwv_flow_imp.id(30807941550914223)
,p_source=>'CODI'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(30808391057914227)
,p_name=>'P5001_NOMB'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(30807941550914223)
,p_item_source_plug_id=>wwv_flow_imp.id(30807941550914223)
,p_prompt=>'Nombre'
,p_source=>'NOMB'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>200
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(30808480580914228)
,p_name=>'P5001_MODU0300_ID'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(30807941550914223)
,p_item_source_plug_id=>wwv_flow_imp.id(30807941550914223)
,p_prompt=>unistr('ID del men\00FA padre')
,p_source=>'MODU0300$ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
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
'    AND M300.apli0100$id = :P5001_APLI0100_ID',
'    AND NVL(M300.dm$acti, 2) = 1',
'    START WITH M300.modu0300$id IS NULL',
'    CONNECT BY PRIOR M300.id = M300.modu0300$id',
'    ORDER SIBLINGS BY M300.orde'))
,p_lov_display_null=>'YES'
,p_lov_cascade_parent_items=>'P5001_APLI0100_ID'
,p_ajax_items_to_submit=>'P5001_APLI0100_ID'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>4
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(30808543305914229)
,p_name=>'P5001_ORDE'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(30807941550914223)
,p_item_source_plug_id=>wwv_flow_imp.id(30807941550914223)
,p_prompt=>'Orden'
,p_source=>'ORDE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_03=>'right'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(30808664486914230)
,p_name=>'P5001_DM_IMPU'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(30807941550914223)
,p_item_source_plug_id=>wwv_flow_imp.id(30807941550914223)
,p_source=>'DM$IMPU'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(30808754406914231)
,p_name=>'P5001_APPLICATION_ID'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(30807941550914223)
,p_item_source_plug_id=>wwv_flow_imp.id(30807941550914223)
,p_prompt=>'Application Id'
,p_source=>'APPLICATION_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_03=>'right'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(30808887550914232)
,p_name=>'P5001_PAGE_ID'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(30807941550914223)
,p_item_source_plug_id=>wwv_flow_imp.id(30807941550914223)
,p_prompt=>'Page Id'
,p_source=>'PAGE_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_03=>'right'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(30808925177914233)
,p_name=>'P5001_ITEMNAMES'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(30807941550914223)
,p_item_source_plug_id=>wwv_flow_imp.id(30807941550914223)
,p_source=>'ITEMNAMES'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(30809094438914234)
,p_name=>'P5001_ITEMVALUES'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(30807941550914223)
,p_item_source_plug_id=>wwv_flow_imp.id(30807941550914223)
,p_source=>'ITEMVALUES'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(30809114621914235)
,p_name=>'P5001_REPORT_ALIAS'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(30807941550914223)
,p_item_source_plug_id=>wwv_flow_imp.id(30807941550914223)
,p_source=>'REPORT_ALIAS'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(30809200919914236)
,p_name=>'P5001_DM_ACTI'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(30807941550914223)
,p_item_source_plug_id=>wwv_flow_imp.id(30807941550914223)
,p_prompt=>'Activo?'
,p_source=>'DM$ACTI'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'DM_SINO'
,p_lov=>'.'||wwv_flow_imp.id(40303239801928454)||'.'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(30809315142914237)
,p_name=>'P5001_PAGE_ID_LIST'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(30807941550914223)
,p_item_source_plug_id=>wwv_flow_imp.id(30807941550914223)
,p_source=>'PAGE_ID_LIST'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(30809431805914238)
,p_name=>'P5001_DM_ACCD'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(30807941550914223)
,p_item_source_plug_id=>wwv_flow_imp.id(30807941550914223)
,p_source=>'DM$ACCD'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(30809571599914239)
,p_name=>'P5001_IMGN'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(30807941550914223)
,p_item_source_plug_id=>wwv_flow_imp.id(30807941550914223)
,p_prompt=>'Icono'
,p_source=>'IMGN'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT icon_name as d,',
'       icon_name as r',
'FROM APEX_220100.WWV_FLOW_STANDARD_ICONS'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- seleccionar -'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'Y'
,p_attribute_05=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(30809646836914240)
,p_name=>'P5001_CLEA'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_imp.id(30807941550914223)
,p_item_source_plug_id=>wwv_flow_imp.id(30807941550914223)
,p_source=>'CLEA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(30809710046914241)
,p_name=>'P5001_REPA'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_imp.id(30807941550914223)
,p_item_source_plug_id=>wwv_flow_imp.id(30807941550914223)
,p_source=>'REPA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(30809830486914242)
,p_name=>'P5001_DM_CLEA'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_imp.id(30807941550914223)
,p_item_source_plug_id=>wwv_flow_imp.id(30807941550914223)
,p_source=>'DM$CLEA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(30809924362914243)
,p_name=>'P5001_REQUEST'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_imp.id(30807941550914223)
,p_item_source_plug_id=>wwv_flow_imp.id(30807941550914223)
,p_source=>'REQUEST'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(30810059935914244)
,p_name=>'P5001_AYUD'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_imp.id(30807941550914223)
,p_item_source_plug_id=>wwv_flow_imp.id(30807941550914223)
,p_source=>'AYUD'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(30810151315914245)
,p_name=>'P5001_CONT'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>220
,p_item_plug_id=>wwv_flow_imp.id(30807941550914223)
,p_item_source_plug_id=>wwv_flow_imp.id(30807941550914223)
,p_source=>'CONT'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(30810238506914246)
,p_name=>'P5001_DM_ACTN'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>230
,p_item_plug_id=>wwv_flow_imp.id(30807941550914223)
,p_item_source_plug_id=>wwv_flow_imp.id(30807941550914223)
,p_source=>'DM$ACTN'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(30810362801914247)
,p_name=>'P5001_CSSC'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>240
,p_item_plug_id=>wwv_flow_imp.id(30807941550914223)
,p_item_source_plug_id=>wwv_flow_imp.id(30807941550914223)
,p_source=>'CSSC'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(30810450053914248)
,p_name=>'P5001_APLI0100_ID'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(30807941550914223)
,p_item_source_plug_id=>wwv_flow_imp.id(30807941550914223)
,p_prompt=>'ID tabla ASP$APLI0100'
,p_source=>'APLI0100$ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select nomb,',
'       id',
'from asp$apli0100'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_colspan=>4
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(46966740348983602)
,p_name=>'da_cancelar'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(30810699316914250)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(46966839553983603)
,p_event_id=>wwv_flow_imp.id(46966740348983602)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(46968556400983620)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'GUARDAR'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'UPDATE ASP$MODU0300',
'SET NOMB = :P5001_NOMB,',
'    IMGN = :P5001_IMGN,',
'    ORDE = :P5001_ORDE,',
'    APPLICATION_ID = :P5001_APPLICATION_ID,',
'    PAGE_ID = :P5001_PAGE_ID,',
'    DM$ACTI = :P5001_DM_ACTI,',
'    APLI0100$ID = :P5001_APLI0100_ID,',
'    MODU0300$ID = :P5001_MODU0300_ID',
'WHERE ID = :P5001_ID;',
'EXCEPTION',
'WHEN OTHERS THEN',
'    APEX_DEBUG.ERROR(SQLERRM);',
'END;   '))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(46968814110983623)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'CERRAR'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(30808037019914224)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(30807941550914223)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Modificar Menu'
);
wwv_flow_imp.component_end;
end;
/
