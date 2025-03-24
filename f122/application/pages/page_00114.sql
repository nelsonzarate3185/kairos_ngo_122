prompt --application/pages/page_00114
begin
--   Manifest
--     PAGE: 00114
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
 p_id=>114
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'CCDOCBAL'
,p_alias=>'CCDOCBAL'
,p_step_title=>'CCDOCBAL'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_last_updated_by=>'OSCARGO'
,p_last_upd_yyyymmddhh24miss=>'20221129082521'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(25505678831501116)
,p_plug_name=>'Balance Clientes'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(25505867533501118)
,p_plug_name=>'REPORTE'
,p_parent_plug_id=>wwv_flow_imp.id(25505678831501116)
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
,p_ajax_items_to_submit=>'P114_COD_PERSONA'
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
 p_id=>wwv_flow_imp.id(25505987561501119)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_search_bar=>'N'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_enable_mail_download=>'Y'
,p_owner=>'EMILIANOP'
,p_internal_uid=>25505987561501119
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(25508658341501146)
,p_db_column_name=>'COD_DOCUMENTO'
,p_display_order=>10
,p_column_identifier=>'K'
,p_column_label=>'Cod.'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(25508771705501147)
,p_db_column_name=>'DESCRIPCION'
,p_display_order=>20
,p_column_identifier=>'L'
,p_column_label=>'Descripcion'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(25508811815501148)
,p_db_column_name=>'MONTO'
,p_display_order=>30
,p_column_identifier=>'M'
,p_column_label=>'Importe'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(25508991027501149)
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
 p_id=>wwv_flow_imp.id(25509018986501150)
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
 p_id=>wwv_flow_imp.id(25938296481506701)
,p_db_column_name=>'COD_USUARIO'
,p_display_order=>60
,p_column_identifier=>'P'
,p_column_label=>'Usuario'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(25938370691506702)
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
 p_id=>wwv_flow_imp.id(25938445748506703)
,p_db_column_name=>'P_ID'
,p_display_order=>80
,p_column_identifier=>'R'
,p_column_label=>'P Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(25938604226506705)
,p_db_column_name=>'DETALLE'
,p_display_order=>100
,p_column_identifier=>'T'
,p_column_label=>'Detalle'
,p_column_link=>'javascript:$s(''P114_SEQ_ID'',#P_ID#);'
,p_column_linktext=>'<span class="fa fa-search" aria-hidden="true"></span>'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(25939083186506709)
,p_db_column_name=>'COMENTARIO'
,p_display_order=>110
,p_column_identifier=>'U'
,p_column_label=>'Comentario'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(25940060560506719)
,p_db_column_name=>'EDITAR'
,p_display_order=>120
,p_column_identifier=>'V'
,p_column_label=>'Editar'
,p_column_link=>'javascript:$s(''P114_SEQ_ID_EDITAR'',#P_ID#);'
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
 p_id=>wwv_flow_imp.id(25940172783506720)
,p_db_column_name=>'ELIMINAR'
,p_display_order=>130
,p_column_identifier=>'W'
,p_column_label=>'Eliminar'
,p_column_link=>'javascript:$s(''P114_SEQ_ID_ELIMINAR'',#P_ID#);'
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
 p_id=>wwv_flow_imp.id(25840593101719081)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'258406'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'COD_DOCUMENTO:DESCRIPCION:MONTO:FEC_ALTA:FECHA_VENCIMIENTO:COD_USUARIO:FECHA_INICIO:DETALLE:EDITAR:ELIMINAR:'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(25506116373501121)
,p_plug_name=>unistr('Observaci\00F3n:')
,p_parent_plug_id=>wwv_flow_imp.id(25505867533501118)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(25939765640506716)
,p_plug_name=>'Agregar/Editar Balance'
,p_region_template_options=>'#DEFAULT#:js-dialog-autoheight:js-dialog-size720x480'
,p_plug_template=>wwv_flow_imp.id(40117728043263659)
,p_plug_display_sequence=>60
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(38034070630336005)
,p_plug_name=>'VARIABLES AUXILIARES'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>70
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(25506379533501123)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(25505678831501116)
,p_button_name=>'P114_BOTON_INICIO'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Inicio'
,p_button_position=>'BOTTOM'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(25941073358506729)
,p_button_sequence=>160
,p_button_plug_id=>wwv_flow_imp.id(25939765640506716)
,p_button_name=>'P114_CANCELAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_image_alt=>'Cancelar'
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(25940904561506728)
,p_button_sequence=>140
,p_button_plug_id=>wwv_flow_imp.id(25939765640506716)
,p_button_name=>'P114_ACEPTAR_CREAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Aceptar3'
,p_button_position=>'CREATE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(26545846225930220)
,p_button_sequence=>150
,p_button_plug_id=>wwv_flow_imp.id(25939765640506716)
,p_button_name=>'P114_ACEPTAR_EDITAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Aceptar'
,p_button_position=>'CREATE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(25939129877506710)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_imp.id(25505867533501118)
,p_button_name=>'P114_AGREGAR'
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
 p_id=>wwv_flow_imp.id(27061516158431921)
,p_button_sequence=>90
,p_button_plug_id=>wwv_flow_imp.id(25505678831501116)
,p_button_name=>'P114_BOTON_CONFIRMAR'
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
 p_id=>wwv_flow_imp.id(25505525437501115)
,p_name=>'P114_COD_PERSONA'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(25505678831501116)
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
 p_id=>wwv_flow_imp.id(25505764674501117)
,p_name=>'P114_COD_CLIENTE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(25505678831501116)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(25506298314501122)
,p_name=>'P114_COMENTARIOS'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(25506116373501121)
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
 p_id=>wwv_flow_imp.id(25938791923506706)
,p_name=>'P114_SEQ_ID'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(25506116373501121)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(25940286637506721)
,p_name=>'P114_COD_DOC'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(25939765640506716)
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
 p_id=>wwv_flow_imp.id(25940306545506722)
,p_name=>'P114_DESCRIPCION'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(25939765640506716)
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
 p_id=>wwv_flow_imp.id(25940489833506723)
,p_name=>'P114_FEC_ALTA'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(25939765640506716)
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
 p_id=>wwv_flow_imp.id(25940550534506724)
,p_name=>'P114_MONTO'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(25939765640506716)
,p_prompt=>'Monto'
,p_format_mask=>'999G999G999G999G999G999G990'
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
 p_id=>wwv_flow_imp.id(25940611722506725)
,p_name=>'P114_FECHA_INICIO'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(25939765640506716)
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
 p_id=>wwv_flow_imp.id(25940720126506726)
,p_name=>'P114_FECHA_VENCIMIENTO'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(25939765640506716)
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
 p_id=>wwv_flow_imp.id(25940852630506727)
,p_name=>'P114_COD_USUARIO'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(25939765640506716)
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
 p_id=>wwv_flow_imp.id(25941397752506732)
,p_name=>'P114_AGREGAR_COMENTARIOS'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(25939765640506716)
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
 p_id=>wwv_flow_imp.id(26544684064930208)
,p_name=>'P114_SEQ_ID_ELIMINAR'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(25506116373501121)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(26544992860930211)
,p_name=>'P114_SEQ_ID_EDITAR'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(25506116373501121)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(27064172183431947)
,p_name=>'P114_VALIDACION_ITEMS_NO_VACIOS'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(25939765640506716)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(38034184233336006)
,p_name=>'P114_ALERT'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(38034070630336005)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(25938844325506707)
,p_name=>'DA_CAMBIAR_COMENTARIO'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P114_SEQ_ID'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(25938947402506708)
,p_event_id=>wwv_flow_imp.id(25938844325506707)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'        SELECT c005 OBSERVACION ',
'        INTO :P114_COMENTARIOS',
'        FROM apex_collections',
'        WHERE collection_name = ''PERSONA_BALANCE''',
'        AND   SEQ_ID = :P114_SEQ_ID;',
'',
'END;'))
,p_attribute_02=>'P114_SEQ_ID'
,p_attribute_03=>'P114_COMENTARIOS'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(25939811288506717)
,p_name=>'DA_ABRIR_GUARDAR'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(25939129877506710)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(26546462206930226)
,p_event_id=>wwv_flow_imp.id(25939811288506717)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(25940904561506728)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(26546582777930227)
,p_event_id=>wwv_flow_imp.id(25939811288506717)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(26545846225930220)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(25939990849506718)
,p_event_id=>wwv_flow_imp.id(25939811288506717)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(25939765640506716)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(25942559655506744)
,p_event_id=>wwv_flow_imp.id(25939811288506717)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P114_COD_DOC,P114_DESCRIPCION,P114_MONTO,P114_FECHA_INICIO,P114_FECHA_VENCIMIENTO,P114_AGREGAR_COMENTARIOS'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(25941135545506730)
,p_name=>'DA_REGRESAR'
,p_event_sequence=>30
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(25941073358506729)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(25941294117506731)
,p_event_id=>wwv_flow_imp.id(25941135545506730)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(25939765640506716)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(25941417885506733)
,p_name=>'DA_GUARDAR_MIEMBRO_COLECCION'
,p_event_sequence=>40
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(25940904561506728)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(25941561152506734)
,p_event_id=>wwv_flow_imp.id(25941417885506733)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'IF (:P114_COD_DOC IS NULL OR :P114_MONTO IS NULL OR :P114_FECHA_INICIO IS NULL OR :P114_FECHA_VENCIMIENTO IS NULL) THEN',
'    :P114_ALERT := 1;',
'ELSE',
'    IF :P114_ALERT = 2 THEN',
'        :P114_ALERT := 2;',
'    ELSE',
'        :P114_ALERT := 0;',
'        CCDOCBAL.pr_agregar_miembro_collection (:P114_COD_DOC,',
'                                                :P114_DESCRIPCION,',
'                                                :P114_MONTO,',
'                                                :P114_FECHA_INICIO,',
'                                                :P114_FECHA_VENCIMIENTO,',
'                                                :P114_FEC_ALTA,',
'                                                :P114_COD_USUARIO,',
'                                                :P114_AGREGAR_COMENTARIOS);',
'    END IF;',
'END IF;                                          ',
'',
'EXCEPTION',
'',
'    WHEN OTHERS THEN',
'        apex_debug.error(sqlerrm);',
'',
'END;',
''))
,p_attribute_02=>'P114_COD_DOC,P114_DESCRIPCION,P114_MONTO,P114_FECHA_INICIO,P114_FECHA_VENCIMIENTO,P114_FEC_ALTA,P114_COD_USUARIO,P114_AGREGAR_COMENTARIOS,P114_ALERT'
,p_attribute_03=>'P114_ALERT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(38034232818336007)
,p_event_id=>wwv_flow_imp.id(25941417885506733)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'Compruebe que los campos requeridos tengan un valor.'
,p_attribute_02=>'Compruebe los campos'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P114_ALERT'
,p_client_condition_expression=>'1'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(38034312129336008)
,p_event_id=>wwv_flow_imp.id(25941417885506733)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    IF (to_date(:P114_FECHA_INICIO, ''dd/mm/yyyy'') > to_date(:P114_FECHA_VENCIMIENTO, ''dd/mm/yyyy'')) THEN',
'        :P114_ALERT := 2;',
'    ELSE',
'        IF :P114_ALERT = 1 THEN',
'            :P114_ALERT := 1;',
'        ELSE',
'            :P114_ALERT := 0;',
'            CCDOCBAL.pr_agregar_miembro_collection (:P114_COD_DOC,',
'                                                :P114_DESCRIPCION,',
'                                                :P114_MONTO,',
'                                                :P114_FECHA_INICIO,',
'                                                :P114_FECHA_VENCIMIENTO,',
'                                                :P114_FEC_ALTA,',
'                                                :P114_COD_USUARIO,',
'                                                :P114_AGREGAR_COMENTARIOS);',
'        END IF;',
'    END IF;',
'',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;'))
,p_attribute_02=>'P114_ALERT,P114_FECHA_INICIO,P114_FECHA_VENCIMIENTO'
,p_attribute_03=>'P114_ALERT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(38034956154336014)
,p_event_id=>wwv_flow_imp.id(25941417885506733)
,p_event_result=>'TRUE'
,p_action_sequence=>110
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'La fecha inicial no puede ser mayor a la fecha de vencimiento.'
,p_attribute_02=>'Comprobar fechas'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P114_ALERT'
,p_client_condition_expression=>'2'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(38035020351336015)
,p_event_id=>wwv_flow_imp.id(25941417885506733)
,p_event_result=>'TRUE'
,p_action_sequence=>120
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(25939765640506716)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P114_ALERT'
,p_client_condition_expression=>'0'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(38035134413336016)
,p_event_id=>wwv_flow_imp.id(25941417885506733)
,p_event_result=>'TRUE'
,p_action_sequence=>130
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(25505867533501118)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P114_ALERT'
,p_client_condition_expression=>'0'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(25941793142506736)
,p_name=>'DA_CAMBIAR_DESCRIPCION'
,p_event_sequence=>50
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P114_COD_DOC'
,p_condition_element=>'P114_COD_DOC'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(25941838369506737)
,p_event_id=>wwv_flow_imp.id(25941793142506736)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'SELECT  descripcion INTO :P114_DESCRIPCION',
'from CC_DOCUMENTOS_BALANCE',
'WHERE COD_DOCUMENTO = :P114_COD_DOC;',
'',
'',
'EXCEPTION',
'',
'    WHEN OTHERS THEN',
'        apex_debug.error(sqlerrm);',
'',
'END;'))
,p_attribute_02=>'P114_COD_DOC'
,p_attribute_03=>'P114_DESCRIPCION'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(26544701548930209)
,p_name=>'DA_ELIMINAR_MIEMBRO'
,p_event_sequence=>80
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P114_SEQ_ID_ELIMINAR'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(26544417572930206)
,p_event_id=>wwv_flow_imp.id(26544701548930209)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>unistr('\00BFDesea eliminar?')
,p_attribute_02=>unistr('\00BFDesea Eliminar?')
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(26544576420930207)
,p_event_id=>wwv_flow_imp.id(26544701548930209)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'CCDOCBAL.pr_borrar_miembro_collection(:P114_SEQ_ID_ELIMINAR,',
'                                    :P114_COD_DOC,',
'                                    :P114_DESCRIPCION,',
'                                    :P114_MONTO,',
'                                    :P114_FECHA_INICIO,',
'                                    :P114_FECHA_VENCIMIENTO,',
'                                    :P114_FEC_ALTA,',
'                                    :P114_COD_USUARIO,',
'                                    :P114_AGREGAR_COMENTARIOS);',
'',
'EXCEPTION',
'',
'    WHEN OTHERS THEN',
'',
'        apex_debug.ERROR(sqlerrm);',
'',
'END;'))
,p_attribute_02=>'P114_SEQ_ID_ELIMINAR,P114_COD_DOC,P114_DESCRIPCION,P114_MONTO,P114_FECHA_INICIO,P114_FECHA_VENCIMIENTO,P114_FEC_ALTA,P114_COD_USUARIO,P114_AGREGAR_COMENTARIOS'
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
 p_id=>wwv_flow_imp.id(27061686566431922)
,p_event_id=>wwv_flow_imp.id(26544701548930209)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P114_COMENTARIOS'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(26545288345930214)
,p_event_id=>wwv_flow_imp.id(26544701548930209)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(25505867533501118)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(26545041872930212)
,p_name=>'DA_EDITAR_MIEMBRO'
,p_event_sequence=>90
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P114_SEQ_ID_EDITAR'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(26545429074930216)
,p_event_id=>wwv_flow_imp.id(26545041872930212)
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
'    INTO    :P114_COD_DOC, ',
'            :P114_MONTO,',
'            :P114_FECHA_INICIO,',
'            :P114_FECHA_VENCIMIENTO,',
'            :P114_COD_USUARIO,',
'            :P114_FEC_ALTA,            ',
'            :P114_AGREGAR_COMENTARIOS',
'    FROM APEX_COLLECTIONS',
'    WHERE COLLECTION_NAME = ''PERSONA_BALANCE''',
'    AND SEQ_ID = :P114_SEQ_ID_EDITAR;',
'',
'    :P114_COD_USUARIO := :APP_USER;',
'    :P114_FEC_ALTA := sysdate;',
'',
'',
'EXCEPTION',
'        when others then',
'',
'            raise_application_error(-20000, ''Ha ocurrido un error en la carga de datos'');',
'',
'END;'))
,p_attribute_02=>'P114_SEQ_ID_EDITAR'
,p_attribute_03=>'P114_COD_DOC,P114_MONTO,P114_FECHA_INICIO,P114_FECHA_VENCIMIENTO,P114_FEC_ALTA,P114_COD_USUARIO,P114_AGREGAR_COMENTARIOS'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(26546623664930228)
,p_event_id=>wwv_flow_imp.id(26545041872930212)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(26545846225930220)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(26546786202930229)
,p_event_id=>wwv_flow_imp.id(26545041872930212)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(25940904561506728)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(25942985474506748)
,p_event_id=>wwv_flow_imp.id(26545041872930212)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(25939765640506716)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(26546086074930222)
,p_name=>'DA_OCULTAR_BOTON_GUARDAR_EDITAR'
,p_event_sequence=>100
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(26546108267930223)
,p_event_id=>wwv_flow_imp.id(26546086074930222)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(25940904561506728)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(26546226571930224)
,p_event_id=>wwv_flow_imp.id(26546086074930222)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(26545846225930220)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(26547025178930232)
,p_name=>'DA_GUARDAR_CAMBIOS_EDICION'
,p_event_sequence=>110
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(26545846225930220)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(26545706148930219)
,p_event_id=>wwv_flow_imp.id(26547025178930232)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'IF (:P114_COD_DOC IS NULL OR :P114_MONTO IS NULL OR :P114_FECHA_INICIO IS NULL OR :P114_FECHA_VENCIMIENTO IS NULL) THEN',
'    :P114_ALERT := 1;',
'ELSE',
'    IF :P114_ALERT = 2 THEN',
'        :P114_ALERT := 2;',
'    ELSE',
'        :P114_ALERT := 0;',
'        ccdocbal.pr_modificar_miembro (:P114_SEQ_ID_EDITAR,',
'                                    :P114_COD_DOC,',
'                                    :P114_DESCRIPCION,',
'                                    :P114_MONTO,',
'                                    :P114_FECHA_INICIO,',
'                                    :P114_FECHA_VENCIMIENTO,',
'                                    :P114_FEC_ALTA,',
'                                    :P114_COD_USUARIO,',
'                                    :P114_AGREGAR_COMENTARIOS);',
'    END IF;',
'END IF;                                          ',
'',
'EXCEPTION',
'',
'    WHEN OTHERS THEN',
'        apex_debug.error(sqlerrm);',
'',
'END;',
''))
,p_attribute_02=>'P114_SEQ_ID_EDITAR,P114_COD_DOC,P114_DESCRIPCION,P114_MONTO,P114_FECHA_INICIO,P114_FECHA_VENCIMIENTO,P114_FEC_ALTA,P114_COD_USUARIO,P114_AGREGAR_COMENTARIOS,P114_ALERT'
,p_attribute_03=>'P114_AGREGAR_COMENTARIOS,P114_ALERT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(38034623309336011)
,p_event_id=>wwv_flow_imp.id(26547025178930232)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'Compruebe que los campos requeridos tengan un valor.'
,p_attribute_02=>'Compruebe los campos'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P114_ALERT'
,p_client_condition_expression=>'1'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(38034733536336012)
,p_event_id=>wwv_flow_imp.id(26547025178930232)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    IF (to_date(:P114_FECHA_INICIO, ''dd/mm/yyyy'') > to_date(:P114_FECHA_VENCIMIENTO, ''dd/mm/yyyy'')) THEN',
'        :P114_ALERT := 2;',
'    ELSE',
'        IF :P114_ALERT = 1 THEN',
'            :P114_ALERT := 1;',
'        ELSE',
'            :P114_ALERT := 0;',
'            ccdocbal.pr_modificar_miembro (:P114_SEQ_ID_EDITAR,',
'                                    :P114_COD_DOC,',
'                                    :P114_DESCRIPCION,',
'                                    :P114_MONTO,',
'                                    :P114_FECHA_INICIO,',
'                                    :P114_FECHA_VENCIMIENTO,',
'                                    :P114_FEC_ALTA,',
'                                    :P114_COD_USUARIO,',
'                                    :P114_AGREGAR_COMENTARIOS);',
'        END IF;',
'    END IF;',
'',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;'))
,p_attribute_02=>'P114_ALERT,P114_FECHA_INICIO,P114_FECHA_VENCIMIENTO'
,p_attribute_03=>'P114_ALERT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(38034881485336013)
,p_event_id=>wwv_flow_imp.id(26547025178930232)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'La fecha inicial no puede ser mayor a la fecha de vencimiento.'
,p_attribute_02=>'Comprobar fechas'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P114_ALERT'
,p_client_condition_expression=>'2'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(26546985610930231)
,p_event_id=>wwv_flow_imp.id(26547025178930232)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(25939765640506716)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P114_ALERT'
,p_client_condition_expression=>'0'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(26546856743930230)
,p_event_id=>wwv_flow_imp.id(26547025178930232)
,p_event_result=>'TRUE'
,p_action_sequence=>90
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(25505867533501118)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P114_ALERT'
,p_client_condition_expression=>'0'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(27061887795431924)
,p_name=>'DA_CONFIRMAR_DATOS'
,p_event_sequence=>120
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(27061516158431921)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(27062053832431926)
,p_event_id=>wwv_flow_imp.id(27061887795431924)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>unistr('\00BFDesea confirmar los cambios?')
,p_attribute_02=>unistr('\00BFDesea confirmar los cambios?')
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(27061966860431925)
,p_event_id=>wwv_flow_imp.id(27061887795431924)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_01=>'CONFIRMAR'
,p_attribute_02=>'Y'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(25506444106501124)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_INIT'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'--PRE-FORM',
':P_COD_MODULO := ''CC'';',
'--:P114_COD_PERSONA := ''32252'';',
'--:P114_COD_CLIENTE := ''1001'';',
'',
'',
'--:P114_COD_PERSONA := ''229069'';',
'--:P114_COD_CLIENTE :=  ''166668'';',
'',
'',
'--:P114_COD_PERSONA := ''185052'';',
'--:P114_COD_CLIENTE := ''123682'';',
'',
'',
'',
'CCDOCBAL.pr_crear_collection (:P114_COD_PERSONA);',
'',
'',
'',
''))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(27062379858431929)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_CONFIRMAR_DATOS'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    CCDOCBAL.pr_confirmar_accion(:P114_COD_PERSONA, :P114_COD_CLIENTE);',
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
