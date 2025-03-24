prompt --application/pages/page_00307
begin
--   Manifest
--     PAGE: 00307
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
 p_id=>307
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>unistr('Relaci\00F3n Categor\00EDa Problemas y Soluciones')
,p_alias=>'CARECAPS'
,p_step_title=>unistr('Relaci\00F3n Categor\00EDa Problemas y Soluciones')
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_last_updated_by=>'CHARBA'
,p_last_upd_yyyymmddhh24miss=>'20250205091735'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(152220348390501354)
,p_plug_name=>unistr('Relaci\00F3n Categor\00EDa Problemas y Soluciones')
,p_region_template_options=>'#DEFAULT#:t-Region--accent1:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>990
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ROWID ROW_ID,',
'       COD_CATEGORIA,',
'       COD_PROBLEMA,',
'       COD_SOLUCION,',
'       APEX_ITEM.CHECKBOX (p_idx         => 1 ,',
'        				    p_value       => ROWID,',
'        				    p_attributes  => (case ACTIVO',
'        										 when ''S'' then ''checked ''',
'        									  else ''N''',
'        										 end ) ||''style="width:40px;" disabled'')as ACTIVO,',
'       COD_USUARIO,',
'       FEC_ALTA,',
'       NULL EDITAR,',
'       NULL ELIMINAR    ',
'  FROM CA_CATEGORIAS_PRO_SOL',
'  WHERE COD_EMPRESA = :P_COD_EMPRESA'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P307_VBLE_COD_EMPRESA'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>unistr('Relaci\00F3n Categor\00EDa Problemas y Soluciones')
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
 p_id=>wwv_flow_imp.id(152220443302501355)
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
,p_internal_uid=>152220443302501355
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(76542520434771920)
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
 p_id=>wwv_flow_imp.id(76006996827170036)
,p_db_column_name=>'COD_CATEGORIA'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>unistr('Categor\00EDa')
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_rpt_named_lov=>wwv_flow_imp.id(43390082148986794)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(76007095624170037)
,p_db_column_name=>'COD_PROBLEMA'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Problema'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_rpt_named_lov=>wwv_flow_imp.id(76570588412837173)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(76007157138170038)
,p_db_column_name=>'COD_SOLUCION'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>unistr('Soluci\00F3n')
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_rpt_named_lov=>wwv_flow_imp.id(76570810454843634)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(76007236560170039)
,p_db_column_name=>'ACTIVO'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>'Activo'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(76540947313771918)
,p_db_column_name=>'COD_USUARIO'
,p_display_order=>150
,p_column_identifier=>'F'
,p_column_label=>'Usuario'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(76541341602771918)
,p_db_column_name=>'FEC_ALTA'
,p_display_order=>160
,p_column_identifier=>'G'
,p_column_label=>'Fec. Alta'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(76541737619771919)
,p_db_column_name=>'EDITAR'
,p_display_order=>170
,p_column_identifier=>'H'
,p_column_label=>'Editar'
,p_column_link=>'javascript:$s(''P307_AUX_ID_EDITAR'',''#ROW_ID#'');'
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
 p_id=>wwv_flow_imp.id(76542145499771920)
,p_db_column_name=>'ELIMINAR'
,p_display_order=>180
,p_column_identifier=>'I'
,p_column_label=>'Eliminar'
,p_column_link=>'javascript:$s(''P307_AUX_ID_ELIMINAR'',''#ROW_ID#'');'
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
 p_id=>wwv_flow_imp.id(152601886188144989)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'760628'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>10
,p_report_columns=>'COD_CATEGORIA:COD_PROBLEMA:COD_SOLUCION:ACTIVO:EDITAR:ELIMINAR:'
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
 p_id=>wwv_flow_imp.id(152543012382941916)
,p_plug_name=>'AGREGAR/EDITAR'
,p_region_template_options=>'#DEFAULT#:js-dialog-size600x400'
,p_plug_template=>wwv_flow_imp.id(40117728043263659)
,p_plug_display_sequence=>1000
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(221900782150051258)
,p_plug_name=>'VARIABLES'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>20
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(76544368452771926)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_imp.id(152543012382941916)
,p_button_name=>'BT_CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(76543955874771925)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_imp.id(152543012382941916)
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
 p_id=>wwv_flow_imp.id(76543218900771923)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(152220348390501354)
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
 p_id=>wwv_flow_imp.id(76007323953170040)
,p_name=>'P307_COD_SOLUCION'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(152543012382941916)
,p_prompt=>unistr('Soluci\00F3n')
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_SOLUCION'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select cod_solucion||'' - ''||descripcion D, ',
'       cod_solucion R',
'  from ca_soluciones',
' where cod_empresa = :p_cod_empresa'))
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
 p_id=>wwv_flow_imp.id(76544710590771926)
,p_name=>'P307_COD_CATEGORIA'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(152543012382941916)
,p_prompt=>unistr('Categor\00EDa')
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_CATEGORIA_VTRCARTE'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select cod_categoria || '' - '' ||descripcion D, cod_categoria R',
'from st_categorias ',
'where cod_empresa=:P_COD_EMPRESA'))
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
 p_id=>wwv_flow_imp.id(76545196161771927)
,p_name=>'P307_COD_PROBLEMA'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(152543012382941916)
,p_prompt=>'Problema'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_PROBLEMAS'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT COD_PROBLEMA||'' - ''||DESCRIPCION D,',
'       COD_PROBLEMA R',
'  FROM CA_PROBLEMAS ',
' WHERE COD_EMPRESA = :P_COD_EMPRESA'))
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
 p_id=>wwv_flow_imp.id(76545534827771928)
,p_name=>'P307_ACTIVO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(152543012382941916)
,p_item_default=>'S'
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
 p_id=>wwv_flow_imp.id(76547098781771929)
,p_name=>'P307_VBLE_COD_MODULO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(221900782150051258)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(76547483029771930)
,p_name=>'P307_NOM_MODULO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(221900782150051258)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(76547846116771930)
,p_name=>'P307_COD_FORMA'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(221900782150051258)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(76548266322771930)
,p_name=>'P307_NOM_FORMA'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(221900782150051258)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(76548666942771930)
,p_name=>'P307_VBLE_COD_EMPRESA'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(221900782150051258)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(76549038293771930)
,p_name=>'P307_NOM_EMPRESA'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(221900782150051258)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(76549427375771931)
,p_name=>'P307_COD_SUCURSAL'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(221900782150051258)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(76549873071771931)
,p_name=>'P307_NOM_SUCURSAL'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(221900782150051258)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(76550266243771931)
,p_name=>'P307_COD_USUARIO'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(221900782150051258)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(76550662144771931)
,p_name=>'P307_AUX_ID_EDITAR'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(221900782150051258)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(76551024548771931)
,p_name=>'P307_AUX_ID_ELIMINAR'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(221900782150051258)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(76551459769771932)
,p_name=>'P307_MSJE_SUCCES'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(221900782150051258)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(76559363732771941)
,p_name=>'DA_EDITAR'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P307_AUX_ID_EDITAR'
,p_condition_element=>'P307_AUX_ID_EDITAR'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(76560824894771941)
,p_event_id=>wwv_flow_imp.id(76559363732771941)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT COD_CATEGORIA,',
'       COD_PROBLEMA,',
'       COD_SOLUCION,',
'       ACTIVO',
' INTO :P307_COD_CATEGORIA,',
'      :P307_COD_PROBLEMA,',
'      :P307_COD_SOLUCION,',
'      :P307_ACTIVO      ',
' FROM CA_CATEGORIAS_PRO_SOL',
'WHERE ROWID = :P307_AUX_ID_EDITAR;'))
,p_attribute_02=>'P307_AUX_ID_EDITAR'
,p_attribute_03=>'P307_COD_CATEGORIA,P307_COD_PROBLEMA,P307_ACTIVO,P307_COD_SOLUCION'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(76559846107771941)
,p_event_id=>wwv_flow_imp.id(76559363732771941)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(152543012382941916)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(76560343164771941)
,p_event_id=>wwv_flow_imp.id(76559363732771941)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(152543012382941916)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(76557424707771940)
,p_name=>'DA_ELIMINAR'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P307_AUX_ID_ELIMINAR'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(76557978996771940)
,p_event_id=>wwv_flow_imp.id(76557424707771940)
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
 p_id=>wwv_flow_imp.id(76558446729771940)
,p_event_id=>wwv_flow_imp.id(76557424707771940)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    DELETE FROM CA_CATEGORIAS_PRO_SOL',
'     WHERE ROWID = :P307_AUX_ID_ELIMINAR;',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;'))
,p_attribute_02=>'P307_AUX_ID_ELIMINAR'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(76558977953771940)
,p_event_id=>wwv_flow_imp.id(76557424707771940)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(152220348390501354)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(76552250902771935)
,p_name=>'DA_CANCEL'
,p_event_sequence=>30
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(76544368452771926)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(76552749764771936)
,p_event_id=>wwv_flow_imp.id(76552250902771935)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(76553185247771937)
,p_name=>'DA_GUARDAR'
,p_event_sequence=>40
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(76543955874771925)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(76553633693771937)
,p_event_id=>wwv_flow_imp.id(76553185247771937)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    IF :P307_AUX_ID_EDITAR IS NOT NULL THEN',
'        UPDATE CA_CATEGORIAS_PRO_SOL',
'           SET COD_CATEGORIA = :P307_COD_CATEGORIA,',
'               COD_PROBLEMA = :P307_COD_PROBLEMA,',
'               COD_SOLUCION = :P307_COD_SOLUCION,',
'               ACTIVO = :P307_ACTIVO',
'         WHERE ROWID = :P307_AUX_ID_EDITAR;',
'        :P307_MSJE_SUCCES := 2;',
'    ELSE',
'        INSERT INTO CA_CATEGORIAS_PRO_SOL (COD_EMPRESA,',
'                                            COD_CATEGORIA,',
'                                            COD_PROBLEMA,',
'                                            COD_SOLUCION,',
'                                            FEC_ALTA,',
'                                            COD_USUARIO,',
'                                            ACTIVO)',
'                                     VALUES (:P307_VBLE_COD_EMPRESA,',
'                                             :P307_COD_CATEGORIA,',
'                                             :P307_COD_PROBLEMA,',
'                                             :P307_COD_SOLUCION,',
'                                             SYSDATE,',
'                                             :APP_USER,',
'                                             :P307_ACTIVO);',
'        :P307_MSJE_SUCCES := 1;',
'    END IF;',
'',
'END;'))
,p_attribute_02=>'P307_AUX_ID_EDITAR,P307_COD_CATEGORIA,P307_COD_PROBLEMA,P307_COD_SOLUCION,P307_ACTIVO,P307_VBLE_COD_EMPRESA'
,p_attribute_03=>'P307_MSJE_SUCCES'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(76554151557771937)
,p_event_id=>wwv_flow_imp.id(76553185247771937)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'El registro fue creado correctamente.'
,p_attribute_02=>unistr('Operaci\00F3n existosa')
,p_attribute_03=>'success'
,p_attribute_04=>'fa-check-circle'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P307_MSJE_SUCCES'
,p_client_condition_expression=>'1'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(76554641570771937)
,p_event_id=>wwv_flow_imp.id(76553185247771937)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'Los cambios fueron guardados correctamente.'
,p_attribute_02=>unistr('Operaci\00F3n existosa')
,p_attribute_03=>'success'
,p_attribute_04=>'fa-check-circle'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P307_MSJE_SUCCES'
,p_client_condition_expression=>'2'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(76555188033771938)
,p_event_id=>wwv_flow_imp.id(76553185247771937)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(152220348390501354)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(76555644771771939)
,p_event_id=>wwv_flow_imp.id(76553185247771937)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(152543012382941916)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(76556099259771939)
,p_name=>'DA_AGREGAR'
,p_event_sequence=>50
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(76543218900771923)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(76556537721771939)
,p_event_id=>wwv_flow_imp.id(76556099259771939)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P307_AUX_ID_EDITAR,P307_COD_CATEGORIA,P307_COD_PROBLEMA,P307_COD_SOLUCION,P307_ACTIVOP307_VBLE_COD_EMPRESA'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(76557093481771940)
,p_event_id=>wwv_flow_imp.id(76556099259771939)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(152543012382941916)
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(76551804459771934)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_INIT'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'--:P_COD_EMPRESA := ''1'';',
'',
':P_COD_MODULO := ''CA'';',
'',
':P307_COD_USUARIO := NVL(:P_COD_USUARIO, :APP_USER);',
':P307_VBLE_COD_EMPRESA := NVL(:P_COD_EMPRESA,''1'');',
':P307_NOM_EMPRESA := :P_NOM_EMPRESA;',
':P307_COD_SUCURSAL := :P_COD_SUCURSAL;',
':P307_NOM_SUCURSAL := :P_NOM_SUCURSAL;',
':P307_VBLE_COD_MODULO := NVL(:P_COD_MODULO,''CA'');',
'',
'LIBRERIA_FORMAS.RUTINA_INICIAL(PI_COD_MODULO => :P307_VBLE_COD_MODULO,',
'                               PI_COD_FORMA  => :P307_COD_FORMA,',
'                               PI_NOM_MODULO => :P307_NOM_MODULO,',
'                               PI_NOM_FORMA  => :P307_NOM_FORMA,',
'            				   PO_NOM_MODULO => :P307_NOM_MODULO,',
'            				   PO_NOM_FORMA  => :P307_NOM_FORMA);'))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_imp.component_end;
end;
/
