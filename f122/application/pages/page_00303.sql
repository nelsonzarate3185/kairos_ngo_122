prompt --application/pages/page_00303
begin
--   Manifest
--     PAGE: 00303
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
 p_id=>303
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'Carga de Talonarios BSTALONA'
,p_alias=>'CARGA-DE-TALONARIOS-BSTALONA'
,p_step_title=>'Carga de Talonarios BSTALONA'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function seleccionar_activo(cb) {',
'    console.log(cb.value);',
'    console.log(cb.checked);',
'',
'',
'  if (cb.checked == true){',
'    console.log("block" + cb.value);',
'      $s(''P303_ACTIVO_ACCION'',''AGREGAR'');',
'      $s(''P303_ACTIVO_AUX_SEQ_ID'', cb.value,false);',
'  } else {',
'      $s(''P303_ACTIVO_ACCION'',''QUITAR'');',
'      $s(''P303_ACTIVO_AUX_SEQ_ID'', cb.value,false);',
'  }',
'}',
'',
'function seleccionar_auto_impresion(cb) {',
'    console.log(cb.value);',
'    console.log(cb.checked);',
'',
'',
'  if (cb.checked == true){',
'    console.log("block" + cb.value);',
'      $s(''P303_AI_ACCION'',''AGREGAR'');',
'      $s(''P303_AI_AUX_SEQ_ID'', cb.value,false);',
'  } else {',
'      $s(''P303_AI_ACCION'',''QUITAR'');',
'      $s(''P303_AI_AUX_SEQ_ID'', cb.value,false);',
'  }',
'}',
'',
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
'    width: 1200px !important;',
'    }'))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_last_updated_by=>'DFINO'
,p_last_upd_yyyymmddhh24miss=>'20230104112733'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(72746105390099944)
,p_plug_name=>'Carga de Talonarios'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>990
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(72746557134099948)
,p_plug_name=>'COLEC_TALONARIOS'
,p_parent_plug_id=>wwv_flow_imp.id(72746105390099944)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT seq_id SEQ_ID,',
'       c001 COD_EMPRESA,',
'       c002 TIP_TALONARIO,',
'       c003 NRO_TALONARIO,',
'       c004 COD_SUCURSAL,',
'       c005 SERIE,',
'       c006 NUMERO_INICIAL,',
'       c007 NUMERO_FINAL,',
'       APEX_ITEM.CHECKBOX(p_idx         => 1 ,',
'                          p_value       => seq_id,',
'                          p_attributes  => (case c008',
'                                                when ''S'' then ''checked ''',
'                                                else null',
'                                            end ) ||''onclick="seleccionar_activo(this)"'' ) as ACTIVO,',
'       --c008 ACTIVO,',
'       c009 COD_SECTOR,',
'       c010 IMPRIME,',
'       c011 TIP_IMPRESION,',
'       c012 TIMBRADO,',
'       c013 SER_TIMBRADO,',
'       c014 FEC_VENCIMIENTO,',
'       APEX_ITEM.CHECKBOX(p_idx         => 1 ,',
'                          p_value       => seq_id,',
'                          p_attributes  => (case c015',
'                                                when ''S'' then ''checked ''',
'                                                else null',
'                                            end ) ||''onclick="seleccionar_auto_impresion(this)"'' ) as AUTO_IMPRESION,',
'       --c015 AUTO_IMPRESION,',
'       c016 FECHA_INICIO,',
'       c017 CODIGO_USUARIO,',
'       c018 OBSERVACION,',
'       c019 CONTROL,',
'       c020 ROW_ID,',
'       c021 DESC_TALONARIO,',
'       c022 DESC_SUCURSAL,',
'       c023 DESC_SECTOR,',
'       NULL EDITAR,',
'       NULL BORRAR',
'  FROM APEX_COLLECTIONS',
' WHERE COLLECTION_NAME = ''COLEC_TALONARIOS''',
'   AND (c019 = ''U'' OR c019 = ''I'' OR c019 IS NULL)',
'ORDER BY TO_NUMBER(c003) DESC'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'COLEC_TALONARIOS'
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
 p_id=>wwv_flow_imp.id(72746689733099949)
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
,p_internal_uid=>72746689733099949
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(72746797345099950)
,p_db_column_name=>'SEQ_ID'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Seq Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(74415879655202901)
,p_db_column_name=>'COD_EMPRESA'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Cod Empresa'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(74415945055202902)
,p_db_column_name=>'TIP_TALONARIO'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Tip Talonario'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(74416050766202903)
,p_db_column_name=>'NRO_TALONARIO'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>unistr('N\00BA Talonario')
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(74416153409202904)
,p_db_column_name=>'COD_SUCURSAL'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Cod Sucursal'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(74416201359202905)
,p_db_column_name=>'SERIE'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Serie'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(74416356801202906)
,p_db_column_name=>'NUMERO_INICIAL'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>unistr('N\00FAmero Inicial')
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(74416435310202907)
,p_db_column_name=>'NUMERO_FINAL'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>unistr('N\00FAmero Final')
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(74416565093202908)
,p_db_column_name=>'ACTIVO'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Activo'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(74416638343202909)
,p_db_column_name=>'COD_SECTOR'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Cod Sector'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(74416709206202910)
,p_db_column_name=>'IMPRIME'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Imprime'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(74416818572202911)
,p_db_column_name=>'TIP_IMPRESION'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Tip Impresion'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(74416970891202912)
,p_db_column_name=>'TIMBRADO'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Timbrado'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(74417003808202913)
,p_db_column_name=>'SER_TIMBRADO'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>'Punto Exped.'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(74417104127202914)
,p_db_column_name=>'FEC_VENCIMIENTO'
,p_display_order=>150
,p_column_identifier=>'O'
,p_column_label=>'Fecha de Vencimiento'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(74417276015202915)
,p_db_column_name=>'AUTO_IMPRESION'
,p_display_order=>160
,p_column_identifier=>'P'
,p_column_label=>'Auto Impresion'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(74417366651202916)
,p_db_column_name=>'FECHA_INICIO'
,p_display_order=>170
,p_column_identifier=>'Q'
,p_column_label=>'Fecha Inicio'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(74417409317202917)
,p_db_column_name=>'CODIGO_USUARIO'
,p_display_order=>180
,p_column_identifier=>'R'
,p_column_label=>unistr('C\00F3digo de Usuario')
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(74417538046202918)
,p_db_column_name=>'OBSERVACION'
,p_display_order=>190
,p_column_identifier=>'S'
,p_column_label=>unistr('Observaci\00F3n')
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(74417653031202919)
,p_db_column_name=>'CONTROL'
,p_display_order=>200
,p_column_identifier=>'T'
,p_column_label=>'Control'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(74417737066202920)
,p_db_column_name=>'ROW_ID'
,p_display_order=>210
,p_column_identifier=>'U'
,p_column_label=>'Row Id'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(74417809088202921)
,p_db_column_name=>'EDITAR'
,p_display_order=>220
,p_column_identifier=>'V'
,p_column_label=>'Editar'
,p_column_link=>'javascript:$s(''P303_EDIT_DATA'',''#SEQ_ID#'');'
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
 p_id=>wwv_flow_imp.id(74417936259202922)
,p_db_column_name=>'BORRAR'
,p_display_order=>230
,p_column_identifier=>'W'
,p_column_label=>'Borrar'
,p_column_link=>'javascript:$s(''P303_DELETE_DATA'',''#SEQ_ID#'');'
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
 p_id=>wwv_flow_imp.id(74419490377202937)
,p_db_column_name=>'DESC_TALONARIO'
,p_display_order=>240
,p_column_identifier=>'X'
,p_column_label=>'Tipo de Comprobante'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(74419553787202938)
,p_db_column_name=>'DESC_SUCURSAL'
,p_display_order=>250
,p_column_identifier=>'Y'
,p_column_label=>'Sucursal'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(74419694589202939)
,p_db_column_name=>'DESC_SECTOR'
,p_display_order=>260
,p_column_identifier=>'Z'
,p_column_label=>unistr('Secci\00F3n de Venta')
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(74430426835209921)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'744305'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>10
,p_report_columns=>'DESC_TALONARIO:NRO_TALONARIO:DESC_SUCURSAL:SERIE:SER_TIMBRADO:NUMERO_INICIAL:NUMERO_FINAL:DESC_SECTOR:ACTIVO:AUTO_IMPRESION:TIMBRADO:FECHA_INICIO:FEC_VENCIMIENTO:CODIGO_USUARIO:EDITAR:BORRAR:'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(74415176468164389)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40134615190263663)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(40070279985263645)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_imp.id(40189153869263678)
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(74420198254202944)
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
 p_id=>wwv_flow_imp.id(74420271624202945)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(74420198254202944)
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
 p_id=>wwv_flow_imp.id(74418078727202923)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(72746105390099944)
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
 p_id=>wwv_flow_imp.id(74418127878202924)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(72746105390099944)
,p_button_name=>'BTGUARDAR_CAMBIOS'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Guardar Cambios'
,p_button_position=>'COPY'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(74418263964202925)
,p_name=>'P303_EDIT_DATA'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(72746557134099948)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(74418357268202926)
,p_name=>'P303_DELETE_DATA'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(72746557134099948)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(74418428113202927)
,p_name=>'P303_ACTIVO_ACCION'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(72746557134099948)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(74418553170202928)
,p_name=>'P303_ACTIVO_AUX_SEQ_ID'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(72746557134099948)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(74418612954202929)
,p_name=>'P303_AI_ACCION'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(72746557134099948)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(74418773462202930)
,p_name=>'P303_AI_AUX_SEQ_ID'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(72746557134099948)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(74420385412202946)
,p_name=>'P303_TIPO_COMPROBANTE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(74420198254202944)
,p_prompt=>'Tipo de Comprobante'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_TIPO_COMPROBANTE_BSTALONA'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select tip_talonario r,',
'       tip_talonario||'' - ''||descripcion d',
'  from tipos_talonarios ',
'Order by descripcion'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(74420451122202947)
,p_name=>'P303_NRO_TALONARIO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(74420198254202944)
,p_prompt=>unistr('N\00BA de Talonario')
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(74420530519202948)
,p_name=>'P303_COD_SUCURSAL'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(74420198254202944)
,p_prompt=>'Sucursal'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_SUCURSALES_BSTALONA'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select cod_sucursal r,',
'       cod_sucursal||'' - ''||descripcion d',
'  from sucursales ',
' where cod_empresa = :P_COD_EMPRESA',
'order by descripcion'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(74420676867202949)
,p_name=>'P303_SERIE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(74420198254202944)
,p_prompt=>'Serie'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ser_comprobante||'' - ''||timbrado, ',
'       ser_comprobante       ',
'  from series_comprob',
' where cod_empresa = :P_COD_EMPRESA',
'   and tip_comprobante = :P303_TIPO_COMPROBANTE'))
,p_lov_display_null=>'YES'
,p_lov_cascade_parent_items=>'P303_TIPO_COMPROBANTE'
,p_ajax_items_to_submit=>'P303_TIPO_COMPROBANTE'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(74420786450202950)
,p_name=>'P303_NUMERO_INICIAL'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(74420198254202944)
,p_prompt=>unistr('N\00FAmero Inicial')
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(74628848193703801)
,p_name=>'P303_NUMERO_FINAL'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(74420198254202944)
,p_prompt=>unistr('N\00FAmero Final')
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(74628965143703802)
,p_name=>'P303_COD_SECTOR'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(74420198254202944)
,p_prompt=>'Sector'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_SECTORES_BSTALONA'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select cod_sector||'' - ''||descripcion d, ',
'       cod_sector r',
'  from sectores ',
' where cod_empresa = :P_COD_EMPRESA',
'order by 1'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(74629036358703803)
,p_name=>'P303_TIMBRADO'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(74420198254202944)
,p_prompt=>'Timbrado'
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
 p_id=>wwv_flow_imp.id(74629132232703804)
,p_name=>'P303_FECHA_INICIO'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(74420198254202944)
,p_prompt=>'Fecha Inicio'
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
 p_id=>wwv_flow_imp.id(74629226496703805)
,p_name=>'P303_FECHA_VENCIMIENTO'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(74420198254202944)
,p_prompt=>'Fecha de Vencimiento'
,p_display_as=>'NATIVE_DATE_PICKER_JET'
,p_cSize=>30
,p_colspan=>4
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
 p_id=>wwv_flow_imp.id(74629361926703806)
,p_name=>'P303_COD_USUARIO'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(74420198254202944)
,p_prompt=>'Usuario'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_USUARIOS_BSTALONA'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select u.cod_usuario||'' - ''||nvl(p.nombre,p.nomb_fantasia)nombre,',
'       u.cod_usuario',
'from usuarios u,',
'     personas p',
'where u.cod_persona = p.cod_persona'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>4
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(74630938198703822)
,p_name=>'P303_CONTROL'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(72746105390099944)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(74418847958202931)
,p_name=>'DA_SELECCIONAR_ACTIVO'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P303_ACTIVO_AUX_SEQ_ID'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(74418906517202932)
,p_event_id=>wwv_flow_imp.id(74418847958202931)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_02=>'P303_ACTIVO_ACCION,P303_ACTIVO_AUX_SEQ_ID'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(74419029361202933)
,p_event_id=>wwv_flow_imp.id(74418847958202931)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    BSTALONA.PR_CHECK(pseq_id    => :P303_ACTIVO_AUX_SEQ_ID, ',
'                      paccion    => :P303_ACTIVO_ACCION, ',
'                      pcolection => ''COLEC_TALONARIOS'',',
'                      patributo  => 8);',
'EXCEPTION',
'    WHEN OTHERS THEN',
'    APEX_DEBUG.ERROR(''DA_SELECCIONAR_ACTIVO ''||SQLERRM);',
'END;'))
,p_attribute_02=>'P303_ACTIVO_AUX_SEQ_ID,P303_ACTIVO_ACCION'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(74419134104202934)
,p_name=>'DA_SELECCIONAR_AI'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P303_AI_AUX_SEQ_ID'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(74419296717202935)
,p_event_id=>wwv_flow_imp.id(74419134104202934)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_02=>'P303_AI_ACCION,P303_AI_AUX_SEQ_ID'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(74419346534202936)
,p_event_id=>wwv_flow_imp.id(74419134104202934)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    BSTALONA.PR_CHECK(pseq_id    => :P303_AI_AUX_SEQ_ID, ',
'                      paccion    => :P303_AI_ACCION, ',
'                      pcolection => ''COLEC_TALONARIOS'',',
'                      patributo  => 15);',
'EXCEPTION',
'    WHEN OTHERS THEN',
'    APEX_DEBUG.ERROR(''DA_SELECCIONAR_AI ''||SQLERRM);',
'END;'))
,p_attribute_02=>'P303_AI_AUX_SEQ_ID,P303_AI_ACCION'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(74419704604202940)
,p_name=>'DA_DELETE_DATA'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P303_DELETE_DATA'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(74419895190202941)
,p_event_id=>wwv_flow_imp.id(74419704604202940)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_02=>'P303_DELETE_DATA'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(74419997801202942)
,p_event_id=>wwv_flow_imp.id(74419704604202940)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    SMENTSAL.DELETE_COL(pseq_id   => :P303_DELETE_DATA, ',
'                        p_col     => ''COLEC_TALONARIOS'',',
'                        patributo => 19);',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'    APEX_DEBUG.ERROR(''DA_DELETE_DATA ''||SQLERRM);',
'END;'))
,p_attribute_02=>'P303_DELETE_DATA'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(74420077240202943)
,p_event_id=>wwv_flow_imp.id(74419704604202940)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(72746557134099948)
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
 p_id=>wwv_flow_imp.id(74629439398703807)
,p_name=>'DA_ABRIR_MODAL_ADD'
,p_event_sequence=>40
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(74418078727202923)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(74629536269703808)
,p_event_id=>wwv_flow_imp.id(74629439398703807)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P303_TIPO_COMPROBANTE,P303_NRO_TALONARIO,P303_COD_SUCURSAL,P303_SERIE,P303_NUMERO_INICIAL,P303_NUMERO_FINAL,P303_COD_SECTOR,P303_TIMBRADO,P303_FECHA_INICIO,P303_FECHA_VENCIMIENTO,P303_COD_USUARIO,P303_EDIT_DATA'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(74629702381703810)
,p_event_id=>wwv_flow_imp.id(74629439398703807)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    BEGIN',
'        SELECT NVL(MAX(TO_NUMBER(c003)),0) + 1',
'          INTO :P303_NRO_TALONARIO',
'          FROM APEX_COLLECTIONS',
'         WHERE COLLECTION_NAME = ''COLEC_TALONARIOS'';',
'    EXCEPTION',
'        WHEN NO_DATA_FOUND THEN',
'        :P303_NRO_TALONARIO := NULL;',
'    END;',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'    APEX_DEBUG.ERROR(''DA_ABRIR_MODAL_ADD CALCULAR NRO_TAL ''||SQLERRM);',
'END;'))
,p_attribute_03=>'P303_NRO_TALONARIO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(74629684496703809)
,p_event_id=>wwv_flow_imp.id(74629439398703807)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(74420198254202944)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(74629880782703811)
,p_name=>'DA_AGREGAR_EDITAR_REG'
,p_event_sequence=>50
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(74420271624202945)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(74629927546703812)
,p_event_id=>wwv_flow_imp.id(74629880782703811)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_02=>'P303_TIPO_COMPROBANTE,P303_NRO_TALONARIO,P303_COD_SUCURSAL,P303_SERIE,P303_NUMERO_INICIAL,P303_NUMERO_FINAL,P303_COD_SECTOR,P303_TIMBRADO,P303_FECHA_INICIO,P303_FECHA_VENCIMIENTO,P303_COD_USUARIO'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(74630020897703813)
,p_event_id=>wwv_flow_imp.id(74629880782703811)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    CASE',
'        WHEN (:P303_NUMERO_INICIAL IS NULL OR :P303_NUMERO_INICIAL = 0) THEN :P303_CONTROL := 1;',
'        WHEN :P303_NUMERO_INICIAL < 0 THEN :P303_CONTROL := 2;',
'        WHEN (:P303_NUMERO_FINAL IS NULL OR :P303_NUMERO_FINAL = 0) THEN :P303_CONTROL := 3;',
'        WHEN :P303_NUMERO_FINAL < 0 THEN :P303_CONTROL := 4;',
'        WHEN :P303_NUMERO_FINAL < :P303_NUMERO_INICIAL THEN :P303_CONTROL := 5;',
'        WHEN TO_DATE(:P303_FECHA_VENCIMIENTO,''DD/MM/YYYY'') < TO_DATE(SYSDATE,''DD/MM/YYYY'') THEN :P303_CONTROL := 6;',
'        WHEN TO_DATE(:P303_FECHA_VENCIMIENTO,''DD/MM/YYYY'') = TO_DATE(SYSDATE,''DD/MM/YYYY'') THEN :P303_CONTROL := 7;',
'        WHEN :P303_TIPO_COMPROBANTE IS NULL THEN :P303_CONTROL := 8;',
'        WHEN :P303_COD_SUCURSAL IS NULL THEN :P303_CONTROL := 9;',
'        WHEN :P303_SERIE IS NULL THEN :P303_CONTROL := 10;',
'        WHEN :P303_NUMERO_INICIAL IS NULL THEN :P303_CONTROL := 11;',
'        WHEN :P303_NUMERO_FINAL IS NULL THEN :P303_CONTROL := 12;',
'        WHEN :P303_COD_SECTOR IS NULL THEN :P303_CONTROL := 13;',
'        WHEN :P303_TIMBRADO IS NULL THEN :P303_CONTROL := 14;',
'        WHEN :P303_FECHA_INICIO IS NULL THEN :P303_CONTROL := 15;',
'        WHEN :P303_FECHA_VENCIMIENTO IS NULL THEN :P303_CONTROL := 16;',
'        WHEN BSTALONA.VALIDAR_EXPEDICION(ptip_comprobante => :P303_TIPO_COMPROBANTE,',
'                                         pserie           => :P303_SERIE,',
'                                         ptimbrado        => :P303_TIMBRADO,',
'                                         pcod_empresa     => :P_COD_EMPRESA) = ''S'' THEN :P303_CONTROL := 17;',
'        ELSE :P303_CONTROL := 0;',
'    END CASE;',
'',
'    IF :P303_CONTROL = 0 THEN',
'',
'        BSTALONA.ADD_COL(pcod_empresa     => :P_COD_EMPRESA,',
'                         ptip_comprobante => :P303_TIPO_COMPROBANTE,',
'                         pnro_talonario   => :P303_NRO_TALONARIO,',
'                         pcod_sucursal    => :P303_COD_SUCURSAL,',
'                         pserie           => :P303_SERIE,',
'                         pnumero_inicial  => :P303_NUMERO_INICIAL,',
'                         pnumero_final    => :P303_NUMERO_FINAL,',
'                         pcod_sector      => :P303_COD_SECTOR,',
'                         ptimbrado        => :P303_TIMBRADO,',
'                         pfecha_inicio    => :P303_FECHA_INICIO,',
'                         pfecha_venc      => :P303_FECHA_VENCIMIENTO,',
'                         pcod_usuario     => :P303_COD_USUARIO);',
'',
'    END IF;',
'EXCEPTION',
'    WHEN OTHERS THEN',
'    APEX_DEBUG.ERROR(''DA_AGREGAR_EDITAR ADD_COL ''||SQLERRM);',
'END;'))
,p_attribute_02=>'P303_TIPO_COMPROBANTE,P303_NRO_TALONARIO,P303_COD_SUCURSAL,P303_SERIE,P303_NUMERO_INICIAL,P303_NUMERO_FINAL,P303_COD_SECTOR,P303_TIMBRADO,P303_FECHA_INICIO,P303_FECHA_VENCIMIENTO,P303_COD_USUARIO,P_COD_EMPRESA'
,p_attribute_03=>'P303_CONTROL'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P303_EDIT_DATA'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(74630701785703820)
,p_event_id=>wwv_flow_imp.id(74629880782703811)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    CASE',
'        WHEN (:P303_NUMERO_INICIAL IS NULL OR :P303_NUMERO_INICIAL = 0) THEN :P303_CONTROL := 1;',
'        WHEN :P303_NUMERO_INICIAL < 0 THEN :P303_CONTROL := 2;',
'        WHEN (:P303_NUMERO_FINAL IS NULL OR :P303_NUMERO_FINAL = 0) THEN :P303_CONTROL := 3;',
'        WHEN :P303_NUMERO_FINAL < 0 THEN :P303_CONTROL := 4;',
'        WHEN :P303_NUMERO_FINAL < :P303_NUMERO_INICIAL THEN :P303_CONTROL := 5;',
'        WHEN TO_DATE(:P303_FECHA_VENCIMIENTO,''DD/MM/YYYY'') < TO_DATE(SYSDATE,''DD/MM/YYYY'') THEN :P303_CONTROL := 6;',
'        WHEN TO_DATE(:P303_FECHA_VENCIMIENTO,''DD/MM/YYYY'') = TO_DATE(SYSDATE,''DD/MM/YYYY'') THEN :P303_CONTROL := 7;',
'        WHEN :P303_TIPO_COMPROBANTE IS NULL THEN :P303_CONTROL := 8;',
'        WHEN :P303_COD_SUCURSAL IS NULL THEN :P303_CONTROL := 9;',
'        WHEN :P303_SERIE IS NULL THEN :P303_CONTROL := 10;',
'        WHEN :P303_NUMERO_INICIAL IS NULL THEN :P303_CONTROL := 11;',
'        WHEN :P303_NUMERO_FINAL IS NULL THEN :P303_CONTROL := 12;',
'        WHEN :P303_COD_SECTOR IS NULL THEN :P303_CONTROL := 13;',
'        WHEN :P303_TIMBRADO IS NULL THEN :P303_CONTROL := 14;',
'        WHEN :P303_FECHA_INICIO IS NULL THEN :P303_CONTROL := 15;',
'        WHEN :P303_FECHA_VENCIMIENTO IS NULL THEN :P303_CONTROL := 16;',
'        WHEN BSTALONA.VALIDAR_EXPEDICION(ptip_comprobante => :P303_TIPO_COMPROBANTE,',
'                                         pserie           => :P303_SERIE,',
'                                         ptimbrado        => :P303_TIMBRADO,',
'                                         pcod_empresa     => :P_COD_EMPRESA) = ''S'' THEN :P303_CONTROL := 17;',
'        ELSE :P303_CONTROL := 0;',
'    END CASE;',
'    ',
'    IF :P303_CONTROL = 0 THEN',
'',
'        BSTALONA.EDIT_COL(pseq_id          => :P303_EDIT_DATA,',
'                          pcod_empresa     => :P_COD_EMPRESA,',
'                          ptip_comprobante => :P303_TIPO_COMPROBANTE,',
'                          pnro_talonario   => :P303_NRO_TALONARIO,',
'                          pcod_sucursal    => :P303_COD_SUCURSAL,',
'                          pserie           => :P303_SERIE,',
'                          pnumero_inicial  => :P303_NUMERO_INICIAL,',
'                          pnumero_final    => :P303_NUMERO_FINAL,',
'                          pcod_sector      => :P303_COD_SECTOR,',
'                          ptimbrado        => :P303_TIMBRADO,',
'                          pfecha_inicio    => :P303_FECHA_INICIO,',
'                          pfecha_venc      => :P303_FECHA_VENCIMIENTO,',
'                          pcod_usuario     => :P303_COD_USUARIO);',
'',
'    END IF;                      ',
'EXCEPTION',
'    WHEN OTHERS THEN',
'    APEX_DEBUG.ERROR(''DA_AGREGAR_EDITAR_REG EDIT_COL ''||SQLERRM);',
'END;'))
,p_attribute_02=>'P303_EDIT_DATA,P303_TIPO_COMPROBANTE,P303_NRO_TALONARIO,P303_COD_SUCURSAL,P303_SERIE,P303_NUMERO_INICIAL,P303_NUMERO_FINAL,P303_COD_SECTOR,P303_TIMBRADO,P303_FECHA_INICIO,P303_FECHA_VENCIMIENTO,P303_COD_USUARIO,P_COD_EMPRESA'
,p_attribute_03=>'P303_CONTROL'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P303_EDIT_DATA'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(74631094018703823)
,p_event_id=>wwv_flow_imp.id(74629880782703811)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>unistr('El n\00FAmero inicial no puede quedar vac\00EDo, ni tampoco puede ser 0 (cero).')
,p_attribute_02=>'Aviso'
,p_attribute_03=>'warning'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P303_CONTROL'
,p_client_condition_expression=>'1'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(74631112723703824)
,p_event_id=>wwv_flow_imp.id(74629880782703811)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>unistr('El n\00FAmero inicial no puede ser un n\00FAmero negativo.')
,p_attribute_02=>'Aviso'
,p_attribute_03=>'warning'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P303_CONTROL'
,p_client_condition_expression=>'2'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(74631289798703825)
,p_event_id=>wwv_flow_imp.id(74629880782703811)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>unistr('El n\00FAmero final no puede quedar vac\00EDo, ni tampoco puede ser 0 (cero).')
,p_attribute_02=>'Aviso'
,p_attribute_03=>'warning'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P303_CONTROL'
,p_client_condition_expression=>'3'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(74631319573703826)
,p_event_id=>wwv_flow_imp.id(74629880782703811)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>unistr('El n\00FAmero final no puede ser un n\00FAmero negativo.')
,p_attribute_02=>'Aviso'
,p_attribute_03=>'warning'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P303_CONTROL'
,p_client_condition_expression=>'4'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(74631417112703827)
,p_event_id=>wwv_flow_imp.id(74629880782703811)
,p_event_result=>'TRUE'
,p_action_sequence=>80
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>unistr('El n\00FAmero final no puede ser inferior al n\00FAmero inicial.')
,p_attribute_02=>'Aviso'
,p_attribute_03=>'warning'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P303_CONTROL'
,p_client_condition_expression=>'5'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(74631501671703828)
,p_event_id=>wwv_flow_imp.id(74629880782703811)
,p_event_result=>'TRUE'
,p_action_sequence=>90
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'La fecha de vencimiento no puede ser inferior a la fecha actual.'
,p_attribute_02=>'Aviso'
,p_attribute_03=>'warning'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P303_CONTROL'
,p_client_condition_expression=>'6'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(74631642753703829)
,p_event_id=>wwv_flow_imp.id(74629880782703811)
,p_event_result=>'TRUE'
,p_action_sequence=>100
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'La fecha de vencimiento es hoy.'
,p_attribute_02=>'Aviso'
,p_attribute_03=>'warning'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P303_CONTROL'
,p_client_condition_expression=>'7'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(74631923248703832)
,p_event_id=>wwv_flow_imp.id(74629880782703811)
,p_event_result=>'TRUE'
,p_action_sequence=>110
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'Debe seleccionar el tipo de comprobante.'
,p_attribute_02=>'Aviso'
,p_attribute_03=>'warning'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P303_CONTROL'
,p_client_condition_expression=>'8'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(74632000636703833)
,p_event_id=>wwv_flow_imp.id(74629880782703811)
,p_event_result=>'TRUE'
,p_action_sequence=>120
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'Debe seleccionar una sucursal.'
,p_attribute_02=>'Aviso'
,p_attribute_03=>'warning'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P303_CONTROL'
,p_client_condition_expression=>'9'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(74632131930703834)
,p_event_id=>wwv_flow_imp.id(74629880782703811)
,p_event_result=>'TRUE'
,p_action_sequence=>130
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'Debe seleccionar la serie.'
,p_attribute_02=>'Aviso'
,p_attribute_03=>'warning'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P303_CONTROL'
,p_client_condition_expression=>'10'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(74632223874703835)
,p_event_id=>wwv_flow_imp.id(74629880782703811)
,p_event_result=>'TRUE'
,p_action_sequence=>140
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>unistr('Debe completar el n\00FAmero inicial.')
,p_attribute_02=>'Aviso'
,p_attribute_03=>'warning'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P303_CONTROL'
,p_client_condition_expression=>'11'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(74632365425703836)
,p_event_id=>wwv_flow_imp.id(74629880782703811)
,p_event_result=>'TRUE'
,p_action_sequence=>150
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>unistr('Debe completar el n\00FAmero final.')
,p_attribute_02=>'Aviso'
,p_attribute_03=>'warning'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P303_CONTROL'
,p_client_condition_expression=>'12'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(74632462985703837)
,p_event_id=>wwv_flow_imp.id(74629880782703811)
,p_event_result=>'TRUE'
,p_action_sequence=>160
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'Debe seleccionar el sector.'
,p_attribute_02=>'Aviso'
,p_attribute_03=>'warning'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P303_CONTROL'
,p_client_condition_expression=>'13'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(74632706237703840)
,p_event_id=>wwv_flow_imp.id(74629880782703811)
,p_event_result=>'TRUE'
,p_action_sequence=>170
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'Debe completar el timbrado.'
,p_attribute_02=>'Aviso'
,p_attribute_03=>'warning'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P303_CONTROL'
,p_client_condition_expression=>'14'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(74632615124703839)
,p_event_id=>wwv_flow_imp.id(74629880782703811)
,p_event_result=>'TRUE'
,p_action_sequence=>180
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'Debe seleccionar la fecha de inicio.'
,p_attribute_02=>'Aviso'
,p_attribute_03=>'warning'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P303_CONTROL'
,p_client_condition_expression=>'15'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(74632582798703838)
,p_event_id=>wwv_flow_imp.id(74629880782703811)
,p_event_result=>'TRUE'
,p_action_sequence=>190
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'Debe seleccionar la fecha de vencimiento.'
,p_attribute_02=>'Aviso'
,p_attribute_03=>'warning'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P303_CONTROL'
,p_client_condition_expression=>'16'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(74632833472703841)
,p_event_id=>wwv_flow_imp.id(74629880782703811)
,p_event_result=>'TRUE'
,p_action_sequence=>200
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'Ya existe el punto de expedicion para otra serie.'
,p_attribute_02=>'Aviso'
,p_attribute_03=>'warning'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P303_CONTROL'
,p_client_condition_expression=>'17'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(74630110902703814)
,p_event_id=>wwv_flow_imp.id(74629880782703811)
,p_event_result=>'TRUE'
,p_action_sequence=>210
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(74420198254202944)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P303_CONTROL'
,p_client_condition_expression=>'0'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(74630249668703815)
,p_event_id=>wwv_flow_imp.id(74629880782703811)
,p_event_result=>'TRUE'
,p_action_sequence=>220
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(72746557134099948)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P303_CONTROL'
,p_client_condition_expression=>'0'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(74630335288703816)
,p_name=>'DA_EDIT_DATA'
,p_event_sequence=>60
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P303_EDIT_DATA'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(74630498235703817)
,p_event_id=>wwv_flow_imp.id(74630335288703816)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_02=>'P303_EDIT_DATA'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(74630527574703818)
,p_event_id=>wwv_flow_imp.id(74630335288703816)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    BSTALONA.CARGAR_DATOS_EDIT(pedit_data       => :P303_EDIT_DATA,',
'                               ptip_comprobante => :P303_TIPO_COMPROBANTE,',
'                               pnro_talonario   => :P303_NRO_TALONARIO,',
'                               pcod_sucursal    => :P303_COD_SUCURSAL,',
'                               pserie           => :P303_SERIE,',
'                               pnumero_inicial  => :P303_NUMERO_INICIAL,',
'                               pnumero_final    => :P303_NUMERO_FINAL,',
'                               pcod_sector      => :P303_COD_SECTOR,',
'                               ptimbrado        => :P303_TIMBRADO,',
'                               pfecha_inicio    => :P303_FECHA_INICIO,',
'                               pfecha_venc      => :P303_FECHA_VENCIMIENTO,',
'                               pcod_usuario     => :P303_COD_USUARIO);',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'    APEX_DEBUG.ERROR(''DA_EDIT_DATA CARGAR_DATOS_EDIT ''||SQLERRM);',
'END;'))
,p_attribute_02=>'P303_EDIT_DATA'
,p_attribute_03=>'P303_TIPO_COMPROBANTE,P303_NRO_TALONARIO,P303_COD_SUCURSAL,P303_SERIE,P303_NUMERO_INICIAL,P303_NUMERO_FINAL,P303_COD_SECTOR,P303_TIMBRADO,P303_FECHA_INICIO,P303_FECHA_VENCIMIENTO,P303_COD_USUARIO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P303_EDIT_DATA'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(74630678937703819)
,p_event_id=>wwv_flow_imp.id(74630335288703816)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(74420198254202944)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(74631754587703830)
,p_name=>'DA_SOLO_NUMEROS'
,p_event_sequence=>70
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P303_NUMERO_INICIAL,P303_NUMERO_FINAL,P303_TIMBRADO'
,p_bind_type=>'bind'
,p_bind_event_type=>'keydown'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(74631838572703831)
,p_event_id=>wwv_flow_imp.id(74631754587703830)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'validateNumber(event);'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(72746372026099946)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_INIT'
,p_process_sql_clob=>'APEX_COLLECTION.CREATE_OR_TRUNCATE_COLLECTION(''COLEC_TALONARIOS'');'
,p_process_clob_language=>'PLSQL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(72746455087099947)
,p_process_sequence=>20
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_CARGAR_DATOS'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    BSTALONA.CARGAR_DATOS(pcod_empresa => :P_COD_EMPRESA);',
'EXCEPTION',
'    WHEN OTHERS THEN',
'    APEX_DEBUG.ERROR(''PR_CARGAR_DATOS ''||SQLERRM);',
'END;'))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(74630889494703821)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_SAVE'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    BSTALONA.GUARDAR_DATOS;',
'EXCEPTION',
'    WHEN OTHERS THEN',
'    APEX_DEBUG.ERROR(''PR_SAVE PAG 303 ''||SQLERRM);',
'END;    '))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'Error al procesar datos.'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(74418127878202924)
,p_process_success_message=>'Datos procesados correctamente.'
);
wwv_flow_imp.component_end;
end;
/
