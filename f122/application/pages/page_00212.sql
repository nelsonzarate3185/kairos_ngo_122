prompt --application/pages/page_00212
begin
--   Manifest
--     PAGE: 00212
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
 p_id=>212
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'META DE VENDEDORES'
,p_alias=>'FVMETVEN'
,p_step_title=>'META DE VENDEDORES'
,p_autocomplete_on_off=>'OFF'
,p_javascript_file_urls=>'#APP_FILES#util_generico#MIN#.js'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
' formatMiles(''P212_MONTO_CR_ED''); ',
' setTimeout(function() {',
'    $(''#APEX_SUCCESS_MESSAGE'').fadeOut(''fast'');',
'}, 3000);'))
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.a-IRR-header  a , #checktext, .a-GV-header, .a-IRR-headerLink {color: yellow; }',
'.a-IRR-header, .a-GV-header, .a-IRR-headerLink {    background-color: #003A85;',
'background-image:  #003A85 ;',
' ',
'}',
'',
'.t-Body-mainContent  { ',
'                        background: #082b642f!important;',
'                    } ',
'  ',
'  .t-Form-label{',
'                color:  #003A85  !important;  ',
'                font-weight: bold;   ',
'                } ',
''))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_last_updated_by=>'JUANSA'
,p_last_upd_yyyymmddhh24miss=>'20250127124714'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(49165178352859546)
,p_plug_name=>'VARIABLES'
,p_region_template_options=>'#DEFAULT#:margin-left-none'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>60
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_grid_column_span=>6
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(50485670057520911)
,p_plug_name=>'CABECERA'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(50486711144520922)
,p_plug_name=>'REPORTE'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ',
'        seq_id SEQ_ID,',
'        c001 COD_VENDEDOR,',
'        D001 FEC_INICIAL,',
'        D002 FEC_FINAL,',
'        TO_NUMBER(C003) MONTO,        ',
'         CASE NVL(C005,''0'')',
'           WHEN ''0'' THEN ''GENERAL''',
'           WHEN ''G'' THEN ''GASTRONOMIA''                             ',
'           WHEN ''C'' THEN ''CORPORATIVO''',
'           WHEN ''D'' THEN ''DISTRIBUCION''                           ',
'           WHEN ''R'' THEN ''REPUESTOS''',
'         END DIVISION,',
'         CASE NVL(C006,''0'')',
'              WHEN ''0''  THEN ''N/D''',
'              WHEN ''PR'' THEN ''PRODUCTOS''',
'              WHEN ''RE'' THEN ''REPUESTOS''',
'              WHEN ''INST'' THEN ''INSTALACIONES''',
'         END RUBRO,',
'         DECODE(NVL(C007,''0''),''I'',''INTERIOR'',''C'',''CAPITAL'',''N/D'')  ZONA, ',
'        NULL EDITAR,',
'        NULL ELIMINAR,',
'        null edt',
'FROM APEX_COLLECTIONS',
'WHERE COLLECTION_NAME = ''VENDEDOR_CONCEPTO'' ',
'AND nvl(c020, ''O'') <> ''B''',
'ORDER BY SEQ_ID, c001;'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P212_INDICADOR_REPORTE'
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
 p_id=>wwv_flow_imp.id(50576113417785808)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'EMILIANOP'
,p_internal_uid=>50576113417785808
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(50576210366785809)
,p_db_column_name=>'COD_VENDEDOR'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Vendedor'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_rpt_named_lov=>wwv_flow_imp.id(6512217793593966)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(50576483931785811)
,p_db_column_name=>'FEC_INICIAL'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Fecha Inicial'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(50576505789785812)
,p_db_column_name=>'FEC_FINAL'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Fecha Final'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(50576737470785814)
,p_db_column_name=>'EDITAR'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Editar'
,p_column_link=>'javascript:$s(''P212_SEQ_ID_EDITAR'',''#SEQ_ID#'');'
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
 p_id=>wwv_flow_imp.id(50576808622785815)
,p_db_column_name=>'ELIMINAR'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Eliminar'
,p_column_link=>'javascript:$s(''P212_SEQ_ID_ELIMINAR'',''#SEQ_ID#'');'
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
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(50577112130785818)
,p_db_column_name=>'SEQ_ID'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Seq Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(152904236399462231)
,p_db_column_name=>'MONTO'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Monto'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(400997897755896231)
,p_db_column_name=>'DIVISION'
,p_display_order=>100
,p_column_identifier=>'K'
,p_column_label=>'Division'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(400997954000896232)
,p_db_column_name=>'RUBRO'
,p_display_order=>110
,p_column_identifier=>'L'
,p_column_label=>'Rubro'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(400998069027896233)
,p_db_column_name=>'ZONA'
,p_display_order=>120
,p_column_identifier=>'M'
,p_column_label=>'Zona'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(50588596486943969)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'505886'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'EDITAR:COD_VENDEDOR:DIVISION:RUBRO:ZONA:FEC_INICIAL:FEC_FINAL:MONTO:ELIMINAR'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(50487583111520930)
,p_plug_name=>'AGREGAR/EDITAR VENDEDOR'
,p_region_template_options=>'#DEFAULT#:js-dialog-size600x400'
,p_plug_template=>wwv_flow_imp.id(40120082745263659)
,p_plug_display_sequence=>50
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(50486160093520916)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_imp.id(50485670057520911)
,p_button_name=>'P212_BOTON_CARGAR_ARCHIVO'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight:t-Button--stretch:t-Button--gapTop'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Importar Archivo'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'      ',
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
,p_button_css_classes=>'u-color-34-bg'
,p_icon_css_classes=>'fa-file-excel-o'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
,p_grid_column_span=>2
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(50487494598520929)
,p_button_sequence=>70
,p_button_plug_id=>wwv_flow_imp.id(50485670057520911)
,p_button_name=>'P212_BOTON_AGREGAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight:t-Button--stretch:t-Button--gapTop'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Agregar'
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
,p_button_css_classes=>'u-color-32-bg'
,p_icon_css_classes=>'fa-user-chart'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
,p_grid_column_span=>2
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(50580127194785848)
,p_button_sequence=>80
,p_button_plug_id=>wwv_flow_imp.id(50485670057520911)
,p_button_name=>'P212_BOTON_GUARDAR_CAMBIOS'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight:t-Button--stretch:t-Button--gapTop'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Guardar'
,p_warn_on_unsaved_changes=>null
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    RETURN SEGURIDAD_GRANULAR.FC_MOSTRAR_CONFIRMAR (pusua0100_id => :P_USUA0100_ID,',
'                                                    ppage_id => :APP_PAGE_ID,',
'                                                    papli0100_id => :P_APLI0100_ID);',
'END;'))
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'FUNCTION_BODY'
,p_button_css_classes=>'u-color-21-text u-color-31-bg'
,p_icon_css_classes=>'fa-save'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
,p_grid_column_span=>2
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(50488557125520940)
,p_button_sequence=>80
,p_button_plug_id=>wwv_flow_imp.id(50487583111520930)
,p_button_name=>'P212_BOTON_CERRAR_CR_ED'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_image_alt=>'CANCELAR'
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(50488331252520938)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_imp.id(50487583111520930)
,p_button_name=>'P212_BOTON_ACEPTAR_CR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'ACEPTAR'
,p_button_position=>'CREATE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(50488438831520939)
,p_button_sequence=>70
,p_button_plug_id=>wwv_flow_imp.id(50487583111520930)
,p_button_name=>'P212_BOTON_ACEPTAR_ED'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'ACEPTAR'
,p_button_position=>'CREATE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(258027426716182539)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(50486711144520922)
,p_button_name=>'P212_BOTON_Importar_ARCHIVO_1'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight:t-Button--gapLeft'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Confirmar Importacion'
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
'                                                         pdm_boto     => 1); ',
'',
'    IF VCONTROL = 0 THEN',
'        RETURN FALSE;',
'    ELSE',
'        RETURN FALSE;---TRUE',
'    END IF;                                                     ',
'END;'))
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'FUNCTION_BODY'
,p_icon_css_classes=>'fa-download'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(50662370097952007)
,p_branch_name=>'BR_ABRIR_CARGA'
,p_branch_action=>'f?p=&APP_ID.:216:&SESSION.::&DEBUG.:Y,:P216_ANIO,P216_MES:&P212_ANIO.,&P212_MES.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(50486160093520916)
,p_branch_sequence=>10
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(49165265205859547)
,p_name=>'P212_COD_MODULO'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(49165178352859546)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(49165368864859548)
,p_name=>'P212_CONC_SUELDO'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(49165178352859546)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(49165444664859549)
,p_name=>'P212_CONC_ANTICIPO'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(49165178352859546)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(49165550016859550)
,p_name=>'P212_CONC_ASOCIACION'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(49165178352859546)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(50484676126520901)
,p_name=>'P212_SER_DEBCRED_RH'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(49165178352859546)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(50484755032520902)
,p_name=>'P212_FEC_DEBCRED'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(49165178352859546)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(50484869358520903)
,p_name=>'P212_JORNAL_MES'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_imp.id(49165178352859546)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(50484937942520904)
,p_name=>'P212_DERECHOS'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(49165178352859546)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(50485002984520905)
,p_name=>'P212_COD_CONCEPTO_FIJO'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(49165178352859546)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(50485190100520906)
,p_name=>'P212_COD_EMPLEADO'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(49165178352859546)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(50485231263520907)
,p_name=>'P212_COD_SUCURSAL'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(49165178352859546)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(50485339261520908)
,p_name=>'P212_COD_IDIOMA'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(49165178352859546)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(50485445981520909)
,p_name=>'P212_COD_SISMENU'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(49165178352859546)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(50486088184520915)
,p_name=>'P212_PATH'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(50485670057520911)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(50487145325520926)
,p_name=>'P212_COD_USUARIO'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(49165178352859546)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(50487240338520927)
,p_name=>'P212_FEC_ALTA'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_imp.id(49165178352859546)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(50487332222520928)
,p_name=>'P212_OBSERVACION'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_imp.id(49165178352859546)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(50487624035520931)
,p_name=>'P212_COD_VENDEDOR_CR_ED'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(50487583111520930)
,p_prompt=>'Vendedor'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_VENDEDOR'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'--LV PARA VTFAPECO  ',
'  select cod_vendedor || '' - '' || ltrim( rtrim( nvl( p.nombre, p.nomb_fantasia ) ) ) D,',
'         cod_vendedor R',
'    from fv_vendedores u,',
'          personas p',
'   where u.cod_empresa = :p_cod_empresa',
'     and u.cod_persona = p.cod_persona;',
''))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186937130263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(50487821837520933)
,p_name=>'P212_FEC_INICIO_CR_ED'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(50487583111520930)
,p_prompt=>'Inicio'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_colspan=>3
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(50487928234520934)
,p_name=>'P212_FEC_FIN_CR_ED'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(50487583111520930)
,p_prompt=>'Fin'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(50488041178520935)
,p_name=>'P212_MONTO_CR_ED'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(50487583111520930)
,p_prompt=>'Monto'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186937130263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(52576169850271011)
,p_name=>'P212_INDICADOR_REPORTE'
,p_item_sequence=>240
,p_item_plug_id=>wwv_flow_imp.id(49165178352859546)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(171356693646796118)
,p_name=>'P212_MES'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(50485670057520911)
,p_prompt=>'Mes:'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT LPAD(MES,2,''0'')||''-''||UPPER(DESCRIPCION) MES, LPAD(MES,2,''0'') COD',
'FROM MESES;',
''))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_colspan=>4
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
 p_id=>wwv_flow_imp.id(171356718368796119)
,p_name=>'P212_ANIO'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(50485670057520911)
,p_prompt=>unistr('A\00F1o:')
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(400998250069896235)
,p_name=>'P212_DIVISION_CR_ED'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(50487583111520930)
,p_prompt=>'Division'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>'STATIC:DISTRIBUCION;D,GASTRONOMIA;G,CORPORATIVOS;C,REPUESTOS;R'
,p_lov_display_null=>'YES'
,p_lov_null_text=>'N/D'
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
 p_id=>wwv_flow_imp.id(400998316523896236)
,p_name=>'P212_RUBRO_CR_ED'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(50487583111520930)
,p_prompt=>'RUBRO'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>'STATIC:PRODUCTOS;PR,REPUESTOS;RE,INSTALACIONES;INST'
,p_lov_display_null=>'YES'
,p_lov_null_text=>'N/D'
,p_cSize=>30
,p_begin_on_new_line=>'N'
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
 p_id=>wwv_flow_imp.id(400998449215896237)
,p_name=>'P212_ZONA_CR_ED'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(50487583111520930)
,p_prompt=>'ZONA'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>'STATIC:CAPITAL;C,INTERIOR;I'
,p_lov_display_null=>'YES'
,p_lov_null_text=>'N/D'
,p_cSize=>30
,p_begin_on_new_line=>'N'
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
 p_id=>wwv_flow_imp.id(400998987053896242)
,p_name=>'P212_SEQ_ID_EDITAR'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(50485670057520911)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(400999009172896243)
,p_name=>'P212_SEQ_ID_ELIMINAR'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(50485670057520911)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(50486349767520918)
,p_name=>'DA_ASIGNAR_FECHAS'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P212_PERIODO'
,p_condition_element=>'P212_PERIODO'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(50486460500520919)
,p_event_id=>wwv_flow_imp.id(50486349767520918)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    IF :P212_PERIODO IS NOT NULL THEN ',
'    	BEGIN',
'    	    SELECT  to_char(FEC_INICIAL,''DD/MM/YYYY''),to_char(FEC_FINAL,''DD/MM/YYYY'')',
'            INTO 	:P212_INICIO, :P212_FIN',
'    	    FROM fv_periodos_comision',
'    		WHERE cod_empresa= :P_COD_EMPRESA',
'    		AND	num_periodo = :P212_PERIODO;',
'    		EXCEPTION ',
'    			WHEN OTHERS THEN',
'    			:P212_INICIO :=NULL;',
'    			:P212_FIN :=NULL;',
'    			',
'    		END;',
'    ELSE',
'    	:P212_INICIO :=NULL;',
'    	:P212_FIN :=NULL;',
'    END IF;',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'     raise_application_error(-20000,  sqlerrm ); ',
'END;'))
,p_attribute_02=>'P212_PERIODO'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(52576583160271015)
,p_event_id=>wwv_flow_imp.id(50486349767520918)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P212_INICIO,P212_FIN'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(50488199213520936)
,p_name=>'DA_AGREGAR_VENDEDOR'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(50487494598520929)
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>'$v("P212_MES") != '''' &&  $v("P212_ANIO") != '''' '
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(50577251525785819)
,p_event_id=>wwv_flow_imp.id(50488199213520936)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P212_COD_VENDEDOR_CR_ED,P212_FEC_INICIO_CR_ED,P212_FEC_FIN_CR_ED,P212_MONTO_CR_ED'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(50577565576785822)
,p_event_id=>wwv_flow_imp.id(50488199213520936)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('Debe ingresar el periodo (Mes/A\00F1o)'),
''))
,p_attribute_02=>'INGRESE UN PERIODO'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(50577397912785820)
,p_event_id=>wwv_flow_imp.id(50488199213520936)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
' ',
'        :P212_FEC_INICIO_CR_ED := TO_CHAR(TO_DATE(''01/''||:P212_MES||''/''||:P212_ANIO ,''DD/MM/YYYY''),''DD/MM/YYYY'');',
'        :P212_FEC_FIN_CR_ED := TO_CHAR(LAST_DAY(TO_DATE(''01/''||:P212_MES||''/''||:P212_ANIO ,''DD/MM/YYYY'')),''DD/MM/YYYY'');',
' '))
,p_attribute_02=>'P212_MES,P212_ANIO'
,p_attribute_03=>'P212_FEC_INICIO_CR_ED,P212_FEC_FIN_CR_ED'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(50489314482520948)
,p_event_id=>wwv_flow_imp.id(50488199213520936)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(50488438831520939)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(50489426423520949)
,p_event_id=>wwv_flow_imp.id(50488199213520936)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(50488331252520938)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(50488298957520937)
,p_event_id=>wwv_flow_imp.id(50488199213520936)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(50487583111520930)
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
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(50488661535520941)
,p_name=>'DA_CERRAR_REGION_CR_ED'
,p_event_sequence=>30
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(50488557125520940)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(50488717341520942)
,p_event_id=>wwv_flow_imp.id(50488661535520941)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(50487583111520930)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(50488849798520943)
,p_name=>'DA_OCULTAR_BTN_CR_ED'
,p_event_sequence=>40
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(50488977766520944)
,p_event_id=>wwv_flow_imp.id(50488849798520943)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(50488331252520938)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(50489092606520945)
,p_event_id=>wwv_flow_imp.id(50488849798520943)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(50488438831520939)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(50489591110520950)
,p_name=>'DA_ACTUALIZAR_COL'
,p_event_sequence=>50
,p_triggering_element_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_element=>'window'
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(50575431438785801)
,p_event_id=>wwv_flow_imp.id(50489591110520950)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(50486711144520922)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(50577921537785826)
,p_name=>'DA_AGREGAR_MIEMBRO_COL'
,p_event_sequence=>60
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(50488331252520938)
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$v("P212_COD_VENDEDOR_CR_ED") != '''' &&  $v("P212_MONTO_CR_ED") != '''' ',
'',
' '))
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(50578096692785827)
,p_event_id=>wwv_flow_imp.id(50577921537785826)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
' ',
'        FVMETVEN.pr_agregar_miembro_col_vend(:P_COD_EMPRESA,',
'                                             :P212_COD_VENDEDOR_CR_ED,',
'                                             :P212_FEC_INICIO_CR_ED,',
'                                             :P212_FEC_FIN_CR_ED,',
'                                             :P212_MONTO_CR_ED,',
'                                             :P212_DIVISION_CR_ED,',
'                                             :P212_RUBRO_CR_ED,',
'                                             :P212_ZONA_CR_ED);',
' ',
'',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'      raise_application_error(-20000,SQLERRM);',
'END;'))
,p_attribute_02=>'P_COD_EMPRESA,P212_COD_VENDEDOR_CR_ED,P212_FEC_INICIO_CR_ED,P212_FEC_FIN_CR_ED,P212_MONTO_CR_ED,P212_DIVISION_CR_ED,P212_RUBRO_CR_ED,P212_ZONA_CR_ED'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(50579441440785841)
,p_event_id=>wwv_flow_imp.id(50577921537785826)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>unistr('Compruebe que los campos obligatorios no est\00E9n vac\00EDos.')
,p_attribute_02=>'CAMPOS OBLIGATORIOS VACIOS'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(50578168815785828)
,p_event_id=>wwv_flow_imp.id(50577921537785826)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(50487583111520930)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(50578266908785829)
,p_event_id=>wwv_flow_imp.id(50577921537785826)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(50486711144520922)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(50578378736785830)
,p_name=>'DA_ELIMINAR_MIEMBRO'
,p_event_sequence=>70
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P212_SEQ_ID_ELIMINAR'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(50578634837785833)
,p_event_id=>wwv_flow_imp.id(50578378736785830)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>unistr('\00BFDesea eliminar el registro?')
,p_attribute_02=>unistr('\00BFDesea eliminar el registro?')
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(50578442608785831)
,p_event_id=>wwv_flow_imp.id(50578378736785830)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
' FVMETVEN.pr_elminar_miembro_vendedor (:P212_SEQ_ID_ELIMINAR);',
'EXCEPTION',
'    WHEN OTHERS THEN',
'      raise_application_error(-20000,SQLERRM);',
'END;'))
,p_attribute_02=>'P212_SEQ_ID_ELIMINAR'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(50578586990785832)
,p_event_id=>wwv_flow_imp.id(50578378736785830)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(50486711144520922)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(50578708550785834)
,p_name=>'DA_ABRIR_EDITAR'
,p_event_sequence=>80
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P212_SEQ_ID_EDITAR'
,p_condition_element=>'P212_SEQ_ID_EDITAR'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(50579105877785838)
,p_event_id=>wwv_flow_imp.id(50578708550785834)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P212_COD_VENDEDOR_CR_ED,P212_FEC_INICIO_CR_ED,P212_FEC_FIN_CR_ED,P212_MONTO_CR_ED'
,p_server_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(50579281409785839)
,p_event_id=>wwv_flow_imp.id(50578708550785834)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(50488331252520938)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(50579374008785840)
,p_event_id=>wwv_flow_imp.id(50578708550785834)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(50488438831520939)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(50578881558785835)
,p_event_id=>wwv_flow_imp.id(50578708550785834)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    SELECT C001, D001, D002, REPLACE(TO_CHAR(TO_NUMBER(C003), ''999G999G999G999G999G999''),'' '',''''), C005, C006, C007',
'    INTO    :P212_COD_VENDEDOR_CR_ED,',
'            :P212_FEC_INICIO_CR_ED,',
'            :P212_FEC_FIN_CR_ED,',
'            :P212_MONTO_CR_ED,',
'            :P212_DIVISION_CR_ED,',
'            :P212_RUBRO_CR_ED,',
'            :P212_ZONA_CR_ED',
'    FROM APEX_COLLECTIONS',
'    WHERE COLLECTION_NAME = ''VENDEDOR_CONCEPTO''',
'    AND SEQ_ID = :P212_SEQ_ID_EDITAR;',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'       raise_application_error(-20000,SQLERRM);',
'END;'))
,p_attribute_02=>'P212_SEQ_ID_EDITAR'
,p_attribute_03=>'P212_COD_VENDEDOR_CR_ED,P212_FEC_INICIO_CR_ED,P212_FEC_FIN_CR_ED,P212_MONTO_CR_ED,P212_DIVISION_CR_ED,P212_RUBRO_CR_ED,P212_ZONA_CR_ED'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(50578991782785836)
,p_event_id=>wwv_flow_imp.id(50578708550785834)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(50487583111520930)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(50579582312785842)
,p_name=>'DA_MODIFICAR_MIEMBRO'
,p_event_sequence=>90
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(50488438831520939)
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>'$v("P212_COD_VENDEDOR_CR_ED") != '''' &&  $v("P212_MONTO_CR_ED") != '''' '
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(50579794917785844)
,p_event_id=>wwv_flow_imp.id(50579582312785842)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'  ',
'        FVMETVEN.pr_modificar_miembro_vendedor ( :P212_SEQ_ID_EDITAR,',
'                                                 :P_COD_EMPRESA,',
'                                                 :P212_COD_VENDEDOR_CR_ED,',
'                                                 :P212_FEC_INICIO_CR_ED,',
'                                                 :P212_FEC_FIN_CR_ED,',
'                                                 :P212_MONTO_CR_ED,',
'                                                 :P212_DIVISION_CR_ED,',
'                                                 :P212_RUBRO_CR_ED,',
'                                                 :P212_ZONA_CR_ED); ',
' ',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'     raise_application_error(-20000,SQLERRM);',
'END;'))
,p_attribute_02=>'P_COD_EMPRESA,P212_COD_VENDEDOR_CR_ED,P212_FEC_INICIO_CR_ED,P212_FEC_FIN_CR_ED,P212_MONTO_CR_ED,P212_SEQ_ID_EDITAR,P212_DIVISION_CR_ED,P212_RUBRO_CR_ED,P212_ZONA_CR_ED'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(50579854156785845)
,p_event_id=>wwv_flow_imp.id(50579582312785842)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>unistr('Compruebe que los campos obligatorios no est\00E9n vac\00EDos.')
,p_attribute_02=>'CAMPOS OBLIGATORIOS VACIOS'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(50579994421785846)
,p_event_id=>wwv_flow_imp.id(50579582312785842)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(50487583111520930)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(50580072053785847)
,p_event_id=>wwv_flow_imp.id(50579582312785842)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(50486711144520922)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(50580212171785849)
,p_name=>'DA_GUARDAR_CAMBIOS'
,p_event_sequence=>100
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(50580127194785848)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(50580313966785850)
,p_event_id=>wwv_flow_imp.id(50580212171785849)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('\00BFDesea guardar los cambios?'),
''))
,p_attribute_02=>unistr('\00BFDesea guardar los cambios?')
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(50662609192952010)
,p_event_id=>wwv_flow_imp.id(50580212171785849)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_01=>'GUARDAR'
,p_attribute_02=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(52576204610271012)
,p_name=>'DA_CARGAR_REPORTE'
,p_event_sequence=>110
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P212_FIN'
,p_condition_element=>'P212_FIN'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(171357111522796123)
,p_name=>'da_tipo_periodo'
,p_event_sequence=>130
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P212_TIPO'
,p_condition_element=>'P212_TIPO'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'S'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(171357421804796126)
,p_event_id=>wwv_flow_imp.id(171357111522796123)
,p_event_result=>'FALSE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P212_MES,P212_ANIO'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(171357680043796128)
,p_event_id=>wwv_flow_imp.id(171357111522796123)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P212_PERIODO'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(171357377002796125)
,p_event_id=>wwv_flow_imp.id(171357111522796123)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P212_MES,P212_ANIO'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(171357529179796127)
,p_event_id=>wwv_flow_imp.id(171357111522796123)
,p_event_result=>'FALSE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P212_PERIODO'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(171357708114796129)
,p_name=>'DA_FILTRA1'
,p_event_sequence=>140
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P212_MES'
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>'$v("P212_MES") != '''' &&  $v("P212_ANIO") != '''' '
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(400997402694896227)
,p_event_id=>wwv_flow_imp.id(171357708114796129)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(50486160093520916)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(400997024056896223)
,p_event_id=>wwv_flow_imp.id(171357708114796129)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
' ',
'        FVMETVEN.pr_crear_col_vendedor ( TO_CHAR(TO_DATE(''01/''||:P212_MES||''/''||:P212_ANIO ,''DD/MM/YYYY''),''DD/MM/YYYY''),',
'                                         TO_CHAR(LAST_DAY(TO_DATE(''01/''||:P212_MES||''/''||:P212_ANIO ,''DD/MM/YYYY'')),''DD/MM/YYYY''),',
'                                         :P_COD_EMPRESA);                                        ',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'       raise_application_error(-20000,SQLERRM);',
'END;',
'',
'',
''))
,p_attribute_02=>'P_COD_EMPRESA,P212_MES,P212_ANIO'
,p_attribute_03=>'P212_INDICADOR_REPORTE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(400997595436896228)
,p_event_id=>wwv_flow_imp.id(171357708114796129)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(50486160093520916)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(400997134290896224)
,p_event_id=>wwv_flow_imp.id(171357708114796129)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(50486711144520922)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(171358454834796136)
,p_name=>'DA_CHK_CLEAR_ITM'
,p_event_sequence=>150
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P212_TIPO'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(171358514267796137)
,p_event_id=>wwv_flow_imp.id(171358454834796136)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P212_PERIODO,P212_MES,P212_ANIO'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(171358656943796138)
,p_name=>'DA_FILTRA2'
,p_event_sequence=>160
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P212_ANIO'
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>'$v("P212_MES") != '''' &&  $v("P212_ANIO") != '''' '
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(400997604706896229)
,p_event_id=>wwv_flow_imp.id(171358656943796138)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(50486160093520916)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(400997798215896230)
,p_event_id=>wwv_flow_imp.id(171358656943796138)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(50486160093520916)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(52576363590271013)
,p_event_id=>wwv_flow_imp.id(171358656943796138)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
' ',
'        FVMETVEN.pr_crear_col_vendedor ( TO_CHAR(TO_DATE(''01/''||:P212_MES||''/''||:P212_ANIO ,''DD/MM/YYYY''),''DD/MM/YYYY''),',
'                                         TO_CHAR(LAST_DAY(TO_DATE(''01/''||:P212_MES||''/''||:P212_ANIO ,''DD/MM/YYYY'')),''DD/MM/YYYY''),',
'                                         :P_COD_EMPRESA);                                           ',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        raise_application_error(-20000,SQLERRM);',
'END;',
'',
'',
''))
,p_attribute_02=>'P_COD_EMPRESA,P212_MES,P212_ANIO'
,p_attribute_03=>'P212_INDICADOR_REPORTE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(52576433475271014)
,p_event_id=>wwv_flow_imp.id(171358656943796138)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(50486711144520922)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(258027564598182540)
,p_name=>'New'
,p_event_sequence=>170
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(258027426716182539)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(258027653327182541)
,p_event_id=>wwv_flow_imp.id(258027564598182540)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'',
'    V_DESC_VENDEDOR VARCHAR2(100);',
'',
'BEGIN',
'',
'        APEX_COLLECTION.CREATE_OR_TRUNCATE_COLLECTION(P_COLLECTION_NAME => ''CARGAR_VENDEDORES2'');',
'    FOR C IN (  SELECT C001, C002 ,C003',
'                FROM APEX_COLLECTIONS ',
'                WHERE COLLECTION_NAME = ''CARGAR_VENDEDORES2''',
'    ) LOOP',
'',
'        BEGIN',
'            SELECT  pe.nombre',
'                INTO V_DESC_VENDEDOR',
'                FROM fv_vendedores EM ,personas pe',
'                WHERE em.cod_empresa = :P_COD_EMPRESA',
'                AND  em.cod_persona = pe.cod_persona',
'                AND   em.cod_vendedor = c.c001;',
'        EXCEPTION    ',
'            WHEN OTHERS THEN',
'                V_DESC_VENDEDOR := NULL;',
'        END;',
'',
'        APEX_COLLECTION.ADD_MEMBER(P_COLLECTION_NAME => ''VENDEDOR_CONCEPTO'',',
'        ',
'            P_C001 => C.C001,',
'            P_C002 => V_DESC_VENDEDOR,',
'            P_d001 => to_date(:P216_FEC_INICIO, ''DD/MM/YYYY''),',
'            P_d002 => to_date(:P216_FEC_FIN, ''DD/MM/YYYY''),',
'            P_C003 => c.C002, ',
'            P_C004 => c.C003, ',
'            P_c020 => ''A''        ',
'        );',
'',
'    END LOOP;',
'',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'      raise_application_error(-20000,SQLERRM);',
'END;'))
,p_attribute_02=>'P216_FEC_INICIO'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(50486510140520920)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'PR_LIMPIAR_DATOS'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(49165002872859545)
,p_process_sequence=>20
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_INIT'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
':P212_COD_MODULO := ''FV''; ',
':P212_COD_USUARIO := :APP_USER;',
':P212_FEC_ALTA := SYSDATE;',
'',
':P212_CONC_SUELDO := BS_BUSCA_PARAMETRO(''RH'',''RH_CONC_SUELDO'');',
':P212_CONC_ANTICIPO := BS_BUSCA_PARAMETRO(''RH'',''RH_CONC_ANTICIPO'');',
':P212_CONC_ASOCIACION := BS_BUSCA_PARAMETRO(''RH'',''RH_CONC_ASOCIACION'');',
':P212_SER_DEBCRED_RH:= BS_BUSCA_PARAMETRO(''RH'',''RH_SER_DEBCRED'');',
':P212_FEC_DEBCRED := TRAE_FECHA( :P_COD_EMPRESA, :P212_COD_MODULO) ;',
':P212_JORNAL_MES  := TO_NUMBER( LTRIM(RTRIM(BS_BUSCA_PARAMETRO(''RH'',''RH_JORNAL_MES''))));',
' ',
'        APEX_COLLECTION.CREATE_OR_TRUNCATE_COLLECTION(P_COLLECTION_NAME => ''VENDEDOR_CONCEPTO'');',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'      raise_application_error(-20000,SQLERRM);',
'END;'))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(50662092622952004)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_GUARDAR_CAMBIOS'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    FVMETVEN.pr_guardar_cambios (   :P_COD_EMPRESA,',
'                                    :P212_OBSERVACION,',
'                                    :APP_USER,',
'                                    SYSDATE);',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'      raise_application_error(-20000,SQLERRM);',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>unistr('Ups... ocurri\00F3 un error!')
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'GUARDAR'
,p_process_when_type=>'REQUEST_EQUALS_CONDITION'
,p_process_success_message=>unistr('\00A1Los cambios se guardaron exitosamente!')
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(50662552012952009)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_LIMPIAR_ARCHIVO'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P216_FILE_NAME := NULL;',
':P216_FILE := NULL;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(50486160093520916)
);
wwv_flow_imp.component_end;
end;
/
