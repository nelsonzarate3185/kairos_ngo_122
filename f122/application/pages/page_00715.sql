prompt --application/pages/page_00715
begin
--   Manifest
--     PAGE: 00715
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
 p_id=>715
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'Contrato de Canjes'
,p_alias=>'CONTRATO-DE-CANJES'
,p_step_title=>'Contrato de Canjes'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function validateNumber(event) {',
'  var keyCode = event.keyCode;',
unistr('  var excludedKeys = [8, 37, 39, 46];//Teclas extra que queremos que el campo acepte aparte de los n\00FAmeros, como el backspace'),
unistr('//Realizamos la validaci\00F3n de la tecla ingresada'),
'  if (!((keyCode >= 48 && keyCode <= 57) ||',
'      (keyCode >= 96 && keyCode <= 105) ||',
'      (excludedKeys.includes(keyCode)))) {',
'    event.preventDefault();',
'',
'  }',
'}'))
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.ui-dialog{',
'    width: 1000px !important;',
'    }'))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_last_updated_by=>'INV'
,p_last_upd_yyyymmddhh24miss=>'20240113174630'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(326826373964712553)
,p_plug_name=>'Contratos de MKT'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>990
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(326826498491712554)
,p_plug_name=>'COLEC_CP_ACUERDOS_COMERCIALES'
,p_parent_plug_id=>wwv_flow_imp.id(326826373964712553)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT seq_id SEQ_ID,',
'       c001 COD_EMPRESA,',
'       c002 NRO_CONTRATO,',
'       c003 COD_CLIENTE,',
'       c004 FEC_INICIAL,',
'       c005 FEC_FINAL,',
'       TO_NUMBER(c006) PORCENTAJE,',
'       TO_NUMBER(c007) MONTO,',
'       c008 CREADO_POR,',
'       c009 FECHA_CREACION,',
'       c010 VERIFICADO_POR,',
'       c011 FECHA_VERIFICADO,',
'       c012 AUTORIZADO_POR,',
'       c013 FECHA_AUTORIZADO,',
'       c014 COD_MONEDA,',
'       c015 REFERENCIA,',
'       c016 ESTADO,',
'       c017 FECHA_ANULACION,',
'       c018 ANULADO_POR,',
'       c019 CONTROL,',
'       c020 ROW_ID,',
'       c021 DESC_MONEDA,',
'       c022 DESC_CLIENTE,',
'       NULL EDITAR,',
'       NULL BORRAR,',
'       (select sum(tot_comprobante) from vt_pedidos_cabecera c where c.cod_empresa=:p_cod_empresa and c.cod_cliente=c003 and c.nro_acuerdo=c002) ejecutado,',
'      TO_NUMBER(c007)-  (select sum(tot_comprobante) from vt_pedidos_cabecera c where c.cod_empresa=:p_cod_empresa and c.cod_cliente=c003 and c.nro_acuerdo=c002) disponible',
'  FROM APEX_COLLECTIONS',
' WHERE COLLECTION_NAME = ''COLEC_CP_ACUERDOS_COMERCIALES''',
'   AND (c019 = ''U'' OR c019 = ''I'' OR c019 IS NULL)',
'ORDER BY TO_NUMBER(c002) DESC'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'COLEC_CP_ACUERDOS_COMERCIALES'
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
 p_id=>wwv_flow_imp.id(326826861396712558)
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
,p_internal_uid=>326826861396712558
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(255841643874931948)
,p_db_column_name=>'SEQ_ID'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Seq Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(255842011924931948)
,p_db_column_name=>'COD_EMPRESA'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Cod Empresa'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(255842455257931948)
,p_db_column_name=>'NRO_CONTRATO'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Nro. Acuerdo'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(255842882219931948)
,p_db_column_name=>'COD_CLIENTE'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Cod Cliente'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(255843231652931949)
,p_db_column_name=>'FEC_INICIAL'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Fecha Inicial'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(255843624454931949)
,p_db_column_name=>'FEC_FINAL'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Fecha Final'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(255844073519931949)
,p_db_column_name=>'CREADO_POR'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Creado Por'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(255844495009931949)
,p_db_column_name=>'FECHA_CREACION'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>unistr('Fecha Creaci\00F3n')
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(255844872383931949)
,p_db_column_name=>'VERIFICADO_POR'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Verificado Por'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(255845250372931949)
,p_db_column_name=>'FECHA_VERIFICADO'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Fecha Verificado'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(255845611008931949)
,p_db_column_name=>'AUTORIZADO_POR'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Autorizado Por'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(255846071441931950)
,p_db_column_name=>'FECHA_AUTORIZADO'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>'Fecha Autorizado'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(255846463705931950)
,p_db_column_name=>'COD_MONEDA'
,p_display_order=>150
,p_column_identifier=>'O'
,p_column_label=>'Cod Moneda'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(255846840972931950)
,p_db_column_name=>'REFERENCIA'
,p_display_order=>160
,p_column_identifier=>'P'
,p_column_label=>unistr('Observaci\00F3n')
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(255847252374931950)
,p_db_column_name=>'ESTADO'
,p_display_order=>170
,p_column_identifier=>'Q'
,p_column_label=>'Estado'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(255847666433931950)
,p_db_column_name=>'FECHA_ANULACION'
,p_display_order=>180
,p_column_identifier=>'R'
,p_column_label=>'Fecha Anulacion'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(255848099466931950)
,p_db_column_name=>'ANULADO_POR'
,p_display_order=>190
,p_column_identifier=>'S'
,p_column_label=>'Anulado Por'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(255848409741931951)
,p_db_column_name=>'CONTROL'
,p_display_order=>200
,p_column_identifier=>'T'
,p_column_label=>'Control'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(255848883064931951)
,p_db_column_name=>'ROW_ID'
,p_display_order=>210
,p_column_identifier=>'U'
,p_column_label=>'Row Id'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(255849284848931951)
,p_db_column_name=>'EDITAR'
,p_display_order=>220
,p_column_identifier=>'V'
,p_column_label=>'Editar'
,p_column_link=>'javascript:$s(''P715_EDIT_DATA'',''#SEQ_ID#'');'
,p_column_linktext=>'<span aria-label="Edit"><span class="fa fa-edit" aria-hidden="true" title="Edit"></span></span>'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
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
 p_id=>wwv_flow_imp.id(255849657212931951)
,p_db_column_name=>'BORRAR'
,p_display_order=>230
,p_column_identifier=>'W'
,p_column_label=>'Borrar'
,p_column_link=>'javascript:$s(''P715_DELETE_DATA'',''#SEQ_ID#'');'
,p_column_linktext=>'<span class="fa fa-trash-o">'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
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
 p_id=>wwv_flow_imp.id(255850047160931951)
,p_db_column_name=>'DESC_MONEDA'
,p_display_order=>240
,p_column_identifier=>'X'
,p_column_label=>'Moneda'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(255850456341931951)
,p_db_column_name=>'DESC_CLIENTE'
,p_display_order=>250
,p_column_identifier=>'Y'
,p_column_label=>'Cliente'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(255850855573931952)
,p_db_column_name=>'PORCENTAJE'
,p_display_order=>260
,p_column_identifier=>'Z'
,p_column_label=>'Porcentaje'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(255851250655931952)
,p_db_column_name=>'MONTO'
,p_display_order=>270
,p_column_identifier=>'AA'
,p_column_label=>'Monto'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_format_mask=>'999G999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(131645539988697338)
,p_db_column_name=>'EJECUTADO'
,p_display_order=>280
,p_column_identifier=>'AB'
,p_column_label=>'Ejecutado'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(131645644903697339)
,p_db_column_name=>'DISPONIBLE'
,p_display_order=>290
,p_column_identifier=>'AC'
,p_column_label=>'Disponible'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(328446934362788178)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'726082'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'NRO_CONTRATO:DESC_MONEDA:DESC_CLIENTE:FEC_INICIAL:FEC_FINAL:MONTO:EJECUTADO:DISPONIBLE:ESTADO:REFERENCIA:CREADO_POR:FECHA_CREACION:VERIFICADO_POR:FECHA_VERIFICADO:AUTORIZADO_POR:FECHA_AUTORIZADO:ANULADO_POR:FECHA_ANULACION:EDITAR:BORRAR:'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(326829771394712587)
,p_plug_name=>'Agregar/Editar Registro'
,p_region_template_options=>'#DEFAULT#:js-dialog-autoheight:js-dialog-size600x400'
,p_plug_template=>wwv_flow_imp.id(40117728043263659)
,p_plug_display_sequence=>1000
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(255853023532931953)
,p_button_sequence=>90
,p_button_plug_id=>wwv_flow_imp.id(326829771394712587)
,p_button_name=>'BTAGREGAR_EDITAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Agregar/Editar Registro'
,p_button_position=>'BELOW_BOX'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(255840188934931945)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(326826373964712553)
,p_button_name=>'BTCREAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Crear'
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
 p_id=>wwv_flow_imp.id(255839709099931945)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(326826373964712553)
,p_button_name=>'BTGUARDAR_CAMBIOS'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Guardar Cambios'
,p_button_position=>'COPY'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(255840542877931946)
,p_name=>'P715_COD_MODULO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(326826373964712553)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(255840963409931946)
,p_name=>'P715_CONTROL'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(326826373964712553)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(255851983425931953)
,p_name=>'P715_EDIT_DATA'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(326826498491712554)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(255852379325931953)
,p_name=>'P715_DELETE_DATA'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(326826498491712554)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(255853416513931953)
,p_name=>'P715_NRO_CONTRATO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(326829771394712587)
,p_prompt=>'Nro. Acuerdo'
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
 p_id=>wwv_flow_imp.id(255853885701931954)
,p_name=>'P715_COD_MONEDA'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(326829771394712587)
,p_prompt=>'Moneda'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'LV_MONEDAS_FVMRGPRM'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select cod_moneda, ',
'       descripcion ',
'  from monedas ',
'order by descripcion'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(255854203689931954)
,p_name=>'P715_COD_CLIENTE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(326829771394712587)
,p_prompt=>'Cliente'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_CLIENTES_CPACUECO'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ltrim( rtrim( nvl( p.nombre, p.nomb_fantasia ) ) ) nombre, ',
'       pr.cod_cliente ',
'  from personas p,',
'       cc_clientes pr ',
' where pr.cod_empresa = :P_COD_EMPRESA',
'   and pr.cod_persona = p.cod_persona ',
'order by 1'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'Y'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(255854655116931954)
,p_name=>'P715_FEC_INICIAL'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(326829771394712587)
,p_prompt=>'Fecha Inicial'
,p_display_as=>'NATIVE_DATE_PICKER_JET'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'POPUP'
,p_attribute_03=>'NONE'
,p_attribute_06=>'NONE'
,p_attribute_09=>'N'
,p_attribute_11=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(255855051248931954)
,p_name=>'P715_FEC_FINAL'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(326829771394712587)
,p_prompt=>'Fecha Final'
,p_display_as=>'NATIVE_DATE_PICKER_JET'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'POPUP'
,p_attribute_03=>'NONE'
,p_attribute_06=>'NONE'
,p_attribute_09=>'N'
,p_attribute_11=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(255855460916931954)
,p_name=>'P715_PORCENTAJE'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(326829771394712587)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(255855829114931954)
,p_name=>'P715_MONTO'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(326829771394712587)
,p_prompt=>'Monto'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(255856236371931954)
,p_name=>'P715_ESTADO'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(326829771394712587)
,p_prompt=>'Estado'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:AUTORIZADO;AUTORIZADO,VERIFICADO;VERIFICADO,PENDIENTE;PENDIENTE,ANULADO;ANULADO'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(255856662489931955)
,p_name=>'P715_OBSERVACION'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(326829771394712587)
,p_prompt=>unistr('Observaci\00F3n')
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
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(255869246272931961)
,p_name=>'DA_ABRIR_MODAL'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(255840188934931945)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(255869728286931961)
,p_event_id=>wwv_flow_imp.id(255869246272931961)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P715_NRO_CONTRATO,P715_COD_MONEDA,P715_COD_CLIENTE,P715_FEC_INICIAL,P715_FEC_FINAL,P715_PORCENTAJE,P715_MONTO,P715_ESTADO,P715_OBSERVACION,P715_EDIT_DATA'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(255870234845931962)
,p_event_id=>wwv_flow_imp.id(255869246272931961)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    SELECT NVL(MAX(TO_NUMBER(c002)),0) + 1',
'      INTO :P715_NRO_CONTRATO',
'      FROM APEX_COLLECTIONS',
'     WHERE COLLECTION_NAME = ''COLEC_CP_ACUERDOS_COMERCIALES'';',
'',
'    :P715_ESTADO := ''PENDIENTE'';',
'EXCEPTION',
'    WHEN OTHERS THEN',
'    APEX_DEBUG.ERROR(''DA_ABRIR_MODAL ''||SQLERRM);',
'END;'))
,p_attribute_03=>'P715_NRO_CONTRATO,P715_ESTADO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(255870776863931962)
,p_event_id=>wwv_flow_imp.id(255869246272931961)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(326829771394712587)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(255871104841931962)
,p_name=>'DA_SOLO_NUMEROS'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P715_PORCENTAJE,P715_MONTO'
,p_bind_type=>'bind'
,p_bind_event_type=>'keypress'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(255871674043931962)
,p_event_id=>wwv_flow_imp.id(255871104841931962)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'validateNumber(event);'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(255858552717931956)
,p_name=>'DA_AGREGAR_EDITAR_REG'
,p_event_sequence=>30
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(255853023532931953)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(255862592983931959)
,p_event_id=>wwv_flow_imp.id(255858552717931956)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_02=>'P715_NRO_CONTRATO,P715_COD_MONEDA,P715_COD_CLIENTE,P715_FEC_INICIAL,P715_FEC_FINAL,P715_PORCENTAJE,P715_MONTO,P715_ESTADO,P715_OBSERVACION,P715_CONTROL'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(255863082242931959)
,p_event_id=>wwv_flow_imp.id(255858552717931956)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'VEXCEP1 EXCEPTION;',
'VEXCEP2 EXCEPTION;',
'VEXCEP3 EXCEPTION;',
'VEXCEP4 EXCEPTION;',
'BEGIN',
'    ',
'    CASE',
'        WHEN :P715_COD_MONEDA IS NULL THEN RAISE VEXCEP1;',
'        WHEN :P715_COD_CLIENTE IS NULL THEN RAISE VEXCEP2;',
'        WHEN :P715_MONTO IS NULL OR :P715_MONTO = 0 THEN RAISE VEXCEP3;',
'        WHEN TO_DATE(:P715_FEC_INICIAL,''DD/MM/YYYY'') > TO_DATE(:P715_FEC_FINAL,''DD/MM/YYYY'') THEN RAISE VEXCEP4;',
'        ELSE :P715_CONTROL := 0;',
'    END CASE;',
'    ',
'    IF :P715_CONTROL = 0 THEN',
'        CPACUEMKT.ADD_COL(pcod_empresa   => :P_COD_EMPRESA,',
'                         pcod_moneda    => :P715_COD_MONEDA,',
'                         pcod_cliente   => :P715_COD_CLIENTE,',
'                         pfecha_inicial => :P715_FEC_INICIAL,',
'                         pfecha_final   => :P715_FEC_FINAL,',
'                         pporcentaje    => :P715_PORCENTAJE,',
'                         pmonto         => :P715_MONTO,',
'                         preferencia    => :P715_OBSERVACION,',
'                         pestado        => :P715_ESTADO,',
'                         pcod_usuario   => :P_COD_USUARIO,',
'                         pnro_contrato  => :P715_NRO_CONTRATO);',
'    END IF;',
'',
'EXCEPTION',
'    WHEN VEXCEP1 THEN',
'    :P715_CONTROL := 1;',
'    WHEN VEXCEP2 THEN',
'    :P715_CONTROL := 2;',
'    WHEN VEXCEP3 THEN',
'    :P715_CONTROL := 3;',
'    WHEN VEXCEP4 THEN',
'    :P715_CONTROL := 4;',
'    WHEN OTHERS THEN',
'    APEX_DEBUG.ERROR(''DA_AGREGAR_EDITAR_REG ADD_COL ''||SQLERRM);',
'END;'))
,p_attribute_02=>'P_COD_EMPRESA,P715_NRO_CONTRATO,P715_COD_MONEDA,P715_COD_CLIENTE,P715_FEC_INICIAL,P715_FEC_FINAL,P715_PORCENTAJE,P715_MONTO,P715_ESTADO,P715_OBSERVACION'
,p_attribute_03=>'P715_CONTROL'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P715_EDIT_DATA'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(255859071706931957)
,p_event_id=>wwv_flow_imp.id(255858552717931956)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'VFEC_VER VARCHAR2(100);',
'VFEC_AUT VARCHAR2(100);',
'BEGIN  ',
'    BEGIN',
'        SELECT c011,',
'               c013',
'          INTO VFEC_VER,',
'               VFEC_AUT',
'          FROM APEX_COLLECTIONS',
'         WHERE COLLECTION_NAME = ''COLEC_CP_ACUERDOS_COMERCIALES''',
'           AND seq_id = :P715_EDIT_DATA;',
'    EXCEPTION',
'        WHEN NO_DATA_FOUND THEN',
'        VFEC_VER := NULL;',
'        VFEC_AUT := NULL;',
'    END;',
'',
'',
'    CASE',
'        WHEN :P715_COD_MONEDA IS NULL THEN :P715_CONTROL := 1;',
'        WHEN :P715_COD_CLIENTE IS NULL THEN :P715_CONTROL := 2;',
'        WHEN :P715_MONTO IS NULL OR :P715_MONTO = 0 THEN :P715_CONTROL := 3;',
'        WHEN TO_DATE(:P715_FEC_INICIAL,''DD/MM/YYYY'') > TO_DATE(:P715_FEC_FINAL,''DD/MM/YYYY'') THEN :P715_CONTROL := 4;',
'        WHEN VFEC_VER IS NULL AND VFEC_AUT IS NOT NULL THEN :P715_CONTROL := 5;',
'        WHEN CPACUEMKT.VALIDAR_CAMBIOS_ESTADO(pcod_empresa => :P_COD_EMPRESA,',
'                                             pcod_usuario => :P_COD_USUARIO,',
'                                             pseq_id      => :P715_EDIT_DATA,',
'                                             pestado      => :P715_ESTADO) IN(1,2) THEN :P715_CONTROL := 6;',
'        WHEN CPACUEMKT.VALIDAR_CAMBIOS_ESTADO(pcod_empresa => :P_COD_EMPRESA,',
'                                             pcod_usuario => :P_COD_USUARIO,',
'                                             pseq_id      => :P715_EDIT_DATA,',
'                                             pestado      => :P715_ESTADO) = 3 THEN :P715_CONTROL := 7; ',
'        WHEN CPACUEMKT.VALIDAR_CAMBIOS_ESTADO(pcod_empresa => :P_COD_EMPRESA,',
'                                             pcod_usuario => :P_COD_USUARIO,',
'                                             pseq_id      => :P715_EDIT_DATA,',
'                                             pestado      => :P715_ESTADO) = 4 THEN :P715_CONTROL := 8;                                                                          ',
'        ELSE :P715_CONTROL := 0;',
'    END CASE;',
'',
'    IF :P715_CONTROL = 0 THEN',
'        CPACUEMKT.EDIT_COL(pseq_id        => :P715_EDIT_DATA,',
'                          pcod_empresa   => :P_COD_EMPRESA,',
'                          pcod_moneda    => :P715_COD_MONEDA,',
'                          pcod_cliente   => :P715_COD_CLIENTE,',
'                          pfecha_inicial => :P715_FEC_INICIAL,',
'                          pfecha_final   => :P715_FEC_FINAL,',
'                          pporcentaje    => :P715_PORCENTAJE,',
'                          pmonto         => :P715_MONTO,',
'                          preferencia    => :P715_OBSERVACION,',
'                          pestado        => :P715_ESTADO,',
'                          pnro_contrato  => :P715_NRO_CONTRATO,',
'                          pcod_usuario   => :P_COD_USUARIO);',
'    END IF;',
'EXCEPTION',
'    WHEN OTHERS THEN',
'    APEX_DEBUG.ERROR(''DA_AGREGAR_EDITAR_REG EDIT_COL ''||SQLERRM);',
'END;'))
,p_attribute_02=>'P715_EDIT_DATA,P_COD_EMPRESA,P715_COD_MONEDA,P715_COD_CLIENTE,P715_FEC_INICIAL,P715_FEC_FINAL,P715_PORCENTAJE,P715_MONTO,P715_ESTADO,P715_OBSERVACION,P715_NRO_CONTRATO'
,p_attribute_03=>'P715_CONTROL'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P715_EDIT_DATA'
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
 p_id=>wwv_flow_imp.id(255859536400931958)
,p_event_id=>wwv_flow_imp.id(255858552717931956)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'Debe completar la moneda.'
,p_attribute_02=>'CAMPOS VACIOS'
,p_attribute_03=>'warning'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P715_CONTROL'
,p_client_condition_expression=>'1'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(255860020432931958)
,p_event_id=>wwv_flow_imp.id(255858552717931956)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'Debe seleccionar el cliente.'
,p_attribute_02=>'CAMPOS VACIOS'
,p_attribute_03=>'success'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P715_CONTROL'
,p_client_condition_expression=>'2'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(255860513256931958)
,p_event_id=>wwv_flow_imp.id(255858552717931956)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'El monto del acuerdo debe ser mayor a cero.'
,p_attribute_02=>'Aviso'
,p_attribute_03=>'warning'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P715_CONTROL'
,p_client_condition_expression=>'3'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(255865072445931960)
,p_event_id=>wwv_flow_imp.id(255858552717931956)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'La fecha inicial no puede ser anterior a la fecha inicial.'
,p_attribute_02=>'Aviso'
,p_attribute_03=>'warning'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P715_CONTROL'
,p_client_condition_expression=>'4'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(255864527426931959)
,p_event_id=>wwv_flow_imp.id(255858552717931956)
,p_event_result=>'TRUE'
,p_action_sequence=>80
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'No se puede aprobar sin verificar.'
,p_attribute_02=>'Aviso'
,p_attribute_03=>'warning'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P715_CONTROL'
,p_client_condition_expression=>'5'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(255861058494931958)
,p_event_id=>wwv_flow_imp.id(255858552717931956)
,p_event_result=>'TRUE'
,p_action_sequence=>90
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'Detalle Anulado, no es posible actualizar.'
,p_attribute_02=>'Aviso'
,p_attribute_03=>'warning'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P715_CONTROL'
,p_client_condition_expression=>'6'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(255861527460931958)
,p_event_id=>wwv_flow_imp.id(255858552717931956)
,p_event_result=>'TRUE'
,p_action_sequence=>100
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'No tiene permiso para autorizar.'
,p_attribute_02=>'Aviso'
,p_attribute_03=>'warning'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P715_CONTROL'
,p_client_condition_expression=>'7'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(255862022588931959)
,p_event_id=>wwv_flow_imp.id(255858552717931956)
,p_event_result=>'TRUE'
,p_action_sequence=>110
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'No tiene permiso para verificar.'
,p_attribute_02=>'Aviso'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P715_CONTROL'
,p_client_condition_expression=>'8'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(255863528029931959)
,p_event_id=>wwv_flow_imp.id(255858552717931956)
,p_event_result=>'TRUE'
,p_action_sequence=>120
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(326829771394712587)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P715_CONTROL'
,p_client_condition_expression=>'0'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(255864064044931959)
,p_event_id=>wwv_flow_imp.id(255858552717931956)
,p_event_result=>'TRUE'
,p_action_sequence=>130
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(326826498491712554)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P715_CONTROL'
,p_client_condition_expression=>'0'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(255865479511931960)
,p_name=>'DA_DELETE_DATA'
,p_event_sequence=>40
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P715_DELETE_DATA'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(255865952825931960)
,p_event_id=>wwv_flow_imp.id(255865479511931960)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_02=>'P715_DELETE_DATA'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(255866408276931960)
,p_event_id=>wwv_flow_imp.id(255865479511931960)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    SMENTSAL.DELETE_COL(pseq_id   => :P715_DELETE_DATA, ',
'                        p_col     => ''COLEC_CP_ACUERDOS_COMERCIALES'',',
'                        patributo => 19);',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'    APEX_DEBUG.ERROR(''DA_DELETE_DATA_DET ''||SQLERRM);',
'END;'))
,p_attribute_02=>'P715_DELETE_DATA'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(255866906074931960)
,p_event_id=>wwv_flow_imp.id(255865479511931960)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(326826498491712554)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(255867330757931960)
,p_name=>'DA_ABRIR_MODAL_EDIT'
,p_event_sequence=>50
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P715_EDIT_DATA'
,p_condition_element=>'P715_EDIT_DATA'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(255867858367931960)
,p_event_id=>wwv_flow_imp.id(255867330757931960)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_02=>'P715_EDIT_DATA'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(255868858021931961)
,p_event_id=>wwv_flow_imp.id(255867330757931960)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    CPACUEMKT.OBTENER_DATOS_EDIT(pedit_data     => :P715_EDIT_DATA,',
'                                pcod_moneda    => :P715_COD_MONEDA,',
'                                pcod_cliente   => :P715_COD_CLIENTE,',
'                                pfecha_inicial => :P715_FEC_INICIAL,',
'                                pfecha_final   => :P715_FEC_FINAL,',
'                                pporcentaje    => :P715_PORCENTAJE,',
'                                pmonto         => :P715_MONTO,',
'                                preferencia    => :P715_OBSERVACION,',
'                                pestado        => :P715_ESTADO,',
'                                pnro_contrato  => :P715_NRO_CONTRATO);',
'   ',
'EXCEPTION',
'    WHEN OTHERS THEN',
'    APEX_DEBUG.ERROR(''DA_ABRIR_MODAL_EDIT CARGAR_DATOS_EDIT ''||SQLERRM);',
'END;'))
,p_attribute_02=>'P715_EDIT_DATA'
,p_attribute_03=>'P715_COD_MONEDA,P715_COD_CLIENTE,P715_FEC_INICIAL,P715_FEC_FINAL,P715_PORCENTAJE,P715_MONTO,P715_ESTADO,P715_OBSERVACION,P715_NRO_CONTRATO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(255868326802931961)
,p_event_id=>wwv_flow_imp.id(255867330757931960)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(326829771394712587)
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(255857352343931955)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_INIT'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'APEX_COLLECTION.CREATE_OR_TRUNCATE_COLLECTION(''COLEC_CP_ACUERDOS_COMERCIALES'');',
':P715_COD_MODULO := ''CP'';'))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(255857705017931956)
,p_process_sequence=>20
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_CARGAR_DATOS'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    CPACUEMKT.CARGAR_DATOS(pcod_empresa => :P_COD_EMPRESA);',
'EXCEPTION',
'    WHEN OTHERS THEN',
'    APEX_DEBUG.ERROR(''PR_CARGAR_DATOS ''||SQLERRM);',
'END;'))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(255858185097931956)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_SAVE'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    CPACUEMKT.GUARDAR_DATOS(pcod_empresa => :P_COD_EMPRESA);',
'',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'    APEX_DEBUG.ERROR(''PR_SAVE PAG 290 ''||SQLERRM);',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp.component_end;
end;
/
