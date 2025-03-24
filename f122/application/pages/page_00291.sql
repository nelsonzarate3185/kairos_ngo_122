prompt --application/pages/page_00291
begin
--   Manifest
--     PAGE: 00291
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
 p_id=>291
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'Tipos de Comprobantes - BSTIPCOM'
,p_alias=>'BSTIPCOM'
,p_step_title=>'Tipos de Comprobantes'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function removeParam(key, sourceURL) {',
'    var rtn = sourceURL.split("?")[0],',
'        param,',
'        params_arr = [],',
'        queryString = (sourceURL.indexOf("?") !== -1) ? sourceURL.split("?")[1] : "";',
'    if (queryString !== "") {',
'        params_arr = queryString.split("&");',
'        for (var i = params_arr.length - 1; i >= 0; i -= 1) {',
'            param = params_arr[i].split("=")[0];',
'            if (param === key) {',
'                params_arr.splice(i, 1);',
'            }',
'        }',
'        rtn = rtn + "?" + params_arr.join("&");',
'    }',
'    return rtn;',
'}',
'',
'',
'function seleccionar(cb) {',
'    console.log(cb.value);',
'    console.log(cb.checked);',
'',
'  if (cb.checked == true){',
'    console.log("block" + cb.value);',
'      $s(''P291_ACCION'',''ACTIVO'');',
'      $s(''P291_CAMBIA_ESTADO'', cb.value,false);',
'  } else {',
'      $s(''P291_ACCION'',''NOACTIVO'');',
'      $s(''P291_CAMBIA_ESTADO'', cb.value,false);',
'  }',
'}',
''))
,p_javascript_code_onload=>'window.history.pushState("object or string", "Title", removeParam("success_msg", window.location.href));'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_last_updated_by=>'MARIANABLA'
,p_last_upd_yyyymmddhh24miss=>'20230104124057'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(72861093874302601)
,p_plug_name=>'Tipos de Comprobantes '
,p_region_template_options=>'#DEFAULT#:t-Region--accent1:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>990
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(72861164371302602)
,p_plug_name=>'VARIABLES'
,p_parent_plug_id=>wwv_flow_imp.id(72861093874302601)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(72861660165302607)
,p_plug_name=>'REPORTE'
,p_parent_plug_id=>wwv_flow_imp.id(72861093874302601)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT SEQ_ID,',
'       C001 COD_EMPRESA,',
'       C002 TIP_COMPROBANTE,',
'       C003 COD_MODULO,',
'       C004 DESC_MODULO,',
'       C005 DESCRIPCION,',
'       C006 ABREVIATURA,',
'       C007 LINEAS,',
'       C008 IVA_INCLUIDO,',
'       C009 SALDOS,',
'       C010 STOCK,',
'       --C011 ESTADO,',
'       C012 DESC_ESTADO,',
'       C013 COD_ESTADO_ART,',
'       C014 LIBRO_IVA,',
'       C015 IND_CHEQUE,',
'       C016 TIP_ORIGEN,',
'       C017 IND_ASIENTOS,',
'       C018 IND_EXENTO,',
'       C019 TIMBRADO,',
'       C020 ROW_ID,',
'       C021 CONTROL,',
'       APEX_ITEM.CHECKBOX (p_idx => 1 , ',
'                           p_value => seq_id, ',
'                           p_attributes => (case C011 when ''A'' then ''checked '' ',
'                                                      else null ',
'                                            end ) ||''onclick="seleccionar(this)"'') ESTADO,',
'       NULL EDITAR,',
'       NULL ELIMINAR                                              ',
'  FROM APEX_COLLECTIONS',
' WHERE COLLECTION_NAME = ''DETALLE_BSTIPCOM''',
'   AND (C021 IS NULL OR C021 IN (''I'', ''U''))',
' ORDER BY SEQ_ID;                                              '))
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
 p_id=>wwv_flow_imp.id(72861962091302610)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'MARIANABLA'
,p_internal_uid=>72861962091302610
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(72862055344302611)
,p_db_column_name=>'COD_EMPRESA'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Cod Empresa'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(72862141143302612)
,p_db_column_name=>'TIP_COMPROBANTE'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Tipo'
,p_column_link=>'javascript:$s(''P291_VER_DATOS'',''#TIP_COMPROBANTE#'');'
,p_column_linktext=>'#TIP_COMPROBANTE#'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(72862279754302613)
,p_db_column_name=>'COD_MODULO'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>unistr('M\00F3dulo')
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(72862356954302614)
,p_db_column_name=>'DESC_MODULO'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Desc Modulo'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(72862405592302615)
,p_db_column_name=>'DESCRIPCION'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>unistr('Descripci\00F3n')
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(72862568592302616)
,p_db_column_name=>'ABREVIATURA'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Abreviatura'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(72862659744302617)
,p_db_column_name=>'LINEAS'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>unistr('L\00EDneas')
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(72862737580302618)
,p_db_column_name=>'IVA_INCLUIDO'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Iva Incluido'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(72862896547302619)
,p_db_column_name=>'SALDOS'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Saldos'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_rpt_named_lov=>wwv_flow_imp.id(73075621198595210)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(72862931824302620)
,p_db_column_name=>'STOCK'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Stock'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_rpt_named_lov=>wwv_flow_imp.id(73083312247600926)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(72863023709302621)
,p_db_column_name=>'ESTADO'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Activo'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(72863142764302622)
,p_db_column_name=>'DESC_ESTADO'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Desc Estado'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(72863276728302623)
,p_db_column_name=>'COD_ESTADO_ART'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Cod Estado Art'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(72863390222302624)
,p_db_column_name=>'LIBRO_IVA'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>'Libro Iva'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(72863434102302625)
,p_db_column_name=>'IND_CHEQUE'
,p_display_order=>150
,p_column_identifier=>'O'
,p_column_label=>'Ind Cheque'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(72863511253302626)
,p_db_column_name=>'TIP_ORIGEN'
,p_display_order=>160
,p_column_identifier=>'P'
,p_column_label=>unistr('Or\00EDgen')
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_rpt_named_lov=>wwv_flow_imp.id(73086765071614449)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(72863688244302627)
,p_db_column_name=>'IND_ASIENTOS'
,p_display_order=>170
,p_column_identifier=>'Q'
,p_column_label=>'Ind Asientos'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(72863729094302628)
,p_db_column_name=>'IND_EXENTO'
,p_display_order=>180
,p_column_identifier=>'R'
,p_column_label=>'Ind Exento'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(72863836728302629)
,p_db_column_name=>'TIMBRADO'
,p_display_order=>190
,p_column_identifier=>'S'
,p_column_label=>'Timbrado'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(72863945215302630)
,p_db_column_name=>'ROW_ID'
,p_display_order=>200
,p_column_identifier=>'T'
,p_column_label=>'Row Id'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(72864082792302631)
,p_db_column_name=>'CONTROL'
,p_display_order=>210
,p_column_identifier=>'U'
,p_column_label=>'Control'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(73105013457690625)
,p_db_column_name=>'EDITAR'
,p_display_order=>220
,p_column_identifier=>'V'
,p_column_label=>'Editar'
,p_column_link=>'javascript:$s(''P291_ABRE_EDITAR'',''#SEQ_ID#'');'
,p_column_linktext=>'<span class="fa fa-edit" aria-hidden="true"></span>'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'CENTER'
,p_display_condition_type=>'FUNCTION_BODY'
,p_display_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    VCONTROL NUMBER;',
'BEGIN',
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
 p_id=>wwv_flow_imp.id(73105147924690626)
,p_db_column_name=>'SEQ_ID'
,p_display_order=>230
,p_column_identifier=>'W'
,p_column_label=>'Seq Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(73903378033679513)
,p_db_column_name=>'ELIMINAR'
,p_display_order=>240
,p_column_identifier=>'X'
,p_column_label=>'Eliminar'
,p_column_link=>'javascript:$s(''P291_ELIMINAR_REGISTRO'',''#SEQ_ID#'');'
,p_column_linktext=>'<span class="fa fa-trash" aria-hidden="true"></span>'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_display_condition_type=>'FUNCTION_BODY'
,p_display_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    VCONTROL NUMBER;',
'BEGIN',
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
 p_id=>wwv_flow_imp.id(72972423016476701)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'729725'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>15
,p_report_columns=>'COD_MODULO:TIP_COMPROBANTE:DESCRIPCION:ABREVIATURA:LINEAS:SALDOS:STOCK:TIP_ORIGEN:ESTADO:EDITAR:ELIMINAR:'
,p_sort_column_1=>'SEQ_ID'
,p_sort_direction_1=>'ASC'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(72864167993302632)
,p_plug_name=>'PIE'
,p_parent_plug_id=>wwv_flow_imp.id(72861093874302601)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>30
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(72864543502302636)
,p_plug_name=>'PIE1'
,p_parent_plug_id=>wwv_flow_imp.id(72864167993302632)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>10
,p_plug_grid_column_span=>6
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(72864655664302637)
,p_plug_name=>'PIE2'
,p_parent_plug_id=>wwv_flow_imp.id(72864167993302632)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>20
,p_plug_new_grid_row=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(72865542149302646)
,p_plug_name=>'Crear/Editar Tipo de Comprobante'
,p_parent_plug_id=>wwv_flow_imp.id(72861093874302601)
,p_region_template_options=>'#DEFAULT#:js-dialog-autoheight:js-dialog-size720x480'
,p_plug_template=>wwv_flow_imp.id(40117728043263659)
,p_plug_display_sequence=>40
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(73105303348690628)
,p_button_sequence=>240
,p_button_plug_id=>wwv_flow_imp.id(72865542149302646)
,p_button_name=>'CANCELAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_image_alt=>'Cancelar'
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(73105212400690627)
,p_button_sequence=>230
,p_button_plug_id=>wwv_flow_imp.id(72865542149302646)
,p_button_name=>'GUARDAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Guardar'
,p_button_position=>'CREATE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(73107089283690645)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(72861093874302601)
,p_button_name=>'CREAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Crear'
,p_button_position=>'EDIT'
,p_warn_on_unsaved_changes=>null
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    VCONTROL NUMBER;',
'BEGIN',
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
 p_id=>wwv_flow_imp.id(73107198128690646)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(72861093874302601)
,p_button_name=>'CONFIRMAR_CAMBIOS'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Confirmar Cambios'
,p_button_position=>'EDIT'
,p_warn_on_unsaved_changes=>null
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    RETURN SEGURIDAD_GRANULAR.FC_MOSTRAR_CONFIRMAR (pusua0100_id => :P_USUA0100_ID,',
'                                                        ppage_id => :APP_PAGE_ID,',
'                                                    papli0100_id => :P_APLI0100_ID);',
'END;'))
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'FUNCTION_BODY'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(72861201077302603)
,p_name=>'P291_COD_EMPRESA'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(72861164371302602)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(72861301371302604)
,p_name=>'P291_COD_MODULO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(72861164371302602)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(72861405725302605)
,p_name=>'P291_COD_SUCURSAL'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(72861164371302602)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(72861561645302606)
,p_name=>'P291_COD_USUARIO'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(72861164371302602)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(72864232728302633)
,p_name=>'P291_TIMBRADO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(72864543502302636)
,p_prompt=>'Timbrado'
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
 p_id=>wwv_flow_imp.id(72864307274302634)
,p_name=>'P291_DESC_MODULO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(72864543502302636)
,p_prompt=>unistr('M\00F3dulo')
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
 p_id=>wwv_flow_imp.id(72864498738302635)
,p_name=>'P291_IVA_INCLUIDO'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(72864655664302637)
,p_prompt=>unistr('IVA Inclu\00EDdo')
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'A'
,p_attribute_03=>'I'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(72864769605302638)
,p_name=>'P291_IND_CHEQUE'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(72864655664302637)
,p_prompt=>'Es Cheque'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_colspan=>4
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'A'
,p_attribute_03=>'I'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(72864854131302639)
,p_name=>'P291_LIBRO_IVA'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(72864655664302637)
,p_prompt=>'Imprime en Libro de IVA'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'S'
,p_attribute_03=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(72864921265302640)
,p_name=>'P291_IND_EXENTO'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(72864655664302637)
,p_prompt=>'Es Exento'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'S'
,p_attribute_03=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(72865089407302641)
,p_name=>'P291_IND_ASIENTOS'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(72864655664302637)
,p_prompt=>'Incluye en Asientos'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_begin_on_new_line=>'N'
,p_colspan=>4
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'S'
,p_attribute_03=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(72865173106302642)
,p_name=>'P291_VER_DATOS'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(72861660165302607)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(72865479678302645)
,p_name=>'P291_ABRE_EDITAR'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(72861660165302607)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(72865862345302649)
,p_name=>'P291_TIP_COMPROBANTE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(72865542149302646)
,p_prompt=>'Tipo'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>3
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(72865970875302650)
,p_name=>'P291_COD_MODULO_1'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(72865542149302646)
,p_prompt=>unistr('M\00F3dulo')
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_MODULO_BSPARAME'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT cod_modulo || '' - '' || descripcion D, cod_modulo R ',
'FROM modulos ',
'ORDER BY descripcion'))
,p_cSize=>30
,p_cMaxlength=>5
,p_begin_on_new_line=>'N'
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
 p_id=>wwv_flow_imp.id(73102608723690601)
,p_name=>'P291_DESCRIPCION'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(72865542149302646)
,p_prompt=>unistr('Descripci\00F3n')
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>20
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(73102752673690602)
,p_name=>'P291_ABREVIATURA'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(72865542149302646)
,p_prompt=>'Abreviatura'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>15
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(73102859568690603)
,p_name=>'P291_LINEAS'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(72865542149302646)
,p_prompt=>unistr('L\00EDneas')
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(73103035296690605)
,p_name=>'P291_SALDOS'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(72865542149302646)
,p_prompt=>'Saldos'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'LV_SALDOS_BSTIPCOM'
,p_lov=>'.'||wwv_flow_imp.id(73075621198595210)||'.'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(73103197604690606)
,p_name=>'P291_STOCK'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(72865542149302646)
,p_prompt=>'Stock'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'LV_STOCK_BSTIPCOM'
,p_lov=>'.'||wwv_flow_imp.id(73083312247600926)||'.'
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(73103736532690612)
,p_name=>'P291_COD_ESTADO_ART'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_imp.id(72865542149302646)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(73104026268690615)
,p_name=>'P291_TIP_ORIGEN'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(72865542149302646)
,p_prompt=>'Origen'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'LV_TIP_ORIGEN_BSTIPCOM'
,p_lov=>'.'||wwv_flow_imp.id(73086765071614449)||'.'
,p_lov_display_null=>'YES'
,p_lov_null_text=>'Ninguno'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(73104432394690619)
,p_name=>'P291_TIMBRADO_1'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(72865542149302646)
,p_prompt=>'Timbrado'
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
 p_id=>wwv_flow_imp.id(73105644552690631)
,p_name=>'P291_AUX_ROW_ID'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(72861660165302607)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(73105886701690633)
,p_name=>'P291_DESC_ESTADO'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_imp.id(72865542149302646)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(73106098526690635)
,p_name=>'P291_IVA_INCLUIDO_1'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(72865542149302646)
,p_prompt=>unistr('IVA Inclu\00EDdo')
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'A'
,p_attribute_03=>'I'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(73106105812690636)
,p_name=>'P291_LIBRO_IVA_1'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(72865542149302646)
,p_prompt=>'Imprime en Libro de IVA'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'S'
,p_attribute_03=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(73106237803690637)
,p_name=>'P291_IND_EXENTO_1'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(72865542149302646)
,p_prompt=>'Es Exento'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'S'
,p_attribute_03=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(73106311977690638)
,p_name=>'P291_IND_CHEQUE_1'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(72865542149302646)
,p_prompt=>'Es Cheque'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_colspan=>4
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'A'
,p_attribute_03=>'I'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(73106440410690639)
,p_name=>'P291_IND_ASIENTOS_1'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(72865542149302646)
,p_prompt=>'Incluye en Asientos'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_begin_on_new_line=>'N'
,p_colspan=>4
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'S'
,p_attribute_03=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(73902217152679502)
,p_name=>'P291_ESTADO'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_imp.id(72865542149302646)
,p_prompt=>'Estado'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_begin_on_new_line=>'N'
,p_colspan=>4
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'A'
,p_attribute_03=>'I'
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
 p_id=>wwv_flow_imp.id(73903451927679514)
,p_name=>'P291_ELIMINAR_REGISTRO'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(72861660165302607)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(73903912000679519)
,p_name=>'P291_ACCION'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(72861660165302607)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(73904073727679520)
,p_name=>'P291_CAMBIA_ESTADO'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(72861660165302607)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(72865255371302643)
,p_name=>'DA_VER_DATOS'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P291_VER_DATOS'
,p_condition_element=>'P291_VER_DATOS'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(72865315540302644)
,p_event_id=>wwv_flow_imp.id(72865255371302643)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT C004,-- DESC_MODULO,',
'       C008,-- IVA_INCLUIDO,  ',
'       C014,-- LIBRO_IVA,',
'       C015,-- IND_CHEQUE,',
'       C017,-- IND_ASIENTOS,',
'       C018,-- IND_EXENTO,',
'       C019 --TIMBRADO',
'  INTO :P291_DESC_MODULO, ',
'       :P291_IVA_INCLUIDO, ',
'       :P291_LIBRO_IVA, ',
'       :P291_IND_CHEQUE, ',
'       :P291_IND_ASIENTOS, ',
'       :P291_IND_EXENTO, ',
'       :P291_TIMBRADO     ',
'  FROM APEX_COLLECTIONS',
' WHERE COLLECTION_NAME = ''DETALLE_BSTIPCOM''',
'   AND C002 = :P291_VER_DATOS;',
'',
''))
,p_attribute_02=>'P291_VER_DATOS'
,p_attribute_03=>'P291_DESC_MODULO,P291_IVA_INCLUIDO,P291_LIBRO_IVA,P291_IND_CHEQUE,P291_IND_ASIENTOS,P291_IND_EXENTO,P291_TIMBRADO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(73104805918690623)
,p_name=>'DA_ABRE_EDITAR'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P291_ABRE_EDITAR'
,p_condition_element=>'P291_ABRE_EDITAR'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(73902134284679501)
,p_event_id=>wwv_flow_imp.id(73104805918690623)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P291_SALDOS := ''N'';',
':P291_STOCK := ''N'';',
':P291_TIP_ORIGEN := null;'))
,p_attribute_03=>'P291_SALDOS,P291_STOCK,P291_TIP_ORIGEN'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(73105787176690632)
,p_event_id=>wwv_flow_imp.id(73104805918690623)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BSTIPCOM.PR_DATOS_REGISTRO(PI_SEQ_ID           => TO_NUMBER(:P291_ABRE_EDITAR),',
'                           PO_TIP_COMPROBANTE  => :P291_TIP_COMPROBANTE,',
'                           PO_COD_MODULO       => :P291_COD_MODULO_1,',
'                           PO_DESC_MODULO      => :P291_DESC_MODULO,',
'                           PO_DESCRIPCION      => :P291_DESCRIPCION,',
'                           PO_ABREVIATURA      => :P291_ABREVIATURA,',
'                           PO_LINEAS           => :P291_LINEAS,',
'                           PO_IVA_INCLUIDO     => :P291_IVA_INCLUIDO,',
'                           PO_SALDOS           => :P291_SALDOS,',
'                           PO_STOCK            => :P291_STOCK,',
'                           PO_DESC_ESTADO      => :P291_DESC_ESTADO,',
'                           PO_COD_ESTADO_ART   => :P291_COD_ESTADO_ART,',
'                           PO_LIBRO_IVA        => :P291_LIBRO_IVA_1,',
'                           PO_IND_CHEQUE       => :P291_IND_CHEQUE_1,',
'                           PO_TIP_ORIGEN       => :P291_TIP_ORIGEN,',
'                           PO_IND_ASIENTOS     => :P291_IND_ASIENTOS_1,',
'                           PO_IND_EXENTO       => :P291_IND_EXENTO_1,',
'                           PO_TIMBRADO         => :P291_TIMBRADO_1,',
'                           PO_ROW_ID           => :P291_AUX_ROW_ID);',
'                         ',
'',
'         '))
,p_attribute_02=>'P291_ABRE_EDITAR'
,p_attribute_03=>'P291_TIP_COMPROBANTE,P291_COD_MODULO_1,P291_DESC_MODULO,P291_DESCRIPCION,P291_ABREVIATURA, P291_LINEAS,P291_IVA_INCLUIDO,P291_SALDOS,P291_STOCK,P291_DESC_ESTADO,P291_COD_ESTADO_ART, P291_LIBRO_IVA_1,P291_IND_CHEQUE_1,P291_IND_ASIENTOS_1,P291_IND_EXEN'
||'TO_1, P291_TIP_ORIGEN,P291_TIMBRADO_1,P291_AUX_ROW_ID'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(73902600408679506)
,p_event_id=>wwv_flow_imp.id(73104805918690623)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'document.getElementById(''P291_TIP_COMPROBANTE'').readOnly = true;'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(73902353776679503)
,p_event_id=>wwv_flow_imp.id(73104805918690623)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P291_ESTADO'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(73104975460690624)
,p_event_id=>wwv_flow_imp.id(73104805918690623)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(72865542149302646)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(73105405486690629)
,p_name=>'DA_CANCELAR'
,p_event_sequence=>30
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(73105303348690628)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(73105556960690630)
,p_event_id=>wwv_flow_imp.id(73105405486690629)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(72865542149302646)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(73106672220690641)
,p_name=>'DA_GUARDAR'
,p_event_sequence=>40
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(73105212400690627)
,p_condition_element=>'P291_TIP_COMPROBANTE'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(73903194696679511)
,p_event_id=>wwv_flow_imp.id(73106672220690641)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>unistr('\00BFDesea guardar los cambios?')
,p_attribute_02=>unistr('Atenci\00F3n')
,p_attribute_06=>'Aceptar'
,p_attribute_07=>'Cancelar'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(73903270550679512)
,p_event_id=>wwv_flow_imp.id(73106672220690641)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_FOCUS'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P291_TIP_COMPROBANTE'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(73106736557690642)
,p_event_id=>wwv_flow_imp.id(73106672220690641)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BSTIPCOM.PR_ACTUALIZAR(PI_SEQ_ID           => TO_NUMBER(:P291_ABRE_EDITAR),',
'                       PI_TIP_COMPROBANTE  => :P291_TIP_COMPROBANTE,',
'                       PI_COD_MODULO       => :P291_COD_MODULO_1,',
'                       PI_DESCRIPCION      => :P291_DESCRIPCION,',
'                       PI_ABREVIATURA      => :P291_ABREVIATURA,',
'                       PI_LINEAS           => :P291_LINEAS,',
'                       PI_IVA_INCLUIDO     => :P291_IVA_INCLUIDO_1,',
'                       PI_SALDOS           => :P291_SALDOS,',
'                       PI_STOCK            => :P291_STOCK,',
'                       PI_LIBRO_IVA        => :P291_LIBRO_IVA_1,',
'                       PI_IND_CHEQUE       => :P291_IND_CHEQUE_1,',
'                       PI_TIP_ORIGEN       => :P291_TIP_ORIGEN,',
'                       PI_IND_ASIENTOS     => :P291_IND_ASIENTOS_1,',
'                       PI_IND_EXENTO       => :P291_IND_EXENTO_1,',
'                       PI_TIMBRADO         => :P291_TIMBRADO_1);',
'                     '))
,p_attribute_02=>'P291_ABRE_EDITAR,P291_TIP_COMPROBANTE,P291_COD_MODULO_1,P291_DESCRIPCION,P291_ABREVIATURA,P291_LINEAS,P291_IVA_INCLUIDO_1,P291_SALDOS, P291_STOCK,P291_LIBRO_IVA_1,P291_IND_CHEQUE_1,P291_TIP_ORIGEN,P291_IND_ASIENTOS_1,P291_IND_EXENTO_1,P291_TIMBRADO_1'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P291_ABRE_EDITAR'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(73902847313679508)
,p_event_id=>wwv_flow_imp.id(73106672220690641)
,p_event_result=>'FALSE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'Debe ingresar un tipo de comprobante.'
,p_attribute_02=>unistr('Atenci\00F3n')
,p_attribute_03=>'information'
,p_attribute_06=>'Aceptar'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(73902411674679504)
,p_event_id=>wwv_flow_imp.id(73106672220690641)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BSTIPCOM.PR_CREAR(PI_COD_EMPRESA      => :P291_COD_EMPRESA,',
'                  PI_TIP_COMPROBANTE  => :P291_TIP_COMPROBANTE,',
'                  PI_COD_MODULO       => :P291_COD_MODULO_1,',
'                  PI_DESCRIPCION      => :P291_DESCRIPCION,',
'                  PI_ABREVIATURA      => :P291_ABREVIATURA,',
'                  PI_LINEAS           => :P291_LINEAS,',
'                  PI_IVA_INCLUIDO     => :P291_IVA_INCLUIDO_1,',
'                  PI_SALDOS           => :P291_SALDOS,',
'                  PI_STOCK            => :P291_STOCK,',
'                  PI_LIBRO_IVA        => :P291_LIBRO_IVA_1,',
'                  PI_IND_CHEQUE       => :P291_IND_CHEQUE_1,',
'                  PI_TIP_ORIGEN       => :P291_TIP_ORIGEN,',
'                  PI_IND_ASIENTOS     => :P291_IND_ASIENTOS_1,',
'                  PI_IND_EXENTO       => :P291_IND_EXENTO_1,',
'                  PI_TIMBRADO         => :P291_TIMBRADO_1,',
'                  PI_ESTADO           => :P291_ESTADO);',
''))
,p_attribute_02=>'P291_COD_EMPRESA,P291_TIP_COMPROBANTE,P291_COD_MODULO_1,P291_DESCRIPCION,P291_ABREVIATURA,P291_LINEAS,P291_IVA_INCLUIDO_1,P291_SALDOS,  P291_STOCK,P291_LIBRO_IVA_1,P291_IND_CHEQUE_1,P291_TIP_ORIGEN,P291_IND_ASIENTOS_1,P291_IND_EXENTO_1,P291_TIMBRADO_'
||'1,P291_ESTADO'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P291_ABRE_EDITAR'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(73106938838690644)
,p_event_id=>wwv_flow_imp.id(73106672220690641)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(72865542149302646)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(73106868225690643)
,p_event_id=>wwv_flow_imp.id(73106672220690641)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(72861660165302607)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(73107247967690647)
,p_name=>'DA_CREAR'
,p_event_sequence=>50
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(73107089283690645)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(73107367372690648)
,p_event_id=>wwv_flow_imp.id(73107247967690647)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P291_ABRE_EDITAR,P291_TIP_COMPROBANTE,P291_COD_MODULO_1,P291_DESCRIPCION,P291_ABREVIATURA,P291_LINEAS,P291_SALDOS,P291_STOCK,P291_TIP_ORIGEN,P291_TIMBRADO_1,P291_IVA_INCLUIDO_1,P291_LIBRO_IVA_1,P291_IND_EXENTO_1,P291_IND_CHEQUE_1,P291_IND_ASIENTOS_1,'
||'P291_COD_ESTADO_ART,P291_DESC_ESTADO'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(73107507846690650)
,p_event_id=>wwv_flow_imp.id(73107247967690647)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P291_SALDOS := ''N'';',
':P291_STOCK := ''N'';',
':P291_TIP_ORIGEN := null;'))
,p_attribute_03=>'P291_SALDOS,P291_STOCK,P291_TIP_ORIGEN'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(73902511174679505)
,p_event_id=>wwv_flow_imp.id(73107247967690647)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P291_ESTADO'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(73902743132679507)
,p_event_id=>wwv_flow_imp.id(73107247967690647)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'document.getElementById(''P291_TIP_COMPROBANTE'').readOnly = false;'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(73107484946690649)
,p_event_id=>wwv_flow_imp.id(73107247967690647)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(72865542149302646)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(73903528279679515)
,p_name=>'DA_ELIMINAR_REGISTRO'
,p_event_sequence=>60
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P291_ELIMINAR_REGISTRO'
,p_condition_element=>'P291_ELIMINAR_REGISTRO'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(73903860748679518)
,p_event_id=>wwv_flow_imp.id(73903528279679515)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>unistr('\00BFDesea eliminar el registro?')
,p_attribute_02=>unistr('Atenci\00F3n')
,p_attribute_03=>'information'
,p_attribute_06=>'Aceptar'
,p_attribute_07=>'Cancelar'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(73903628435679516)
,p_event_id=>wwv_flow_imp.id(73903528279679515)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'BSTIPCOM.PR_ELIMINAR(PI_SEQ_ID => TO_NUMBER(:P291_ELIMINAR_REGISTRO));'
,p_attribute_02=>'P291_ELIMINAR_REGISTRO'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(73903707244679517)
,p_event_id=>wwv_flow_imp.id(73903528279679515)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(72861660165302607)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(73904178339679521)
,p_name=>'DA_CAMBIA_ESTADO'
,p_event_sequence=>70
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P291_CAMBIA_ESTADO'
,p_condition_element=>'P291_CAMBIA_ESTADO'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(73904240743679522)
,p_event_id=>wwv_flow_imp.id(73904178339679521)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BSTIPCOM.PR_CHECK_ESTADO(PI_SEQ_ID => TO_NUMBER(:P291_CAMBIA_ESTADO), ',
'                         PI_ACCION => :P291_ACCION);',
'                         '))
,p_attribute_02=>'P291_CAMBIA_ESTADO,P291_ACCION'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(73904366041679523)
,p_name=>'DA_CONFIRMAR_CAMBIOS'
,p_event_sequence=>80
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(73107198128690646)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(73904430671679524)
,p_event_id=>wwv_flow_imp.id(73904366041679523)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>unistr('\00BFDesea confirmar los cambios?')
,p_attribute_02=>unistr('Atenci\00F3n')
,p_attribute_03=>'information'
,p_attribute_06=>'Aceptar'
,p_attribute_07=>'Cancelar'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(73904519049679525)
,p_event_id=>wwv_flow_imp.id(73904366041679523)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_01=>'CONFIRMAR'
,p_attribute_02=>'Y'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(72861829535302609)
,p_process_sequence=>20
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_INIT'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'--PRE FORM',
':P_COD_MODULO := ''BS'';',
':P291_COD_USUARIO := NVL(:P_COD_USUARIO, :APP_USER);',
':P291_COD_EMPRESA := NVL(:P_COD_EMPRESA,''1'');',
':P291_COD_MODULO := :P_COD_MODULO;',
':P291_COD_SUCURSAL := NVL(:P_COD_SUCURSAL, ''01'');',
'',
'BSTIPCOM.PR_CARGA_COLECCION(PI_COD_EMPRESA => :P291_COD_EMPRESA);'))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(73904683609679526)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'CONFIRMAR_CAMBIOS'
,p_process_sql_clob=>'BSTIPCOM.PR_CONFIRMAR_CAMBIOS;'
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CONFIRMAR'
,p_process_when_type=>'REQUEST_EQUALS_CONDITION'
,p_process_success_message=>'Los datos se han guardado correctamente.'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(73904840800679528)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'CLEAR_SESSION'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CONFIRMAR'
,p_process_when_type=>'REQUEST_EQUALS_CONDITION'
);
wwv_flow_imp.component_end;
end;
/
