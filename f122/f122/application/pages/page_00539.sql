prompt --application/pages/page_00539
begin
--   Manifest
--     PAGE: 00539
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
 p_id=>539
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'META VENDEDORES MARCA'
,p_alias=>'META-VENDEDORES-MARCA'
,p_step_title=>'META VENDEDORES MARCA'
,p_autocomplete_on_off=>'OFF'
,p_javascript_file_urls=>'#APP_FILES#util_generico#MIN#.js'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#reguard {background-color: #edf2f4;}',
'',
'.t-Form-label{',
'    color:  #003A85  !important;',
'    font-weight: bold !important;',
'    }'))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_last_updated_by=>'JUANSA'
,p_last_upd_yyyymmddhh24miss=>'20230512154441'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(210497484724959244)
,p_plug_name=>'VARIABLES'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(211817976429620609)
,p_plug_name=>'CABECERA'
,p_region_name=>'reguard'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>50
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(211819231339620622)
,p_plug_name=>'IZQUIERDA'
,p_parent_plug_id=>wwv_flow_imp.id(211817976429620609)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_source=>'<p align="right">  <strong>Formato Archivo .csv :</strong> Cod.Vendedor; Monto; Cod.Marca</p>'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(211819384693620623)
,p_plug_name=>'DATOS DE CARGA'
,p_parent_plug_id=>wwv_flow_imp.id(211817976429620609)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>10
,p_plug_new_grid_row=>false
,p_plug_grid_column_span=>5
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(211819017516620620)
,p_plug_name=>'REPORTE'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>70
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ',
'        seq_id SEQ_ID,',
'        C001 COD_VENDEDOR,',
'        D001 FEC_INICIAL,',
'        D002 FEC_FINAL,',
'        N003 MONTO,',
'        C002 MES,',
'        NVL((SELECT  UPPER(DESCRIPCION)     ',
'        FROM MESES',
'        WHERE LPAD(MES,2,''0'')=C002),'''') NOM_MES,',
'        C003 ANIO,',
'        C004 COD_MARCA,',
'        NVL((select descripcion  ',
'               from st_marcas m',
'               where cod_marca= C004),C004) NOM_MARCA,',
'        NULL EDITAR,',
'        NULL ELIMINAR',
'FROM APEX_COLLECTIONS',
'WHERE COLLECTION_NAME = ''VENDEDOR_CONCEPTO''',
'AND :P539_INDICADOR_REPORTE = ''1''',
'AND nvl(c020, ''O'') <> ''B''',
'ORDER BY SEQ_ID, c001;',
'',
' '))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P539_INDICADOR_REPORTE'
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
 p_id=>wwv_flow_imp.id(211908419789885506)
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
,p_internal_uid=>211908419789885506
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(161338332109099664)
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
 p_id=>wwv_flow_imp.id(161338773268099659)
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
 p_id=>wwv_flow_imp.id(161339112728099658)
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
 p_id=>wwv_flow_imp.id(161339597738099658)
,p_db_column_name=>'EDITAR'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Editar'
,p_column_link=>'javascript:$s(''P539_SEQ_ID_EDITAR'',''#SEQ_ID#'');'
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
'        RETURN true;',
'    ELSE',
'        RETURN TRUE;',
'    END IF;                                                     ',
'END;'))
,p_display_condition2=>'PLSQL'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(161339902383099658)
,p_db_column_name=>'ELIMINAR'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Eliminar'
,p_column_link=>'javascript:$s(''P539_SEQ_ID_ELIMINAR'',''#SEQ_ID#'');'
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
'        RETURN true;',
'    ELSE',
'        RETURN TRUE;',
'    END IF;                                                     ',
'END;'))
,p_display_condition2=>'PLSQL'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(161340358097099658)
,p_db_column_name=>'SEQ_ID'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Seq Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(161340707594099657)
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
 p_id=>wwv_flow_imp.id(152904774816462236)
,p_db_column_name=>'MES'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Mes'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(152904884578462237)
,p_db_column_name=>'ANIO'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Anio'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(152904958829462238)
,p_db_column_name=>'COD_MARCA'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Marca'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(152905470133462243)
,p_db_column_name=>'NOM_MES'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Mes'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(152905525299462244)
,p_db_column_name=>'NOM_MARCA'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>'Marca'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(211920902859043667)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'505886'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'EDITAR:COD_VENDEDOR:FEC_INICIAL:FEC_FINAL:MONTO:NOM_MARCA:NOM_MES:ANIO:ELIMINAR:'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(211819889483620628)
,p_plug_name=>'AGREGAR/EDITAR VENDEDOR'
,p_region_template_options=>'#DEFAULT#:js-dialog-size600x400'
,p_plug_template=>wwv_flow_imp.id(40120082745263659)
,p_plug_display_sequence=>90
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(161332912439099682)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(211819384693620623)
,p_button_name=>'P539_BOTON_GUARDAR_CAMBIOS'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--iconRight:t-Button--stretch:t-Button--gapTop'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Guardar'
,p_warn_on_unsaved_changes=>null
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    RETURN true; /*SEGURIDAD_GRANULAR.FC_MOSTRAR_CONFIRMAR (pusua0100_id => :P_USUA0100_ID,',
'                                                    ppage_id => :APP_PAGE_ID,',
'                                                    papli0100_id => :P_APLI0100_ID);*/',
'END;'))
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'FUNCTION_BODY'
,p_button_css_classes=>'u-color-21-text'
,p_icon_css_classes=>'fa-save'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(161341459347099655)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(211819231339620622)
,p_button_name=>'P539_BOTON_CARGAR_ARCHIVO'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--iconRight:t-Button--stretch:t-Button--gapTop'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Importar Archivo'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
'',
'',
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
'        RETURN TRUE;',
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
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(161336029196099668)
,p_button_sequence=>80
,p_button_plug_id=>wwv_flow_imp.id(211819889483620628)
,p_button_name=>'P539_BOTON_CERRAR_CR_ED'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_image_alt=>'Cerrar'
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(161335222055099669)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_imp.id(211819889483620628)
,p_button_name=>'P539_BOTON_ACEPTAR_CR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Aceptar'
,p_button_position=>'CREATE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(161335603152099668)
,p_button_sequence=>70
,p_button_plug_id=>wwv_flow_imp.id(211819889483620628)
,p_button_name=>'P539_BOTON_ACEPTAR_ED'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Aceptar'
,p_button_position=>'CREATE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(161341844238099655)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(211819017516620620)
,p_button_name=>'P539_BOTON_AGREGAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight:t-Button--gapRight'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Agregar Vendedor'
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
'        RETURN true;',
'    ELSE',
'        RETURN TRUE;',
'    END IF;                                                     ',
'END;'))
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'FUNCTION_BODY'
,p_button_css_classes=>'u-color-32-bg'
,p_icon_css_classes=>'fa-user-chart'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(161375988687099624)
,p_branch_name=>'BR_ABRIR_CARGA'
,p_branch_action=>'f?p=&APP_ID.:216:&SESSION.::&DEBUG.:Y,:P216_FEC_INICIO,P216_FEC_FIN:&P539_INICIO.,&P539_FIN.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(161341459347099655)
,p_branch_sequence=>10
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(152904319681462232)
,p_name=>'P539_MES'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(211819231339620622)
,p_prompt=>'MES'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov_language=>'PLSQL'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
'SELECT LPAD(MES,2,''0'')||''-''||UPPER(DESCRIPCION) MES, LPAD(MES,2,''0'') COD',
'FROM MESES;',
''))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'-SELECCIONAR-'
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(152904403880462233)
,p_name=>'P539_ANIO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(211819231339620622)
,p_prompt=>unistr('A\00D1O')
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>4
,p_tag_css_classes=>'allow_only_numbers'
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
 p_id=>wwv_flow_imp.id(152905173012462240)
,p_name=>'P539_MARCA'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(211819889483620628)
,p_prompt=>'Marca'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select cod_marca||'' - '' ||descripcion NOM,cod_marca ',
'       from st_marcas m',
'       where NVL(ESTADO,''S'')=''S'''))
,p_lov_display_null=>'YES'
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
 p_id=>wwv_flow_imp.id(161333796596099671)
,p_name=>'P539_INICIO'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(211819231339620622)
,p_prompt=>'Fecha Inicio'
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
 p_id=>wwv_flow_imp.id(161334148981099671)
,p_name=>'P539_FIN'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(211819231339620622)
,p_prompt=>'Fecha Fin'
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
 p_id=>wwv_flow_imp.id(161334572952099671)
,p_name=>'P539_PATH'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(211817976429620609)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(161336422877099668)
,p_name=>'P539_COD_VENDEDOR_CR_ED'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(211819889483620628)
,p_prompt=>'Cod Vendedor'
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
 p_id=>wwv_flow_imp.id(161336856072099668)
,p_name=>'P539_FEC_INICIO_CR_ED'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(211819889483620628)
,p_prompt=>'Inicio'
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
 p_id=>wwv_flow_imp.id(161337252901099668)
,p_name=>'P539_FEC_FIN_CR_ED'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(211819889483620628)
,p_prompt=>'Fin'
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
 p_id=>wwv_flow_imp.id(161337612495099668)
,p_name=>'P539_MONTO_CR_ED'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(211819889483620628)
,p_prompt=>'Monto'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186937130263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(161342885017099654)
,p_name=>'P539_OBSERVACION'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(211819384693620623)
,p_prompt=>'Observacion'
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
 p_id=>wwv_flow_imp.id(161343577095099654)
,p_name=>'P539_COD_USUARIO'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(211819384693620623)
,p_prompt=>'Usuario'
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
 p_id=>wwv_flow_imp.id(161343941461099653)
,p_name=>'P539_FEC_ALTA'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(211819384693620623)
,p_prompt=>'Fecha'
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
 p_id=>wwv_flow_imp.id(161344638343099653)
,p_name=>'P539_DERECHOS'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(210497484724959244)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(161345067318099653)
,p_name=>'P539_COD_CONCEPTO_FIJO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(210497484724959244)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(161345409025099652)
,p_name=>'P539_COD_EMPLEADO'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(210497484724959244)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(161345856030099652)
,p_name=>'P539_COD_SUCURSAL'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(210497484724959244)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(161346298435099652)
,p_name=>'P539_COD_IDIOMA'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(210497484724959244)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(161346624073099652)
,p_name=>'P539_COD_SISMENU'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(210497484724959244)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(161347048740099652)
,p_name=>'P539_COD_MODULO'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(210497484724959244)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(161347487345099652)
,p_name=>'P539_CONC_SUELDO'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(210497484724959244)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(161347880954099651)
,p_name=>'P539_CONC_ANTICIPO'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(210497484724959244)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(161348275536099651)
,p_name=>'P539_CONC_ASOCIACION'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(210497484724959244)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(161348666265099651)
,p_name=>'P539_SER_DEBCRED_RH'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(210497484724959244)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(161349028469099651)
,p_name=>'P539_FEC_DEBCRED'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(210497484724959244)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(161349419176099651)
,p_name=>'P539_JORNAL_MES'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(210497484724959244)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(161349836152099651)
,p_name=>'P539_SEQ_ID_EDITAR'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(210497484724959244)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(161350203590099650)
,p_name=>'P539_SEQ_ID_ELIMINAR'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(210497484724959244)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(161350695139099650)
,p_name=>'P539_INDICADOR_ALERT'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_imp.id(210497484724959244)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(161351045892099650)
,p_name=>'P539_INDICADOR_REPORTE'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_imp.id(210497484724959244)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(161373486533099626)
,p_name=>'DA_ASIGNAR_FECHAS'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P539_PERIODO'
,p_condition_element=>'P539_PERIODO'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(161368142922099628)
,p_name=>'DA_AGREGAR_VENDEDOR'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(161341844238099655)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(161368683731099628)
,p_event_id=>wwv_flow_imp.id(161368142922099628)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P539_COD_VENDEDOR_CR_ED,P539_FEC_INICIO_CR_ED,P539_FEC_FIN_CR_ED,P539_MONTO_CR_ED'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(161370142553099627)
,p_event_id=>wwv_flow_imp.id(161368142922099628)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    IF :P539_INICIO IS NULL OR :P539_FIN IS NULL THEN',
'        :P539_INDICADOR_ALERT := ''1'';',
'    ELSE',
'        :P539_INDICADOR_ALERT := ''0'';',
'        :P539_FEC_INICIO_CR_ED := :P539_INICIO;',
'        :P539_FEC_FIN_CR_ED := :P539_FIN;',
'    END IF;',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;'))
,p_attribute_02=>'P539_FIN,P539_INICIO,P539_INDICADOR_ALERT'
,p_attribute_03=>'P539_FEC_INICIO_CR_ED,P539_FEC_FIN_CR_ED,P539_INDICADOR_ALERT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(161370628745099627)
,p_event_id=>wwv_flow_imp.id(161368142922099628)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Debe ingresar un periodo',
''))
,p_attribute_02=>'INGRESE UN PERIODO'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P539_INDICADOR_ALERT'
,p_client_condition_expression=>'1'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(161369177377099627)
,p_event_id=>wwv_flow_imp.id(161368142922099628)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(161335603152099668)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(161369618917099627)
,p_event_id=>wwv_flow_imp.id(161368142922099628)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(161335222055099669)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(161371116562099627)
,p_event_id=>wwv_flow_imp.id(161368142922099628)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(211819889483620628)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P539_INDICADOR_ALERT'
,p_client_condition_expression=>'0'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(161353463662099638)
,p_name=>'DA_CERRAR_REGION_CR_ED'
,p_event_sequence=>30
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(161336029196099668)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(161353938249099635)
,p_event_id=>wwv_flow_imp.id(161353463662099638)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(211819889483620628)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(161361055330099631)
,p_name=>'DA_OCULTAR_BTN_CR_ED'
,p_event_sequence=>40
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
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
 p_id=>wwv_flow_imp.id(161361570401099630)
,p_event_id=>wwv_flow_imp.id(161361055330099631)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(161335222055099669)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(161362001282099630)
,p_event_id=>wwv_flow_imp.id(161361055330099631)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(161335603152099668)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(161371506773099626)
,p_name=>'DA_ACTUALIZAR_COL'
,p_event_sequence=>50
,p_triggering_element_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_element=>'window'
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(161372588265099626)
,p_event_id=>wwv_flow_imp.id(161371506773099626)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    IF :P539_INICIO IS NULL OR :P539_FIN IS NULL THEN',
'        :P539_INDICADOR_ALERT := ''1'';',
'    ELSE',
'        :P539_INDICADOR_ALERT := ''0'';',
'        :P539_FEC_INICIO_CR_ED := :P539_INICIO;',
'        :P539_FEC_FIN_CR_ED := :P539_FIN;',
'    END IF;',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;'))
,p_attribute_02=>'P539_FIN,P539_INICIO,P539_INDICADOR_ALERT'
,p_attribute_03=>'P539_FEC_INICIO_CR_ED,P539_FEC_FIN_CR_ED,P539_INDICADOR_ALERT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_server_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(161373063918099626)
,p_event_id=>wwv_flow_imp.id(161371506773099626)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Debe ingresar un periodo',
''))
,p_attribute_02=>'INGRESE UN PERIODO'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P539_INDICADOR_ALERT'
,p_client_condition_expression=>'1'
,p_server_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(161372062962099626)
,p_event_id=>wwv_flow_imp.id(161371506773099626)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(211819017516620620)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(161355791218099634)
,p_name=>'DA_AGREGAR_MIEMBRO_COL'
,p_event_sequence=>60
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(161335222055099669)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(161356213412099633)
,p_event_id=>wwv_flow_imp.id(161355791218099634)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    IF :P539_COD_VENDEDOR_CR_ED IS NULL OR :P539_MONTO_CR_ED IS NULL THEN',
'        :P539_INDICADOR_ALERT := ''1'';',
'    ELSE',
'        :P539_INDICADOR_ALERT := ''0'';',
'        FVMETVENMAR.pr_agregar_miembro_col_vend(:P_COD_EMPRESA,',
'                                             :P539_COD_VENDEDOR_CR_ED,',
'                                             :P539_FEC_INICIO_CR_ED,',
'                                             :P539_FEC_FIN_CR_ED,',
'                                             :P539_MONTO_CR_ED,',
'                                             :P539_MES,',
'                                             :P539_ANIO,',
'                                             :P539_MARCA',
'                                                 );',
'    END IF;',
'',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;'))
,p_attribute_02=>'P539_INDICADOR_ALERT,P_COD_EMPRESA,P539_COD_VENDEDOR_CR_ED,P539_FEC_INICIO_CR_ED,P539_FEC_FIN_CR_ED,P539_MONTO_CR_ED,P539_MES,P539_ANIO,P539_MARCA'
,p_attribute_03=>'P539_INDICADOR_ALERT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(161357780971099633)
,p_event_id=>wwv_flow_imp.id(161355791218099634)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>unistr('Compruebe que los campos obligatorios no est\00E9n vac\00EDos.')
,p_attribute_02=>'CAMPOS OBLIGATORIOS VACIOS'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P539_INDICADOR_ALERT'
,p_client_condition_expression=>'1'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(161356749368099633)
,p_event_id=>wwv_flow_imp.id(161355791218099634)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(211819889483620628)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P539_INDICADOR_ALERT'
,p_client_condition_expression=>'0'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(161357210173099633)
,p_event_id=>wwv_flow_imp.id(161355791218099634)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(211819017516620620)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P539_INDICADOR_ALERT'
,p_client_condition_expression=>'0'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(161362417699099630)
,p_name=>'DA_ELIMINAR_MIEMBRO'
,p_event_sequence=>70
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P539_SEQ_ID_ELIMINAR'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(161363917122099630)
,p_event_id=>wwv_flow_imp.id(161362417699099630)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>unistr('\00BFDesea eliminar el registro?')
,p_attribute_02=>unistr('\00BFDesea eliminar el registro?')
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(161362981901099630)
,p_event_id=>wwv_flow_imp.id(161362417699099630)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
' ',
'        :P539_INDICADOR_ALERT := ''0'';',
'        FVMETVENMAR.pr_elminar_miembro_vendedor(:P539_SEQ_ID_ELIMINAR);',
'    ',
'',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;'))
,p_attribute_02=>'P539_SEQ_ID_ELIMINAR'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(161363437110099630)
,p_event_id=>wwv_flow_imp.id(161362417699099630)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(211819017516620620)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(161358191292099633)
,p_name=>'DA_ABRIR_EDITAR'
,p_event_sequence=>80
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P539_SEQ_ID_EDITAR'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(161359666673099632)
,p_event_id=>wwv_flow_imp.id(161358191292099633)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P539_COD_VENDEDOR_CR_ED,P539_FEC_INICIO_CR_ED,P539_FEC_FIN_CR_ED,P539_MONTO_CR_ED'
,p_server_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(161360114423099631)
,p_event_id=>wwv_flow_imp.id(161358191292099633)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(161335222055099669)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(161360644057099631)
,p_event_id=>wwv_flow_imp.id(161358191292099633)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(161335603152099668)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(161358602128099632)
,p_event_id=>wwv_flow_imp.id(161358191292099633)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    SELECT C001, D001, D002, N003,C004',
'    INTO    :P539_COD_VENDEDOR_CR_ED,',
'            :P539_FEC_INICIO_CR_ED,',
'            :P539_FEC_FIN_CR_ED,',
'            :P539_MONTO_CR_ED,',
'            :P539_MARCA',
'    FROM APEX_COLLECTIONS',
'    WHERE COLLECTION_NAME = ''VENDEDOR_CONCEPTO''',
'    AND SEQ_ID = :P539_SEQ_ID_EDITAR;',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;'))
,p_attribute_02=>'P539_SEQ_ID_EDITAR'
,p_attribute_03=>'P539_COD_VENDEDOR_CR_ED,P539_FEC_INICIO_CR_ED,P539_FEC_FIN_CR_ED,P539_MONTO_CR_ED,P539_MARCA'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(161359153475099632)
,p_event_id=>wwv_flow_imp.id(161358191292099633)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(211819889483620628)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(161364332888099630)
,p_name=>'DA_MODIFICAR_MIEMBRO'
,p_event_sequence=>90
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(161335603152099668)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(161364841019099629)
,p_event_id=>wwv_flow_imp.id(161364332888099630)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    IF :P539_COD_VENDEDOR_CR_ED IS NULL OR :P539_MONTO_CR_ED IS NULL THEN',
'        :P539_INDICADOR_ALERT := ''1'';',
'    ELSE',
'        :P539_INDICADOR_ALERT := ''0'';',
'        --APEX_DEBUG.ERROR(''ENTRA PROC'');',
'        --APEX_DEBUG.ERROR(:P539_SEQ_ID_EDITAR);',
'        FVMETVENMAR.pr_modificar_miembro_vendedor ( :P539_SEQ_ID_EDITAR,',
'                                                     :P_COD_EMPRESA,',
'                                                     :P539_COD_VENDEDOR_CR_ED,',
'                                                     :P539_FEC_INICIO_CR_ED,',
'                                                     :P539_FEC_FIN_CR_ED,',
'                                                     :P539_MONTO_CR_ED,',
'                                                     :P539_MES,',
'                                                     :P539_ANIO,',
'                                                     :P539_MARCA',
'                                                 );',
'        --APEX_DEBUG.ERROR(''SALE PROC'');',
'        --APEX_DEBUG.ERROR(:P539_SEQ_ID_EDITAR);',
'    END IF;',
'',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;'))
,p_attribute_02=>'P539_INDICADOR_ALERT,P_COD_EMPRESA,P539_COD_VENDEDOR_CR_ED,P539_FEC_INICIO_CR_ED,P539_FEC_FIN_CR_ED,P539_MONTO_CR_ED,P539_SEQ_ID_EDITAR,P539_MES,P539_ANIO,P539_MARCA'
,p_attribute_03=>'P539_INDICADOR_ALERT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(161365313120099629)
,p_event_id=>wwv_flow_imp.id(161364332888099630)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>unistr('Compruebe que los campos obligatorios no est\00E9n vac\00EDos.')
,p_attribute_02=>'CAMPOS OBLIGATORIOS VACIOS'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P539_INDICADOR_ALERT'
,p_client_condition_expression=>'1'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(161365843269099629)
,p_event_id=>wwv_flow_imp.id(161364332888099630)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(211819889483620628)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P539_INDICADOR_ALERT'
,p_client_condition_expression=>'0'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(161366323564099628)
,p_event_id=>wwv_flow_imp.id(161364332888099630)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(211819017516620620)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P539_INDICADOR_ALERT'
,p_client_condition_expression=>'0'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(161366771703099628)
,p_name=>'DA_GUARDAR_CAMBIOS'
,p_event_sequence=>100
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(161332912439099682)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(152905822953462247)
,p_event_id=>wwv_flow_imp.id(161366771703099628)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF :P539_ANIO IS NOT NULL AND :P539_MES IS NOT NULL THEN',
'    DECLARE',
'        DUMMY VARCHAR2(1);',
'    BEGIN',
'        SELECT  DISTINCT ''1''',
'        INTO DUMMY',
'        FROM APEX_COLLECTIONS',
'        WHERE COLLECTION_NAME = ''VENDEDOR_CONCEPTO'' ',
'        AND nvl(c020, ''O'') <> ''B'' ; ',
'',
'    EXCEPTION',
'        WHEN NO_DATA_FOUND THEN',
'            raise_application_error(-20001, ''No existen detalles para guardar'');',
'        WHEN OTHERS THEN',
'            raise_application_error(-20201, ''Error al intentar guardar'');',
'    END;',
' ELSE',
'',
unistr('            raise_application_error(-20001, ''Debe Cargar el Periodo: Mes/A\00F1o'');'),
' END IF;'))
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(161367246148099628)
,p_event_id=>wwv_flow_imp.id(161366771703099628)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('\00BFDesea guardar los cambios?'),
''))
,p_attribute_02=>unistr('\00BFDesea guardar los cambios?')
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(161367764508099628)
,p_event_id=>wwv_flow_imp.id(161366771703099628)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_01=>'GUARDAR'
,p_attribute_02=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(152904502125462234)
,p_name=>'da_periodo'
,p_event_sequence=>120
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P539_ANIO'
,p_condition_element=>'P539_ANIO'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(152905626659462245)
,p_event_id=>wwv_flow_imp.id(152904502125462234)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P539_INICIO,P539_FIN'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(161374458403099625)
,p_event_id=>wwv_flow_imp.id(152904502125462234)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    IF :P539_MES IS NOT NULL THEN ',
'    	BEGIN',
'                select to_date(''01''||''/''||:P539_mes||''/''||:P539_anio,''DD/MM/YYYY''),LAST_DAY(to_date(''01''||''/''||:P539_mes||''/''||:P539_anio,''DD/MM/YYYY''))',
'                INTO 	:P539_INICIO, :P539_FIN',
'                from dual;',
' ',
'    		EXCEPTION ',
'    			WHEN OTHERS THEN',
'    			:P539_INICIO :=NULL;',
'    			:P539_FIN :=NULL;',
'    			',
'    		END;',
'    ELSE',
'    	:P539_INICIO :=NULL;',
'    	:P539_FIN :=NULL;',
'    END IF;',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;'))
,p_attribute_02=>'P539_INICIO,P539_FIN,P539_MES,P539_ANIO'
,p_attribute_03=>'P539_INICIO,P539_FIN'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(161373925672099625)
,p_event_id=>wwv_flow_imp.id(152904502125462234)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P539_INICIO,P539_FIN'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(161374943673099625)
,p_event_id=>wwv_flow_imp.id(152904502125462234)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    if :P539_INICIO is not null and :P539_FIN is not null then',
'        FVMETVENMAR.pr_crear_col_vendedor ( :P539_INICIO,',
'                                         :P539_FIN,',
'                                         :P_COD_EMPRESA);',
'    end if;',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;',
'',
'',
''))
,p_attribute_02=>'P539_INICIO,P539_FIN,P_COD_EMPRESA'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(161375456135099625)
,p_event_id=>wwv_flow_imp.id(152904502125462234)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(211819017516620620)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(161354378035099635)
,p_name=>'DA_CARGAR_REPORTE'
,p_event_sequence=>130
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P539_ANIO'
,p_condition_element=>'P539_ANIO'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(161355335474099634)
,p_event_id=>wwv_flow_imp.id(161354378035099635)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'        :P539_INDICADOR_REPORTE := ''1'';',
'',
'        FVMETVENMAR.pr_crear_col_vendedor ( TO_DATE (:P539_INICIO, ''MM/DD/YYYY''),',
'                                         TO_DATE (:P539_FIN, ''MM/DD/YYYY''),',
'                                         :P_COD_EMPRESA);',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;',
'',
'',
''))
,p_attribute_02=>'P539_INICIO,P539_FIN,P_COD_EMPRESA'
,p_attribute_03=>'P539_INDICADOR_REPORTE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(161354835746099635)
,p_event_id=>wwv_flow_imp.id(161354378035099635)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(211819017516620620)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(152905296259462241)
,p_name=>'New'
,p_event_sequence=>140
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P539_MES'
,p_condition_element=>'P539_MES'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(152905340991462242)
,p_event_id=>wwv_flow_imp.id(152905296259462241)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P539_ANIO,P539_INICIO,P539_FIN'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(161352256817099643)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'PR_LIMPIAR_DATOS'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(161351830407099644)
,p_process_sequence=>20
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_INIT'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
':P539_COD_MODULO := ''FV'';',
':P539_INDICADOR_ALERT := ''0'';',
':P539_COD_USUARIO := :APP_USER;',
':P539_FEC_ALTA := SYSDATE;',
'',
':P539_CONC_SUELDO := BS_BUSCA_PARAMETRO(''RH'',''RH_CONC_SUELDO'');',
':P539_CONC_ANTICIPO := BS_BUSCA_PARAMETRO(''RH'',''RH_CONC_ANTICIPO'');',
':P539_CONC_ASOCIACION := BS_BUSCA_PARAMETRO(''RH'',''RH_CONC_ASOCIACION'');',
':P539_SER_DEBCRED_RH:= BS_BUSCA_PARAMETRO(''RH'',''RH_SER_DEBCRED'');',
':P539_FEC_DEBCRED := TRAE_FECHA( :P_COD_EMPRESA, :P539_COD_MODULO) ;',
':P539_JORNAL_MES  := TO_NUMBER( LTRIM(RTRIM(BS_BUSCA_PARAMETRO(''RH'',''RH_JORNAL_MES''))));',
'',
':P539_INDICADOR_REPORTE := ''0'';',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;'))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(161352668035099643)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_GUARDAR_CAMBIOS'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
' ',
'BEGIN ',
'    FVMETVENMAR.pr_guardar_cambios (   :P_COD_EMPRESA,',
'                                    :P539_OBSERVACION,',
'                                    :P539_COD_USUARIO,',
'                                    :P539_FEC_ALTA);',
'',
'EXCEPTION ',
'    WHEN OTHERS THEN',
'        raise_application_error(-20201, ''Error al intentar guardar'');',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>unistr('Ups... ocurri\00F3 un error!')
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'GUARDAR'
,p_process_when_type=>'REQUEST_EQUALS_CONDITION'
,p_process_success_message=>unistr('\00A1Los cambios se guardaron exitosamente!')
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(161353083421099639)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_LIMPIAR_ARCHIVO'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P216_FILE_NAME := NULL;',
':P216_FILE := NULL;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(161341459347099655)
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(152905785239462246)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'valida'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    dummy varchar2(10);',
'begin',
'        select distinct ''1''',
'        into dummy',
'        from dual',
'        where :P539_ANIO is not null',
'        and   :P539_MES is not null;',
'exception',
unistr('    when others then     raise_application_error(-20000, ''Debe Cargar el Periodo:  Mes/A\00F1o'' );'),
'end;'))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>unistr('Debe Cargar el Periodo:  Mes/A\00F1o')
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(161341459347099655)
);
wwv_flow_imp.component_end;
end;
/
