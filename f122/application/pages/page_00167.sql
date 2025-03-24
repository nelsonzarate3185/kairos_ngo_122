prompt --application/pages/page_00167
begin
--   Manifest
--     PAGE: 00167
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
 p_id=>167
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'BSCOMP'
,p_alias=>'BSCOMP1'
,p_step_title=>'BSCOMP'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_last_updated_by=>'OSCARGO'
,p_last_upd_yyyymmddhh24miss=>'20221125171555'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(38037262789336037)
,p_plug_name=>'VARIABLES AUXILIARES'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>70
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(58812981669604246)
,p_plug_name=>'Comprobantes Presentados'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(58813170371604248)
,p_plug_name=>'REPORTE'
,p_parent_plug_id=>wwv_flow_imp.id(58812981669604246)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>80
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT           ',
'        seq_id p_id,',
'        c001 COD_DOCUMENTO, ',
'        c002 DESCRIPCION,',
'        c003 MONTO,',
'        d001 FECHA_INICIO,',
'        d002 FECHA_VENCIMIENTO,',
'        c004 COD_USUARIO,',
'        d003 FEC_ALTA,',
'        C005 COMENTARIO,',
'        null DETALLE,',
'        null EDITAR,',
'        null ELIMINAR',
'',
'FROM APEX_COLLECTIONS',
'WHERE COLLECTION_NAME = ''PERSONA_BALANCE''',
'AND nvl(c020, ''O'') <> ''B'';',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P167_COD_PERSONA'
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
 p_id=>wwv_flow_imp.id(58813290399604249)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_search_bar=>'N'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_enable_mail_download=>'Y'
,p_owner=>'EMILIANOP'
,p_internal_uid=>58813290399604249
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(33314973054103136)
,p_db_column_name=>'COD_DOCUMENTO'
,p_display_order=>10
,p_column_identifier=>'K'
,p_column_label=>'Cod.'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(33315348491103137)
,p_db_column_name=>'DESCRIPCION'
,p_display_order=>20
,p_column_identifier=>'L'
,p_column_label=>'Descripcion'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(33315762423103137)
,p_db_column_name=>'MONTO'
,p_display_order=>30
,p_column_identifier=>'M'
,p_column_label=>'Importe'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(33316158383103137)
,p_db_column_name=>'FECHA_INICIO'
,p_display_order=>40
,p_column_identifier=>'N'
,p_column_label=>'Fecha'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(33316559051103138)
,p_db_column_name=>'FECHA_VENCIMIENTO'
,p_display_order=>50
,p_column_identifier=>'O'
,p_column_label=>'Vencimiento'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(33316963522103138)
,p_db_column_name=>'COD_USUARIO'
,p_display_order=>60
,p_column_identifier=>'P'
,p_column_label=>'Usuario'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(33317344186103138)
,p_db_column_name=>'FEC_ALTA'
,p_display_order=>70
,p_column_identifier=>'Q'
,p_column_label=>' Fec. Alta'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(33317787721103138)
,p_db_column_name=>'P_ID'
,p_display_order=>80
,p_column_identifier=>'R'
,p_column_label=>'P Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(33318119155103139)
,p_db_column_name=>'DETALLE'
,p_display_order=>100
,p_column_identifier=>'T'
,p_column_label=>'Detalle'
,p_column_link=>'javascript:$s(''P167_SEQ_ID'',#P_ID#);'
,p_column_linktext=>'<span class="fa fa-search" aria-hidden="true"></span>'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(33318593560103139)
,p_db_column_name=>'COMENTARIO'
,p_display_order=>110
,p_column_identifier=>'U'
,p_column_label=>'Comentario'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(33318960935103139)
,p_db_column_name=>'EDITAR'
,p_display_order=>120
,p_column_identifier=>'V'
,p_column_label=>'Editar'
,p_column_link=>'javascript:$s(''P167_SEQ_ID_EDITAR'',#P_ID#);'
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
 p_id=>wwv_flow_imp.id(33319357935103139)
,p_db_column_name=>'ELIMINAR'
,p_display_order=>130
,p_column_identifier=>'W'
,p_column_label=>'Eliminar'
,p_column_link=>'javascript:$s(''P167_SEQ_ID_ELIMINAR'',#P_ID#);'
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
 p_id=>wwv_flow_imp.id(59147895939822211)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'258406'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'COD_DOCUMENTO:DESCRIPCION:MONTO:FEC_ALTA:FECHA_VENCIMIENTO:COD_USUARIO:FECHA_INICIO:DETALLE:EDITAR:ELIMINAR:'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(58813419211604251)
,p_plug_name=>unistr('Observaci\00F3n:')
,p_parent_plug_id=>wwv_flow_imp.id(58813170371604248)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(59247068478609846)
,p_plug_name=>'Agregar/Editar Balance'
,p_region_template_options=>'#DEFAULT#:js-dialog-autoheight:js-dialog-size720x480'
,p_plug_template=>wwv_flow_imp.id(40117728043263659)
,p_plug_display_sequence=>60
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(33313468244103135)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(58812981669604246)
,p_button_name=>'P167_BOTON_INICIO'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Inicio'
,p_button_position=>'BOTTOM'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(33308389127103132)
,p_button_sequence=>160
,p_button_plug_id=>wwv_flow_imp.id(59247068478609846)
,p_button_name=>'P167_CANCELAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_image_alt=>'Cancelar'
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(33307910312103132)
,p_button_sequence=>140
,p_button_plug_id=>wwv_flow_imp.id(59247068478609846)
,p_button_name=>'P167_ACEPTAR_CREAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Aceptar'
,p_button_position=>'CREATE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(33308742049103132)
,p_button_sequence=>150
,p_button_plug_id=>wwv_flow_imp.id(59247068478609846)
,p_button_name=>'P167_ACEPTAR_EDITAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Aceptar'
,p_button_position=>'CREATE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(33320028091103140)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_imp.id(58813170371604248)
,p_button_name=>'P167_AGREGAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
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
 p_id=>wwv_flow_imp.id(33313069912103135)
,p_button_sequence=>90
,p_button_plug_id=>wwv_flow_imp.id(58812981669604246)
,p_button_name=>'P167_BOTON_CONFIRMAR'
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
 p_id=>wwv_flow_imp.id(33309176746103133)
,p_name=>'P167_COD_DOC'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(59247068478609846)
,p_prompt=>'Cod.'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_DOCUMENTOS'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select cod_documento, descripcion',
'from CC_DOCUMENTOS_BALANCE'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186875167263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(33309567712103133)
,p_name=>'P167_DESCRIPCION'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(59247068478609846)
,p_prompt=>unistr('Descripci\00F3n')
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(33309927648103133)
,p_name=>'P167_MONTO'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(59247068478609846)
,p_prompt=>'Monto'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186875167263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(33310369208103133)
,p_name=>'P167_FECHA_INICIO'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(59247068478609846)
,p_item_default=>'sysdate;'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>'Fecha inicio'
,p_display_as=>'NATIVE_DATE_PICKER_JET'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186875167263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'POPUP'
,p_attribute_03=>'NONE'
,p_attribute_06=>'NONE'
,p_attribute_09=>'N'
,p_attribute_11=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(33310744294103134)
,p_name=>'P167_FECHA_VENCIMIENTO'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(59247068478609846)
,p_prompt=>'Vencimiento'
,p_display_as=>'NATIVE_DATE_PICKER_JET'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186875167263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'POPUP'
,p_attribute_03=>'NONE'
,p_attribute_06=>'NONE'
,p_attribute_09=>'N'
,p_attribute_11=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(33311120573103134)
,p_name=>'P167_FEC_ALTA'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(59247068478609846)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Fec. Alta'
,p_source=>'select sysdate from dual;'
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(33311599862103134)
,p_name=>'P167_COD_USUARIO'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(59247068478609846)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Usuario'
,p_source=>'APP_USER'
,p_source_type=>'ITEM'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(33311974830103134)
,p_name=>'P167_AGREGAR_COMENTARIOS'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(59247068478609846)
,p_prompt=>unistr('Observaci\00F3n:')
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>30
,p_cHeight=>5
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(33313804574103135)
,p_name=>'P167_COD_CLIENTE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(58812981669604246)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(33314244180103136)
,p_name=>'P167_COD_PERSONA'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(58812981669604246)
,p_prompt=>'Persona'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_PERSONAS'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select cod_persona || '' - '' || ltrim( rtrim( nvl( nombre, nomb_fantasia ) ) ) d, cod_persona r ',
'from personas',
'order by 1;'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_colspan=>6
,p_grid_column=>1
,p_read_only_when_type=>'ALWAYS'
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
 p_id=>wwv_flow_imp.id(33320717490103141)
,p_name=>'P167_COMENTARIOS'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(58813419211604251)
,p_prompt=>'Comentario'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'rea readonly'
,p_begin_on_new_line=>'N'
,p_begin_on_new_field=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(33321124111103141)
,p_name=>'P167_SEQ_ID'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(58813419211604251)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(33321513300103141)
,p_name=>'P167_SEQ_ID_EDITAR'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(58813419211604251)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(33321937091103141)
,p_name=>'P167_SEQ_ID_ELIMINAR'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(58813419211604251)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(38037325718336038)
,p_name=>'P167_ALERT'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(38037262789336037)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(33335969840103148)
,p_name=>'DA_CAMBIAR_COMENTARIO'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P167_SEQ_ID'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(33336438174103148)
,p_event_id=>wwv_flow_imp.id(33335969840103148)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'        SELECT c005 OBSERVACION ',
'        INTO :P167_COMENTARIOS',
'        FROM apex_collections',
'        WHERE collection_name = ''PERSONA_BALANCE''',
'        AND   SEQ_ID = :P167_SEQ_ID;',
'',
'END;'))
,p_attribute_02=>'P167_SEQ_ID'
,p_attribute_03=>'P167_COMENTARIOS'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(33333503091103147)
,p_name=>'DA_ABRIR_GUARDAR'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(33320028091103140)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(33335099459103147)
,p_event_id=>wwv_flow_imp.id(33333503091103147)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(33307910312103132)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(33335520641103148)
,p_event_id=>wwv_flow_imp.id(33333503091103147)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(33308742049103132)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(33334039561103147)
,p_event_id=>wwv_flow_imp.id(33333503091103147)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(59247068478609846)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(33334509620103147)
,p_event_id=>wwv_flow_imp.id(33333503091103147)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P167_COD_DOC,P167_DESCRIPCION,P167_MONTO,P167_FECHA_INICIO,P167_FECHA_VENCIMIENTO,P167_AGREGAR_COMENTARIOS'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(33323198509103142)
,p_name=>'DA_REGRESAR'
,p_event_sequence=>30
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(33308389127103132)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(33323687004103143)
,p_event_id=>wwv_flow_imp.id(33323198509103142)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(59247068478609846)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(33324069950103143)
,p_name=>'DA_GUARDAR_MIEMBRO_COLECCION'
,p_event_sequence=>40
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(33307910312103132)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(33324588037103143)
,p_event_id=>wwv_flow_imp.id(33324069950103143)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'IF  :P167_COD_DOC IS NULL OR :P167_DESCRIPCION IS NULL OR :P167_MONTO IS NULL OR ',
'    :P167_FECHA_INICIO IS NULL OR :P167_FECHA_VENCIMIENTO IS NULL ',
'    THEN',
'    ',
'        :P167_ALERT := 1;',
'ELSE ',
'        IF :P167_ALERT = 2 THEN',
'           :P167_ALERT := 2;',
'        ELSE',
'            :P167_ALERT := 0;',
'            BSCOMP.pr_agregar_miembro_collection (  :P167_COD_DOC,',
'                                                    :P167_DESCRIPCION,',
'                                                    :P167_MONTO,',
'                                                    :P167_FECHA_INICIO,',
'                                                    :P167_FECHA_VENCIMIENTO,',
'                                                    :P167_FEC_ALTA,',
'                                                    :P167_COD_USUARIO,',
'                                                    :P167_AGREGAR_COMENTARIOS);',
'        END IF;  ',
'END IF;',
'',
'EXCEPTION',
'',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(sqlerrm);',
'',
'END;',
''))
,p_attribute_02=>'P167_COD_DOC,P167_DESCRIPCION,P167_MONTO,P167_FECHA_INICIO,P167_FECHA_VENCIMIENTO,P167_FEC_ALTA,P167_COD_USUARIO,P167_AGREGAR_COMENTARIOS,P167_ALERT'
,p_attribute_03=>'P167_ALERT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(38037436625336039)
,p_event_id=>wwv_flow_imp.id(33324069950103143)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>unistr('Compruebe que los campos requeridos no est\00E9n vac\00EDos.')
,p_attribute_02=>'Corroborar los datos'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P167_ALERT'
,p_client_condition_expression=>'1'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(38037539599336040)
,p_event_id=>wwv_flow_imp.id(33324069950103143)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'IF  TO_DATE(:P167_FECHA_INICIO, ''dd/mm/yyyy'') > TO_DATE(:P167_FECHA_VENCIMIENTO, ''dd/mm/yyyy'') THEN',
'    ',
'       :P167_ALERT := 2;',
'ELSE ',
'    IF :P167_ALERT = 1 THEN        ',
'        :P167_ALERT := 1;',
'    ELSE',
'        :P167_ALERT := 0;',
'        BSCOMP.pr_agregar_miembro_collection (  :P167_COD_DOC,',
'                                                :P167_DESCRIPCION,',
'                                                :P167_MONTO,',
'                                                :P167_FECHA_INICIO,',
'                                                :P167_FECHA_VENCIMIENTO,',
'                                                :P167_FEC_ALTA,',
'                                                :P167_COD_USUARIO,',
'                                                :P167_AGREGAR_COMENTARIOS);',
'    END IF;',
'END IF;',
'       ',
'',
'EXCEPTION',
'',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(sqlerrm);',
'',
'END;',
''))
,p_attribute_02=>'P167_COD_DOC,P167_DESCRIPCION,P167_MONTO,P167_FECHA_INICIO,P167_FECHA_VENCIMIENTO,P167_FEC_ALTA,P167_COD_USUARIO,P167_AGREGAR_COMENTARIOS,P167_ALERT'
,p_attribute_03=>'P167_ALERT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(38037677770336041)
,p_event_id=>wwv_flow_imp.id(33324069950103143)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'La fecha de inicio no puede ser mayor a la fecha de vencimiento.'
,p_attribute_02=>'Corroborar los datos'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P167_ALERT'
,p_client_condition_expression=>'2'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(33325571114103144)
,p_event_id=>wwv_flow_imp.id(33324069950103143)
,p_event_result=>'TRUE'
,p_action_sequence=>80
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(58813170371604248)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P167_ALERT'
,p_client_condition_expression=>'0'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(33325074210103144)
,p_event_id=>wwv_flow_imp.id(33324069950103143)
,p_event_result=>'TRUE'
,p_action_sequence=>90
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(59247068478609846)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P167_ALERT'
,p_client_condition_expression=>'0'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(33336893042103148)
,p_name=>'DA_CAMBIAR_DESCRIPCION'
,p_event_sequence=>50
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P167_COD_DOC'
,p_condition_element=>'P167_COD_DOC'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(33337347895103148)
,p_event_id=>wwv_flow_imp.id(33336893042103148)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'SELECT  descripcion INTO :P167_DESCRIPCION',
'from CC_DOCUMENTOS_BALANCE',
'WHERE COD_DOCUMENTO = :P167_COD_DOC;',
'',
'',
'EXCEPTION',
'',
'    WHEN OTHERS THEN',
'        apex_debug.error(sqlerrm);',
'',
'END;'))
,p_attribute_02=>'P167_COD_DOC'
,p_attribute_03=>'P167_DESCRIPCION'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(33325987322103144)
,p_name=>'DA_ELIMINAR_MIEMBRO'
,p_event_sequence=>80
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P167_SEQ_ID_ELIMINAR'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(33326967743103144)
,p_event_id=>wwv_flow_imp.id(33325987322103144)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>unistr('\00BFDesea eliminar?')
,p_attribute_02=>unistr('\00BFDesea Eliminar?')
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(33326493962103144)
,p_event_id=>wwv_flow_imp.id(33325987322103144)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'BSCOMP.pr_borrar_miembro_collection(:P167_SEQ_ID_ELIMINAR,',
'                                    :P167_COD_DOC,',
'                                    :P167_DESCRIPCION,',
'                                    :P167_MONTO,',
'                                    :P167_FECHA_INICIO,',
'                                    :P167_FECHA_VENCIMIENTO,',
'                                    :P167_FEC_ALTA,',
'                                    :P167_COD_USUARIO,',
'                                    :P167_AGREGAR_COMENTARIOS);',
'',
'EXCEPTION',
'',
'    WHEN OTHERS THEN',
'',
'        apex_debug.ERROR(sqlerrm);',
'',
'END;'))
,p_attribute_02=>'P167_SEQ_ID_ELIMINAR,P167_COD_DOC,P167_DESCRIPCION,P167_MONTO,P167_FECHA_INICIO,P167_FECHA_VENCIMIENTO,P167_FEC_ALTA,P167_COD_USUARIO,P167_AGREGAR_COMENTARIOS'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
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
 p_id=>wwv_flow_imp.id(33327974319103145)
,p_event_id=>wwv_flow_imp.id(33325987322103144)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P167_COMENTARIOS'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(33327477245103144)
,p_event_id=>wwv_flow_imp.id(33325987322103144)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(58813170371604248)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(33328300884103145)
,p_name=>'DA_EDITAR_MIEMBRO'
,p_event_sequence=>90
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P167_SEQ_ID_EDITAR'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(33330308488103146)
,p_event_id=>wwv_flow_imp.id(33328300884103145)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'',
'    SELECT      c001 COD_DOCUMENTO, ',
'                c003 MONTO,',
'                d001 FECHA_INICIO,',
'                d002 FECHA_VENCIMIENTO,',
'                c004 COD_USUARIO,',
'                d003 FEC_ALTA,',
'                C005 COMENTARIO',
'    ',
'    INTO    :P167_COD_DOC, ',
'            :P167_MONTO,',
'            :P167_FECHA_INICIO,',
'            :P167_FECHA_VENCIMIENTO,',
'            :P167_COD_USUARIO,',
'            :P167_FEC_ALTA,            ',
'            :P167_AGREGAR_COMENTARIOS',
'    FROM APEX_COLLECTIONS',
'    WHERE COLLECTION_NAME = ''PERSONA_BALANCE''',
'    AND SEQ_ID = :P167_SEQ_ID_EDITAR;',
'',
'    :P167_COD_USUARIO := :APP_USER;',
'    :P167_FEC_ALTA := sysdate;',
'',
'',
'EXCEPTION',
'        when others then',
'',
'            raise_application_error(-20000, ''Ha ocurrido un error en la carga de datos'');',
'',
'END;'))
,p_attribute_02=>'P167_SEQ_ID_EDITAR'
,p_attribute_03=>'P167_COD_DOC,P167_MONTO,P167_FECHA_INICIO,P167_FECHA_VENCIMIENTO,P167_FEC_ALTA,P167_COD_USUARIO,P167_AGREGAR_COMENTARIOS'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(33328871393103145)
,p_event_id=>wwv_flow_imp.id(33328300884103145)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(33308742049103132)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(33329314509103145)
,p_event_id=>wwv_flow_imp.id(33328300884103145)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(33307910312103132)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(33329880296103145)
,p_event_id=>wwv_flow_imp.id(33328300884103145)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(59247068478609846)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(33330742383103146)
,p_name=>'DA_OCULTAR_BOTON_GUARDAR_EDITAR'
,p_event_sequence=>100
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(33331282643103146)
,p_event_id=>wwv_flow_imp.id(33330742383103146)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(33307910312103132)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(33331713377103146)
,p_event_id=>wwv_flow_imp.id(33330742383103146)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(33308742049103132)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(33337784563103148)
,p_name=>'DA_GUARDAR_CAMBIOS_EDICION'
,p_event_sequence=>110
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(33308742049103132)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(33338250605103149)
,p_event_id=>wwv_flow_imp.id(33337784563103148)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    BSCOMP.pr_modificar_miembro (:P167_SEQ_ID_EDITAR,',
'                                    :P167_COD_DOC,',
'                                    :P167_DESCRIPCION,',
'                                    :P167_MONTO,',
'                                    :P167_FECHA_INICIO,',
'                                    :P167_FECHA_VENCIMIENTO,',
'                                    :P167_FEC_ALTA,',
'                                    :P167_COD_USUARIO,',
'                                    :P167_AGREGAR_COMENTARIOS);',
'',
'EXCEPTION',
'',
'    WHEN OTHERS THEN',
'        apex_debug.ERROR(sqlerrm);',
'',
'END;'))
,p_attribute_02=>'P167_SEQ_ID_EDITAR,P167_COD_DOC,P167_DESCRIPCION,P167_MONTO,P167_FECHA_INICIO,P167_FECHA_VENCIMIENTO,P167_FEC_ALTA,P167_COD_USUARIO,P167_AGREGAR_COMENTARIOS'
,p_attribute_03=>'P167_AGREGAR_COMENTARIOS'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(33338700882103149)
,p_event_id=>wwv_flow_imp.id(33337784563103148)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(58813170371604248)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(33339257205103149)
,p_event_id=>wwv_flow_imp.id(33337784563103148)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(59247068478609846)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(33332102386103146)
,p_name=>'DA_CONFIRMAR_DATOS'
,p_event_sequence=>120
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(33313069912103135)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(33333136905103147)
,p_event_id=>wwv_flow_imp.id(33332102386103146)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>unistr('\00BFDesea confirmar los cambios?')
,p_attribute_02=>unistr('\00BFDesea confirmar los cambios?')
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(33332605057103146)
,p_event_id=>wwv_flow_imp.id(33332102386103146)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_01=>'CONFIRMAR'
,p_attribute_02=>'Y'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(33322302433103142)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_INIT'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'--PRE-FORM',
':P_COD_MODULO := ''CC'';',
'--:P167_COD_PERSONA := ''32252'';',
'--:P167_COD_CLIENTE := ''1001'';',
'',
'',
'--:P167_COD_PERSONA := ''229069'';',
'--:P167_COD_CLIENTE :=  ''166668'';',
'',
'',
'--:P167_COD_PERSONA := ''185052'';',
'--:P167_COD_CLIENTE := ''123682'';',
'',
'',
'',
'BSCOMP.pr_crear_collection (:P167_COD_PERSONA);',
'',
'',
'',
''))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(33322740545103142)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_CONFIRMAR_DATOS'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    BSCOMP.pr_confirmar_accion(:P167_COD_PERSONA, :P167_COD_CLIENTE);',
'',
'',
'    EXCEPTION',
'            WHEN OTHERS THEN',
'                APEX_DEBUG.ERROR(sqlerrm);',
'',
'',
'',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CONFIRMAR'
,p_process_when_type=>'REQUEST_EQUALS_CONDITION'
,p_process_success_message=>'Los datos se guardaron exitosamente.'
);
wwv_flow_imp.component_end;
end;
/
