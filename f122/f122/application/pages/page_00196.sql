prompt --application/pages/page_00196
begin
--   Manifest
--     PAGE: 00196
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
 p_id=>196
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'VTORIGEN'
,p_alias=>'VTORIGEN1'
,p_step_title=>unistr('Mantenimiento de origenes de \00F3rdenes de trabajo')
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function soloNumeros(e){',
'  var key = e.charCode;',
'    return key >= 48 && key <= 57 || key == 44;',
'}',
'',
'function seleccionar(cb) {',
'    console.log(cb.value);',
'    console.log(cb.checked);',
'  if (cb.checked == true){',
'    console.log("block" + cb.value);',
'      $s(''P196_CAMBIA_ESTADO'', cb.value, false);',
'      $s(''P196_ACTIVO_AUX'', ''N'');',
'  } else {',
'      $s(''P196_CAMBIA_ESTADO'', cb.value, false);',
'      $s(''P196_ACTIVO_AUX'', ''S'');',
'  }',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_last_updated_by=>'JOSEFINAGU'
,p_last_upd_yyyymmddhh24miss=>'20221118174407'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(43469426807493245)
,p_plug_name=>unistr('Origenes de \00F3rdenes de trabajo')
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>35
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(43466284789493213)
,p_plug_name=>'B_ORIGEN'
,p_parent_plug_id=>wwv_flow_imp.id(43469426807493245)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>40
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT O.COD_EMPRESA,',
'       O.COD_ORIGEN,',
'       O.DESCRIPCION,',
'       APEX_ITEM.CHECKBOX (p_idx         => 1 ,',
'                           p_value       => ROWID,',
'                           p_attributes  => (case O.ACTIVO',
'                                                 when ''S'' then ''checked ''',
'                                             else null',
'                                                 end )||''onclick="seleccionar(this)"'' ) ACTIVO,',
'       NULL EDITAR,',
'       NULL ELIMINAR',
'  FROM VT_ORIGENES O',
' WHERE O.COD_EMPRESA = :P196_VBLE_COD_EMPRESA',
'ORDER BY TO_NUMBER(O.COD_ORIGEN) DESC'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P196_VBLE_COD_EMPRESA'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'B_ORIGEN'
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
 p_id=>wwv_flow_imp.id(43468070577493231)
,p_max_row_count=>'1000000'
,p_no_data_found_message=>'No se encontraron datos.'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'JOSEFINAGU'
,p_internal_uid=>43468070577493231
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43468138978493232)
,p_db_column_name=>'COD_EMPRESA'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Cod Empresa'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43468280957493233)
,p_db_column_name=>'COD_ORIGEN'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>unistr('C\00F3digo')
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43468358064493234)
,p_db_column_name=>'DESCRIPCION'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>unistr('Descripci\00F3n')
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43468449157493235)
,p_db_column_name=>'ACTIVO'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Activo'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43468580533493236)
,p_db_column_name=>'EDITAR'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Editar'
,p_column_link=>'javascript:$s(''P196_ABRIR_REGION'',''#COD_ORIGEN#'');'
,p_column_linktext=>'<span aria-hidden="true" class="fa fa-edit"></span>'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_display_condition_type=>'FUNCTION_BODY'
,p_display_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'VCONTROL NUMBER;',
'BEGIN',
'    VCONTROL := SEGURIDAD_GRANULAR.RETORNA_PERMISO_BOTON(ppage_id     => :APP_PAGE_ID,',
'                                                         papli0100_id => :P_APLI0100_ID,',
'                                                         pcod_empresa => :P_COD_EMPRESA,',
'                                                         pusua0100_id => :P_USUA0100_ID,',
'                                                         pdm_boto     => 3); ',
'',
'    IF VCONTROL = 0 THEN',
'        RETURN FALSE;',
'    ELSE',
'        RETURN TRUE;',
'    END IF;                                                     ',
'END;'))
,p_display_condition2=>'PLSQL'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43468629274493237)
,p_db_column_name=>'ELIMINAR'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Eliminar'
,p_column_link=>'javascript:$s(''P196_AUX_ID_ELIMINAR'',''#COD_ORIGEN#'');'
,p_column_linktext=>'<span aria-hidden="true" class="fa fa-trash"></span>'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_display_condition_type=>'FUNCTION_BODY'
,p_display_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'VCONTROL NUMBER;',
'BEGIN',
'    VCONTROL := SEGURIDAD_GRANULAR.RETORNA_PERMISO_BOTON(ppage_id     => :APP_PAGE_ID,',
'                                                         papli0100_id => :P_APLI0100_ID,',
'                                                         pcod_empresa => :P_COD_EMPRESA,',
'                                                         pusua0100_id => :P_USUA0100_ID,',
'                                                         pdm_boto     => 3); ',
'',
'    IF VCONTROL = 0 THEN',
'        RETURN FALSE;',
'    ELSE',
'        RETURN TRUE;',
'    END IF;                                                     ',
'END;'))
,p_display_condition2=>'PLSQL'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(45032969800167936)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'450330'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>10
,p_report_columns=>'COD_EMPRESA:COD_ORIGEN:DESCRIPCION:ACTIVO:EDITAR:ELIMINAR'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(43466402852493215)
,p_plug_name=>'VARIABLES'
,p_parent_plug_id=>wwv_flow_imp.id(43469426807493245)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>50
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(43469031309493241)
,p_plug_name=>'AGREGAR/ EDITAR'
,p_parent_plug_id=>wwv_flow_imp.id(43469426807493245)
,p_region_template_options=>'#DEFAULT#:js-dialog-size600x400'
,p_plug_template=>wwv_flow_imp.id(40117728043263659)
,p_plug_display_sequence=>60
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(43469502832493246)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(43469426807493245)
,p_button_name=>'BT_AGREGAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Agregar'
,p_button_position=>'EDIT'
,p_warn_on_unsaved_changes=>null
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'VCONTROL NUMBER;',
'BEGIN',
'    VCONTROL := SEGURIDAD_GRANULAR.RETORNA_PERMISO_BOTON(ppage_id     => :APP_PAGE_ID,',
'                                                         papli0100_id => :P_APLI0100_ID,',
'                                                         pcod_empresa => :P_COD_EMPRESA,',
'                                                         pusua0100_id => :P_USUA0100_ID,',
'                                                         pdm_boto     => 3); ',
'',
'    IF VCONTROL = 0 THEN',
'        RETURN FALSE;',
'    ELSE',
'        RETURN TRUE;',
'    END IF;                                                     ',
'END;'))
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'FUNCTION_BODY'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(44782696825780501)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(43469031309493241)
,p_button_name=>'BT_GUARDAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Guardar'
,p_button_position=>'EDIT'
,p_warn_on_unsaved_changes=>null
,p_button_cattributes=>'style="top-margin:9px;"'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(43466343713493214)
,p_name=>'P196_CAMBIA_ESTADO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(43466284789493213)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(43466510048493216)
,p_name=>'P196_VBLE_MULT'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(43466402852493215)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(43466799590493218)
,p_name=>'P196_VBLE_NOM_MODULO'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(43466402852493215)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(43466865005493219)
,p_name=>'P196_VBLE_COD_RELACION_UM'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(43466402852493215)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(43466980461493220)
,p_name=>'P196_VBLE_NOM_FORMA'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(43466402852493215)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(43467081124493221)
,p_name=>'P196_VBLE_DIV'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(43466402852493215)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(43467175125493222)
,p_name=>'P196_VBLE_COD_MODULO'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(43466402852493215)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(43467288230493223)
,p_name=>'P196_VBLE_COD_FORMA'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(43466402852493215)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(43467307657493224)
,p_name=>'P196_VBLE_COD_EMPRESA'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(43466402852493215)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(43467481147493225)
,p_name=>'P196_VBLE_COD_SUCURSAL'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(43466402852493215)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(43467516901493226)
,p_name=>'P196_VBLE_NOM_EMPRESA'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(43466402852493215)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(43467639335493227)
,p_name=>'P196_VBLE_NOM_SUCURSAL'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(43466402852493215)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(43467708920493228)
,p_name=>'P196_VBLE_COD_USUARIO'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(43466402852493215)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(43468739545493238)
,p_name=>'P196_ACTIVO_AUX'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(43466284789493213)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(43468886104493239)
,p_name=>'P196_AUX_ID_ELIMINAR'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(43466284789493213)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(43468906787493240)
,p_name=>'P196_ABRIR_REGION'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(43466284789493213)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(43469131039493242)
,p_name=>'P196_COD_ORIGEN'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(43469031309493241)
,p_prompt=>unistr('C\00F3digo')
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_colspan=>3
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(43469248958493243)
,p_name=>'P196_DESCRIPCION'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(43469031309493241)
,p_prompt=>unistr('Descripci\00F3n')
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
 p_id=>wwv_flow_imp.id(43469375777493244)
,p_name=>'P196_ACTIVO'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(43469031309493241)
,p_prompt=>'Activo'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'S'
,p_attribute_03=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(44786030100780535)
,p_name=>'P196_ERROR'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(43469031309493241)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(43469611485493247)
,p_name=>'DA_ABRIR_REGION'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(43469502832493246)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(44785118613780526)
,p_event_id=>wwv_flow_imp.id(43469611485493247)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P196_COD_ORIGEN,P196_DESCRIPCION,P196_ACTIVO'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(44785283869780527)
,p_event_id=>wwv_flow_imp.id(43469611485493247)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT MAX(TO_NUMBER(COD_ORIGEN)) + 1',
'  INTO :P196_COD_ORIGEN',
'  FROM VT_ORIGENES',
' WHERE COD_EMPRESA = :P196_VBLE_COD_EMPRESA;'))
,p_attribute_02=>'P196_VBLE_COD_EMPRESA'
,p_attribute_03=>'P196_COD_ORIGEN'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(43469710635493248)
,p_event_id=>wwv_flow_imp.id(43469611485493247)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(43469031309493241)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(43469851925493249)
,p_name=>'DA_OCULTAR_REGION'
,p_event_sequence=>20
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(43469940117493250)
,p_event_id=>wwv_flow_imp.id(43469851925493249)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(43469031309493241)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(44782708928780502)
,p_name=>'DA_EDITAR'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P196_ABRIR_REGION'
,p_condition_element=>'P196_ABRIR_REGION'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(44782887485780503)
,p_event_id=>wwv_flow_imp.id(44782708928780502)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    SELECT COD_ORIGEN,',
'           DESCRIPCION,',
'           ACTIVO',
'      INTO :P196_COD_ORIGEN,',
'           :P196_DESCRIPCION,',
'           :P196_ACTIVO',
'      FROM VT_ORIGENES',
'     WHERE COD_ORIGEN = :P196_ABRIR_REGION;',
'EXCEPTION',
'    WHEN OTHERS THEN',
unistr('        RAISE_APPLICATION_ERROR(-20000,''No existe el c\00F3digo ''||:P196_ABRIR_REGION);'),
'END;'))
,p_attribute_02=>'P196_ABRIR_REGION'
,p_attribute_03=>'P196_COD_ORIGEN,P196_DESCRIPCION,P196_ACTIVO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(44782960853780504)
,p_event_id=>wwv_flow_imp.id(44782708928780502)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(43469031309493241)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(44783061971780505)
,p_event_id=>wwv_flow_imp.id(44782708928780502)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(43469031309493241)
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P196_ABRIR_REGION'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(44783139162780506)
,p_name=>'DA_ELIMINAR_REGISTRO'
,p_event_sequence=>40
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P196_AUX_ID_ELIMINAR'
,p_condition_element=>'P196_AUX_ID_ELIMINAR'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(44783207494780507)
,p_event_id=>wwv_flow_imp.id(44783139162780506)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>unistr('\00BFDesea eliminar el registro de forma permanente?')
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(44783380759780508)
,p_event_id=>wwv_flow_imp.id(44783139162780506)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    VTORIGEN.DELETE_REGISTRO (PI_COD_ORIGEN  => :P196_AUX_ID_ELIMINAR,',
'						      PI_COD_EMPRESA => :P196_VBLE_COD_EMPRESA);',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(''DA_ELIMINAR_REGISTRO - ''||SQLERRM);',
'END;'))
,p_attribute_02=>'P196_VBLE_COD_EMPRESA,P196_AUX_ID_ELIMINAR'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(44783432029780509)
,p_event_id=>wwv_flow_imp.id(44783139162780506)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(43466284789493213)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(44783599489780510)
,p_name=>'DA_CAMBIA_ESTADO'
,p_event_sequence=>50
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P196_CAMBIA_ESTADO'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(44783601664780511)
,p_event_id=>wwv_flow_imp.id(44783599489780510)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'	UPDATE VT_ORIGENES',
'	   SET ACTIVO = :P196_ACTIVO_AUX',
'	 WHERE COD_EMPRESA = :P196_VBLE_COD_EMPRESA',
'	   AND ROWID = :P196_CAMBIA_ESTADO; ',
'EXCEPTION',
'	WHEN OTHERS THEN',
'		RAISE_APPLICATION_ERROR(-20000, ''DA_CAMBIA_ESTADO - ''||SQLERRM);',
'END; '))
,p_attribute_02=>'P196_CAMBIA_ESTADO,P196_VBLE_COD_EMPRESA,P196_ACTIVO_AUX'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(44783769236780512)
,p_name=>'DA_ACTIVO'
,p_event_sequence=>60
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P196_ACTIVO_AUX'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(44783806717780513)
,p_event_id=>wwv_flow_imp.id(44783769236780512)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_02=>'P196_ACTIVO_AUX,P196_AUX_ID_ELIMINAR'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(44784455204780519)
,p_name=>'DA_GUARDAR'
,p_event_sequence=>70
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(44782696825780501)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(44785987609780534)
,p_event_id=>wwv_flow_imp.id(44784455204780519)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P196_ERROR := 0;',
'IF :P196_DESCRIPCION IS NULL THEN',
'    :P196_ERROR := 1;',
'END IF;'))
,p_attribute_02=>'P196_DESCRIPCION'
,p_attribute_03=>'P196_ERROR'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(44786191183780536)
,p_event_id=>wwv_flow_imp.id(44784455204780519)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>unistr('Debe ingresar una descripci\00F3n.')
,p_attribute_03=>'warning'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P196_ERROR'
,p_client_condition_expression=>'1'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(44784981100780524)
,p_event_id=>wwv_flow_imp.id(44784455204780519)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>unistr('\00BFDesea guardar los cambios?')
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P196_ERROR'
,p_client_condition_expression=>'0'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(44784588109780520)
,p_event_id=>wwv_flow_imp.id(44784455204780519)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    VTORIGEN.SAVE_REGISTRO(PI_COD_EMPRESA => :P196_VBLE_COD_EMPRESA,',
'						   PI_COD_ORIGEN  => :P196_COD_ORIGEN,',
'						   PI_DESCRIPCION => :P196_DESCRIPCION,',
'						   PI_ACTIVO 	  => :P196_ACTIVO);',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(''DA_GUARDAR - SAVE_REGISTRO''||SQLERRM);',
'END;'))
,p_attribute_02=>'P196_VBLE_COD_EMPRESA,P196_COD_ORIGEN,P196_DESCRIPCION,P196_ACTIVO'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P196_ERROR'
,p_client_condition_expression=>'0'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(44784638299780521)
,p_event_id=>wwv_flow_imp.id(44784455204780519)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    VTORIGEN.UPDATE_REGISTRO(PI_COD_EMPRESA => :P196_VBLE_COD_EMPRESA,',
'						     PI_COD_ORIGEN  => :P196_COD_ORIGEN,',
'						     PI_DESCRIPCION => :P196_DESCRIPCION,',
'						     PI_ACTIVO 	    => :P196_ACTIVO);',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(''DA_GUARDAR - UPDATE_REGISTRO''||SQLERRM);',
'END;'))
,p_attribute_02=>'P196_VBLE_COD_EMPRESA,P196_COD_ORIGEN,P196_DESCRIPCION,P196_ACTIVO'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P196_ERROR'
,p_client_condition_expression=>'0'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(44784788991780522)
,p_event_id=>wwv_flow_imp.id(44784455204780519)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(43466284789493213)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P196_ERROR'
,p_client_condition_expression=>'0'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(44784845082780523)
,p_event_id=>wwv_flow_imp.id(44784455204780519)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(43469031309493241)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P196_ERROR'
,p_client_condition_expression=>'0'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(44785312322780528)
,p_name=>'DA_READONLY'
,p_event_sequence=>80
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P196_COD_ORIGEN'
,p_condition_element=>'P196_ABRIR_REGION'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(44785403930780529)
,p_event_id=>wwv_flow_imp.id(44785312322780528)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'document.getElementById(''P196_COD_ORIGEN'').readOnly = true;'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(44785634047780531)
,p_name=>'DA_SOLO_NUMEROS'
,p_event_sequence=>90
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P196_COD_ORIGEN'
,p_bind_type=>'bind'
,p_bind_event_type=>'keypress'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(44785772114780532)
,p_event_id=>wwv_flow_imp.id(44785634047780531)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if (!soloNumeros(Event)){',
'      Event.preventDefault();',
'}'))
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(43467932431493230)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_INIT'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'--INICIALIZA GLOBALES',
':P196_VBLE_COD_USUARIO := NVL(:P_COD_USUARIO, :APP_USER);',
':P196_VBLE_COD_EMPRESA := NVL(:P_COD_EMPRESA,''1'');',
':P196_VBLE_NOM_EMPRESA := :P_NOM_EMPRESA;',
':P196_VBLE_COD_SUCURSAL := NVL(:P_COD_SUCURSAL,''01'');',
':P196_VBLE_NOM_SUCURSAL := :P_NOM_SUCURSAL;',
':P196_VBLE_COD_MODULO := NVL(:P_COD_MODULO, ''VT'');',
'',
':P196_VBLE_COD_MODULO := ''VT'';',
'',
'LIBRERIA_FORMAS.RUTINA_INICIAL(PI_COD_MODULO => :P196_VBLE_COD_MODULO,',
'                               PI_COD_FORMA  => :P196_VBLE_COD_FORMA,',
'                               PI_NOM_MODULO => :P196_VBLE_NOM_MODULO,',
'                               PI_NOM_FORMA  => :P196_VBLE_NOM_FORMA,',
'            				   PO_NOM_MODULO => :P196_VBLE_NOM_MODULO,',
'            				   PO_NOM_FORMA  => :P196_VBLE_NOM_FORMA);',
'',
':P196_ABRIR_REGION := NULL;',
':P196_AUX_ID_ELIMINAR := NULL;'))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_imp.component_end;
end;
/
