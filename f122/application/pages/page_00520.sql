prompt --application/pages/page_00520
begin
--   Manifest
--     PAGE: 00520
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
 p_id=>520
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'Motivo detalle SNC - CAMDESNC'
,p_alias=>'CAMODSNC'
,p_step_title=>'Motivo detalle SNC - CAMDESNC'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_last_updated_by=>'AIBANEZ'
,p_last_upd_yyyymmddhh24miss=>'20230428160749'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(155343773247026519)
,p_plug_name=>'Report'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>1080
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT COD_EMPRESA,',
'       COD_AREA,	',
'       COD_MOTIVO,	',
'       COD_USR_INS,	',
'       FEC_HOR_INS,	',
'       COD_USR_UPD,	',
'       FEC_HOR_UPD,	',
'       COD_CENTRO_COSTO,',
'       (select p.descripcion ',
'           from problemas_conformidad p',
'           where p.cod_empresa   = snc.cod_empresa',
'           and p.cod_motivo = snc.cod_motivo ) DESCRIPCION,',
'       ROWID,',
'       NULL EDITAR,',
'       NULL ELIMINAR',
'FROM ca_departamento_motivo_snc snc'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Report'
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
 p_id=>wwv_flow_imp.id(155343882212026520)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_finder_drop_down=>'N'
,p_show_actions_menu=>'N'
,p_report_list_mode=>'NONE'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_enable_mail_download=>'Y'
,p_owner=>'AIBANEZ'
,p_internal_uid=>155343882212026520
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(155343984367026521)
,p_db_column_name=>'COD_EMPRESA'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Cod Empresa'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(155344039691026522)
,p_db_column_name=>'COD_AREA'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Departamento'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(155344167523026523)
,p_db_column_name=>'COD_MOTIVO'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Motivo'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(155344257512026524)
,p_db_column_name=>'COD_USR_INS'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Usuario'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(155344302071026525)
,p_db_column_name=>'FEC_HOR_INS'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Fecha'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(155344444712026526)
,p_db_column_name=>'COD_USR_UPD'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Cod Usr Upd'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(155344502791026527)
,p_db_column_name=>'FEC_HOR_UPD'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Fec Hor Upd'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(155344628786026528)
,p_db_column_name=>'COD_CENTRO_COSTO'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Cod Centro Costo'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(155344780615026529)
,p_db_column_name=>'DESCRIPCION'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>unistr('Descripci\00F3n')
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(155344863010026530)
,p_db_column_name=>'ROWID'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Rowid'
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
 p_id=>wwv_flow_imp.id(155344922710026531)
,p_db_column_name=>'EDITAR'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'&nbsp'
,p_column_link=>'javascript:$s(''P520_EDITAR'',''#ROWID#'');'
,p_column_linktext=>'<span class="fa fa-edit" aria-hidden="true"></span>'
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
'                                                         pdm_boto     => 2); --1 guardar, 2 editar, 3 eliminar',
'',
'    IF VCONTROL = 0 THEN',
'        RETURN FALSE;',
'    ELSE',
'        RETURN TRUE;',
'    END IF;',
'END;'))
,p_display_condition2=>'PLSQL'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(155345018837026532)
,p_db_column_name=>'ELIMINAR'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'&nbsp'
,p_column_link=>'javascript:$s(''P520_ELIMINAR'', ''#ROWID#'');'
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
'                                                         pdm_boto     => 3); --1 guardar, 2 editar, 3 eliminar',
'',
'    IF VCONTROL = 0 THEN',
'        RETURN FALSE;',
'    ELSE',
'        RETURN TRUE;',
'    END IF;',
'END;'))
,p_display_condition2=>'PLSQL'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(155415160847054600)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1554152'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>10
,p_report_columns=>'EDITAR:COD_MOTIVO:DESCRIPCION:COD_AREA:FEC_HOR_INS:COD_USR_INS:ELIMINAR:'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(155345142881026533)
,p_plug_name=>'Editar/Agregar'
,p_region_template_options=>'#DEFAULT#:js-dialog-size600x400'
,p_plug_template=>wwv_flow_imp.id(40117728043263659)
,p_plug_display_sequence=>1090
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(155345223181026534)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(155345142881026533)
,p_button_name=>'BT_CERRAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_image_alt=>'Cerrar'
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(155345586454026537)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(155345142881026533)
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
 p_id=>wwv_flow_imp.id(155345806664026540)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(155343773247026519)
,p_button_name=>'BT_NUEVO'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight:t-Button--hoverIconPush'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Nuevo'
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
'                                                         pdm_boto     => 1); --1 guardar, 2 editar, 3 eliminar',
'',
'    IF VCONTROL = 0 THEN',
'        RETURN FALSE;',
'    ELSE',
'        RETURN TRUE;',
'    END IF;',
'END;'))
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'FUNCTION_BODY'
,p_icon_css_classes=>'fa-file-new'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(155342969805026511)
,p_name=>'P520_COD_USUARIO'
,p_item_sequence=>990
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(155343043409026512)
,p_name=>'P520_COD_EMPRESA'
,p_item_sequence=>1000
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(155343126592026513)
,p_name=>'P520_COD_SUCURSAL'
,p_item_sequence=>1020
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(155343279079026514)
,p_name=>'P520_COD_MODULO'
,p_item_sequence=>1040
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(155343369552026515)
,p_name=>'P520_NOM_SUCURSAL'
,p_item_sequence=>1030
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(155343480751026516)
,p_name=>'P520_NOM_EMPRESA'
,p_item_sequence=>1010
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(155343517046026517)
,p_name=>'P520_EDITAR'
,p_item_sequence=>1060
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(155343657538026518)
,p_name=>'P520_ELIMINAR'
,p_item_sequence=>1070
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(155346705824026549)
,p_name=>'P520_ERR'
,p_item_sequence=>1050
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(155432804388971902)
,p_name=>'P520_COD_AREA'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(155345142881026533)
,p_prompt=>'Departamento'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>unistr('STATIC:Administraci\00F3n;ADMINISTRACION,Comercial;COMERCIAL,Directorio;DIRECTORIO,Log\00EDstica;LOGISTICA,Marketing;MARKETING,Postventa;POSTVENTA')
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(155432945588971903)
,p_name=>'P520_MOTIVO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(155345142881026533)
,p_prompt=>'Motivo'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select cod_motivo ||'' - ''||descripcion D, ',
'       cod_motivo R',
'from problemas_conformidad',
'where cod_empresa   = :p_cod_empresa',
'                  '))
,p_lov_display_null=>'YES'
,p_cSize=>30
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
 p_id=>wwv_flow_imp.id(155433088534971904)
,p_name=>'P520_USUARIO'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(155345142881026533)
,p_prompt=>'Usuario'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(155433654275971910)
,p_name=>'P520_FECHA'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(155345142881026533)
,p_prompt=>'Fecha'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(155345375909026535)
,p_name=>'DA_CERRAR'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(155345223181026534)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(155345499931026536)
,p_event_id=>wwv_flow_imp.id(155345375909026535)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(155345142881026533)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(155345621233026538)
,p_name=>'DA_GUARDAR'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(155345586454026537)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(155433370956971907)
,p_event_id=>wwv_flow_imp.id(155345621233026538)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    :P520_ERR := null;',
'',
'    IF :P520_EDITAR IS NULL THEN',
'',
'            INSERT INTO ca_departamento_motivo_snc( ',
'                        COD_EMPRESA,',
'                        COD_AREA,',
'                        COD_MOTIVO,',
'                        FEC_HOR_INS,',
'                        COD_USR_INS',
'            )VALUES (',
'                :P_COD_EMPRESA,',
'                :P520_COD_AREA,',
'                :P520_MOTIVO,',
'                SYSDATE,',
'                :P520_COD_USUARIO',
'            );',
'    ELSE ',
'        ',
'           UPDATE ca_departamento_motivo_snc',
'           SET COD_AREA = :P520_COD_AREA,',
'               COD_MOTIVO = :P520_MOTIVO,',
'               FEC_HOR_UPD = SYSDATE,',
'               COD_USR_UPD = :P520_COD_USUARIO',
'           WHERE ROWID = :P520_EDITAR;',
'    END IF;',
'',
'    CASE ',
'          WHEN :P520_COD_AREA IS NULL THEN',
'                :P520_ERR := ''Seleccione un Departamento.'';',
'          WHEN :P520_MOTIVO IS NULL THEN',
'                :P520_ERR := ''Seleccione un Motivo.'';',
'          ELSE ',
'                NULL;',
'    END CASE;',
'',
'    EXCEPTION',
'       WHEN NO_DATA_FOUND THEN',
'            :P520_ERR := ''No se ha encontrado data.'';',
'       WHEN OTHERS THEN',
'            APEX_DEBUG.ERROR(''Error al guardar: ''||SQLERRM);',
'',
'END;'))
,p_attribute_02=>'P520_EDITAR,P520_COD_AREA,P520_MOTIVO,P520_COD_USUARIO'
,p_attribute_03=>'P520_ERR'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(155433430437971908)
,p_event_id=>wwv_flow_imp.id(155345621233026538)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(155343773247026519)
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P520_ERR'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(155345749251026539)
,p_event_id=>wwv_flow_imp.id(155345621233026538)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(155345142881026533)
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P520_ERR'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(155345966364026541)
,p_name=>'DA_AGREGAR'
,p_event_sequence=>30
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(155345806664026540)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(155433221404971906)
,p_event_id=>wwv_flow_imp.id(155345966364026541)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P520_EDITAR := null;',
':P520_COD_AREA := null;',
':P520_MOTIVO := null;',
'',
':P520_USUARIO := :P520_COD_USUARIO;',
':P520_FECHA := sysdate;'))
,p_attribute_03=>'P520_EDITAR,P520_COD_AREA,P520_MOTIVO,P520_USUARIO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(155346043708026542)
,p_event_id=>wwv_flow_imp.id(155345966364026541)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(155345142881026533)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(155346127306026543)
,p_name=>'DA_ELIMINAR'
,p_event_sequence=>40
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P520_ELIMINAR'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(155346251060026544)
,p_event_id=>wwv_flow_imp.id(155346127306026543)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>unistr('\00BFEliminar?')
,p_attribute_03=>'warning'
,p_attribute_04=>'fa-trash-o'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(155346396529026545)
,p_event_id=>wwv_flow_imp.id(155346127306026543)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    DELETE ca_departamento_motivo_snc',
'    WHERE ROWID = :P520_ELIMINAR;',
'',
'    EXCEPTION',
'        WHEN OTHERS THEN',
'            APEX_DEBUG.ERROR(''Error al eliminar: ''||SQLERRM);',
'END;'))
,p_attribute_02=>'P520_ELIMINAR'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(155346434555026546)
,p_event_id=>wwv_flow_imp.id(155346127306026543)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(155343773247026519)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(155346575489026547)
,p_name=>'DA_EDITAR'
,p_event_sequence=>50
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P520_EDITAR'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(155433142245971905)
,p_event_id=>wwv_flow_imp.id(155346575489026547)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    SELECT COD_AREA,',
'           (select p.cod_motivo||'' - '' ||p.descripcion ',
'              from problemas_conformidad P',
'              where p.cod_empresa   = S.cod_empresa',
'              and p.cod_motivo = S.cod_motivo )DESCRIPCION,',
'              FEC_HOR_INS,',
'              COD_USR_INS',
'    INTO :P520_COD_AREA,',
'         :P520_MOTIVO,',
'         :P520_FECHA,',
'         :P520_USUARIO',
'    FROM ca_departamento_motivo_snc S',
'    WHERE ROWID = :P520_EDITAR ;',
'',
'        IF :P520_FECHA IS NULL THEN',
'               :P520_FECHA := ''Sin datos.'';',
'        ELSIF :P520_USUARIO IS NULL THEN',
'              :P520_USUARIO := ''Sin datos.'';',
'        ELSIF :P520_USUARIO IS NULL ',
'        AND :P520_FECHA IS NULL THEN',
'            :P520_FECHA := ''Sin datos.'';',
'            :P520_USUARIO := ''Sin datos'';',
'        ELSE NULL;',
'        END IF;',
'',
'   EXCEPTION',
'        WHEN NO_DATA_FOUND THEN',
'                NULL;',
'        WHEN OTHERS THEN',
'             APEX_DEBUG.ERROR(''Error al editar: ''||SQLERRM);        ',
'',
'END;'))
,p_attribute_02=>'P520_EDITAR'
,p_attribute_03=>'P520_COD_AREA,P520_MOTIVO,P520_USUARIO,P520_FECHA'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(155346634251026548)
,p_event_id=>wwv_flow_imp.id(155346575489026547)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(155345142881026533)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(155346825739026550)
,p_name=>'DA_ERR'
,p_event_sequence=>60
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P520_ERR'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(155432728352971901)
,p_event_id=>wwv_flow_imp.id(155346825739026550)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'&P520_ERR.'
,p_attribute_03=>'information'
,p_attribute_04=>'fa-info-square-o'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P520_ERR'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(155433570654971909)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'PR_CLEAR'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(155342881706026510)
,p_process_sequence=>20
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_INIT'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P520_Cod_Usuario  := :P_Cod_Usuario;',
':P520_Cod_Empresa  := :P_Cod_Empresa;',
':P520_Nom_Empresa  := :P_Nom_Empresa;',
':P520_Cod_Sucursal := :P_Cod_Sucursal;',
':P520_Nom_Sucursal := :P_Nom_Sucursal;',
':P520_Cod_Modulo   := :P_Cod_Modulo;'))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_imp.component_end;
end;
/
