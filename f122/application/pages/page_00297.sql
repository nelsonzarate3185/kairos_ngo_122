prompt --application/pages/page_00297
begin
--   Manifest
--     PAGE: 00297
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
 p_id=>297
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>unistr('Relaci\00F3n Preguntas - L\00EDneas Control Calidad')
,p_alias=>'CALINPRE'
,p_step_title=>unistr('Relaci\00F3n Preguntas - L\00EDneas Control Calidad')
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_last_updated_by=>'JOSEFINAGU'
,p_last_upd_yyyymmddhh24miss=>'20230105184056'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(383179477804480395)
,p_plug_name=>unistr('Relaci\00F3n Preguntas - L\00EDneas Control Calidad')
,p_region_template_options=>'#DEFAULT#:t-Region--accent1:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>990
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ROWID ROW_ID,',
'       COD_EMPRESA,',
'       COD_LINEA,',
'       COD_PREGUNTA,',
'       TIPO_RESPUESTA,',
'       APEX_ITEM.CHECKBOX (p_idx         => 1 ,',
'        				    p_value       => ROWID,',
'        				    p_attributes  => (case IND_OBS',
'        										 when ''S'' then ''checked ''',
'        									  else ''P''',
'        										 end ) ||''style="width:40px;" disabled'')as IND_OBS,',
'       APEX_ITEM.CHECKBOX (p_idx         => 1 ,',
'        				    p_value       => ROWID,',
'        				    p_attributes  => (case ESTADO',
'        										 when ''S'' then ''checked ''',
'        									  else ''P''',
'        										 end ) ||''style="width:40px;" disabled'')as ESTADO,',
'       COD_USUARIO,',
'       FEC_ALTA,',
'       NULL EDITAR,',
'       NULL ELIMINAR    ',
'  FROM ca_preguntas_ot_CERRADA'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P297_VBLE_COD_EMPRESA'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>unistr('Relaci\00F3n Preguntas - L\00EDneas Control Calidad')
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
 p_id=>wwv_flow_imp.id(383179572716480396)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'JOSEFINAGU'
,p_internal_uid=>383179572716480396
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(77096830594941460)
,p_db_column_name=>'ROW_ID'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Row Id'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_column_type=>'OTHER'
,p_rpt_show_filter_lov=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(77094421088941458)
,p_db_column_name=>'COD_EMPRESA'
,p_display_order=>250
,p_column_identifier=>'S'
,p_column_label=>'Cod Empresa'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(77044786298763405)
,p_db_column_name=>'COD_LINEA'
,p_display_order=>260
,p_column_identifier=>'X'
,p_column_label=>unistr('L\00EDnea')
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_rpt_named_lov=>wwv_flow_imp.id(76021867252235607)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(77094868745941458)
,p_db_column_name=>'COD_PREGUNTA'
,p_display_order=>270
,p_column_identifier=>'T'
,p_column_label=>'Pregunta'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_rpt_named_lov=>wwv_flow_imp.id(77119430935976646)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(77044867271763406)
,p_db_column_name=>'TIPO_RESPUESTA'
,p_display_order=>280
,p_column_identifier=>'Y'
,p_column_label=>'Tipo Respuesta'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_rpt_named_lov=>wwv_flow_imp.id(77457614465041742)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(77044970750763407)
,p_db_column_name=>'IND_OBS'
,p_display_order=>290
,p_column_identifier=>'Z'
,p_column_label=>'Obs'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(77097621399941460)
,p_db_column_name=>'ESTADO'
,p_display_order=>300
,p_column_identifier=>'W'
,p_column_label=>'Estado'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(77097230229941460)
,p_db_column_name=>'FEC_ALTA'
,p_display_order=>310
,p_column_identifier=>'V'
,p_column_label=>'Fec Alta'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(77095611480941459)
,p_db_column_name=>'COD_USUARIO'
,p_display_order=>320
,p_column_identifier=>'F'
,p_column_label=>'Usuario'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(77096062768941459)
,p_db_column_name=>'EDITAR'
,p_display_order=>340
,p_column_identifier=>'H'
,p_column_label=>'Editar'
,p_column_link=>'javascript:$s(''P297_AUX_ID_EDITAR'',''#ROW_ID#'');'
,p_column_linktext=>'<span aria-hidden="true" class="fa fa-pencil-square-o"></span>'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_display_condition_type=>'FUNCTION_BODY'
,p_display_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'VCONTROL NUMBER;',
'BEGIN',
'',
'    VCONTROL := SEGURIDAD_GRANULAR.RETORNA_PERMISO_BOTON(ppage_id     => :APP_PAGE_ID,',
'                                                         papli0100_id => :P_APLI0100_ID,',
'                                                         pcod_empresa => :P_COD_EMPRESA,',
'                                                         pusua0100_id => :P_USUA0100_ID,',
'                                                         pdm_boto     => 2); ',
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
 p_id=>wwv_flow_imp.id(77096403456941459)
,p_db_column_name=>'ELIMINAR'
,p_display_order=>350
,p_column_identifier=>'I'
,p_column_label=>'Eliminar'
,p_column_link=>'javascript:$s(''P297_AUX_ID_ELIMINAR'',''#ROW_ID#'');'
,p_column_linktext=>'<span aria-hidden="true" class="fa fa-trash-o"></span>'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_display_condition_type=>'FUNCTION_BODY'
,p_display_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'VCONTROL NUMBER;',
'BEGIN',
'',
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
 p_id=>wwv_flow_imp.id(383561015602124030)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'760628'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>10
,p_report_columns=>'COD_LINEA:COD_PREGUNTA:TIPO_RESPUESTA:IND_OBS:ESTADO:EDITAR:ELIMINAR:'
,p_sort_column_1=>'FEC_ALTA'
,p_sort_direction_1=>'DESC'
,p_sort_column_2=>'0'
,p_sort_direction_2=>'ASC'
,p_sort_column_3=>'0'
,p_sort_direction_3=>'ASC'
,p_sort_column_4=>'0'
,p_sort_direction_4=>'ASC'
,p_sort_column_5=>'0'
,p_sort_direction_5=>'ASC'
,p_sort_column_6=>'0'
,p_sort_direction_6=>'ASC'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(383502141796920957)
,p_plug_name=>'AGREGAR/EDITAR'
,p_region_template_options=>'#DEFAULT#:js-dialog-size600x400'
,p_plug_template=>wwv_flow_imp.id(40120082745263659)
,p_plug_display_sequence=>1000
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(452859911564030299)
,p_plug_name=>'VARIABLES'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>20
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(77099401754941462)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_imp.id(383502141796920957)
,p_button_name=>'BT_CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(77099067677941462)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_imp.id(383502141796920957)
,p_button_name=>'BT_GUARDAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Guardar'
,p_button_position=>'CREATE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(77098355446941461)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(383179477804480395)
,p_button_name=>'BT_AGREGAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Agregar'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_warn_on_unsaved_changes=>null
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'VCONTROL NUMBER;',
'BEGIN',
'',
'    VCONTROL := SEGURIDAD_GRANULAR.RETORNA_PERMISO_BOTON(ppage_id     => :APP_PAGE_ID,',
'                                                         papli0100_id => :P_APLI0100_ID,',
'                                                         pcod_empresa => :P_COD_EMPRESA,',
'                                                         pusua0100_id => :P_USUA0100_ID,',
'                                                         pdm_boto     => 1); ',
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
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(77045566113763413)
,p_name=>'P297_TIPO_RESPUESTA'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(383502141796920957)
,p_prompt=>'Tipo Respuesta'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_TIPO_RESPUESTA'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Select DISTINCT TIPO D,',
'       TIPO R',
'  FROM CA_TIPO_RESPUESTA',
' WHERE NVL(ACTIVO,''A'') = ''A'''))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- Seleccione - '
,p_cSize=>30
,p_colspan=>6
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
 p_id=>wwv_flow_imp.id(77045642813763414)
,p_name=>'P297_IND_OBS'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(383502141796920957)
,p_item_default=>'S'
,p_prompt=>unistr('Observaci\00F3n')
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_begin_on_new_line=>'N'
,p_grid_column=>7
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'S'
,p_attribute_03=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(77045736652763415)
,p_name=>'P297_ESTADO'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(383502141796920957)
,p_item_default=>'S'
,p_prompt=>'Estado'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_begin_on_new_line=>'N'
,p_begin_on_new_field=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'S'
,p_attribute_03=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(77046069280763418)
,p_name=>'P297_MSJE_ERROR'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(452859911564030299)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(77099863197941462)
,p_name=>'P297_COD_LINEA'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(383502141796920957)
,p_prompt=>unistr('L\00EDnea')
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_LINEAS_CALINTEC'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT COD_LINEA||'' - ''||DESCRIPCION D, ',
'       COD_LINEA R',
' FROM st_linea ',
'WHERE COD_EMPRESA= :P_COD_EMPRESA'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- Seleccione - '
,p_cSize=>30
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
 p_id=>wwv_flow_imp.id(77100224354941462)
,p_name=>'P297_COD_PREGUNTA'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(383502141796920957)
,p_prompt=>'Pregunta'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_PREGUNTAS'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select cod_pregunta||'' - ''||descripcion D,',
'       cod_pregunta R',
'from ca_preguntaS_OT',
'where cod_empresa = :p_cod_empresa'))
,p_lov_display_null=>'YES'
,p_cSize=>30
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
 p_id=>wwv_flow_imp.id(77100990083941463)
,p_name=>'P297_VBLE_COD_MODULO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(452859911564030299)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(77101386245941463)
,p_name=>'P297_NOM_MODULO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(452859911564030299)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(77101778424941464)
,p_name=>'P297_COD_FORMA'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(452859911564030299)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(77102122330941464)
,p_name=>'P297_NOM_FORMA'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(452859911564030299)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(77102531063941464)
,p_name=>'P297_VBLE_COD_EMPRESA'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(452859911564030299)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(77102975865941464)
,p_name=>'P297_NOM_EMPRESA'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(452859911564030299)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(77103381033941464)
,p_name=>'P297_COD_SUCURSAL'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(452859911564030299)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(77103735515941465)
,p_name=>'P297_NOM_SUCURSAL'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(452859911564030299)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(77104167516941465)
,p_name=>'P297_VBLE_COD_USUARIO'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(452859911564030299)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(77104518649941465)
,p_name=>'P297_AUX_ID_EDITAR'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(452859911564030299)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(77104990778941465)
,p_name=>'P297_AUX_ID_ELIMINAR'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(452859911564030299)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(77105371985941465)
,p_name=>'P297_MSJE_SUCCES'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(452859911564030299)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(77114201969941470)
,p_name=>'DA_EDITAR'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P297_AUX_ID_EDITAR'
,p_condition_element=>'P297_AUX_ID_EDITAR'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(77115748501941471)
,p_event_id=>wwv_flow_imp.id(77114201969941470)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT COD_LINEA,',
'       COD_PREGUNTA,',
'       TIPO_RESPUESTA,',
'       IND_OBS,',
'       ESTADO',
'  INTO :P297_COD_LINEA,',
'       :P297_COD_PREGUNTA,',
'       :P297_TIPO_RESPUESTA,',
'       :P297_IND_OBS,',
'       :P297_ESTADO',
'  FROM ca_preguntas_ot_CERRADA',
' WHERE ROWID = :P297_AUX_ID_EDITAR;'))
,p_attribute_02=>'P297_AUX_ID_EDITAR'
,p_attribute_03=>'P297_COD_LINEA,P297_COD_PREGUNTA,P297_TIPO_RESPUESTA,P297_IND_OBS,P297_ESTADO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(77114790142941470)
,p_event_id=>wwv_flow_imp.id(77114201969941470)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(383502141796920957)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(77115293904941470)
,p_event_id=>wwv_flow_imp.id(77114201969941470)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(383502141796920957)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(77112387382941469)
,p_name=>'DA_ELIMINAR'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P297_AUX_ID_ELIMINAR'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(77112814285941469)
,p_event_id=>wwv_flow_imp.id(77112387382941469)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>unistr('\00BFDesea eliminar este registro?')
,p_attribute_02=>unistr('\00A1Atenci\00F3n!')
,p_attribute_03=>'warning'
,p_attribute_04=>'fa-warning'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(77113373978941470)
,p_event_id=>wwv_flow_imp.id(77112387382941469)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    DELETE FROM ca_preguntas_ot_CERRADA',
'     WHERE ROWID = :P297_AUX_ID_ELIMINAR;',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;'))
,p_attribute_02=>'P297_AUX_ID_ELIMINAR'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(77113817530941470)
,p_event_id=>wwv_flow_imp.id(77112387382941469)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(383179477804480395)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(77106144287941466)
,p_name=>'DA_CANCEL'
,p_event_sequence=>30
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(77099401754941462)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(77106662894941467)
,p_event_id=>wwv_flow_imp.id(77106144287941466)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(383502141796920957)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(77107026169941467)
,p_name=>'DA_GUARDAR'
,p_event_sequence=>40
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(77099067677941462)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(77047426549763432)
,p_event_id=>wwv_flow_imp.id(77107026169941467)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'   :P297_MSJE_ERROR := 0;',
'    IF :P297_COD_LINEA IS NULL OR :P297_COD_PREGUNTA IS NULL OR :P297_TIPO_RESPUESTA IS NULL THEN',
'        :P297_MSJE_ERROR := 1;',
'    END IF;',
'END;'))
,p_attribute_02=>'P297_COD_LINEA,P297_COD_PREGUNTA,P297_TIPO_RESPUESTA'
,p_attribute_03=>'P297_MSJE_ERROR'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(77047165493763429)
,p_event_id=>wwv_flow_imp.id(77107026169941467)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>unistr('L\00EDnea, pregunta y tipo de respuesta no pueden estar vac\00EDos.')
,p_attribute_02=>unistr('\00A1Atenci\00F3n!')
,p_attribute_03=>'warning'
,p_attribute_04=>'fa-warning'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P297_MSJE_ERROR'
,p_client_condition_expression=>'1'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(77107559564941467)
,p_event_id=>wwv_flow_imp.id(77107026169941467)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    :P297_MSJE_SUCCES := NULL;',
'    IF :P297_MSJE_ERROR = 0 THEN',
'        IF :P297_AUX_ID_EDITAR IS NOT NULL THEN',
'            UPDATE ca_preguntas_ot_CERRADA',
'               SET COD_PREGUNTA = :P297_COD_PREGUNTA,',
'                   COD_LINEA = :P297_COD_LINEA,',
'                   TIPO_RESPUESTA = :P297_TIPO_RESPUESTA,',
'                   ESTADO = :P297_ESTADO,',
'                   IND_OBS = :P297_IND_OBS',
'             WHERE ROWID = :P297_AUX_ID_EDITAR;',
'            :P297_MSJE_SUCCES := 2;',
'        ELSE',
'            INSERT INTO ca_preguntas_ot_CERRADA (COD_EMPRESA,',
'                                                COD_PREGUNTA,',
'                                                COD_LINEA,',
'                                                FEC_ALTA,',
'                                                COD_USUARIO,',
'                                                ESTADO,',
'                                                TIPO_RESPUESTA,',
'                                                IND_OBS)',
'                                         VALUES (:P297_VBLE_COD_EMPRESA,',
'                                                 :P297_COD_PREGUNTA,',
'                                                 :P297_COD_LINEA,',
'                                                 SYSDATE,',
'                                                 :APP_USER,',
'                                                 :P297_ESTADO,',
'                                                 :P297_TIPO_RESPUESTA,',
'                                                 :P297_IND_OBS);',
'            :P297_MSJE_SUCCES := 1;',
'        END IF;',
'    END IF;',
'EXCEPTION ',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;'))
,p_attribute_02=>'P297_AUX_ID_EDITAR,P297_COD_LINEA,P297_COD_PREGUNTA,P297_VBLE_COD_EMPRESA,P297_ESTADO,P297_TIPO_RESPUESTA,P297_IND_OBS,P297_MSJE_ERROR'
,p_attribute_03=>'P297_MSJE_SUCCES'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(77108058159941467)
,p_event_id=>wwv_flow_imp.id(77107026169941467)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'El registro fue creado correctamente.'
,p_attribute_02=>unistr('Operaci\00F3n existosa')
,p_attribute_03=>'success'
,p_attribute_04=>'fa-check-circle'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P297_MSJE_SUCCES'
,p_client_condition_expression=>'1'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(77108506018941467)
,p_event_id=>wwv_flow_imp.id(77107026169941467)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'Los cambios fueron guardados correctamente.'
,p_attribute_02=>unistr('Operaci\00F3n existosa')
,p_attribute_03=>'success'
,p_attribute_04=>'fa-check-circle'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P297_MSJE_SUCCES'
,p_client_condition_expression=>'2'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(77109058782941468)
,p_event_id=>wwv_flow_imp.id(77107026169941467)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(383179477804480395)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(77109513733941468)
,p_event_id=>wwv_flow_imp.id(77107026169941467)
,p_event_result=>'TRUE'
,p_action_sequence=>90
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(383502141796920957)
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P297_MSJE_SUCCES'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(77109989521941468)
,p_name=>'DA_AGREGAR'
,p_event_sequence=>50
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(77098355446941461)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(77110418713941468)
,p_event_id=>wwv_flow_imp.id(77109989521941468)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P297_COD_LINEA := NULL;',
':P297_COD_PREGUNTA := NULL;',
':P297_TIPO_RESPUESTA := NULL;',
':P297_AUX_ID_EDITAR := NULL;'))
,p_attribute_03=>'P297_COD_LINEA,P297_COD_PREGUNTA,P297_TIPO_RESPUESTA,P297_AUX_ID_EDITAR'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(77111978253941469)
,p_event_id=>wwv_flow_imp.id(77109989521941468)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(383502141796920957)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(77110997732941469)
,p_event_id=>wwv_flow_imp.id(77109989521941468)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(383502141796920957)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(77047316817763431)
,p_event_id=>wwv_flow_imp.id(77109989521941468)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_FOCUS'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P297_IND_OBS'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(77045879832763416)
,p_name=>'DA_LINEA_NOT_NULL'
,p_event_sequence=>60
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P297_COD_LINEA'
,p_condition_element=>'P297_COD_LINEA'
,p_triggering_condition_type=>'NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
,p_display_when_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(77045966376763417)
,p_event_id=>wwv_flow_imp.id(77045879832763416)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF :P297_COD_LINEA IS NULL THEN',
'    :P297_MSJE_ERROR := 1;',
'END IF;'))
,p_attribute_02=>'P297_COD_LINEA'
,p_attribute_03=>'P297_MSJE_ERROR'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(77046161329763419)
,p_event_id=>wwv_flow_imp.id(77045879832763416)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>unistr('Debe seleccionar una l\00EDnea.')
,p_attribute_02=>unistr('\00A1Atenci\00F3n!')
,p_attribute_03=>'warning'
,p_attribute_04=>'fa-warning'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P297_MSJE_ERROR'
,p_client_condition_expression=>'1'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(77046879016763426)
,p_event_id=>wwv_flow_imp.id(77045879832763416)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P297_MSJE_ERROR'
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
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(77046228433763420)
,p_name=>'DA_PREGUNTA_NOT_NULL'
,p_event_sequence=>70
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P297_COD_PREGUNTA'
,p_condition_element=>'P297_COD_PREGUNTA'
,p_triggering_condition_type=>'NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'focusout'
,p_display_when_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(77046318870763421)
,p_event_id=>wwv_flow_imp.id(77046228433763420)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF :P297_COD_PREGUNTA IS NULL THEN',
'    :P297_MSJE_ERROR := 2;',
'END IF;'))
,p_attribute_02=>'P297_COD_PREGUNTA'
,p_attribute_03=>'P297_MSJE_ERROR'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(77046469377763422)
,p_event_id=>wwv_flow_imp.id(77046228433763420)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'Debe seleccionar una pregunta.'
,p_attribute_02=>unistr('\00A1Atenci\00F3n!')
,p_attribute_03=>'warning'
,p_attribute_04=>'fa-warning'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P297_MSJE_ERROR'
,p_client_condition_expression=>'2'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(77046903906763427)
,p_event_id=>wwv_flow_imp.id(77046228433763420)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P297_MSJE_ERROR'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(77046503692763423)
,p_name=>'DA_RESPUESTA_NOT_NULL'
,p_event_sequence=>80
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P297_TIPO_RESPUESTA'
,p_condition_element=>'P297_TIPO_RESPUESTA'
,p_triggering_condition_type=>'NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'focusout'
,p_display_when_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(77046623575763424)
,p_event_id=>wwv_flow_imp.id(77046503692763423)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF :P297_TIPO_RESPUESTA IS NULL THEN',
'    :P297_MSJE_ERROR := 3;',
'END IF;'))
,p_attribute_02=>'P297_TIPO_RESPUESTA'
,p_attribute_03=>'P297_MSJE_ERROR'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(77046797336763425)
,p_event_id=>wwv_flow_imp.id(77046503692763423)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'Debe seleccionar un tipo de respuesta.'
,p_attribute_02=>unistr('\00A1Atenci\00F3n!')
,p_attribute_03=>'warning'
,p_attribute_04=>'fa-warning'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P297_MSJE_ERROR'
,p_client_condition_expression=>'3'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(77047020155763428)
,p_event_id=>wwv_flow_imp.id(77046503692763423)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P297_MSJE_ERROR'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(77105730872941466)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_INIT'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P_COD_EMPRESA := ''1'';',
'',
':P_COD_MODULO := ''CA'';',
'',
':P297_VBLE_COD_USUARIO := NVL(:P_COD_USUARIO, :APP_USER);',
':P297_VBLE_COD_EMPRESA := NVL(:P_COD_EMPRESA,''1'');',
':P297_NOM_EMPRESA := :P_NOM_EMPRESA;',
':P297_COD_SUCURSAL := :P_COD_SUCURSAL;',
':P297_NOM_SUCURSAL := :P_NOM_SUCURSAL;',
':P297_VBLE_COD_MODULO := NVL(:P_COD_MODULO,''CA'');',
'',
'LIBRERIA_FORMAS.RUTINA_INICIAL(PI_COD_MODULO => :P297_VBLE_COD_MODULO,',
'                               PI_COD_FORMA  => :P297_COD_FORMA,',
'                               PI_NOM_MODULO => :P297_NOM_MODULO,',
'                               PI_NOM_FORMA  => :P297_NOM_FORMA,',
'            				   PO_NOM_MODULO => :P297_NOM_MODULO,',
'            				   PO_NOM_FORMA  => :P297_NOM_FORMA);'))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_imp.component_end;
end;
/
