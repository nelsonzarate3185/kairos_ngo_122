prompt --application/pages/page_00110
begin
--   Manifest
--     PAGE: 00110
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
 p_id=>110
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'BSTARCRE'
,p_alias=>'BSTARCRE'
,p_step_title=>'BSTARCRE'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_last_updated_by=>'OSCARGO'
,p_last_upd_yyyymmddhh24miss=>'20221125114053'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(32506625056870648)
,p_plug_name=>'AGREGAR/ELIMINAR'
,p_region_template_options=>'#DEFAULT#:js-dialog-size600x400'
,p_plug_template=>wwv_flow_imp.id(40117728043263659)
,p_plug_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(49089123812449904)
,p_plug_name=>'BSTARCRE'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_new_grid_row=>false
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(49089463757449907)
,p_plug_name=>'P110 - REPORTE'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select  tarjeta.COD_PERSONA, ',
'        tarjeta.NOM_ENTIDAD_EMISORA,',
'        tarjeta.MARCA_TARJETA_CREDITO,',
'        tarjeta.CLASE_TARJETA_CREDITO,',
'        tarjeta.NRO_TARJETA_CREDITO,',
'        tarjeta.ROWID,',
'        null Editar,',
'        null Eliminar',
'from TARJETAS_CREDITO tarjeta, ',
'     personas t_personas',
'where tarjeta.cod_persona = t_personas.cod_persona',
'AND  tarjeta.cod_persona = :P110_COD_PERSONA',
'AND t_personas.cod_persona = :P110_COD_PERSONA',
'and nvl(:P110_COD_PERSONA, tarjeta.cod_persona) = tarjeta.cod_persona',
'and nvl(:P110_T_PERSONA, t_personas.ES_FISICA) = t_personas.ES_FISICA'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P110_T_PERSONA,P110_COD_PERSONA'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'P91 - REPORTE'
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
 p_id=>wwv_flow_imp.id(50842067727145877)
,p_max_row_count=>'1000000'
,p_no_data_found_message=>'NO SE ENCONTRARON REGISTROS'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_search_bar=>'N'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_enable_mail_download=>'Y'
,p_owner=>'EMILIANOP'
,p_internal_uid=>50842067727145877
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(25531480668673563)
,p_db_column_name=>'COD_PERSONA'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Cod Persona'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(25538227001706501)
,p_db_column_name=>'NOM_ENTIDAD_EMISORA'
,p_display_order=>20
,p_column_identifier=>'G'
,p_column_label=>'Nom Entidad Emisora'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(25538308848706502)
,p_db_column_name=>'MARCA_TARJETA_CREDITO'
,p_display_order=>40
,p_column_identifier=>'H'
,p_column_label=>'Marca Tarjeta Credito'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(25538480419706503)
,p_db_column_name=>'CLASE_TARJETA_CREDITO'
,p_display_order=>50
,p_column_identifier=>'I'
,p_column_label=>'Clase Tarjeta Credito'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(25538504124706504)
,p_db_column_name=>'NRO_TARJETA_CREDITO'
,p_display_order=>60
,p_column_identifier=>'J'
,p_column_label=>'Nro Tarjeta Credito'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(32506430425870646)
,p_db_column_name=>'EDITAR'
,p_display_order=>70
,p_column_identifier=>'K'
,p_column_label=>'Editar'
,p_column_link=>'javascript:$s(''P110_SEQ_ID_EDITAR'',''#ROWID#'');'
,p_column_linktext=>'<span aria-hidden="true" class="fa fa-edit"></span>'
,p_column_type=>'STRING'
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
 p_id=>wwv_flow_imp.id(32506599900870647)
,p_db_column_name=>'ELIMINAR'
,p_display_order=>80
,p_column_identifier=>'L'
,p_column_label=>'Eliminar'
,p_column_link=>'javascript:$s(''P110_SEQ_ID_ELIMINAR'',''#ROWID#'');'
,p_column_linktext=>'<span aria-hidden="true" class="fa fa-trash"></span>'
,p_column_type=>'STRING'
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
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(33445763218687422)
,p_db_column_name=>'ROWID'
,p_display_order=>90
,p_column_identifier=>'M'
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
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(50873358566719574)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'253425'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>5
,p_report_columns=>'NOM_ENTIDAD_EMISORA:MARCA_TARJETA_CREDITO:CLASE_TARJETA_CREDITO:NRO_TARJETA_CREDITO:EDITAR:ELIMINAR:'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(25534409795673565)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(49089123812449904)
,p_button_name=>'P110_BOTON_BUSCAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'BUSCAR'
,p_button_position=>'BOTTOM'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(33443969943687404)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(32506625056870648)
,p_button_name=>'P110_CANCELAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_image_alt=>'Cancelar'
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(33444176433687406)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(32506625056870648)
,p_button_name=>'P110_ACEPTAR_CREAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Aceptar'
,p_button_position=>'CREATE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(33444281581687407)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(32506625056870648)
,p_button_name=>'P110_ACEPTAR_EDITAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Aceptar'
,p_button_position=>'CREATE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(32506339993870645)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(49089463757449907)
,p_button_name=>'P110_AGREGAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Agregar'
,p_button_position=>'TOP'
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
 p_id=>wwv_flow_imp.id(25534889854673566)
,p_name=>'P110_COD_PERSONA'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(49089123812449904)
,p_prompt=>'Persona'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_PERSONAS'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select cod_persona || '' - '' || ltrim( rtrim( nvl( nombre, nomb_fantasia ) ) ) d, cod_persona r ',
'from personas',
'order by 1;'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_read_only_when_type=>'ALWAYS'
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
 p_id=>wwv_flow_imp.id(25535238726673566)
,p_name=>'P110_T_PERSONA'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(49089123812449904)
,p_prompt=>'T. persona'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_lov=>unistr('STATIC:F\00EDsica;S,Juridica;N')
,p_begin_on_new_line=>'N'
,p_read_only_when_type=>'ALWAYS'
,p_field_template=>wwv_flow_imp.id(40186463825263678)
,p_item_template_options=>'#DEFAULT#:margin-top-sm:margin-bottom-sm:margin-left-sm:margin-right-sm'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'2'
,p_attribute_02=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(32506783347870649)
,p_name=>'P110_SEQ_ID_EDITAR'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(32506625056870648)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(32506844585870650)
,p_name=>'P110_SEQ_ID_ELIMINAR'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(32506625056870648)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(33444698996687411)
,p_name=>'P110_MARCA_TARJETA_CREDITO'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(32506625056870648)
,p_prompt=>'Marca Tarjeta Credito'
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
 p_id=>wwv_flow_imp.id(33444781682687412)
,p_name=>'P110_CLASE_TARJETA_CREDITO'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(32506625056870648)
,p_prompt=>'Clase Tarjeta Credito'
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
 p_id=>wwv_flow_imp.id(33444882086687413)
,p_name=>'P110_NRO_TARJETA_CREDITO'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(32506625056870648)
,p_prompt=>'Nro Tarjeta Credito'
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
 p_id=>wwv_flow_imp.id(33444919309687414)
,p_name=>'P110_AUX_MSJ_CONTROL'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(32506625056870648)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(33445643594687421)
,p_name=>'P110_NOM_ENTIDAD_EMISORA'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(32506625056870648)
,p_prompt=>'Nombre Entidad Emisora'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(25536065236673567)
,p_name=>'DA_BUSCAR_DATOS'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(25534409795673565)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(33447880935687443)
,p_event_id=>wwv_flow_imp.id(25536065236673567)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(25534409795673565)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(25537074323673568)
,p_event_id=>wwv_flow_imp.id(25536065236673567)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(49089463757449907)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(33443657146687401)
,p_name=>'DA_ABRIR_GUARDAR'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(32506339993870645)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(33443702397687402)
,p_event_id=>wwv_flow_imp.id(33443657146687401)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P110_NOM_ENTIDAD_EMISORA,P110_MARCA_TARJETA_CREDITO,P110_CLASE_TARJETA_CREDITO,P110_NRO_TARJETA_CREDITO'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(33443876164687403)
,p_event_id=>wwv_flow_imp.id(33443657146687401)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(33444281581687407)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(33444304741687408)
,p_event_id=>wwv_flow_imp.id(33443657146687401)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(33444176433687406)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(33444480666687409)
,p_event_id=>wwv_flow_imp.id(33443657146687401)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(32506625056870648)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(33445053247687415)
,p_name=>'DA_GUARDAR'
,p_event_sequence=>30
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(33444176433687406)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(33445104981687416)
,p_event_id=>wwv_flow_imp.id(33445053247687415)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'--NO NULOS OBLIGATORIOS ',
':P110_AUX_MSJ_CONTROL := null;',
'IF ',
'    :P110_NOM_ENTIDAD_EMISORA IS NULL THEN',
'    :P110_AUX_MSJ_CONTROL := ''Debe ingresar el nombre de la entidad emisora.'';',
' ',
' ELSIF ',
'    :P110_MARCA_TARJETA_CREDITO IS NULL THEN',
'    :P110_AUX_MSJ_CONTROL := ''Debe ingresar la marca de tarjeta de credito.'';',
' ELSIF ',
'    :P110_CLASE_TARJETA_CREDITO IS NULL THEN',
'    :P110_AUX_MSJ_CONTROL := ''Debe ingresar la clase.'';',
' ELSIF ',
'    :P110_NRO_TARJETA_CREDITO IS NULL THEN',
'    :P110_AUX_MSJ_CONTROL := ''Debe ingresar el numero de tarjeta de credito.'';',
'',
' ELSE',
'  begin',
'  INSERT INTO TARJETAS_CREDITO (',
'    COD_PERSONA,',
'    NOM_ENTIDAD_EMISORA,',
'    MARCA_TARJETA_CREDITO,',
'    CLASE_TARJETA_CREDITO,',
'    NRO_TARJETA_CREDITO',
' )',
' VALUES(',
'     :P110_COD_PERSONA,',
'     :P110_NOM_ENTIDAD_EMISORA,',
'     :P110_MARCA_TARJETA_CREDITO,',
'     :P110_CLASE_TARJETA_CREDITO,',
'     :P110_NRO_TARJETA_CREDITO   ',
'                  ',
'            );',
'  EXCEPTION',
'',
'        WHEN OTHERS THEN',
'            apex_debug.error(sqlerrm);',
'    END;',
'END IF;  '))
,p_attribute_02=>'P110_MARCA_TARJETA_CREDITO,P110_CLASE_TARJETA_CREDITO,P110_NRO_TARJETA_CREDITO,P110_NOM_ENTIDAD_EMISORA'
,p_attribute_03=>'P110_AUX_MSJ_CONTROL,P110_COD_PERSONA,P110_T_PERSONA'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(33445274105687417)
,p_event_id=>wwv_flow_imp.id(33445053247687415)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'&P110_AUX_MSJ_CONTROL.'
,p_attribute_03=>'warning'
,p_attribute_04=>'fa-warning'
,p_attribute_06=>'ACEPTAR'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P110_AUX_MSJ_CONTROL'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(33445341353687418)
,p_event_id=>wwv_flow_imp.id(33445053247687415)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(49089463757449907)
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P110_AUX_MSJ_CONTROL'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(33445403313687419)
,p_event_id=>wwv_flow_imp.id(33445053247687415)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(32506625056870648)
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P110_AUX_MSJ_CONTROL'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(33445526238687420)
,p_event_id=>wwv_flow_imp.id(33445053247687415)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'SE GUARDO EL REGISTRO'
,p_attribute_02=>unistr('\00C9XITO')
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P110_AUX_MSJ_CONTROL'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(33445818816687423)
,p_name=>'DA_ABRIR_REGION_EDITAR'
,p_event_sequence=>40
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P110_SEQ_ID_EDITAR'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(33445943823687424)
,p_event_id=>wwv_flow_imp.id(33445818816687423)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin ',
'   select ',
'',
'   NOM_ENTIDAD_EMISORA,',
'   MARCA_TARJETA_CREDITO,',
'   CLASE_TARJETA_CREDITO,',
'   NRO_TARJETA_CREDITO',
'   into',
'',
'    :P110_NOM_ENTIDAD_EMISORA,',
'    :P110_MARCA_TARJETA_CREDITO,',
'    :P110_CLASE_TARJETA_CREDITO,',
'    :P110_NRO_TARJETA_CREDITO',
'     ',
'   from TARJETAS_CREDITO',
'   where ROWID= :P110_SEQ_ID_EDITAR',
'   and cod_persona = :P110_COD_PERSONA;',
'',
'end;'))
,p_attribute_02=>'P110_SEQ_ID_EDITAR,P110_COD_PERSONA'
,p_attribute_03=>'P110_NOM_ENTIDAD_EMISORA,P110_MARCA_TARJETA_CREDITO,P110_CLASE_TARJETA_CREDITO,P110_NRO_TARJETA_CREDITO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(33446097281687425)
,p_event_id=>wwv_flow_imp.id(33445818816687423)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(32506625056870648)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(33447417767687439)
,p_event_id=>wwv_flow_imp.id(33445818816687423)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(33444176433687406)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(33447572083687440)
,p_event_id=>wwv_flow_imp.id(33445818816687423)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(33444281581687407)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(33446152337687426)
,p_name=>'DA_GUARDAR_CAMBIOS'
,p_event_sequence=>50
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(33444281581687407)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(33446235038687427)
,p_event_id=>wwv_flow_imp.id(33446152337687426)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'UPDATE TARJETAS_CREDITO',
'    SET                                       ',
'       COD_PERSONA  =     :P110_COD_PERSONA,',
'       NOM_ENTIDAD_EMISORA = :P110_NOM_ENTIDAD_EMISORA,',
'       MARCA_TARJETA_CREDITO = :P110_MARCA_TARJETA_CREDITO,',
'       CLASE_TARJETA_CREDITO = :P110_CLASE_TARJETA_CREDITO,',
'       NRO_TARJETA_CREDITO = :P110_NRO_TARJETA_CREDITO',
'    ',
'    WHERE ROWID = :P110_SEQ_ID_EDITAR; '))
,p_attribute_02=>'P110_NOM_ENTIDAD_EMISORA,P110_MARCA_TARJETA_CREDITO,P110_CLASE_TARJETA_CREDITO,P110_NRO_TARJETA_CREDITO,P110_SEQ_ID_EDITAR'
,p_attribute_03=>'P110_COD_PERSONA,P110_T_PERSONA'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(33446589977687430)
,p_event_id=>wwv_flow_imp.id(33446152337687426)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(49089463757449907)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(33446621886687431)
,p_event_id=>wwv_flow_imp.id(33446152337687426)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(32506625056870648)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(33446748638687432)
,p_event_id=>wwv_flow_imp.id(33446152337687426)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'REGISTRO ACUTALIZADO'
,p_attribute_02=>'MENSAJE'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(33446370443687428)
,p_name=>'DA_REGRESAR'
,p_event_sequence=>60
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(33443969943687404)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(33446427631687429)
,p_event_id=>wwv_flow_imp.id(33446370443687428)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(32506625056870648)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(33446883489687433)
,p_name=>'New'
,p_event_sequence=>70
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P110_SEQ_ID_ELIMINAR'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(33446920131687434)
,p_event_id=>wwv_flow_imp.id(33446883489687433)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>'Desea eliminar?'
,p_attribute_02=>'ELIMINAR'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(33447089144687435)
,p_event_id=>wwv_flow_imp.id(33446883489687433)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DELETE from tarjetas_credito',
' WHERE rowid = :P110_SEQ_ID_ELIMINAR;',
' '))
,p_attribute_02=>'P110_SEQ_ID_ELIMINAR'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(33447354237687438)
,p_event_id=>wwv_flow_imp.id(33446883489687433)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(49089463757449907)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(33447724503687442)
,p_event_id=>wwv_flow_imp.id(33446883489687433)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>unistr('Eliminado con \00E9xito')
,p_attribute_02=>'MENSAJE'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(33957224030918901)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'PR_limpiar'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_process_when_button_id=>wwv_flow_imp.id(33443969943687404)
,p_process_when=>'P110_COD_PERSONA'
,p_process_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_process_when2=>'10000'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(32506083003870642)
,p_process_sequence=>20
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_INIT'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
' V_ES_FISICA VARCHAR(15);',
'BEGIN',
'--   Probar con :',
'--   8594	GLADIS MABEL WAGENBACH V.',
'--   8598 LUCINA GARAY',
'--:P110_COD_PERSONA := ''8594'';',
'--    :P110_COD_PERSONA := ''8598'';',
'    :P_COD_MODULO := ''BS'';   ',
'   --BSTARCRE.pr_crear_collection (:P110_COD_PERSONA);',
'    SELECT ES_FISICA INTO V_ES_FISICA ',
'    FROM PERSONAS',
'    WHERE COD_PERSONA = :P110_COD_PERSONA;',
'    IF V_ES_FISICA = ''S'' THEN',
'       :P110_T_PERSONA := ''S'';',
'    ELSE',
'        :P110_T_PERSONA := ''N'';',
'    END IF;',
'',
'    --APEX_DEBUG.ERROR(:P110_T_PERSONA);',
'',
'EXCEPTION',
'',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(sqlerrm);',
'',
'END;',
''))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_imp.component_end;
end;
/
