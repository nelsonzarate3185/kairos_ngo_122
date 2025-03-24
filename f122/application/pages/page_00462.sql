prompt --application/pages/page_00462
begin
--   Manifest
--     PAGE: 00462
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
 p_id=>462
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>unistr('\00D3rdenes de Trabajo Vehicular - RPROTV')
,p_alias=>'RPROTV'
,p_step_title=>unistr('\00D3rdenes de Trabajo Vehicular - RPROTV')
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_last_updated_by=>'FCARDOZO'
,p_last_upd_yyyymmddhh24miss=>'20230331152509'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(133812600405759920)
,p_plug_name=>'VARIABLES'
,p_region_template_options=>'#DEFAULT#:js-dialog-size600x400'
,p_plug_template=>wwv_flow_imp.id(40117728043263659)
,p_plug_display_sequence=>990
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(135898027391627538)
,p_plug_name=>unistr('\00D3rdenes de Trabajo Vehicular')
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>1000
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(133812561488759919)
,p_plug_name=>'REPORT'
,p_parent_plug_id=>wwv_flow_imp.id(135898027391627538)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>1010
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select  SEQ_ID,',
'        c001 COD_EMPRESA,',
'        c002 NUM_ORDEN,',
'        c003 COD_SERVICIO,',
'        c004 TIPO,',
'        c005 DESCSERVICIO,',
'        c006 COD_UNIDAD_MED,',
'        c007 CANTIDAD,',
'        c008 COSTO,',
'        c009 TOTAL,',
'        c010 OBSERVACIONES,',
'        c011 nro_item,',
'        c012 r_id,',
'        NULL EDITAR,',
'        NULL ELIMINAR',
'  from APEX_COLLECTIONS',
'  WHERE COLLECTION_NAME = ''COL_DET_RPROTV''',
'  and nvl(c020,''X'') <> ''D'''))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'REPORT'
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
 p_id=>wwv_flow_imp.id(133812771432759921)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'FCARDOZO'
,p_internal_uid=>133812771432759921
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(133812896845759922)
,p_db_column_name=>'COD_EMPRESA'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Cod Empresa'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(133813255806759926)
,p_db_column_name=>'COD_UNIDAD_MED'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Unidad'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(133813625417759930)
,p_db_column_name=>'OBSERVACIONES'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Observaciones'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(136394348133293233)
,p_db_column_name=>'EDITAR'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'&nbsp'
,p_column_link=>'javascript:$s(''P462_EDITAR_AUX'',''#SEQ_ID#'');'
,p_column_linktext=>'<span aria-hidden="true" class="fa fa-edit"></span>'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_display_condition_type=>'FUNCTION_BODY'
,p_display_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'VCONTROL NUMBER;',
'BEGIN',
'/*IF :APP_USER = ''ETRINIDAD'' THEN',
'   RETURN TRUE;',
'   ELSE*/',
'    VCONTROL := SEGURIDAD_GRANULAR.RETORNA_PERMISO_BOTON(ppage_id     => :APP_PAGE_ID,',
'                                                         papli0100_id => :P_APLI0100_ID,',
'                                                         pcod_empresa => :P_COD_EMPRESA,',
'                                                         pusua0100_id => :P_USUA0100_ID,',
'                                                         pdm_boto     => 2); ',
'',
'    IF VCONTROL = 0 or :P9_MODIFICABLE = ''-1'' THEN',
'        RETURN FALSE;',
'    ELSE',
'        RETURN TRUE;',
'    END IF;    ',
'   --END IF;                                                 ',
'END;'))
,p_display_condition2=>'PLSQL'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(136394424892293234)
,p_db_column_name=>'ELIMINAR'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>'&nbsp'
,p_column_link=>'javascript:$s(''P462_ELIMINAR'',''#SEQ_ID#'');'
,p_column_linktext=>'<span class="fa fa-trash-o" aria-hidden="true"></span>'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_display_condition_type=>'FUNCTION_BODY'
,p_display_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'VCONTROL NUMBER;',
'BEGIN',
'/*IF :APP_USER = ''ETRINIDAD'' THEN',
'   RETURN TRUE;',
'   ELSE*/',
'    VCONTROL := SEGURIDAD_GRANULAR.RETORNA_PERMISO_BOTON(ppage_id     => :APP_PAGE_ID,',
'                                                         papli0100_id => :P_APLI0100_ID,',
'                                                         pcod_empresa => :P_COD_EMPRESA,',
'                                                         pusua0100_id => :P_USUA0100_ID,',
'                                                         pdm_boto     => 3); ',
'',
'    IF VCONTROL = 0 or :P9_MODIFICABLE = ''-1'' THEN',
'        RETURN FALSE;',
'    ELSE',
'        RETURN TRUE;',
'    END IF;    ',
'   --END IF;                                                 ',
'END;'))
,p_display_condition2=>'PLSQL'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(137089724705548601)
,p_db_column_name=>'SEQ_ID'
,p_display_order=>150
,p_column_identifier=>'O'
,p_column_label=>'Seq Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(137089834195548602)
,p_db_column_name=>'NUM_ORDEN'
,p_display_order=>160
,p_column_identifier=>'P'
,p_column_label=>'Num Orden'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(137089990693548603)
,p_db_column_name=>'COD_SERVICIO'
,p_display_order=>170
,p_column_identifier=>'Q'
,p_column_label=>'Servicio'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(137090091897548604)
,p_db_column_name=>'TIPO'
,p_display_order=>180
,p_column_identifier=>'R'
,p_column_label=>'Tipo'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(137090194367548605)
,p_db_column_name=>'DESCSERVICIO'
,p_display_order=>190
,p_column_identifier=>'S'
,p_column_label=>unistr('Descripci\00F3n del servicio')
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(137090299697548606)
,p_db_column_name=>'CANTIDAD'
,p_display_order=>200
,p_column_identifier=>'T'
,p_column_label=>'Cantidad'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(137090318518548607)
,p_db_column_name=>'COSTO'
,p_display_order=>210
,p_column_identifier=>'U'
,p_column_label=>'Precio'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(137090483729548608)
,p_db_column_name=>'TOTAL'
,p_display_order=>220
,p_column_identifier=>'V'
,p_column_label=>'SubTotal'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(137090596157548609)
,p_db_column_name=>'R_ID'
,p_display_order=>230
,p_column_identifier=>'W'
,p_column_label=>'R Id'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(136947244628258302)
,p_db_column_name=>'NRO_ITEM'
,p_display_order=>240
,p_column_identifier=>'X'
,p_column_label=>unistr('\00CDtem')
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(135910368874625911)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1359104'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>10
,p_report_columns=>'EDITAR:NRO_ITEM:COD_SERVICIO:TIPO:DESCSERVICIO:COD_UNIDAD_MED:CANTIDAD:COSTO:TOTAL:OBSERVACIONES:ELIMINAR:'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(135897942614627537)
,p_plug_name=>'MAIN'
,p_parent_plug_id=>wwv_flow_imp.id(135898027391627538)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>990
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(133812477886759918)
,p_plug_name=>'CABECERA'
,p_parent_plug_id=>wwv_flow_imp.id(135897942614627537)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--removeHeader:t-Region--noBorder:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>1000
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(135897729157627535)
,p_plug_name=>'RETIRA'
,p_parent_plug_id=>wwv_flow_imp.id(133812477886759918)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--removeHeader:t-Region--noBorder:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>250
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(135898405280627542)
,p_plug_name=>'TOTALES'
,p_parent_plug_id=>wwv_flow_imp.id(135898027391627538)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>1020
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(136395044251293240)
,p_plug_name=>'Crear/Editar'
,p_region_template_options=>'#DEFAULT#:js-dialog-size600x400'
,p_plug_template=>wwv_flow_imp.id(40117728043263659)
,p_plug_display_sequence=>1010
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(136391605925293206)
,p_button_sequence=>260
,p_button_plug_id=>wwv_flow_imp.id(133812477886759918)
,p_button_name=>'Guardar2'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Guardar2'
,p_warn_on_unsaved_changes=>null
,p_button_condition_type=>'NEVER'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(136950150487258331)
,p_button_sequence=>120
,p_button_plug_id=>wwv_flow_imp.id(136395044251293240)
,p_button_name=>'Cancelar'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_image_alt=>'Cancelar'
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(136948072108258310)
,p_button_sequence=>100
,p_button_plug_id=>wwv_flow_imp.id(136395044251293240)
,p_button_name=>'Guardar'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Guardar'
,p_button_position=>'CREATE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(136391558098293205)
,p_button_sequence=>270
,p_button_plug_id=>wwv_flow_imp.id(133812477886759918)
,p_button_name=>'NUEVA_ORDEN'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Nueva Orden'
,p_button_position=>'CREATE'
,p_warn_on_unsaved_changes=>null
,p_button_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(137091265179548616)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(135898027391627538)
,p_button_name=>'bt_buscar'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_image_alt=>'Buscar'
,p_button_position=>'EDIT'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(136391442788293204)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(135898027391627538)
,p_button_name=>'LIMPIAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_image_alt=>'Limpiar'
,p_button_position=>'EDIT'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(137090927104548613)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(135898027391627538)
,p_button_name=>'Confirmar'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Confirmar'
,p_button_position=>'EDIT'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'--SEGURIDAD_GRANULAR MOSTRAR_CONFIRMAR ',
'BEGIN',
'   RETURN SEGURIDAD_GRANULAR.FC_MOSTRAR_CONFIRMAR (pusua0100_id => :P_USUA0100_ID,',
'                                                   ppage_id => :APP_PAGE_ID,',
'                                                papli0100_id => :P_APLI0100_ID);',
'END;'))
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'FUNCTION_BODY'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(137091170086548615)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(133812561488759919)
,p_button_name=>'bt_Agregar_detalle'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Agregar Detalle'
,p_button_position=>'TOP'
,p_warn_on_unsaved_changes=>null
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'VCONTROL NUMBER;',
'BEGIN',
'/*IF :APP_USER = ''ETRINIDAD'' THEN',
'   RETURN TRUE;',
'   ELSE*/',
'    VCONTROL := SEGURIDAD_GRANULAR.RETORNA_PERMISO_BOTON(ppage_id     => :APP_PAGE_ID,',
'                                                         papli0100_id => :P_APLI0100_ID,',
'                                                         pcod_empresa => :P_COD_EMPRESA,',
'                                                         pusua0100_id => :P_USUA0100_ID,',
'                                                         pdm_boto     => 1); ',
'',
'    IF VCONTROL = 0 or :P9_MODIFICABLE = ''-1'' THEN',
'        RETURN FALSE;',
'    ELSE',
'        RETURN TRUE;',
'    END IF;    ',
'   --END IF;                                                 ',
'END;'))
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'FUNCTION_BODY'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(133813719885759931)
,p_name=>'P462_DERECHOS'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(133812600405759920)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(133813834035759932)
,p_name=>'P462_COD_MODULO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(133812600405759920)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(133813943631759933)
,p_name=>'P462_NOM_MODULO'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(133812600405759920)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(133814022248759934)
,p_name=>'P462_COD_FORMA'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(133812600405759920)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(133814100294759935)
,p_name=>'P462_NOM_FORMA'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(133812600405759920)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(133814275714759936)
,p_name=>'P462_COD_EMPRESA'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(133812600405759920)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(133814302605759937)
,p_name=>'P462_NOM_EMPRESA'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(133812600405759920)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(133814444732759938)
,p_name=>'P462_COD_SUCURSAL'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(133812600405759920)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(133814505170759939)
,p_name=>'P462_NOM_SUCURSAL'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(133812600405759920)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(133814656707759940)
,p_name=>'P462_COD_USUARIO'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(133812600405759920)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(133814762733759941)
,p_name=>'P462_COD_IDIOMA'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(133812600405759920)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(133814831617759942)
,p_name=>'P462_CODSISMENU'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(133812600405759920)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(135895635935627514)
,p_name=>'P462_NUM_ORDEN'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(133812477886759918)
,p_prompt=>unistr('N\00FAmero Orden')
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_colspan=>3
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(135895701863627515)
,p_name=>'P462_COD_VEHICULO'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(133812477886759918)
,p_prompt=>unistr('Veh\00EDculo')
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_VEHICULOS_RPROTV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT VE.COD_VEHICULO,',
'       VE.DESCRIPCION,',
'       VE.CHAPA,',
'       VT.DESCRIPCION TIPO,',
'       decode(VE.ACTIVO, ''S'', ''ACTIVO'', ''INACTIVO'') estado,',
'       MR.DESCRIPCION MARCA,',
'       MO.DESCRIPCION MODELO',
'  FROM RP_VEHICULOS VE,',
'       RP_MODELOS MO,',
'       RP_MARCAS MR,',
'       RP_VEHICULOS_TIPOS VT',
' WHERE VE.COD_EMPRESA = :P_COD_EMPRESA',
'   AND VE.COD_MARCA   = MR.COD_MARCA(+)',
'   AND VE.COD_MODELO  = MO.COD_MODELO(+)',
'   AND MR.COD_MARCA   = MO.COD_MARCA(+)'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_begin_on_new_line=>'N'
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
 p_id=>wwv_flow_imp.id(135895813811627516)
,p_name=>'P462_COD_TALLER'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(133812477886759918)
,p_prompt=>'Taller/Proveedor'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_PROVEEDORES_RPROTV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select pe.nombre, ',
'       pro.cod_proveedor, ',
'       ipe.numero',
'  from cm_proveedores pro, personas pe, ident_personas ipe',
' where pro.cod_empresa = 1',
'   and ipe.cod_ident = ''RUC''',
'   and pe.nombre not like ''%NO USAR%''',
'   and ipe.numero is not null',
'   and pro.cod_persona = pe.cod_persona',
'   and pro.cod_persona = ipe.cod_persona',
'   ',
'UNION ALL',
'select pe.nombre, ',
'       pro.cod_proveedor, ',
'       ipe.numero',
'  from cm_proveedores pro, personas pe, ident_personas ipe',
' where pro.cod_empresa = 1',
'   and ipe.cod_ident = ''CI''',
'   and pe.nombre not like ''%NO USAR%''',
'   and ipe.numero is not null',
'   and pro.cod_persona = pe.cod_persona',
'   and pro.cod_persona = ipe.cod_persona',
' order by 1 ASC'))
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
 p_id=>wwv_flow_imp.id(135895984934627517)
,p_name=>'P462_COD_PER_AUTORIZA'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(133812477886759918)
,p_prompt=>'Autorizado por'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT COD_PER_AUTORIZA',
'FROM RP_ORD_TRAB_CAB;'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_begin_on_new_line=>'N'
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
 p_id=>wwv_flow_imp.id(135896090893627518)
,p_name=>'P462_NRO_PRESUPUESTO'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(133812477886759918)
,p_prompt=>'Nro. Presupuesto'
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
 p_id=>wwv_flow_imp.id(135896140109627519)
,p_name=>'P462_ESTADO'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(133812477886759918)
,p_prompt=>'Estado'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:PENDIENTE;PENDIENTE,FINALIZADO;FINALIZADO,CANCELADO;CANCELADO'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(135896256249627520)
,p_name=>'P462_NRO_CHAPA'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(133812477886759918)
,p_prompt=>'Nro. Chapa'
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
 p_id=>wwv_flow_imp.id(135896323010627521)
,p_name=>'P462_DESC_VEHICULO'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(133812477886759918)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(135896411308627522)
,p_name=>'P462_NOM_TALLER'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(133812477886759918)
,p_prompt=>'Nom Taller'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_PROVEEDORES_RPROTV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select pe.nombre, ',
'       pro.cod_proveedor, ',
'       ipe.numero',
'  from cm_proveedores pro, personas pe, ident_personas ipe',
' where pro.cod_empresa = 1',
'   and ipe.cod_ident = ''RUC''',
'   and pe.nombre not like ''%NO USAR%''',
'   and ipe.numero is not null',
'   and pro.cod_persona = pe.cod_persona',
'   and pro.cod_persona = ipe.cod_persona',
'   ',
'UNION ALL',
'select pe.nombre, ',
'       pro.cod_proveedor, ',
'       ipe.numero',
'  from cm_proveedores pro, personas pe, ident_personas ipe',
' where pro.cod_empresa = 1',
'   and ipe.cod_ident = ''CI''',
'   and pe.nombre not like ''%NO USAR%''',
'   and ipe.numero is not null',
'   and pro.cod_persona = pe.cod_persona',
'   and pro.cod_persona = ipe.cod_persona',
' order by 1 ASC'))
,p_lov_display_null=>'YES'
,p_lov_cascade_parent_items=>'P462_COD_TALLER'
,p_ajax_items_to_submit=>'P462_COD_TALLER'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>30
,p_begin_on_new_line=>'N'
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
 p_id=>wwv_flow_imp.id(135896578090627523)
,p_name=>'P462_NOM_PER_AUTORIZA'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(133812477886759918)
,p_prompt=>'Nom Per Autoriza'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_PERSONA_AUTORIZA_RPROTV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select pe.nombre,',
'       pe.cod_persona',
'  from personas pe',
' where pe.cod_persona in (select u.cod_persona',
'                             from usuarios u,',
'                                  permisos_opciones p',
'                            where u.cod_usuario = p.cod_usuario',
'                              and p.nom_forma   = :P462_cod_forma)'))
,p_lov_cascade_parent_items=>'P462_COD_PER_AUTORIZA'
,p_ajax_items_to_submit=>'P462_COD_PER_AUTORIZA'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>30
,p_begin_on_new_line=>'N'
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
 p_id=>wwv_flow_imp.id(135896621543627524)
,p_name=>'P462_CONDICION_PAGO'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(133812477886759918)
,p_prompt=>'Cond. Pago'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:CONTADO;CONTA,CREDITO 15 DIAS;CRED15,CREDITO 30 DIAS;CRED30,CREDITO 60 DIAS;CRED60'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(135896761345627525)
,p_name=>'P462_FACTURA'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(133812477886759918)
,p_prompt=>'Factura'
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
 p_id=>wwv_flow_imp.id(135896856514627526)
,p_name=>'P462_COD_PER_RETIRA'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_imp.id(133812477886759918)
,p_prompt=>'Retirado por'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT COD_PER_RETIRA',
'FROM RP_ORD_TRAB_CAB;',
''))
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
 p_id=>wwv_flow_imp.id(135896997461627527)
,p_name=>'P462_NOM_PER_RETIRA'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_imp.id(133812477886759918)
,p_prompt=>'Nom Per Retira'
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
 p_id=>wwv_flow_imp.id(135897058830627528)
,p_name=>'P462_FECHA_SALIDA'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_imp.id(133812477886759918)
,p_prompt=>'Fec. Salida'
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
 p_id=>wwv_flow_imp.id(135897136544627529)
,p_name=>'P462_FECHA_COMPROMISO'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_imp.id(133812477886759918)
,p_prompt=>'Fin Trabajo'
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
 p_id=>wwv_flow_imp.id(135897271843627530)
,p_name=>'P462_FECHA_RETORNO'
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_imp.id(133812477886759918)
,p_prompt=>'Fec. Retorno'
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
 p_id=>wwv_flow_imp.id(135897356031627531)
,p_name=>'P462_KM_IDA'
,p_item_sequence=>220
,p_item_plug_id=>wwv_flow_imp.id(133812477886759918)
,p_prompt=>'KM/HR - Salida'
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
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(135897445598627532)
,p_name=>'P462_KM_RETORNO'
,p_item_sequence=>230
,p_item_plug_id=>wwv_flow_imp.id(133812477886759918)
,p_prompt=>'KM/HR - Retorno'
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
 p_id=>wwv_flow_imp.id(135897578107627533)
,p_name=>'P462_KM_ULT_MANT'
,p_item_sequence=>240
,p_item_plug_id=>wwv_flow_imp.id(133812477886759918)
,p_prompt=>'KM/HR - Ult. Mant.'
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
 p_id=>wwv_flow_imp.id(135898512157627543)
,p_name=>'P462_MONTO_TOTAL'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(135898405280627542)
,p_prompt=>'Importe Total'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_colspan=>4
,p_grid_column=>6
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(135898852255627546)
,p_name=>'P462_OBTENER_DATOS'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(135898405280627542)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(136391169624293201)
,p_name=>'P462_TOTAL'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(133812561488759919)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(136391319019293203)
,p_name=>'P462_ROWID'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(133812561488759919)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(136393672122293226)
,p_name=>'P462_ERR'
,p_item_sequence=>270
,p_item_plug_id=>wwv_flow_imp.id(133812477886759918)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(136393952512293229)
,p_name=>'P462_EDITAR'
,p_item_sequence=>280
,p_item_plug_id=>wwv_flow_imp.id(133812477886759918)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(136394546366293235)
,p_name=>'P462_ELIMINAR'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(133812561488759919)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(136395128001293241)
,p_name=>'P462_NUM_ORDEN_AUX'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(136395044251293240)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(136395232559293242)
,p_name=>'P462_NRO_ITEM'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(136395044251293240)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(136395362929293243)
,p_name=>'P462_COD_SERVICIO'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(136395044251293240)
,p_prompt=>'Cod Servicio'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select cod_servicio||'' - ''||descripcion d, cod_servicio r ',
'from  RP_SERV_MANT',
'--where cod_empresa=:P_COD_EMPRESA '))
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
 p_id=>wwv_flow_imp.id(136395433989293244)
,p_name=>'P462_COD_UNIDAD_MED'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(136395044251293240)
,p_prompt=>'Cod Unidad Med'
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
 p_id=>wwv_flow_imp.id(136395595544293245)
,p_name=>'P462_CANTIDAD'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(136395044251293240)
,p_prompt=>'Cantidad'
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
 p_id=>wwv_flow_imp.id(136395631924293246)
,p_name=>'P462_COSTO'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(136395044251293240)
,p_prompt=>'Costo'
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
 p_id=>wwv_flow_imp.id(136395787254293247)
,p_name=>'P462_TOTAL_AUX'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(136395044251293240)
,p_prompt=>'Total Aux'
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
 p_id=>wwv_flow_imp.id(136395882331293248)
,p_name=>'P462_OBSERVACIONES'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(136395044251293240)
,p_prompt=>'Observaciones'
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
 p_id=>wwv_flow_imp.id(136395944030293249)
,p_name=>'P462_TIPO'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(136395044251293240)
,p_prompt=>'Tipo'
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
 p_id=>wwv_flow_imp.id(136947306610258303)
,p_name=>'P462_EDITAR_AUX'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(133812561488759919)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(136949225393258322)
,p_name=>'P462_DESCRIPCION'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(136395044251293240)
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
 p_id=>wwv_flow_imp.id(136949574147258325)
,p_name=>'P462_SEQ_ID'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(136395044251293240)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(131399669743803825)
,p_name=>'da_traer_datos'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P462_NUM_ORDEN'
,p_condition_element=>'P462_NUM_ORDEN'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
,p_display_when_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(131399763453803826)
,p_event_id=>wwv_flow_imp.id(131399669743803825)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'select ESTADO, ',
'       COD_VEHICULO,',
'       COD_TALLER,',
'       COD_PER_AUTORIZA,',
'       NRO_PRESUPUESTO,',
'       CONDICION_PAGO,',
'       FACTURA,',
'       COD_PER_RETIRA,',
'       FECHA_SALIDA,',
'       FECHA_COMPROMISO,',
'       FECHA_RETORNO,',
'       KM_IDA,',
'       KM_RETORNO,',
'       KM_ULT_MANT',
'into :P462_ESTADO,',
'     :P462_COD_VEHICULO,',
'     :P462_COD_TALLER,',
'     :P462_COD_PER_AUTORIZA,',
'     :P462_NRO_PRESUPUESTO,',
'     :P462_CONDICION_PAGO,',
'     :P462_FACTURA,',
'     :P462_COD_PER_RETIRA,',
'     :P462_FECHA_SALIDA,',
'     :P462_FECHA_COMPROMISO,',
'     :P462_FECHA_RETORNO,',
'     :P462_KM_IDA,',
'     :P462_KM_RETORNO,',
'     :P462_KM_ULT_MANT',
'',
'from RP_ORD_TRAB_CAB ',
'where cod_empresa = :P_COD_EMPRESA',
'and NUM_ORDEN = :P462_NUM_ORDEN;',
'exception',
'    when others then ',
'    apex_Debug.error(''recuperacion datos:''||sqlerrm);',
'end;',
'',
'',
'begin',
'     RPROTV.PR_OBTENER_DETALLE (PI_COD_EMPRESA => :P_COD_EMPRESA,',
'                                PI_NUM_ORDEN => :P462_NUM_ORDEN);',
'exception',
'    when others then ',
'    apex_Debug.error(''armador coleccion:''||sqlerrm);',
'end;'))
,p_attribute_02=>'P462_NUM_ORDEN,P462_NRO_PRESUPUESTO'
,p_attribute_03=>'P462_ESTADO,P462_COD_VEHICULO,P462_COD_TALLER,P462_COD_PER_AUTORIZA,P462_CONDICION_PAGO,P462_FACTURA,P462_COD_PER_RETIRA,P462_FECHA_SALIDA,P462_FECHA_COMPROMISO,P462_FECHA_RETORNO,P462_KM_IDA,P462_KM_RETORNO,P462_KM_ULT_MANT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(131399836838803827)
,p_event_id=>wwv_flow_imp.id(131399669743803825)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(133812561488759919)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(131399964114803828)
,p_event_id=>wwv_flow_imp.id(131399669743803825)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'select SUM(TOTAL)',
'INTO :P462_MONTO_TOTAL       ',
'from RP_ORD_TRAB_DET',
'WHERE COD_EMPRESA = :P_COD_EMPRESA',
'AND  NUM_ORDEN = :P462_NUM_ORDEN;',
'',
':P462_MONTO_TOTAL := TO_CHAR(:P462_MONTO_TOTAL, ''FML999G999G999G999G999D00'');',
'EXCEPTION',
'WHEN OTHERS THEN',
'    APEX_dEBUG.ERROR(SQLERRM);',
'END;'))
,p_attribute_02=>'P462_NUM_ORDEN'
,p_attribute_03=>'P462_MONTO_TOTAL'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(137091376169548617)
,p_name=>'da_traer_datos_1'
,p_event_sequence=>30
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(137091265179548616)
,p_condition_element=>'P462_NUM_ORDEN'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(137091448716548618)
,p_event_id=>wwv_flow_imp.id(137091376169548617)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'select ESTADO, ',
'       COD_VEHICULO,',
'       COD_TALLER,',
'       COD_PER_AUTORIZA,',
'       NRO_PRESUPUESTO,',
'       CONDICION_PAGO,',
'       FACTURA,',
'       COD_PER_RETIRA,',
'       FECHA_SALIDA,',
'       FECHA_COMPROMISO,',
'       FECHA_RETORNO,',
'       KM_IDA,',
'       KM_RETORNO,',
'       KM_ULT_MANT',
'into :P462_ESTADO,',
'     :P462_COD_VEHICULO,',
'     :P462_COD_TALLER,',
'     :P462_COD_PER_AUTORIZA,',
'     :P462_NRO_PRESUPUESTO,',
'     :P462_CONDICION_PAGO,',
'     :P462_FACTURA,',
'     :P462_COD_PER_RETIRA,',
'     :P462_FECHA_SALIDA,',
'     :P462_FECHA_COMPROMISO,',
'     :P462_FECHA_RETORNO,',
'     :P462_KM_IDA,',
'     :P462_KM_RETORNO,',
'     :P462_KM_ULT_MANT',
'',
'from RP_ORD_TRAB_CAB ',
'where cod_empresa = :P_COD_EMPRESA',
'and NUM_ORDEN = :P462_NUM_ORDEN;',
'exception',
'    when others then ',
'    apex_Debug.error(''recuperacion datos:''||sqlerrm);',
'    :P462_ESTADO := NULL;',
'     :P462_COD_VEHICULO  := NULL;',
'     :P462_COD_TALLER  := NULL;',
'     :P462_COD_PER_AUTORIZA  := NULL;',
'     :P462_NOM_PER_AUTORIZA  := NULL;',
'     :P462_NRO_PRESUPUESTO  := NULL;',
'     :P462_CONDICION_PAGO  := NULL;',
'     :P462_FACTURA  := NULL;',
'     :P462_COD_PER_RETIRA  := NULL;',
'     :P462_NOM_PER_RETIRA := NULL;',
'     :P462_FECHA_SALIDA  := NULL;',
'     :P462_FECHA_COMPROMISO  := NULL;',
'     :P462_FECHA_RETORNO  := NULL;',
'     :P462_KM_IDA  := NULL;',
'     :P462_KM_RETORNO  := NULL;',
'     :P462_KM_ULT_MANT  := NULL;',
'     :P462_NRO_CHAPA  := NULL;',
'end;',
'',
'',
'begin',
'     RPROTV.PR_OBTENER_DETALLE (PI_COD_EMPRESA => :P_COD_EMPRESA,',
'                                PI_NUM_ORDEN => :P462_NUM_ORDEN);',
'exception',
'    when others then ',
'    apex_Debug.error(''armador coleccion:''||sqlerrm);',
'end;'))
,p_attribute_02=>'P462_NUM_ORDEN,P462_NRO_PRESUPUESTO'
,p_attribute_03=>'P462_ESTADO,P462_COD_VEHICULO,P462_COD_TALLER,P462_COD_PER_AUTORIZA,P462_CONDICION_PAGO,P462_FACTURA,P462_COD_PER_RETIRA,P462_FECHA_SALIDA,P462_FECHA_COMPROMISO,P462_FECHA_RETORNO,P462_KM_IDA,P462_KM_RETORNO,P462_KM_ULT_MANT,P462_NOM_PER_RETIRA,P462_'
||'NRO_CHAPA'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(137091568169548619)
,p_event_id=>wwv_flow_imp.id(137091376169548617)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(133812561488759919)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(137091690413548620)
,p_event_id=>wwv_flow_imp.id(137091376169548617)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'select SUM(TOTAL)',
'INTO :P462_MONTO_TOTAL       ',
'from RP_ORD_TRAB_DET',
'WHERE COD_EMPRESA = :P_COD_EMPRESA',
'AND  NUM_ORDEN = :P462_NUM_ORDEN;',
'',
':P462_MONTO_TOTAL := TO_CHAR(:P462_MONTO_TOTAL, ''FML999G999G999G999G999D00'');',
'EXCEPTION',
'WHEN OTHERS THEN',
'    APEX_dEBUG.ERROR(SQLERRM);',
'END;'))
,p_attribute_02=>'P462_NUM_ORDEN'
,p_attribute_03=>'P462_MONTO_TOTAL'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(136391770412293207)
,p_name=>'DA_COD_VEHICULO'
,p_event_sequence=>40
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P462_COD_VEHICULO'
,p_condition_element=>'P462_COD_VEHICULO'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(136391812607293208)
,p_event_id=>wwv_flow_imp.id(136391770412293207)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    SELECT CHAPA',
'    INTO :P462_NRO_CHAPA',
'    FROM RP_VEHICULOS',
'    WHERE COD_VEHICULO=:P462_COD_VEHICULO;',
'',
'END;'))
,p_attribute_02=>'P462_COD_VEHICULO'
,p_attribute_03=>'P462_NRO_CHAPA'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(136392385700293213)
,p_name=>'DA_COD_TALLER'
,p_event_sequence=>50
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P462_COD_TALLER'
,p_condition_element=>'P462_COD_TALLER'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(136392415359293214)
,p_event_id=>wwv_flow_imp.id(136392385700293213)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select pe.nombre',
'                into :P462_NOM_TALLER',
'                from cm_proveedores pro, ',
'                     personas pe, ',
'                     ident_personas ipe',
'                where pro.cod_persona = pe.cod_persona',
'                and pro.cod_persona = ipe.cod_persona',
'                and pro.cod_empresa = :P_cod_empresa',
'                and ipe.cod_ident = ''RUC''',
'                and pro.cod_proveedor = :P462_COD_TALLER;'))
,p_attribute_02=>'P462_COD_TALLER'
,p_attribute_03=>'P462_NOM_TALLER'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(136392592890293215)
,p_name=>'DA_COD_PER_AUTORIZA'
,p_event_sequence=>60
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P462_COD_PER_AUTORIZA'
,p_condition_element=>'P462_COD_PER_AUTORIZA'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(136392677832293216)
,p_event_id=>wwv_flow_imp.id(136392592890293215)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    SELECT NOMBRE ',
'    INTO :P462_NOM_PER_AUTORIZA',
'    FROM PERSONAS',
'    ',
'    WHERE COD_PERSONA=:P462_COD_PER_AUTORIZA ;',
'END;'))
,p_attribute_02=>'P462_COD_PER_AUTORIZA'
,p_attribute_03=>'P462_NOM_PER_AUTORIZA'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(136392833444293218)
,p_name=>'DA_COD_PER_RETIRA'
,p_event_sequence=>70
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P462_COD_PER_RETIRA'
,p_condition_element=>'P462_COD_PER_RETIRA'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(136392985689293219)
,p_event_id=>wwv_flow_imp.id(136392833444293218)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    SELECT NOMBRE_CHECK_LIST ',
'    INTO :P462_NOM_PER_RETIRA',
'    FROM RP_REPARTIDORES',
'    ',
'    WHERE COD_PERSONA=:P462_COD_PER_RETIRA ;',
'END;'))
,p_attribute_02=>'P462_COD_PER_RETIRA'
,p_attribute_03=>'P462_NOM_PER_RETIRA'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(136393027539293220)
,p_name=>'DA_AGREGAR'
,p_event_sequence=>80
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(136391558098293205)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(136393343181293223)
,p_event_id=>wwv_flow_imp.id(136393027539293220)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P462_NRO_CHAPA,P462_NOM_TALLER,P462_NOM_PER_AUTORIZA,P462_CONDICION_PAGO,P462_NOM_PER_RETIRA'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(136393244499293222)
,p_event_id=>wwv_flow_imp.id(136393027539293220)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>':P462_NUM_ORDEN := RPROTV.FN_NUM_ORDEN;'
,p_attribute_03=>'P462_NUM_ORDEN'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(136393468018293224)
,p_name=>'DA_GUARDAR2'
,p_event_sequence=>90
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(136391605925293206)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(136393512939293225)
,p_event_id=>wwv_flow_imp.id(136393468018293224)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
' ',
':P462_ERR := null;',
'    IF :P462_NUM_ORDEN is not null ',
'    and :P462_COD_VEHICULO is not null and :P462_COD_PER_AUTORIZA is not null then',
'            IF :P462_EDITAR IS NULL THEN',
'                --INSERTAR REGISTRO',
'                INSERT INTO RP_ORD_TRAB_CAB (',
'                        COD_EMPRESA,',
'                        NUM_ORDEN,',
'                        COD_VEHICULO,',
'                        COD_TALLER,',
'                        COD_PER_AUTORIZA,',
'                        NRO_PRESUPUESTO,',
'                        CONDICION_PAGO,',
'                        FACTURA,',
'                        FECHA_SALIDA,',
'                        FECHA_COMPROMISO,',
'                        FECHA_RETORNO,',
'                        KM_IDA,',
'                        KM_RETORNO,',
'                        KM_ULT_MANT',
'',
'                ) VALUES (',
'                         :P_COD_EMPRESA,',
'                         :P462_NUM_ORDEN,',
'                         :P462_COD_VEHICULO,',
'                         :P462_COD_TALLER,',
'                         :P462_COD_PER_AUTORIZA,',
'                         :P462_NRO_PRESUPUESTO,',
'                         :P462_CONDICION_PAGO,',
'                         :P462_FACTURA,',
'                         :P462_FECHA_SALIDA,',
'                         :P462_FECHA_COMPROMISO,',
'                         :P462_FECHA_RETORNO,',
'                         :P462_KM_IDA,',
'                         :P462_KM_RETORNO,',
'                         :P462_KM_ULT_MANT',
'                );',
'            ELSE ',
'                ',
'                --ACTUALIZO EL REGISTRO',
'                UPDATE RP_ORD_TRAB_CAB SET',
'              --          COD_EMPRESA=:P462_COD_EMPRESA,',
'              --          NUM_ORDEN =:P462_NUM_ORDEN,',
'                        COD_VEHICULO =:P462_COD_VEHICULO,',
'                        COD_TALLER =:P462_COD_TALLER,',
'                        COD_PER_AUTORIZA =:P462_COD_PER_AUTORIZA,',
'                        NRO_PRESUPUESTO=:P462_NRO_PRESUPUESTO,',
'                         CONDICION_PAGO=:P462_CONDICION_PAGO,',
'                         FACTURA=:P462_FACTURA,',
'                         FECHA_SALIDA=:P462_FECHA_SALIDA,',
'                         FECHA_COMPROMISO=:P462_FECHA_COMPROMISO,',
'                         FECHA_RETORNO=:P462_FECHA_RETORNO,',
'                         KM_IDA=:P462_KM_IDA,',
'                         KM_RETORNO=:P462_KM_RETORNO,',
'                         KM_ULT_MANT=:P462_KM_ULT_MANT',
'',
'                WHERE ROWID = :P462_EDITAR;',
'            END IF;',
'    ELSE',
'        CASE',
'            when :P462_NUM_ORDEN is null then :P462_ERR := ''Por favor: ingrese el campo "NUM_ORDEN" '';',
'            when :P462_COD_VEHICULO is null then :P462_ERR := ''Por favor: ingrese el campo "COD_VEHICULO"''; ',
'            when :P462_COD_PER_AUTORIZA is null then :P462_ERR := ''Por favor: ingrese el campo "COD_PER_AUTORIZA" '';       ',
'',
'        end case;',
'    END IF;',
'EXCEPTION',
'    WHEN OTHERS THEN ',
'        APEX_DEBUG.ERROR(SQLERRM);',
'',
'END;'))
,p_attribute_02=>'P462_NUM_ORDEN,P462_COD_VEHICULO,P462_NRO_CHAPA'
,p_attribute_03=>'P462_ERR'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(136394201837293232)
,p_event_id=>wwv_flow_imp.id(136393468018293224)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(133812561488759919)
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P462_ERR'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(136393744568293227)
,p_name=>'DA_ERR'
,p_event_sequence=>100
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P462_ERR'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(136393858687293228)
,p_event_id=>wwv_flow_imp.id(136393744568293227)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'&P462_ERR.'
,p_attribute_03=>'warning'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P462_ERR'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(136394047527293230)
,p_name=>'DA_EDITAR'
,p_event_sequence=>110
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P462_EDITAR'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(136394181930293231)
,p_event_id=>wwv_flow_imp.id(136394047527293230)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'            IF :P462_EDITAR IS not NULL THEN',
'                --INSERTAR REGISTRO',
'                SELECT  ',
'                        NUM_ORDEN,',
'                        COD_VEHICULO,',
'                        COD_TALLER,',
'                        COD_PER_AUTORIZA,',
'                        NRO_PRESUPUESTO,',
'                        CONDICION_PAGO,',
'                        FACTURA,',
'                        FECHA_SALIDA,',
'                        FECHA_COMPROMISO,',
'                        FECHA_RETORNO,',
'                        KM_IDA,',
'                        KM_RETORNO,',
'                        KM_ULT_MANT',
'                    INTO',
'                         :P462_NUM_ORDEN,',
'                         :P462_COD_VEHICULO,',
'                         :P462_COD_TALLER,',
'                         :P462_COD_PER_AUTORIZA,',
'                         :P462_NRO_PRESUPUESTO,',
'                         :P462_CONDICION_PAGO,',
'                         :P462_FACTURA,',
'                         :P462_FECHA_SALIDA,',
'                         :P462_FECHA_COMPROMISO,',
'                         :P462_FECHA_RETORNO,',
'                         :P462_KM_IDA,',
'                         :P462_KM_RETORNO,',
'                         :P462_KM_ULT_MANT',
'                FROM RP_ORD_TRAB_CAB',
'                WHERE ROWID = :P462_EDITAR;',
'            END IF;',
'EXCEPTION',
'    WHEN OTHERS THEN ',
'        APEX_DEBUG.ERROR(SQLERRM);',
'',
'END;'))
,p_attribute_02=>'P462_EDITAR'
,p_attribute_03=>'P462_NUM_ORDEN,P462_COD_VEHICULO,P462_COD_PER_AUTORIZA,P462_NRO_CHAPA,P462_NRO_PRESUPUESTO,P462_CONDICION_PAGO,P462_FACTURA,P462_FECHA_SALIDA,P462_FECHA_COMPROMISO,P462_FECHA_RETORNO,P462_KM_IDA,P462_KM_RETORNO,P462_KM_ULT_MANT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(136394609896293236)
,p_name=>'DA_ELIMINAR'
,p_event_sequence=>120
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P462_ELIMINAR'
,p_condition_element=>'P462_ELIMINAR'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(136394774407293237)
,p_event_id=>wwv_flow_imp.id(136394609896293236)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>unistr('\00BFEsta seguro/a de borrar?')
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(136394834286293238)
,p_event_id=>wwv_flow_imp.id(136394609896293236)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN ',
'    RPROTV.PR_ELIMINAR_REGISTRO(PI_SEQ_ID => :P462_ELIMINAR);   ',
'EXCEPTION',
'WHEN OTHERS THEN',
'APEX_DEBUG.ERROR(SQLERRM);',
'END;'))
,p_attribute_02=>'P462_ELIMINAR'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(137092116464548625)
,p_event_id=>wwv_flow_imp.id(136394609896293236)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'select SUM(C009)',
'INTO :P462_MONTO_TOTAL       ',
'from APEX_COLLECTIONS',
'WHERE COLLECTION_NAME = ''COL_DET_RPROTV'';',
'',
':P462_MONTO_TOTAL := TO_CHAR(:P462_MONTO_TOTAL, ''FML999G999G999G999G999D00'');',
'EXCEPTION',
'WHEN OTHERS THEN',
'    APEX_dEBUG.ERROR(SQLERRM);',
'END;'))
,p_attribute_03=>'P462_MONTO_TOTAL'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(136394968806293239)
,p_event_id=>wwv_flow_imp.id(136394609896293236)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(133812561488759919)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(137090636811548610)
,p_name=>'DA_LIMPIAR'
,p_event_sequence=>130
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(136391442788293204)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(137090799372548611)
,p_event_id=>wwv_flow_imp.id(137090636811548610)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'apex_collection.create_or_truncate_collection(p_collection_name => ''COL_DET_RPROTV'');'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(136949621766258326)
,p_event_id=>wwv_flow_imp.id(137090636811548610)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P462_ESTADO := NULL;',
':P462_COD_VEHICULO  := NULL;',
':P462_COD_TALLER  := NULL;',
':P462_COD_PER_AUTORIZA  := NULL;',
':P462_NOM_PER_AUTORIZA  := NULL;',
':P462_NRO_PRESUPUESTO  := NULL;',
':P462_CONDICION_PAGO  := NULL;',
':P462_FACTURA  := NULL;',
':P462_COD_PER_RETIRA  := NULL;',
':P462_NOM_PER_RETIRA := NULL;',
':P462_FECHA_SALIDA  := NULL;',
':P462_FECHA_COMPROMISO  := NULL;',
':P462_FECHA_RETORNO  := NULL;',
':P462_KM_IDA  := NULL;',
':P462_KM_RETORNO  := NULL;',
':P462_KM_ULT_MANT  := NULL;',
':P462_NRO_CHAPA  := NULL;'))
,p_attribute_03=>'P462_ESTADO,P462_COD_VEHICULO,P462_COD_TALLER,P462_COD_PER_AUTORIZA,P462_NOM_PER_AUTORIZA,P462_NRO_PRESUPUESTO,P462_CONDICION_PAGO,P462_FACTURA,P462_COD_PER_RETIRA,P462_NOM_PER_RETIRA,P462_FECHA_SALIDA,P462_FECHA_COMPROMISO,P462_FECHA_RETORNO,P462_KM'
||'_IDA,P462_KM_RETORNO,P462_KM_ULT_MANT,P462_NRO_CHAPA'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(137090895797548612)
,p_event_id=>wwv_flow_imp.id(137090636811548610)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(133812561488759919)
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
 p_id=>wwv_flow_imp.id(136947419870258304)
,p_name=>'DA_EDITAR_AUX'
,p_event_sequence=>140
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P462_EDITAR_AUX'
,p_condition_element=>'P462_EDITAR_AUX'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(136949161701258321)
,p_event_id=>wwv_flow_imp.id(136947419870258304)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select  c003,',
'        c006,',
'        c007,',
'        c008,',
'        c009,',
'        c010',
'into    :P462_COD_SERVICIO,',
'        :P462_COD_UNIDAD_MED,',
'        :P462_CANTIDAD,',
'        :P462_COSTO,',
'        :P462_TOTAL_AUX,',
'        :P462_OBSERVACIONES',
'  from APEX_COLLECTIONS',
'  WHERE COLLECTION_NAME = ''COL_DET_RPROTV'' ',
'  AND SEQ_ID = :P462_EDITAR_AUX ;'))
,p_attribute_02=>'P462_EDITAR_AUX'
,p_attribute_03=>'P462_COD_SERVICIO,P462_COD_UNIDAD_MED,P462_CANTIDAD,P462_COSTO,P462_TOTAL_AUX,P462_OBSERVACIONES'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(136947544657258305)
,p_event_id=>wwv_flow_imp.id(136947419870258304)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(136395044251293240)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(136947732958258307)
,p_name=>'DA_AGREGAR_DETALLE'
,p_event_sequence=>150
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(137091170086548615)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(136948986250258319)
,p_event_id=>wwv_flow_imp.id(136947732958258307)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>':P462_EDITAR_AUX:=null;'
,p_attribute_03=>'P462_EDITAR_AUX'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(137092090544548624)
,p_event_id=>wwv_flow_imp.id(136947732958258307)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'select SUM(C009)',
'INTO :P462_MONTO_TOTAL       ',
'from APEX_COLLECTIONS',
'WHERE COLLECTION_NAME = ''COL_DET_RPROTV'';',
'',
':P462_MONTO_TOTAL := TO_CHAR(:P462_MONTO_TOTAL, ''FML999G999G999G999G999D00'');',
'EXCEPTION',
'WHEN OTHERS THEN',
'    APEX_dEBUG.ERROR(SQLERRM);',
'END;'))
,p_attribute_03=>'P462_MONTO_TOTAL'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(136947863312258308)
,p_event_id=>wwv_flow_imp.id(136947732958258307)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(136395044251293240)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(136948382383258313)
,p_name=>'DA_GUARDAR'
,p_event_sequence=>160
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(136948072108258310)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(136948425828258314)
,p_event_id=>wwv_flow_imp.id(136948382383258313)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    if :P462_EDITAR_AUX is null then',
'            RPROTV.PR_AGREGAR_DETALLE(',
'                    PI_COD_EMPRESA => :P462_COD_EMPRESA,',
'                    PI_NUM_ORDEN => :P462_NUM_ORDEN,',
'                    PI_COD_SERVICIO => :P462_COD_SERVICIO,',
'                    PI_COD_UNIDAD_MED => :P462_COD_UNIDAD_MED,',
'                    PI_CANTIDAD => :P462_CANTIDAD,',
'                    PI_COSTO => :P462_COSTO,',
'                    PI_OBSERVACIONES => :P462_OBSERVACIONES);',
'     else',
'        APEX_DEBUG.ERROR(''Entro a actualizar'');',
'         RPROTV.PR_UPDATE_DETALLE(',
'                    PI_SEQ => :P462_EDITAR_AUX,',
'                    PI_COD_SERVICIO => :P462_COD_SERVICIO,',
'                    PI_COD_UNIDAD_MED => :P462_COD_UNIDAD_MED,',
'                    PI_CANTIDAD => :P462_CANTIDAD,',
'                    PI_COSTO => :P462_COSTO,',
'                    PI_OBSERVACIONES => :P462_OBSERVACIONES);',
'         end if;',
'    EXCEPTION',
'        WHEN OTHERS THEN',
'            APEX_DEBUG.ERROR(SQLERRM);',
'',
'END;'))
,p_attribute_02=>'P462_NUM_ORDEN_AUX,P462_COD_SERVICIO,P462_NRO_ITEM,P462_COD_UNIDAD_MED,P462_CANTIDAD,P462_COSTO,P462_TOTAL_AUX,P462_OBSERVACIONES,P462_TIPO,P462_SEQ_ID,P462_EDITAR_AUX'
,p_attribute_03=>'P462_COD_EMPRESA,P462_NUM_ORDEN,P462_COD_SERVICIO,P462_COD_UNIDAD_MED,P462_CANTIDAD,P462_COSTO,P462_OBSERVACIONES'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(137092282781548626)
,p_event_id=>wwv_flow_imp.id(136948382383258313)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'select SUM(C009)',
'INTO :P462_MONTO_TOTAL       ',
'from APEX_COLLECTIONS',
'WHERE COLLECTION_NAME = ''COL_DET_RPROTV'';',
'',
':P462_MONTO_TOTAL := TO_CHAR(:P462_MONTO_TOTAL, ''FML999G999G999G999G999D00'');',
'EXCEPTION',
'WHEN OTHERS THEN',
'    APEX_dEBUG.ERROR(SQLERRM);',
'END;'))
,p_attribute_03=>'P462_MONTO_TOTAL'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(136948547083258315)
,p_event_id=>wwv_flow_imp.id(136948382383258313)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(136395044251293240)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(136948678969258316)
,p_event_id=>wwv_flow_imp.id(136948382383258313)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(133812561488759919)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(136949338304258323)
,p_name=>'DA_COD_SERVICIO'
,p_event_sequence=>170
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P462_COD_SERVICIO'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(136949465597258324)
,p_event_id=>wwv_flow_imp.id(136949338304258323)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select tipo, descripcion ',
'INTO :P462_TIPO, :P462_DESCRIPCION',
'from RP_SERV_MANT a',
'where a.cod_servicio=:P462_COD_SERVICIO;'))
,p_attribute_02=>'P462_COD_SERVICIO'
,p_attribute_03=>'P462_TIPO,P462_DESCRIPCION'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(136949702239258327)
,p_name=>'DA_CONFIRMAR'
,p_event_sequence=>180
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(137090927104548613)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
,p_display_when_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(136949867795258328)
,p_event_id=>wwv_flow_imp.id(136949702239258327)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
':P462_ERR := null;',
'    IF :P462_NUM_ORDEN is not null and :P462_COD_VEHICULO is not null and :P462_COD_PER_AUTORIZA is not null',
'    and :P462_COD_TALLER is not null and :P462_NRO_PRESUPUESTO is not null and :P462_CONDICION_PAGO is not null and :P462_FACTURA is not null',
'    and :P462_COD_PER_RETIRA is not null and :P462_FECHA_SALIDA is not null  and :P462_FECHA_COMPROMISO is not null and :P462_FECHA_RETORNO is not null',
'    and :P462_KM_IDA is not null and :P462_KM_RETORNO is not null and :P462_KM_ULT_MANT is not null then',
'            IF :P462_EDITAR IS NULL THEN',
'                     RPROTV.PR_CONFIRMAR       (',
'                         PI_COD_EMPRESA => :P462_COD_EMPRESA,',
'                         PI_NUM_ORDEN =>:P462_NUM_ORDEN,',
'                         PI_ESTADO =>:P462_ESTADO,',
'                         PI_COD_VEHICULO =>:P462_COD_VEHICULO,',
'                         PI_COD_TALLER =>:P462_COD_TALLER,',
'                         PI_COD_PER_AUTORIZA =>:P462_COD_PER_AUTORIZA,',
'                         PI_NRO_PRESUPUESTO =>:P462_NRO_PRESUPUESTO,',
'                         PI_CONDICION_PAGO =>:P462_CONDICION_PAGO,',
'                         PI_FACTURA =>:P462_FACTURA,',
'                         PI_COD_PER_RETIRA =>:P462_COD_PER_RETIRA,',
'                         PI_FECHA_SALIDA =>:P462_FECHA_SALIDA,',
'                         PI_FECHA_COMPROMISO => :P462_FECHA_COMPROMISO,',
'                         PI_FECHA_RETORNO =>:P462_FECHA_RETORNO,',
'                         PI_KM_IDA =>:P462_KM_IDA,',
'                         PI_KM_RETORNO =>:P462_KM_RETORNO,',
'                         PI_KM_ULT_MANT => :P462_KM_ULT_MANT);',
'            ELSE      ',
'                UPDATE RP_ORD_TRAB_CAB SET',
'                        COD_VEHICULO =:P462_COD_VEHICULO,',
'                        COD_TALLER =:P462_COD_TALLER,',
'                        COD_PER_AUTORIZA =:P462_COD_PER_AUTORIZA,',
'                        NRO_PRESUPUESTO=:P462_NRO_PRESUPUESTO,',
'                        CONDICION_PAGO=:P462_CONDICION_PAGO,',
'                        FACTURA=:P462_FACTURA,',
'                        FECHA_SALIDA=:P462_FECHA_SALIDA,',
'                        FECHA_COMPROMISO=:P462_FECHA_COMPROMISO,',
'                        FECHA_RETORNO=:P462_FECHA_RETORNO,',
'                        KM_IDA=:P462_KM_IDA,',
'                        KM_RETORNO=:P462_KM_RETORNO,',
'                        KM_ULT_MANT=:P462_KM_ULT_MANT',
'                WHERE ROWID = :P462_EDITAR;',
'            END IF;',
'    ELSE',
'        CASE',
'            when :P462_NUM_ORDEN is null then :P462_ERR := ''Por favor: ingrese el campo "NUM_ORDEN" '';',
'            when :P462_COD_VEHICULO is null then :P462_ERR := ''Por favor: ingrese el campo "COD_VEHICULO"''; ',
'            when :P462_COD_PER_AUTORIZA is null then :P462_ERR := ''Por favor: ingrese el campo "COD_PER_AUTORIZA" '';',
'            when :P462_COD_TALLER is null then :P462_ERR := ''Por favor: ingrese el campo "COD_TALLER" '';',
'            when :P462_NRO_PRESUPUESTO is null then :P462_ERR := ''Por favor: ingrese el campo "NRO_PRESUPUESTO"'';',
'            when :P462_CONDICION_PAGO is null then :P462_ERR := ''Por favor: ingrese el campo "CONDICION_PAGO" '';',
'            when :P462_COD_PER_RETIRA is null then :P462_ERR := ''Por favor: ingrese el campo "COD_PER_RETIRA" '';',
'            when :P462_FECHA_SALIDA is null then :P462_ERR := ''Por favor: ingrese el campo "FECHA_SALIDA"'';',
'            when :P462_FECHA_COMPROMISO is null then :P462_ERR := ''Por favor: ingrese el campo "FECHA_COMPROMISO" '';',
'            when :P462_FECHA_RETORNO is null then :P462_ERR := ''Por favor: ingrese el campo "FECHA_RETORNO"'';',
'            when :P462_KM_IDA is null then :P462_ERR := ''Por favor: ingrese el campo "KM_IDA"'';',
'            when :P462_KM_RETORNO is null then :P462_ERR := ''Por favor: ingrese el campo "KM_RETORNO" '';',
'            when :P462_KM_ULT_MANT is null then :P462_ERR := ''Por favor: ingrese el campo "KM_ULT_MANT"'';',
'        end case;',
'    END IF;',
'EXCEPTION',
'    WHEN OTHERS THEN ',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;'))
,p_attribute_02=>'P_COD_EMPRESA,P462_NUM_ORDEN,P462_COD_VEHICULO,P462_COD_TALLER,P462_COD_PER_AUTORIZA,P462_NRO_PRESUPUESTO,P462_CONDICION_PAGO,P462_FACTURA,P462_FECHA_SALIDA,P462_FECHA_COMPROMISO,P462_FECHA_RETORNO,P462_KM_IDA,P462_KM_RETORNO,P462_KM_ULT_MANT,P462_CO'
||'D_PER_RETIRA,P462_ESTADO'
,p_attribute_03=>'P462_ERR'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(136949998653258329)
,p_event_id=>wwv_flow_imp.id(136949702239258327)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(133812477886759918)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(136950236868258332)
,p_name=>'DA_CANCELAR'
,p_event_sequence=>190
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(136950150487258331)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(136950372807258333)
,p_event_id=>wwv_flow_imp.id(136950236868258332)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(136395044251293240)
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(137091992062548623)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'pr_confirmar'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
':P462_ERR := null;',
'    IF :P462_NUM_ORDEN is not null and :P462_COD_VEHICULO is not null and :P462_COD_PER_AUTORIZA is not null',
'    and :P462_COD_TALLER is not null and :P462_NRO_PRESUPUESTO is not null and :P462_CONDICION_PAGO is not null and :P462_FACTURA is not null',
'    and :P462_COD_PER_RETIRA is not null and :P462_FECHA_SALIDA is not null  and :P462_FECHA_COMPROMISO is not null and :P462_FECHA_RETORNO is not null',
'    and :P462_KM_IDA is not null and :P462_KM_RETORNO is not null and :P462_KM_ULT_MANT is not null then',
'            IF :P462_EDITAR IS NULL THEN',
'                     RPROTV.PR_CONFIRMAR       (',
'                         PI_COD_EMPRESA => :P462_COD_EMPRESA,',
'                         PI_NUM_ORDEN =>:P462_NUM_ORDEN,',
'                         PI_ESTADO =>:P462_ESTADO,',
'                         PI_COD_VEHICULO =>:P462_COD_VEHICULO,',
'                         PI_COD_TALLER =>:P462_COD_TALLER,',
'                         PI_COD_PER_AUTORIZA =>:P462_COD_PER_AUTORIZA,',
'                         PI_NRO_PRESUPUESTO =>:P462_NRO_PRESUPUESTO,',
'                         PI_CONDICION_PAGO =>:P462_CONDICION_PAGO,',
'                         PI_FACTURA =>:P462_FACTURA,',
'                         PI_COD_PER_RETIRA =>:P462_COD_PER_RETIRA,',
'                         PI_FECHA_SALIDA =>:P462_FECHA_SALIDA,',
'                         PI_FECHA_COMPROMISO => :P462_FECHA_COMPROMISO,',
'                         PI_FECHA_RETORNO =>:P462_FECHA_RETORNO,',
'                         PI_KM_IDA =>:P462_KM_IDA,',
'                         PI_KM_RETORNO =>:P462_KM_RETORNO,',
'                         PI_KM_ULT_MANT => :P462_KM_ULT_MANT);',
'            ELSE      ',
'                UPDATE RP_ORD_TRAB_CAB SET',
'                        COD_VEHICULO =:P462_COD_VEHICULO,',
'                        COD_TALLER =:P462_COD_TALLER,',
'                        COD_PER_AUTORIZA =:P462_COD_PER_AUTORIZA,',
'                        NRO_PRESUPUESTO=:P462_NRO_PRESUPUESTO,',
'                        CONDICION_PAGO=:P462_CONDICION_PAGO,',
'                        FACTURA=:P462_FACTURA,',
'                        FECHA_SALIDA=:P462_FECHA_SALIDA,',
'                        FECHA_COMPROMISO=:P462_FECHA_COMPROMISO,',
'                        FECHA_RETORNO=:P462_FECHA_RETORNO,',
'                        KM_IDA=:P462_KM_IDA,',
'                        KM_RETORNO=:P462_KM_RETORNO,',
'                        KM_ULT_MANT=:P462_KM_ULT_MANT',
'                WHERE ROWID = :P462_EDITAR;',
'            END IF;',
'    ELSE',
'        CASE',
'            when :P462_NUM_ORDEN is null then :P462_ERR := ''Por favor: ingrese el campo "NUM_ORDEN" '';',
'            when :P462_COD_VEHICULO is null then :P462_ERR := ''Por favor: ingrese el campo "COD_VEHICULO"''; ',
'            when :P462_COD_PER_AUTORIZA is null then :P462_ERR := ''Por favor: ingrese el campo "COD_PER_AUTORIZA" '';',
'            when :P462_COD_TALLER is null then :P462_ERR := ''Por favor: ingrese el campo "COD_TALLER" '';',
'            when :P462_NRO_PRESUPUESTO is null then :P462_ERR := ''Por favor: ingrese el campo "NRO_PRESUPUESTO"'';',
'            when :P462_CONDICION_PAGO is null then :P462_ERR := ''Por favor: ingrese el campo "CONDICION_PAGO" '';',
'            when :P462_COD_PER_RETIRA is null then :P462_ERR := ''Por favor: ingrese el campo "COD_PER_RETIRA" '';',
'            when :P462_FECHA_SALIDA is null then :P462_ERR := ''Por favor: ingrese el campo "FECHA_SALIDA"'';',
'            when :P462_FECHA_COMPROMISO is null then :P462_ERR := ''Por favor: ingrese el campo "FECHA_COMPROMISO" '';',
'            when :P462_FECHA_RETORNO is null then :P462_ERR := ''Por favor: ingrese el campo "FECHA_RETORNO"'';',
'            when :P462_KM_IDA is null then :P462_ERR := ''Por favor: ingrese el campo "KM_IDA"'';',
'            when :P462_KM_RETORNO is null then :P462_ERR := ''Por favor: ingrese el campo "KM_RETORNO" '';',
'            when :P462_KM_ULT_MANT is null then :P462_ERR := ''Por favor: ingrese el campo "KM_ULT_MANT"'';',
'        end case;',
'    END IF;',
'EXCEPTION',
'    WHEN OTHERS THEN ',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(136392779419293217)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_INIT'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P462_COD_USUARIO := NVL(:P_COD_USUARIO,:APP_USER) ;',
':P462_COD_EMPRESA := NVL(:P_COD_EMPRESA,''1'') ;',
':P462_COD_SUCURSAL := NVL(:P_COD_SUCURSAL,''01'') ;'))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_imp.component_end;
end;
/
