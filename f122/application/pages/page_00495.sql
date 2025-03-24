prompt --application/pages/page_00495
begin
--   Manifest
--     PAGE: 00495
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
 p_id=>495
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'Problemas y Soluciones - CAPROSOL'
,p_alias=>'PROBLEMAS-Y-SOLUCIONES-CAPROSOL'
,p_step_title=>'Problemas y Soluciones - CAPROSOL'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_last_updated_by=>'AIBANEZ'
,p_last_upd_yyyymmddhh24miss=>'20230418093603'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(147527155262461614)
,p_plug_name=>'Main'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--removeHeader:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>1110
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(147527294694461615)
,p_plug_name=>'Report'
,p_parent_plug_id=>wwv_flow_imp.id(147527155262461614)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT COD_EMPRESA,	',
'       COD_PROBLEMA,	',
'       COD_SOLUCION,	',
'       COD_ARTICULO,',
'       ROWID,',
'       NULL EDITAR,',
'       NULL ELIMINAR ',
'FROM CA_PROBLEMAS_SOLUCIONES',
'WHERE cod_empresa = :p495_cod_empresa;'))
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
 p_id=>wwv_flow_imp.id(147527496144461617)
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
,p_internal_uid=>147527496144461617
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(147527550357461618)
,p_db_column_name=>'COD_EMPRESA'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Cod Empresa'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(147527689726461619)
,p_db_column_name=>'COD_PROBLEMA'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Problema'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_rpt_named_lov=>wwv_flow_imp.id(147555555562343790)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(147527707102461620)
,p_db_column_name=>'COD_SOLUCION'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>unistr('Soluci\00F3n')
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_rpt_named_lov=>wwv_flow_imp.id(147554315846351961)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(147527880744461621)
,p_db_column_name=>'COD_ARTICULO'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>unistr('Art\00EDculo')
,p_column_link=>'javascript:$s(''P495_INFO'',''#ROWID#'');'
,p_column_linktext=>'#COD_ARTICULO#'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(147527951123461622)
,p_db_column_name=>'ROWID'
,p_display_order=>50
,p_column_identifier=>'E'
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
 p_id=>wwv_flow_imp.id(147528038154461623)
,p_db_column_name=>'EDITAR'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'&nbsp'
,p_column_link=>'javascript:$s(''P495_EDITAR'',''#ROWID#'');'
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
 p_id=>wwv_flow_imp.id(147528150561461624)
,p_db_column_name=>'ELIMINAR'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'&nbsp'
,p_column_link=>'javascript:$s(''P495_ELIMINAR'',''#ROWID#'');'
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
 p_id=>wwv_flow_imp.id(147550802698392617)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1475509'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>10
,p_report_columns=>'EDITAR:COD_ARTICULO:COD_PROBLEMA:COD_SOLUCION:ELIMINAR:'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(147528205054461625)
,p_plug_name=>'Info'
,p_parent_plug_id=>wwv_flow_imp.id(147527155262461614)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--noBorder:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>20
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(147528860674461631)
,p_plug_name=>'Editar/Agregar'
,p_region_template_options=>'#DEFAULT#:js-dialog-size600x400'
,p_plug_template=>wwv_flow_imp.id(40117728043263659)
,p_plug_display_sequence=>1120
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(147529046403461633)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(147528860674461631)
,p_button_name=>'BT_CERRAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_image_alt=>'Cancelar'
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(147528914644461632)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(147528860674461631)
,p_button_name=>'BT_GUARDAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Guardar'
,p_button_position=>'CREATE'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-save-as'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(147528783354461630)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(147527294694461615)
,p_button_name=>'BT_AGREGAR'
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
 p_id=>wwv_flow_imp.id(147526092970461603)
,p_name=>'P495_COD_EMPRESA'
,p_item_sequence=>1000
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(147526159838461604)
,p_name=>'P495_COD_SUCURSAL'
,p_item_sequence=>1010
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(147526242144461605)
,p_name=>'P495_COD_USUARIO'
,p_item_sequence=>1020
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(147526381165461606)
,p_name=>'P495_COD_MODULO'
,p_item_sequence=>1030
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(147526492900461607)
,p_name=>'P495_NOM_EMPRESA'
,p_item_sequence=>1040
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(147526543263461608)
,p_name=>'P495_NOM_SUCURSAL'
,p_item_sequence=>1060
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(147526865049461611)
,p_name=>'P495_EDITAR'
,p_item_sequence=>1070
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(147526928647461612)
,p_name=>'P495_ELIMINAR'
,p_item_sequence=>1080
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(147527033285461613)
,p_name=>'P495_INFO'
,p_item_sequence=>1090
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(147527328892461616)
,p_name=>'P495_DESC_ARTICULO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(147528205054461625)
,p_prompt=>unistr('Descripci\00F3n del Art\00EDculo')
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(147528539502461628)
,p_name=>'P495_AUX_COD_ARTICULO'
,p_item_sequence=>1100
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(147530100035461644)
,p_name=>'P495_ARTICULO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(147528860674461631)
,p_prompt=>unistr('Art\00EDculo')
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select st.cod_articulo|| '' - ''|| st.descripcion D,',
'       st.cod_articulo R',
'from st_articulos st, ca_problemas_soluciones ca',
'where st.cod_empresa = :P495_COD_EMPRESA',
'and st.cod_articulo = ca.cod_articulo',
''))
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(147530257846461645)
,p_name=>'P495_PROBLEMA'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(147528860674461631)
,p_prompt=>'Problema'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov_language=>'PLSQL'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
'select cod_problema ||'' - '' ||descripcion D, ',
'       cod_problema R',
'from ca_problemas',
'where cod_empresa=:p495_cod_empresa',
''))
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
 p_id=>wwv_flow_imp.id(147530317072461646)
,p_name=>'P495_SOLUCION'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(147528860674461631)
,p_prompt=>unistr('Soluci\00F3n')
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select   cod_solucion|| '' - '' ||descripcion D, ',
'         cod_solucion R',
'from ca_soluciones',
'where cod_empresa= :p495_cod_empresa;',
'',
''))
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(147530722108461650)
,p_name=>'P495_ERR'
,p_item_sequence=>1050
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(147528350154461626)
,p_name=>'DA_INFO'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P495_INFO'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(147528613230461629)
,p_event_id=>wwv_flow_imp.id(147528350154461626)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    SELECT COD_ARTICULO',
'    INTO :P495_AUX_COD_ARTICULO',
'    FROM CA_PROBLEMAS_SOLUCIONES',
'    WHERE ROWID = :P495_INFO;',
'',
'    EXCEPTION',
'        WHEN OTHERS THEN',
'                apex_debug.error(''Error info 1 ''||sqlerrm);',
'END;'))
,p_attribute_02=>'P495_INFO'
,p_attribute_03=>'P495_AUX_COD_ARTICULO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(147528475965461627)
,p_event_id=>wwv_flow_imp.id(147528350154461626)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    SELECT  st.cod_articulo|| '' - ''|| st.descripcion',
'    INTO :P495_DESC_ARTICULO',
'    from st_articulos st, ca_problemas_soluciones ca',
'    where st.cod_empresa = :p495_cod_empresa',
'    and st.cod_articulo = ca.cod_articulo',
'    and st.cod_articulo = :P495_AUX_COD_ARTICULO',
'    and ca.ROWID = :P495_INFO;',
'',
'    EXCEPTION',
'        WHEN OTHERS THEN',
'                apex_debug.error(''Error info 2 ''||sqlerrm);',
'END;'))
,p_attribute_02=>'P495_INFO,P495_AUX_COD_ARTICULO'
,p_attribute_03=>'P495_DESC_ARTICULO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(147529161055461634)
,p_name=>'DA_CERRAR'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(147529046403461633)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(147529298103461635)
,p_event_id=>wwv_flow_imp.id(147529161055461634)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(147528860674461631)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(147529394766461636)
,p_name=>'DA_AGREGAR'
,p_event_sequence=>30
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(147528783354461630)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(147530525554461648)
,p_event_id=>wwv_flow_imp.id(147529394766461636)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P495_EDITAR := null;',
':P495_ARTICULO := null;',
':P495_PROBLEMA := null;',
':P495_SOLUCION := null;'))
,p_attribute_03=>'P495_EDITAR,P495_ARTICULO,P495_PROBLEMA,P495_SOLUCION'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(147529463528461637)
,p_event_id=>wwv_flow_imp.id(147529394766461636)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(147528860674461631)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(147529547671461638)
,p_name=>'DA_GUARDAR'
,p_event_sequence=>40
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(147528914644461632)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(147530678960461649)
,p_event_id=>wwv_flow_imp.id(147529547671461638)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    IF :P495_EDITAR IS NULL THEN',
'        INSERT INTO CA_PROBLEMAS_SOLUCIONES( ',
'                    COD_EMPRESA,',
'                    COD_ARTICULO,',
'                    COD_PROBLEMA,',
'                    COD_SOLUCION',
'        ) VALUES(',
'                :P495_COD_EMPRESA,',
'                :P495_ARTICULO,',
'                :P495_PROBLEMA,',
'                :P495_SOLUCION',
'        );',
'    ELSE',
'        UPDATE CA_PROBLEMAS_SOLUCIONES',
'        SET COD_EMPRESA = :P495_COD_EMPRESA,',
'            COD_ARTICULO = :P495_ARTICULO,',
'            COD_PROBLEMA = :P495_PROBLEMA,',
'            COD_SOLUCION = :P495_SOLUCION',
'        WHERE ROWID = :P495_EDITAR;',
'',
'    CASE ',
'        WHEN :P495_ARTICULO IS NULL THEN',
unistr('                    :P495_ERR := ''Seleccione un art\00EDculo.'';'),
'        WHEN :P495_PROBLEMA IS NULL THEN',
'                    :P495_ERR := ''Asigne un problema'';',
'        WHEN :P495_SOLUCION IS NULL THEN',
unistr('                    :P495_ERR := ''Designe una soluci\00F3n.'';'),
'        ELSE ',
'            NULL;',
'    END CASE;',
'',
'    END IF;',
'',
'    EXCEPTION',
'        WHEN OTHERS THEN',
'                apex_debug.error(''Error al Guardar ''||sqlerrm);',
'END;'))
,p_attribute_02=>'P495_EDITAR,P495_COD_EMPRESA,P495_ARTICULO,P495_PROBLEMA,P495_SOLUCION'
,p_attribute_03=>'P495_ERR'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(147740019740102403)
,p_event_id=>wwv_flow_imp.id(147529547671461638)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(147527294694461615)
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P495_ERR'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(147529622546461639)
,p_event_id=>wwv_flow_imp.id(147529547671461638)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(147528860674461631)
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P495_ERR'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(147529769342461640)
,p_name=>'DA_ELIMINAR'
,p_event_sequence=>50
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P495_ELIMINAR'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(147529838110461641)
,p_event_id=>wwv_flow_imp.id(147529769342461640)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>unistr('\00BFDesea eliminar el problema?')
,p_attribute_03=>'warning'
,p_attribute_04=>'fa-trash-o'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(147740199727102404)
,p_event_id=>wwv_flow_imp.id(147529769342461640)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    DELETE CA_PROBLEMAS_SOLUCIONES',
'    WHERE ROWID = :P495_ELIMINAR;',
'',
'    EXCEPTION',
'        WHEN OTHERS THEN',
'                apex_debug.error(''Error al eliminar ''||sqlerrm);',
'END;'))
,p_attribute_02=>'P495_ELIMINAR'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(147740230068102405)
,p_event_id=>wwv_flow_imp.id(147529769342461640)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(147527294694461615)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(147529938246461642)
,p_name=>'DA_EDITAR'
,p_event_sequence=>60
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P495_EDITAR'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(147530451600461647)
,p_event_id=>wwv_flow_imp.id(147529938246461642)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    SELECT COD_ARTICULO,',
'           COD_PROBLEMA,',
'           COD_SOLUCION',
'    INTO :P495_ARTICULO,',
'         :P495_PROBLEMA,',
'         :P495_SOLUCION',
'    FROM CA_PROBLEMAS_SOLUCIONES',
'    WHERE ROWID = :P495_EDITAR;',
'',
'',
'    EXCEPTION',
'        WHEN NO_DATA_FOUND THEN',
'                NULL;',
'        WHEN OTHERS THEN',
'                APEX_DEBUG.ERROR(''Error al editar ''||SQLERRM);',
'END;',
''))
,p_attribute_02=>'P495_EDITAR'
,p_attribute_03=>'P495_ARTICULO,P495_PROBLEMA,P495_SOLUCION'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(147530051344461643)
,p_event_id=>wwv_flow_imp.id(147529938246461642)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(147528860674461631)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(147739860204102401)
,p_name=>'DA_ERR'
,p_event_sequence=>70
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P495_ERR'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(147739984922102402)
,p_event_id=>wwv_flow_imp.id(147739860204102401)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'&P495_ERR.'
,p_attribute_03=>'information'
,p_attribute_04=>'fa-info-square-o'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P495_ERR'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(147526753268461610)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'PR_CLEAR'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(147525887768461601)
,p_process_sequence=>20
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_INIT'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P495_Cod_Usuario  := :P_Cod_Usuario;',
':P495_Cod_Empresa  := :P_Cod_Empresa;',
':P495_Nom_Empresa  := :P_Nom_Empresa;',
':P495_Cod_Sucursal := :P_Cod_Sucursal;',
':P495_Nom_Sucursal := :P_Nom_Sucursal;',
':P495_Cod_Modulo   := :P_Cod_Modulo;',
''))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_imp.component_end;
end;
/
