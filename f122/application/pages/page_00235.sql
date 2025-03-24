prompt --application/pages/page_00235
begin
--   Manifest
--     PAGE: 00235
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
 p_id=>235
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'Alta de Tecnicos'
,p_alias=>'ALTA-DE-TECNICOS'
,p_step_title=>'Alta de Tecnicos'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_last_updated_by=>'INV'
,p_last_upd_yyyymmddhh24miss=>'20231213143809'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(71395603984946826)
,p_plug_name=>'Alta de Tecnicos'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(71395712687946827)
,p_plug_name=>'VT_TECNICOS'
,p_parent_plug_id=>wwv_flow_imp.id(71395603984946826)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>30
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT seq_id SEQ_ID,',
'       c001 COD_TECNICO,',
'       c002 COD_PERSONA, ',
'       c003 COD_EMPRESA, ',
'       c004 NOMBRE,',
'       c005 COD_USUARIO,',
'       c006 FEC_ALTA,',
'       CASE WHEN c007=''S'' THEN ''ACTIVO'' ELSE ''INACTIVO'' END ESTADO,',
'       c008 ,',
'       c009 ,',
'       c010 ,',
'       c011 ,',
'       c012 CONTROL,',
'       c013 ,',
'       c014 ROW_ID,',
'       NULL EDITAR,',
'       NULL BORRAR',
'  FROM APEX_COLLECTIONS ',
' WHERE COLLECTION_NAME = ''COLEC_VT_TECNICOS''',
'    AND (c012 = ''U'' OR c012 = ''I'' OR c012 IS NULL)',
'ORDER BY TO_NUMBER(c001) DESC'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'VT_TECNICOS'
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
 p_id=>wwv_flow_imp.id(71395764310946828)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'DFINO'
,p_internal_uid=>71395764310946828
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(57568163716520146)
,p_db_column_name=>'COD_USUARIO'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Usuario'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(57568528310520146)
,p_db_column_name=>'ESTADO'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Estado'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(57570198363520149)
,p_db_column_name=>'FEC_ALTA'
,p_display_order=>110
,p_column_identifier=>'L'
,p_column_label=>'Fec Alta'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(57571708324520150)
,p_db_column_name=>'CONTROL'
,p_display_order=>150
,p_column_identifier=>'P'
,p_column_label=>'Control'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(57572162640520150)
,p_db_column_name=>'SEQ_ID'
,p_display_order=>160
,p_column_identifier=>'Q'
,p_column_label=>'Seq Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(57572591506520151)
,p_db_column_name=>'BORRAR'
,p_display_order=>180
,p_column_identifier=>'S'
,p_column_label=>'Borrar'
,p_column_link=>'javascript:$s(''P235_DELETE_DATA'',''#SEQ_ID#'');'
,p_column_linktext=>'<span class="fa fa-trash-o">'
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
 p_id=>wwv_flow_imp.id(57573333468520151)
,p_db_column_name=>'ROW_ID'
,p_display_order=>200
,p_column_identifier=>'U'
,p_column_label=>'Row Id'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(57573790939520152)
,p_db_column_name=>'EDITAR'
,p_display_order=>210
,p_column_identifier=>'V'
,p_column_label=>'Editar'
,p_column_link=>'javascript:$s(''P235_EDIT_DATA'',''#SEQ_ID#'');'
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
 p_id=>wwv_flow_imp.id(45559707077746531)
,p_db_column_name=>'COD_TECNICO'
,p_display_order=>220
,p_column_identifier=>'W'
,p_column_label=>'Cod Tecnico'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(45559899226746532)
,p_db_column_name=>'COD_PERSONA'
,p_display_order=>230
,p_column_identifier=>'X'
,p_column_label=>'Cod Persona'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(45559956818746533)
,p_db_column_name=>'COD_EMPRESA'
,p_display_order=>240
,p_column_identifier=>'Y'
,p_column_label=>'Cod Empresa'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(45560000093746534)
,p_db_column_name=>'NOMBRE'
,p_display_order=>250
,p_column_identifier=>'Z'
,p_column_label=>'Nombre'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(45560127362746535)
,p_db_column_name=>'C008'
,p_display_order=>260
,p_column_identifier=>'AA'
,p_column_label=>'C008'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(45560208104746536)
,p_db_column_name=>'C009'
,p_display_order=>270
,p_column_identifier=>'AB'
,p_column_label=>'C009'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(45560369080746537)
,p_db_column_name=>'C010'
,p_display_order=>280
,p_column_identifier=>'AC'
,p_column_label=>'C010'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(45560414896746538)
,p_db_column_name=>'C011'
,p_display_order=>290
,p_column_identifier=>'AD'
,p_column_label=>'C011'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(45560505120746539)
,p_db_column_name=>'C013'
,p_display_order=>300
,p_column_identifier=>'AE'
,p_column_label=>'C013'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(71431685926970928)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'138668'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>10
,p_report_columns=>'EDITAR:COD_TECNICO:COD_PERSONA:NOMBRE:ESTADO:FEC_ALTA:COD_USUARIO:BORRAR:'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(71399178207946862)
,p_plug_name=>'Agregar/Editar'
,p_region_template_options=>'#DEFAULT#:js-dialog-autoheight:js-dialog-size600x400'
,p_plug_template=>wwv_flow_imp.id(40117728043263659)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(57575521900520156)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(71399178207946862)
,p_button_name=>'BTGUARDAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Guardar'
,p_button_position=>'BELOW_BOX'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(57565802696520139)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(71395603984946826)
,p_button_name=>'BTAGREGAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Agregar'
,p_button_position=>'COPY'
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
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(57566252740520140)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(71395603984946826)
,p_button_name=>'BTGUARDAR_TODO'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Confirmar Cambios'
,p_button_position=>'COPY'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(57566679284520140)
,p_name=>'P235_COD_SUCURSAL'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(71395603984946826)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(57574447880520155)
,p_name=>'P235_DELETE_DATA'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(71395712687946827)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(57574816613520155)
,p_name=>'P235_EDIT_DATA'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(71395712687946827)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(57575972080520156)
,p_name=>'P235_COD_PERSONA'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(71399178207946862)
,p_prompt=>'Persona'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select  nombre, p.cod_persona from cm_proveedores pro, personas p where pro.cod_empresa=:P_COD_EMPRESA',
'and pro.cod_persona=p.COD_PERSONA',
'order by 1 desc'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(57576367925520157)
,p_name=>'P235_COD_TECNICO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(71399178207946862)
,p_prompt=>'Cod Tecnico'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(57577567773520157)
,p_name=>'P235_ESTADO'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(71399178207946862)
,p_item_default=>'''N'''
,p_prompt=>'Estado'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--xlarge'
,p_attribute_01=>'N'
,p_attribute_02=>'S'
,p_attribute_03=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(57579076170520162)
,p_name=>'DA_AGREGAR'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(57575521900520156)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(57581017496520164)
,p_event_id=>wwv_flow_imp.id(57579076170520162)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_02=>'P235_COD_PERSONA,P235_COD_TECNICO,P235_ESTADO'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(57579509066520163)
,p_event_id=>wwv_flow_imp.id(57579076170520162)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    INV.vttecnic.ADD_COL(P_COD_TECNICO => :P235_COD_TECNICO,',
'                         P_COD_PERSONA  => :P235_cod_persona, ',
'                         P_COD_EMPRESA => :P_COD_EMPRESA, ',
'                         pestado       => :P235_ESTADO,                         ',
'                         pcod_usuario  => :P_COD_USUARIO,',
'                         pfecha_alta   => sysdate);',
'EXCEPTION',
'    WHEN OTHERS THEN',
'    APEX_DEBUG.ERROR(''PANTALLA ''||SQLERRM);',
'END;'))
,p_attribute_02=>'P235_COD_PERSONA,P235_COD_TECNICO,P235_ESTADO,P_COD_EMPRESA,P_COD_USUARIO'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P235_EDIT_DATA'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(57580525342520164)
,p_event_id=>wwv_flow_imp.id(57579076170520162)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    VTTECNIC.EDIT_COL(pseq_id       => :P235_EDIT_DATA,',
'                      pcod_tecnico => :P235_COD_TECNICO, ',
'                      pcod_persona  => :P235_COD_PERSONA,',
'                      pcod_empresa => :P_COD_EMPRESA,',
'                      pestado  => :P235_ESTADO,                    ',
'                      pcod_usuario  => :P_COD_USUARIO,',
'                      pfecha_alta   => SYSDATE);',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'    APEX_DEBUG.ERROR(''PANTALLA 235 EDICION ''||SQLERRM);',
'END;'))
,p_attribute_02=>'P235_EDIT_DATA,P235_COD_PERSONA,P235_COD_TECNICO,P235_ESTADO,P_COD_EMPRESA,P_COD_USUARIO'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P235_EDIT_DATA'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(57580070701520164)
,p_event_id=>wwv_flow_imp.id(57579076170520162)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(71399178207946862)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(57581544902520164)
,p_event_id=>wwv_flow_imp.id(57579076170520162)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(71395712687946827)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(57581964230520164)
,p_name=>'DA_ABRIR_MODAL'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(57565802696520139)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(57582478219520165)
,p_event_id=>wwv_flow_imp.id(57581964230520164)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P235_COD_PERSONA,P235_COD_TECNICO,P235_ESTADO,P235_EDIT_DATA'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(57582927199520165)
,p_event_id=>wwv_flow_imp.id(57581964230520164)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(71399178207946862)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(57583395066520165)
,p_name=>'DA_ABRIR_MODAL_EDIT'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P235_EDIT_DATA'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(57583800498520165)
,p_event_id=>wwv_flow_imp.id(57583395066520165)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_02=>'P235_EDIT_DATA'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(57584332206520166)
,p_event_id=>wwv_flow_imp.id(57583395066520165)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    SELECT c001,',
'           c002,',
'           c007',
'      INTO :P235_COD_TECNICO,',
'           :P235_COD_PERSONA,           ',
'           :P235_ESTADO',
'      FROM APEX_COLLECTIONS',
'     WHERE collection_name = ''COLEC_VT_TECNICOS''',
'       AND SEQ_ID = :P235_EDIT_DATA;',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;'))
,p_attribute_02=>'P235_EDIT_DATA'
,p_attribute_03=>'P235_COD_PERSONA,P235_COD_TECNICO,P235_ESTADO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P235_EDIT_DATA'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(57584837808520166)
,p_event_id=>wwv_flow_imp.id(57583395066520165)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(71399178207946862)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(57585296170520166)
,p_name=>'DA_DELETE_DATA'
,p_event_sequence=>40
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P235_DELETE_DATA'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(57585756196520167)
,p_event_id=>wwv_flow_imp.id(57585296170520166)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_02=>'P235_DELETE_DATA'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(57586207906520167)
,p_event_id=>wwv_flow_imp.id(57585296170520166)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    VTASIPRO.DELETE_COL(pseq_id => :P235_DELETE_DATA, ',
'                        p_col   => ''COLEC_VT_ASIGNACION_PROMOTORA'');',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'    APEX_DEBUG.ERROR(''PANTALLA 56 DELETE COL ''||SQLERRM);',
'END;'))
,p_attribute_02=>'P235_DELETE_DATA'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(57586783626520167)
,p_event_id=>wwv_flow_imp.id(57585296170520166)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(71395712687946827)
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(57578282921520161)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_INIT'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'APEX_COLLECTION.CREATE_OR_TRUNCATE_COLLECTION(''COLEC_VT_TECNICOS'');',
':P235_COD_SUCURSAL := NVL(:P_COD_SUCURSAL,''01'');',
'BEGIN',
'',
'    VTTECNIC.CARGAR_COLEC_VT_TECNICO(pcod_empresa => :P_COD_EMPRESA);',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'     APEX_DEBUG.ERROR(SQLERRM);',
'END;'))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(57578617432520161)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_SAVE'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    INV.VTTECNIC.GUARDAR_DATOS(pcod_empresa => :P_COD_EMPRESA);',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'    APEX_DEBUG.ERROR(''PR_SAVE PAG 56 ''||SQLERRM);',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(57566252740520140)
);
wwv_flow_imp.component_end;
end;
/
