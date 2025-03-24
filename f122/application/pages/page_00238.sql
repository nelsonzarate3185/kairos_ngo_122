prompt --application/pages/page_00238
begin
--   Manifest
--     PAGE: 00238
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
 p_id=>238
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'FVPROYEC'
,p_alias=>'FVPROYEC'
,p_step_title=>'Proyecciones de Ventas por Unidades de Negocio'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_last_updated_by=>'NZARATE'
,p_last_upd_yyyymmddhh24miss=>'20240920152015'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(54447528162929501)
,p_plug_name=>'Proyecciones de Ventas por Unidades de Negocio'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>50
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(54447636136929502)
,p_plug_name=>'VARIABLES'
,p_parent_plug_id=>wwv_flow_imp.id(54447528162929501)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(54448222733929508)
,p_plug_name=>'CREAR/MODIFICAR'
,p_parent_plug_id=>wwv_flow_imp.id(54447528162929501)
,p_region_template_options=>'#DEFAULT#:js-dialog-autoheight:js-dialog-size720x480'
,p_plug_template=>wwv_flow_imp.id(40120082745263659)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(54506114475200206)
,p_plug_name=>unistr('Agregar/Editar Proyecci\00F3n')
,p_parent_plug_id=>wwv_flow_imp.id(54448222733929508)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(54449968613929525)
,p_plug_name=>'REPORTE'
,p_parent_plug_id=>wwv_flow_imp.id(54447528162929501)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT C001 COD_EMPRESA,',
'       C002 COD_TIPO_GRUPO,',
'       C003 DESC_CATEGORIA,',
'       C004 COD_VENDEDOR,',
'       C005 MES,',
'       C006 ANHO,',
'       TO_NUMBER(C007) PROYECCION,',
'       TO_NUMBER(C008) REALIZADO,',
'       C009 DESC_VENDEDOR,',
'       C010 CONTROL,',
'       C011 ROW_ID,',
'       NULL ELIMINAR,',
'       NULL EDITAR,',
'       SEQ_ID',
'  FROM APEX_COLLECTIONS',
' WHERE COLLECTION_NAME = ''DETALLE_FVPROYEC''',
'   AND (C010 IS NULL OR C010 IN (''I'', ''U''));      '))
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
 p_id=>wwv_flow_imp.id(54450072348929526)
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
,p_internal_uid=>54450072348929526
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(54450184804929527)
,p_db_column_name=>'COD_EMPRESA'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Cod Empresa'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(54450277599929528)
,p_db_column_name=>'COD_TIPO_GRUPO'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>unistr('C\00F3digo')
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(54450385423929529)
,p_db_column_name=>'DESC_CATEGORIA'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>unistr('Descripci\00F3n Unidad de Negocio')
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(54450419091929530)
,p_db_column_name=>'COD_VENDEDOR'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Vendedor'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(54450594858929531)
,p_db_column_name=>'MES'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Mes'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(54450615077929532)
,p_db_column_name=>'ANHO'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>unistr('A\00F1o')
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(54450908200929535)
,p_db_column_name=>'DESC_VENDEDOR'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Nombre'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(54451086829929536)
,p_db_column_name=>'PROYECCION'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>unistr('Proyecci\00F3n')
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(54451107151929537)
,p_db_column_name=>'REALIZADO'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Realizado'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(54452327912929549)
,p_db_column_name=>'ELIMINAR'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Eliminar'
,p_column_link=>'javascript:$s(''P238_ELIMINA_REGISTRO'',''#SEQ_ID#'');'
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
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(54452486020929550)
,p_db_column_name=>'EDITAR'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Editar'
,p_column_link=>'javascript:$s(''P238_ABRE_EDITAR'',''#SEQ_ID#'');'
,p_column_linktext=>'<span class="fa fa-edit" aria-hidden="true"></span>'
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
 p_id=>wwv_flow_imp.id(54505942937200204)
,p_db_column_name=>'SEQ_ID'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>'Seq Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(54508187339200226)
,p_db_column_name=>'CONTROL'
,p_display_order=>150
,p_column_identifier=>'O'
,p_column_label=>'Control'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(54508282753200227)
,p_db_column_name=>'ROW_ID'
,p_display_order=>160
,p_column_identifier=>'P'
,p_column_label=>'Row Id'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(54480212221114803)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'544803'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'COD_TIPO_GRUPO:DESC_CATEGORIA:COD_VENDEDOR:DESC_VENDEDOR:MES:ANHO:PROYECCION:REALIZADO:EDITAR:ELIMINAR:'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(54451601662929542)
,p_button_sequence=>90
,p_button_plug_id=>wwv_flow_imp.id(54506114475200206)
,p_button_name=>'CANCELAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_image_alt=>'Cancelar'
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(54451534078929541)
,p_button_sequence=>80
,p_button_plug_id=>wwv_flow_imp.id(54506114475200206)
,p_button_name=>'GUARDAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Guardar'
,p_button_position=>'CREATE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(54451208273929538)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(54447528162929501)
,p_button_name=>'CREAR'
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
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(54507266428200217)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(54447528162929501)
,p_button_name=>'CONFIRMAR_CAMBIOS'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Confirmar Cambios'
,p_button_position=>'EDIT'
,p_warn_on_unsaved_changes=>null
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    RETURN SEGURIDAD_GRANULAR.FC_MOSTRAR_CONFIRMAR (pusua0100_id => :P_USUA0100_ID,',
'                                                    ppage_id => :APP_PAGE_ID,',
'                                                    papli0100_id => :P_APLI0100_ID);',
'END;'))
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'FUNCTION_BODY'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(54447776522929503)
,p_name=>'P238_COD_EMPRESA'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(54447636136929502)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(54447838903929504)
,p_name=>'P238_COD_MODULO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(54447636136929502)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(54447913127929505)
,p_name=>'P238_COD_SUCURSAL'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(54447636136929502)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(54448118279929507)
,p_name=>'P238_COD_USUARIO'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(54447636136929502)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(54449230850929518)
,p_name=>'P238_COD_EMPRESA_1'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(54506114475200206)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(54449324578929519)
,p_name=>'P238_COD_TIPO_GRUPO'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(54506114475200206)
,p_prompt=>unistr('C\00F3digo')
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_CAT_VENDEDORES_FVPROYEC'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select descripcion, cod_tipo_grupo D, cod_tipo_grupo R ',
'  from FV_CATEGORIAS_VENDEDORES',
' where cod_empresa = :P_COD_EMPRESA;'))
,p_cSize=>30
,p_cMaxlength=>15
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
 p_id=>wwv_flow_imp.id(54449403337929520)
,p_name=>'P238_MES'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(54506114475200206)
,p_prompt=>'Mes'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>15
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(54449535539929521)
,p_name=>'P238_ANHO'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(54506114475200206)
,p_prompt=>unistr('A\00F1o')
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>15
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(54449609398929522)
,p_name=>'P238_PROYECCION'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(54506114475200206)
,p_prompt=>unistr('Proyecci\00F3n')
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(54449799842929523)
,p_name=>'P238_REALIZADO'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(54506114475200206)
,p_prompt=>'Realizado'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(54449897358929524)
,p_name=>'P238_COD_VENDEDOR'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(54506114475200206)
,p_prompt=>unistr('C\00F3digo Vendedor')
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_VENDEDORES_FVPROYEC'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  select pe.nombre, em.cod_vendedor R, em.cod_vendedor D',
'    from fv_vendedores em ,personas pe ',
'   where em.cod_empresa = :P_COD_EMPRESA ',
'     and em.cod_persona = pe.cod_persona  ',
'     and em.cod_tipo_grupo=:P238_COD_TIPO_GRUPO',
'     and ESTADO IN(''A'',''S'')',
'order by pe.nombre'))
,p_lov_cascade_parent_items=>'P238_COD_TIPO_GRUPO'
,p_ajax_items_to_submit=>'P238_COD_TIPO_GRUPO'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>30
,p_cMaxlength=>60
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
 p_id=>wwv_flow_imp.id(54452120635929547)
,p_name=>'P238_DESC_CATEGORIA'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(54506114475200206)
,p_prompt=>unistr('Descripci\00F3n Unidad de Negocio')
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>15
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(54452291382929548)
,p_name=>'P238_DESC_VENDEDOR'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(54506114475200206)
,p_prompt=>'Vendedor'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>60
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(54505645687200201)
,p_name=>'P238_ABRE_EDITAR'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(54506114475200206)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(54506724215200212)
,p_name=>'P238_ELIMINA_REGISTRO'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(54447636136929502)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(54507886198200223)
,p_name=>'P238_AUX_MSJ'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(54447636136929502)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(54508082846200225)
,p_name=>'P238_ROWID'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(54506114475200206)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(54451376646929539)
,p_name=>'DA_CREAR'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(54451208273929538)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(54506449261200209)
,p_event_id=>wwv_flow_imp.id(54451376646929539)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P238_ROWID,P238_COD_EMPRESA_1,P238_COD_TIPO_GRUPO,P238_DESC_CATEGORIA,P238_MES,P238_ANHO,P238_PROYECCION,P238_REALIZADO,P238_COD_VENDEDOR,P238_DESC_VENDEDOR,P238_ABRE_EDITAR'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(54451406110929540)
,p_event_id=>wwv_flow_imp.id(54451376646929539)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(54448222733929508)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(54451781598929543)
,p_name=>'DA_CANCELAR'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(54451601662929542)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(54451898270929544)
,p_event_id=>wwv_flow_imp.id(54451781598929543)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(54448222733929508)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(54451939595929545)
,p_name=>'DA_GUARDAR'
,p_event_sequence=>30
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(54451534078929541)
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>'apex.item(''P238_COD_TIPO_GRUPO'').getValue() == '''' || apex.item(''P238_MES'').getValue() == '''' || apex.item(''P238_ANHO'').getValue() == '''' || apex.item(''P238_COD_VENDEDOR'').getValue() == '''''
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(54507782739200222)
,p_event_id=>wwv_flow_imp.id(54451939595929545)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    :P238_AUX_MSJ := NULL;',
'    IF :P238_COD_TIPO_GRUPO IS NULL THEN',
unistr('        :P238_AUX_MSJ := ''Los datos est\00E1n incompletos. Debe seleccionar un c\00F3digo. '';'),
'    END IF;  ',
'    IF :P238_MES IS NULL THEN',
'        :P238_AUX_MSJ := :P238_AUX_MSJ || ''Debe ingresar un mes. '';',
'    END IF;  ',
'    IF :P238_ANHO IS NULL THEN',
unistr('        :P238_AUX_MSJ := :P238_AUX_MSJ || ''Debe ingresar un a\00F1o. '';'),
'    END IF;  ',
'    IF :P238_COD_VENDEDOR IS NULL THEN',
'        :P238_AUX_MSJ := :P238_AUX_MSJ || ''Debe seleccionar un vendedor. '';',
'    END IF;     ',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        RAISE_APPLICATION_eRROR(-20000, SQLERRM);',
'END;            '))
,p_attribute_02=>'P238_COD_TIPO_GRUPO,P238_MES,P238_ANHO,P238_COD_VENDEDOR'
,p_attribute_03=>'P238_AUX_MSJ'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(54507395281200218)
,p_event_id=>wwv_flow_imp.id(54451939595929545)
,p_event_result=>'FALSE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'fvproyec.pr_agrega_registro(PI_COD_EMPRESA     => :P238_COD_EMPRESA, ',
'                            PI_COD_TIPO_GRUPO  => :P238_COD_TIPO_GRUPO,',
'                            PI_DESC_CATEGORIA  => :P238_DESC_CATEGORIA,',
'                            PI_COD_VENDEDOR    => :P238_COD_VENDEDOR,',
'                            PI_MES             => :P238_MES,',
'                            PI_ANHO            => :P238_ANHO,',
'                            PI_PROYECCION      => :P238_PROYECCION,',
'                            PI_REALIZADO       => :P238_REALIZADO,',
'                            PI_DESC_VENDEDOR   => :P238_DESC_VENDEDOR,',
'                            PI_SEQ_ID          => :P238_ABRE_EDITAR,',
'                            PI_ROW_ID          => :P238_ROWID);',
'      '))
,p_attribute_02=>'P238_ROWID,P238_ABRE_EDITAR,P238_COD_EMPRESA, P238_COD_TIPO_GRUPO, P238_DESC_CATEGORIA, P238_COD_VENDEDOR, P238_MES, P238_ANHO, P238_PROYECCION, P238_REALIZADO, P238_DESC_VENDEDOR'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(54507940914200224)
,p_event_id=>wwv_flow_imp.id(54451939595929545)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'&P238_AUX_MSJ.'
,p_attribute_02=>'Error'
,p_attribute_06=>'Aceptar'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(54507537477200220)
,p_event_id=>wwv_flow_imp.id(54451939595929545)
,p_event_result=>'FALSE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(54449968613929525)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(54452083003929546)
,p_event_id=>wwv_flow_imp.id(54451939595929545)
,p_event_result=>'FALSE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(54448222733929508)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(54505732854200202)
,p_name=>'DA_ABRE_EDITAR'
,p_event_sequence=>40
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P238_ABRE_EDITAR'
,p_condition_element=>'P238_ABRE_EDITAR'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(54505850918200203)
,p_event_id=>wwv_flow_imp.id(54505732854200202)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    SELECT C001,',
'           C002,',
'           C003,',
'           C004,',
'           C005,',
'           C006,',
'           TO_NUMBER(C007),',
'           TO_NUMBER(C008),',
'           C009,',
'           C011',
'      INTO :P238_COD_EMPRESA_1,',
'           :P238_COD_TIPO_GRUPO,',
'           :P238_DESC_CATEGORIA,',
'           :P238_COD_VENDEDOR,',
'           :P238_MES,',
'           :P238_ANHO,',
'           :P238_PROYECCION,',
'           :P238_REALIZADO,',
'           :P238_DESC_VENDEDOR,',
'           :P238_ROWID ',
'      FROM APEX_COLLECTIONS',
'     WHERE COLLECTION_NAME = ''DETALLE_FVPROYEC''',
'       AND SEQ_ID = :P238_ABRE_EDITAR;    ',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        NULL;',
'END;'))
,p_attribute_02=>'P238_ABRE_EDITAR'
,p_attribute_03=>'P238_ROWID,P238_COD_EMPRESA_1,P238_COD_TIPO_GRUPO,P238_DESC_CATEGORIA,P238_COD_VENDEDOR,P238_DESC_VENDEDOR,P238_MES,P238_ANHO,P238_PROYECCION,P238_REALIZADO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(54506013551200205)
,p_event_id=>wwv_flow_imp.id(54505732854200202)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(54448222733929508)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(54506233432200207)
,p_name=>'DA_COD_TIPO_GRUPO'
,p_event_sequence=>50
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P238_COD_TIPO_GRUPO'
,p_condition_element=>'P238_COD_TIPO_GRUPO'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(54506347586200208)
,p_event_id=>wwv_flow_imp.id(54506233432200207)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'FVPROYEC.pr_desc_categoria (PI_COD_TIPO_GRUPO => :P238_COD_TIPO_GRUPO,',
'                            PO_DESC_CATEGORIA => :P238_DESC_CATEGORIA);'))
,p_attribute_02=>'P238_COD_TIPO_GRUPO'
,p_attribute_03=>'P238_DESC_CATEGORIA'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(54506524794200210)
,p_name=>'DA_COD_VENDEDOR'
,p_event_sequence=>60
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P238_COD_VENDEDOR'
,p_condition_element=>'P238_COD_VENDEDOR'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(54506690878200211)
,p_event_id=>wwv_flow_imp.id(54506524794200210)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'FVPROYEC.pr_desc_vendedor(PI_COD_EMPRESA    => :P238_COD_EMPRESA,',
'                         PI_COD_VENDEDOR   => :P238_COD_VENDEDOR,',
'                         PO_DESC_VENDEDOR  => :P238_DESC_VENDEDOR);'))
,p_attribute_02=>'P238_COD_EMPRESA,P238_COD_VENDEDOR'
,p_attribute_03=>'P238_DESC_VENDEDOR'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(54506831843200213)
,p_name=>'DA_ELIMINAR_REGISTRO'
,p_event_sequence=>70
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P238_ELIMINA_REGISTRO'
,p_condition_element=>'P238_ELIMINA_REGISTRO'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(54507069196200215)
,p_event_id=>wwv_flow_imp.id(54506831843200213)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>unistr('\00BFDesea eliminar el registro?')
,p_attribute_03=>'warning'
,p_attribute_04=>'fa-warning'
,p_attribute_06=>'Aceptar'
,p_attribute_07=>'Cancelar'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(54506951620200214)
,p_event_id=>wwv_flow_imp.id(54506831843200213)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'fvproyec.pr_borra_registro (PI_SEQ_ID => :P238_ELIMINA_REGISTRO);    '
,p_attribute_02=>'P238_ELIMINA_REGISTRO'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(54507166076200216)
,p_event_id=>wwv_flow_imp.id(54506831843200213)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(54449968613929525)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(54508458749200229)
,p_name=>'DA_CONFIRMAR_CAMBIOS'
,p_event_sequence=>80
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(54507266428200217)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
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
 p_id=>wwv_flow_imp.id(54508546149200230)
,p_event_id=>wwv_flow_imp.id(54508458749200229)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>unistr('\00BFDesea confirmar los cambios?')
,p_attribute_06=>'Aceptar'
,p_attribute_07=>'Cancelar'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(54508665798200231)
,p_event_id=>wwv_flow_imp.id(54508458749200229)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_01=>'CONFIRMAR'
,p_attribute_02=>'Y'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(54448099057929506)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_INIT'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P_COD_MODULO := ''FV'';',
':P238_COD_EMPRESA := :P_COD_EMPRESA;',
':P238_COD_USUARIO := NVL(:P_COD_USUARIO, :APP_USER);',
':P238_COD_SUCURSAL := :P_COD_SUCURSAL;',
':P238_COD_MODULO := :P_COD_MODULO;',
'',
'FVPROYEC.PR_CARGA_COLECCION(:P_COD_EMPRESA);',
''))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(54508356208200228)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_GUARDAR'
,p_process_sql_clob=>'FVPROYEC.pr_confirma_datos;'
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CONFIRMAR'
,p_process_when_type=>'REQUEST_EQUALS_CONDITION'
,p_process_success_message=>'Los datos se han guardado correctamente.'
);
wwv_flow_imp.component_end;
end;
/
