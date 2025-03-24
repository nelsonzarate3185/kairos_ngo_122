prompt --application/pages/page_00112
begin
--   Manifest
--     PAGE: 00112
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
 p_id=>112
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'BSAUTREC2'
,p_alias=>'BSAUTREC2'
,p_step_title=>'BSAUTREC2'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_last_updated_by=>'EMILIANOP'
,p_last_upd_yyyymmddhh24miss=>'20221031154155'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(49115462069642537)
,p_plug_name=>'BSAUTREC'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_new_grid_row=>false
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(49117352678643497)
,p_plug_name=>'P112 - REPORTE'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT           ',
'        seq_id p_id,',
'        c001 COD_PERSONA, ',
'        c002 NOM_ENTIDAD_EMISORA,',
'        c003 MARCA_TARJETA_CREDITO,',
'        C004 CLASE_TARJETA_CREDITO,',
'        C005 NRO_TARJETA_CREDITO,',
'        c006 ROW_ID,',
'        null EDITAR,',
'        null ELIMINAR',
'',
'FROM APEX_COLLECTIONS',
'WHERE COLLECTION_NAME = ''PERSONA_CEDULA''',
'--AND nvl(c020, ''O'') <> ''B'';',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P112_COD_PERSONA,P112_T_PERSONA'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'P91 - REPORTE'
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
 p_id=>wwv_flow_imp.id(50869956648339467)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'EMILIANOP'
,p_internal_uid=>50869956648339467
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(25559096140867152)
,p_db_column_name=>'COD_PERSONA'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Cod Persona'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(25504930917501109)
,p_db_column_name=>'NOM_ENTIDAD_EMISORA'
,p_display_order=>20
,p_column_identifier=>'G'
,p_column_label=>'Entidad Emisora'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(25505091055501110)
,p_db_column_name=>'MARCA_TARJETA_CREDITO'
,p_display_order=>30
,p_column_identifier=>'H'
,p_column_label=>'Marca'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(25505128441501111)
,p_db_column_name=>'CLASE_TARJETA_CREDITO'
,p_display_order=>40
,p_column_identifier=>'I'
,p_column_label=>'Clase'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(25505208254501112)
,p_db_column_name=>'NRO_TARJETA_CREDITO'
,p_display_order=>50
,p_column_identifier=>'J'
,p_column_label=>unistr('N\00FAmero')
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(29170807995440207)
,p_db_column_name=>'P_ID'
,p_display_order=>60
,p_column_identifier=>'K'
,p_column_label=>'P Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(29170941386440208)
,p_db_column_name=>'ROW_ID'
,p_display_order=>70
,p_column_identifier=>'L'
,p_column_label=>'Row Id'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(29171142145440210)
,p_db_column_name=>'EDITAR'
,p_display_order=>90
,p_column_identifier=>'N'
,p_column_label=>'Editar'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(29171233381440211)
,p_db_column_name=>'ELIMINAR'
,p_display_order=>100
,p_column_identifier=>'O'
,p_column_label=>'Eliminar'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(50901247487913164)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'253425'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>5
,p_report_columns=>'NOM_ENTIDAD_EMISORA:MARCA_TARJETA_CREDITO:CLASE_TARJETA_CREDITO:NRO_TARJETA_CREDITO'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(25557957432866196)
,p_name=>'P112_COD_PERSONA'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(49115462069642537)
,p_prompt=>'Persona'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_PERSONAS'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select cod_persona || '' - '' || ltrim( rtrim( nvl( nombre, nomb_fantasia ) ) ) d, cod_persona r ',
'from personas',
'order by 1;'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_read_only_when_type=>'ALWAYS'
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
 p_id=>wwv_flow_imp.id(25558328314866197)
,p_name=>'P112_T_PERSONA'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(49115462069642537)
,p_prompt=>'T. persona'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_lov=>unistr('STATIC:F\00EDsica;S,Juridica;N')
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186463825263678)
,p_item_template_options=>'#DEFAULT#:margin-top-sm:margin-bottom-sm:margin-left-sm:margin-right-sm'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'2'
,p_attribute_02=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(29170327080440202)
,p_name=>'P112_VALOR_RADIO_GROUP'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(49115462069642537)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(27064384501431949)
,p_name=>'DA_SET_VALUE_RADIO_GROUP'
,p_event_sequence=>20
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(27064411640431950)
,p_event_id=>wwv_flow_imp.id(27064384501431949)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P112_T_PERSONA'
,p_attribute_01=>'FUNCTION_BODY'
,p_attribute_06=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'',
'    V_ES_FISICA VARCHAR(15);',
'',
'BEGIN',
'',
'    SELECT ES_FISICA INTO V_ES_FISICA ',
'    FROM PERSONAS',
'    WHERE COD_PERSONA = :P112_COD_PERSONA;',
'    IF V_ES_FISICA = ''S'' THEN',
'       :P112_T_PERSONA := ''S'';',
'    ELSE',
'        :P112_T_PERSONA := ''N'';',
'    END IF;',
'',
'    --APEX_DEBUG.ERROR(:P112_T_PERSONA);',
'',
'EXCEPTION',
'',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(sqlerrm);',
'',
'END;'))
,p_attribute_07=>'P112_T_PERSONA'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(25504871700501108)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_INIT'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'--PRE-FORM',
':P_COD_MODULO := ''BS'';',
'',
'--:P112_COD_PERSONA := ''8636'';',
':P112_COD_PERSONA := ''8641'';',
'--:P112_COD_PERSONA := ''8679'';',
'',
'',
'',
'',
'BSAUTREC.pr_crear_collection (:P112_COD_PERSONA);'))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_imp.component_end;
end;
/
