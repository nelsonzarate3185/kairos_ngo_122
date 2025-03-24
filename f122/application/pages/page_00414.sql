prompt --application/pages/page_00414
begin
--   Manifest
--     PAGE: 00414
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
 p_id=>414
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'Subida_Archivo'
,p_alias=>'SUBIDA-ARCHIVO'
,p_step_title=>'Subida_Archivo'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function doDescarga(p_cod_empresa, p_cod_planilla){',
'   var vURL = ''https://ngosaeca.com.py/reportes/rest_v2/reports/reports/RPPLAGAS.pdf?''',
'            + ''P_COD_EMPRESA=1&P_NRO_PLANILLA=458402&P_FEC_PLANILLA=03/01/2023&j_username=jasperadmin&j_password=jasperadmin'';',
'',
'    console.log(vURL);',
'    window.open(unescape(vURL.replace(/&amp;/g,''g'')),''_blank'');',
'}',
'',
'function doInit() {',
'    $(''#P414_DOCUMENTO'').on(''change'', addAdju);',
'     $(document).on(''dialogbeforeclose'', function(event, ui) {',
'        var vsele = ''#RMAIN'';',
'        $(vsele).trigger(''apexrefresh'');',
'    });',
'',
'function DeleDocu(pseq){',
'    $s("P414_DELE_ID", pseq);',
'    ',
'}',
'$(document).on(''apexafterclosedialog'', function(e,data){',
'        ',
'        var vmsg  = '''';',
'        var verr  = 0;',
'        var vpage =  parseInt(data.dialogPageId);',
'',
'        switch (vpage) {',
'',
'        case 579:',
'            verr = 0;',
'            vmsg = data.P579_MSG;',
'            break;',
'        case 1002:',
'            verr = 0;',
unistr('            vmsg = ''Actividad adicional registrada con \00E9xito.'';'),
'            break;',
'        case 1003:',
'            verr = 0;',
unistr('            vmsg = ''Archivos procesados con \00E9xito.'';'),
'            var vsele = ''#RMAIN'';',
'            $(vsele).trigger(''apexrefresh'');',
'            break;',
'        case 1004:',
'            verr = 0;',
unistr('            vmsg = ''Campos adicionales procesados con \00E9xito.'';'),
'            var vsele = ''#RDOCU,#RCAMP'';',
'            $(vsele).trigger(''apexrefresh'');',
'            break;',
'        default:',
'            verr = 0;',
'            vmsg = null;',
'            break;',
'        }',
'        ',
'        if (vmsg) {',
'            if (verr > 0) {',
'                erroresItems(vmsg);',
'            } else {',
'                apex.message.showPageSuccess(vmsg);',
'            }',
'        }',
'    });',
'}',
'',
'function Eliminardriv0200 (pdrive0200){',
'    var vdrive0200 = charToNumber(pdrive0200);',
'  console.log(''vdrive0200'', vdrive0200);',
'  $s("P414_DELE_ID", vdrive0200);',
'   ',
'}',
'',
'function addAdju() {',
'    var vDocum = $v(''P414_DOCUMENTO'');',
'    var vEmpr = $v(''P_COD_EMPRESA'');',
'    var vClie = $v(''P414_CLIE'');',
'    var vFold = ''Documento''+vDocum;',
'    var vUsua = $v(''P_USUA0100_ID'');',
'    var vdriv_id = $v(''P_GDRIVE_ID'');',
'    var vfold_id = $v(''P_GDRIVE_FOLDER'');    ',
'    var vpar = ''pId1=''+vEmpr+''&pId2=''+vClie+''&pId3=''+vDocum+''&pFolderId=''+vfold_id+''&pFolderName='' + vFold ;',
'    var vurl = ''https://script.google.com/macros/s/''+vdriv_id+''/exec?'' + vpar;',
'    ',
'    console.log(vurl);',
'    var win = window.open(vurl, ''Adjuntar archivos'', ''_blank'');',
'    var timer = setInterval(function() {',
'        if (win.closed) {',
'            clearInterval(timer);',
'            $("#RMAIN").trigger(''apexrefresh'');',
'        }',
'    }, 500);',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'03'
,p_last_updated_by=>'FPONCE'
,p_last_upd_yyyymmddhh24miss=>'20230329130844'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(120785964980094441)
,p_name=>'SubReporte'
,p_region_name=>'RMAIN'
,p_template=>wwv_flow_imp.id(40123385688263660)
,p_display_sequence=>20
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
' SELECT d200.id,',
'      -- docu.nomb,',
'       case when drv_lnk is not null then',
'      ''<a href="javascript:window.open(''''https://drive.google.com/file/d/''||d200.drv_lnk||''/preview?pli=1'''');"><img src="#IMAGE_PREFIX#attachments_toggleattach.gif" alt=""></a>'' ',
'      else null end "Ver",',
'''<a class="fa fa-trash"; href="javascript:Eliminardriv0200(''|| D200.ID||'');"></a>'' "Eliminar"',
' FROM inv.ecm$driv0200 d200',
'     -- crm$docu0100 docu',
'WHERE-- d200.docu0100$id = docu.id (+)',
' --d200.pers0100$id = :P1003_PERS0100_ID',
'   d200.usua0100$id = :P_USUA0100_ID',
'  order by 1 desc'))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(40147995650263667)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'no hay datos'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(120786551978094447)
,p_query_column_id=>1
,p_column_alias=>'ID'
,p_column_display_sequence=>10
,p_column_heading=>'Id'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(120786685918094448)
,p_query_column_id=>2
,p_column_alias=>'Ver'
,p_column_display_sequence=>20
,p_column_heading=>'Ver'
,p_use_as_row_header=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(120786791559094449)
,p_query_column_id=>3
,p_column_alias=>'Eliminar'
,p_column_display_sequence=>30
,p_column_heading=>'Eliminar'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(121291243640956201)
,p_plug_name=>'New'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(121292348016956212)
,p_button_sequence=>30
,p_button_name=>'New_1'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'New 1'
,p_warn_on_unsaved_changes=>null
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(121292136213956210)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_imp.id(121291243640956201)
,p_button_name=>'New'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_image_alt=>'New'
,p_warn_on_unsaved_changes=>null
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(120786897303094450)
,p_name=>'P414_DOCUMENTO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(121291243640956201)
,p_prompt=>'Documento'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT NOMB D, ID R',
'  FROM INV.DOCUMENTOS ',
'  WHERE EMPR0100$ID = :P_COD_EMPRESA;'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(121291373611956202)
,p_name=>'P414_DRIV_ID'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(121291243640956201)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(121291438886956203)
,p_name=>'P414_DOC_ID'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(121291243640956201)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(121291541681956204)
,p_name=>'P414_DELE_ID'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(121291243640956201)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(121291655746956205)
,p_name=>'P414_CLIE'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(121291243640956201)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(121292499734956213)
,p_name=>'P414_COD_EMPRESA'
,p_item_sequence=>40
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(121292599643956214)
,p_name=>'P414_NRO_PLANILLA'
,p_item_sequence=>50
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(121291951877956208)
,p_name=>'New'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(121292136213956210)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(121292059600956209)
,p_event_id=>wwv_flow_imp.id(121291951877956208)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'addAdju();'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(121292781518956216)
,p_name=>'New_1'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(121292348016956212)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(121292832358956217)
,p_event_id=>wwv_flow_imp.id(121292781518956216)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'doDescarga(apex.item(''P_COD_EMPRESA'').getValue(), apex.item(''P414_NRO_PLANILLA'').getValue());'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(121292965025956218)
,p_name=>'New_2'
,p_event_sequence=>30
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(121293082021956219)
,p_event_id=>wwv_flow_imp.id(121292965025956218)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P414_COD_EMPRESA := 1;',
':P414_NRO_PLANILLA := 357665;-- 357886;'))
,p_attribute_02=>'P414_COD_EMPRESA,P414_NRO_PLANILLA'
,p_attribute_03=>'P414_NRO_PLANILLA,P414_COD_EMPRESA'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(121292271136956211)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'New'
,p_process_sql_clob=>':P414_CLIE:=1;'
,p_process_clob_language=>'PLSQL'
);
wwv_flow_imp.component_end;
end;
/
