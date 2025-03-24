prompt --application/pages/page_00132
begin
--   Manifest
--     PAGE: 00132
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
 p_id=>132
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'E-mail de contactos'
,p_alias=>'E-MAIL-DE-CONTACTOS'
,p_page_mode=>'MODAL'
,p_step_title=>'E-mail de contactos'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_height=>'600'
,p_dialog_width=>'1000'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_last_updated_by=>'JOSEFINAGU'
,p_last_upd_yyyymmddhh24miss=>'20221102154941'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(29540520110173415)
,p_plug_name=>'&nbsp'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(29541663432173426)
,p_plug_name=>'REPORTE_MAILS'
,p_parent_plug_id=>wwv_flow_imp.id(29540520110173415)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT SEQ_ID,',
'       C001 COD_PERSONA,',
'       C002||'' - ''||C003 AREA,',
'       C004 PERSONA_CONTACTO,',
'       C005 DESC_PERSONA_CONTACTO,',
'       C006 DIREC_ELECTRONICA,',
'       C007 NOMBRE_CONTACTO,',
'       NULL EDITAR,',
'       NULL ELIMINAR,',
'       C008 CONTROL,',
'       C009 ROW_ID',
'  FROM APEX_COLLECTIONS',
' WHERE COLLECTION_NAME = ''COL_EMAIL'';'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'REPORTE_MAILS'
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
 p_id=>wwv_flow_imp.id(29541700753173427)
,p_max_row_count=>'1000000'
,p_no_data_found_message=>'No hay E-mails de contacto'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_fixed_header=>'NONE'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'JOSEFINAGU'
,p_internal_uid=>29541700753173427
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(30437067173751901)
,p_db_column_name=>'SEQ_ID'
,p_display_order=>10
,p_column_identifier=>'K'
,p_column_label=>'Seq Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(29541802459173428)
,p_db_column_name=>'COD_PERSONA'
,p_display_order=>20
,p_column_identifier=>'A'
,p_column_label=>'Cod Persona'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(29542527351173435)
,p_db_column_name=>'AREA'
,p_display_order=>30
,p_column_identifier=>'F'
,p_column_label=>unistr('\00C1rea de Contacto')
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(29542190804173431)
,p_db_column_name=>'PERSONA_CONTACTO'
,p_display_order=>40
,p_column_identifier=>'B'
,p_column_label=>'Persona Contacto'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(29542267384173432)
,p_db_column_name=>'DESC_PERSONA_CONTACTO'
,p_display_order=>50
,p_column_identifier=>'C'
,p_column_label=>'&nbsp'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(29542359229173433)
,p_db_column_name=>'DIREC_ELECTRONICA'
,p_display_order=>60
,p_column_identifier=>'D'
,p_column_label=>'E-mail'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(29542487808173434)
,p_db_column_name=>'NOMBRE_CONTACTO'
,p_display_order=>70
,p_column_identifier=>'E'
,p_column_label=>'Contacto'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(29543758651173447)
,p_db_column_name=>'EDITAR'
,p_display_order=>80
,p_column_identifier=>'G'
,p_column_label=>'Editar'
,p_column_link=>'javascript:$s(''P132_AUX_SEQ_ID_EDITAR'',#SEQ_ID#);'
,p_column_linktext=>'<span aria-label="Edit"><span class="fa fa-edit" aria-hidden="true" title="Edit"></span></span>'
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
'    END IF;                                                       ',
'END;'))
,p_display_condition2=>'PLSQL'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(29543861161173448)
,p_db_column_name=>'ELIMINAR'
,p_display_order=>90
,p_column_identifier=>'H'
,p_column_label=>'Eliminar'
,p_column_link=>'javascript:$s(''P132_AUX_SEQ_ID_ELIMINAR'',#SEQ_ID#);'
,p_column_linktext=>'<span class="fa fa-trash" aria-hidden="true"></span>'
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
'    END IF;  ',
'    ',
'END;'))
,p_display_condition2=>'PLSQL'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(29543930364173449)
,p_db_column_name=>'CONTROL'
,p_display_order=>100
,p_column_identifier=>'I'
,p_column_label=>'Control'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(29544024504173450)
,p_db_column_name=>'ROW_ID'
,p_display_order=>110
,p_column_identifier=>'J'
,p_column_label=>'Row Id'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(30386608090381010)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'303867'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'AREA:PERSONA_CONTACTO:DESC_PERSONA_CONTACTO:DIREC_ELECTRONICA:NOMBRE_CONTACTO:EDITAR:ELIMINAR:'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(30437468986751905)
,p_plug_name=>'Editar Contacto'
,p_region_template_options=>'#DEFAULT#:js-dialog-size600x400'
,p_plug_template=>wwv_flow_imp.id(40117728043263659)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(30437994066751910)
,p_button_sequence=>120
,p_button_plug_id=>wwv_flow_imp.id(30437468986751905)
,p_button_name=>'BT_ACEPTAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Aceptar'
,p_button_position=>'BELOW_BOX'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(29540980863173419)
,p_button_sequence=>120
,p_button_plug_id=>wwv_flow_imp.id(29540520110173415)
,p_button_name=>'BT_AGREGAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Agregar'
,p_warn_on_unsaved_changes=>null
,p_button_cattributes=>'style="margin-top:9px;"'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
,p_grid_column_span=>2
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(29543427173173444)
,p_button_sequence=>80
,p_button_plug_id=>wwv_flow_imp.id(29540520110173415)
,p_button_name=>'BT_GUARDAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Confirmar Cambios'
,p_button_position=>'EDIT'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(31069435456852802)
,p_button_sequence=>90
,p_button_plug_id=>wwv_flow_imp.id(29540520110173415)
,p_button_name=>'BT_VOLVER'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_image_alt=>'Volver'
,p_button_position=>'EDIT'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(29540630511173416)
,p_name=>'P132_COD_PERSONA_CONTACTO'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(29540520110173415)
,p_prompt=>'Persona Contacto'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(29540752063173417)
,p_name=>'P132_DIREC_ELECTRONICA'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(29540520110173415)
,p_prompt=>'E-mail'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(29540834516173418)
,p_name=>'P132_COD_AREA'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(29540520110173415)
,p_prompt=>unistr('\00C1rea de contacto')
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_AREAS_CONTACTO'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT COD_AREA||'' - ''||DESCRIPCION D, ',
'       COD_AREA R        ',
'  FROM AREAS_CONTACTOS',
' WHERE COD_EMPRESA = :P_COD_EMPRESA'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- Seleccione -'
,p_cSize=>30
,p_colspan=>3
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
 p_id=>wwv_flow_imp.id(29542987229173439)
,p_name=>'P132_COD_PERSONA'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(29540520110173415)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(29543011656173440)
,p_name=>'P132_NOMBRE_CONTACTO'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(29540520110173415)
,p_prompt=>unistr('Contacto (si no est\00E1 la persona)')
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(29543568383173445)
,p_name=>'P132_AUX_SEQ_ID_EDITAR'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(29540520110173415)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(29543669739173446)
,p_name=>'P132_AUX_SEQ_ID_ELIMINAR'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(29540520110173415)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(30437509677751906)
,p_name=>'P132_ED_COD_AREA'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(30437468986751905)
,p_prompt=>unistr('\00C1rea de contacto')
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_AREAS_CONTACTO'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT COD_AREA||'' - ''||DESCRIPCION D, ',
'       COD_AREA R        ',
'  FROM AREAS_CONTACTOS',
' WHERE COD_EMPRESA = :P_COD_EMPRESA'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- Seleccione -'
,p_cSize=>30
,p_colspan=>4
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
 p_id=>wwv_flow_imp.id(30437622964751907)
,p_name=>'P132_ED_COD_PERSONA_CONTACTO'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(30437468986751905)
,p_prompt=>'Persona Contacto'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(30437743404751908)
,p_name=>'P132_ED_DIREC_ELECTRONICA'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(30437468986751905)
,p_prompt=>'E-mail'
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
 p_id=>wwv_flow_imp.id(30437894470751909)
,p_name=>'P132_ED_NOMBRE_CONTACTO'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(30437468986751905)
,p_prompt=>unistr('Contacto (si no est\00E1 la persona)')
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(30441468645751945)
,p_name=>'P132_ERROR'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(30437468986751905)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(30441684447751947)
,p_name=>'P132_ED_AUX_SEQ_ID'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(30437468986751905)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(30441833849751949)
,p_name=>'P132_ED_COD_PERSONA'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(30437468986751905)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(29543146953173441)
,p_name=>'DA_AGREGAR_MAIL'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(29540980863173419)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(29543258008173442)
,p_event_id=>wwv_flow_imp.id(29543146953173441)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    BSPERSON.AGREGAR_EMAIL_CONTACTO (PI_COD_PERSONA 	  => :P132_COD_PERSONA,',
'    								 PI_COD_AREA 		  => :P132_COD_AREA,',
'    								 PI_PERSONA_CONTACTO  => :P132_COD_PERSONA_CONTACTO,',
'    								 PI_DIREC_ELECTRONICA => :P132_DIREC_ELECTRONICA,',
'    								 PI_NOMBRE_CONTACTO   => :P132_NOMBRE_CONTACTO);',
'EXCEPTION ',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(''DA_AGREGAR_MAIL - BSPERSON.AGREGAR_EMAIL_CONTACTO - ''||SQLERRM);',
'END;'))
,p_attribute_02=>'P132_COD_PERSONA,P132_COD_AREA,P132_COD_PERSONA_CONTACTO,P132_DIREC_ELECTRONICA,P132_NOMBRE_CONTACTO'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(29543359381173443)
,p_event_id=>wwv_flow_imp.id(29543146953173441)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(29541663432173426)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(30437185661751902)
,p_name=>'DA_ELIMINAR_EMAIL'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P132_AUX_SEQ_ID_ELIMINAR'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(30437234061751903)
,p_event_id=>wwv_flow_imp.id(30437185661751902)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    BSPERSON.ELIMINAR_EMAIL_CONTACTO(PI_NOM_COL => ''COL_EMAIL'',',
'							         PI_SEQ_ID  => :P132_AUX_SEQ_ID_ELIMINAR);',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(''DA_ELIMINAR_EMAIL - BSPERSON.ELIMINAR_EMAIL_CONTACTO - ''||SQLERRM);',
' END;'))
,p_attribute_02=>'P132_AUX_SEQ_ID_ELIMINAR'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(30437328097751904)
,p_event_id=>wwv_flow_imp.id(30437185661751902)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(29541663432173426)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(30438003029751911)
,p_name=>'DA_ABRIR_REGION'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P132_AUX_SEQ_ID_EDITAR'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(30438168876751912)
,p_event_id=>wwv_flow_imp.id(30438003029751911)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(30437468986751905)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(30441733895751948)
,p_event_id=>wwv_flow_imp.id(30438003029751911)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'	SELECT C001 COD_PERSONA,',
'		   C002 COD_AREA,',
'		   C004 PERSONA_CONTACTO,',
'		   C006 DIREC_ELECTRONICA,',
'		   C007 NOMBRE_CONTACTO',
'	  INTO :P132_ED_COD_PERSONA,',
'           :P132_ED_COD_AREA,',
'           :P132_ED_COD_PERSONA_CONTACTO,',
'           :P132_ED_DIREC_ELECTRONICA,',
'           :P132_ED_NOMBRE_CONTACTO',
'	  FROM APEX_COLLECTIONS',
'     WHERE COLLECTION_NAME = ''COL_EMAIL''',
'	   AND SEQ_ID = :P132_AUX_SEQ_ID_EDITAR;'))
,p_attribute_02=>'P132_AUX_SEQ_ID_EDITAR'
,p_attribute_03=>'P132_ED_COD_PERSONA,P132_ED_COD_AREA,P132_ED_COD_PERSONA_CONTACTO,P132_ED_DIREC_ELECTRONICA,P132_ED_NOMBRE_CONTACTO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(30438286840751913)
,p_name=>'DA_CLOSE_EDITAR'
,p_event_sequence=>40
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(30438301707751914)
,p_event_id=>wwv_flow_imp.id(30438286840751913)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(30437468986751905)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(30438404973751915)
,p_name=>'DA_ACTUALIZAR_CERRAR'
,p_event_sequence=>50
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(30437994066751910)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(30438649510751917)
,p_event_id=>wwv_flow_imp.id(30438404973751915)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P132_ERROR := 0;',
'BEGIN',
'    IF :P132_DIREC_ELECTRONICA IS NULL THEN',
'        :P132_ERROR := 1;',
'    ELSE',
'        BSPERSON.ACTUALIZAR_COLECCION_EMAIL (PI_SEQ_ID            => :P132_AUX_SEQ_ID_EDITAR,',
'                                             PI_COD_AREA 		  => :P132_ED_COD_AREA,',
'        									 PI_PERSONA_CONTACTO  => :P132_ED_COD_PERSONA_CONTACTO,',
'        									 PI_DIREC_ELECTRONICA => :P132_ED_DIREC_ELECTRONICA,',
'        									 PI_NOMBRE_CONTACTO   => :P132_ED_NOMBRE_CONTACTO);',
'    END IF;',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(''DA_ACTUALIZAR_EMAIL - BSPERSON.ACTUALIZAR_COLECCION_EMAIL - ''||SQLERRM);',
'END;'))
,p_attribute_02=>'P132_AUX_SEQ_ID_EDITAR,P132_ED_COD_AREA,P132_ED_COD_PERSONA_CONTACTO,P132_ED_DIREC_ELECTRONICA,P132_ED_NOMBRE_CONTACTO'
,p_attribute_03=>'P132_ERROR'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(30441536285751946)
,p_event_id=>wwv_flow_imp.id(30438404973751915)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>unistr('Debe ingresar al menos una direcci\00F3n de correo electr\00F3nico.')
,p_attribute_03=>'warning'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P132_ERROR'
,p_client_condition_expression=>'1'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(30438577985751916)
,p_event_id=>wwv_flow_imp.id(30438404973751915)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(30437468986751905)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(30438703311751918)
,p_event_id=>wwv_flow_imp.id(30438404973751915)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(29541663432173426)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(30439298340751923)
,p_name=>'DA_GUARDAR_CAMBIOS'
,p_event_sequence=>60
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(29543427173173444)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(30439383834751924)
,p_event_id=>wwv_flow_imp.id(30439298340751923)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    BSPERSON.GUARDAR_MAIL_CONTACTO;',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(''DA_CONFIRMAR_CAMBIOS - BSPERSON.GUARDAR_MAIL_CONTACTO - ''||SQLERRM);',
'END;'))
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(30439415373751925)
,p_event_id=>wwv_flow_imp.id(30439298340751923)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'Los cambios en los mails de contactos fueron registrados correctamente.'
,p_attribute_03=>'success'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(30439526799751926)
,p_event_id=>wwv_flow_imp.id(30439298340751923)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'APEX_COLLECTION.CREATE_OR_TRUNCATE_COLLECTION(P_COLLECTION_NAME => ''COL_EMAIL'');',
'BEGIN',
'    BSPERSON.CARGAR_COLECCION_MAIL(PI_PERS_COD_PERSONA => :P132_COD_PERSONA);',
'EXCEPTION',
'    WHEN OTHERS THEN',
unistr('        APEX_DEBUG.ERROR(-20000,''P\00E1g. 132 - DA_GUARDAR_CAMBIOS - BSPERSON.CARGAR_COLECCION_MAIL - ''||SQLERRM);'),
'END;'))
,p_attribute_02=>'P132_COD_PERSONA'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(30439612207751927)
,p_event_id=>wwv_flow_imp.id(30439298340751923)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(29541663432173426)
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(31069644084852804)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'PR_CLOSE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(31069435456852802)
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(31069369354852801)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_INIT'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT C001',
'  INTO :P132_COD_PERSONA',
'  FROM APEX_COLLECTIONS',
' WHERE COLLECTION_NAME = ''COL_EMAIL''',
'   AND ROWNUM = 1;'))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_imp.component_end;
end;
/
