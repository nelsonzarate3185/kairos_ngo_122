prompt --application/pages/page_00108
begin
--   Manifest
--     PAGE: 00108
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
 p_id=>108
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'BSREFCOM'
,p_alias=>'BSREFCOM'
,p_step_title=>'BSREFCOM'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_last_updated_by=>'EMILIANOP'
,p_last_upd_yyyymmddhh24miss=>'20221110151822'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(25312640736472330)
,p_plug_name=>'REPORTE'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT  seq_id p_id,',
'        c001 COD_PERSONA, ',
'        c002 NOM_COMERCIO,',
'        c003 NRO_CUENTA,',
'        c004 OFICIAL_CUENTA,',
'        c005 NUM_TELEFONO,',
'        null EDITAR,',
'        null ELIMINAR                          ',
'',
'FROM APEX_COLLECTIONS',
'WHERE COLLECTION_NAME = ''PERSONA_COM''',
'AND nvl(c020, ''O'') <> ''B'';',
''))
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
 p_id=>wwv_flow_imp.id(25313369721472337)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_search_bar=>'N'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_enable_mail_download=>'Y'
,p_owner=>'EMILIANOP'
,p_internal_uid=>25313369721472337
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(25313471759472338)
,p_db_column_name=>'COD_PERSONA'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Cod Persona'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(25504178901501101)
,p_db_column_name=>'NOM_COMERCIO'
,p_display_order=>60
,p_column_identifier=>'H'
,p_column_label=>'Banco/Financiera/Comercio'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(25313855107472342)
,p_db_column_name=>'NUM_TELEFONO'
,p_display_order=>70
,p_column_identifier=>'E'
,p_column_label=>'Telefono'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(25504444317501104)
,p_db_column_name=>'NRO_CUENTA'
,p_display_order=>100
,p_column_identifier=>'K'
,p_column_label=>unistr('N\00B0 Cuenta')
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(25504681747501106)
,p_db_column_name=>'OFICIAL_CUENTA'
,p_display_order=>110
,p_column_identifier=>'M'
,p_column_label=>'Oficial de Cuenta'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(29387984840741816)
,p_db_column_name=>'P_ID'
,p_display_order=>120
,p_column_identifier=>'N'
,p_column_label=>'P Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(29388058737741817)
,p_db_column_name=>'EDITAR'
,p_display_order=>130
,p_column_identifier=>'O'
,p_column_label=>'Editar'
,p_column_link=>'javascript:$s(''P108_SEQ_ID_EDITAR'',#P_ID#);'
,p_column_linktext=>'<span aria-hidden="true" class="fa fa-edit"></span>'
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
 p_id=>wwv_flow_imp.id(29388135000741818)
,p_db_column_name=>'ELIMINAR'
,p_display_order=>140
,p_column_identifier=>'P'
,p_column_label=>'Eliminar'
,p_column_link=>'javascript:$s(''P108_SEQ_ID_ELIMINAR'',#P_ID#);'
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
'    END IF;                                                     ',
'END;'))
,p_display_condition2=>'PLSQL'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(25473569554311098)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'254736'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'NOM_COMERCIO:NUM_TELEFONO:NRO_CUENTA:OFICIAL_CUENTA:EDITAR:ELIMINAR:'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(29388474876741821)
,p_plug_name=>'AGREGAR/MODIFICAR'
,p_region_template_options=>'#DEFAULT#:js-dialog-size600x400'
,p_plug_template=>wwv_flow_imp.id(40117728043263659)
,p_plug_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(38036094042336025)
,p_plug_name=>'VARIABLES AUXILIARES'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>50
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(48994995973984936)
,p_plug_name=>'BSREFCOM'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(29390061675741837)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(29388474876741821)
,p_button_name=>'P108_BOTON_CANCELAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_image_alt=>'Cancelar'
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(29389234649741829)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(29388474876741821)
,p_button_name=>'P108_CREAR_ACEPTAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Aceptar'
,p_button_position=>'CREATE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(29389393169741830)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_imp.id(29388474876741821)
,p_button_name=>'P108_EDITAR_ACEPTAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Aceptar'
,p_button_position=>'CREATE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(29388593812741822)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(25312640736472330)
,p_button_name=>'P108_BOTON_AGREGAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Agregar'
,p_button_position=>'TOP'
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
 p_id=>wwv_flow_imp.id(29568889452340711)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(48994995973984936)
,p_button_name=>'P108_BOTON_CONFIRMAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Confirmar'
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
 p_id=>wwv_flow_imp.id(25437418525208597)
,p_name=>'P108_COD_PERSONA'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(48994995973984936)
,p_prompt=>'Persona'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_PERSONAS'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select cod_persona || '' - '' || ltrim( rtrim( nvl( nombre, nomb_fantasia ) ) ) d, cod_persona r ',
'from personas',
'order by 1;'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_tag_attributes=>'readonly'
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
 p_id=>wwv_flow_imp.id(25437850606208597)
,p_name=>'P108_T_PERSONA'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(48994995973984936)
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
 p_id=>wwv_flow_imp.id(29388284327741819)
,p_name=>'P108_SEQ_ID_EDITAR'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(48994995973984936)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(29388387493741820)
,p_name=>'P108_SEQ_ID_ELIMINAR'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(48994995973984936)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(29388864245741825)
,p_name=>'P108_NOM_COMERCIO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(29388474876741821)
,p_prompt=>'Banco/Financiera/Comercio'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186875167263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(29388985451741826)
,p_name=>'P108_TELEFONO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(29388474876741821)
,p_prompt=>'Telefono'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186875167263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(29389093702741827)
,p_name=>'P108_NUM_CUENTA'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(29388474876741821)
,p_prompt=>unistr('N\00B0 Cuenta')
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186875167263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(29389104516741828)
,p_name=>'P108_OFICIAL_CUENTA'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(29388474876741821)
,p_prompt=>'Oficial de Cuenta'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186875167263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(38036188695336026)
,p_name=>'P108_ALERT'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(38036094042336025)
,p_prompt=>'Alert'
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
 p_id=>wwv_flow_imp.id(29388698806741823)
,p_name=>'DA_ABRIR_REGION_AGREGAR'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(29388593812741822)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(29389752345741834)
,p_event_id=>wwv_flow_imp.id(29388698806741823)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P108_NOM_COMERCIO,P108_TELEFONO,P108_NUM_CUENTA,P108_OFICIAL_CUENTA'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(29390658671741843)
,p_event_id=>wwv_flow_imp.id(29388698806741823)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(29389393169741830)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(29389854365741835)
,p_event_id=>wwv_flow_imp.id(29388698806741823)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(29389234649741829)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(29388740245741824)
,p_event_id=>wwv_flow_imp.id(29388698806741823)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(29388474876741821)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(29389494266741831)
,p_name=>'DA_OCULTAR_BOTONES_CREAR_EDITAR'
,p_event_sequence=>20
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(29389585289741832)
,p_event_id=>wwv_flow_imp.id(29389494266741831)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(29389234649741829)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(29389617076741833)
,p_event_id=>wwv_flow_imp.id(29389494266741831)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(29389393169741830)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(29390153645741838)
,p_name=>'DA_CERRAR_REGION'
,p_event_sequence=>30
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(29390061675741837)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(29390282515741839)
,p_event_id=>wwv_flow_imp.id(29390153645741838)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(29388474876741821)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(29390362529741840)
,p_name=>'DA_ABRIR_REGION_EDITAR'
,p_event_sequence=>40
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P108_SEQ_ID_EDITAR'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(29568258201340705)
,p_event_id=>wwv_flow_imp.id(29390362529741840)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P108_NOM_COMERCIO,P108_TELEFONO,P108_NUM_CUENTA,P108_OFICIAL_CUENTA'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(29568024503340703)
,p_event_id=>wwv_flow_imp.id(29390362529741840)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN   ',
'',
'    SELECT             ',
'            c002,',
'            c003,',
'            c004,',
'            c005                                ',
'',
'    INTO    :P108_NOM_COMERCIO,',
'            :P108_NUM_CUENTA,',
'            :P108_OFICIAL_CUENTA,',
'            :P108_TELEFONO',
'    FROM APEX_COLLECTIONS',
'    WHERE COLLECTION_NAME = ''PERSONA_COM''',
'    AND SEQ_ID = :P108_SEQ_ID_EDITAR;',
'',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(sqlerrm);',
'',
'',
'',
'END;'))
,p_attribute_02=>'P108_SEQ_ID_EDITAR'
,p_attribute_03=>'P108_NOM_COMERCIO,P108_NUM_CUENTA,P108_OFICIAL_CUENTA,P108_TELEFONO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(29390580357741842)
,p_event_id=>wwv_flow_imp.id(29390362529741840)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(29389393169741830)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(29390715594741844)
,p_event_id=>wwv_flow_imp.id(29390362529741840)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(29389234649741829)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(29390440597741841)
,p_event_id=>wwv_flow_imp.id(29390362529741840)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(29388474876741821)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(29390831313741845)
,p_name=>'DA_GUARDAR_MIEMBRO_COLECCION'
,p_event_sequence=>50
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(29389234649741829)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(29390900407741846)
,p_event_id=>wwv_flow_imp.id(29390831313741845)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'IF  :P108_COD_PERSONA IS NULL OR :P108_NOM_COMERCIO IS NULL OR :P108_NUM_CUENTA IS NULL OR ',
'    :P108_OFICIAL_CUENTA IS NULL OR :P108_TELEFONO IS NULL THEN',
'    :P108_ALERT := 1;',
'ELSE ',
'    :P108_ALERT := 0;',
'    BSREFCOM.pr_agregar_miembro_collection (    :P108_COD_PERSONA,',
'                                                :P108_NOM_COMERCIO,',
'                                                :P108_NUM_CUENTA,',
'                                                :P108_OFICIAL_CUENTA,',
'                                                :P108_TELEFONO); ',
'END IF;',
'',
'EXCEPTION',
'',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(sqlerrm);',
'',
'',
'END;'))
,p_attribute_02=>'P108_NOM_COMERCIO,P108_TELEFONO,P108_NUM_CUENTA,P108_OFICIAL_CUENTA,P108_ALERT'
,p_attribute_03=>'P108_ALERT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(38036206203336027)
,p_event_id=>wwv_flow_imp.id(29390831313741845)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>unistr('Compruebe que los campos requeridos no est\00E9n vac\00EDos.')
,p_attribute_02=>'Campos vacios.'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P108_ALERT'
,p_client_condition_expression=>'1'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(29391085901741847)
,p_event_id=>wwv_flow_imp.id(29390831313741845)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(25312640736472330)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P108_ALERT'
,p_client_condition_expression=>'0'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(29391132429741848)
,p_event_id=>wwv_flow_imp.id(29390831313741845)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(29388474876741821)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P108_ALERT'
,p_client_condition_expression=>'0'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(29391227076741849)
,p_name=>'DA_EDITAR_MIEMBRO_COLLECCION'
,p_event_sequence=>60
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(29389393169741830)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(29391378652741850)
,p_event_id=>wwv_flow_imp.id(29391227076741849)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'IF  :P108_COD_PERSONA IS NULL OR :P108_NOM_COMERCIO IS NULL OR :P108_NUM_CUENTA IS NULL OR ',
'    :P108_OFICIAL_CUENTA IS NULL OR :P108_TELEFONO IS NULL THEN',
'    :P108_ALERT := 1;',
'ELSE ',
'    :P108_ALERT := 0;',
'    BSREFCOM.pr_modificar_miembro              (:P108_SEQ_ID_EDITAR,',
'                                                :P108_COD_PERSONA,',
'                                                :P108_NOM_COMERCIO,',
'                                                :P108_NUM_CUENTA,',
'                                                :P108_OFICIAL_CUENTA,',
'                                                :P108_TELEFONO); ',
'END IF;',
'',
'    ',
'',
'',
'EXCEPTION',
'',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(sqlerrm);',
'',
'',
'END;'))
,p_attribute_02=>'P108_COD_PERSONA,P108_NOM_COMERCIO,P108_TELEFONO,P108_NUM_CUENTA,P108_OFICIAL_CUENTA,P108_SEQ_ID_EDITAR,P108_ALERT'
,p_attribute_03=>'P108_ALERT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(38036372169336028)
,p_event_id=>wwv_flow_imp.id(29391227076741849)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>unistr('Compruebe que los campos requeridos no est\00E9n vac\00EDos.')
,p_attribute_02=>'Campos vacios.'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P108_ALERT'
,p_client_condition_expression=>'1'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(38036449894336029)
,p_event_id=>wwv_flow_imp.id(29391227076741849)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(25312640736472330)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P108_ALERT'
,p_client_condition_expression=>'0'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(38036504591336030)
,p_event_id=>wwv_flow_imp.id(29391227076741849)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(29388474876741821)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P108_ALERT'
,p_client_condition_expression=>'0'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(29568325467340706)
,p_name=>'DA_ELIMINAR_MIEMBRO_COLECCION'
,p_event_sequence=>70
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P108_SEQ_ID_ELIMINAR'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(29568424069340707)
,p_event_id=>wwv_flow_imp.id(29568325467340706)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>unistr('\00BFDesea eliminar el registro?')
,p_attribute_02=>unistr('\00BFDesea eliminar el registro?')
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(29568653652340709)
,p_event_id=>wwv_flow_imp.id(29568325467340706)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'BSREFCOM.pr_borrar_miembro_collection (:P108_SEQ_ID_ELIMINAR);',
'',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(sqlerrm);',
'',
'END;'))
,p_attribute_02=>'P108_SEQ_ID_ELIMINAR'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(29568723550340710)
,p_event_id=>wwv_flow_imp.id(29568325467340706)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(25312640736472330)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(29568965411340712)
,p_name=>'DA_CONFIRMAR_DATOS'
,p_event_sequence=>80
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(29568889452340711)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(29569050329340713)
,p_event_id=>wwv_flow_imp.id(29568965411340712)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>unistr('\00BFDesea confirmar los datos?')
,p_attribute_02=>unistr('\00BFDesea confirmar los datos?')
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(29569120398340714)
,p_event_id=>wwv_flow_imp.id(29568965411340712)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_01=>'CONFIRMAR'
,p_attribute_02=>'Y'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(25314413592472348)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_INIT'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'',
'    V_ES_FISICA VARCHAR(15);',
'',
'BEGIN',
'',
'    :P_COD_MODULO := ''BS'';',
'',
'    --:P108_COD_PERSONA := ''14739'';',
'    :P108_COD_PERSONA := ''15584'';',
'    --:P108_COD_PERSONA := ''14869'';',
'    --:P108_COD_PERSONA := ''14638'';',
'',
'    BSREFCOM.pr_crear_collection (:P108_COD_PERSONA);',
'',
'    SELECT ES_FISICA INTO V_ES_FISICA ',
'    FROM PERSONAS',
'    WHERE COD_PERSONA = :P108_COD_PERSONA;',
'    IF V_ES_FISICA = ''S'' THEN',
'       :P108_T_PERSONA := ''S'';',
'    ELSE',
'        :P108_T_PERSONA := ''N'';',
'    END IF;',
'',
'    --APEX_DEBUG.ERROR(:P129_T_PERSONA);',
'',
'EXCEPTION',
'',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(sqlerrm);',
'',
'END;',
'',
''))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(29569262412340715)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'DA_GUARDAR_DATOS_BD'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN   ',
'',
'    BSREFCOM.pr_confirmar_accion (:P108_COD_PERSONA);',
'',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(sqlerrm);',
'',
'',
'',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CONFIRMAR'
,p_process_when_type=>'REQUEST_EQUALS_CONDITION'
,p_process_success_message=>unistr('\00A1Los datos se guardaron exitosamente!')
);
wwv_flow_imp.component_end;
end;
/
