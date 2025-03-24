prompt --application/pages/page_00113
begin
--   Manifest
--     PAGE: 00113
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
 p_id=>113
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'BSTARDEB'
,p_alias=>'BSTARDEB'
,p_step_title=>'BSTARDEB'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_last_updated_by=>'OSCARGO'
,p_last_upd_yyyymmddhh24miss=>'20221125112759'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(33448318901687448)
,p_plug_name=>'AGREGAR/EDITAR'
,p_region_template_options=>'#DEFAULT#:js-dialog-size600x400'
,p_plug_template=>wwv_flow_imp.id(40117728043263659)
,p_plug_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(74672781536557198)
,p_plug_name=>'BSTARDEB'
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
 p_id=>wwv_flow_imp.id(74673121481557201)
,p_plug_name=>'P113 - REPORTE'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select  tarjeta.COD_PERSONA, ',
'        tarjeta.NOM_ENTIDAD_EMISORA,',
'        tarjeta.MARCA_TARJETA_DEBITO,',
'        tarjeta.CLASE_TARJETA_DEBITO,',
'        tarjeta.NRO_TARJETA_DEBITO,',
'        tarjeta.ROWID,',
'        NULL EDITAR,',
'        NULL ELIMINAR',
'from TARJETAS_DEBITO tarjeta, ',
'     personas t_personas',
'where tarjeta.cod_persona = t_personas.cod_persona',
'AND tarjeta.cod_persona = :P113_COD_PERSONA',
'and t_personas.cod_persona = :P113_COD_PERSONA',
'--and nvl(:P113_COD_PERSONA, tarjeta.cod_persona) = tarjeta.cod_persona',
'--and nvl(:P113_T_PERSONA, t_personas.ES_FISICA) = t_personas.ES_FISICA'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P113_COD_PERSONA,P113_T_PERSONA'
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
 p_id=>wwv_flow_imp.id(76425725451253171)
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
,p_internal_uid=>76425725451253171
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(25584234420107295)
,p_db_column_name=>'COD_PERSONA'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Cod Persona'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(25584617941107296)
,p_db_column_name=>'NOM_ENTIDAD_EMISORA'
,p_display_order=>20
,p_column_identifier=>'G'
,p_column_label=>'Nom Entidad Emisora'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(25538672346706505)
,p_db_column_name=>'MARCA_TARJETA_DEBITO'
,p_display_order=>30
,p_column_identifier=>'K'
,p_column_label=>'Marca Tarjeta Debito'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(25538787030706506)
,p_db_column_name=>'CLASE_TARJETA_DEBITO'
,p_display_order=>40
,p_column_identifier=>'L'
,p_column_label=>'Clase Tarjeta Debito'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(25538889781706507)
,p_db_column_name=>'NRO_TARJETA_DEBITO'
,p_display_order=>50
,p_column_identifier=>'M'
,p_column_label=>'Nro Tarjeta Debito'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(33448144985687446)
,p_db_column_name=>'EDITAR'
,p_display_order=>60
,p_column_identifier=>'N'
,p_column_label=>'Editar'
,p_column_link=>'javascript:$s(''P113_SEQ_ID_EDITAR'',''#ROWID#'');'
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
 p_id=>wwv_flow_imp.id(33448269143687447)
,p_db_column_name=>'ELIMINAR'
,p_display_order=>70
,p_column_identifier=>'O'
,p_column_label=>'Eliminar'
,p_column_link=>'javascript:$s(''P113_SEQ_ID_ELIMINAR'',''#ROWID#'');'
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
 p_id=>wwv_flow_imp.id(33953657596908823)
,p_db_column_name=>'ROWID'
,p_display_order=>80
,p_column_identifier=>'P'
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
 p_id=>wwv_flow_imp.id(76457016290826868)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'253425'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>5
,p_report_columns=>'NOM_ENTIDAD_EMISORA:MARCA_TARJETA_DEBITO:CLASE_TARJETA_DEBITO:NRO_TARJETA_DEBITO:EDITAR:ELIMINAR:'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(25586850011107297)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(74672781536557198)
,p_button_name=>'P113_BOTON_BUSCAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'BUSCAR'
,p_button_position=>'BOTTOM'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(33952525309908812)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(33448318901687448)
,p_button_name=>'CANCELAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_image_alt=>'Cancelar'
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(33952221425908809)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(33448318901687448)
,p_button_name=>'P113_ACEPTAR_CREAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Aceptar'
,p_button_position=>'CREATE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(33952382371908810)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(33448318901687448)
,p_button_name=>'P113_ACEPTAR_EDITAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Aceptar'
,p_button_position=>'CREATE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(33448488772687449)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(74673121481557201)
,p_button_name=>'P113_AGREGAR'
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
 p_id=>wwv_flow_imp.id(25587233746107298)
,p_name=>'P113_COD_PERSONA'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(74672781536557198)
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
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(25587626844107298)
,p_name=>'P113_T_PERSONA'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(74672781536557198)
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
 p_id=>wwv_flow_imp.id(33951518331908802)
,p_name=>'P113_NOM_ENTIDAD_EMISORA'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(33448318901687448)
,p_prompt=>'Nom Entidad Emisora'
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
 p_id=>wwv_flow_imp.id(33951678000908803)
,p_name=>'P113_MARCA_TARJETA_DEBITO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(33448318901687448)
,p_prompt=>'Marca Tarjeta Debito'
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
 p_id=>wwv_flow_imp.id(33951723904908804)
,p_name=>'P113_CLASE_TARJETA_DEBITO'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(33448318901687448)
,p_prompt=>'Clase Tarjeta Debito'
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
 p_id=>wwv_flow_imp.id(33951893724908805)
,p_name=>'P113_NRO_TARJETA_DEBITO'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(33448318901687448)
,p_prompt=>'Nro Tarjeta Debito'
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
 p_id=>wwv_flow_imp.id(33951923575908806)
,p_name=>'P113_AUX_MSJ_CONTROL'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(33448318901687448)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(33952024843908807)
,p_name=>'P113_SEQ_ID_EDITAR'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(33448318901687448)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(33952167180908808)
,p_name=>'P113_SEQ_ID_ELIMINAR'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(33448318901687448)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(25588485719107300)
,p_name=>'DA_BUSCAR_DATOS'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(25586850011107297)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(25588982305107300)
,p_event_id=>wwv_flow_imp.id(25588485719107300)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(74673121481557201)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(33448097631687445)
,p_event_id=>wwv_flow_imp.id(25588485719107300)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(25586850011107297)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(33448570300687450)
,p_name=>'DA_ABRIR_GUARDAR'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(33448488772687449)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(33951464442908801)
,p_event_id=>wwv_flow_imp.id(33448570300687450)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P113_NOM_ENTIDAD_EMISORA,P113_MARCA_TARJETA_DEBITO,P113_CLASE_TARJETA_DEBITO,P113_NRO_TARJETA_DEBITO'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(33952884359908815)
,p_event_id=>wwv_flow_imp.id(33448570300687450)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(33952382371908810)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(33952787251908814)
,p_event_id=>wwv_flow_imp.id(33448570300687450)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(33952221425908809)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(33952651512908813)
,p_event_id=>wwv_flow_imp.id(33448570300687450)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(33448318901687448)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(33952951264908816)
,p_name=>'DA_GUARDAR'
,p_event_sequence=>30
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(33952221425908809)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(33953038132908817)
,p_event_id=>wwv_flow_imp.id(33952951264908816)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'--NO NULOS OBLIGATORIOS ',
':P113_AUX_MSJ_CONTROL := null;',
'IF ',
'    :P113_NOM_ENTIDAD_EMISORA IS NULL THEN',
'    :P113_AUX_MSJ_CONTROL := ''Debe ingresar el nombre de la entidad emisora.'';',
' ',
' ELSIF ',
'    :P113_MARCA_TARJETA_DEBITO IS NULL THEN',
'    :P113_AUX_MSJ_CONTROL := ''Debe ingresar la marca de tarjeta de DEBITO.'';',
' ELSIF ',
'    :P113_CLASE_TARJETA_DEBITO IS NULL THEN',
'    :P113_AUX_MSJ_CONTROL := ''Debe ingresar la clase.'';',
' ELSIF ',
'    :P113_NRO_TARJETA_DEBITO IS NULL THEN',
'    :P113_AUX_MSJ_CONTROL := ''Debe ingresar el numero de tarjeta de DEBITO.'';',
'',
' ELSE',
'  begin',
'  INSERT INTO TARJETAS_DEBITO (',
'    COD_PERSONA,',
'    NOM_ENTIDAD_EMISORA,',
'    MARCA_TARJETA_DEBITO,',
'    CLASE_TARJETA_DEBITO,',
'    NRO_TARJETA_DEBITO',
' )',
' VALUES(',
'     :P113_COD_PERSONA,',
'     :P113_NOM_ENTIDAD_EMISORA,',
'     :P113_MARCA_TARJETA_DEBITO,',
'     :P113_CLASE_TARJETA_DEBITO,',
'     :P113_NRO_TARJETA_DEBITO   ',
'                  ',
'            );',
'  EXCEPTION',
'',
'        WHEN OTHERS THEN',
'            apex_debug.error(sqlerrm);',
'    END;',
'END IF;  '))
,p_attribute_02=>'P113_COD_PERSONA,P113_NOM_ENTIDAD_EMISORA,P113_T_PERSONA,P113_MARCA_TARJETA_DEBITO,P113_CLASE_TARJETA_DEBITO,P113_NRO_TARJETA_DEBITO'
,p_attribute_03=>'P113_AUX_MSJ_CONTROL'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(33953172612908818)
,p_event_id=>wwv_flow_imp.id(33952951264908816)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'&P113_AUX_MSJ_CONTROL.'
,p_attribute_03=>'warning'
,p_attribute_04=>'fa-warning'
,p_attribute_06=>'ACEPTAR'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P113_AUX_MSJ_CONTROL'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(33953237673908819)
,p_event_id=>wwv_flow_imp.id(33952951264908816)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(74673121481557201)
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P113_AUX_MSJ_CONTROL'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(33953392984908820)
,p_event_id=>wwv_flow_imp.id(33952951264908816)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(33448318901687448)
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P113_AUX_MSJ_CONTROL'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(33953555461908822)
,p_event_id=>wwv_flow_imp.id(33952951264908816)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>unistr('REGISTRO GUARDADO CON \00C9XITO')
,p_attribute_02=>'MENSAJE'
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P113_AUX_MSJ_CONTROL'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(33953736157908824)
,p_name=>'DA_ABRIR_EDITAR'
,p_event_sequence=>40
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P113_SEQ_ID_EDITAR'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(33953832330908825)
,p_event_id=>wwv_flow_imp.id(33953736157908824)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin ',
'   select ',
'   COD_PERSONA,',
'   NOM_ENTIDAD_EMISORA,',
'   MARCA_TARJETA_DEBITO,',
'   CLASE_TARJETA_DEBITO,',
'   NRO_TARJETA_DEBITO',
'   into',
'    :P113_COD_PERSONA,',
'    :P113_NOM_ENTIDAD_EMISORA,',
'    :P113_MARCA_TARJETA_DEBITO,',
'    :P113_CLASE_TARJETA_DEBITO,',
'    :P113_NRO_TARJETA_DEBITO',
'     ',
'   from TARJETAS_DEBITO',
'   where ROWID= :P113_SEQ_ID_EDITAR',
'   and cod_persona = :P113_COD_PERSONA;',
'',
'end;'))
,p_attribute_02=>'P113_SEQ_ID_EDITAR'
,p_attribute_03=>'P113_NOM_ENTIDAD_EMISORA,P113_MARCA_TARJETA_DEBITO,P113_CLASE_TARJETA_DEBITO,P113_NRO_TARJETA_DEBITO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(33954015899908827)
,p_event_id=>wwv_flow_imp.id(33953736157908824)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(33952221425908809)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(33954106630908828)
,p_event_id=>wwv_flow_imp.id(33953736157908824)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(33952382371908810)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(33953976900908826)
,p_event_id=>wwv_flow_imp.id(33953736157908824)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(33448318901687448)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(33954225472908829)
,p_name=>'DA_GUARDAR_EDITAR'
,p_event_sequence=>50
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(33952382371908810)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(33954314381908830)
,p_event_id=>wwv_flow_imp.id(33954225472908829)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'UPDATE TARJETAS_DEBITO',
'    SET                                       ',
'       COD_PERSONA  =     :P113_COD_PERSONA,',
'       NOM_ENTIDAD_EMISORA = :P113_NOM_ENTIDAD_EMISORA,',
'       MARCA_TARJETA_DEBITO = :P113_MARCA_TARJETA_DEBITO,',
'       CLASE_TARJETA_DEBITO = :P113_CLASE_TARJETA_DEBITO,',
'       NRO_TARJETA_DEBITO = :P113_NRO_TARJETA_DEBITO',
'    ',
'    WHERE ROWID = :P113_SEQ_ID_EDITAR; '))
,p_attribute_02=>'P113_COD_PERSONA,P113_NOM_ENTIDAD_EMISORA,P113_MARCA_TARJETA_DEBITO,P113_CLASE_TARJETA_DEBITO,P113_NRO_TARJETA_DEBITO'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(33954601584908833)
,p_event_id=>wwv_flow_imp.id(33954225472908829)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(74673121481557201)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(33954724840908834)
,p_event_id=>wwv_flow_imp.id(33954225472908829)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(33448318901687448)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(33954828440908835)
,p_event_id=>wwv_flow_imp.id(33954225472908829)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'REGISTRO ACTUALIZADO'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(33954958740908836)
,p_name=>'DA_ELIMINAR'
,p_event_sequence=>60
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P113_SEQ_ID_ELIMINAR'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(33955075369908837)
,p_event_id=>wwv_flow_imp.id(33954958740908836)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'Desea eliminar?'
,p_attribute_02=>'ELIMINAR'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(33955117022908838)
,p_event_id=>wwv_flow_imp.id(33954958740908836)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DELETE from tarjetas_debito',
' WHERE rowid = :P113_SEQ_ID_ELIMINAR;',
' '))
,p_attribute_02=>'P113_SEQ_ID_ELIMINAR'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(33955282049908839)
,p_event_id=>wwv_flow_imp.id(33954958740908836)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(74673121481557201)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(33955352069908840)
,p_event_id=>wwv_flow_imp.id(33954958740908836)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>unistr('Registro eliminado con \00E9xito!')
,p_attribute_02=>'Mensaje'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(33955472637908841)
,p_name=>'DA_CERRAR_REGION'
,p_event_sequence=>70
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(33952525309908812)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(33955526226908842)
,p_event_id=>wwv_flow_imp.id(33955472637908841)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(33448318901687448)
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(33447933944687444)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_INIT'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
' V_ES_FISICA VARCHAR(15);',
'BEGIN',
' :P_COD_MODULO := ''BS'';   ',
'-- ##################################### Probar con : ',
'    --:P113_COD_PERSONA := ''19''; --ALBA CLARA DE SAAVEDRA',
'  --:P113_COD_PERSONA := ''6252''; --	INCOM DE GREGORIO O. AQUINO BAEZ',
' --#####################################',
'    SELECT ES_FISICA INTO V_ES_FISICA ',
'    FROM PERSONAS',
'    WHERE COD_PERSONA = :P110_COD_PERSONA;',
'    IF V_ES_FISICA = ''S'' THEN',
'       :P113_T_PERSONA := ''S'';',
'    ELSE',
'        :P113_T_PERSONA := ''N'';',
'    END IF;',
'  ',
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
