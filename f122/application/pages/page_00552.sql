prompt --application/pages/page_00552
begin
--   Manifest
--     PAGE: 00552
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
 p_id=>552
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'VISUALIZAR  ARCHIVOS'
,p_alias=>'VISUALIZAR-ARCHIVOS'
,p_step_title=>'VISUALIZAR  ARCHIVOS'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'Y'
,p_page_component_map=>'03'
,p_last_updated_by=>'HSEGOVIA'
,p_last_upd_yyyymmddhh24miss=>'20230708080711'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(176437753947080834)
,p_name=>'LISTADO DE ARCHIVOS &P552_TITULO.'
,p_template=>wwv_flow_imp.id(40125238939263661)
,p_display_sequence=>1030
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_template_options=>'#DEFAULT#:t-Region--accent1:t-Region--scrollBody:t-Form--stretchInputs'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_grid_column_span=>3
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT  SEQ_ID,',
'            COD_EMPRESA,',
'            TIP_COMPROBANTE,',
'            SER_COMPROBANTE,',
'            NRO_COMPROBANTE,',
'            ID_FILE,',
'            FILE_NAME,',
'            DIR_NAME,',
'            DIRECTORIO,',
'            MYMETYPE,',
'            ROW_ID,',
'            text_name,',
'            DBMS_LOB.GETLENGTH(IMAGEN)VER,',
'            DBMS_LOB.GETLENGTH(IMAGEN)DESCARGAR',
'FROM VW_ARCHIVOS_ADJUNTOS',
'/*WHERE  COD_EMPRESA= :P_COD_EMPRESA',
'  AND  TIP_COMPROBANTE = :P552_TIPO',
'  AND  SER_COMPROBANTE = :P552_SERIE',
'  AND  NRO_COMPROBANTE = :P552_NUMERO',
'',
'',
'',
'',
'SELECT SEQ_ID SEQID,',
'       C001 COD_EMPRESA,',
'       C002 TIP_COMPROBANTE,',
'       C003 SER_COMPROBANTE,',
'       C004 NRO_COMPROBANTE,',
'       C005 ID_FILE,',
'       C006 FILE_NAME,',
'       C007 DIR_NAME, ',
'       C008 DIRECTORIO, ',
'       C009 MYMETYPE,',
'       C010  ROW_ID,',
'       DBMS_LOB.GETLENGTH(BLOB001)  imagen,',
'       DBMS_LOB.GETLENGTH(BLOB001)  descargar,       ',
'       C005 vER',
'FROM  APEX_COLLECTIONS',
'WHERE COLLECTION_NAME = ''ARCHIVOS_ADJUNTOS''',
'----AND   nvl(c020, ''O'') <> ''B''',
'',
'   AND   C001 COD_EMPRESA= :P_COD_EMPRESA',
'   AND   C002 TIP_COMPROBANTE = :P552_TIPO',
'   AND   C003 SER_COMPROBANTE = :P552_SERIE',
'   AND   C004 NRO_COMPROBANTE = :P552_NUMERO',
'',
'',
'ORDER BY SEQ_ID',
'*/',
';'))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P552_TIPO,P552_SERIE,P552_NUMERO'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(40147995650263667)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'No se encontraron Archivos.'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(176489377043673719)
,p_query_column_id=>1
,p_column_alias=>'SEQ_ID'
,p_column_display_sequence=>150
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(176438054421080837)
,p_query_column_id=>2
,p_column_alias=>'COD_EMPRESA'
,p_column_display_sequence=>20
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(176438111489080838)
,p_query_column_id=>3
,p_column_alias=>'TIP_COMPROBANTE'
,p_column_display_sequence=>30
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(176438254178080839)
,p_query_column_id=>4
,p_column_alias=>'SER_COMPROBANTE'
,p_column_display_sequence=>40
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(176438356955080840)
,p_query_column_id=>5
,p_column_alias=>'NRO_COMPROBANTE'
,p_column_display_sequence=>50
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(176438401571080841)
,p_query_column_id=>6
,p_column_alias=>'ID_FILE'
,p_column_display_sequence=>60
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(176438549508080842)
,p_query_column_id=>7
,p_column_alias=>'FILE_NAME'
,p_column_display_sequence=>70
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(176438672855080843)
,p_query_column_id=>8
,p_column_alias=>'DIR_NAME'
,p_column_display_sequence=>80
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(176438712601080844)
,p_query_column_id=>9
,p_column_alias=>'DIRECTORIO'
,p_column_display_sequence=>90
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(176438818092080845)
,p_query_column_id=>10
,p_column_alias=>'MYMETYPE'
,p_column_display_sequence=>100
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(176438957919080846)
,p_query_column_id=>11
,p_column_alias=>'ROW_ID'
,p_column_display_sequence=>110
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(176491361853673739)
,p_query_column_id=>12
,p_column_alias=>'TEXT_NAME'
,p_column_display_sequence=>120
,p_column_heading=>'Nombre del Archivo'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(176439255056080849)
,p_query_column_id=>13
,p_column_alias=>'VER'
,p_column_display_sequence=>140
,p_column_heading=>'Ver'
,p_use_as_row_header=>'N'
,p_column_link=>'javascript:$s(''P552_FILE_NAME'',''#FILE_NAME#'');$s(''P552_DIR_NAME'',''#DIR_NAME#'');$s(''P552_MYMETYPE'',''#MYMETYPE#'');$s(''P552_SEQ_ID'',''#SEQ_ID#'');;'
,p_column_linktext=>'<span class="fa fa-eye delete-note" aria-hidden="true"></span>'
,p_column_alignment=>'CENTER'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(176439174487080848)
,p_query_column_id=>14
,p_column_alias=>'DESCARGAR'
,p_column_display_sequence=>130
,p_column_heading=>'Descargar'
,p_use_as_row_header=>'N'
,p_column_format=>'DOWNLOAD:VW_ARCHIVOS_ADJUNTOS:IMAGEN:ROW_ID:::FILE_NAME:FECHA::attachment:<span class="fa fa-download-alt" aria-hidden="true"></span>:'
,p_column_alignment=>'CENTER'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(176437861476080835)
,p_plug_name=>'Ver'
,p_region_name=>'view_pdf'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--removeHeader:t-Region--accent1:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>1040
,p_plug_new_grid_row=>false
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  DECLARE',
'     V_URL   VARCHAR2(2500);',
'     vBlob blob;',
'     vmimetype varchar2(500); ',
'     vfilename varchar2(500);',
'     vdirname  varchar2(500); ',
'        ',
' BEGIN    ',
'',
'    if :P552_SEQ_ID is not null then       ',
'',
'         Sys.htp.p(''<p align="center">'');',
'         sys.htp.p( ''<iframe src="f''||''?''||''p=''||:APP_ID||'':''||:APP_PAGE_ID||'':''||:APP_SESSION||'':APPLICATION_PROCESS=recupera_blob:NO:"'');         ',
'         sys.htp.p('' height="1000px" width="1100px" ></iframe>'');',
'         sys.htp.p(''</p>'');',
'    else',
'         Sys.htp.p(''<div id="view_pdf"> <p align="center">SELECCIONE UN ARCHIVO</P></div>'');  ',
'    end if;',
'EXCEPTION',
'    WHEN OTHERS THEN',
'         Sys.htp.p(''<div id="view_pdf"> <p align="center">SELECCIONE UN ARCHIVO</P></div>''); ',
'END;',
' ',
'',
'',
'',
'',
' '))
,p_plug_source_type=>'NATIVE_PLSQL'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(176439379913080850)
,p_plug_name=>'PARAMETROS'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>990
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(176487534358673701)
,p_name=>'P552_TIPO'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(176439379913080850)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(176487657277673702)
,p_name=>'P552_SERIE'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(176439379913080850)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(176487724648673703)
,p_name=>'P552_NUMERO'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(176439379913080850)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(176487873758673704)
,p_name=>'P552_TITULO'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(176439379913080850)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(176488354907673709)
,p_name=>'P552_SEQ_ID'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(176439379913080850)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(176490535988673731)
,p_name=>'P552_FILE_NAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(176439379913080850)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(176490644047673732)
,p_name=>'P552_DIR_NAME'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(176439379913080850)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(176490715231673733)
,p_name=>'P552_MYMETYPE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(176439379913080850)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(176491580433673741)
,p_name=>'P552_PAGINA_ORIGEN'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(176439379913080850)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(176489479307673720)
,p_name=>'New_1'
,p_event_sequence=>20
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'.delete-note'
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(176488521167673711)
,p_event_id=>wwv_flow_imp.id(176489479307673720)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'$(''#view_pdf'').trigger(''apexrefresh''); '
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(176489778107673723)
,p_event_id=>wwv_flow_imp.id(176489479307673720)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_02=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(176489844107673724)
,p_name=>'da_view_pdf'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P552_SEQ_ID'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(176490384006673729)
,p_event_id=>wwv_flow_imp.id(176489844107673724)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'null;'
,p_attribute_02=>'P552_FILE_NAME,P552_DIR_NAME,P552_MYMETYPE,P552_SEQ_ID'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(176488250240673708)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'CARGA_DATOS'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P552_TITULO:= :P552_TIPO||:P552_SERIE||''-''||:P552_NUMERO; ',
' '))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_imp.component_end;
end;
/
