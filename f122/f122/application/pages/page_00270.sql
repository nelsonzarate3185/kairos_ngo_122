prompt --application/pages/page_00270
begin
--   Manifest
--     PAGE: 00270
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
 p_id=>270
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'SMSESSGG - Mantenimiento/Dpto. SS.GG'
,p_alias=>'SMSESSGG1'
,p_step_title=>'Mantenimiento/Dpto. SS.GG'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_last_updated_by=>'MARIANABLA'
,p_last_upd_yyyymmddhh24miss=>'20221228111639'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(65619960048893801)
,p_plug_name=>'Mantenimiento/Dpto. SS.GG'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>990
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(65620073617893802)
,p_plug_name=>'PARAMETROS'
,p_parent_plug_id=>wwv_flow_imp.id(65619960048893801)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(65620105213893803)
,p_plug_name=>'REPORTE'
,p_parent_plug_id=>wwv_flow_imp.id(65620073617893802)
,p_region_template_options=>'#DEFAULT#:margin-top-sm'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
' SELECT SEQ_ID,',
'        C002 COD_EMPRESA,',
'        C003 COD_SUCURSAL,',
'        C004 NRO_PEDIDO,',
'        C005 FECHA,',
'        C006 ESTADO,',
'        C007 ESTADO_DESC,',
'        C008 COMENTARIO,',
'        C009 COD_PERSONA,',
'        C010 SOLICITANTE,',
'        C011 COD_EMPLEADO_IT,',
'        C012 RESPONSABLE_IT,',
'        C013 COD_SECCION,',
'        C014 SECCION,',
'        C015 FECHA_PLAZO,',
'        C016 MODULO,',
'        C017 URGENTE,',
'        C018 FECHA_INICIO_TRABAJO,',
'        C019 FECHA_FIN_TRABAJO,',
'        NULL CREAR',
'   FROM APEX_COLLECTIONS',
'  WHERE COLLECTION_NAME = ''DETALLE_SMSESSGG''',
'    AND (C020 IS NULL OR C020 IN (''U'', ''I''));                                              '))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'REPORTE'
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
 p_id=>wwv_flow_imp.id(65623201971893834)
,p_max_row_count=>'1000000'
,p_no_data_found_message=>'No se han encontrado datos.'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'MARIANABLA'
,p_internal_uid=>65623201971893834
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(65623417791893836)
,p_db_column_name=>'COD_EMPRESA'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Cod Empresa'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(65623555011893837)
,p_db_column_name=>'COD_SUCURSAL'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Cod Sucursal'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(65623615549893838)
,p_db_column_name=>'NRO_PEDIDO'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Nro. Solicitud'
,p_column_link=>'javascript:$s(''P270_VER_DATOS'',''#SEQ_ID#'');'
,p_column_linktext=>'#NRO_PEDIDO#'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(65623723984893839)
,p_db_column_name=>'FECHA'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Fecha'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(65623851929893840)
,p_db_column_name=>'ESTADO'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Estado'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(65623949075893841)
,p_db_column_name=>'ESTADO_DESC'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Estado Desc'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(65624019660893842)
,p_db_column_name=>'COMENTARIO'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Comentario'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(65624123866893843)
,p_db_column_name=>'COD_PERSONA'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Cod Persona'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(65624205281893844)
,p_db_column_name=>'SOLICITANTE'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Solicitante'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(65624368054893845)
,p_db_column_name=>'COD_EMPLEADO_IT'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Cod Empleado It'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(65624424156893846)
,p_db_column_name=>'RESPONSABLE_IT'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Responsable '
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(65624567467893847)
,p_db_column_name=>'COD_SECCION'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Cod Seccion'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(65624656218893848)
,p_db_column_name=>'SECCION'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>unistr('Secci\00F3n')
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(65624784254893849)
,p_db_column_name=>'FECHA_PLAZO'
,p_display_order=>150
,p_column_identifier=>'O'
,p_column_label=>'Fecha a Finalizar'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(65624866273893850)
,p_db_column_name=>'MODULO'
,p_display_order=>160
,p_column_identifier=>'P'
,p_column_label=>'Modulo'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(65727573753343901)
,p_db_column_name=>'URGENTE'
,p_display_order=>170
,p_column_identifier=>'Q'
,p_column_label=>'Prioridad'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_rpt_named_lov=>wwv_flow_imp.id(65748835490428324)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(65727662070343902)
,p_db_column_name=>'FECHA_INICIO_TRABAJO'
,p_display_order=>180
,p_column_identifier=>'R'
,p_column_label=>'Fecha Inicio Trabajo'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(65727700914343903)
,p_db_column_name=>'FECHA_FIN_TRABAJO'
,p_display_order=>190
,p_column_identifier=>'S'
,p_column_label=>'Fecha Fin Trabajo'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(65729360618343919)
,p_db_column_name=>'SEQ_ID'
,p_display_order=>200
,p_column_identifier=>'T'
,p_column_label=>'Seq Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(65729719139343923)
,p_db_column_name=>'CREAR'
,p_display_order=>210
,p_column_identifier=>'V'
,p_column_label=>'&nbsp'
,p_column_link=>'javascript:$s(''P270_ABRE_SMPSGADM'',''#NRO_PEDIDO#'');'
,p_column_linktext=>'<span aria-hidden="true" class="fa fa-plus-square"></span>'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(65739727552344445)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'657398'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>15
,p_report_columns=>'NRO_PEDIDO:FECHA:SECCION:FECHA_PLAZO:SOLICITANTE:RESPONSABLE_IT:URGENTE:CREAR:'
);
wwv_flow_imp_page.create_worksheet_condition(
 p_id=>wwv_flow_imp.id(65837741014948404)
,p_report_id=>wwv_flow_imp.id(65739727552344445)
,p_name=>'Prioridad Alta'
,p_condition_type=>'HIGHLIGHT'
,p_allow_delete=>'Y'
,p_column_name=>'URGENTE'
,p_operator=>'='
,p_expr=>'Alta'
,p_condition_sql=>' (case when ("URGENTE" = #APXWS_EXPR#) then #APXWS_HL_ID# end) '
,p_condition_display=>'#APXWS_COL_NAME# = ''Alta''  '
,p_enabled=>'Y'
,p_highlight_sequence=>10
,p_column_bg_color=>'#cb0000'
);
wwv_flow_imp_page.create_worksheet_condition(
 p_id=>wwv_flow_imp.id(65838127172948405)
,p_report_id=>wwv_flow_imp.id(65739727552344445)
,p_name=>'Prioridad Baja'
,p_condition_type=>'HIGHLIGHT'
,p_allow_delete=>'Y'
,p_column_name=>'URGENTE'
,p_operator=>'='
,p_expr=>'Baja'
,p_condition_sql=>' (case when ("URGENTE" = #APXWS_EXPR#) then #APXWS_HL_ID# end) '
,p_condition_display=>'#APXWS_COL_NAME# = ''Baja''  '
,p_enabled=>'Y'
,p_highlight_sequence=>10
,p_column_bg_color=>'#ecf001'
);
wwv_flow_imp_page.create_worksheet_condition(
 p_id=>wwv_flow_imp.id(65838577261948405)
,p_report_id=>wwv_flow_imp.id(65739727552344445)
,p_name=>'Prioridad Media'
,p_condition_type=>'HIGHLIGHT'
,p_allow_delete=>'Y'
,p_column_name=>'URGENTE'
,p_operator=>'='
,p_expr=>'Media'
,p_condition_sql=>' (case when ("URGENTE" = #APXWS_EXPR#) then #APXWS_HL_ID# end) '
,p_condition_display=>'#APXWS_COL_NAME# = ''Media''  '
,p_enabled=>'Y'
,p_highlight_sequence=>10
,p_column_bg_color=>'#f6bd02'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(65620276837893804)
,p_plug_name=>'VARIABLES'
,p_parent_plug_id=>wwv_flow_imp.id(65619960048893801)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(65728098356343906)
,p_plug_name=>'PIE'
,p_parent_plug_id=>wwv_flow_imp.id(65619960048893801)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>30
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(65728150394343907)
,p_plug_name=>'PIE1'
,p_parent_plug_id=>wwv_flow_imp.id(65728098356343906)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(65728697356343912)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(65728150394343907)
,p_button_name=>'TRABAJAR'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--stretch:t-Button--gapTop'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Crear Solicitud'
,p_button_redirect_url=>'f?p=&APP_ID.:272:&SESSION.::&DEBUG.:272::'
,p_grid_new_row=>'N'
,p_grid_column=>12
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(65621987565893821)
,p_button_sequence=>200
,p_button_plug_id=>wwv_flow_imp.id(65620276837893804)
,p_button_name=>'EJECUTAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--stretch:t-Button--gapTop'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Buscar'
,p_warn_on_unsaved_changes=>null
,p_grid_new_row=>'N'
,p_grid_column=>11
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(65623079376893832)
,p_button_sequence=>210
,p_button_plug_id=>wwv_flow_imp.id(65620276837893804)
,p_button_name=>'LIMPIAR'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--stretch:t-Button--gapTop'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Limpiar'
,p_grid_new_row=>'N'
,p_grid_column=>12
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(67790062020163722)
,p_branch_name=>'SMPSGADM'
,p_branch_action=>'f?p=&APP_ID.:276:&SESSION.::&DEBUG.:276:P276_P_NRO_PEDIDO:&P270_ABRE_SMPSGADM.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
,p_branch_condition_type=>'REQUEST_EQUALS_CONDITION'
,p_branch_condition=>'SMPSGADM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(65620332302893805)
,p_name=>'P270_COD_EMPRESA'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(65620276837893804)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(65620407695893806)
,p_name=>'P270_COD_MODULO'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(65620276837893804)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(65620532320893807)
,p_name=>'P270_COD_SUCURSAL'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(65620276837893804)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(65620692283893808)
,p_name=>'P270_COD_USUARIO'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(65620276837893804)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(65620776060893809)
,p_name=>'P270_ESTADO'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(65620276837893804)
,p_prompt=>'Estado'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC2:PENDIENTE;P,APROBADO;A,RECHAZADO;R,FINALIZADO;F,TODOS;T'
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--Seleccionar--'
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(65620891133893810)
,p_name=>'P270_SECCION'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(65620276837893804)
,p_prompt=>unistr('Secci\00F3n')
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_SECCION_SMSESSGG'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT COD_SECCION codigo_rapido,',
'	   DESCRIPCION nombre , ',
'	   1 ORDEN',
'  FROM RH_SECCIONES',
'UNION ALL',
'SELECT ''T'' codigo_rapido,',
'	   ''TODOS'' nombre , ',
'	   3 ',
'FROM DUAL',
'ORDER BY 3 DESC'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--Seleccionar--'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(65621070006893812)
,p_name=>'P270_IT_RESPONSABLE'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(65620276837893804)
,p_prompt=>'Responsable'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_IT_RESPONSABLES_SMSESSGG'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT p.cod_persona codigo_rapido,',
'	   nombre nombre',
'  FROM rh_empleados e, personas p ',
' WHERE e.cod_empresa = :P_COD_EMPRESA',
'   AND e.cod_persona = p.cod_persona ',
'   AND nvl(e.activo, ''N'') = ''S'' ',
'   AND cod_cargo in (''229'',''211'',''269'',''312'',''357'', ',
'   ''229'',''211'',''269'',''312'',''357'',''378'',''377'',''440'',''422'')',
'UNION ALL',
'SELECT ''T'' codigo_rapido,',
'	   ''TODOS'' nombre',
'FROM DUAL',
'ORDER BY 1 ASC;'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--Seleccionar--'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(65621181807893813)
,p_name=>'P270_FECHA_INI'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(65620276837893804)
,p_prompt=>'Fecha Desde'
,p_display_as=>'NATIVE_DATE_PICKER_JET'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'POPUP'
,p_attribute_03=>'NONE'
,p_attribute_06=>'NONE'
,p_attribute_09=>'N'
,p_attribute_11=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(65621232335893814)
,p_name=>'P270_FECHA_FIN'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(65620276837893804)
,p_prompt=>'Fecha Hasta'
,p_display_as=>'NATIVE_DATE_PICKER_JET'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'POPUP'
,p_attribute_03=>'NONE'
,p_attribute_06=>'NONE'
,p_attribute_09=>'N'
,p_attribute_11=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(65621366915893815)
,p_name=>'P270_FINALIZADO'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_imp.id(65620276837893804)
,p_prompt=>'Incluir Terminados'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#:margin-top-md'
,p_attribute_01=>'N'
,p_attribute_02=>'F'
,p_attribute_03=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(65621404252893816)
,p_name=>'P270_URGENTE'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(65620276837893804)
,p_prompt=>'Prioridad'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC2:BAJA;B,MEDIA;M,ALTA;A,TODOS;T'
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--Seleccionar--'
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(65621670960893818)
,p_name=>'P270_VISUAL'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_imp.id(65620276837893804)
,p_prompt=>'&nbsp'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_lov=>'STATIC2:Todos;T,Mensual;M,Semanal;S,Diario;D'
,p_begin_on_new_line=>'N'
,p_colspan=>4
,p_grid_column=>7
,p_grid_label_column_span=>0
,p_field_template=>wwv_flow_imp.id(40186365556263678)
,p_item_template_options=>'#DEFAULT#:margin-top-md'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'4'
,p_attribute_02=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(65621718840893819)
,p_name=>'P270_SOLICITANTE'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(65620276837893804)
,p_prompt=>'Solicitante'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'LV_SOLICITANTE_SMSESSGG'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT PC.COD_PERSONA codigo_rapido,',
'       PS1.NOMBRE nombre , ',
'       1 ORDEN',
'  FROM SM_ORD_PEDIDOS_SSGG pc,',
'       personas ps1',
' WHERE PC.COD_EMPRESA  = :P_COD_EMPRESA',
'   AND pc.COD_PERSONA  = ps1.cod_persona',
'group by pc.cod_persona, ',
'		  ps1.nombre',
'',
'union all',
'SELECT p.cod_persona codigo_rapido, ',
'	   p.nombre ,',
'	   2 ',
'  FROM rh_empleados e, ',
'       personas p , ',
'       usuarios u',
' WHERE e.cod_empresa = :P_COD_EMPRESA ',
'   AND e.cod_persona = p.cod_persona ',
'   AND nvl(e.activo, ''S'') = ''S''  ',
'   AND u.cod_empresa = e.cod_empresa',
'   AND u.cod_persona = e.cod_persona',
'   AND u.cod_usuario = :P270_COD_USUARIO',
'UNION ALL',
'SELECT ''T'' codigo_rapido,',
'	   ''TODOS'' nombre , ',
'	   3 ',
'  FROM DUAL',
'',
'UNION ALL',
'SELECT ''N'' codigo_rapido,',
'       ''NINGUNO'' nombre , ',
'       4 ',
'  FROM DUAL',
'ORDER BY 3 DESC;'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--Seleccionar--'
,p_lov_cascade_parent_items=>'P270_COD_USUARIO'
,p_ajax_items_to_submit=>'P270_COD_USUARIO'
,p_ajax_optimize_refresh=>'Y'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(65621876753893820)
,p_name=>'P270_TIPO'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_imp.id(65620276837893804)
,p_prompt=>'Tipo'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC2:FORMULARIOS ERP;Formularios ERP,REPORTES ERP;Reportes ERP,OBI REP;OBI REP,OBI;OBI,WEB NGO;WEB NGO,INFRAESTRUCTURA;INFRAESTRUCTURA,SOPORTE APLICACIONES;SOPORTE APLICACIONES,INTEGRACION;INTEGRACION,SOPORTE RED;SOPORTE RED,SOPORTE EQUIPO;SOPORTE'
||' EQUIPO,OTROS;OTROS,SOPORTE ADMINISTRATIVO;SOPORTE ADMINISTRATIVO'
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--Seleccionar--'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(65622388926893825)
,p_name=>'P270_VER_SOLICITANTE'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(65620276837893804)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(65622413548893826)
,p_name=>'P270_COD_PERSONA'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(65620276837893804)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(65728219799343908)
,p_name=>'P270_ESTADO_DESC'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(65728150394343907)
,p_prompt=>'Estado'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_colspan=>2
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(65728361149343909)
,p_name=>'P270_COMENTARIO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(65728150394343907)
,p_prompt=>'Comentario'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_begin_on_new_line=>'N'
,p_colspan=>4
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(65728461820343910)
,p_name=>'P270_FECHA_INICIO_TRABAJO'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(65728150394343907)
,p_prompt=>'Inicio Trabajo'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(65728527116343911)
,p_name=>'P270_FECHA_FIN_TRABAJO'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(65728150394343907)
,p_prompt=>'Fin Trabajo'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(65728749109343913)
,p_name=>'P270_ABRE_SMPSGADM'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(65620105213893803)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(65729284881343918)
,p_name=>'P270_VER_DATOS'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(65620105213893803)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(67098843643295108)
,p_name=>'P270_AUX_MSJ'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(65620276837893804)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(67790162134163723)
,p_name=>'P270_URL'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(65620105213893803)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(67792271545163744)
,p_name=>'P270_AUX_NRO_PEDIDO'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(65620105213893803)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(68939351408359513)
,p_name=>'P270_AUX_ACCION'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(65620105213893803)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(65622088391893822)
,p_name=>'DA_EJECUTAR'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(65621987565893821)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(65727916869343905)
,p_event_id=>wwv_flow_imp.id(65622088391893822)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P270_AUX_MSJ := NULL;',
'IF (TO_DATE(:P270_FECHA_INI, ''DD/MM/YYYY'') < TO_DATE(:P270_FECHA_FIN, ''DD/MM/YYYY'') OR :P270_FECHA_INI IS NULL OR :P270_FECHA_FIN IS NULL) THEN',
'    SMSESSGG.PR_CARGA_COLECCION(PI_COD_EMPRESA     => :P270_COD_EMPRESA,',
'                                PI_ESTADO          => :P270_ESTADO,',
'                                PI_SECCION         => :P270_SECCION,    ',
'                                PI_SOLICITANTE     => :P270_SOLICITANTE,',
'                                PI_FINALIZADO      => :P270_FINALIZADO,',
'                                PI_URGENTE         => :P270_URGENTE,',
'                                PI_TIPO            => :P270_TIPO,',
'                                PI_IT_RESPONSABLE  => :P270_IT_RESPONSABLE,',
'                                PI_VISUAL          => :P270_VISUAL,',
'                                PI_FECHA_INI       => TO_DATE(:P270_FECHA_INI, ''DD/MM/YYYY''),',
'                                PI_FECHA_FIN       => TO_DATE(:P270_FECHA_FIN, ''DD/MM/YYYY''));',
'ELSE',
'    :P270_AUX_MSJ := ''La fecha final debe ser mayor que la fecha inicial.'';',
'END IF;                                    ',
''))
,p_attribute_02=>'P270_COD_EMPRESA,P270_ESTADO,P270_SECCION,P270_SOLICITANTE,P270_FINALIZADO,P270_URGENTE, P270_TIPO,P270_IT_RESPONSABLE,P270_VISUAL,P270_FECHA_INI,P270_FECHA_FIN'
,p_attribute_03=>'P270_AUX_MSJ'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(67098724488295107)
,p_event_id=>wwv_flow_imp.id(65622088391893822)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'&P270_AUX_MSJ.'
,p_attribute_02=>'Error'
,p_attribute_03=>'warning'
,p_attribute_04=>'fa-warning'
,p_attribute_06=>'Aceptar'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P270_AUX_MSJ'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(65622134577893823)
,p_event_id=>wwv_flow_imp.id(65622088391893822)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(65620105213893803)
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P270_AUX_MSJ'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(65622752082893829)
,p_name=>'DA_SOLICITANTE'
,p_event_sequence=>20
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(65622864854893830)
,p_event_id=>wwv_flow_imp.id(65622752082893829)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P270_SOLICITANTE'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P270_VER_SOLICITANTE'
,p_client_condition_expression=>'S'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(65622935533893831)
,p_event_id=>wwv_flow_imp.id(65622752082893829)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P270_SOLICITANTE'
,p_client_condition_type=>'NOT_EQUALS'
,p_client_condition_element=>'P270_VER_SOLICITANTE'
,p_client_condition_expression=>'S'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(65728811748343914)
,p_name=>'DA_ABRE_SMPSGADM'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P270_ABRE_SMPSGADM'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(65728986930343915)
,p_event_id=>wwv_flow_imp.id(65728811748343914)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT APEX_PAGE.GET_URL (  p_page   => 276,',
'                            p_items  => ''P276_P_NRO_PEDIDO'',',
'                            p_values => (''''||:P270_ABRE_SMPSGADM||'''')) f_url_1',
'  INTO :P270_URL',
'  FROM DUAL;',
''))
,p_attribute_02=>'P270_ABRE_SMPSGADM'
,p_attribute_03=>'P270_URL'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp.component_end;
end;
/
begin
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2022.04.12'
,p_release=>'22.1.0'
,p_default_workspace_id=>2715162693355865
,p_default_application_id=>122
,p_default_id_offset=>0
,p_default_owner=>'INV'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(67790249556163724)
,p_event_id=>wwv_flow_imp.id(65728811748343914)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var url = apex.item("P270_URL").getValue();',
'apex.navigation.redirect (url);',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(65729481354343920)
,p_name=>'DA_VER_DATOS'
,p_event_sequence=>50
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P270_VER_DATOS'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(65729590794343921)
,p_event_id=>wwv_flow_imp.id(65729481354343920)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT C007, C008, C018, C019',
'  INTO :P270_ESTADO_DESC, :P270_COMENTARIO, :P270_FECHA_INICIO_TRABAJO, :P270_FECHA_FIN_TRABAJO',
'  FROM APEX_COLLECTIONS',
' WHERE COLLECTION_NAME = ''DETALLE_SMSESSGG''',
'   AND SEQ_ID = :P270_VER_DATOS; ',
'',
''))
,p_attribute_02=>'P270_VER_DATOS'
,p_attribute_03=>'P270_ESTADO_DESC,P270_COMENTARIO,P270_FECHA_INICIO_TRABAJO,P270_FECHA_FIN_TRABAJO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(66602261495150401)
,p_name=>'DA_VISUAL'
,p_event_sequence=>60
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P270_VISUAL'
,p_condition_element=>'P270_VISUAL'
,p_triggering_condition_type=>'NOT_EQUALS'
,p_triggering_expression=>'T'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(66602334104150402)
,p_event_id=>wwv_flow_imp.id(66602261495150401)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P270_FECHA_INI,P270_FECHA_FIN'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(66602456295150403)
,p_name=>'DA_FECHA_FIN'
,p_event_sequence=>70
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P270_FECHA_FIN'
,p_condition_element=>'P270_FECHA_FIN'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'focusout'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(66602550009150404)
,p_event_id=>wwv_flow_imp.id(66602456295150403)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>':P270_VISUAL:=''T'';'
,p_attribute_03=>'P270_VISUAL'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(66602684848150405)
,p_name=>'DA_FECHA_INI'
,p_event_sequence=>80
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P270_FECHA_INI'
,p_condition_element=>'P270_FECHA_INI'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'focusout'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(66602742054150406)
,p_event_id=>wwv_flow_imp.id(66602684848150405)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>':P270_VISUAL:=''T'';'
,p_attribute_03=>'P270_VISUAL'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(67790794492163729)
,p_name=>'DA_DIALOG_CLOSED'
,p_event_sequence=>100
,p_triggering_element_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_element=>'window'
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(67792328622163745)
,p_event_id=>wwv_flow_imp.id(67790794492163729)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P270_AUX_NRO_PEDIDO := NVL(:P276_NRO_PEDIDO, :P272_NRO_PEDIDO);',
':P270_AUX_ACCION := NVL(:P276_AUX_ACCION, :P272_AUX_ACCION);'))
,p_attribute_02=>'P276_NRO_PEDIDO,P272_NRO_PEDIDO,P276_AUX_ACCION,P272_AUX_ACCION'
,p_attribute_03=>'P270_AUX_NRO_PEDIDO,P270_AUX_ACCION'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(67790887744163730)
,p_event_id=>wwv_flow_imp.id(67790794492163729)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.message.showPageSuccess(''La solicitud ''+ apex.item("P270_AUX_NRO_PEDIDO").getValue() + '' se ''+ apex.item("P270_AUX_ACCION").getValue() +'' correctamente.'');'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(67790922208163731)
,p_event_id=>wwv_flow_imp.id(67790794492163729)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SMSESSGG.PR_CARGA_COLECCION(PI_COD_EMPRESA     => :P270_COD_EMPRESA,',
'                            PI_ESTADO          => :P270_ESTADO,',
'                            PI_SECCION         => :P270_SECCION,    ',
'                            PI_SOLICITANTE     => :P270_SOLICITANTE,',
'                            PI_FINALIZADO      => :P270_FINALIZADO,',
'                            PI_URGENTE         => :P270_URGENTE,',
'                            PI_TIPO            => :P270_TIPO,',
'                            PI_IT_RESPONSABLE  => :P270_IT_RESPONSABLE,',
'                            PI_VISUAL          => :P270_VISUAL,',
'                            PI_FECHA_INI       => TO_DATE(:P270_FECHA_INI, ''DD/MM/YYYY''),',
'                            PI_FECHA_FIN       => TO_DATE(:P270_FECHA_FIN, ''DD/MM/YYYY''));',
''))
,p_attribute_02=>'P270_COD_EMPRESA,P270_ESTADO,P270_SECCION,P270_SOLICITANTE,P270_FINALIZADO,P270_URGENTE,P270_TIPO,P270_IT_RESPONSABLE,P270_VISUAL,P270_FECHA_INI,P270_FECHA_FIN'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(67791095982163732)
,p_event_id=>wwv_flow_imp.id(67790794492163729)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(65620105213893803)
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(65622295967893824)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_INIT'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'--PRE FORM',
':P_COD_MODULO := ''SM'';',
':P270_COD_EMPRESA := NVL(:P_COD_EMPRESA, ''1'');',
':P270_COD_USUARIO := NVL(:P_COD_USUARIO, :APP_USER);',
':P270_COD_SUCURSAL := NVL(:P_COD_SUCURSAL, ''01'');',
':P270_COD_MODULO := :P_COD_MODULO;',
'',
'SMSESSGG.PR_CONFIRMA_SOLICITANTE(PI_COD_EMPRESA => :P270_COD_EMPRESA,',
'                                 PI_COD_USUARIO => :P270_COD_USUARIO, ',
'                                 PO_COD_PERSONA => :P270_COD_PERSONA, ',
'                                 PO_SOLICITANTE => :P270_SOLICITANTE); ',
'',
'IF :P270_COD_PERSONA IS NOT NULL OR :P270_IT_RESPONSABLE IS NOT NULL THEN',
'    :P270_SOLICITANTE := ''N''; --Todos',
'END IF;',
'',
':P270_VER_SOLICITANTE := busca_permiso( :P270_COD_EMPRESA, ',
'                                        ''SMSESSGG'', ',
'                                        :P270_COD_USUARIO, ',
'                                        ''VER_SOLICITANTE'') ;',
'',
'IF NVL(:P270_VER_SOLICITANTE, ''N'') = ''S'' THEN',
'    :P270_SOLICITANTE := ''T''; --Todos',
'END IF;',
'',
':P270_FINALIZADO := ''N'';',
'',
'--WHEN NEW FORM INSTANCE',
':P270_VISUAL := ''T'';',
'IF :P270_COD_PERSONA  IS NOT NULL THEN',
'    :P270_IT_RESPONSABLE := :P270_COD_PERSONA;',
'END IF;',
'',
'SMSESSGG.PR_CARGA_COLECCION(PI_COD_EMPRESA     => :P270_COD_EMPRESA,',
'                            PI_ESTADO          => :P270_ESTADO,',
'                            PI_SECCION         => :P270_SECCION,    ',
'                            PI_SOLICITANTE     => :P270_SOLICITANTE,',
'                            PI_FINALIZADO      => :P270_FINALIZADO,',
'                            PI_URGENTE         => :P270_URGENTE,',
'                            PI_TIPO            => :P270_TIPO,',
'                            PI_IT_RESPONSABLE  => :P270_IT_RESPONSABLE,',
'                            PI_VISUAL          => :P270_VISUAL,',
'                            PI_FECHA_INI       => TO_DATE(:P270_FECHA_INI, ''DD/MM/YYYY''),',
'                            PI_FECHA_FIN       => TO_DATE(:P270_FECHA_FIN, ''DD/MM/YYYY''));'))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(65623175163893833)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'CLEAR'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(65623079376893832)
);
wwv_flow_imp.component_end;
end;
/
