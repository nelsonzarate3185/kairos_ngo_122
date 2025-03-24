prompt --application/pages/page_00515
begin
--   Manifest
--     PAGE: 00515
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
 p_id=>515
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'Permisos Aprobacion SNC - CAAPRSNC'
,p_alias=>'CAAPRSNC'
,p_step_title=>'Permisos Aprobacion SNC - CAAPRSNC'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function soloNumeros1(e){',
'  var key = e.charCode;',
'    return key >= 48 && key <= 57 || key == 44;',
'}',
'',
'function soloNumeros2(e){',
'  var key = e.charCode;',
'    return key >= 48 && key <= 57;',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_last_updated_by=>'NZARATE'
,p_last_upd_yyyymmddhh24miss=>'20240703142356'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(154811544958405931)
,p_plug_name=>'Permisos Aprobacion SNC - CAAPRSNC'
,p_region_template_options=>'#DEFAULT#:t-Region--accent1:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>1010
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(154809172472405907)
,p_plug_name=>'VARIABLES'
,p_parent_plug_id=>wwv_flow_imp.id(154811544958405931)
,p_region_template_options=>'#DEFAULT#:js-dialog-size600x400'
,p_plug_template=>wwv_flow_imp.id(40117728043263659)
,p_plug_display_sequence=>990
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(154810553387405921)
,p_plug_name=>'REPORT'
,p_parent_plug_id=>wwv_flow_imp.id(154811544958405931)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>1000
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select c.COD_EMPRESA,',
'       c.COD_AREA,',
'       c.COD_MOTIVO,',
'       (SELECT a.descripcion              ',
'               from problemas_conformidad a',
'               where a.cod_empresa=c.cod_empresa and a.cod_motivo=c.cod_motivo',
'                ) DESCRIPCION,',
'       c.COD_USUARIO,',
'       (select p.nombre',
'               from personas p, usuarios u',
'               where cod_empresa   = :p_cod_empresa ',
'                and p.cod_persona=u.cod_persona and u.cod_usuario=c.cod_usuario) DESC_USUARIO,',
'       c.COD_USR_INS,',
'       c.FEC_HOR_INS,',
'       c.COD_USR_UPD,',
'       c.FEC_HOR_UPD,',
'       NULL ELIMINAR,',
'       NULL EDITAR,',
'       ROWID',
'  from CA_APRUEBA_SNC c'))
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
 p_id=>wwv_flow_imp.id(154810631915405922)
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
,p_internal_uid=>154810631915405922
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(154810793871405923)
,p_db_column_name=>'COD_EMPRESA'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Cod Empresa'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(154810819808405924)
,p_db_column_name=>'COD_AREA'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Area'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(154810992383405925)
,p_db_column_name=>'COD_MOTIVO'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Motivo'
,p_column_link=>'javascript:$s(''P515_AUX_ROW_ID'',''#COD_MOTIVO#''),$s(''P515_AUX_COD_AREA'',''#COD_AREA#''),$s(''P515_AUX_COD_USER'',''#COD_USUARIO#'');'
,p_column_linktext=>'#COD_MOTIVO#'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(154811080785405926)
,p_db_column_name=>'COD_USUARIO'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Cod Usuario'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(154811119528405927)
,p_db_column_name=>'COD_USR_INS'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Cod Usr Ins'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(154811248970405928)
,p_db_column_name=>'FEC_HOR_INS'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Fec Hor Ins'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(154811367608405929)
,p_db_column_name=>'COD_USR_UPD'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Cod Usr Upd'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(154811412488405930)
,p_db_column_name=>'FEC_HOR_UPD'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Fec Hor Upd'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(154812053379405936)
,p_db_column_name=>'DESCRIPCION'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Descripcion'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(154812132066405937)
,p_db_column_name=>'DESC_USUARIO'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Desc Usuario'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(154812209727405938)
,p_db_column_name=>'ELIMINAR'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'&nbsp'
,p_column_link=>'javascript:$s(''P515_ELIMINAR'',''#ROWID#'');'
,p_column_linktext=>'<span class="fa fa-trash-o" aria-hidden="true"></span>'
,p_column_type=>'STRING'
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
 p_id=>wwv_flow_imp.id(154812322434405939)
,p_db_column_name=>'EDITAR'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'&nbsp'
,p_column_link=>'javascript:$s(''P515_EDITAR'',''#ROWID#'');'
,p_column_linktext=>'<span aria-hidden="true" class="fa fa-edit"></span>'
,p_column_type=>'STRING'
,p_display_condition_type=>'FUNCTION_BODY'
,p_display_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'VCONTROL NUMBER;',
'BEGIN',
'  RETURN TRUE;',
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
 p_id=>wwv_flow_imp.id(154812499421405940)
,p_db_column_name=>'ROWID'
,p_display_order=>130
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
 p_id=>wwv_flow_imp.id(155375423159691105)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1553755'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>10
,p_report_columns=>'EDITAR:COD_MOTIVO:DESCRIPCION:COD_AREA:COD_USUARIO:DESC_USUARIO:ELIMINAR:'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(154811700933405933)
,p_plug_name=>'DISPLAY'
,p_parent_plug_id=>wwv_flow_imp.id(154811544958405931)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>1020
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(155418590454036607)
,p_plug_name=>'Crear/Editar'
,p_region_template_options=>'#DEFAULT#:js-dialog-size600x400'
,p_plug_template=>wwv_flow_imp.id(40117728043263659)
,p_plug_display_sequence=>1020
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(155421064535036632)
,p_plug_name=>'Editar'
,p_region_template_options=>'#DEFAULT#:js-dialog-size480x320'
,p_plug_template=>wwv_flow_imp.id(40117728043263659)
,p_plug_display_sequence=>1030
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(155421841769036640)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(155421064535036632)
,p_button_name=>'bt_cancelar'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_image_alt=>'Cancelar'
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(155419663577036618)
,p_button_sequence=>80
,p_button_plug_id=>wwv_flow_imp.id(155418590454036607)
,p_button_name=>'BT_CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_image_alt=>'Cancelar'
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(155421748719036639)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(155421064535036632)
,p_button_name=>'bt_guardar'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Guardar'
,p_button_position=>'CREATE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(155419508890036617)
,p_button_sequence=>80
,p_button_plug_id=>wwv_flow_imp.id(155418590454036607)
,p_button_name=>'BT_GUARDAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Guardar'
,p_button_position=>'CREATE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(155418170687036603)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(154810553387405921)
,p_button_name=>'BT_AGREGAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Agregar'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_warn_on_unsaved_changes=>null
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'VCONTROL NUMBER;',
'BEGIN',
'  RETURN TRUE;',
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
 p_id=>wwv_flow_imp.id(154809251483405908)
,p_name=>'P515_DERECHOS'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(154809172472405907)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(154809307927405909)
,p_name=>'P515_COD_MODULO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(154809172472405907)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(154809471279405910)
,p_name=>'P515_NOM_MODULO'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(154809172472405907)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(154809548687405911)
,p_name=>'P515_COD_FORMA'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(154809172472405907)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(154809679362405912)
,p_name=>'P515_NOM_FORMA'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(154809172472405907)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(154809708576405913)
,p_name=>'P515_COD_EMPRESA'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(154809172472405907)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(154809827396405914)
,p_name=>'P515_NOM_EMPRESA'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(154809172472405907)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(154809922086405915)
,p_name=>'P515_COD_SUCURSAL'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(154809172472405907)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(154810020146405916)
,p_name=>'P515_NOM_SUCURSAL'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(154809172472405907)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(154810135913405917)
,p_name=>'P515_COD_USUARIO'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(154809172472405907)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(154810209246405918)
,p_name=>'P515_COD_IDIOMA'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(154809172472405907)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(154810395660405919)
,p_name=>'P515_CODSISMENU'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(154809172472405907)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(154811845489405934)
,p_name=>'P515_FEC_HOR_INS'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(154811700933405933)
,p_prompt=>'Fecha'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_tag_css_classes=>'readonly'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(154811905245405935)
,p_name=>'P515_COD_USR_INS'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(154811700933405933)
,p_prompt=>'Hora'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(154812686229405942)
,p_name=>'P515_AUX_ROW_ID'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(154811700933405933)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(154812910192405945)
,p_name=>'P515_ELIMINAR'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(154810553387405921)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(154813090436405946)
,p_name=>'P515_EDITAR'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(154810553387405921)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(155418681563036608)
,p_name=>'P515_COD_MOTIVO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(155418590454036607)
,p_prompt=>unistr('C\00F3digo Motivo')
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_MOTIVOS_CAAPRSNC'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  select descripcion , cod_motivo',
'              ',
'               from problemas_conformidad',
'               where cod_empresa   = :P_cod_empresa'))
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
 p_id=>wwv_flow_imp.id(155418837601036610)
,p_name=>'P515_FEC_HOR_INS_AUX'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(155418590454036607)
,p_item_default=>'SYSDATE'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(155418989313036611)
,p_name=>'P515_COD_USR_INS_AUX'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(155418590454036607)
,p_item_default=>'P_COD_USUARIO'
,p_item_default_type=>'ITEM'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(155419064221036612)
,p_name=>'P515_DESCRIPCION'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(155418590454036607)
,p_prompt=>'Motivo'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(155419151994036613)
,p_name=>'P515_COD_AREA'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(155418590454036607)
,p_prompt=>'Area'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:ADMINISTRACION;ADMINISTRACION,COMERCIAL;COMERCIAL,DIRECTORIO;DIRECTORIO,LOGISTICA;LOGISTICA,POSTVENTA;POSTVENTA,MARKETING;MARKETING'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186937130263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(155419289288036614)
,p_name=>'P515_COD_USUARIO_AUX'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(155418590454036607)
,p_prompt=>unistr('C\00F3digo Usuario')
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_USUARIOS_CAAPRSNC'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select p.nombre , u.cod_usuario',
'         ',
'               from usuarios u, personas p',
'               where cod_empresa   = :P_cod_empresa ',
'and p.cod_persona=u.cod_persona',
'order by 1 '))
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
 p_id=>wwv_flow_imp.id(155419354361036615)
,p_name=>'P515_DESC_USUARIO'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(155418590454036607)
,p_prompt=>unistr('Descripci\00F3n Usuario')
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(155420381598036625)
,p_name=>'P515_ERR'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(154810553387405921)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(155421318940036635)
,p_name=>'P515_COD_AREA_AUX'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(155421064535036632)
,p_prompt=>'Area'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:ADMINISTRACION;ADMINISTRACION,COMERCIAL;COMERCIAL,DIRECTORIO;DIRECTORIO,LOGISTICA;LOGISTICA,POSTVENTA;POSTVENTA,MARKETING;MARKETING'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(155421491281036636)
,p_name=>'P515_COD_MOTIVO_AUX'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(155421064535036632)
,p_prompt=>unistr('C\00F3digo Motivo')
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_MOTIVOS_CAAPRSNC'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  select descripcion , cod_motivo',
'              ',
'               from problemas_conformidad',
'               where cod_empresa   = :P_cod_empresa'))
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
 p_id=>wwv_flow_imp.id(155421552674036637)
,p_name=>'P515_DESCRIPCION_AUX'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(155421064535036632)
,p_prompt=>'Motivo'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(155422748927036649)
,p_name=>'P515_AUX_COD_AREA'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(154811700933405933)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(155422887300036650)
,p_name=>'P515_AUX_COD_USER'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(154811700933405933)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(339827366410701520)
,p_name=>'P515_COD_USUARIO_AUX_1'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(155421064535036632)
,p_prompt=>unistr('C\00F3digo Usuario')
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_USUARIOS_CAAPRSNC'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select p.nombre , u.cod_usuario',
'         ',
'               from usuarios u, personas p',
'               where cod_empresa   = :P_cod_empresa ',
'and p.cod_persona=u.cod_persona',
'order by 1 '))
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
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(154812700799405943)
,p_name=>'DA_MOSTRAR_DETALLE'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P515_AUX_ROW_ID'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(154812842874405944)
,p_event_id=>wwv_flow_imp.id(154812700799405943)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin ',
'    SELECT FEC_HOR_INS',
'    INTO :P515_FEC_HOR_INS',
'    FROM ca_aprueba_snc',
'    WHERE cod_motivo=:P515_AUX_ROW_ID and cod_area=:P515_AUX_COD_AREA and cod_usuario=:P515_AUX_COD_USER;',
' exception',
'    when no_data_found  then',
'        :P515_FEC_HOR_INS:= null;',
'    when others then',
'            :P515_FEC_HOR_INS := ''MUCHOS VALORES'';',
'end;',
'',
'',
'begin ',
'    SELECT COD_USR_INS',
'    INTO :P515_COD_USR_INS',
'    FROM ca_aprueba_snc',
'    WHERE cod_motivo=:P515_AUX_ROW_ID and cod_area=:P515_AUX_COD_AREA and cod_usuario=:P515_AUX_COD_USER;',
' exception',
'    when no_data_found  then',
'        :P515_COD_USR_INS:= null;',
'    when others then',
'            :P515_COD_USR_INS := ''MUCHOS VALORES'';',
'end;'))
,p_attribute_02=>'P515_AUX_ROW_ID,P515_AUX_COD_AREA,P515_AUX_COD_USER'
,p_attribute_03=>'P515_FEC_HOR_INS,P515_COD_USR_INS'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(154813183535405947)
,p_name=>'DA_EDITAR'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P515_EDITAR'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(155421669385036638)
,p_event_id=>wwv_flow_imp.id(154813183535405947)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(155421064535036632)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(155552512040406405)
,p_event_id=>wwv_flow_imp.id(154813183535405947)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'    if :P515_EDITAR is not null then',
'        select COD_MOTIVO,',
'                COD_AREA, cod_usuario',
'        into :P515_COD_MOTIVO_AUX,',
'             :P515_COD_AREA_AUX,:P515_COD_USUARIO_AUX_1',
'        from ca_aprueba_snc',
'        where rowid = :P515_EDITAR;',
'    end if;',
'exception',
'    when others then    ',
'    apex_debug.error(sqlerrm);',
'end;'))
,p_attribute_02=>'P515_EDITAR'
,p_attribute_03=>'P515_COD_MOTIVO_AUX,P515_DESCRIPCION_AUX,P515_COD_AREA_AUX,P515_COD_USUARIO_AUX_1'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(154813314906405949)
,p_name=>'DA_ELIMINAR'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P515_ELIMINAR'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(154813407093405950)
,p_event_id=>wwv_flow_imp.id(154813314906405949)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>unistr('\00BFEsta seguro/a de borrar?')
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(155417904648036601)
,p_event_id=>wwv_flow_imp.id(154813314906405949)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN ',
'',
'    DELETE ca_aprueba_snc',
'    WHERE ROWID = :P515_ELIMINAR;',
'    EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'',
'',
'',
'END;'))
,p_attribute_02=>'P515_ELIMINAR'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(155418039061036602)
,p_event_id=>wwv_flow_imp.id(154813314906405949)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(154810553387405921)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(155418240303036604)
,p_name=>'DA_AGREGAR'
,p_event_sequence=>40
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(155418170687036603)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(156566213855939404)
,p_event_id=>wwv_flow_imp.id(155418240303036604)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P515_DESC_USUARIO,P515_COD_MOTIVO,P515_COD_AREA,P515_COD_USUARIO_AUX,P515_DESCRIPCION,P515_FEC_HOR_INS_AUX,P515_COD_USR_INS_AUX'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(155418478561036606)
,p_event_id=>wwv_flow_imp.id(155418240303036604)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
'null;'))
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
 p_id=>wwv_flow_imp.id(155420085696036622)
,p_event_id=>wwv_flow_imp.id(155418240303036604)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(155418590454036607)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(155419717272036619)
,p_name=>'DA_CANCELAR'
,p_event_sequence=>50
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(155419663577036618)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(155419935093036621)
,p_event_id=>wwv_flow_imp.id(155419717272036619)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(155418590454036607)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(155420148317036623)
,p_name=>'DA_GUARDAR'
,p_event_sequence=>60
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(155419508890036617)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(155420278334036624)
,p_event_id=>wwv_flow_imp.id(155420148317036623)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
':P515_ERR := null;',
'    IF :P515_COD_MOTIVO is not null ',
'    and :P515_COD_USUARIO_AUX is not null and :P515_COD_AREA is not null THEN',
'         --   IF :P515_EDITAR IS NULL THEN',
'                --INSERTAR REGISTRO',
'                INSERT INTO ca_aprueba_snc (',
'                        COD_EMPRESA,',
'                        COD_MOTIVO,',
'                        COD_USUARIO,',
'                        COD_AREA,',
'                        FEC_HOR_INS,',
'                        COD_USR_INS',
'                ) VALUES (',
'                         :P_COD_EMPRESA,',
'                         :P515_COD_MOTIVO,',
'                         :P515_COD_USUARIO_AUX,',
'                         :P515_COD_AREA,',
'                         sysdate,',
'                         nvl(:P_COD_USUARIO,user)',
'                );',
'         /*   ELSE ',
'                --ACTUALIZO EL REGISTRO',
'                UPDATE ca_aprueba_snc SET',
'                        COD_MOTIVO=:P515_COD_MOTIVO,',
'                        COD_AREA=:P515_COD_AREA',
'                WHERE ROWID = :P515_EDITAR;',
'            END IF;*/',
'    ELSE',
'        CASE',
unistr('            when :P515_COD_MOTIVO is null then :P515_ERR := ''Por favor: ingrese el campo "C\00F3digo Motivo" '';'),
unistr('            when :P515_COD_USUARIO_AUX is null then :P515_ERR := ''Por favor: ingrese el campo "C\00F3digo Usuario"''; '),
'            when :P515_COD_AREA is null then :P515_ERR := ''Por favor: ingrese el campo "Area" '';',
'        end case;',
'    END IF;',
'EXCEPTION',
'    WHEN OTHERS THEN ',
'        APEX_DEBUG.ERROR(SQLERRM);',
'        :P515_ERR := ''Lo siento, se ha encontrado un registro con valores que ya existen. Por favor, verifique los siguentes datos: MOTIVO: "''||:P515_COD_MOTIVO|| ''", USUARIO: "''||:P515_COD_USUARIO_AUX|| ''" y AREA: "''||:P515_COD_AREA||''"'';',
'',
'END;'))
,p_attribute_02=>'P_COD_EMPRESA,P515_COD_USUARIO_AUX,P515_COD_AREA,P515_FEC_HOR_INS_AUX,P515_COD_USR_INS_AUX,P515_COD_MOTIVO'
,p_attribute_03=>'P515_ERR'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(155422532693036647)
,p_event_id=>wwv_flow_imp.id(155420148317036623)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(154810553387405921)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(155422609504036648)
,p_event_id=>wwv_flow_imp.id(155420148317036623)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(155418590454036607)
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P515_ERR'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(155420407994036626)
,p_name=>'DA_ERR'
,p_event_sequence=>70
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P515_ERR'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(155420525347036627)
,p_event_id=>wwv_flow_imp.id(155420407994036626)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'&P515_ERR.'
,p_attribute_03=>'warning'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P515_ERR'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(155420697572036628)
,p_name=>'DA_TRAER_USUARIO'
,p_event_sequence=>80
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P515_COD_USUARIO_AUX'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(155420737756036629)
,p_event_id=>wwv_flow_imp.id(155420697572036628)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    select p.nombre',
'    INTO :P515_DESC_USUARIO',
'    from usuarios u, personas p',
'    where u.cod_empresa   = :P_cod_empresa and  u.cod_usuario=:P515_COD_USUARIO_AUX ',
'    and p.cod_persona=u.cod_persona;',
'    exception',
'            when no_data_found  then',
'               :P515_COD_USUARIO_AUX := null;',
'            when others then',
'                   :P515_COD_USUARIO_AUX:= null;',
'  end;',
''))
,p_attribute_02=>'P515_COD_USUARIO_AUX'
,p_attribute_03=>'P515_DESC_USUARIO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(155420851221036630)
,p_name=>'DA_TRAER_MOTIVO'
,p_event_sequence=>90
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P515_COD_MOTIVO'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(155420985129036631)
,p_event_id=>wwv_flow_imp.id(155420851221036630)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'     select descripcion',
'    INTO :P515_DESCRIPCION          ',
'   from problemas_conformidad',
'   where cod_empresa   = :P_cod_empresa and cod_motivo=:P515_COD_MOTIVO;',
'    exception',
'            when no_data_found  then',
'               :P515_DESCRIPCION := null;',
'            when others then',
'                   :P515_DESCRIPCION:= null;',
'  end;',
''))
,p_attribute_02=>'P515_COD_MOTIVO'
,p_attribute_03=>'P515_DESCRIPCION'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(155421907535036641)
,p_name=>'DA_CANCEL'
,p_event_sequence=>100
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(155421841769036640)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(155422090990036642)
,p_event_id=>wwv_flow_imp.id(155421907535036641)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(155421064535036632)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(155422168746036643)
,p_name=>'DA_GUARDAR_AUX'
,p_event_sequence=>110
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(155421748719036639)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(155422298009036644)
,p_event_id=>wwv_flow_imp.id(155422168746036643)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'                --ACTUALIZO EL REGISTRO',
'                UPDATE ca_aprueba_snc SET',
'                        COD_MOTIVO=:P515_COD_MOTIVO_AUX,',
'                        COD_AREA=:P515_COD_AREA_AUX,',
'                        cod_usuario=:P515_COD_USUARIO_AUX_1,',
'                        cod_usr_upd= nvl(:P_COD_USUARIO,user),',
'                        fec_hor_upd=sysdate',
'                WHERE ROWID = :P515_EDITAR;',
'EXCEPTION',
'    WHEN OTHERS THEN ',
'        APEX_DEBUG.ERROR(SQLERRM);',
'',
'END;'))
,p_attribute_02=>'P515_COD_MOTIVO_AUX,P515_COD_AREA_AUX,P515_COD_USUARIO_AUX_1'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(155422377659036645)
,p_event_id=>wwv_flow_imp.id(155422168746036643)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(154810553387405921)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(155422480403036646)
,p_event_id=>wwv_flow_imp.id(155422168746036643)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(155421064535036632)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(155552361437406403)
,p_name=>'DA_TRAER_MOTIVO2'
,p_event_sequence=>120
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P515_COD_MOTIVO_AUX'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(155552443755406404)
,p_event_id=>wwv_flow_imp.id(155552361437406403)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'     select descripcion',
'    INTO :P515_DESCRIPCION_AUX          ',
'   from problemas_conformidad',
'   where cod_empresa   = ''1'' and cod_motivo=:P515_COD_MOTIVO_AUX;',
'    exception',
'            when no_data_found  then',
'               :P515_DESCRIPCION_AUX := null;',
'            when others then',
'                   :P515_DESCRIPCION_AUX:= null;',
'  end;',
''))
,p_attribute_02=>'P515_COD_MOTIVO_AUX'
,p_attribute_03=>'P515_DESCRIPCION_AUX'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(156566001458939402)
,p_name=>'DA_SOLO_NUM'
,p_event_sequence=>130
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P515_COD_USR_INS_AUX'
,p_bind_type=>'bind'
,p_bind_event_type=>'keypress'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(156566179815939403)
,p_event_id=>wwv_flow_imp.id(156566001458939402)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if (!soloNumeros1(event)){',
'      event.preventDefault();',
'}'))
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(156565910459939401)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_INIT'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P515_COD_USUARIO := NVL(:P_COD_USUARIO,:APP_USER) ;',
':P515_COD_EMPRESA := NVL(:P_COD_EMPRESA,''1'') ;',
':P515_COD_MODULO := NVL(:P_COD_MODULO,''CA'') ;',
':P515_FEC_HOR_INS:=SYSDATE;',
':P515_COD_USR_INS:=:P_COD_USUARIO;'))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_imp.component_end;
end;
/
