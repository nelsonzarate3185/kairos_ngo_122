prompt --application/pages/page_00613
begin
--   Manifest
--     PAGE: 00613
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
 p_id=>613
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'CCCLIMOD'
,p_alias=>'CCCLIMOD'
,p_step_title=>'CCCLIMOD'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function seleccionar(cb) {',
'    console.log(cb.value);',
'    console.log(cb.checked);',
'',
'',
'  if (cb.checked == true){',
'    console.log("block" + cb.value);',
'      $s(''P613_ACCION'',''AGREGAR'');',
'      $s(''P613_AUX_CHECK'', cb.value,false);',
'  } else {',
'      $s(''P613_ACCION'',''QUITAR'');',
'      $s(''P613_AUX_CHECK'', cb.value,false);',
'  }',
'  ',
'}',
'',
'function seleccionar_tel(cb) {',
'    console.log(cb.value);',
'    console.log(cb.checked);',
'',
'',
'  if (cb.checked == true){',
'    console.log("block" + cb.value);',
'      $s(''P613_ACCION_TEL'',''AGREGAR'');',
'      $s(''P613_AUX_CHECK_TEL'', cb.value,false);',
'  } else {',
'      $s(''P613_ACCION_TEL'',''QUITAR'');',
'      $s(''P613_AUX_CHECK_TEL'', cb.value,false);',
'  }',
'  ',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_last_updated_by=>'NZARATE'
,p_last_upd_yyyymmddhh24miss=>'20240614111032'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(207200910344570116)
,p_plug_name=>'VARIABLES'
,p_region_template_options=>'#DEFAULT#:js-dialog-size600x400'
,p_plug_template=>wwv_flow_imp.id(40117728043263659)
,p_plug_display_sequence=>970
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(207202125020570128)
,p_plug_name=>'Datos del CLiente'
,p_region_css_classes=>'u-color-14-bg'
,p_region_template_options=>'#DEFAULT#:t-Region--accent1:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>940
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(207200881062570115)
,p_plug_name=>'CABECERA'
,p_parent_plug_id=>wwv_flow_imp.id(207202125020570128)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>950
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(207202270204570129)
,p_plug_name=>'TELEFONOS'
,p_parent_plug_id=>wwv_flow_imp.id(207202125020570128)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--accent1:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>1010
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(207203883934570145)
,p_plug_name=>'REPORT TELEFONOS'
,p_parent_plug_id=>wwv_flow_imp.id(207202270204570129)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select COD_PERSONA,',
'       CODIGO_AREA,',
'       NUM_TELEFONO,   ',
'       (decode(TIP_TELEFONO,',
'                      ''D'',',
'                      ''Linea Directa'',',
'                      ''C'',',
'                      ''Celular'',',
'                      ''F'',',
'                      ''Fax'',',
'                      '''')) TIP_TELEFONO,',
'        (decode(TEL_UBICACION,',
'                      ''C'',',
'                      ''CASA'',',
'                      ''T'',',
'                      ''TRABAJO'',',
'                      ''O'',',
'                      ''OTRO'',',
'                      '''')) TEL_UBICACION,',
'       INTERNO,',
'       NOTA,',
'       APEX_ITEM.CHECKBOX(p_idx => 1 , ',
'                            p_value => ROWID, ',
'                            p_attributes => (case POR_DEFECTO when ''S'' then ''checked '' else null end )||''onclick="seleccionar_tel(this)"'' ) as POR_DEFECTO,',
'       COD_DIRECCION,',
'       PARA_INFORME, ',
'       NULL EDITAR,',
'       NULL ELIMINAR,',
'       ROWID',
'  from TELEF_PERSONAS',
'  WHERE COD_PERSONA= :P613_COD_PERSONA;'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P613_COD_PERSONA'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'REPORT TELEFONOS'
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
 p_id=>wwv_flow_imp.id(207203903991570146)
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
,p_internal_uid=>207203903991570146
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(207204090092570147)
,p_db_column_name=>'COD_PERSONA'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Cod Persona'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(207204195319570148)
,p_db_column_name=>'CODIGO_AREA'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>unistr('\00C1rea')
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(207204253247570149)
,p_db_column_name=>'NUM_TELEFONO'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>unistr('Nro. Tel\00E9fono')
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(207204340673570150)
,p_db_column_name=>'TIP_TELEFONO'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Tipo'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(208337777015827001)
,p_db_column_name=>'TEL_UBICACION'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>unistr('Ubicaci\00F3n')
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(208337857608827002)
,p_db_column_name=>'INTERNO'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Interno'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(208337989733827003)
,p_db_column_name=>'NOTA'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Nota'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(208338089822827004)
,p_db_column_name=>'POR_DEFECTO'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Por Defecto'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(208338124433827005)
,p_db_column_name=>'COD_DIRECCION'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Cod Direccion'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(208338215919827006)
,p_db_column_name=>'PARA_INFORME'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Para Informe'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(208511542530475405)
,p_db_column_name=>'EDITAR'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'&nbsp'
,p_column_link=>'javascript:$s(''P613_EDITAR_TEL'',''#ROWID#'');'
,p_column_linktext=>'<span aria-hidden="true" class="fa fa-edit"></span>'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(208511698962475406)
,p_db_column_name=>'ELIMINAR'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'&nbsp'
,p_column_link=>'javascript:$s(''P613_ELIMINAR_TEL'',''#ROWID#'');'
,p_column_linktext=>'<span class="fa fa-trash-o" aria-hidden="true"></span>'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(208512092304475410)
,p_db_column_name=>'ROWID'
,p_display_order=>140
,p_column_identifier=>'N'
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
 p_id=>wwv_flow_imp.id(208349443450820944)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'2083495'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>5
,p_report_columns=>'EDITAR:CODIGO_AREA:NUM_TELEFONO:TIP_TELEFONO:TEL_UBICACION:INTERNO:NOTA:POR_DEFECTO:ELIMINAR'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(207202383497570130)
,p_plug_name=>'DOCUMENTOS'
,p_parent_plug_id=>wwv_flow_imp.id(207202125020570128)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--accent1:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>1020
,p_plug_new_grid_row=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(208338468001827008)
,p_plug_name=>'REPORT DOCUMENTOS'
,p_parent_plug_id=>wwv_flow_imp.id(207202383497570130)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select COD_PERSONA,',
'       COD_IDENT,',
'       NUMERO,',
'       FEC_VENCIMIENTO,',
'       NUMERO_AGENTE_INF,',
'       DV_AGENTE_INF,',
'       NULL EDITAR,',
'       NULL ELIMINAR,',
'       ROWID',
'  from IDENT_PERSONAS',
'  WHERE COD_PERSONA= :P613_COD_PERSONA'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P613_COD_PERSONA'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'REPORT DOCUMENTOS'
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
 p_id=>wwv_flow_imp.id(208338521874827009)
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
,p_internal_uid=>208338521874827009
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(208338639122827010)
,p_db_column_name=>'COD_PERSONA'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Cod Persona'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(208338757666827011)
,p_db_column_name=>'COD_IDENT'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Tipo'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(208338835191827012)
,p_db_column_name=>'NUMERO'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>unistr('N\00FAmero')
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(208338923412827013)
,p_db_column_name=>'FEC_VENCIMIENTO'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Vencimiento'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(208339054480827014)
,p_db_column_name=>'NUMERO_AGENTE_INF'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Numero Agente Inf'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(208339104991827015)
,p_db_column_name=>'DV_AGENTE_INF'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Dv Agente Inf'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(208511379971475403)
,p_db_column_name=>'EDITAR'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'&nbsp'
,p_column_link=>'javascript:$s(''P613_EDITAR_DOC'',''#ROWID#'');'
,p_column_linktext=>'<span aria-hidden="true" class="fa fa-edit"></span>'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(208511460639475404)
,p_db_column_name=>'ELIMINAR'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'&nbsp'
,p_column_link=>'javascript:$s(''P613_ELIMINAR_DOC'',''#ROWID#'');'
,p_column_linktext=>'<span class="fa fa-trash-o" aria-hidden="true"></span>'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(208511934975475409)
,p_db_column_name=>'ROWID'
,p_display_order=>90
,p_column_identifier=>'I'
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
 p_id=>wwv_flow_imp.id(208350037668820913)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'2083501'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>5
,p_report_columns=>'EDITAR:COD_IDENT:NUMERO:FEC_VENCIMIENTO:ELIMINAR:'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(207202423971570131)
,p_plug_name=>'DIRECCIONES'
,p_parent_plug_id=>wwv_flow_imp.id(207202125020570128)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--accent1:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>960
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select COD_PERSONA,',
'       COD_DIRECCION,',
'        (decode(TIP_DIRECCION,',
'                      ''C'',',
'                      ''CASA'',',
'                      ''T'',',
'                      ''TRABAJO'',',
'                      ''O'',',
'                      ''OTRO'',',
'                      '''')) TIP_DIRECCION,',
'       CASILLA_CORREO,',
'       CODIGO_POSTAL,',
'       DETALLE,',
'       COD_PAIS,',
'       COD_PROVINCIA,',
'       COD_CIUDAD,',
'       COD_BARRIO,',
'       APEX_ITEM.CHECKBOX(p_idx => 1 , ',
'                            p_value => ROWID, ',
'                            p_attributes => (case POR_DEFECTO when ''S'' then ''checked '' else null end )||''onclick="seleccionar(this)"'' ) as POR_DEFECTO,',
'       DESCRIPCION_REF,',
'       NULL EDITAR,',
'       NULL ELIMINAR,',
'       NULL VER,',
'       ROWID',
'  from DIREC_PERSONAS',
'  WHERE COD_PERSONA= :P613_COD_PERSONA'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P613_COD_PERSONA'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'DIRECCIONES'
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
 p_id=>wwv_flow_imp.id(207202558436570132)
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
,p_internal_uid=>207202558436570132
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(207202659805570133)
,p_db_column_name=>'COD_PERSONA'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>unistr('C\00F3d')
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(207202781117570134)
,p_db_column_name=>'COD_DIRECCION'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Cod Direccion'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(207202816060570135)
,p_db_column_name=>'TIP_DIRECCION'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Tipo'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(207202965951570136)
,p_db_column_name=>'CASILLA_CORREO'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'C. Correo'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(207203010377570137)
,p_db_column_name=>'CODIGO_POSTAL'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'C. Postal'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(207203103730570138)
,p_db_column_name=>'DETALLE'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Detalle'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(207203275172570139)
,p_db_column_name=>'COD_PAIS'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>unistr('Pa\00EDs')
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(207203304199570140)
,p_db_column_name=>'COD_PROVINCIA'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Depart'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(207203438103570141)
,p_db_column_name=>'COD_CIUDAD'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Ciudad'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(207203579971570142)
,p_db_column_name=>'COD_BARRIO'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Barrio'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(207203670697570143)
,p_db_column_name=>'POR_DEFECTO'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Por Defecto'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(207203741919570144)
,p_db_column_name=>'DESCRIPCION_REF'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Descripcion Ref'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(208511739986475407)
,p_db_column_name=>'EDITAR'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'&nbsp'
,p_column_link=>'javascript:$s(''P613_EDITAR_DIR'',''#ROWID#'');'
,p_column_linktext=>'<span aria-hidden="true" class="fa fa-edit"></span>'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(208511878120475408)
,p_db_column_name=>'ELIMINAR'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>'&nbsp'
,p_column_link=>'javascript:$s(''P613_ELIMINAR_DIR'',''#ROWID#'');'
,p_column_linktext=>'<span class="fa fa-trash-o" aria-hidden="true"></span>'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(208512144194475411)
,p_db_column_name=>'ROWID'
,p_display_order=>150
,p_column_identifier=>'O'
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
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(208340716332827031)
,p_db_column_name=>'VER'
,p_display_order=>160
,p_column_identifier=>'P'
,p_column_label=>'&nbsp'
,p_column_link=>'javascript:$s(''P613_DETALLE'',''#ROWID#'');'
,p_column_linktext=>'<span aria-hidden="true" class="fa fa-eye"></span>'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(208295494800904702)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'2082955'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>5
,p_report_columns=>'EDITAR:COD_DIRECCION:TIP_DIRECCION:DETALLE:POR_DEFECTO:COD_PAIS:COD_PROVINCIA:COD_CIUDAD:COD_BARRIO:CASILLA_CORREO:CODIGO_POSTAL:VER:ELIMINAR:'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(208339770661827021)
,p_plug_name=>'DATOS'
,p_parent_plug_id=>wwv_flow_imp.id(207202423971570131)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(209023166897930703)
,p_plug_name=>unistr('Crear/Editar Direcci\00F3n')
,p_parent_plug_id=>wwv_flow_imp.id(207202125020570128)
,p_region_template_options=>'#DEFAULT#:js-dialog-size600x400'
,p_plug_template=>wwv_flow_imp.id(40117728043263659)
,p_plug_display_sequence=>980
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(209023269240930704)
,p_plug_name=>'Crear/Editar Telefono'
,p_parent_plug_id=>wwv_flow_imp.id(207202125020570128)
,p_region_template_options=>'#DEFAULT#:js-dialog-autoheight:js-dialog-size600x400'
,p_plug_template=>wwv_flow_imp.id(40117728043263659)
,p_plug_display_sequence=>990
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(209023310386930705)
,p_plug_name=>'Crear/Editar Documentos'
,p_parent_plug_id=>wwv_flow_imp.id(207202125020570128)
,p_region_template_options=>'#DEFAULT#:js-dialog-autoheight:js-dialog-size480x320'
,p_plug_template=>wwv_flow_imp.id(40117728043263659)
,p_plug_display_sequence=>1000
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(208514825697475438)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(209023310386930705)
,p_button_name=>'BT_CANCELAR_DOC'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_image_alt=>'Cancelar'
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(208514176406475431)
,p_button_sequence=>80
,p_button_plug_id=>wwv_flow_imp.id(209023269240930704)
,p_button_name=>'BT_CANCELAR_TEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_image_alt=>'Cancelar'
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(208513349983475423)
,p_button_sequence=>110
,p_button_plug_id=>wwv_flow_imp.id(209023166897930703)
,p_button_name=>'BT_CANCELAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_image_alt=>'Cancelar'
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(208342518561827049)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(207202125020570128)
,p_button_name=>'BT_EJECUTAR'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--simple'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Ejecutar'
,p_button_position=>'COPY'
,p_button_redirect_url=>'f?p=&APP_ID.:614:&SESSION.::&DEBUG.:614:P614_COD_CLIENTE,P614_COD_EMPRESA:&P613_COD_CLIENTE.,&P613_COD_EMPRESA.'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(208512264681475412)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(207202125020570128)
,p_button_name=>'BT_GUARDAR_CLIENTE'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--simple:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Guardar Cliente'
,p_button_position=>'COPY'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-save'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(208514749787475437)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(209023310386930705)
,p_button_name=>'BT_GUARDAR_DOC'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Guardar Documento'
,p_button_position=>'CREATE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(208514006822475430)
,p_button_sequence=>70
,p_button_plug_id=>wwv_flow_imp.id(209023269240930704)
,p_button_name=>'BT_GUARDAR_TELEFONO'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Guardar Telefono'
,p_button_position=>'CREATE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(208513250549475422)
,p_button_sequence=>100
,p_button_plug_id=>wwv_flow_imp.id(209023166897930703)
,p_button_name=>'BT_GUARDAR_DIRECCION'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('Guardar Direcci\00F3n')
,p_button_position=>'CREATE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(208339912193827023)
,p_button_sequence=>120
,p_button_plug_id=>wwv_flow_imp.id(207200881062570115)
,p_button_name=>'BT_BUSCAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Buscar'
,p_button_position=>'CREATE'
,p_warn_on_unsaved_changes=>null
,p_button_condition_type=>'NEVER'
,p_icon_css_classes=>'fa-search'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(208455765649669301)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(207202125020570128)
,p_button_name=>'BT_VOLVER'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--simple:t-Button--gapRight'
,p_button_template_id=>wwv_flow_imp.id(40187078917263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Volver'
,p_button_position=>'LEFT_OF_TITLE'
,p_button_redirect_url=>'f?p=&APP_ID.:618:&SESSION.::&DEBUG.:618::'
,p_icon_css_classes=>'fa-arrow-left'
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
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(208469850033616750)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(207202423971570131)
,p_button_name=>'BT_AGREGAR_DIRECCION'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Agregar Direccion'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(208511101378475401)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(207203883934570145)
,p_button_name=>'BT_AGREGAR_TELEFONO'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Agregar Telefono'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(208511271136475402)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(208338468001827008)
,p_button_name=>'BT_AGREGAR_DOCUMENTO'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Agregar Documento'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(207201116307570118)
,p_name=>'P613_COD_PERSONA'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(207200881062570115)
,p_prompt=>'Cod Persona'
,p_pre_element_text=>'Persona'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_named_lov=>'LVPERSONAS_CCCLIMOD'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select p.cod_persona, ',
'       nvl( ltrim( nombre ), ltrim( nomb_fantasia ) ) nombre,',
'       i.cod_ident,',
'       i.numero',
' from personas p , ident_personas i',
' where p.cod_persona = i.cod_persona',
' order by 2'))
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--preTextBlock'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(207201389175570120)
,p_name=>'P613_NOMBRE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(207200881062570115)
,p_prompt=>'Nombre'
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
 p_id=>wwv_flow_imp.id(207201481737570121)
,p_name=>'P613_COD_CLIENTE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(207200881062570115)
,p_prompt=>'Cod Cliente'
,p_pre_element_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Cliente',
''))
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_named_lov=>'LVCLIENTES_CCCLIMOD'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select nombre, nomb_fantasia, cod_cliente, codigo_area, num_telefono, cod_ident, numero ',
'from cc_clientes c, personas p, telef_personas pt, ident_personas pi ',
'where c.cod_empresa = :P_cod_empresa ',
'and c.cod_persona = p.cod_persona ',
'and p.cod_persona = pt.cod_persona(+) ',
'and p.cod_persona = pi.cod_persona(+) ',
'and c.TIP_CLIENTE IN (''18'',''5'', ''16'') ',
'order by nombre'))
,p_colspan=>2
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--preTextBlock'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(207201565822570122)
,p_name=>'P613_ESTADO'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(207200881062570115)
,p_prompt=>'Estado'
,p_pre_element_text=>'Estado'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>'STATIC:ACTIVO;A,INACTIVO;I,BLOQUEADO;B,CREDITO BLOQUEADO;C,DEMANDADO;D,BLOQUEO RENDICION STA;R'
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--preTextBlock'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(207201642920570123)
,p_name=>'P613_FEC_ESTADO'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(207200881062570115)
,p_prompt=>'Fecha Estado'
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
 p_id=>wwv_flow_imp.id(207201753931570124)
,p_name=>'P613_NOMB_FANTASIA'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(207200881062570115)
,p_prompt=>'Nombre Fantasia'
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
 p_id=>wwv_flow_imp.id(207201803318570125)
,p_name=>'P613_COD_CAUSAL'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(207200881062570115)
,p_prompt=>'Cod Causal'
,p_pre_element_text=>'Causal Bloq.'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--preTextBlock'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(207201902344570126)
,p_name=>'P613_DESC_CAUSAL'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(207200881062570115)
,p_prompt=>unistr('Descripci\00F3n Causal')
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
 p_id=>wwv_flow_imp.id(207202041442570127)
,p_name=>'P613_COMENTARIO'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(207200881062570115)
,p_prompt=>'Comentario'
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
 p_id=>wwv_flow_imp.id(208339202791827016)
,p_name=>'P613_DESC_PAIS'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(208339770661827021)
,p_prompt=>unistr('Descripci\00F3n  Pais')
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(208339388235827017)
,p_name=>'P613_DESC_PROVINCIA'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(208339770661827021)
,p_prompt=>unistr('Descripci\00F3n  Provincia')
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
 p_id=>wwv_flow_imp.id(208339451260827018)
,p_name=>'P613_DESC_CIUDAD'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(208339770661827021)
,p_prompt=>unistr('Descripci\00F3n  Ciudad')
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
 p_id=>wwv_flow_imp.id(208339528448827019)
,p_name=>'P613_DESC_BARRIO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(208339770661827021)
,p_prompt=>unistr('Descripci\00F3n  Barrio')
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
 p_id=>wwv_flow_imp.id(208340258963827026)
,p_name=>'P613_COD_SUCURSAL'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(207200910344570116)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(208340483354827028)
,p_name=>'P613_COD_USUARIO'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(207200910344570116)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(208340579045827029)
,p_name=>'P613_COD_EMPRESA'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(207200910344570116)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(208340827486827032)
,p_name=>'P613_DETALLE'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(208339770661827021)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(208340928239827033)
,p_name=>'P613_ACCION'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(207200910344570116)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(208341096383827034)
,p_name=>'P613_AUX_CHECK'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(207200910344570116)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(208341377112827037)
,p_name=>'P613_ACCION_TEL'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(207200910344570116)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(208341427214827038)
,p_name=>'P613_AUX_CHECK_TEL'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(207200910344570116)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(208341774075827041)
,p_name=>'P613_ACCION_CONSULTA'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(207200910344570116)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(208342439810827048)
,p_name=>'P613_TIP_CLIENTE'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(207200910344570116)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(208512369554475413)
,p_name=>'P613_COD_DIRECCION'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(209023166897930703)
,p_prompt=>'Cod Direccion'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(208512434847475414)
,p_name=>'P613_TIP_DIRECCION'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(209023166897930703)
,p_prompt=>'Tip Direccion'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>'STATIC:Casa;C,Trabajo;T,Otro;O'
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_begin_on_new_line=>'N'
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
 p_id=>wwv_flow_imp.id(208512594414475415)
,p_name=>'P613_DETALLE_AUX'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(209023166897930703)
,p_prompt=>'Detalle'
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
 p_id=>wwv_flow_imp.id(208512600695475416)
,p_name=>'P613_COD_PAIS'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(209023166897930703)
,p_prompt=>'Cod Pais'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LVPAISES_CCCLIMOD'
,p_lov=>'select descripcion, cod_pais from paises order by descripcion'
,p_lov_display_null=>'YES'
,p_cSize=>30
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
 p_id=>wwv_flow_imp.id(208512730049475417)
,p_name=>'P613_COD_PROVINCIA'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(209023166897930703)
,p_prompt=>'Cod Provincia'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LOVPROVINCIAS_CCCLIMOD'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select descripcion, cod_provincia from provincias ',
'where cod_pais = :P613_cod_pais order by descripcion'))
,p_lov_display_null=>'YES'
,p_lov_cascade_parent_items=>'P613_COD_PAIS'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>30
,p_begin_on_new_line=>'N'
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
 p_id=>wwv_flow_imp.id(208512867293475418)
,p_name=>'P613_COD_CIUDAD'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(209023166897930703)
,p_prompt=>'Cod Ciudad'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LOVCIUDADES_CCCLIMOD'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select descripcion, cod_ciudad from ciudades where cod_pais = :P613_cod_pais ',
'and cod_provincia = :P613_cod_provincia order by descripcion'))
,p_lov_display_null=>'YES'
,p_lov_cascade_parent_items=>'P613_COD_PROVINCIA'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>30
,p_begin_on_new_line=>'N'
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
 p_id=>wwv_flow_imp.id(208512996719475419)
,p_name=>'P613_COD_BARRIO'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(209023166897930703)
,p_prompt=>'Cod Barrio'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LOVBARRIOS_CCCLIMOD'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select descripcion, cod_barrio from barrios ',
'where cod_pais = :P613_cod_pais and cod_provincia = :P613_cod_provincia ',
'and cod_ciudad = :P613_cod_ciudad order by descripcion'))
,p_lov_display_null=>'YES'
,p_lov_cascade_parent_items=>'P613_COD_CIUDAD'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>30
,p_begin_on_new_line=>'N'
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
 p_id=>wwv_flow_imp.id(208513012358475420)
,p_name=>'P613_CASILLA_CORREO'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(209023166897930703)
,p_prompt=>'Casilla Correo'
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
 p_id=>wwv_flow_imp.id(208513139407475421)
,p_name=>'P613_CODIGO_POSTAL'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(209023166897930703)
,p_prompt=>'Codigo Postal'
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
 p_id=>wwv_flow_imp.id(208513465719475424)
,p_name=>'P613_CODIGO_AREA'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(209023269240930704)
,p_prompt=>'Codigo Area'
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
 p_id=>wwv_flow_imp.id(208513535512475425)
,p_name=>'P613_NUM_TELEFONO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(209023269240930704)
,p_prompt=>'Num Telefono'
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
 p_id=>wwv_flow_imp.id(208513636333475426)
,p_name=>'P613_TIP_TELEFONO'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(209023269240930704)
,p_prompt=>'Tip Telefono'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>'STATIC:Linea Directa;D,Celular;C,Fax;F'
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
 p_id=>wwv_flow_imp.id(208513785421475427)
,p_name=>'P613_TEL_UBICACION'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(209023269240930704)
,p_prompt=>'Tel Ubicacion'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>'STATIC:Casa;C,Trabajo;T,Otro;O'
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
 p_id=>wwv_flow_imp.id(208513869364475428)
,p_name=>'P613_INTERNO'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(209023269240930704)
,p_prompt=>'Interno'
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
 p_id=>wwv_flow_imp.id(208513955015475429)
,p_name=>'P613_NOTA'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(209023269240930704)
,p_prompt=>'Nota'
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
 p_id=>wwv_flow_imp.id(208514417441475434)
,p_name=>'P613_COD_IDENT'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(209023310386930705)
,p_prompt=>'Cod Ident'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LOVIDENTIFICACIONES_CCCLIMOD'
,p_lov=>'select descripcion, cod_ident from identificaciones order by 1'
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186937130263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(208514521834475435)
,p_name=>'P613_NUMERO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(209023310386930705)
,p_prompt=>'Numero'
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
 p_id=>wwv_flow_imp.id(208514645370475436)
,p_name=>'P613_FEC_VENCIMIENTO'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(209023310386930705)
,p_prompt=>'Fec Vencimiento'
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
 p_id=>wwv_flow_imp.id(209023420175930706)
,p_name=>'P613_EDITAR_DIR'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(207202423971570131)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(209023598760930707)
,p_name=>'P613_EDITAR_TEL'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(207203883934570145)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(209023607630930708)
,p_name=>'P613_EDITAR_DOC'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(208338468001827008)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(209024618901930718)
,p_name=>'P613_POR_DEFECTO'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(209023166897930703)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(209024749375930719)
,p_name=>'P613_ERR'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(207200910344570116)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(209025056494930722)
,p_name=>'P613_EDITAR_DIRECCION'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(207200910344570116)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(209027173260930743)
,p_name=>'P613_POR_DEFECTO_TEL'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(209023269240930704)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(209027867372930750)
,p_name=>'P613_BANDERA'
,p_item_sequence=>260
,p_item_plug_id=>wwv_flow_imp.id(207200910344570116)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(209216535213462106)
,p_name=>'P613_COD_PAIS_AUX'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(208339770661827021)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(209216695443462107)
,p_name=>'P613_COD_PROVINCIA_AUX'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(208339770661827021)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(209216716036462108)
,p_name=>'P613_COD_CIUDAD_AUX'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(208339770661827021)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(209216836119462109)
,p_name=>'P613_COD_BARRIO_AUX'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(208339770661827021)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(209217792542462118)
,p_name=>'P613_ROWID_SELECT'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(207200910344570116)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(209218419097462125)
,p_name=>'P613_EDITAR'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(207200910344570116)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(209218626502462127)
,p_name=>'P613_ELIMINAR_DIR'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(207200910344570116)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(209218784263462128)
,p_name=>'P613_ELIMINAR_TEL'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(207200910344570116)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(209218859285462129)
,p_name=>'P613_ELIMINAR_DOC'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_imp.id(207200910344570116)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(209220808174462149)
,p_name=>'P613_CAMBIA_ESTADO'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_imp.id(207200910344570116)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(210017650518258501)
,p_name=>'P613_COD_FORMA'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_imp.id(207200910344570116)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(210017947957258504)
,p_name=>'P613_COD_MODULO'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_imp.id(207200910344570116)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(210018020277258505)
,p_name=>'P613_NRO_JERARQUIA_DEF'
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_imp.id(207200910344570116)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(210018194158258506)
,p_name=>'P613_TIP_DOCUMENTO_DEF'
,p_item_sequence=>220
,p_item_plug_id=>wwv_flow_imp.id(207200910344570116)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(210018241431258507)
,p_name=>'P613_COD_CONDICION_DEF'
,p_item_sequence=>240
,p_item_plug_id=>wwv_flow_imp.id(207200910344570116)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(210018363306258508)
,p_name=>'P613_TIP_CLIENTE_DEF'
,p_item_sequence=>230
,p_item_plug_id=>wwv_flow_imp.id(207200910344570116)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(210018472732258509)
,p_name=>'P613_PLAZO_DEF'
,p_item_sequence=>250
,p_item_plug_id=>wwv_flow_imp.id(207200910344570116)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(208341100946827035)
,p_name=>'DA_AUX_CHECK'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P613_AUX_CHECK'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(208341291378827036)
,p_event_id=>wwv_flow_imp.id(208341100946827035)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'CCCLIMOD.PR_CHECK_DIRECCION(P_ROWID => :P613_AUX_CHECK, P_ACCION => :P613_ACCION);',
''))
,p_attribute_02=>'P613_ACCION,P613_AUX_CHECK'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(208341536398827039)
,p_name=>'DA_AUX_CHECK_1'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P613_AUX_CHECK_TEL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(208341690293827040)
,p_event_id=>wwv_flow_imp.id(208341536398827039)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'CCCLIMOD.PR_CHECK_DIRECCION(P_ROWID => :P613_AUX_CHECK_TEL, P_ACCION => :P613_ACCION_TEL);',
''))
,p_attribute_02=>'P613_ACCION_TEL,P613_AUX_CHECK_TEL'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(208341858979827042)
,p_name=>'DA_ACCION_CONSULTA'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P613_ACCION_CONSULTA'
,p_condition_element=>'P613_ACCION_CONSULTA'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'1'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(208342328217827047)
,p_event_id=>wwv_flow_imp.id(208341858979827042)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    SELECT DISTINCT',
'        COD_CLIENTE,',
'        TIP_CLIENTE,',
'        COD_PERSONA,',
'        ESTADO,',
'        COD_CAUSAL,',
'        COMENTARIO,',
'        FEC_ESTADO',
'    INTO',
'        :P613_COD_CLIENTE,',
'        :P613_TIP_CLIENTE,',
'        :P613_COD_PERSONA,',
'        :P613_ESTADO,',
'        :P613_COD_CAUSAL,',
'        :P613_COMENTARIO,',
'        :P613_FEC_ESTADO',
'    FROM CC_CLIENTES',
'    WHERE ROWID = :P613_ROWID_SELECT;/*COD_CLIENTE=:P613_COD_CLIENTE',
'    AND TIP_CLIENTE= :P613_TIP_CLIENTE',
'    AND COD_PERSONA =:P613_COD_PERSONA;*/    ',
' ',
'END;'))
,p_attribute_02=>'P613_ROWID_SELECT'
,p_attribute_03=>'P613_ESTADO,P613_COD_CAUSAL,P613_COMENTARIO,P613_FEC_ESTADO,P613_COD_CLIENTE,P613_TIP_CLIENTE,P613_COD_PERSONA'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(209220967209462150)
,p_event_id=>wwv_flow_imp.id(208341858979827042)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
':p613_cod_forma:= NULL;',
':P613_CAMBIA_ESTADO     :=  busca_permiso(:P_cod_empresa, ',
'										:P613_cod_forma, ',
'										:P_cod_usuario, ',
'										''CAMBIA_ESTADO'' ) ;'))
,p_attribute_03=>'P613_CAMBIA_ESTADO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(209027751891930749)
,p_event_id=>wwv_flow_imp.id(208341858979827042)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P613_ESTADO'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P613_CAMBIA_ESTADO'
,p_client_condition_expression=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(208514962945475439)
,p_event_id=>wwv_flow_imp.id(208341858979827042)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(207202423971570131)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(208515043109475440)
,p_event_id=>wwv_flow_imp.id(208341858979827042)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(208338468001827008)
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
 p_id=>wwv_flow_imp.id(208515190678475441)
,p_event_id=>wwv_flow_imp.id(208341858979827042)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(207203883934570145)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(209218082764462121)
,p_event_id=>wwv_flow_imp.id(208341858979827042)
,p_event_result=>'TRUE'
,p_action_sequence=>80
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_server_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(208342099970827044)
,p_name=>'DA_SET_CONSULTA'
,p_event_sequence=>40
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P613_ACCION_CONSULTA'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(208342173244827045)
,p_event_id=>wwv_flow_imp.id(208342099970827044)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_02=>'P613_ACCION_CONSULTA'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(208342695534827050)
,p_name=>'DA_BUSCAR'
,p_event_sequence=>50
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(208339912193827023)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(209022945981930701)
,p_event_id=>wwv_flow_imp.id(208342695534827050)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_02=>'P613_COD_CLIENTE'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(209023767175930709)
,p_name=>'DA_EDITAR_DIR'
,p_event_sequence=>60
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P613_EDITAR_DIR'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(209023866458930710)
,p_event_id=>wwv_flow_imp.id(209023767175930709)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(209023166897930703)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(209025265565930724)
,p_event_id=>wwv_flow_imp.id(209023767175930709)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'    if :P613_EDITAR_DIR is not null then',
'        select ',
'                   COD_PERSONA,',
'                   COD_DIRECCION,',
'                   TIP_DIRECCION,',
'                   CASILLA_CORREO,',
'                   CODIGO_POSTAL,',
'                   DETALLE,',
'                   COD_PAIS,',
'                   COD_PROVINCIA,',
'                   COD_CIUDAD,',
'                   COD_BARRIO,',
'                   POR_DEFECTO',
'        into ',
'                :P613_COD_PERSONA,',
'                :P613_COD_DIRECCION,',
'                :P613_TIP_DIRECCION,',
'                :P613_CASILLA_CORREO,',
'                :P613_CODIGO_POSTAL,',
'                :P613_DETALLE_AUX,',
'                :P613_COD_PAIS,',
'                :P613_COD_PROVINCIA,',
'                :P613_COD_CIUDAD,',
'                :P613_COD_BARRIO,',
'                :P613_POR_DEFECTO',
'        from DIREC_PERSONAS',
'        where rowid = :P613_EDITAR_DIR;',
'    end if;',
'exception',
'    when others then    ',
'    apex_debug.error(sqlerrm);',
'end;'))
,p_attribute_02=>'P613_EDITAR_DIR'
,p_attribute_03=>'P613_COD_PERSONA,P613_COD_DIRECCION,P613_TIP_DIRECCION,P613_CASILLA_CORREO,P613_CODIGO_POSTAL,P613_DETALLE_AUX,P613_COD_PAIS,P613_COD_PROVINCIA,P613_COD_CIUDAD,P613_COD_BARRIO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(209023912179930711)
,p_name=>'DA_EDITAR_TEL'
,p_event_sequence=>70
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P613_EDITAR_TEL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(209024057669930712)
,p_event_id=>wwv_flow_imp.id(209023912179930711)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(209023269240930704)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(209026548659930737)
,p_event_id=>wwv_flow_imp.id(209023912179930711)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'    if :P613_EDITAR_TEL is not null then',
'        select ',
'                       COD_PERSONA,',
'                       CODIGO_AREA,',
'                       NUM_TELEFONO,',
'                       TIP_TELEFONO,',
'                       TEL_UBICACION,',
'                       INTERNO,',
'                       NOTA',
'        into ',
'                    :P613_COD_PERSONA,',
'                    :P613_CODIGO_AREA,',
'                    :P613_NUM_TELEFONO,',
'                    :P613_TIP_TELEFONO,',
'                    :P613_TEL_UBICACION,',
'                    :P613_INTERNO,',
'                    :P613_NOTA',
'        from TELEF_PERSONAS',
'        where rowid = :P613_EDITAR_TEL;',
'    end if;',
'exception',
'    when others then    ',
'    apex_debug.error(sqlerrm);',
'end;'))
,p_attribute_02=>'P613_EDITAR_TEL'
,p_attribute_03=>'P613_COD_PERSONA,P613_CODIGO_AREA,P613_NUM_TELEFONO,P613_TIP_TELEFONO,P613_TEL_UBICACION,P613_INTERNO,P613_NOTA'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(209024110065930713)
,p_name=>'DA_EDITAR_DOC'
,p_event_sequence=>80
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P613_EDITAR_DOC'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(209024230734930714)
,p_event_id=>wwv_flow_imp.id(209024110065930713)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(209023310386930705)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(209026411867930736)
,p_event_id=>wwv_flow_imp.id(209024110065930713)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'',
'    if :P613_EDITAR_DOC is not null then',
'        select ',
'                       COD_PERSONA,',
'                       COD_IDENT,',
'                       NUMERO,',
'                       FEC_VENCIMIENTO',
'        into ',
'                        :P613_COD_PERSONA,',
'                        :P613_COD_IDENT,',
'                        :P613_NUMERO,',
'                        :P613_FEC_VENCIMIENTO',
'        from IDENT_PERSONAS',
'        ',
'        where ROWID = :P613_EDITAR_DOC;',
'    end if;',
'exception',
'    when others then    ',
'    ',
'    apex_debug.error(sqlerrm);',
'end;'))
,p_attribute_02=>'P613_EDITAR_DOC'
,p_attribute_03=>'P613_COD_PERSONA,P613_COD_IDENT,P613_NUMERO,P613_FEC_VENCIMIENTO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(208515238684475442)
,p_name=>'DA_AGREGAR_DIRECCION'
,p_event_sequence=>90
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(208469850033616750)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(208515340690475443)
,p_event_id=>wwv_flow_imp.id(208515238684475442)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(209023166897930703)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(209217901765462120)
,p_event_id=>wwv_flow_imp.id(208515238684475442)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P613_COD_DIRECCION:=CCCLIMOD.FN_COD_DIRECCION(PI_COD_PERSONA => :P613_COD_PERSONA);',
':P613_TIP_DIRECCION:=NULL;',
':P613_CASILLA_CORREO:=NULL;',
':P613_CODIGO_POSTAL:=NULL;',
':P613_DETALLE_AUX:=NULL;',
':P613_COD_PAIS:=NULL;',
':P613_COD_PROVINCIA:=NULL;',
':P613_COD_CIUDAD:=NULL;',
':P613_COD_BARRIO:=NULL;',
':P613_EDITAR_DIR:=NULL;',
''))
,p_attribute_02=>'P613_COD_PERSONA'
,p_attribute_03=>'P613_COD_DIRECCION,P613_TIP_DIRECCION,P613_CASILLA_CORREO,P613_CODIGO_POSTAL,P613_DETALLE_AUX,P613_COD_PAIS,P613_COD_PROVINCIA,P613_COD_CIUDAD,P613_COD_BARRIO,P613_EDITAR_DIR'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(208515410682475444)
,p_name=>'DA_AGREGAR_TELEFONO'
,p_event_sequence=>100
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(208511101378475401)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(208515596354475445)
,p_event_id=>wwv_flow_imp.id(208515410682475444)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(209023269240930704)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(208515685000475446)
,p_name=>'DA_AGREGAR_DOCUMENTOS'
,p_event_sequence=>110
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(208511271136475402)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(208515715649475447)
,p_event_id=>wwv_flow_imp.id(208515685000475446)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(209023310386930705)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(208515824423475448)
,p_name=>'DA_COD_PERSONA'
,p_event_sequence=>120
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P613_COD_PERSONA'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(208515905537475449)
,p_event_id=>wwv_flow_imp.id(208515824423475448)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'   select ltrim( nombre ), ltrim( nomb_fantasia )',
'      into :P613_nombre, :P613_nomb_fantasia',
'      from personas',
'      where cod_persona = :P613_cod_persona ;',
'exception',
'   when others then',
'      :P613_nombre := null ;',
'      :P613_nomb_fantasia := null ;',
'end ;'))
,p_attribute_02=>'P613_COD_PERSONA'
,p_attribute_03=>'P613_NOMBRE,P613_NOMB_FANTASIA'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(208516064475475450)
,p_name=>'DA_CAUSAL'
,p_event_sequence=>130
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P613_COD_CAUSAL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(209216090769462101)
,p_event_id=>wwv_flow_imp.id(208516064475475450)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/*',
' if NVL(:variables.CAMBIA_ESTADO,''N'')=''S'' then 	',
'		SET_ITEM_PROPERTY(  ''P613_ESTADO'',     ENABLED,     PROPERTY_TRUE     );',
' else',
'		SET_ITEM_PROPERTY(  ''P613_ESTADO'',     ENABLED,    PROPERTY_FALSE    );',
' end if;*/',
'begin',
'   select descripcion',
'      into :P613_desc_causal',
'      from cc_causales',
'      where cod_causal = :P613_cod_causal ;',
'exception',
'   when others then',
'      :P613_desc_causal := null ;',
'end ;',
''))
,p_attribute_02=>'P613_COD_CAUSAL'
,p_attribute_03=>'P613_DESC_CAUSAL'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(209216327115462104)
,p_name=>'DA_DETALLE'
,p_event_sequence=>140
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P613_DETALLE'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(209216479993462105)
,p_event_id=>wwv_flow_imp.id(209216327115462104)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'   begin',
'         select cod_pais,cod_provincia,cod_ciudad,cod_barrio',
'            into :P613_cod_pais_AUX,:P613_COD_PROVINCIA_AUX,:P613_COD_CIUDAD_AUX,:P613_COD_BARRIO_AUX',
'            from DIREC_PERSONAS',
'            where ROWID = :P613_DETALLE ;',
'   exception',
'      when others then',
'         null ;',
'   end ;'))
,p_attribute_02=>'P613_DETALLE'
,p_attribute_03=>'P613_COD_PAIS_AUX,P613_COD_PROVINCIA_AUX,P613_COD_CIUDAD_AUX,P613_COD_BARRIO_AUX'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(209216906729462110)
,p_name=>'DA_COD_PAIS_AUX'
,p_event_sequence=>150
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P613_COD_PAIS_AUX'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(209217047378462111)
,p_event_id=>wwv_flow_imp.id(209216906729462110)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'   begin',
'         select descripcion',
'            into :P613_desc_pais',
'            from paises',
'            where cod_pais = :P613_cod_pais_aux ;',
'   exception',
'      when others then',
'         null ;',
'   end ;'))
,p_attribute_02=>'P613_COD_PAIS_AUX'
,p_attribute_03=>'P613_DESC_PAIS'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(209217101382462112)
,p_name=>'DA_PROVINCIA_AUX'
,p_event_sequence=>160
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P613_COD_PROVINCIA_AUX'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(209217268226462113)
,p_event_id=>wwv_flow_imp.id(209217101382462112)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'   begin',
'      if :P613_cod_pais_AUX is not null  and  :P613_cod_provincia_AUX is not null then',
'         select descripcion',
'            into :P613_desc_provincia',
'            from provincias',
'            where cod_pais      = :P613_cod_pais_AUX',
'              and cod_provincia = :P613_cod_provincia_AUX ;',
'      end if ;',
'   exception',
'      when others then',
'         null ;',
'   end ;'))
,p_attribute_02=>'P613_COD_PAIS_AUX,P613_COD_PROVINCIA_AUX'
,p_attribute_03=>'P613_DESC_PROVINCIA'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(209217334469462114)
,p_name=>'DA_COD_CIUDAD_AUX'
,p_event_sequence=>170
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P613_COD_CIUDAD_AUX'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(209217421783462115)
,p_event_id=>wwv_flow_imp.id(209217334469462114)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'   begin',
'      if :P613_cod_pais_AUX      is not null  and ',
'         :P613_cod_provincia_aux is not null  and',
'         :P613_cod_ciudad_aux    is not null  then',
'            select descripcion',
'               into :P613_desc_ciudad',
'               from ciudades',
'               where cod_pais      = :P613_cod_pais_AUX',
'                 and cod_provincia = :P613_cod_provincia_aux',
'                 and cod_ciudad    = :P613_cod_ciudad_aux ;',
'      end if ;',
'   exception',
'      when others then',
'         null ;',
'   end ;'))
,p_attribute_02=>'P613_COD_PAIS_AUX,P613_COD_PROVINCIA_AUX,P613_COD_CIUDAD_AUX'
,p_attribute_03=>'P613_DESC_CIUDAD'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(209217594095462116)
,p_name=>'DA_COD_BARRIO'
,p_event_sequence=>180
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P613_COD_BARRIO_AUX'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(209217686818462117)
,p_event_id=>wwv_flow_imp.id(209217594095462116)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'   begin',
'      if :P613_cod_pais_aux      is not null and',
'         :P613_cod_provincia_aux is not null and',
'         :P613_cod_ciudad_aux    is not null and',
'         :P613_cod_barrio_aux    is not null then',
'            select descripcion',
'               into :P613_desc_barrio',
'               from barrios',
'               where cod_pais      = :P613_cod_pais_aux',
'                 and cod_provincia = :P613_cod_provincia_aux',
'                 and cod_ciudad    = :P613_cod_ciudad_aux',
'                 and cod_barrio    = :P613_cod_barrio_aux ;',
'      end if ;',
'   exception',
'      when others then',
'         null ;',
'   end ;'))
,p_attribute_02=>'P613_COD_PAIS_AUX,P613_COD_PROVINCIA_AUX,P613_COD_CIUDAD_AUX,P613_COD_BARRIO_AUX'
,p_attribute_03=>'P613_DESC_BARRIO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(209024314008930715)
,p_name=>'DA_GUARDAR_DIRECCION'
,p_event_sequence=>190
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(208513250549475422)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(209024504164930717)
,p_event_id=>wwv_flow_imp.id(209024314008930715)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
':P613_ERR := null;',
'    IF :P613_COD_PERSONA is not null and :P613_COD_DIRECCION is not null and :P613_DETALLE_AUX is not null then',
'            IF :P613_EDITAR_DIR IS NULL THEN',
'                --INSERTAR REGISTRO   ',
'                :P613_POR_DEFECTO:=''S'';',
'                INSERT INTO DIREC_PERSONAS (',
'                       COD_PERSONA,',
'                       COD_DIRECCION,',
'                       TIP_DIRECCION,',
'                       CASILLA_CORREO,',
'                       CODIGO_POSTAL,',
'                       DETALLE,',
'                       COD_PAIS,',
'                       COD_PROVINCIA,',
'                       COD_CIUDAD,',
'                       COD_BARRIO,',
'                       POR_DEFECTO',
'',
'                ) VALUES (',
'                        :P613_COD_PERSONA,',
'                        :P613_COD_DIRECCION,',
'                        :P613_TIP_DIRECCION,',
'                        :P613_CASILLA_CORREO,',
'                        :P613_CODIGO_POSTAL,',
'                        :P613_DETALLE_AUX,',
'                        :P613_COD_PAIS,',
'                        :P613_COD_PROVINCIA,',
'                        :P613_COD_CIUDAD,',
'                        :P613_COD_BARRIO,',
'                        :P613_POR_DEFECTO',
'                );',
'',
'        ',
'            ELSE ',
'                --ACTUALIZO EL REGISTRO',
'                UPDATE DIREC_PERSONAS SET',
'                        --COD_PERSONA = :P613_COD_PERSONA,',
'                        COD_DIRECCION = :P613_COD_DIRECCION,',
'                        TIP_DIRECCION = :P613_TIP_DIRECCION,',
'                        CASILLA_CORREO = :P613_CASILLA_CORREO,',
'                        CODIGO_POSTAL = :P613_CODIGO_POSTAL,',
'                        DETALLE = :P613_DETALLE_AUX,',
'                        COD_PAIS = :P613_COD_PAIS,',
'                        COD_PROVINCIA = :P613_COD_PROVINCIA,',
'                        COD_CIUDAD = :P613_COD_CIUDAD,',
'                        COD_BARRIO = :P613_COD_BARRIO,',
'                        POR_DEFECTO = :P613_POR_DEFECTO',
'                WHERE ROWID = :P613_EDITAR_DIR;',
'            END IF;',
'    ELSE',
'        CASE',
'            when :P613_COD_PERSONA is null then :P613_ERR := ''Por favor: ingrese el campo "COD_PERSONA" '';',
'            when :P613_COD_DIRECCION is null then :P613_ERR := ''Por favor: ingrese el campo "COD_DIRECCION"''; ',
'            when :P613_DETALLE_AUX is null then :P613_ERR := ''Por favor: ingrese el campo "DETALLE" '';       ',
'',
'        end case;',
'    END IF;',
'EXCEPTION',
'    WHEN OTHERS THEN ',
'        APEX_DEBUG.ERROR(''ERROR: ''||SQLERRM);',
'       :P613_ERR:=''Ha ocurrido el siguiente error:'' ||SQLERRM;',
'',
'END;'))
,p_attribute_02=>'P613_COD_PERSONA,P613_COD_DIRECCION,P613_TIP_DIRECCION,P613_CASILLA_CORREO,P613_CODIGO_POSTAL,P613_DETALLE_AUX,P613_COD_PAIS,P613_COD_PROVINCIA,P613_COD_CIUDAD,P613_COD_BARRIO,P613_POR_DEFECTO,P613_EDITAR_DIR'
,p_attribute_03=>'P613_ERR'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(209025731278930729)
,p_event_id=>wwv_flow_imp.id(209024314008930715)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(209023166897930703)
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P613_ERR'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(209025848263930730)
,p_event_id=>wwv_flow_imp.id(209024314008930715)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(207202423971570131)
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P613_ERR'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(209024816803930720)
,p_name=>'DA_ERR'
,p_event_sequence=>200
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P613_ERR'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(209024971695930721)
,p_event_id=>wwv_flow_imp.id(209024816803930720)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'&P613_ERR.'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P613_ERR'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(209025110813930723)
,p_name=>'DA_EDITAR_DIRECCION'
,p_event_sequence=>210
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P613_EDITAR_DIRECCION'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(209025397392930725)
,p_name=>'DA_CANCELAR'
,p_event_sequence=>220
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(208514825697475438)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(209025443196930726)
,p_event_id=>wwv_flow_imp.id(209025397392930725)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(209023310386930705)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(209025546370930727)
,p_name=>'DA_CANCELAR_DIR'
,p_event_sequence=>230
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(208513349983475423)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(209025615124930728)
,p_event_id=>wwv_flow_imp.id(209025546370930727)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(209023166897930703)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(209025984905930731)
,p_name=>'DA_GUARDAR_DOC'
,p_event_sequence=>240
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(208514749787475437)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(210432055374211403)
,p_event_id=>wwv_flow_imp.id(209025984905930731)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
':P613_BANDERA:=NULL;',
' declare',
'    vruc varchar2(30);',
'    vnom varchar2(100);',
'',
'    begin',
'      select max(cod_persona)',
'       into vruc',
'       from ident_personas',
'      where  cod_ident =:P613_cod_ident',
'       and numero =:P613_numero;',
'',
'      select nombre',
'       into vnom',
'       from personas',
'      where cod_persona = vruc;',
'    :P613_BANDERA:=(''Ya existe ese Nro de Ruc con el cod_persona ''||''  ''||vruc||''  ''||''y nombre  ''||vnom);',
'',
'exception',
'when others then',
' null;',
'end;',
'end;',
'',
''))
,p_attribute_02=>'P613_COD_IDENT,P613_NUMERO'
,p_attribute_03=>'P613_BANDERA'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(209026108633930733)
,p_event_id=>wwv_flow_imp.id(209025984905930731)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
':P613_ERR := null;',
'    IF :P613_COD_PERSONA is not null and :P613_COD_IDENT is not null  then',
'            IF :P613_EDITAR_DOC IS NULL THEN',
'                --INSERTAR REGISTRO   ',
'                INSERT INTO IDENT_PERSONAS (',
'                       COD_PERSONA,',
'                       COD_IDENT,',
'                       NUMERO,',
'                       FEC_VENCIMIENTO',
'                ) VALUES (',
'                        :P613_COD_PERSONA,',
'                        :P613_COD_IDENT,',
'                        :P613_NUMERO,',
'                        :P613_FEC_VENCIMIENTO',
'                );',
'',
'        ',
'            ELSE ',
'                --ACTUALIZO EL REGISTRO',
'                UPDATE IDENT_PERSONAS SET',
'                        --COD_PERSONA = :P613_COD_PERSONA,',
'                    COD_IDENT = :P613_COD_IDENT,',
'                    NUMERO = :P613_NUMERO,',
'                    FEC_VENCIMIENTO = :P613_FEC_VENCIMIENTO',
'                WHERE ROWID = :P613_EDITAR_DOC;',
'            END IF;',
'    ELSE',
'        CASE',
'            when :P613_COD_PERSONA is null then :P613_ERR := ''Por favor: ingrese el campo "COD_PERSONA" '';',
'            when :P613_COD_IDENT is null then :P613_ERR := ''Por favor: ingrese el campo "COD_IDENT"'';   ',
'',
'        end case;',
'    END IF;',
'EXCEPTION',
'    WHEN OTHERS THEN ',
'        APEX_DEBUG.ERROR(''ERROR: ''||SQLERRM);',
'       :P613_ERR:=''Ha ocurrido un error. Por favor revise e ingrese los datos nuevamente'';',
'',
'END;'))
,p_attribute_02=>'P613_COD_PERSONA,P613_COD_IDENT,P613_NUMERO,P613_FEC_VENCIMIENTO'
,p_attribute_03=>'P613_ERR'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(209026252869930734)
,p_event_id=>wwv_flow_imp.id(209025984905930731)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(209023310386930705)
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P613_ERR'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(209026388501930735)
,p_event_id=>wwv_flow_imp.id(209025984905930731)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(208338468001827008)
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P613_ERR'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(209026661661930738)
,p_name=>'DA_GUARDAR_TEL'
,p_event_sequence=>250
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(208514006822475430)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(209026884258930740)
,p_event_id=>wwv_flow_imp.id(209026661661930738)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
':P613_ERR := null;',
'    IF :P613_COD_PERSONA is not null and :P613_CODIGO_AREA is not null and :P613_NUM_TELEFONO is not null then',
'            IF :P613_EDITAR_TEL IS NULL THEN',
'                --INSERTAR REGISTRO   ',
'                :P613_POR_DEFECTO_TEL:=''S'';',
'                INSERT INTO TELEF_PERSONAS (',
'                       COD_PERSONA,',
'                       CODIGO_AREA,',
'                       NUM_TELEFONO,',
'                       TIP_TELEFONO,',
'                       TEL_UBICACION,',
'                       INTERNO,',
'                       NOTA,',
'                       POR_DEFECTO',
'',
'                ) VALUES (',
'                    :P613_COD_PERSONA,',
'                    :P613_CODIGO_AREA,',
'                    :P613_NUM_TELEFONO,',
'                    :P613_TIP_TELEFONO,',
'                    :P613_TEL_UBICACION,',
'                    :P613_INTERNO,',
'                    :P613_NOTA,',
'                    :P613_POR_DEFECTO_TEL',
'                );',
'',
'        ',
'            ELSE ',
'                --ACTUALIZO EL REGISTRO',
'                UPDATE TELEF_PERSONAS SET',
'        --COD_PERSONA = :P613_COD_PERSONA,',
'            CODIGO_AREA = :P613_CODIGO_AREA,',
'            NUM_TELEFONO = :P613_NUM_TELEFONO,',
'            TIP_TELEFONO = :P613_TIP_TELEFONO,',
'            TEL_UBICACION = :P613_TEL_UBICACION,',
'            INTERNO = :P613_INTERNO,',
'            NOTA = :P613_NOTA,',
'            POR_DEFECTO = :P613_POR_DEFECTO_TEL',
'                WHERE ROWID = :P613_EDITAR_TEL;',
'            END IF;',
'    ELSE',
'        CASE',
'            when :P613_COD_PERSONA is null then :P613_ERR := ''Por favor: ingrese el campo "COD_PERSONA" '';',
'            when :P613_CODIGO_AREA is null then :P613_ERR := ''Por favor: ingrese el campo "CODIGO_AREA"''; ',
'            when :P613_NUM_TELEFONO is null then :P613_ERR := ''Por favor: ingrese el campo "NUM_TELEFONO" '';       ',
'',
'        end case;',
'    END IF;',
'EXCEPTION',
'    WHEN OTHERS THEN ',
'        APEX_DEBUG.ERROR(''ERROR: ''||SQLERRM);',
'       -- :P613_ERR:=''Ha ocurrido un error. Por favor ingrese los datos nuevamente'';',
'',
'END;'))
,p_attribute_02=>'P613_COD_PERSONA,P613_CODIGO_AREA,P613_NUM_TELEFONO,P613_TIP_TELEFONO,P613_TEL_UBICACION,P613_INTERNO,P613_NOTA,P613_POR_DEFECTO_TEL'
,p_attribute_03=>'P613_ERR'
,p_attribute_04=>'N'
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
 p_id=>wwv_flow_imp.id(209026956332930741)
,p_event_id=>wwv_flow_imp.id(209026661661930738)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(209023269240930704)
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P613_ERR'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(209027043864930742)
,p_event_id=>wwv_flow_imp.id(209026661661930738)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(207203883934570145)
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P613_ERR'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(209218196680462122)
,p_name=>'DA_GUARDAR_CLIENTE'
,p_event_sequence=>260
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(208512264681475412)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(209218297374462123)
,p_event_id=>wwv_flow_imp.id(209218196680462122)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
':P613_ERR := null;',
'IF  :P613_COD_CLIENTE is not null and :P613_COD_PERSONA is not null THEN',
'    IF :P613_EDITAR IS NULL THEN',
'        CCCLIMOD.PR_CONFIRMAR(',
'           PI_COD_CLIENTE => :P613_COD_CLIENTE,',
'            PI_TIP_CLIENTE => :P613_TIP_CLIENTE ,',
'            PI_COD_PERSONA => :P613_COD_PERSONA ,',
'            PI_ESTADO => :P613_ESTADO ,',
'            PI_COD_CAUSAL => :P613_COD_CAUSAL ,',
'            PI_COMENTARIO => :P613_COMENTARIO ,',
'            PI_FEC_ESTADO => :P613_FEC_ESTADO ,',
'            PI_ROWID_SELECT => :P613_ROWID_SELECT, ',
'            PO_MENSAJE_ERROR => :P613_ERR );',
'    END IF;',
'ELSE',
'    :P613_ERR := ''Por favor: ingrese los campos obligatorios '';     ',
'END IF;',
'EXCEPTION',
'WHEN OTHERS THEN ',
'    :P613_ERR:=(''Ocurrio un error al actualiza el cliente. Por favor revise los datos nuevamente''|| SQLERRM);',
'   -- APEX_DEBUG.ERROR(SQLERRM);',
'END;'))
,p_attribute_02=>'P613_COD_CLIENTE,P613_TIP_CLIENTE,P613_COD_PERSONA,P613_ESTADO,P613_COD_CAUSAL,P613_COMENTARIO,P613_FEC_ESTADO'
,p_attribute_03=>'P613_ERR'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(209218306560462124)
,p_event_id=>wwv_flow_imp.id(209218196680462122)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'Se guardaron los cambios correctamente'
,p_attribute_03=>'success'
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P613_ERR'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(209218908856462130)
,p_name=>'DA_ELIMINAR_DIR'
,p_event_sequence=>270
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P613_ELIMINAR_DIR'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(209219641106462137)
,p_event_id=>wwv_flow_imp.id(209218908856462130)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>'Desea eliminar este registro?'
,p_attribute_03=>'warning'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(209219792938462138)
,p_event_id=>wwv_flow_imp.id(209218908856462130)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
'  begin',
'    :P613_ERR:=NULL;',
'            DELETE  DIREC_PERSONAS',
'            WHERE ROWID = :P613_ELIMINAR_DIR;',
'            EXCEPTION',
'            WHEN OTHERS THEN',
'                :P613_ERR:=''Error al eliminar el registro seleccionado, por favor verifique los datos que desea eliminar'';',
'                APEX_DEBUG.ERROR(SQLERRM);',
'         end;'))
,p_attribute_02=>'P613_ELIMINAR_DIR'
,p_attribute_03=>'P613_ERR'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(209219826978462139)
,p_event_id=>wwv_flow_imp.id(209218908856462130)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(207202423971570131)
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P613_ERR'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(209219962873462140)
,p_event_id=>wwv_flow_imp.id(209218908856462130)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>unistr('Se elimin\00F3 el registro correctamente')
,p_attribute_03=>'success'
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P613_ERR'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(209219285309462133)
,p_name=>'DA_ELIMINAR_TEL'
,p_event_sequence=>280
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P613_ELIMINAR_TEL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(209220099735462141)
,p_event_id=>wwv_flow_imp.id(209219285309462133)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>'Desea eliminar este registro?'
,p_attribute_03=>'warning'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(209220176227462142)
,p_event_id=>wwv_flow_imp.id(209219285309462133)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  begin',
'    :P613_ERR:=NULL;',
'            DELETE  TELEF_PERSONAS',
'            WHERE ROWID = :P613_ELIMINAR_TEL;',
'            EXCEPTION',
'            WHEN OTHERS THEN',
'                :P613_ERR:=''Error al eliminar el registro seleccionado, por favor verifique los datos que desea eliminar'';',
'                APEX_DEBUG.ERROR(SQLERRM);',
'         end;'))
,p_attribute_02=>'P613_ELIMINAR_TEL'
,p_attribute_03=>'P613_ERR'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(209220249680462143)
,p_event_id=>wwv_flow_imp.id(209219285309462133)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(207203883934570145)
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P613_ERR'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(209220335316462144)
,p_event_id=>wwv_flow_imp.id(209219285309462133)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>unistr('Se elimin\00F3 el registro correctamente')
,p_attribute_03=>'success'
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P613_ERR'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(209219408544462135)
,p_name=>'DA_ELIMINAR_DOC'
,p_event_sequence=>290
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P613_ELIMINAR_DOC'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(209220462401462145)
,p_event_id=>wwv_flow_imp.id(209219408544462135)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>'Desea eliminar este registro?'
,p_attribute_03=>'warning'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(209220563542462146)
,p_event_id=>wwv_flow_imp.id(209219408544462135)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  begin',
'    :P613_ERR:=NULL;',
'            DELETE  IDENT_PERSONAS',
'            WHERE ROWID = :P613_ELIMINAR_DOC;',
'            EXCEPTION',
'            WHEN OTHERS THEN',
'                :P613_ERR:=''Error al eliminar el registro seleccionado, por favor verifique los datos que desea eliminar'';',
'                APEX_DEBUG.ERROR(SQLERRM);',
'         end;'))
,p_attribute_02=>'P613_ELIMINAR_DOC'
,p_attribute_03=>'P613_ERR'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(209220613424462147)
,p_event_id=>wwv_flow_imp.id(209219408544462135)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(208338468001827008)
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P613_ERR'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(209220747451462148)
,p_event_id=>wwv_flow_imp.id(209219408544462135)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>unistr('Se elimin\00F3 el registro correctamente')
,p_attribute_03=>'success'
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P613_ERR'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(210017756680258502)
,p_name=>'DA_CAMBIA_ESTADO'
,p_event_sequence=>300
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(210017860410258503)
,p_event_id=>wwv_flow_imp.id(210017756680258502)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P613_ESTADO'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P613_CAMBIA_ESTADO'
,p_client_condition_expression=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(209027328448930745)
,p_name=>'DA_CANCELAR_TEL'
,p_event_sequence=>310
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(208514176406475431)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(209027463177930746)
,p_event_id=>wwv_flow_imp.id(209027328448930745)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(209023269240930704)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(210431817126211401)
,p_name=>'DA_BANDERA'
,p_event_sequence=>320
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P613_BANDERA'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(210431967285211402)
,p_event_id=>wwv_flow_imp.id(210431817126211401)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'&P613_BANDERA.'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P613_BANDERA'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(208340184757827025)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_INIT'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P613_COD_USUARIO := NVL(:P_COD_USUARIO,''INV'') ;',
'',
':P613_COD_EMPRESA := NVL(:P_COD_EMPRESA,''1'') ;',
'',
':P613_COD_SUCURSAL := NVL(:P_COD_SUCURSAL,''01'') ;',
'',
':P613_Cod_Modulo   := ''CC'' ;',
'',
':P613_NRO_JERARQUIA_DEF := BS_BUSCA_PARAMETRO( :P613_cod_modulo, ''NRO_JERARQUIA_DEF'' ) ;',
':P613_TIP_DOCUMENTO_DEF := BS_busca_parametro( :P613_cod_modulo, ''TIP_DOCUMENTO_DEF'' ) ;',
':P613_TIP_CLIENTE_DEF   := BS_busca_parametro( :P613_cod_modulo, ''TIP_CLIENTE_DEF''   ) ;',
':P613_COD_CONDICION_DEF := BS_busca_parametro( :P613_cod_modulo, ''COD_CONDICION_DEF'' ) ;',
':P613_PLAZO_DEF         := BS_busca_parametro( :P613_cod_modulo, ''PLAZO_DEF''         ) ;'))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_imp.component_end;
end;
/
