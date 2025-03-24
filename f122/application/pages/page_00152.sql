prompt --application/pages/page_00152
begin
--   Manifest
--     PAGE: 00152
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
 p_id=>152
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'CAMECA - Medicion de Calidad'
,p_alias=>'CAMECA-MEDICION-DE-CALIDAD'
,p_step_title=>'CAMECA - Medicion de Calidad'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_error_handling_function=>'APEX_ERROR_HANDLING'
,p_error_notification_text=>'Tiene un mensaje'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function seleccionar(ponderacion_id) {',
'  var v_id = ponderacion_id;  ',
'  var cb = document.getElementById(v_id);',
'  console.log(v_id);',
'  if (cb.value == "S"){',
'     console.log("tilde s");',
'     $s(''P152_ACCION'',''AGREGAR'');',
'     $s(''P152_PONDERACION_ID'', ponderacion_id,false);',
'',
'  } else {',
'     console.log("tilde n"); ',
'      $s(''P152_ACCION'',''QUITAR'');',
'      $s(''P152_PONDERACION_ID'', ponderacion_id,false);',
'  }',
'}'))
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#PONDERACIONES{',
'   ',
'    font-weight: bold !important;;',
'    }'))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_last_updated_by=>'JUANSA'
,p_last_upd_yyyymmddhh24miss=>'20240201105710'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(34769042296974420)
,p_plug_name=>unistr('Medici\00F3n de Calidad')
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--compactTitle:t-BreadcrumbRegion--useRegionTitle'
,p_plug_template=>wwv_flow_imp.id(40134615190263663)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(34769162284974421)
,p_plug_name=>'Datos'
,p_region_template_options=>'#DEFAULT#:t-Region--noBorder:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>10
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(34769514277974424)
,p_plug_name=>'Ponderaciones'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--accent1:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>20
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(34769587711974425)
,p_plug_name=>'Ponderaciones'
,p_region_name=>'PONDERACIONES'
,p_parent_plug_id=>wwv_flow_imp.id(34769514277974424)
,p_region_template_options=>'#DEFAULT#:t-IRR-region--noBorders'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select C001 ID ,',
'       C002 TIPO,',
'       C003 DESCRIPCION,',
'       C004 POND_PROC,',
'      (apex_item.hidden(1, C001) ||',
'       APEX_ITEM.HIDDEN(2,TO_NUMBER(C004))||',
'       APEX_ITEM.SWITCH (p_idx => 3,',
'                         p_value => C006,',
'                         p_on_value => ''S'',',
unistr('                         p_on_label =>''Logr\00F3'','),
'                         p_off_value => ''N'',',
unistr('                         p_off_label =>''No Logr\00F3'','),
'                         p_item_id => seq_id,',
'                         p_item_label => apex_escape.html(C006),',
'                         p_attributes  => (''onchange="seleccionar(''||seq_id||'')"'' ))) MARCA,',
'       APEX_ITEM.TEXT(4,NULL)OBSERVACION,',
'       C006 LOGRADO',
'from apex_collections',
'where collection_name = ''CAMECA''',
'  AND C005= :P152_TIPO_AGENTE',
'ORDER BY TO_NUMBER(C001);'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P152_TIPO_AGENTE'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Ponderaciones'
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
 p_id=>wwv_flow_imp.id(34769730999974426)
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
,p_internal_uid=>34769730999974426
);
wwv_flow_imp_page.create_worksheet_col_group(
 p_id=>wwv_flow_imp.id(35469354475059125)
,p_name=>'TIPO'
,p_display_sequence=>10
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(24061398018950395)
,p_db_column_name=>'TIPO'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Tipo'
,p_column_type=>'STRING'
,p_use_as_row_header=>'Y'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(24061729245950396)
,p_db_column_name=>'DESCRIPCION'
,p_display_order=>30
,p_group_id=>wwv_flow_imp.id(35469354475059125)
,p_column_identifier=>'C'
,p_column_label=>'Descripcion'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(24062111199950396)
,p_db_column_name=>'MARCA'
,p_display_order=>60
,p_group_id=>wwv_flow_imp.id(35469354475059125)
,p_column_identifier=>'F'
,p_column_label=>'Marca'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'Y'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(24062587880950396)
,p_db_column_name=>'OBSERVACION'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Observacion'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(24062919889950396)
,p_db_column_name=>'ID'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Id'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(24063365502950396)
,p_db_column_name=>'POND_PROC'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Porcentaje'
,p_column_type=>'STRING'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(24063766979950397)
,p_db_column_name=>'LOGRADO'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Logrado'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(35421253846045442)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'113678'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'TIPO:DESCRIPCION:POND_PROC:MARCA:OBSERVACION'
);
wwv_flow_imp_page.create_worksheet_condition(
 p_id=>wwv_flow_imp.id(24064821170950397)
,p_report_id=>wwv_flow_imp.id(35421253846045442)
,p_name=>'Logrado'
,p_condition_type=>'HIGHLIGHT'
,p_allow_delete=>'Y'
,p_column_name=>'LOGRADO'
,p_operator=>'='
,p_expr=>'S'
,p_condition_sql=>' (case when ("LOGRADO" = #APXWS_EXPR#) then #APXWS_HL_ID# end) '
,p_condition_display=>'#APXWS_COL_NAME# = ''S''  '
,p_enabled=>'Y'
,p_highlight_sequence=>10
,p_row_bg_color=>'#d0f1cc'
);
wwv_flow_imp_page.create_worksheet_condition(
 p_id=>wwv_flow_imp.id(24064483949950397)
,p_report_id=>wwv_flow_imp.id(35421253846045442)
,p_name=>'No Logrado'
,p_condition_type=>'HIGHLIGHT'
,p_allow_delete=>'Y'
,p_column_name=>'LOGRADO'
,p_operator=>'='
,p_expr=>'N'
,p_condition_sql=>' (case when ("LOGRADO" = #APXWS_EXPR#) then #APXWS_HL_ID# end) '
,p_condition_display=>'#APXWS_COL_NAME# = ''N''  '
,p_enabled=>'Y'
,p_highlight_sequence=>20
,p_row_bg_color=>'#ffd6d2'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(36475142883500136)
,p_name=>'Totalizador'
,p_parent_plug_id=>wwv_flow_imp.id(34769514277974424)
,p_template=>wwv_flow_imp.id(40125238939263661)
,p_display_sequence=>10
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--textContent:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:u-colors:t-BadgeList--medium:t-BadgeList--dash:t-BadgeList--cols:t-Report--hideNoPagination'
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select sum(to_number(c004))Total,',
'       nvl(obtenido.total,0) obtenido',
'from apex_collections,',
'(SELECT sum(TO_NUMBER(C004))total',
'          FROM APEX_COLLECTIONS',
'          WHERE COLLECTION_NAME = ''CAMECA''',
'            AND C005 = :P152_TIPO_AGENTE ',
'            AND C006 = ''S'') obtenido',
'where collection_name = ''CAMECA''',
'  AND C005= :P152_TIPO_AGENTE',
'  group by obtenido.total'))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P152_TIPO_AGENTE'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(40137194923263664)
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
 p_id=>wwv_flow_imp.id(24065530457950398)
,p_query_column_id=>1
,p_column_alias=>'TOTAL'
,p_column_display_sequence=>10
,p_column_heading=>'Total'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(24065933540950398)
,p_query_column_id=>2
,p_column_alias=>'OBTENIDO'
,p_column_display_sequence=>20
,p_column_heading=>'Obtenido'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(24059962751950394)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(34769514277974424)
,p_button_name=>'Cancelar'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--simple:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Cancelar'
,p_button_position=>'CLOSE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(24060327431950394)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(34769514277974424)
,p_button_name=>'Guardar_Registro'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--simple:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Guardar Registro'
,p_button_position=>'CREATE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(24077693792950404)
,p_branch_name=>'Ir a 152'
,p_branch_action=>'f?p=&APP_ID.:152:&SESSION.:PREGUNTA:&DEBUG.:152:P152_ULT_AGENTE:&P152_AGENTE.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
,p_branch_condition_type=>'REQUEST_IN_CONDITION'
,p_branch_condition=>'Guardar_Registro'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(24078071444950404)
,p_branch_name=>'Ir a 153'
,p_branch_action=>'f?p=&APP_ID.:153:&SESSION.:PAGE153:&DEBUG.:153:P153_AGENTE_COD:&P152_ULT_AGENTE.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>20
,p_branch_condition_type=>'REQUEST_EQUALS_CONDITION'
,p_branch_condition=>'VER_DETALLES'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(24054461115950390)
,p_name=>'P152_TIPO_AGENTE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(34769162284974421)
,p_prompt=>'Tipo Agente'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_TIPO_AGENTE'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT C.COD_TIPO_AGENTE||''-''||initcap(C.DESCRIPCION) D,',
'       C.COD_TIPO_AGENTE R',
'  FROM CA_TIPO_AGENTE C',
' WHERE C.COD_EMPRESA = ''1'''))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_colspan=>2
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
,p_attribute_08=>'600'
,p_attribute_09=>'400'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(24054868453950392)
,p_name=>'P152_CALIFICACION'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(34769162284974421)
,p_prompt=>unistr('Calificaci\00F3n Total')
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_colspan=>1
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(24055283779950392)
,p_name=>'P152_ULT_AGENTE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(34769162284974421)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(24055699396950392)
,p_name=>'P152_AGENTE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(34769162284974421)
,p_prompt=>'Agente'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT E.COD_EMPLEADO||''-''||P.NOMBRE D,',
'      TO_NUMBER(E.COD_EMPLEADO) R',
'  FROM RH_EMPLEADOS E, PERSONAS P, RH_AREAS A, RH_DEPARTAMENTOS D',
' WHERE E.COD_EMPRESA = ''1''',
'   AND NVL(E.ACTIVO, ''S'') <> ''N''',
'   AND E.COD_PERSONA = P.COD_PERSONA',
'   AND E.COD_AREA = A.COD_AREA',
'   AND A.COD_EMPRESA = E.COD_EMPRESA',
'   AND A.COD_SUCURSAL = E.COD_SUCURSAL',
'   AND D.COD_DEPARTAMENTO = E.COD_DEPARTAMENTO',
'   AND E.COD_AREA = D.COD_AREA',
'   AND D.COD_EMPRESA = E.COD_EMPRESA',
'   AND D.COD_SUCURSAL = E.COD_SUCURSAL',
'   AND E.ACTIVO = ''S''',
'   AND D.COD_DEPARTAMENTO in(''1502'',''1503'')',
'   AND E.COD_TIPO_AGENTE = :P152_TIPO_AGENTE',
'UNION',
'SELECT ''1''||''-''||''LORENA PAOLA OLMEDO HERRERA''NOMBRE,TO_NUMBER(''1'') R',
'   FROM DUAL',
'  WHERE :P152_TIPO_AGENTE = 2',
'  UNION',
'SELECT ''4''||''-''||upper(''JONATHAN FRANCISCO BARRIOS PINO'')NOMBRE,TO_NUMBER(''4'') R',
'   FROM DUAL',
'  WHERE :P152_TIPO_AGENTE = 2',
'',
'/*  ',
'SELECT ''2''||''-''||''GUSTAVO ADRIAN AGUIRRE GONZALEZ''NOMBRE,TO_NUMBER(''2'') R',
'   FROM DUAL',
'  WHERE :P152_TIPO_AGENTE = 2',
'  UNION',
'SELECT ''3''||''-''||upper(''Alexis Armoa Garcia'')NOMBRE,TO_NUMBER(''3'') R',
'   FROM DUAL',
'  WHERE :P152_TIPO_AGENTE = 2',
'*/  ',
'  order by R'))
,p_lov_cascade_parent_items=>'P152_TIPO_AGENTE'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>30
,p_colspan=>3
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
,p_attribute_08=>'800'
,p_attribute_09=>'600'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(24056064273950392)
,p_name=>'P152_AREA'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(34769162284974421)
,p_prompt=>unistr('\00C1rea')
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(24056422274950392)
,p_name=>'P152_DPTO'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(34769162284974421)
,p_prompt=>'Departamento'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(24056842653950392)
,p_name=>'P152_FEC_HORA_LLAMADA'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(34769162284974421)
,p_prompt=>'Fecha y  Hora de Llamada'
,p_format_mask=>'YYYY-MM-DD"T"HH24:MI:SS'
,p_display_as=>'NATIVE_DATE_PICKER_JET'
,p_cSize=>30
,p_colspan=>2
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_attribute_01=>'Y'
,p_attribute_02=>'NATIVE'
,p_attribute_03=>'NONE'
,p_attribute_06=>'NONE'
,p_attribute_11=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(24057237730950393)
,p_name=>'P152_ID_LLAMADA'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(34769162284974421)
,p_prompt=>'ID Llamada'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>1
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(24057635686950393)
,p_name=>'P152_COD_CAMPANIA'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(34769162284974421)
,p_prompt=>unistr('Campa\00F1a')
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LOV_CAMPANIA_COD'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT C.COD_CAMPANIA||''-''||C.DESCRIPCION D,',
'       C.COD_CAMPANIA R ',
' FROM CRM_CAMPANIA C ',
'WHERE C.COD_EMPRESA = ''1''--:P_COD_EMPRESA',
'  AND C.ACTIVO = ''S'''))
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
,p_attribute_08=>'600'
,p_attribute_09=>'400'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(24058021132950393)
,p_name=>'P152_COD_CANAL'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(34769162284974421)
,p_prompt=>'Canal'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select DISTINCT T.COD_CANAL||''-''||T.DESCRIPCION D ,',
'       T.COD_CANAL R',
'  from CRM_CANAL T ',
' WHERE activo=''S'''))
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
,p_attribute_08=>'600'
,p_attribute_09=>'400'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(24058476408950393)
,p_name=>'P152_OBS'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(34769162284974421)
,p_prompt=>unistr('Observaci\00F3n')
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>30
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(24058877581950393)
,p_name=>'P152_PONDERACION_ID'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(34769162284974421)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(24059278180950393)
,p_name=>'P152_ACCION'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(34769162284974421)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(250695417974243222)
,p_name=>'P152_ID_EXISTENTE'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(34769162284974421)
,p_use_cache_before_default=>'NO'
,p_item_default=>'N'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(24067290263950399)
,p_validation_name=>'Valida_Tipo_Agente'
,p_validation_sequence=>10
,p_validation=>'P152_TIPO_AGENTE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Debe Elegir el Tipo de Agente'
,p_validation_condition=>'Guardar_Registro'
,p_validation_condition_type=>'REQUEST_IN_CONDITION'
,p_associated_item=>wwv_flow_imp.id(24054461115950390)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(24067664101950399)
,p_validation_name=>'Valida_Agente'
,p_validation_sequence=>20
,p_validation=>'P152_AGENTE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Debe de seleccionar al Agente'
,p_validation_condition=>'Guardar_Registro'
,p_validation_condition_type=>'REQUEST_IN_CONDITION'
,p_associated_item=>wwv_flow_imp.id(24055699396950392)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(24068047271950400)
,p_validation_name=>'Valida_Fecha_Hora'
,p_validation_sequence=>30
,p_validation=>'P152_FEC_HORA_LLAMADA'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Debe especificar la Fecha y Hora de la llamada'
,p_validation_condition=>'Guardar_Registro'
,p_validation_condition_type=>'REQUEST_IN_CONDITION'
,p_associated_item=>wwv_flow_imp.id(24056842653950392)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(24068433311950400)
,p_validation_name=>'Valida_ID_Llamada'
,p_validation_sequence=>40
,p_validation=>'P152_ID_LLAMADA'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Debe especiificar el ID de la llamada'
,p_validation_condition=>'Guardar_Registro'
,p_validation_condition_type=>'REQUEST_IN_CONDITION'
,p_associated_item=>wwv_flow_imp.id(24057237730950393)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(24066490738950399)
,p_validation_name=>'Validar Campania'
,p_validation_sequence=>50
,p_validation=>'P152_COD_CAMPANIA'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>unistr('Debe asignar Campa\00F1a')
,p_validation_condition=>'Guardar_Registro'
,p_validation_condition_type=>'REQUEST_IN_CONDITION'
,p_associated_item=>wwv_flow_imp.id(24057635686950393)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(24066863250950399)
,p_validation_name=>'Validar Canal'
,p_validation_sequence=>60
,p_validation=>'P152_COD_CANAL'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Debe asignar canal'
,p_validation_condition=>'Guardar_Registro'
,p_validation_condition_type=>'REQUEST_IN_CONDITION'
,p_associated_item=>wwv_flow_imp.id(24058021132950393)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(24069514388950400)
,p_name=>'DA_Cambiar_Agente'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P152_AGENTE'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(24070049242950401)
,p_event_id=>wwv_flow_imp.id(24069514388950400)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'CAMECA.PROCBD_TRAE_DPTO(''1'',',
'                        :P152_AGENTE,',
'                        :P152_AREA,',
'                        :P152_DPTO);'))
,p_attribute_02=>'P152_AGENTE'
,p_attribute_03=>'P152_AREA,P152_DPTO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(24070407564950401)
,p_name=>'DA_Cambiar_Tipo_Agente'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P152_TIPO_AGENTE'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(24070983987950401)
,p_event_id=>wwv_flow_imp.id(24070407564950401)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT SUM("PONDERACION_%")TOTAL',
' INTO :P152_CALIFICACION',
' FROM CA_PONDERACIONES C',
'WHERE C.TIPO_AGENTE = :P152_TIPO_AGENTE ',
'GROUP BY TIPO_AGENTE;',
'EXCEPTION ',
'WHEN NO_DATA_FOUND THEN ',
':P152_CALIFICACION:=''0'';',
'CAMECA.PROCBD_CARGAR_COL_CAMECA(:P152_TIPO_AGENTE);'))
,p_attribute_02=>'P152_TIPO_AGENTE'
,p_attribute_03=>'P152_CALIFICACION'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(24071467532950402)
,p_event_id=>wwv_flow_imp.id(24070407564950401)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(34769587711974425)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(24071994310950402)
,p_event_id=>wwv_flow_imp.id(24070407564950401)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(36475142883500136)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(24072380984950402)
,p_name=>'Da_Deshabilitar Btn_Guardar'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P152_TIPO_AGENTE'
,p_condition_element=>'P152_TIPO_AGENTE'
,p_triggering_condition_type=>'NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(24072865743950402)
,p_event_id=>wwv_flow_imp.id(24072380984950402)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(24060327431950394)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(24073399870950402)
,p_event_id=>wwv_flow_imp.id(24072380984950402)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(24060327431950394)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(24073757032950403)
,p_name=>'DA_Cambiar_Ponderacion_ID'
,p_event_sequence=>50
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P152_PONDERACION_ID'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(24074292829950403)
,p_event_id=>wwv_flow_imp.id(24073757032950403)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    v_check varchar2(10);',
'BEGIN',
'    APEX_DEBUG.ERROR(:P152_ACCION);',
'         case :P152_ACCION',
'             when ''AGREGAR''',
'                    then v_check := ''S'';',
'             else',
'                v_check := ''N'';',
'          end case;',
'           APEX_COLLECTION.UPDATE_MEMBER_ATTRIBUTE (',
'              p_collection_name => ''CAMECA'',',
'              p_seq   => :P152_PONDERACION_ID ,',
'              p_attr_number => 6,',
'              p_attr_value  => v_check);',
'/*exception',
'when others then',
'    RAISE_APPLICATION_ERROR(-20010,''Error'');*/',
'END;                        '))
,p_attribute_02=>'P152_PONDERACION_ID,P152_ACCION'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(24074723610950403)
,p_event_id=>wwv_flow_imp.id(24073757032950403)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(36475142883500136)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(24075208374950403)
,p_event_id=>wwv_flow_imp.id(24073757032950403)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(34769587711974425)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(24075795945950403)
,p_event_id=>wwv_flow_imp.id(24073757032950403)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    V_SUMA NUMBER := 0;',
'BEGIN',
'FOR C IN (SELECT TO_NUMBER(C004) PORC',
'          FROM APEX_COLLECTIONS',
'          WHERE COLLECTION_NAME = ''CAMECA''',
'            AND C005 = :P152_TIPO_AGENTE ',
'            AND C006 = ''S'') ',
'    LOOP',
'    --raise_application_error(-20001,c.porc) ;',
'           V_SUMA := V_SUMA + C.PORC;  ',
'    END LOOP;',
'',
'   -- raise_application_error(-20001,V_SUMA) ;',
'END;'))
,p_attribute_02=>'P152_TIPO_AGENTE'
,p_attribute_03=>'P152_CALIFICACION'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(24076126600950403)
,p_name=>'DA_Cargar_Pagina'
,p_event_sequence=>60
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
,p_display_when_type=>'REQUEST_EQUALS_CONDITION'
,p_display_when_cond=>'PREGUNTA'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(24076636021950404)
,p_event_id=>wwv_flow_imp.id(24076126600950403)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>'Desea ver los detalles de las Mediciones hechas?'
,p_attribute_02=>'Ver Detalles'
,p_attribute_03=>'information'
,p_attribute_04=>'fa-question-square-o'
,p_attribute_06=>'Confirmar'
,p_attribute_07=>'Cancelar'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(24077195420950404)
,p_event_id=>wwv_flow_imp.id(24076126600950403)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_01=>'VER_DETALLES'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(250695246315243220)
,p_name=>'Clic_Guardar_Registro'
,p_event_sequence=>70
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(24060327431950394)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(250695392511243221)
,p_event_id=>wwv_flow_imp.id(250695246315243220)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT DISTINCT ''S''',
'  INTO :P152_ID_EXISTENTE',
'  FROM CA_MEDICION_CALIDAD_CAB C',
' WHERE C.COD_EMPRESA = :P_COD_EMPRESA',
'   AND C.COD_AGENTE_EMPL = :P152_AGENTE',
'   AND C.ID_LLAMADA = :P152_ID_LLAMADA;',
' ',
'--- RAISE_APPLICATION_ERROR(-20001,:P152_ID_EXISTENTE);',
' EXCEPTION ',
' WHEN NO_DATA_FOUND THEN ',
'   :P152_ID_EXISTENTE := ''N'';'))
,p_attribute_02=>'P152_ID_LLAMADA,P152_AGENTE'
,p_attribute_03=>'P152_ID_EXISTENTE'
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
 p_id=>wwv_flow_imp.id(250695507112243223)
,p_event_id=>wwv_flow_imp.id(250695246315243220)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'La ID de llamada ya se encuentra en la base de Datos.',
'Estas seguro que desea volver a guardar?'))
,p_attribute_03=>'information'
,p_attribute_04=>'fa-exclamation'
,p_attribute_06=>'Guardar'
,p_attribute_07=>'Cancelar'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P152_ID_EXISTENTE'
,p_client_condition_expression=>'S'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(250695622105243224)
,p_event_id=>wwv_flow_imp.id(250695246315243220)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_01=>'Guardar_Registro'
,p_attribute_02=>'Y'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(24069143683950400)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'CARGAR_COLLECTION'
,p_process_sql_clob=>'CAMECA.PROCBD_CARGAR_COL_CAMECA(3);'
,p_process_clob_language=>'PLSQL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(24068718826950400)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Procesar_Medicion'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    l_url varchar2(2000);',
'    l_app number := v(''APP_ID'');',
'    l_session number := v(''APP_SESSION'');',
'BEGIN',
'    l_url := APEX_UTIL.PREPARE_URL(',
'        p_url => ''f?p='' || l_app || '':153:''||l_session||''::NO::P153_AGENTE_COD:1234'',',
'        p_checksum_type => ''SESSION'');',
'',
'',
'',
'',
'CAMECA.PROCBD_GUARDA_MEDICION_CALIDAD(:APP_USER,',
'                                      ''1'',',
'                                      :P152_TIPO_AGENTE,',
'                                      :P152_AGENTE,',
'                                      :P152_FEC_HORA_LLAMADA,',
'                                      :P152_ID_LLAMADA,',
'                                      l_url,',
'                                      :P152_COD_CAMPANIA,',
'                                      :P152_COD_CANAL,',
'                                      :P152_OBS',
'                                      );',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'Guardar_Registro'
,p_process_when_type=>'REQUEST_IN_CONDITION'
);
wwv_flow_imp.component_end;
end;
/
