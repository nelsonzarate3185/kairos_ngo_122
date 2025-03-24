prompt --application/pages/page_00131
begin
--   Manifest
--     PAGE: 00131
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
 p_id=>131
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'Solicitud de Credito'
,p_alias=>'SOLICITUD-DE-CREDITO'
,p_step_title=>'Solicitud de Credito'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function seleccionar(cb) {',
'    console.log(cb.value);',
'    console.log(cb.checked);',
'',
'',
'  if (cb.checked == true){',
'    console.log("block" + cb.value);',
'      $s(''P131_RUB_ACCION'',''AGREGAR'');',
'      $s(''P131_RUB_AUX_SEQ_ID'', cb.value,false);',
'  } else {',
'      $s(''P131_RUB_ACCION'',''QUITAR'');',
'      $s(''P131_RUB_AUX_SEQ_ID'', cb.value,false);',
'  }',
'}',
'',
'function seleccionar_prov(cb) {',
'    console.log(cb.value);',
'    console.log(cb.checked);',
'',
'',
'  if (cb.checked == true){',
'    console.log("block" + cb.value);',
'      $s(''P131_PROV_ACCION'',''AGREGAR'');',
'      $s(''P131_PROV_AUX_SEQ_ID'', cb.value,false);',
'  } else {',
'      $s(''P131_PROV_ACCION'',''QUITAR'');',
'      $s(''P131_PROV_AUX_SEQ_ID'', cb.value,false);',
'  }',
'}',
'',
'function seleccionar_marca(cb) {',
'    console.log(cb.value);',
'    console.log(cb.checked);',
'',
'',
'  if (cb.checked == true){',
'    console.log("block" + cb.value);',
'      $s(''P131_MARCA_ACCION'',''AGREGAR'');',
'      $s(''P131_MARCA_AUX_SEQ_ID'', cb.value,false);',
'  } else {',
'      $s(''P131_MARCA_ACCION'',''QUITAR'');',
'      $s(''P131_MARCA_AUX_SEQ_ID'', cb.value,false);',
'  }',
'}',
'',
'function seleccionar_cp_estado(cb) {',
'    console.log(cb.value);',
'    console.log(cb.checked);',
'',
'',
'  if (cb.checked == true){',
'    console.log("block" + cb.value);',
'      $s(''P131_CP_ACCION_RADIO'',''AGREGAR'');',
'      $s(''P131_CP_AUX_SEQ_ID_RADIO'', cb.value,false);',
'  } else {',
'      $s(''P131_CP_ACCION_RADIO'',''QUITAR'');',
'      $s(''P131_CP_AUX_SEQ_ID_RADIO'', cb.value,false);',
'  }',
'}',
'',
'function seleccionar_cp_activo(cb) {',
'    console.log(cb.value);',
'    console.log(cb.checked);',
'',
'',
'  if (cb.checked == true){',
'    console.log("block" + cb.value);',
'      $s(''P131_CP_ACCION'',''AGREGAR'');',
'      $s(''P131_CP_AUX_SEQ_ID'', cb.value,false);',
'  } else {',
'      $s(''P131_CP_ACCION'',''QUITAR'');',
'      $s(''P131_CP_AUX_SEQ_ID'', cb.value,false);',
'  }',
'}',
'',
'function seleccionar_referenciado(cb) {',
'    console.log(cb.value);',
'    console.log(cb.checked);',
'',
'',
'  if (cb.checked == true){',
'    console.log("block" + cb.value);',
'      $s(''P131_REF_ACCION'',''AGREGAR'');',
'      $s(''P131_REF_AUX_SEQ_ID'', cb.value,false);',
'  } else {',
'      $s(''P131_REF_ACCION'',''QUITAR'');',
'      $s(''P131_REF_AUX_SEQ_ID'', cb.value,false);',
'  }',
'}',
'',
'function seleccionar_ref_cco(cb) {',
'    console.log(cb.value);',
'    console.log(cb.checked);',
'',
'',
'  if (cb.checked == true){',
'    console.log("block" + cb.value);',
'      $s(''P131_REF_CCO_ACCION'',''AGREGAR'');',
'      $s(''P131_REF_CCO_AUX_SEQ_ID'', cb.value,false);',
'  } else {',
'      $s(''P131_REF_CCO_ACCION'',''QUITAR'');',
'      $s(''P131_REF_CCO_AUX_SEQ_ID'', cb.value,false);',
'  }',
'}',
'',
'function seleccionar_referenciado_gar(cb) {',
'    console.log(cb.value);',
'    console.log(cb.checked);',
'',
'',
'  if (cb.checked == true){',
'    console.log("block" + cb.value);',
'      $s(''P131_REF_GAR_ACCION'',''AGREGAR'');',
'      $s(''P131_REF_GAR_AUX_SEQ_ID'', cb.value,false);',
'  } else {',
'      $s(''P131_REF_GAR_ACCION'',''QUITAR'');',
'      $s(''P131_REF_GAR_AUX_SEQ_ID'', cb.value,false);',
'  }',
'}',
'',
'function doDescarga(P_COD_PROVINCIA,P_ES_FISICA,P_TIP_CLIENTE,P_COD_CENTRO,P_COD_CORPORACION,P_COD_PAIS,P_COD_PERSONA,P_COD_VENDEDOR,P_ESTADO,P_COD_EMPRESA,P_TIPO_SOCIEDAD,P_COD_SUCURSAL,P_COD_CLIENTE,P_COD_CARGO,P_COD_CIUDAD,P_TIP_CLIENTE2,P_TIP_CLI'
||'ENTE1,P_COD_SECTOR,P_GRUPO_ZONA,P_COD_COBRADOR,P_LINEA,P_COD_ZONA){',
'    console.log($v(''P131_URL''));',
'    window.open(unescape($v(''P131_URL'').replace(/&amp;/g,''g'')),"_blank");',
'    //window.open((vURL.replace(/&amp;/g,''g'')),"_blank");',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_last_updated_by=>'INV'
,p_last_upd_yyyymmddhh24miss=>'20221121085213'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(29528557263135451)
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
 p_id=>wwv_flow_imp.id(29577723015358806)
,p_plug_name=>unistr('Solicitud de Cr\00E9dito')
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(20114274510427447)
,p_plug_name=>'Contenedor'
,p_parent_plug_id=>wwv_flow_imp.id(29577723015358806)
,p_region_template_options=>'#DEFAULT#:t-TabsRegion-mod--simple'
,p_plug_template=>wwv_flow_imp.id(40132096801263663)
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(20114395707427448)
,p_plug_name=>'Clientes'
,p_parent_plug_id=>wwv_flow_imp.id(20114274510427447)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(29577880521358807)
,p_plug_name=>'Cliente'
,p_parent_plug_id=>wwv_flow_imp.id(20114395707427448)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(29577970765358808)
,p_plug_name=>'Contacto'
,p_parent_plug_id=>wwv_flow_imp.id(20114395707427448)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(29578077205358809)
,p_plug_name=>'Agente'
,p_parent_plug_id=>wwv_flow_imp.id(20114395707427448)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>30
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(29578198506358810)
,p_plug_name=>'Vendedor'
,p_parent_plug_id=>wwv_flow_imp.id(20114395707427448)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>40
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(29579205553358821)
,p_plug_name=>'CC_VENDEDORES_CLIENTES'
,p_parent_plug_id=>wwv_flow_imp.id(29578198506358810)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT seq_id SEQ_ID,',
'       c001 COD_CLIENTE,',
'       c002 COD_VENDEDOR,',
'       c003 FEC_ALTA,',
'       c004 ALTA_POR,',
'       c005 FEC_ACTUALIZACION,',
'       c006 ACTUALIZADO_POR,',
'       c007 OBSERVACION,',
'       c008 CONTROL,',
'       c009 NOMB_VENDEDOR,',
'       c010 ROW_ID,',
'       NULL EDITAR,',
'       NULL BORRAR',
'  FROM APEX_COLLECTIONS',
' WHERE COLLECTION_NAME = ''COLEC_CC_VENDEDORES_CLIENTES''',
'   AND (c008 = ''U'' OR c008 = ''I'' OR c008 IS NULL)',
'ORDER BY seq_id DESC'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'CC_VENDEDORES_CLIENTES'
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
 p_id=>wwv_flow_imp.id(29579447312358823)
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
,p_internal_uid=>29579447312358823
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(29579557047358824)
,p_db_column_name=>'SEQ_ID'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Seq Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(29580363911358832)
,p_db_column_name=>'CONTROL'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Control'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(29580480551358833)
,p_db_column_name=>'EDITAR'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Editar'
,p_column_link=>'javascript:$s(''P131_EDIT_DATA'',''#SEQ_ID#'');'
,p_column_linktext=>'<span aria-label="Edit"><span class="fa fa-edit" aria-hidden="true" title="Edit"></span></span>'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(29580522760358834)
,p_db_column_name=>'BORRAR'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Borrar'
,p_column_link=>'javascript:$s(''P131_DELETE_DATA'',''#SEQ_ID#'');'
,p_column_linktext=>'<span class="fa fa-trash-o">'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(29580856653358837)
,p_db_column_name=>'COD_CLIENTE'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Cod Cliente'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(29580955815358838)
,p_db_column_name=>'COD_VENDEDOR'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>unistr('C\00F3digo de Vendedor')
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(29581067679358839)
,p_db_column_name=>'FEC_ALTA'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>'Fecha de  Alta'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(29581101225358840)
,p_db_column_name=>'ALTA_POR'
,p_display_order=>150
,p_column_identifier=>'O'
,p_column_label=>'Alta Por'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(29581245805358841)
,p_db_column_name=>'FEC_ACTUALIZACION'
,p_display_order=>160
,p_column_identifier=>'P'
,p_column_label=>unistr('Fecha de  Actualizaci\00F3n')
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(29581314719358842)
,p_db_column_name=>'ACTUALIZADO_POR'
,p_display_order=>170
,p_column_identifier=>'Q'
,p_column_label=>'Actualizado Por'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(29581402268358843)
,p_db_column_name=>'OBSERVACION'
,p_display_order=>180
,p_column_identifier=>'R'
,p_column_label=>unistr('Observaci\00F3n')
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(29581533854358844)
,p_db_column_name=>'NOMB_VENDEDOR'
,p_display_order=>190
,p_column_identifier=>'S'
,p_column_label=>'Desc. de Vendedor'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(29581601680358845)
,p_db_column_name=>'ROW_ID'
,p_display_order=>200
,p_column_identifier=>'T'
,p_column_label=>'Row Id'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(30078638624459350)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'300787'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'COD_VENDEDOR:NOMB_VENDEDOR:OBSERVACION:ALTA_POR:FEC_ALTA:ACTUALIZADO_POR:FEC_ACTUALIZACION:EDITAR:BORRAR:'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(38104152049418801)
,p_plug_name=>'Agregar/Editar Vendedores'
,p_parent_plug_id=>wwv_flow_imp.id(29578198506358810)
,p_region_template_options=>'#DEFAULT#:js-dialog-autoheight:js-dialog-size600x400'
,p_plug_template=>wwv_flow_imp.id(40117728043263659)
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(29578285115358811)
,p_plug_name=>'Comentario'
,p_parent_plug_id=>wwv_flow_imp.id(20114395707427448)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>50
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(20114492178427449)
,p_plug_name=>'Check List Visual'
,p_parent_plug_id=>wwv_flow_imp.id(20114274510427447)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(31453162422510322)
,p_plug_name=>'Rubros con el que trabaja actualmente'
,p_parent_plug_id=>wwv_flow_imp.id(20114492178427449)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT seq_id SEQ_ID,',
'       c001 COD_CLIENTE,',
'       c002 COD_RUBRO,',
'       APEX_ITEM.CHECKBOX (p_idx         => 1 ,',
'                           p_value       => seq_id,',
'                           p_attributes  => (case c003',
'                                                when ''S'' then ''checked ''',
'                                                else null',
'                                              end ) ||''onclick="seleccionar(this)"'' )as "ESTADO",',
'       --c003 ACTIVO,',
'       c004 ROW_ID,',
'       c005 CONTROL,',
'       c006 NOMB_RUBRO,',
'       NULL EDITAR,',
'       NULL BORRAR',
'  FROM APEX_COLLECTIONS',
' WHERE COLLECTION_NAME = ''COLEC_CC_CLIENTES_RUBROS''',
'   AND (c005 = ''U'' OR c005 = ''I'' OR c005 IS NULL)',
'ORDER BY seq_id DESC'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Rubros con el que trabaja actualmente'
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
 p_id=>wwv_flow_imp.id(31453223336510323)
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
,p_internal_uid=>31453223336510323
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(31453391168510324)
,p_db_column_name=>'SEQ_ID'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Seq Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(31453451888510325)
,p_db_column_name=>'COD_CLIENTE'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>unistr('C\00F3digo de  Cliente')
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(31453567079510326)
,p_db_column_name=>'COD_RUBRO'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>unistr('C\00F3digo de Rubro')
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(31453706894510328)
,p_db_column_name=>'ROW_ID'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Row Id'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(31453891602510329)
,p_db_column_name=>'CONTROL'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Control'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(31453928926510330)
,p_db_column_name=>'EDITAR'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Editar'
,p_column_link=>'javascript:$s(''P131_EDIT_DATA_RUBRO'',''#SEQ_ID#'');'
,p_column_linktext=>'<span aria-label="Edit"><span class="fa fa-edit" aria-hidden="true" title="Edit"></span></span>'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(31454007742510331)
,p_db_column_name=>'BORRAR'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Borrar'
,p_column_link=>'javascript:$s(''P131_DELETE_DATA_RUBRO'',''#SEQ_ID#'');'
,p_column_linktext=>'<span class="fa fa-trash-o">'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(34070267358860131)
,p_db_column_name=>'NOMB_RUBRO'
,p_display_order=>100
,p_column_identifier=>'K'
,p_column_label=>unistr('Descripci\00F3n de Rubro')
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(34071457322860143)
,p_db_column_name=>'ESTADO'
,p_display_order=>110
,p_column_identifier=>'M'
,p_column_label=>'Estado'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(33200467472573156)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'332005'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'COD_CLIENTE:COD_RUBRO:NOMB_RUBRO:ESTADO:EDITAR:BORRAR:'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(38105334176418813)
,p_plug_name=>'Agregar/Editar Rubros'
,p_parent_plug_id=>wwv_flow_imp.id(31453162422510322)
,p_region_template_options=>'#DEFAULT#:js-dialog-autoheight:js-dialog-size600x400'
,p_plug_template=>wwv_flow_imp.id(40117728043263659)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(31454187619510332)
,p_plug_name=>'Proveedores con el que trabaja actualmente'
,p_parent_plug_id=>wwv_flow_imp.id(20114492178427449)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>20
,p_plug_new_grid_row=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT seq_id SEQ_ID,',
'       c001 COD_CLIENTE,',
'       c002 COD_PROVEEDOR,',
'       APEX_ITEM.CHECKBOX (p_idx         => 1 ,',
'                           p_value       => seq_id,',
'                           p_attributes  => (case c003',
'                                                when ''S'' then ''checked ''',
'                                                else null',
'                                              end ) ||''onclick="seleccionar_prov(this)"'' )as "ESTADO",',
'       --c003 ESTAOD,',
'       c004 ROW_ID,',
'       c005 CONTROL,',
'       c006 NOMB_PROVEEDOR,',
'       NULL EDITAR,',
'       NULL BORRAR',
'  FROM APEX_COLLECTIONS',
' WHERE COLLECTION_NAME = ''COLEC_CC_CLIENTES_PROVEEDORES''',
'   AND (c005 = ''U'' OR c005 = ''I'' OR c005 IS NULL)',
'ORDER BY seq_id DESC'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Proveedores con el que trabaja actualmente'
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
 p_id=>wwv_flow_imp.id(31454250995510333)
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
,p_internal_uid=>31454250995510333
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(31454390829510334)
,p_db_column_name=>'SEQ_ID'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Seq Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(31454477554510335)
,p_db_column_name=>'COD_CLIENTE'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>unistr('C\00F3digo de Cliente')
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(31454733533510338)
,p_db_column_name=>'ROW_ID'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Row Id'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(31454825737510339)
,p_db_column_name=>'CONTROL'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Control'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(31454941897510340)
,p_db_column_name=>'EDITAR'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Editar'
,p_column_link=>'javascript:$s(''P131_EDIT_DATA_PROVEEDOR'',''#SEQ_ID#'');'
,p_column_linktext=>'<span aria-label="Edit"><span class="fa fa-edit" aria-hidden="true" title="Edit"></span></span>'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(31455010067510341)
,p_db_column_name=>'BORRAR'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Borrar'
,p_column_link=>'javascript:$s(''P131_DELETE_DATA_PROVEEDOR'',''#SEQ_ID#'');'
,p_column_linktext=>'<span class="fa fa-trash-o">'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(33411153871500302)
,p_db_column_name=>'COD_PROVEEDOR'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>unistr('C\00F3digo de Proveedor')
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(34071354237860142)
,p_db_column_name=>'NOMB_PROVEEDOR'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>unistr('Descripci\00F3n de Proveedor')
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(34071580444860144)
,p_db_column_name=>'ESTADO'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Estado'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(33206859766598286)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'332069'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'COD_CLIENTE:COD_PROVEEDOR:NOMB_PROVEEDOR:ESTADO:EDITAR:BORRAR:'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(38106908476418829)
,p_plug_name=>'Agregar/Editar Proveedores'
,p_parent_plug_id=>wwv_flow_imp.id(31454187619510332)
,p_region_template_options=>'#DEFAULT#:js-dialog-autoheight:js-dialog-size600x400'
,p_plug_template=>wwv_flow_imp.id(40117728043263659)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(31455154580510342)
,p_plug_name=>'Marcas con el que trabaja actualmente'
,p_parent_plug_id=>wwv_flow_imp.id(20114492178427449)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>30
,p_plug_grid_column_span=>6
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT seq_id SEQ_ID,',
'       c001 COD_CLIENTE,',
'       c002 COD_MARCA,',
'       APEX_ITEM.CHECKBOX (p_idx         => 1 ,',
'                           p_value       => seq_id,',
'                           p_attributes  => (case c003',
'                                                when ''S'' then ''checked ''',
'                                                else null',
'                                              end ) ||''onclick="seleccionar_marca(this)"'' )as "ESTADO",',
'       c004 ROW_ID,',
'       c005 CONTROL,',
'       c006 NOMB_MARCA,',
'       NULL EDITAR,',
'       NULL BORRAR',
'  FROM APEX_COLLECTIONS',
' WHERE COLLECTION_NAME = ''COLEC_CC_CLIENTES_MARCAS''',
'   AND (c005 = ''U'' OR c005 = ''I'' OR c005 IS NULL)',
'ORDER BY seq_id DESC'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Marcas con el que trabaja actualmente'
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
 p_id=>wwv_flow_imp.id(31455215680510343)
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
,p_internal_uid=>31455215680510343
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
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(31455307084510344)
,p_db_column_name=>'SEQ_ID'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Seq Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(31455438623510345)
,p_db_column_name=>'COD_CLIENTE'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>unistr('C\00F3digo de Cliente')
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(31455515470510346)
,p_db_column_name=>'COD_MARCA'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>unistr('C\00F3digo de Marca')
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(31455642280510347)
,p_db_column_name=>'ESTADO'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Estado'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(31455764370510348)
,p_db_column_name=>'ROW_ID'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Row Id'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(31455893931510349)
,p_db_column_name=>'CONTROL'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Control'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(31455901352510350)
,p_db_column_name=>'EDITAR'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Editar'
,p_column_link=>'javascript:$s(''P131_EDIT_DATA_MARCA'',''#SEQ_ID#'');'
,p_column_linktext=>'<span aria-label="Edit"><span class="fa fa-edit" aria-hidden="true" title="Edit"></span></span>'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(33411073510500301)
,p_db_column_name=>'BORRAR'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Borrar'
,p_column_link=>'javascript:$s(''P131_DELETE_DATA_MARCA'',''#SEQ_ID#'');'
,p_column_linktext=>'<span class="fa fa-trash-o">'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(35310002578024706)
,p_db_column_name=>'NOMB_MARCA'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>unistr('Descripci\00F3n de Marca')
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(33424225599505982)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'334243'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'COD_CLIENTE:COD_MARCA:NOMB_MARCA:ESTADO:EDITAR:BORRAR:'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(38519162421102812)
,p_plug_name=>'Agregar/Editar Marcas'
,p_parent_plug_id=>wwv_flow_imp.id(31455154580510342)
,p_region_template_options=>'#DEFAULT#:js-dialog-autoheight:js-dialog-size600x400'
,p_plug_template=>wwv_flow_imp.id(40117728043263659)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(35311533682024721)
,p_plug_name=>'Contenedor Check Visual'
,p_parent_plug_id=>wwv_flow_imp.id(20114492178427449)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>40
,p_plug_new_grid_row=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(33411452544500305)
,p_plug_name=>'Aspecto del Show Room'
,p_parent_plug_id=>wwv_flow_imp.id(35311533682024721)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>50
,p_plug_new_grid_row=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(35311043858024716)
,p_plug_name=>'Cantidad de Sucursales'
,p_parent_plug_id=>wwv_flow_imp.id(35311533682024721)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>60
,p_plug_new_grid_row=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(35311263562024718)
,p_plug_name=>unistr('Ubicacaci\00F3n')
,p_parent_plug_id=>wwv_flow_imp.id(35311533682024721)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>70
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(20114567744427450)
,p_plug_name=>'Check List Funcional'
,p_parent_plug_id=>wwv_flow_imp.id(20114274510427447)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>30
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(35311678395024722)
,p_plug_name=>unistr('Organizaci\00F3n de la Empresa')
,p_parent_plug_id=>wwv_flow_imp.id(20114567744427450)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(41935983543702616)
,p_plug_name=>'Tipo de clientes a quienes vende'
,p_parent_plug_id=>wwv_flow_imp.id(35311678395024722)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(41936033309702617)
,p_plug_name=>'Fuerza de Ventas'
,p_parent_plug_id=>wwv_flow_imp.id(35311678395024722)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(41936508634702622)
,p_plug_name=>'Tipos de Ventas'
,p_parent_plug_id=>wwv_flow_imp.id(35311678395024722)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>30
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(41937787805702634)
,p_plug_name=>unistr('Plazo de Ventas a Cr\00E9dito')
,p_parent_plug_id=>wwv_flow_imp.id(35311678395024722)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>40
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(35311729912024723)
,p_plug_name=>'Datos de la Empresa'
,p_parent_plug_id=>wwv_flow_imp.id(20114567744427450)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(29577237958358801)
,p_plug_name=>'Check List Documental'
,p_parent_plug_id=>wwv_flow_imp.id(20114274510427447)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>40
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(33412079822500311)
,p_plug_name=>'CC_COMPROBANTES_PRESENTADOS'
,p_parent_plug_id=>wwv_flow_imp.id(29577237958358801)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT seq_id SEQ_ID,',
'       c001 COD_CLIENTE,',
'       c002 COD_PERSONA,',
'       c003 COD_DOCUMENTO,',
'       c004 COD_USUARIO,',
'       c005 FECHA,',
'       c006 FECHA_VENCIMIENTO,',
'       APEX_ITEM.CHECKBOX(p_idx         => 1 ,',
'                          p_value       => seq_id,',
'                          p_attributes  => (case c007',
'                                                when ''S'' then ''checked ''',
'                                                else null',
'                                            end ) ||''onclick="seleccionar_cp_estado(this)"'' )as "ESTADO",',
'       c008 COMENTARIO,',
'       c009 IMAGEN,',
'       c010 COD_EMPRESA,',
'       c011 FEC_ACTUALIZACION,       ',
'       c012 ACTUALIZADO_POR,',
'       c013 FEC_ALTA,',
'       c014 ALTA_POR,',
'       APEX_ITEM.CHECKBOX(p_idx         => 1 ,',
'                          p_value       => seq_id,',
'                          p_attributes  => (case c015',
'                                                when ''S'' then ''checked ''',
'                                                else null',
'                                            end ) ||''onclick="seleccionar_cp_activo(this)"'' )as "ACTIVO",',
'       c016 OBSERVACION,',
'       c017 COD_AGRUPACION,',
'       c018 PONDERACION,',
'       c019 VALOR,',
'       c020 IND_VALIDAR,',
'       c021 CONTROL,',
'       c022 DESC_DOCUMENTO,',
'       c023 ROW_ID,',
'       c024 VALOR_TOTAL,',
'       NULL EDITAR,',
'       NULL BORRAR',
'  FROM APEX_COLLECTIONS',
' WHERE COLLECTION_NAME = ''COLEC_CC_COMPROBANTES_PRESENTADOS''',
'   AND (c021 = ''U'' OR c021 = ''I'' OR c021 IS NULL)',
'ORDER BY seq_id DESC'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'CC_COMPROBANTES_PRESENTADOS'
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
 p_id=>wwv_flow_imp.id(33412110498500312)
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
,p_internal_uid=>33412110498500312
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(33412262499500313)
,p_db_column_name=>'SEQ_ID'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Seq Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(33412312968500314)
,p_db_column_name=>'COD_CLIENTE'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Cod Cliente'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(33412433798500315)
,p_db_column_name=>'COD_PERSONA'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Cod Persona'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(33412525831500316)
,p_db_column_name=>'COD_DOCUMENTO'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>unistr('C\00F3digo de Documento')
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(33412663117500317)
,p_db_column_name=>'COD_USUARIO'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>unistr('C\00F3digo de Usuario')
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(33412771536500318)
,p_db_column_name=>'FECHA'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Fecha'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(33412879156500319)
,p_db_column_name=>'FECHA_VENCIMIENTO'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Fecha de Vencimiento'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(33412920911500320)
,p_db_column_name=>'ESTADO'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Presentado'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(33413088562500321)
,p_db_column_name=>'COMENTARIO'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Comentario'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(33413129893500322)
,p_db_column_name=>'IMAGEN'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Imagen'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(33413271138500323)
,p_db_column_name=>'COD_EMPRESA'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Cod Empresa'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(33413395491500324)
,p_db_column_name=>'FEC_ACTUALIZACION'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>unistr('Fecha de Actualizaci\00F3n')
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(33413466139500325)
,p_db_column_name=>'ACTUALIZADO_POR'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Actualizado Por'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(33413631648500327)
,p_db_column_name=>'ALTA_POR'
,p_display_order=>150
,p_column_identifier=>'O'
,p_column_label=>'Alta Por'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(33413795368500328)
,p_db_column_name=>'ACTIVO'
,p_display_order=>160
,p_column_identifier=>'P'
,p_column_label=>'Activo'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(33413832431500329)
,p_db_column_name=>'OBSERVACION'
,p_display_order=>170
,p_column_identifier=>'Q'
,p_column_label=>unistr('Observaci\00F3n')
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(33413914611500330)
,p_db_column_name=>'COD_AGRUPACION'
,p_display_order=>180
,p_column_identifier=>'R'
,p_column_label=>'Cod Agrupacion'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(33414014964500331)
,p_db_column_name=>'PONDERACION'
,p_display_order=>190
,p_column_identifier=>'S'
,p_column_label=>'Ponderacion'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(33414154796500332)
,p_db_column_name=>'VALOR'
,p_display_order=>200
,p_column_identifier=>'T'
,p_column_label=>'Valor'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(33414200986500333)
,p_db_column_name=>'IND_VALIDAR'
,p_display_order=>210
,p_column_identifier=>'U'
,p_column_label=>'Ind Validar'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(33414385183500334)
,p_db_column_name=>'CONTROL'
,p_display_order=>220
,p_column_identifier=>'V'
,p_column_label=>'Control'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(33414410765500335)
,p_db_column_name=>'EDITAR'
,p_display_order=>230
,p_column_identifier=>'W'
,p_column_label=>'Editar'
,p_column_link=>'javascript:$s(''P131_EDIT_DATA_CP'',''#SEQ_ID#'');'
,p_column_linktext=>'<span aria-label="Edit"><span class="fa fa-edit" aria-hidden="true" title="Edit"></span></span>'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(33414584668500336)
,p_db_column_name=>'BORRAR'
,p_display_order=>240
,p_column_identifier=>'X'
,p_column_label=>'Borrar'
,p_column_link=>'javascript:$s(''P131_DELETE_DATA_CP'',''#SEQ_ID#'');'
,p_column_linktext=>'<span class="fa fa-trash-o">'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(35312247226024728)
,p_db_column_name=>'FEC_ALTA'
,p_display_order=>250
,p_column_identifier=>'Y'
,p_column_label=>'Fecha de Alta'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(35312334849024729)
,p_db_column_name=>'DESC_DOCUMENTO'
,p_display_order=>260
,p_column_identifier=>'Z'
,p_column_label=>unistr('Descripci\00F3n de Documento')
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(35313605922024742)
,p_db_column_name=>'ROW_ID'
,p_display_order=>270
,p_column_identifier=>'AA'
,p_column_label=>'Row Id'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43198346375889712)
,p_db_column_name=>'VALOR_TOTAL'
,p_display_order=>280
,p_column_identifier=>'AB'
,p_column_label=>'Total'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(33473060864741309)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'334731'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'COD_DOCUMENTO:DESC_DOCUMENTO:ESTADO:FECHA_VENCIMIENTO:ACTIVO:OBSERVACION:COD_USUARIO:FECHA:ALTA_POR:FEC_ALTA:ACTUALIZADO_POR:FEC_ACTUALIZACION:VALOR:VALOR_TOTAL:EDITAR:BORRAR:'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(38521475314102835)
,p_plug_name=>'Agregar/Editar Comprobantes Presentados'
,p_parent_plug_id=>wwv_flow_imp.id(33412079822500311)
,p_region_template_options=>'#DEFAULT#:js-dialog-autoheight:js-dialog-size600x400'
,p_plug_template=>wwv_flow_imp.id(40117728043263659)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(29577360332358802)
,p_plug_name=>'Check List de Contactos'
,p_parent_plug_id=>wwv_flow_imp.id(20114274510427447)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>50
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(33414789244500338)
,p_plug_name=>'CC_CONTACTOS_CLIENTES'
,p_parent_plug_id=>wwv_flow_imp.id(29577360332358802)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT seq_id SEQ_ID,',
'       c001 COD_CONTACTO,',
'       c002 COD_CLIENTE,',
'       c003 OBSERVACION,',
'       c004 ACTIVO,',
'       c005 FEC_ACTUALIZACION,',
'       c006 ALTA_POR,',
'       c007 ACTUALIZADO_POR,',
'       c008 FEC_ALTA,',
'       c009 EMAIL,',
'       c010 TELEFONO,',
'       c011 DESCRIPCION,       ',
'       c012 REG_ID,',
'       c013 CEDULA,',
'       c014 RETIRA_REPUESTOS,',
'       c015 INTERNO,',
'       c016 CELULAR,',
'       c017 FECHA_NACIMIENTO,',
'       c018 ESTADO_CRM,',
'       c019 ID_CONTACTO,',
'       c020 COD_DEPARTAMENTO,',
'       c021 COD_CIUDAD,',
'       c022 DIRECCION,',
'       c023 TELEFONO_2,',
'       c024 ASUNTO,',
'       c025 CONTROL,',
'       c026 ROW_ID,',
'       c027 DESC_CONTACTO,',
'       NULL EDITAR,',
'       NULL BORRAR',
'  FROM APEX_COLLECTIONS',
' WHERE COLLECTION_NAME = ''COLEC_CC_CONTACTOS_CLIENTES''',
'   AND (c025 = ''U'' OR c025 = ''I'' OR c025 IS NULL)',
'ORDER BY seq_id DESC'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'CC_CONTACTOS_CLIENTES'
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
 p_id=>wwv_flow_imp.id(33414867269500339)
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
,p_internal_uid=>33414867269500339
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(33414923228500340)
,p_db_column_name=>'SEQ_ID'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Seq Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(33415030446500341)
,p_db_column_name=>'COD_CONTACTO'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>unistr('C\00F3digo de Contacto')
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(33509869974863301)
,p_db_column_name=>'DESCRIPCION'
,p_display_order=>30
,p_column_identifier=>'L'
,p_column_label=>unistr('Descripci\00F3n')
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(33415865385500349)
,p_db_column_name=>'EMAIL'
,p_display_order=>40
,p_column_identifier=>'J'
,p_column_label=>'Email'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(33510437061863307)
,p_db_column_name=>'FECHA_NACIMIENTO'
,p_display_order=>50
,p_column_identifier=>'R'
,p_column_label=>'Fecha de Nacimiento'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(33415995153500350)
,p_db_column_name=>'TELEFONO'
,p_display_order=>60
,p_column_identifier=>'K'
,p_column_label=>unistr('Tel\00E9fono Fijo')
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(33510242903863305)
,p_db_column_name=>'INTERNO'
,p_display_order=>70
,p_column_identifier=>'P'
,p_column_label=>'Interno'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(33510391711863306)
,p_db_column_name=>'CELULAR'
,p_display_order=>80
,p_column_identifier=>'Q'
,p_column_label=>'Celular'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(33415589871500346)
,p_db_column_name=>'ALTA_POR'
,p_display_order=>90
,p_column_identifier=>'G'
,p_column_label=>'Alta Por'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(33415796312500348)
,p_db_column_name=>'FEC_ALTA'
,p_display_order=>100
,p_column_identifier=>'I'
,p_column_label=>'Fecha de Alta'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(33415657502500347)
,p_db_column_name=>'ACTUALIZADO_POR'
,p_display_order=>110
,p_column_identifier=>'H'
,p_column_label=>'Actualizado Por'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(33415435103500345)
,p_db_column_name=>'FEC_ACTUALIZACION'
,p_display_order=>120
,p_column_identifier=>'F'
,p_column_label=>unistr('Fecha de Actualizaci\00F3n')
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(33415158509500342)
,p_db_column_name=>'COD_CLIENTE'
,p_display_order=>140
,p_column_identifier=>'C'
,p_column_label=>'Cod Cliente'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(33415270480500343)
,p_db_column_name=>'OBSERVACION'
,p_display_order=>150
,p_column_identifier=>'D'
,p_column_label=>'Observacion'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(33415369906500344)
,p_db_column_name=>'ACTIVO'
,p_display_order=>160
,p_column_identifier=>'E'
,p_column_label=>'Activo'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(33509935294863302)
,p_db_column_name=>'REG_ID'
,p_display_order=>170
,p_column_identifier=>'M'
,p_column_label=>'Reg Id'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(33510003997863303)
,p_db_column_name=>'CEDULA'
,p_display_order=>180
,p_column_identifier=>'N'
,p_column_label=>'Cedula'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(33510143329863304)
,p_db_column_name=>'RETIRA_REPUESTOS'
,p_display_order=>190
,p_column_identifier=>'O'
,p_column_label=>'Retira Repuestos'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(33510571618863308)
,p_db_column_name=>'ESTADO_CRM'
,p_display_order=>200
,p_column_identifier=>'S'
,p_column_label=>'Estado Crm'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(33510653540863309)
,p_db_column_name=>'ID_CONTACTO'
,p_display_order=>210
,p_column_identifier=>'T'
,p_column_label=>'Id Contacto'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(33510740609863310)
,p_db_column_name=>'COD_DEPARTAMENTO'
,p_display_order=>220
,p_column_identifier=>'U'
,p_column_label=>'Cod Departamento'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(33510899509863311)
,p_db_column_name=>'COD_CIUDAD'
,p_display_order=>230
,p_column_identifier=>'V'
,p_column_label=>'Cod Ciudad'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(33510979695863312)
,p_db_column_name=>'DIRECCION'
,p_display_order=>240
,p_column_identifier=>'W'
,p_column_label=>'Direccion'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(33511048584863313)
,p_db_column_name=>'TELEFONO_2'
,p_display_order=>250
,p_column_identifier=>'X'
,p_column_label=>'Telefono 2'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
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
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(33511199443863314)
,p_db_column_name=>'ASUNTO'
,p_display_order=>260
,p_column_identifier=>'Y'
,p_column_label=>'Asunto'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(33511229473863315)
,p_db_column_name=>'EDITAR'
,p_display_order=>270
,p_column_identifier=>'Z'
,p_column_label=>'Editar'
,p_column_link=>'javascript:$s(''P131_EDIT_DATA_CONTACTOS'',''#SEQ_ID#'');'
,p_column_linktext=>'<span aria-label="Edit"><span class="fa fa-edit" aria-hidden="true" title="Edit"></span></span>'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(33511318186863316)
,p_db_column_name=>'BORRAR'
,p_display_order=>280
,p_column_identifier=>'AA'
,p_column_label=>'Borrar'
,p_column_link=>'javascript:$s(''P131_DELETE_DATA_CONTACTOS'',''#SEQ_ID#'');'
,p_column_linktext=>'<span class="fa fa-trash-o">'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(34067227855860101)
,p_db_column_name=>'CONTROL'
,p_display_order=>290
,p_column_identifier=>'AB'
,p_column_label=>'Control'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(35313841658024744)
,p_db_column_name=>'ROW_ID'
,p_display_order=>300
,p_column_identifier=>'AC'
,p_column_label=>'Row Id'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(35313953150024745)
,p_db_column_name=>'DESC_CONTACTO'
,p_display_order=>310
,p_column_identifier=>'AD'
,p_column_label=>'Tipo'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(33568953133304346)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'335690'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'DESC_CONTACTO:DESCRIPCION:EMAIL:FECHA_NACIMIENTO:TELEFONO:INTERNO:CELULAR:ALTA_POR:FEC_ALTA:ACTUALIZADO_POR:FEC_ACTUALIZACION:EDITAR:BORRAR:'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(38522193015102842)
,p_plug_name=>'Agregar/Editar Contactos Clientes'
,p_parent_plug_id=>wwv_flow_imp.id(33414789244500338)
,p_region_template_options=>'#DEFAULT#:js-dialog-autoheight:js-dialog-size600x400'
,p_plug_template=>wwv_flow_imp.id(40117728043263659)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(29577446362358803)
,p_plug_name=>'Referencias'
,p_parent_plug_id=>wwv_flow_imp.id(20114274510427447)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>60
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(33511599652863318)
,p_plug_name=>'Referencia Titular'
,p_parent_plug_id=>wwv_flow_imp.id(29577446362358803)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT seq_id SEQ_ID,',
'       c001 COD_CONTACTO,',
'       c002 COD_CLIENTE,',
'       c003 TIPO,',
'       c004 FEC_REFERENCIA,',
'       c005 COMENTARIO,',
'       c006 CONTACTO,',
'       c007 FEC_ACTUALIZACION,',
'       c008 ALTA_POR,',
'       c009 ACTUALIZADO_POR,',
'       c010 FEC_ALTA,',
'       c011 EMPRESA,',
'       APEX_ITEM.CHECKBOX(p_idx         => 1 ,',
'                          p_value       => seq_id,',
'                          p_attributes  => (case c012',
'                                                when ''S'' then ''checked ''',
'                                                else null',
'                                            end ) ||''onclick="seleccionar_referenciado(this)"'' )as "REFERENCIAR",',
'       --c012 IND_REFERENCIAR,       ',
'       c013 IND_REFERENCIADO,',
'       c014 FEC_PROC_REFERENCIA,',
'       c015 COD_REFERENCIA,',
'       c016 TELEFONO,',
'       c017 IND_REMPLAZO,',
'       c018 AGENTE,',
'       c019 OBSERVACION,',
'       APEX_ITEM.CHECKBOX(p_idx         => 1 ,',
'                          p_value       => seq_id,',
'                          p_attributes  => (case c020',
'                                                when ''S'' then ''checked ''',
'                                                else null',
'                                            end ) ||''onclick="seleccionar_ref_cco(this)"'' )as "REFERENCIAR_CCO",',
'       --c020 IND_REFERENCIAR_CCO,',
'       c021 CONTROL,',
'       c022 ROW_ID,',
'       c023 DESC_TIPO,       ',
'       NULL EDITAR,',
'       NULL BORRAR,',
'       NULL VER',
'  FROM APEX_COLLECTIONS ',
' WHERE COLLECTION_NAME = ''COLEC_CC_REFERENCIA_CLIENTES''',
'   AND (c021 = ''U'' OR c021 = ''I'' OR c021 IS NULL)',
'ORDER BY seq_id DESC'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Referencia Titular'
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
 p_id=>wwv_flow_imp.id(33511737931863320)
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
,p_internal_uid=>33511737931863320
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(35314328541024749)
,p_db_column_name=>'SEQ_ID'
,p_display_order=>10
,p_column_identifier=>'Y'
,p_column_label=>'Seq Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(33511971969863322)
,p_db_column_name=>'COD_CONTACTO'
,p_display_order=>20
,p_column_identifier=>'A'
,p_column_label=>'Cod Contacto'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(33512068217863323)
,p_db_column_name=>'COD_CLIENTE'
,p_display_order=>30
,p_column_identifier=>'B'
,p_column_label=>'Cod Cliente'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(33512179048863324)
,p_db_column_name=>'TIPO'
,p_display_order=>40
,p_column_identifier=>'C'
,p_column_label=>'Tipo'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(33513964512863342)
,p_db_column_name=>'FEC_REFERENCIA'
,p_display_order=>50
,p_column_identifier=>'P'
,p_column_label=>'Fecha'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(33512926801863332)
,p_db_column_name=>'EMPRESA'
,p_display_order=>60
,p_column_identifier=>'H'
,p_column_label=>'Empresa'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(33512421600863327)
,p_db_column_name=>'CONTACTO'
,p_display_order=>70
,p_column_identifier=>'E'
,p_column_label=>'Contacto'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(33513432137863337)
,p_db_column_name=>'TELEFONO'
,p_display_order=>80
,p_column_identifier=>'K'
,p_column_label=>'Telefono'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(33512359096863326)
,p_db_column_name=>'COMENTARIO'
,p_display_order=>90
,p_column_identifier=>'D'
,p_column_label=>'Comentario'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(33512654635863329)
,p_db_column_name=>'ALTA_POR'
,p_display_order=>120
,p_column_identifier=>'F'
,p_column_label=>'Alta Por'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(33514122377863344)
,p_db_column_name=>'FEC_ALTA'
,p_display_order=>130
,p_column_identifier=>'R'
,p_column_label=>'Fecha de Alta'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(33512734578863330)
,p_db_column_name=>'ACTUALIZADO_POR'
,p_display_order=>140
,p_column_identifier=>'G'
,p_column_label=>'Actualizado Por'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(33514092645863343)
,p_db_column_name=>'FEC_ACTUALIZACION'
,p_display_order=>150
,p_column_identifier=>'Q'
,p_column_label=>unistr('Fecha de Actualizaci\00F3n')
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(33513108140863334)
,p_db_column_name=>'IND_REFERENCIADO'
,p_display_order=>160
,p_column_identifier=>'J'
,p_column_label=>'Ind Referenciado'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(33513527919863338)
,p_db_column_name=>'IND_REMPLAZO'
,p_display_order=>170
,p_column_identifier=>'L'
,p_column_label=>'Ind Remplazo'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(33513614441863339)
,p_db_column_name=>'AGENTE'
,p_display_order=>180
,p_column_identifier=>'M'
,p_column_label=>'Agente'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(33513736365863340)
,p_db_column_name=>'OBSERVACION'
,p_display_order=>190
,p_column_identifier=>'N'
,p_column_label=>'Observacion'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(33514222735863345)
,p_db_column_name=>'FEC_PROC_REFERENCIA'
,p_display_order=>200
,p_column_identifier=>'S'
,p_column_label=>'Fec Proc Referencia'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(33514325790863346)
,p_db_column_name=>'COD_REFERENCIA'
,p_display_order=>210
,p_column_identifier=>'T'
,p_column_label=>'Cod Referencia'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(33514423189863347)
,p_db_column_name=>'CONTROL'
,p_display_order=>220
,p_column_identifier=>'U'
,p_column_label=>'Control'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(33514518406863348)
,p_db_column_name=>'ROW_ID'
,p_display_order=>230
,p_column_identifier=>'V'
,p_column_label=>'Row Id'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(33514692239863349)
,p_db_column_name=>'EDITAR'
,p_display_order=>240
,p_column_identifier=>'W'
,p_column_label=>'Editar'
,p_column_link=>'javascript:$s(''P131_EDIT_DATA_REF_TIT'',''#SEQ_ID#'');'
,p_column_linktext=>'<span aria-label="Edit"><span class="fa fa-edit" aria-hidden="true" title="Edit"></span></span>'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(33514714172863350)
,p_db_column_name=>'BORRAR'
,p_display_order=>250
,p_column_identifier=>'X'
,p_column_label=>'Borrar'
,p_column_link=>'javascript:$s(''P131_DELETE_DATA_REF_TIT'',''#SEQ_ID#'');'
,p_column_linktext=>'<span class="fa fa-trash-o">'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(35314411689024750)
,p_db_column_name=>'REFERENCIAR'
,p_display_order=>260
,p_column_identifier=>'Z'
,p_column_label=>'Referenciar'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(36936632980286801)
,p_db_column_name=>'REFERENCIAR_CCO'
,p_display_order=>270
,p_column_identifier=>'AA'
,p_column_label=>'Referenciar Cco'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(36937543483286810)
,p_db_column_name=>'DESC_TIPO'
,p_display_order=>280
,p_column_identifier=>'AB'
,p_column_label=>'Tipo'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43197754030889706)
,p_db_column_name=>'VER'
,p_display_order=>290
,p_column_identifier=>'AC'
,p_column_label=>'Ver'
,p_column_link=>'f?p=&APP_ID.:192:&SESSION.::&DEBUG.:192:P192_P_COD_CLIENTE,P192_P_TELEFONO,P192_P_TIPO:#COD_CLIENTE#,#TELEFONO#,#TIPO#'
,p_column_linktext=>'<span class="t-Button-label">V</span>'
,p_column_link_attr=>'class="t-Button"'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(34098581442892475)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'340986'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>5
,p_report_columns=>'DESC_TIPO:FEC_REFERENCIA:EMPRESA:CONTACTO:TELEFONO:COMENTARIO:ALTA_POR:FEC_ALTA:ACTUALIZADO_POR:FEC_ACTUALIZACION:REFERENCIAR:REFERENCIAR_CCO:VER:EDITAR:BORRAR:'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(39212052064004618)
,p_plug_name=>'Agregar/Editar Referencia Titular'
,p_parent_plug_id=>wwv_flow_imp.id(33511599652863318)
,p_region_template_options=>'#DEFAULT#:js-dialog-autoheight:js-dialog-size600x400'
,p_plug_template=>wwv_flow_imp.id(40117728043263659)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(33511611433863319)
,p_plug_name=>'Referencia Garante'
,p_parent_plug_id=>wwv_flow_imp.id(29577446362358803)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT seq_id SEQ_ID,',
'       c001 COD_CONTACTO,',
'       c002 COD_CLIENTE,',
'       c003 TIPO,',
'       c004 FEC_REFERENCIA,',
'       c005 COMENTARIO,',
'       c006 CONTACTO,',
'       c007 FEC_ACTUALIZACION,',
'       c008 ALTA_POR,',
'       c009 ACTUALIZADO_POR,',
'       c010 FEC_ALTA,',
'       c011 EMPRESA,',
'       APEX_ITEM.CHECKBOX(p_idx         => 1 ,',
'                          p_value       => seq_id,',
'                          p_attributes  => (case c012',
'                                                when ''S'' then ''checked ''',
'                                                else null',
'                                            end ) ||''onclick="seleccionar_referenciado_gar(this)"'' )as "Ref.",',
'       --c012 IND_REFERENCIAR,',
'       c013 IND_REFERENCIADO,',
'       c014 FEC_PROC_REFERENCIA,',
'       c015 COD_REFERENCIA,',
'       c016 TELEFONO,',
'       c017 IND_REMPLAZO,',
'       c018 ROW_ID,',
'       c019 CONTROL,',
'       c020 DESC_TIPO,',
'       NULL EDITAR,',
'       NULL BORRAR',
'  FROM APEX_COLLECTIONS ',
' WHERE COLLECTION_NAME = ''COLEC_CC_REFERENCIA_CLIENTES_GAR''',
'   AND (c019 = ''U'' OR c019 = ''I'' OR c019 IS NULL)',
'ORDER BY seq_id DESC'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Referencia Garante'
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
 p_id=>wwv_flow_imp.id(34067309439860102)
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
,p_internal_uid=>34067309439860102
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(34067582804860104)
,p_db_column_name=>'COD_CONTACTO'
,p_display_order=>20
,p_column_identifier=>'A'
,p_column_label=>'Cod Contacto'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(34067630764860105)
,p_db_column_name=>'COD_CLIENTE'
,p_display_order=>30
,p_column_identifier=>'B'
,p_column_label=>'Cod Cliente'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(34067773433860106)
,p_db_column_name=>'TIPO'
,p_display_order=>40
,p_column_identifier=>'C'
,p_column_label=>'Tipo'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(36937726466286812)
,p_db_column_name=>'DESC_TIPO'
,p_display_order=>50
,p_column_identifier=>'W'
,p_column_label=>'Tipo'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(34069303383860122)
,p_db_column_name=>'FEC_REFERENCIA'
,p_display_order=>60
,p_column_identifier=>'N'
,p_column_label=>'Fecha'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(34068513082860114)
,p_db_column_name=>'EMPRESA'
,p_display_order=>70
,p_column_identifier=>'H'
,p_column_label=>'Empresa'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(34068007954860109)
,p_db_column_name=>'CONTACTO'
,p_display_order=>80
,p_column_identifier=>'E'
,p_column_label=>'Contacto'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(34069075792860119)
,p_db_column_name=>'TELEFONO'
,p_display_order=>90
,p_column_identifier=>'K'
,p_column_label=>unistr('Tel\00E9fono')
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(34067900924860108)
,p_db_column_name=>'COMENTARIO'
,p_display_order=>100
,p_column_identifier=>'D'
,p_column_label=>'Comentario'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(34068258107860111)
,p_db_column_name=>'ALTA_POR'
,p_display_order=>120
,p_column_identifier=>'F'
,p_column_label=>'Alta Por'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(34069555108860124)
,p_db_column_name=>'FEC_ALTA'
,p_display_order=>130
,p_column_identifier=>'P'
,p_column_label=>'Fecha de Alta'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(34068314377860112)
,p_db_column_name=>'ACTUALIZADO_POR'
,p_display_order=>140
,p_column_identifier=>'G'
,p_column_label=>'Actualizado Por'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(34069439824860123)
,p_db_column_name=>'FEC_ACTUALIZACION'
,p_display_order=>150
,p_column_identifier=>'O'
,p_column_label=>'Fecha de Actualizacion'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(34068755486860116)
,p_db_column_name=>'IND_REFERENCIADO'
,p_display_order=>160
,p_column_identifier=>'J'
,p_column_label=>'Ind Referenciado'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(34069138285860120)
,p_db_column_name=>'IND_REMPLAZO'
,p_display_order=>170
,p_column_identifier=>'L'
,p_column_label=>'Ind Remplazo'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(34069273138860121)
,p_db_column_name=>'SEQ_ID'
,p_display_order=>180
,p_column_identifier=>'M'
,p_column_label=>'Seq Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(34069677843860125)
,p_db_column_name=>'FEC_PROC_REFERENCIA'
,p_display_order=>200
,p_column_identifier=>'Q'
,p_column_label=>'Fec Proc Referencia'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(34069752363860126)
,p_db_column_name=>'COD_REFERENCIA'
,p_display_order=>210
,p_column_identifier=>'R'
,p_column_label=>'Cod Referencia'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(34069898758860127)
,p_db_column_name=>'ROW_ID'
,p_display_order=>220
,p_column_identifier=>'S'
,p_column_label=>'Row Id'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(34069984062860128)
,p_db_column_name=>'CONTROL'
,p_display_order=>230
,p_column_identifier=>'T'
,p_column_label=>'Control'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(34070029459860129)
,p_db_column_name=>'EDITAR'
,p_display_order=>240
,p_column_identifier=>'U'
,p_column_label=>'Editar'
,p_column_link=>'javascript:$s(''P131_EDIT_DATA_REF_GAR'',''#SEQ_ID#'');'
,p_column_linktext=>'<span aria-label="Edit"><span class="fa fa-edit" aria-hidden="true" title="Edit"></span></span>'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(34070128993860130)
,p_db_column_name=>'BORRAR'
,p_display_order=>250
,p_column_identifier=>'V'
,p_column_label=>'Borrar'
,p_column_link=>'javascript:$s(''P131_DELETE_DATA_REF_GAR'',''#SEQ_ID#'');'
,p_column_linktext=>'<span class="fa fa-trash-o">'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(36937900469286814)
,p_db_column_name=>'Ref.'
,p_display_order=>260
,p_column_identifier=>'X'
,p_column_label=>'Ref.'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(34099188137892482)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'340992'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'DESC_TIPO:FEC_REFERENCIA:EMPRESA:CONTACTO:TELEFONO:COMENTARIO:Ref.:ALTA_POR:FEC_ALTA:ACTUALIZADO_POR:FEC_ACTUALIZACION:EDITAR:BORRAR:'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(39212158605004619)
,p_plug_name=>'Agregar/Editar Referencia Garante'
,p_parent_plug_id=>wwv_flow_imp.id(33511611433863319)
,p_region_template_options=>'#DEFAULT#:js-dialog-autoheight:js-dialog-size600x400'
,p_plug_template=>wwv_flow_imp.id(40117728043263659)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(29577551517358804)
,p_plug_name=>'Seguimiento'
,p_parent_plug_id=>wwv_flow_imp.id(20114274510427447)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>70
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(36938361583286818)
,p_plug_name=>'Historial'
,p_parent_plug_id=>wwv_flow_imp.id(29577551517358804)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>20
,p_plug_new_grid_row=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(36939145752286826)
,p_plug_name=>'CR_SEGUIMIENTO_CLI'
,p_parent_plug_id=>wwv_flow_imp.id(36938361583286818)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select COD_EMPRESA,',
'       COD_CLIENTE,',
'       COMENTARIO,',
'       HORA,',
'       FECHA,',
'       COD_USUARIO,',
'       FECHA_SEGUIMIENTO,',
'       REGID,',
'       COD_MOTIVO,',
'       NULL BORRAR',
'  from CR_SEGUIMIENTO_CLI',
' where COD_CLIENTE = :P131_COD_CLIENTE',
'order by FECHA DESC'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P131_COD_CLIENTE'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'CR_SEGUIMIENTO_CLI'
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
 p_id=>wwv_flow_imp.id(36939202800286827)
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
,p_internal_uid=>36939202800286827
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(36939321748286828)
,p_db_column_name=>'COD_EMPRESA'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Cod Empresa'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(36939471398286829)
,p_db_column_name=>'COD_CLIENTE'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Cod Cliente'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(36939715359286832)
,p_db_column_name=>'FECHA'
,p_display_order=>30
,p_column_identifier=>'E'
,p_column_label=>'Fecha'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(36939642320286831)
,p_db_column_name=>'HORA'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Hora'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(36939801265286833)
,p_db_column_name=>'COD_USUARIO'
,p_display_order=>50
,p_column_identifier=>'F'
,p_column_label=>'Usuario'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(36939923151286834)
,p_db_column_name=>'FECHA_SEGUIMIENTO'
,p_display_order=>60
,p_column_identifier=>'G'
,p_column_label=>'Fecha Seguimiento'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
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
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(36939541302286830)
,p_db_column_name=>'COMENTARIO'
,p_display_order=>70
,p_column_identifier=>'C'
,p_column_label=>'Comentario'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(36940009589286835)
,p_db_column_name=>'REGID'
,p_display_order=>90
,p_column_identifier=>'H'
,p_column_label=>'Regid'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(36940163920286836)
,p_db_column_name=>'COD_MOTIVO'
,p_display_order=>100
,p_column_identifier=>'I'
,p_column_label=>'Cod Motivo'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(36940398147286838)
,p_db_column_name=>'BORRAR'
,p_display_order=>110
,p_column_identifier=>'J'
,p_column_label=>'Borrar'
,p_column_link=>'javascript:$s(''P131_DELETE_DATA_SEG_CLI'',''#REGID#'');'
,p_column_linktext=>'<span class="fa fa-trash-o">'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(37258900712046082)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'372590'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>5
,p_report_columns=>'COMENTARIO:FECHA:HORA:COD_USUARIO:FECHA_SEGUIMIENTO:BORRAR:'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(41934949681702606)
,p_plug_name=>'Contenedor Seg.'
,p_parent_plug_id=>wwv_flow_imp.id(29577551517358804)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>5
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(36938213167286817)
,p_plug_name=>'Seguimiento'
,p_parent_plug_id=>wwv_flow_imp.id(41934949681702606)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(41934425578702601)
,p_plug_name=>'Periodo'
,p_parent_plug_id=>wwv_flow_imp.id(41934949681702606)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>15
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(41938339929702640)
,p_plug_name=>'Contenedor Seg. 2'
,p_parent_plug_id=>wwv_flow_imp.id(41934949681702606)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>25
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(29577605787358805)
,p_plug_name=>'Comite'
,p_parent_plug_id=>wwv_flow_imp.id(20114274510427447)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>90
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(36941385177286848)
,p_plug_name=>'COLEC_CC_COMITE_CLIENTES'
,p_parent_plug_id=>wwv_flow_imp.id(29577605787358805)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT seq_id SEQ_ID,',
'       c001 COD_CLIENTE,',
'       c002 FECHA,',
'       c003 ESTADO,',
'       c004 FECHA_ALTA,',
'       c005 COD_USUARIO,',
'       c006 OBSERVACION,',
'       c007 RESOLUCION,',
'       c008 FECHA_ESTADO,',
'       c009 NRO_COMITE,',
'       c010 TIPO,',
'       c011 ROW_ID,',
'       c012 DESC_TIPO,',
'       c013 CONTROL,',
'       NULL EDITAR',
'  FROM APEX_COLLECTIONS',
' WHERE COLLECTION_NAME = ''COLEC_CC_COMITE_CLIENTES''',
' ORDER BY seq_id DESC'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'COLEC_CC_COMITE_CLIENTES'
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
 p_id=>wwv_flow_imp.id(36941437339286849)
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
,p_internal_uid=>36941437339286849
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(36941535537286850)
,p_db_column_name=>'SEQ_ID'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Seq Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(37447445701992501)
,p_db_column_name=>'COD_CLIENTE'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Cod Cliente'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(37447584615992502)
,p_db_column_name=>'FECHA'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Fecha'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(37447672289992503)
,p_db_column_name=>'ESTADO'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Estado'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(37447770193992504)
,p_db_column_name=>'FECHA_ALTA'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Fecha Alta'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(37447885179992505)
,p_db_column_name=>'COD_USUARIO'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Usuario'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(37447976272992506)
,p_db_column_name=>'OBSERVACION'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>unistr('Observaci\00F3n')
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(37448013075992507)
,p_db_column_name=>'RESOLUCION'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>unistr('Resoluci\00F3n')
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(37448156881992508)
,p_db_column_name=>'FECHA_ESTADO'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Fecha Estado'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(37448245740992509)
,p_db_column_name=>'NRO_COMITE'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Nro Comite'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(37448351831992510)
,p_db_column_name=>'TIPO'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Tipo'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(37448450810992511)
,p_db_column_name=>'ROW_ID'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Row Id'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(37448541554992512)
,p_db_column_name=>'EDITAR'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Editar'
,p_column_link=>'javascript:$s(''P131_EDIT_DATA_COM_CLI'',''#SEQ_ID#'');'
,p_column_linktext=>'<span aria-label="Edit"><span class="fa fa-edit" aria-hidden="true" title="Edit"></span></span>'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(37448713494992514)
,p_db_column_name=>'DESC_TIPO'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>'Tipo'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(41123826762562624)
,p_db_column_name=>'CONTROL'
,p_display_order=>150
,p_column_identifier=>'O'
,p_column_label=>'Control'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(37459861837000076)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'374599'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'DESC_TIPO:FECHA:ESTADO:FECHA_ESTADO:FECHA_ALTA:COD_USUARIO:OBSERVACION:RESOLUCION:EDITAR:'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(41122332802562609)
,p_plug_name=>unistr('Agregar/Editar Comit\00E9 Clientes')
,p_parent_plug_id=>wwv_flow_imp.id(36941385177286848)
,p_region_template_options=>'#DEFAULT#:js-dialog-autoheight:js-dialog-size600x400'
,p_plug_template=>wwv_flow_imp.id(40117728043263659)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(38106152821418821)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(38105334176418813)
,p_button_name=>'BTSAVE_RUBRO'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Guardar/Editar Registro'
,p_button_position=>'BOTTOM'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(38107105007418831)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(38106908476418829)
,p_button_name=>'BTSAVE_PROV'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Guardar/Editar Registro'
,p_button_position=>'BOTTOM'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(38519309952102814)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(38519162421102812)
,p_button_name=>'BTSAVE_MARCAS'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Guardar/Editar Registro'
,p_button_position=>'BOTTOM'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(38104588773418805)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(38104152049418801)
,p_button_name=>'BTSAVE_VEND'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Guardar/Editar Registro'
,p_button_position=>'BOTTOM'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(41125561495562641)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(38521475314102835)
,p_button_name=>'BTSAVE_DOC_PRES'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Guardar/Editar Registro'
,p_button_position=>'BOTTOM'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(39214392290004641)
,p_button_sequence=>70
,p_button_plug_id=>wwv_flow_imp.id(39212158605004619)
,p_button_name=>'BTSAVE_REF_GAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Guardar/Editar Registro'
,p_button_position=>'BOTTOM'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(41123077086562616)
,p_button_sequence=>70
,p_button_plug_id=>wwv_flow_imp.id(41122332802562609)
,p_button_name=>'BTSAVE_COMITE_CLIENTES'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Guardar/Editar Registro'
,p_button_position=>'BOTTOM'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(39210404077004602)
,p_button_sequence=>80
,p_button_plug_id=>wwv_flow_imp.id(38522193015102842)
,p_button_name=>'BTSAVE_CC'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Guardar/Editar Registro'
,p_button_position=>'BOTTOM'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(37451953139992546)
,p_button_sequence=>130
,p_button_plug_id=>wwv_flow_imp.id(39212052064004618)
,p_button_name=>'BTSAVE_REF_TIT'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Guardar/Editar Registro'
,p_button_position=>'BOTTOM'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(33411590378500306)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(31453162422510322)
,p_button_name=>'BTCREARRUB'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Crear'
,p_button_position=>'COPY'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(33411692559500307)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(31454187619510332)
,p_button_name=>'BTCREARPRO'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Crear'
,p_button_position=>'COPY'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(33411719504500308)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(31455154580510342)
,p_button_name=>'BTCREARMARC'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Crear'
,p_button_position=>'COPY'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(33414627597500337)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(29577237958358801)
,p_button_name=>'BTCREAR_COMP_PRES'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Crear'
,p_button_position=>'COPY'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(35314020428024746)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(29577360332358802)
,p_button_name=>'BTCREAR_CONTACTO'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Crear'
,p_button_position=>'COPY'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(36937680213286811)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(29577446362358803)
,p_button_name=>'BTCREAR_REF_TIT'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Crear'
,p_button_position=>'COPY'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(41122157028562607)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(29577605787358805)
,p_button_name=>'BTCREAR_COMITE_CLIENTES'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Crear'
,p_button_position=>'COPY'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(43197211553889701)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(29577723015358806)
,p_button_name=>'BTGUARDAR_CAMBIOS'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Guardar Cambios'
,p_button_position=>'COPY'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(35313769819024743)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(29577237958358801)
,p_button_name=>'BTDOC_VENC'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_image_alt=>'Documentos Vencidos'
,p_button_position=>'COPY'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(29581916222358848)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(29578198506358810)
,p_button_name=>'BTCREAR_VEND'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Crear'
,p_button_position=>'COPY'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(36938653608286821)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(36938213167286817)
,p_button_name=>'BTSAVE_SEG'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Confirmar Seguimiento'
,p_button_position=>'COPY'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(41934794843702604)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(41934425578702601)
,p_button_name=>'BTIMPRIMIR'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_image_alt=>'Informe'
,p_button_position=>'COPY'
,p_button_redirect_url=>'f?p=&APP_ID.:190:&SESSION.::&DEBUG.:190:P190_P_COD_EMPRESA,P190_P_COD_CLIENTE,P190_P_FEC_INI,P190_P_FEC_FIN:&P_COD_EMPRESA.,&P131_COD_CLIENTE.,&P131_PERIODO_INICIAL.,&P131_PERIODO_FINAL.'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(36938720826286822)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(36938213167286817)
,p_button_name=>'BTDELETE_SEG'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_image_alt=>'Eliminar Seguimiento'
,p_button_position=>'COPY'
,p_button_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(39213097514004628)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(33511611433863319)
,p_button_name=>'BTCREAR_REF_GAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Crear'
,p_button_position=>'COPY'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(29578364920358812)
,p_name=>'P131_COD_CLIENTE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(29577880521358807)
,p_prompt=>unistr('C\00F3digo Cliente')
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_read_only_when_type=>'ALWAYS'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(29578415109358813)
,p_name=>'P131_DESC_CLIENTE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(29577880521358807)
,p_prompt=>unistr('Descripci\00F3n')
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_read_only_when_type=>'ALWAYS'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(29578577446358814)
,p_name=>'P131_DATOS_CONTACTO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(29577970765358808)
,p_prompt=>'Datos Contacto'
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
 p_id=>wwv_flow_imp.id(29578655706358815)
,p_name=>'P131_TELEFONO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(29577970765358808)
,p_prompt=>unistr('Tel\00E9fono')
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
 p_id=>wwv_flow_imp.id(29578731563358816)
,p_name=>'P131_MAIL'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(29577970765358808)
,p_prompt=>'Mail'
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
 p_id=>wwv_flow_imp.id(29578812748358817)
,p_name=>'P131_COD_AGENTE_CRED'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(29578077205358809)
,p_prompt=>unistr('Ejec.: Cr\00E9ditos')
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_AGENTE_CALL_CCCRECLI'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select e.cod_empleado||'' - ''||ltrim( p.nombre) d, ',
'       e.cod_empleado r',
'  from rh_empleados e, personas p ',
' where e.cod_empresa = :P_COD_EMPRESA',
'   and nvl( p.es_fisica, ''N'' ) = ''S'' ',
'   and e.cod_persona = p.cod_persona ',
'   AND NVL(e.activo,''S'')=''S'' ',
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
 p_id=>wwv_flow_imp.id(29578908768358818)
,p_name=>'P131_DESC_COD_AGENTE_CREDITO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(29578077205358809)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(29579095762358819)
,p_name=>'P131_COD_AGENTE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(29578077205358809)
,p_prompt=>unistr('C\00F3digo de Agente')
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_AGENTE_CALL_CCCRECLI'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select e.cod_empleado||'' - ''||ltrim( p.nombre) d, ',
'       e.cod_empleado r',
'  from rh_empleados e, personas p ',
' where e.cod_empresa = :P_COD_EMPRESA',
'   and nvl( p.es_fisica, ''N'' ) = ''S'' ',
'   and e.cod_persona = p.cod_persona ',
'   AND NVL(e.activo,''S'')=''S'' ',
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
 p_id=>wwv_flow_imp.id(29579191696358820)
,p_name=>'P131_DESC_COD_AGENTE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(29578077205358809)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(29581766720358846)
,p_name=>'P131_EDIT_DATA'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(29579205553358821)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(29581893206358847)
,p_name=>'P131_DELETE_DATA'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(29579205553358821)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(31452919162510320)
,p_name=>'P131_COMENTARIO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(29578285115358811)
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
 p_id=>wwv_flow_imp.id(31453024836510321)
,p_name=>'P131_OBSERVCION_CREDITO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(29578285115358811)
,p_prompt=>unistr('Observaci\00F3n Cr\00E9dito')
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
 p_id=>wwv_flow_imp.id(33411814216500309)
,p_name=>'P131_TIPO_NEGOCIO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(35311678395024722)
,p_prompt=>'Tipo de Negocio'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:Familiar;F,Por Departamentos;D,Corporativo;C,Cooperativas;CO,Informal;IN,Pymes;PY,Sociedad;SO,Franquicia;FR,Licitaciones;LI,Multinacional;MU'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(33411908319500310)
,p_name=>'P131_GEN_ORD_COMPRA'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(35311678395024722)
,p_prompt=>'Genera Orden de Compra'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--xlarge'
,p_attribute_01=>'N'
,p_attribute_02=>'S'
,p_attribute_03=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(34070322948860132)
,p_name=>'P131_EDIT_DATA_RUBRO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(31453162422510322)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(34070482182860133)
,p_name=>'P131_DELETE_DATA_RUBRO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(31453162422510322)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(34070770989860136)
,p_name=>'P131_RUB_ACCION'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(31453162422510322)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(34070899989860137)
,p_name=>'P131_RUB_AUX_SEQ_ID'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(31453162422510322)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(34072032410860149)
,p_name=>'P131_EDIT_DATA_PROVEEDOR'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(31454187619510332)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(34072199027860150)
,p_name=>'P131_DELETE_DATA_PROVEEDOR'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(31454187619510332)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(35309577395024701)
,p_name=>'P131_PROV_ACCION'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(31454187619510332)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(35309659441024702)
,p_name=>'P131_PROV_AUX_SEQ_ID'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(31454187619510332)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(35310176553024707)
,p_name=>'P131_EDIT_DATA_MARCA'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(31455154580510342)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(35310247481024708)
,p_name=>'P131_DELETE_DATA_MARCA'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(31455154580510342)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(35310484077024710)
,p_name=>'P131_MARCA_ACCION'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(31455154580510342)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(35310501485024711)
,p_name=>'P131_MARCA_AUX_SEQ_ID'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(31455154580510342)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(35310951585024715)
,p_name=>'P131_SIZE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(33411452544500305)
,p_prompt=>'Mts2 Aprox.'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
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
 p_id=>wwv_flow_imp.id(35311150186024717)
,p_name=>'P131_CANT_SUCURSALES'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(35311043858024716)
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
 p_id=>wwv_flow_imp.id(35311347288024719)
,p_name=>'P131_COMERCIAL'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(35311263562024718)
,p_prompt=>'Comercial'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--xlarge'
,p_attribute_01=>'N'
,p_attribute_02=>'S'
,p_attribute_03=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(35311402418024720)
,p_name=>'P131_RESIDENCIAL'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(35311263562024718)
,p_prompt=>'Residencial'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--xlarge'
,p_attribute_01=>'N'
,p_attribute_02=>'S'
,p_attribute_03=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(35311831936024724)
,p_name=>'P131_CANT_EMPLEADOS'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(35311729912024723)
,p_prompt=>'Cantidad de Empleados'
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
 p_id=>wwv_flow_imp.id(35311978346024725)
,p_name=>'P131_DEPOSITO_PROPIO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(35311729912024723)
,p_prompt=>unistr('Dep\00F3sito Propio/ Local Propio')
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:SI;S,NO;N'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(35312034575024726)
,p_name=>'P131_CANT_VEHICULO'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(35311729912024723)
,p_prompt=>unistr('Flota de Veh\00EDculo de Entrega Propia')
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
 p_id=>wwv_flow_imp.id(35312198303024727)
,p_name=>'P131_CANT_LOCAL'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(35311729912024723)
,p_prompt=>'Cantidad de Locales en Venta'
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
 p_id=>wwv_flow_imp.id(35313007878024736)
,p_name=>'P131_EDIT_DATA_CP'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(33412079822500311)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(35313182635024737)
,p_name=>'P131_DELETE_DATA_CP'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(33412079822500311)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(35313239057024738)
,p_name=>'P131_CP_ACCION'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(33412079822500311)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(35313340430024739)
,p_name=>'P131_CP_AUX_SEQ_ID'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(33412079822500311)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(35313471201024740)
,p_name=>'P131_CP_ACCION_RADIO'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(33412079822500311)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(35313503676024741)
,p_name=>'P131_CP_AUX_SEQ_ID_RADIO'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(33412079822500311)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(35314130691024747)
,p_name=>'P131_EDIT_DATA_CONTACTOS'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(33414789244500338)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(35314295851024748)
,p_name=>'P131_DELETE_DATA_CONTACTOS'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(33414789244500338)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(36936778680286802)
,p_name=>'P131_REF_ACCION'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(33511599652863318)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(36936844951286803)
,p_name=>'P131_REF_AUX_SEQ_ID'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(33511599652863318)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(36936985777286804)
,p_name=>'P131_REF_CCO_ACCION'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(33511599652863318)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(36937015753286805)
,p_name=>'P131_REF_CCO_AUX_SEQ_ID'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(33511599652863318)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(36937132740286806)
,p_name=>'P131_EDIT_DATA_REF_TIT'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(33511599652863318)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(36937250494286807)
,p_name=>'P131_DELETE_DATA_REF_TIT'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(33511599652863318)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(36937365444286808)
,p_name=>'P131_EDIT_DATA_REF_GAR'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(33511611433863319)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(36937412203286809)
,p_name=>'P131_DELETE_DATA_REF_GAR'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(33511611433863319)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(36938036270286815)
,p_name=>'P131_REF_GAR_ACCION'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(33511611433863319)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(36938197480286816)
,p_name=>'P131_REF_GAR_AUX_SEQ_ID'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(33511611433863319)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(36938467065286819)
,p_name=>'P131_COMENTARIO_SEG'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(36938213167286817)
,p_prompt=>'Comentario'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>30
,p_cHeight=>5
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(36938565586286820)
,p_name=>'P131_FEC_SEG'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(36938213167286817)
,p_prompt=>'Fecha Seguimiento'
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
 p_id=>wwv_flow_imp.id(36940444966286839)
,p_name=>'P131_DELETE_DATA_SEG_CLI'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(36939145752286826)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(37448634344992513)
,p_name=>'P131_EDIT_DATA_COM_CLI'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(36941385177286848)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(37451068847992537)
,p_name=>'P131_TIPO_REF_TIT'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(39212052064004618)
,p_prompt=>'Tipo'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:BANCARIA;B,COMERCIAL;C,PERSONAL;P'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(37451173634992538)
,p_name=>'P131_FEC_REF_TIT'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(39212052064004618)
,p_prompt=>'Fecha'
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
 p_id=>wwv_flow_imp.id(37451225037992539)
,p_name=>'P131_EMPRESA_REF_TIT'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(39212052064004618)
,p_prompt=>'Empresa'
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
 p_id=>wwv_flow_imp.id(37451354220992540)
,p_name=>'P131_CONTACTO_REF_TIT'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(39212052064004618)
,p_prompt=>'Contacto'
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
 p_id=>wwv_flow_imp.id(37451474434992541)
,p_name=>'P131_TELEFONO_REF_TIT'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(39212052064004618)
,p_prompt=>unistr('Tel\00E9fono')
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_colspan=>6
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(37451564272992542)
,p_name=>'P131_COMENTARIO_REF_TIT'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(39212052064004618)
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
 p_id=>wwv_flow_imp.id(38104331792418803)
,p_name=>'P131_COD_VENDEDOR'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(38104152049418801)
,p_prompt=>'Vendedor'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_VENDEDORES_CCCRECLI'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT V.COD_VENDEDOR R,',
'       V.COD_VENDEDOR || '' - '' ||NVL(LTRIM(P.NOMBRE), LTRIM(P.NOMB_FANTASIA)) D',
'  FROM FV_VENDEDORES V,',
'       PERSONAS P',
' WHERE V.COD_EMPRESA = :P_COD_EMPRESA',
'   AND V.COD_PERSONA = P.COD_PERSONA',
'  ORDER BY 2'))
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
 p_id=>wwv_flow_imp.id(38104489150418804)
,p_name=>'P131_OBSERVACION_VENDEDOR'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(38104152049418801)
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
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(38106067732418820)
,p_name=>'P131_COD_RUBRO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(38105334176418813)
,p_prompt=>'Rubro'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_RUBROS_CCCRECLI'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT DESCRIPCION D,',
'       COD_RUBRO R',
' FROM CC_RUBROS_VENTAS',
'WHERE COD_EMPRESA = :P_COD_EMPRESA'))
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
 p_id=>wwv_flow_imp.id(38107056432418830)
,p_name=>'P131_COD_PROVEEDOR'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(38106908476418829)
,p_prompt=>'Proveedor'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_PROVEEDORES_CCCRECLI'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select descripcion D, ',
'       cod_proveedor R	  ',
' from cc_proveedores_ventas',
'where cod_empresa = :P_COD_EMPRESA'))
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
 p_id=>wwv_flow_imp.id(38107862672418838)
,p_name=>'P131_CONTROL_RUBRO'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(31453162422510322)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(38108636238418846)
,p_name=>'P131_CONTROL_PROVEEDOR'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(31454187619510332)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(38519288054102813)
,p_name=>'P131_COD_MARCA'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(38519162421102812)
,p_prompt=>'Marca'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_MARCAS_CCCRECLI'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select descripcion D, ',
'       cod_marca R',
'  from cc_marcas_ventas',
' where cod_empresa = :P_COD_EMPRESA'))
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
 p_id=>wwv_flow_imp.id(38520951522102830)
,p_name=>'P131_CONTROL_MARCA'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(31455154580510342)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(38522236828102843)
,p_name=>'P131_TIPO_CC'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(38522193015102842)
,p_prompt=>'Tipo'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:JEFE DE COMPRAS;JC,CONTADOR;CO,ENCANRGADO DE DEPOSITO;ED,ENCARGADO DE SERVICIO TECNICO;EST,OTROS;OT,ENCARGADO DE PAGOS;EP,ENVIO FACTURA DIGITAL;FA'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(38522360976102844)
,p_name=>'P131_DESCRIPCION_CC'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(38522193015102842)
,p_prompt=>'Nombre'
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
 p_id=>wwv_flow_imp.id(38522426415102845)
,p_name=>'P131_CORREO_CC'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(38522193015102842)
,p_prompt=>'Correo'
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
 p_id=>wwv_flow_imp.id(38522595229102846)
,p_name=>'P131_FNAC_CC'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(38522193015102842)
,p_prompt=>'Fecha de Nacimiento'
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
 p_id=>wwv_flow_imp.id(38522611240102847)
,p_name=>'P131_TELEFONO_CC'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(38522193015102842)
,p_prompt=>unistr('Tel\00E9fono Fijo')
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
 p_id=>wwv_flow_imp.id(38522730502102848)
,p_name=>'P131_INTERNO_CC'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(38522193015102842)
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
 p_id=>wwv_flow_imp.id(38522872389102849)
,p_name=>'P131_CELULAR_CC'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(38522193015102842)
,p_prompt=>'Celular'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_colspan=>6
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(39213721925004635)
,p_name=>'P131_TIPO_REF_GAR'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(39212158605004619)
,p_prompt=>'Tipo'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:BANCARIA;B,COMERCIAL;C,PERSONAL;P'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(39213854204004636)
,p_name=>'P131_FEC_REFERENCIA'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(39212158605004619)
,p_prompt=>'Fecha de Referencia'
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
 p_id=>wwv_flow_imp.id(39213941757004637)
,p_name=>'P131_EMPRESA_REF_GAR'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(39212158605004619)
,p_prompt=>'Empresa'
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
 p_id=>wwv_flow_imp.id(39214026350004638)
,p_name=>'P131_CONTACTO_REF_GAR'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(39212158605004619)
,p_prompt=>'Contacto'
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
 p_id=>wwv_flow_imp.id(39214114471004639)
,p_name=>'P131_TELEFONO_REF_GAR'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(39212158605004619)
,p_prompt=>unistr('Tel\00E9fono')
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_colspan=>6
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(39214219650004640)
,p_name=>'P131_COMENTARIO_REF_GAR'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(39212158605004619)
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
 p_id=>wwv_flow_imp.id(41122491555562610)
,p_name=>'P131_TIPO_COMITE_CLIENTES'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(41122332802562609)
,p_prompt=>'Tipo'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:RIESGOS;R,COBRANZAS;C'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(41122563275562611)
,p_name=>'P131_FECHA_COMITE_CLIENTES'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(41122332802562609)
,p_prompt=>'Fecha'
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
 p_id=>wwv_flow_imp.id(41122694552562612)
,p_name=>'P131_ESTADO_COMITE_CLIENTES'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(41122332802562609)
,p_prompt=>'Estado'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:PENDIENTE;PENDIENTE,APROBADO;APROBADO,DENEGADO;DENEGADO,SEGUIMIENTO PAGO;SEGUIMIENTO PAGO,APROBADO SUBCOMITE;APROBADO SUBCOMITE,RECHAZADO SUBCOMITE;RECHAZADO SUBCOMITE'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(41122733772562613)
,p_name=>'P131_FEC_ESTADO'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(41122332802562609)
,p_prompt=>'Fecha Estado'
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
 p_id=>wwv_flow_imp.id(41122892965562614)
,p_name=>'P131_OBSERVACION_COM_CLI'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(41122332802562609)
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
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(41122934947562615)
,p_name=>'P131_RESOLUCION_COM_CLI'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(41122332802562609)
,p_prompt=>unistr('Resoluci\00F3n')
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
 p_id=>wwv_flow_imp.id(41125159728562637)
,p_name=>'P131_COD_DOCUMENTO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(38521475314102835)
,p_prompt=>unistr('C\00F3digo de Documento')
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_DOCUMENTOS_CCCRECLI'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT DESCRIPCION D,',
'       COD_DOCUMENTO R',
'  FROM CC_DOCUMENTOS_CARPETA ',
'',
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
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(41125213771562638)
,p_name=>'P131_FEC_VENCIMIENTO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(38521475314102835)
,p_prompt=>'Fecha de Vencimiento'
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
 p_id=>wwv_flow_imp.id(41125344253562639)
,p_name=>'P131_OBSERVACION_DOC_PRES'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(38521475314102835)
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
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(41125451291562640)
,p_name=>'P131_VALOR'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(38521475314102835)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(41126362154562649)
,p_name=>'P131_CONTROL_CP'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(33412079822500311)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(41934515926702602)
,p_name=>'P131_PERIODO_INICIAL'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(41934425578702601)
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
 p_id=>wwv_flow_imp.id(41934612702702603)
,p_name=>'P131_PERIODO_FINAL'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(41934425578702601)
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
 p_id=>wwv_flow_imp.id(41935433509702611)
,p_name=>'P131_ANTIGUEDAD'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(35311678395024722)
,p_prompt=>unistr('Antig\00FCedad Rubro Comercial')
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
 p_id=>wwv_flow_imp.id(41935500763702612)
,p_name=>'P131_TIPO_EMPRESA'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(35311678395024722)
,p_prompt=>'Tipo Empresa'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:UNIPERSONAL;UN,S.R.L.;SRL,S.A.;SA,S.A.E.C.A.;SAECA,S.A.I.C.;SAIC'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(41935614345702613)
,p_name=>'P131_VENTA_DIRECTA'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(41935983543702616)
,p_prompt=>'Venta Directa'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--xlarge'
,p_attribute_01=>'N'
,p_attribute_02=>'S'
,p_attribute_03=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(41935786565702614)
,p_name=>'P131_ASOCIACIONES'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(41935983543702616)
,p_prompt=>'Asociaciones'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--xlarge'
,p_attribute_01=>'N'
,p_attribute_02=>'S'
,p_attribute_03=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(41935890729702615)
,p_name=>'P131_DESCUENTO_MINISTERIAL'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(41935983543702616)
,p_prompt=>'Descuento Ministerial'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--xlarge'
,p_attribute_01=>'N'
,p_attribute_02=>'S'
,p_attribute_03=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(41936134793702618)
,p_name=>'P131_SALON'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(41936033309702617)
,p_prompt=>unistr('Sal\00F3n')
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--xlarge'
,p_attribute_01=>'N'
,p_attribute_02=>'S'
,p_attribute_03=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(41936225722702619)
,p_name=>'P131_EXTERNOS'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(41936033309702617)
,p_prompt=>'Externos'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--xlarge'
,p_attribute_01=>'N'
,p_attribute_02=>'S'
,p_attribute_03=>'N'
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
 p_id=>wwv_flow_imp.id(41936339203702620)
,p_name=>'P131_INDEPENDIENTES'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(41936033309702617)
,p_prompt=>'Independientes'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--xlarge'
,p_attribute_01=>'N'
,p_attribute_02=>'S'
,p_attribute_03=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(41936466596702621)
,p_name=>'P131_CALL_CENTER'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(41936033309702617)
,p_prompt=>'Call Senter'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--xlarge'
,p_attribute_01=>'N'
,p_attribute_02=>'S'
,p_attribute_03=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(41936695962702623)
,p_name=>'P131_CREDITO_PROPIO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(41936508634702622)
,p_prompt=>unistr('Cr\00E9dito Propio')
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--xlarge'
,p_attribute_01=>'N'
,p_attribute_02=>'S'
,p_attribute_03=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(41936741247702624)
,p_name=>'P131_TARJETAS'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(41936508634702622)
,p_prompt=>'Tarjetas'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--xlarge'
,p_attribute_01=>'N'
,p_attribute_02=>'S'
,p_attribute_03=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(41936823788702625)
,p_name=>'P131_CREDITO_TERCIARIZADO'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(41936508634702622)
,p_prompt=>unistr('Cr\00E9dito Terciarizado')
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--xlarge'
,p_attribute_01=>'N'
,p_attribute_02=>'S'
,p_attribute_03=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(41936981570702626)
,p_name=>'P131_FIADO_NET'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(41936508634702622)
,p_prompt=>'Fiado.net'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--xlarge'
,p_attribute_01=>'N'
,p_attribute_02=>'S'
,p_attribute_03=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(41937078868702627)
,p_name=>'P131_VISION'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(41936508634702622)
,p_prompt=>unistr('Visi\00F3n')
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--xlarge'
,p_attribute_01=>'N'
,p_attribute_02=>'S'
,p_attribute_03=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(41937283166702629)
,p_name=>'P131_CONTADO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(41936508634702622)
,p_prompt=>'Contado'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--xlarge'
,p_attribute_01=>'N'
,p_attribute_02=>'S'
,p_attribute_03=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(41937899838702635)
,p_name=>'P131_6_MESES'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(41937787805702634)
,p_prompt=>'6 Meses'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--xlarge'
,p_attribute_01=>'N'
,p_attribute_02=>'S'
,p_attribute_03=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(41937985847702636)
,p_name=>'P131_12_MESES'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(41937787805702634)
,p_prompt=>'12 Meses'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--xlarge'
,p_attribute_01=>'N'
,p_attribute_02=>'S'
,p_attribute_03=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(41938043532702637)
,p_name=>'P131_18_MESES'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(41937787805702634)
,p_prompt=>'18 Meses'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--xlarge'
,p_attribute_01=>'N'
,p_attribute_02=>'S'
,p_attribute_03=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(41938182305702638)
,p_name=>'P131_MAS_18_MESES'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(41937787805702634)
,p_prompt=>unistr('M\00E1s de 18 Meses')
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--xlarge'
,p_attribute_01=>'N'
,p_attribute_02=>'S'
,p_attribute_03=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(41938218656702639)
,p_name=>'P131_TIPO_PAGARE'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(35311678395024722)
,p_prompt=>'Tipo Pagare'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:UNICOS;UN,INDEPENDIENTE POR CUOTA;IC'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(41938401247702641)
,p_name=>'P131_COD_ANALISTA'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(41938339929702640)
,p_prompt=>'Analista'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_AGENTE_CALL_CCCRECLI'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select e.cod_empleado||'' - ''||ltrim( p.nombre) d, ',
'       e.cod_empleado r',
'  from rh_empleados e, personas p ',
' where e.cod_empresa = :P_COD_EMPRESA',
'   and nvl( p.es_fisica, ''N'' ) = ''S'' ',
'   and e.cod_persona = p.cod_persona ',
'   AND NVL(e.activo,''S'')=''S'' ',
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
 p_id=>wwv_flow_imp.id(41938519956702642)
,p_name=>'P131_FECHA_PROCESO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(41938339929702640)
,p_prompt=>'Fecha Proceso'
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
 p_id=>wwv_flow_imp.id(41938637025702643)
,p_name=>'P131_FECHA_FINALIZADO'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(41938339929702640)
,p_prompt=>'Fecha Finalizado'
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
 p_id=>wwv_flow_imp.id(41938755759702644)
,p_name=>'P131_ESTADO_CARPETA'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(41938339929702640)
,p_prompt=>'Estado Carpeta'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:PENDIENTE,EN PROCESO;EN_PROCESO,FINALIZADO;FINALIZADO'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(41939178206702648)
,p_name=>'P131_CONTROL_IMPRIMIR'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(41934425578702601)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(43197333384889702)
,p_name=>'P131_URL'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(33412079822500311)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(43197913869889708)
,p_name=>'P131_COD_PERSONA'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(20114274510427447)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(43198016309889709)
,p_name=>'P131_COD_SUCURSAL'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(20114274510427447)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(43198478235889713)
,p_name=>'P131_COD_GESTOR'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(29577237958358801)
,p_prompt=>'Gestor'
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
 p_id=>wwv_flow_imp.id(43198511128889714)
,p_name=>'P131_FECHA_CIERRE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(29577237958358801)
,p_prompt=>'Fecha de Cierre'
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
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(31451109588510302)
,p_name=>'DA_ABRIR_MODAL_VEND'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(29581916222358848)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(31451264329510303)
,p_event_id=>wwv_flow_imp.id(31451109588510302)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P131_EDIT_DATA,P131_COD_VENDEDOR,P131_OBSERVACION_VENDEDOR'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(38104238979418802)
,p_event_id=>wwv_flow_imp.id(31451109588510302)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(38104152049418801)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(31452013688510311)
,p_name=>'DA_EDITAR_VEND'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P131_EDIT_DATA'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(31452174063510312)
,p_event_id=>wwv_flow_imp.id(31452013688510311)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_02=>'P131_EDIT_DATA'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(31452384778510314)
,p_event_id=>wwv_flow_imp.id(31452013688510311)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    CCCRECLI.CARGAR_DATOS_EDIT(pedit_data    => :P131_EDIT_DATA,',
'                               pcod_vendedor => :P131_COD_VENDEDOR, ',
'                               pobservacion  => :P131_OBSERVACION_VENDEDOR);',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'    APEX_DEBUG.ERROR(''DA_EDIT_VEND ''||SQLERRM);',
'END;'))
,p_attribute_02=>'P131_EDIT_DATA'
,p_attribute_03=>'P131_COD_VENDEDOR,P131_OBSERVACION_VENDEDOR'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P131_EDIT_DATA'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(38105170642418811)
,p_event_id=>wwv_flow_imp.id(31452013688510311)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(38104152049418801)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(31452564729510316)
,p_name=>'DA_DELETE_VEND'
,p_event_sequence=>40
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P131_DELETE_DATA'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(31452664386510317)
,p_event_id=>wwv_flow_imp.id(31452564729510316)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_02=>'P131_DELETE_DATA'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(31452801506510319)
,p_event_id=>wwv_flow_imp.id(31452564729510316)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    CCCRECLI.DELETE_COL(pseq_id   => :P131_DELETE_DATA, ',
'                        p_col     => ''COLEC_CC_VENDEDORES_CLIENTES'',',
'                        patributo => 8);',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'    APEX_DEBUG.ERROR(''PANTALLA 131 DELETE COL ''||SQLERRM);',
'END;'))
,p_attribute_02=>'P131_DELETE_DATA'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(31452775793510318)
,p_event_id=>wwv_flow_imp.id(31452564729510316)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(29579205553358821)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(34070965466860138)
,p_name=>'DA_SELECCIONAR_RUBRO'
,p_event_sequence=>50
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P131_RUB_AUX_SEQ_ID'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(34071029236860139)
,p_event_id=>wwv_flow_imp.id(34070965466860138)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_02=>'P131_RUB_AUX_SEQ_ID,P131_RUB_ACCION'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(34071130822860140)
,p_event_id=>wwv_flow_imp.id(34070965466860138)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    CCCRECLI.PR_CHECK(pseq_id    => :P131_RUB_AUX_SEQ_ID, ',
'                      paccion    => :P131_RUB_ACCION, ',
'                      pcolection => ''COLEC_CC_CLIENTES_RUBROS'',',
'                      patributo  => 3);',
'EXCEPTION',
'    WHEN OTHERS THEN',
'    APEX_DEBUG.ERROR(''DA_SELECCIONAR_RUBRO ''||SQLERRM);',
'END;'))
,p_attribute_02=>'P131_RUB_AUX_SEQ_ID,P131_RUB_ACCION'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(35309773387024703)
,p_name=>'DA_SELECCIONAR_PROVEEDOR'
,p_event_sequence=>60
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P131_PROV_AUX_SEQ_ID'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(35309844694024704)
,p_event_id=>wwv_flow_imp.id(35309773387024703)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_02=>'P131_PROV_ACCION,P131_PROV_AUX_SEQ_ID'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(35309959530024705)
,p_event_id=>wwv_flow_imp.id(35309773387024703)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    CCCRECLI.PR_CHECK(pseq_id    => :P131_PROV_AUX_SEQ_ID, ',
'                      paccion    => :P131_PROV_ACCION, ',
'                      pcolection => ''COLEC_CC_CLIENTES_PROVEEDORES'',',
'                      patributo  => 3);',
'EXCEPTION',
'    WHEN OTHERS THEN',
'    APEX_DEBUG.ERROR(''DA_SELECCIONAR_PROVEEDOR ''||SQLERRM);',
'END;'))
,p_attribute_02=>'P131_PROV_ACCION,P131_PROV_AUX_SEQ_ID'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(35310682051024712)
,p_name=>'DA_SELECCIONAR_MARCA'
,p_event_sequence=>70
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P131_MARCA_AUX_SEQ_ID'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(35310709221024713)
,p_event_id=>wwv_flow_imp.id(35310682051024712)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_02=>'P131_MARCA_ACCION,P131_MARCA_AUX_SEQ_ID'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(35310826314024714)
,p_event_id=>wwv_flow_imp.id(35310682051024712)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    CCCRECLI.PR_CHECK(pseq_id    => :P131_MARCA_AUX_SEQ_ID, ',
'                      paccion    => :P131_MARCA_ACCION, ',
'                      pcolection => ''COLEC_CC_CLIENTES_MARCAS'',',
'                      patributo  => 3);',
'EXCEPTION',
'    WHEN OTHERS THEN',
'    APEX_DEBUG.ERROR(''DA_SELECCIONAR_MARCA ''||SQLERRM);',
'END;'))
,p_attribute_02=>'P131_MARCA_ACCION,P131_MARCA_AUX_SEQ_ID'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(36938898111286823)
,p_name=>'DA_GUARDAR_SEGUIMIENTO'
,p_event_sequence=>80
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(36938653608286821)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(36938982097286824)
,p_event_id=>wwv_flow_imp.id(36938898111286823)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_02=>'P131_COMENTARIO_SEG,P131_FEC_SEG'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(36939073316286825)
,p_event_id=>wwv_flow_imp.id(36938898111286823)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    INSERTA_SEGUIMIENTO_cliente(PCOD_EMPRESA     => :P_COD_EMPRESA,',
'                                PCOMENTARIO      => :P131_COMENTARIO_SEG,',
'                                PUSUARIO         => :P_COD_USUARIO,',
'                                PCLIENTE         => :P131_COD_CLIENTE,',
'                                pfec_seguimiento => :P131_FEC_SEG);',
'',
'    :P131_COMENTARIO_SEG := NULL;',
'    :P131_FEC_SEG := NULL;                            ',
'EXCEPTION',
'    WHEN OTHERS THEN',
'    APEX_DEBUG.ERROR(''DA_GUARDAR_SEGUIMIENTO ''||SQLERRM);',
'END;'))
,p_attribute_02=>'P_COD_EMPRESA,P131_COMENTARIO_SEG,P_COD_USUARIO,P131_COD_CLIENTE,P131_FEC_SEG'
,p_attribute_03=>'P131_COMENTARIO_SEG,P131_FEC_SEG'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(36940251318286837)
,p_event_id=>wwv_flow_imp.id(36938898111286823)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(36939145752286826)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(36940539072286840)
,p_name=>'DA_DELETE_SEG_CLI'
,p_event_sequence=>90
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P131_DELETE_DATA_SEG_CLI'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(36940657550286841)
,p_event_id=>wwv_flow_imp.id(36940539072286840)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>unistr('\00BFEst\00E1 seguro que desea eliminar el Seguimiento?')
,p_attribute_02=>'Eliminar Seguimiento'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(36941070530286845)
,p_event_id=>wwv_flow_imp.id(36940539072286840)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_02=>'P131_DELETE_DATA_SEG_CLI'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(36941149574286846)
,p_event_id=>wwv_flow_imp.id(36940539072286840)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'VFECHA DATE;',
'VCOD_CLI VARCHAR2(1000);',
'BEGIN',
'    BEGIN',
'        SELECT FECHA,',
'               COD_CLIENTE',
'          INTO VFECHA,',
'               VCOD_CLI',
'          FROM CR_SEGUIMIENTO_CLI',
'         WHERE COD_EMPRESA = :P_COD_EMPRESA',
'           AND REGID = :P131_DELETE_DATA_SEG_CLI;',
'    EXCEPTION',
'        WHEN NO_DATA_FOUND THEN',
'        VFECHA := NULL;',
'        VCOD_CLI := NULL;',
'    END;',
'',
'    ELIMINA_SEGUIMIENTO_CLIENTE(PCOD_EMPRESA => :P_COD_EMPRESA,',
'                                PREID        => :P131_DELETE_DATA_SEG_CLI,',
'                                PFECHA       => VFECHA,',
'                                PCLIENTE     => VCOD_CLI);',
'EXCEPTION',
'    WHEN OTHERS THEN',
'    APEX_DEBUG.ERROR(''DA_DELETE_SEG_CLI ''||SQLERRM);',
'END;'))
,p_attribute_02=>'P131_DELETE_DATA_SEG_CLI,P_COD_EMPRESA'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(36941235848286847)
,p_event_id=>wwv_flow_imp.id(36940539072286840)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(36939145752286826)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(38104602041418806)
,p_name=>'DA_GUARDAR_EDITAR_VEND'
,p_event_sequence=>100
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(38104588773418805)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(38104735345418807)
,p_event_id=>wwv_flow_imp.id(38104602041418806)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_02=>'P131_COD_VENDEDOR,P131_OBSERVACION_VENDEDOR'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(38104872161418808)
,p_event_id=>wwv_flow_imp.id(38104602041418806)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    CCCRECLI.ADD_COL_VEND(pcod_vendedor => :P131_COD_VENDEDOR, ',
'                          pobservacion  => :P131_OBSERVACION_VENDEDOR,',
'                          pcod_usuario  => :P_COD_USUARIO,',
'                          pcod_empresa  => :P_COD_EMPRESA,',
'                          pcod_cliente  => :P131_COD_CLIENTE);',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'    APEX_DEBUG.ERROR(''DA_GUARDAR_EDITAR_VEND AGREGAR ''||SQLERRM);',
'END;'))
,p_attribute_02=>'P131_COD_VENDEDOR,P131_OBSERVACION_VENDEDOR,P_COD_USUARIO,P_COD_EMPRESA,P131_COD_CLIENTE'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P131_EDIT_DATA'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(38105285331418812)
,p_event_id=>wwv_flow_imp.id(38104602041418806)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    CCCRECLI.EDIT_COL_VEND(pseq_id       => :P131_EDIT_DATA,',
'                           pcod_vendedor => :P131_COD_VENDEDOR, ',
'                           pobservacion  => :P131_OBSERVACION_VENDEDOR,',
'                           pcod_usuario  => :P_COD_USUARIO,',
'                           pcod_empresa  => :P_COD_EMPRESA,',
'                           pcod_cliente  => :P131_COD_CLIENTE); ',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'    APEX_DEBUG.ERROR(''DA_GUARDAR_EDITAR_VEND EDITAR ''||SQLERRM);',
'END;'))
,p_attribute_02=>'P131_EDIT_DATA,P131_COD_VENDEDOR,P131_OBSERVACION_VENDEDOR,P_COD_USUARIO,P_COD_EMPRESA,P131_COD_CLIENTE'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P131_EDIT_DATA'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(38104994527418809)
,p_event_id=>wwv_flow_imp.id(38104602041418806)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(38104152049418801)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(38105062271418810)
,p_event_id=>wwv_flow_imp.id(38104602041418806)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(29579205553358821)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(38105497168418814)
,p_name=>'DA_ABRIR_MODAL_RUB'
,p_event_sequence=>110
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(33411590378500306)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(38105520931418815)
,p_event_id=>wwv_flow_imp.id(38105497168418814)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P131_EDIT_DATA_RUBRO,P131_COD_RUBRO'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(38105668687418816)
,p_event_id=>wwv_flow_imp.id(38105497168418814)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(38105334176418813)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(38105725780418817)
,p_name=>'DA_EDITAR_RUBRO'
,p_event_sequence=>120
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P131_EDIT_DATA_RUBRO'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(38105888221418818)
,p_event_id=>wwv_flow_imp.id(38105725780418817)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_02=>'P131_EDIT_DATA_RUBRO'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(38106870206418828)
,p_event_id=>wwv_flow_imp.id(38105725780418817)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    CCCRECLI.CARGAR_DATOS_EDIT_RUB(pedit_data => :P131_EDIT_DATA_RUBRO,',
'                                   pcod_rubro => :P131_COD_RUBRO);',
'EXCEPTION',
'    WHEN OTHERS THEN',
'    APEX_DEBUG.ERROR(''DA_CARGAR_DATOS_EDIT_RUBROS ''||SQLERRM);',
'END;'))
,p_attribute_02=>'P131_EDIT_DATA_RUBRO'
,p_attribute_03=>'P131_COD_RUBRO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P131_EDIT_DATA_RUBRO'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(38105921169418819)
,p_event_id=>wwv_flow_imp.id(38105725780418817)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(38105334176418813)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(38106293448418822)
,p_name=>'DA_AGREGAR_EDITAR_RUB'
,p_event_sequence=>130
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(38106152821418821)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(38106380352418823)
,p_event_id=>wwv_flow_imp.id(38106293448418822)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_02=>'P131_COD_RUBRO'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(38106663950418826)
,p_event_id=>wwv_flow_imp.id(38106293448418822)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'VCONTROL NUMBER;',
'BEGIN   ',
'    VCONTROL := CCCRECLI.BUSCAR_RUBRO(pcod_cliente => :P131_COD_CLIENTE,',
'                                      pcod_rubro   => :P131_COD_RUBRO);',
'',
'    IF VCONTROL > 0 THEN',
'        :P131_CONTROL_RUBRO := 1;',
'    ELSE',
'        :P131_CONTROL_RUBRO := 0;',
'',
'        CCCRECLI.ADD_COL_RUBROS(pcod_empresa => :P_COD_EMPRESA,',
'                                pcod_cliente => :P131_COD_CLIENTE,',
'                                pcod_rubro   => :P131_COD_RUBRO);',
'    END IF;',
'    ',
'EXCEPTION',
'    WHEN OTHERS THEN',
'    :P131_CONTROL_RUBRO := 0;',
'    APEX_DEBUG.ERROR(''DA_AGREGAR_RUBRO ''||SQLERRM);',
'END;'))
,p_attribute_02=>'P131_COD_RUBRO,P_COD_EMPRESA,P131_COD_CLIENTE'
,p_attribute_03=>'P131_CONTROL_RUBRO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P131_EDIT_DATA_RUBRO'
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
 p_id=>wwv_flow_imp.id(38106730916418827)
,p_event_id=>wwv_flow_imp.id(38106293448418822)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'VCONTROL NUMBER;',
'BEGIN',
'    VCONTROL := CCCRECLI.BUSCAR_RUBRO(pcod_cliente => :P131_COD_CLIENTE,',
'                                      pcod_rubro   => :P131_COD_RUBRO);',
'',
'    IF VCONTROL > 0 THEN',
'        :P131_CONTROL_RUBRO := 1;',
'    ELSE',
'        :P131_CONTROL_RUBRO := 0;',
'',
'        CCCRECLI.EDIT_COL_RUBROS(pseq_id      => :P131_EDIT_DATA_RUBRO,',
'                                 pcod_empresa => :P_COD_EMPRESA,',
'                                 pcod_cliente => :P131_COD_CLIENTE,',
'                                 pcod_rubro   => :P131_COD_RUBRO);',
'    END IF;',
'',
'    ',
'EXCEPTION',
'    WHEN OTHERS THEN',
'    :P131_CONTROL_RUBRO := 0;',
'    APEX_DEBUG.ERROR(''DA_EDITAR_RUBRO ''||SQLERRM);',
'END;'))
,p_attribute_02=>'P131_EDIT_DATA_RUBRO,P_COD_EMPRESA,P131_COD_CLIENTE,P131_COD_RUBRO'
,p_attribute_03=>'P131_CONTROL_RUBRO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P131_EDIT_DATA_RUBRO'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(38107920380418839)
,p_event_id=>wwv_flow_imp.id(38106293448418822)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'El rubro seleccionado ya se encuentra asociado al cliente, por favor coloque otro rubro.'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P131_CONTROL_RUBRO'
,p_client_condition_expression=>'1'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(38106402434418824)
,p_event_id=>wwv_flow_imp.id(38106293448418822)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(38105334176418813)
,p_client_condition_type=>'NOT_EQUALS'
,p_client_condition_element=>'P131_CONTROL_RUBRO'
,p_client_condition_expression=>'1'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(38106502461418825)
,p_event_id=>wwv_flow_imp.id(38106293448418822)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(31453162422510322)
,p_client_condition_type=>'NOT_EQUALS'
,p_client_condition_element=>'P131_CONTROL_RUBRO'
,p_client_condition_expression=>'1'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(38107233442418832)
,p_name=>'DA_ABRIR_MODAL_PROV'
,p_event_sequence=>140
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(33411692559500307)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(38107399495418833)
,p_event_id=>wwv_flow_imp.id(38107233442418832)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P131_EDIT_DATA_PROVEEDOR,P131_COD_PROVEEDOR'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(38107403638418834)
,p_event_id=>wwv_flow_imp.id(38107233442418832)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(38106908476418829)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(38107542204418835)
,p_name=>'DA_ABRIR_MODAL_PROV_EDIT'
,p_event_sequence=>150
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P131_EDIT_DATA_PROVEEDOR'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(38107605108418836)
,p_event_id=>wwv_flow_imp.id(38107542204418835)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_02=>'P131_EDIT_DATA_PROVEEDOR'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(38108010565418840)
,p_event_id=>wwv_flow_imp.id(38107542204418835)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    CCCRECLI.CARGAR_DATOS_EDIT_PROV(pedit_data     => :P131_EDIT_DATA_PROVEEDOR,',
'                                    pcod_proveedor => :P131_COD_PROVEEDOR);',
'EXCEPTION',
'    WHEN OTHERS THEN',
'    APEX_DEBUG.ERROR(''DA_CARGAR_DATOS_EDIT_PROVEEDOR ''||SQLERRM);',
'END;'))
,p_attribute_02=>'P131_EDIT_DATA_PROVEEDOR'
,p_attribute_03=>'P131_COD_PROVEEDOR'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P131_EDIT_DATA_PROVEEDOR'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(38107783913418837)
,p_event_id=>wwv_flow_imp.id(38107542204418835)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(38106908476418829)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(38108107908418841)
,p_name=>'DA_AGREGAR_EDITAR_PROV'
,p_event_sequence=>160
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(38107105007418831)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(38108209424418842)
,p_event_id=>wwv_flow_imp.id(38108107908418841)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_02=>'P131_COD_PROVEEDOR,P131_CONTROL_PROVEEDOR'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(38108850916418848)
,p_event_id=>wwv_flow_imp.id(38108107908418841)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'VCONTROL NUMBER;',
'BEGIN   ',
'    VCONTROL := CCCRECLI.BUSCAR_PROV(pcod_cliente   => :P131_COD_CLIENTE,',
'                                     pcod_proveedor => :P131_COD_PROVEEDOR);',
'',
'    IF VCONTROL > 0 THEN',
'        :P131_CONTROL_PROVEEDOR := 1;',
'    ELSE',
'        :P131_CONTROL_PROVEEDOR := 0;',
'        ',
'        CCCRECLI.ADD_COL_PROVEEDOR(pcod_empresa   => :P_COD_EMPRESA,',
'                                   pcod_cliente   => :P131_COD_CLIENTE,',
'                                   pcod_proveedor => :P131_COD_PROVEEDOR);',
'    END IF;',
'    ',
'EXCEPTION',
'    WHEN OTHERS THEN',
'    :P131_CONTROL_PROVEEDOR := 0;',
'    APEX_DEBUG.ERROR(''DA_AGREGAR_PROVEEDOR ''||SQLERRM);',
'END;'))
,p_attribute_02=>'P131_COD_PROVEEDOR,P131_COD_CLIENTE,P_COD_EMPRESA'
,p_attribute_03=>'P131_CONTROL_PROVEEDOR'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P131_EDIT_DATA_PROVEEDOR'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(38108989207418849)
,p_event_id=>wwv_flow_imp.id(38108107908418841)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'VCONTROL NUMBER;',
'BEGIN   ',
'    VCONTROL := CCCRECLI.BUSCAR_PROV(pcod_cliente   => :P131_COD_CLIENTE,',
'                                     pcod_proveedor => :P131_COD_PROVEEDOR);',
'',
'    IF VCONTROL > 0 THEN',
'        :P131_CONTROL_PROVEEDOR := 1;',
'    ELSE',
'        :P131_CONTROL_PROVEEDOR := 0;',
'',
'        CCCRECLI.EDIT_COL_PROVEEDOR(pseq_id        => :P131_EDIT_DATA_PROVEEDOR,',
'                                    pcod_empresa   => :P_COD_EMPRESA,',
'                                    pcod_cliente   => :P131_COD_CLIENTE,',
'                                    pcod_proveedor => :P131_COD_PROVEEDOR);',
'    END IF;',
'    ',
'EXCEPTION',
'    WHEN OTHERS THEN',
'    :P131_CONTROL_PROVEEDOR := 0;',
'    APEX_DEBUG.ERROR(''DA_EDITAR_PROVEEDOR ''||SQLERRM);',
'END;'))
,p_attribute_02=>'P131_COD_CLIENTE,P131_COD_PROVEEDOR,P_COD_EMPRESA,P131_EDIT_DATA_PROVEEDOR'
,p_attribute_03=>'P131_CONTROL_PROVEEDOR'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P131_EDIT_DATA_PROVEEDOR'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(38108370438418843)
,p_event_id=>wwv_flow_imp.id(38108107908418841)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'El proveedor seleccionado ya se encuentra asociado al cliente, por favor coloque otro proveedor.'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P131_CONTROL_PROVEEDOR'
,p_client_condition_expression=>'1'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(38108427563418844)
,p_event_id=>wwv_flow_imp.id(38108107908418841)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(38106908476418829)
,p_client_condition_type=>'NOT_EQUALS'
,p_client_condition_element=>'P131_CONTROL_PROVEEDOR'
,p_client_condition_expression=>'1'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(38108587548418845)
,p_event_id=>wwv_flow_imp.id(38108107908418841)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(31454187619510332)
,p_client_condition_type=>'NOT_EQUALS'
,p_client_condition_element=>'P131_CONTROL_PROVEEDOR'
,p_client_condition_expression=>'1'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(38109034993418850)
,p_name=>'DA_DELETE_RUBRO'
,p_event_sequence=>170
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P131_DELETE_DATA_RUBRO'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(38518089083102801)
,p_event_id=>wwv_flow_imp.id(38109034993418850)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_02=>'P131_DELETE_DATA_RUBRO'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(38518198777102802)
,p_event_id=>wwv_flow_imp.id(38109034993418850)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    CCCRECLI.DELETE_COL(pseq_id   => :P131_DELETE_DATA_RUBRO, ',
'                        p_col     => ''COLEC_CC_CLIENTES_RUBROS'',',
'                        patributo => 5);',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'    APEX_DEBUG.ERROR(''PANTALLA 131 DELETE COL RUBROS ''||SQLERRM);',
'END;'))
,p_attribute_02=>'P131_DELETE_DATA_RUBRO'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(38518239383102803)
,p_event_id=>wwv_flow_imp.id(38109034993418850)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(31453162422510322)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(38518392724102804)
,p_name=>'DA_DELETE_PROVEEDOR'
,p_event_sequence=>180
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P131_DELETE_DATA_PROVEEDOR'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(38518482935102805)
,p_event_id=>wwv_flow_imp.id(38518392724102804)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_02=>'P131_DELETE_DATA_PROVEEDOR'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(38518529660102806)
,p_event_id=>wwv_flow_imp.id(38518392724102804)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    CCCRECLI.DELETE_COL(pseq_id   => :P131_DELETE_DATA_PROVEEDOR, ',
'                        p_col     => ''COLEC_CC_CLIENTES_PROVEEDORES'',',
'                        patributo => 5);',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'    APEX_DEBUG.ERROR(''PANTALLA 131 DELETE COL PROVEEDOR ''||SQLERRM);',
'END;'))
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(38518634510102807)
,p_event_id=>wwv_flow_imp.id(38518392724102804)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(31454187619510332)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(38518738182102808)
,p_name=>'DA_DELETE_MARCAS'
,p_event_sequence=>190
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P131_DELETE_DATA_MARCA'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(38518845943102809)
,p_event_id=>wwv_flow_imp.id(38518738182102808)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_02=>'P131_DELETE_DATA_MARCA'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(38518924553102810)
,p_event_id=>wwv_flow_imp.id(38518738182102808)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    CCCRECLI.DELETE_COL(pseq_id   => :P131_DELETE_DATA_MARCA, ',
'                        p_col     => ''COLEC_CC_CLIENTES_MARCAS'',',
'                        patributo => 5);',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'    APEX_DEBUG.ERROR(''PANTALLA 131 DELETE COL MARCAS ''||SQLERRM);',
'END;'))
,p_attribute_02=>'P131_DELETE_DATA_MARCA'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(38519095894102811)
,p_event_id=>wwv_flow_imp.id(38518738182102808)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(31455154580510342)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(38519499033102815)
,p_name=>'DA_ABRIR_MODAL_MARCA'
,p_event_sequence=>200
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(33411719504500308)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(38519595995102816)
,p_event_id=>wwv_flow_imp.id(38519499033102815)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P131_COD_MARCA,P131_EDIT_DATA_MARCA'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(38519616742102817)
,p_event_id=>wwv_flow_imp.id(38519499033102815)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(38519162421102812)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(38519737822102818)
,p_name=>'DA_ABRIR_MODAL_MARCA_EDIT'
,p_event_sequence=>210
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P131_EDIT_DATA_MARCA'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(38519832908102819)
,p_event_id=>wwv_flow_imp.id(38519737822102818)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_02=>'P131_EDIT_DATA_MARCA'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(38520094673102821)
,p_event_id=>wwv_flow_imp.id(38519737822102818)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    CCCRECLI.CARGAR_DATOS_EDIT_MARCA(pedit_data => :P131_EDIT_DATA_MARCA,',
'                                     pcod_marca => :P131_COD_MARCA);',
'EXCEPTION',
'    WHEN OTHERS THEN',
'    APEX_DEBUG.ERROR(''DA_CARGAR_DATOS_EDIT_MARCA ''||SQLERRM);',
'END;'))
,p_attribute_02=>'P131_EDIT_DATA_MARCA'
,p_attribute_03=>'P131_COD_MARCA'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P131_EDIT_DATA_MARCA'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(38519971926102820)
,p_event_id=>wwv_flow_imp.id(38519737822102818)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(38519162421102812)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(38520103006102822)
,p_name=>'DA_AGREGAR_EDITAR_MARCA'
,p_event_sequence=>220
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(38519309952102814)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(38520213190102823)
,p_event_id=>wwv_flow_imp.id(38520103006102822)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_02=>'P131_COD_MARCA,P131_CONTROL_MARCA'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(38520315169102824)
,p_event_id=>wwv_flow_imp.id(38520103006102822)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'VCONTROL NUMBER;',
'BEGIN   ',
'    VCONTROL := CCCRECLI.BUSCAR_MARCA(pcod_cliente => :P131_COD_CLIENTE,',
'                                      pcod_marca   => :P131_COD_MARCA);',
'',
'    IF VCONTROL > 0 THEN',
'        :P131_CONTROL_MARCA := 1;',
'    ELSE',
'        :P131_CONTROL_MARCA := 0;',
'',
'        CCCRECLI.ADD_COL_MARCA(pcod_empresa => :P_COD_EMPRESA,',
'                               pcod_cliente => :P131_COD_CLIENTE,',
'                               pcod_marca   => :P131_COD_MARCA);',
'    END IF;',
'    ',
'EXCEPTION',
'    WHEN OTHERS THEN',
'    :P131_CONTROL_MARCA := 0;',
'    APEX_DEBUG.ERROR(''DA_AGREGAR_MARCA ''||SQLERRM);',
'END;'))
,p_attribute_02=>'P131_COD_CLIENTE,P131_COD_MARCA,P_COD_EMPRESA'
,p_attribute_03=>'P131_CONTROL_MARCA'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P131_EDIT_DATA_MARCA'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(38520473164102825)
,p_event_id=>wwv_flow_imp.id(38520103006102822)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'VCONTROL NUMBER;',
'BEGIN   ',
'    VCONTROL := CCCRECLI.BUSCAR_MARCA(pcod_cliente => :P131_COD_CLIENTE,',
'                                      pcod_marca   => :P131_COD_MARCA);',
'',
'    IF VCONTROL > 0 THEN',
'        :P131_CONTROL_MARCA := 1;',
'    ELSE',
'        :P131_CONTROL_MARCA := 0;',
'',
'        CCCRECLI.EDIT_COL_MARCA(pseq_id      => :P131_EDIT_DATA_MARCA,',
'                                pcod_empresa => :P_COD_EMPRESA,',
'                                pcod_cliente => :P131_COD_CLIENTE,',
'                                pcod_marca   => :P131_COD_MARCA);',
'    END IF;',
'    ',
'EXCEPTION',
'    WHEN OTHERS THEN',
'    :P131_CONTROL_MARCA := 0;',
'    APEX_DEBUG.ERROR(''DA_EDITAR_MARCA ''||SQLERRM);',
'END;'))
,p_attribute_02=>'P131_COD_CLIENTE,P131_COD_MARCA,P_COD_EMPRESA,P131_EDIT_DATA_MARCA'
,p_attribute_03=>'P131_CONTROL_MARCA'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P131_EDIT_DATA_MARCA'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(38520551868102826)
,p_event_id=>wwv_flow_imp.id(38520103006102822)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'La marca seleccionada ya se encuentra asociado al cliente, por favor coloque otra marca.'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P131_CONTROL_MARCA'
,p_client_condition_expression=>'1'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(38520646548102827)
,p_event_id=>wwv_flow_imp.id(38520103006102822)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(38519162421102812)
,p_client_condition_type=>'NOT_EQUALS'
,p_client_condition_element=>'P131_CONTROL_MARCA'
,p_client_condition_expression=>'1'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(38520725668102828)
,p_event_id=>wwv_flow_imp.id(38520103006102822)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(31455154580510342)
,p_client_condition_type=>'NOT_EQUALS'
,p_client_condition_element=>'P131_CONTROL_MARCA'
,p_client_condition_expression=>'1'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(38521071147102831)
,p_name=>'DA_DELETE_CP'
,p_event_sequence=>230
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P131_DELETE_DATA_CP'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(38521139442102832)
,p_event_id=>wwv_flow_imp.id(38521071147102831)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_02=>'P131_DELETE_DATA_CP'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(38521264596102833)
,p_event_id=>wwv_flow_imp.id(38521071147102831)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    CCCRECLI.DELETE_COL(pseq_id   => :P131_DELETE_DATA_CP, ',
'                        p_col     => ''COLEC_CC_COMPROBANTES_PRESENTADOS'',',
'                        patributo => 21);',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'    APEX_DEBUG.ERROR(''PANTALLA 131 DELETE COL CP ''||SQLERRM);',
'END;'))
,p_attribute_02=>'P131_DELETE_DATA_CP'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(38521367822102834)
,p_event_id=>wwv_flow_imp.id(38521071147102831)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(33412079822500311)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(38521573598102836)
,p_name=>'DA_ABRIR_MODAL_CP'
,p_event_sequence=>240
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(33414627597500337)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(38521623747102837)
,p_event_id=>wwv_flow_imp.id(38521573598102836)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P131_EDIT_DATA_CP,P131_COD_DOCUMENTO,P131_FEC_VENCIMIENTO,P131_OBSERVACION_DOC_PRES,P131_VALOR,P131_CONTROL_CP'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(38521738222102838)
,p_event_id=>wwv_flow_imp.id(38521573598102836)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(38521475314102835)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(38521861665102839)
,p_name=>'DA_ABRIR_MODAL_CP_EDIT'
,p_event_sequence=>250
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P131_EDIT_DATA_CP'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(38521962591102840)
,p_event_id=>wwv_flow_imp.id(38521861665102839)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_02=>'P131_EDIT_DATA_CP'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(41125694049562642)
,p_event_id=>wwv_flow_imp.id(38521861665102839)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    CCCRECLI.CARGAR_DATOS_EDIT_COMP_PRES(pedit_data         => :P131_EDIT_DATA_CP,',
'                                         pcod_documento     => :P131_COD_DOCUMENTO,',
'                                         pfecha_vencimiento => :P131_FEC_VENCIMIENTO,',
'                                         pobservacion       => :P131_OBSERVACION_DOC_PRES,',
'                                         pvalor             => :P131_VALOR);',
'EXCEPTION',
'    WHEN OTHERS THEN',
'    APEX_DEBUG.ERROR(''DA_EDIT_COMP_PRES CARGAR_COL ''||SQLERRM);',
'END;'))
,p_attribute_02=>'P131_EDIT_DATA_CP'
,p_attribute_03=>'P131_COD_DOCUMENTO,P131_FEC_VENCIMIENTO,P131_OBSERVACION_DOC_PRES,P131_VALOR'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P131_EDIT_DATA_CP'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(38522055716102841)
,p_event_id=>wwv_flow_imp.id(38521861665102839)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(38521475314102835)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(38522923978102850)
,p_name=>'DA_ABRIR_MODAL_CONTACTOS_CLIENTES'
,p_event_sequence=>260
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(35314020428024746)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(39210390107004601)
,p_event_id=>wwv_flow_imp.id(38522923978102850)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P131_TIPO_CC,P131_DESCRIPCION_CC,P131_CORREO_CC,P131_FNAC_CC,P131_TELEFONO_CC,P131_INTERNO_CC,P131_CELULAR_CC,P131_EDIT_DATA_CONTACTOS'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(39210510600004603)
,p_event_id=>wwv_flow_imp.id(38522923978102850)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(38522193015102842)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(39210629977004604)
,p_name=>'DA_ABRIR_MODAL_CC_EDIT'
,p_event_sequence=>270
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P131_EDIT_DATA_CONTACTOS'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(39210706254004605)
,p_event_id=>wwv_flow_imp.id(39210629977004604)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_02=>'P131_EDIT_DATA_CONTACTOS'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(39211344796004611)
,p_event_id=>wwv_flow_imp.id(39210629977004604)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    CCCRECLI.CARGAR_DATOS_EDIT_CC(pedit_data    => :P131_EDIT_DATA_CONTACTOS,',
'                                  pcod_contacto => :P131_TIPO_CC,',
'                                  pdescripcion  => :P131_DESCRIPCION_CC,',
'                                  pemail        => :P131_CORREO_CC,',
'                                  pfnac         => :P131_FNAC_CC,',
'                                  ptelefono     => :P131_TELEFONO_CC,',
'                                  pinterno      => :P131_INTERNO_CC,',
'                                  pcelular      => :P131_CELULAR_CC);',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'    APEX_DEBUG.ERROR(''DA_ABRIR_MODAL_EDIT_CC CARGAR DATOS ''||SQLERRM);',
'END;'))
,p_attribute_02=>'P131_EDIT_DATA_CONTACTOS'
,p_attribute_03=>'P131_TIPO_CC,P131_DESCRIPCION_CC,P131_CORREO_CC,P131_FNAC_CC,P131_TELEFONO_CC,P131_INTERNO_CC,P131_CELULAR_CC'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P131_EDIT_DATA_CONTACTOS'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(39210821177004606)
,p_event_id=>wwv_flow_imp.id(39210629977004604)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(38522193015102842)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(39210908308004607)
,p_name=>'DA_DELETE_CC'
,p_event_sequence=>280
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P131_DELETE_DATA_CONTACTOS'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(39211051268004608)
,p_event_id=>wwv_flow_imp.id(39210908308004607)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_02=>'P131_DELETE_DATA_CONTACTOS'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(39211152074004609)
,p_event_id=>wwv_flow_imp.id(39210908308004607)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    CCCRECLI.DELETE_COL(pseq_id   => :P131_DELETE_DATA_CONTACTOS, ',
'                        p_col     => ''COLEC_CC_CONTACTOS_CLIENTES'',',
'                        patributo => 25);',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'    APEX_DEBUG.ERROR(''PANTALLA 131 DELETE COL CONTACTOS ''||SQLERRM);',
'END;'))
,p_attribute_02=>'P131_DELETE_DATA_CONTACTOS'
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
 p_id=>wwv_flow_imp.id(39211263831004610)
,p_event_id=>wwv_flow_imp.id(39210908308004607)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(33414789244500338)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(39211474578004612)
,p_name=>'DA_AGREGAR_EDITAR_CC'
,p_event_sequence=>290
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(39210404077004602)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(39211550654004613)
,p_event_id=>wwv_flow_imp.id(39211474578004612)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_02=>'P131_TIPO_CC,P131_DESCRIPCION_CC,P131_CORREO_CC,P131_FNAC_CC,P131_TELEFONO_CC,P131_INTERNO_CC,P131_CELULAR_CC'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(39211619555004614)
,p_event_id=>wwv_flow_imp.id(39211474578004612)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    CCCRECLI.ADD_COL_CC(pcod_empresa  => :P_COD_EMPRESA,',
'                        pcod_cliente  => :P131_COD_CLIENTE,',
'                        pcod_usuario  => :P_COD_USUARIO,',
'                        pcod_contacto => :P131_TIPO_CC,',
'                        pdescripcion  => :P131_DESCRIPCION_CC,',
'                        pemail        => :P131_CORREO_CC,',
'                        pfnac         => :P131_FNAC_CC,',
'                        ptelefono     => :P131_TELEFONO_CC,',
'                        pinterno      => :P131_INTERNO_CC,',
'                        pcelular      => :P131_CELULAR_CC);',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'    APEX_DEBUG.ERROR(''DA_AGREGAR_EDITAR_CC ADD ''||SQLERRM);',
'END;'))
,p_attribute_02=>'P_COD_EMPRESA,P131_COD_CLIENTE,P_COD_USUARIO,P131_TIPO_CC,P131_DESCRIPCION_CC,P131_CORREO_CC,P131_FNAC_CC,P131_TELEFONO_CC,P131_INTERNO_CC,P131_CELULAR_CC'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P131_EDIT_DATA_CONTACTOS'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(39211981126004617)
,p_event_id=>wwv_flow_imp.id(39211474578004612)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    CCCRECLI.EDIT_COL_CC(pseq_id       => :P131_EDIT_DATA_CONTACTOS,',
'                         pcod_empresa  => :P_COD_EMPRESA,',
'                         pcod_cliente  => :P131_COD_CLIENTE,',
'                         pcod_usuario  => :P_COD_USUARIO,',
'                         pcod_contacto => :P131_TIPO_CC,',
'                         pdescripcion  => :P131_DESCRIPCION_CC,',
'                         pemail        => :P131_CORREO_CC,',
'                         pfnac         => :P131_FNAC_CC,',
'                         ptelefono     => :P131_TELEFONO_CC,',
'                         pinterno      => :P131_INTERNO_CC,',
'                         pcelular      => :P131_CELULAR_CC);',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'    APEX_DEBUG.ERROR(''DA_AGREGAR_EDITAR_CC EDITAR ''||SQLERRM);',
'END;'))
,p_attribute_02=>'P131_EDIT_DATA_CONTACTOS,P_COD_EMPRESA,P131_COD_CLIENTE,P_COD_USUARIO,P131_TIPO_CC,P131_DESCRIPCION_CC,P131_CORREO_CC,P131_FNAC_CC,P131_TELEFONO_CC,P131_INTERNO_CC,P131_CELULAR_CC'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P131_EDIT_DATA_CONTACTOS'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(39211787871004615)
,p_event_id=>wwv_flow_imp.id(39211474578004612)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(38522193015102842)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(39211872684004616)
,p_event_id=>wwv_flow_imp.id(39211474578004612)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(33414789244500338)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(39212277711004620)
,p_name=>'DA_DELETE_REF_TIT'
,p_event_sequence=>300
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P131_DELETE_DATA_REF_TIT'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(39212377484004621)
,p_event_id=>wwv_flow_imp.id(39212277711004620)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_02=>'P131_DELETE_DATA_REF_TIT'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(39212484186004622)
,p_event_id=>wwv_flow_imp.id(39212277711004620)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    CCCRECLI.DELETE_COL(pseq_id   => :P131_DELETE_DATA_REF_TIT, ',
'                        p_col     => ''COLEC_CC_REFERENCIA_CLIENTES'',',
'                        patributo => 21);',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'    APEX_DEBUG.ERROR(''PANTALLA 131 DELETE COL REFERENCIA TITULAR ''||SQLERRM);',
'END;'))
,p_attribute_02=>'P131_DELETE_DATA_REF_TIT'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(39212567709004623)
,p_event_id=>wwv_flow_imp.id(39212277711004620)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(33511599652863318)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(39212684001004624)
,p_name=>'DA_DELETE_REF_GAR'
,p_event_sequence=>310
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P131_DELETE_DATA_REF_GAR'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(39212772394004625)
,p_event_id=>wwv_flow_imp.id(39212684001004624)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_02=>'P131_DELETE_DATA_REF_GAR'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(39212860943004626)
,p_event_id=>wwv_flow_imp.id(39212684001004624)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    CCCRECLI.DELETE_COL(pseq_id   => :P131_DELETE_DATA_REF_GAR, ',
'                        p_col     => ''COLEC_CC_REFERENCIA_CLIENTES_GAR'',',
'                        patributo => 19);',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'    APEX_DEBUG.ERROR(''PANTALLA 131 DELETE COL REFERENCIA GARANTE ''||SQLERRM);',
'END;'))
,p_attribute_02=>'P131_DELETE_DATA_REF_GAR'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(39212978783004627)
,p_event_id=>wwv_flow_imp.id(39212684001004624)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(33511611433863319)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(39213174656004629)
,p_name=>'DA_AGREGAR_REF_GAR'
,p_event_sequence=>320
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(39213097514004628)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(39213250394004630)
,p_event_id=>wwv_flow_imp.id(39213174656004629)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P131_EDIT_DATA_REF_GAR,P131_TIPO_REF_GAR,P131_EMPRESA_REF_GAR,P131_CONTACTO_REF_GAR,P131_TELEFONO_REF_GAR,P131_COMENTARIO_REF_GAR,P131_FEC_REFERENCIA'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(39213350691004631)
,p_event_id=>wwv_flow_imp.id(39213174656004629)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(39212158605004619)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(39213487272004632)
,p_name=>'DA_EDITAR_REF_GAR'
,p_event_sequence=>330
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P131_EDIT_DATA_REF_GAR'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(39213532964004633)
,p_event_id=>wwv_flow_imp.id(39213487272004632)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_02=>'P131_EDIT_DATA_REF_GAR'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(37449950034992526)
,p_event_id=>wwv_flow_imp.id(39213487272004632)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    CCCRECLI.CARGAR_DATOS_EDIT_REF_GAR(pedit_data      => :P131_EDIT_DATA_REF_GAR,',
'                                       ptipo           => :P131_TIPO_REF_GAR,',
'                                       pfec_referencia => :P131_FEC_REFERENCIA,',
'                                       pempr_ref_gar   => :P131_EMPRESA_REF_GAR,',
'                                       pcontacto       => :P131_CONTACTO_REF_GAR,',
'                                       ptelefono       => :P131_TELEFONO_REF_GAR,',
'                                       pcomentario     => :P131_COMENTARIO_REF_GAR);',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'    APEX_DEBUG.ERROR(''DA_EDITAR_REF_GAR CARGAR DATOS ''||SQLERRM);',
'END;'))
,p_attribute_02=>'P131_EDIT_DATA_REF_GAR'
,p_attribute_03=>'P131_TIPO_REF_GAR,P131_FEC_REFERENCIA,P131_EMPRESA_REF_GAR,P131_CONTACTO_REF_GAR,P131_TELEFONO_REF_GAR,P131_COMENTARIO_REF_GAR'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P131_EDIT_DATA_REF_GAR'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(39213644767004634)
,p_event_id=>wwv_flow_imp.id(39213487272004632)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(39212158605004619)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(37449375507992520)
,p_name=>'DA_AGREGAR_EDITAR_REF_GAR'
,p_event_sequence=>340
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(39214392290004641)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(37449466318992521)
,p_event_id=>wwv_flow_imp.id(37449375507992520)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_02=>'P131_TIPO_REF_GAR,P131_EMPRESA_REF_GAR,P131_CONTACTO_REF_GAR,P131_TELEFONO_REF_GAR,P131_COMENTARIO_REF_GAR'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(37449534564992522)
,p_event_id=>wwv_flow_imp.id(37449375507992520)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    CCCRECLI.ADD_COL_REF_GAR(pcod_empresa    => :P_COD_EMPRESA,',
'                             pcod_cliente    => :P131_COD_CLIENTE,',
'                             pcod_usuario    => :P_COD_USUARIO,',
'                             ptipo           => :P131_TIPO_REF_GAR,',
'                             pfec_referencia => :P131_FEC_REFERENCIA,',
'                             pempr_ref_gar   => :P131_EMPRESA_REF_GAR,',
'                             pcontacto       => :P131_CONTACTO_REF_GAR,',
'                             ptelefono       => :P131_TELEFONO_REF_GAR,',
'                             pcomentario     => :P131_COMENTARIO_REF_GAR);',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'    APEX_DEBUG.ERROR(''DA_AGREGAR_EDITAR_REF_GAR ADD ''||SQLERRM);',
'END;'))
,p_attribute_02=>'P_COD_EMPRESA,P131_COD_CLIENTE,P_COD_USUARIO,P131_TIPO_REF_GAR,P131_EMPRESA_REF_GAR,P131_CONTACTO_REF_GAR,P131_TELEFONO_REF_GAR,P131_COMENTARIO_REF_GAR'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P131_EDIT_DATA_REF_GAR'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(37449629967992523)
,p_event_id=>wwv_flow_imp.id(37449375507992520)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    CCCRECLI.EDIT_COL_REF_GAR(pseq_id         => :P131_EDIT_DATA_REF_GAR,',
'                              pcod_empresa    => :P_COD_EMPRESA,',
'                              pcod_cliente    => :P131_COD_CLIENTE,',
'                              pcod_usuario    => :P_COD_USUARIO,',
'                              ptipo           => :P131_TIPO_REF_GAR,',
'                              pfec_referencia => :P131_FEC_REFERENCIA,',
'                              pempr_ref_gar   => :P131_EMPRESA_REF_GAR,',
'                              pcontacto       => :P131_CONTACTO_REF_GAR,',
'                              ptelefono       => :P131_TELEFONO_REF_GAR,',
'                              pcomentario     => :P131_COMENTARIO_REF_GAR);',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'    APEX_DEBUG.ERROR(''DA_AGREGAR_EDITAR_REF_GAR EDITAR ''||SQLERRM);',
'END;'))
,p_attribute_02=>'P131_EDIT_DATA_REF_GAR,P_COD_EMPRESA,P131_COD_CLIENTE,P_COD_USUARIO,P131_TIPO_REF_GAR,P131_EMPRESA_REF_GAR,P131_CONTACTO_REF_GAR,P131_TELEFONO_REF_GAR,P131_COMENTARIO_REF_GAR'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P131_EDIT_DATA_REF_GAR'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(37449785387992524)
,p_event_id=>wwv_flow_imp.id(37449375507992520)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(39212158605004619)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(37449861793992525)
,p_event_id=>wwv_flow_imp.id(37449375507992520)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(33511611433863319)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(37450001727992527)
,p_name=>'DA_SELECCIONAR_REF_GAR'
,p_event_sequence=>350
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P131_REF_GAR_AUX_SEQ_ID'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(37450103435992528)
,p_event_id=>wwv_flow_imp.id(37450001727992527)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_02=>'P131_REF_GAR_AUX_SEQ_ID,P131_REF_GAR_ACCION'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(37450298093992529)
,p_event_id=>wwv_flow_imp.id(37450001727992527)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    CCCRECLI.PR_CHECK(pseq_id    => :P131_REF_GAR_AUX_SEQ_ID, ',
'                      paccion    => :P131_REF_GAR_ACCION, ',
'                      pcolection => ''COLEC_CC_REFERENCIA_CLIENTES_GAR'',',
'                      patributo  => 12);',
'EXCEPTION',
'    WHEN OTHERS THEN',
'    APEX_DEBUG.ERROR(''DA_SELECCIONAR_REF_GAR ''||SQLERRM);',
'END;'))
,p_attribute_02=>'P131_REF_GAR_AUX_SEQ_ID,P131_REF_GAR_ACCION'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(37450332286992530)
,p_name=>'DA_SELECCIONAR_REF_TIT'
,p_event_sequence=>360
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P131_REF_AUX_SEQ_ID'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(37450488876992531)
,p_event_id=>wwv_flow_imp.id(37450332286992530)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_02=>'P131_REF_ACCION,P131_REF_AUX_SEQ_ID'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(37450508953992532)
,p_event_id=>wwv_flow_imp.id(37450332286992530)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    CCCRECLI.PR_CHECK(pseq_id    => :P131_REF_AUX_SEQ_ID, ',
'                      paccion    => :P131_REF_ACCION, ',
'                      pcolection => ''COLEC_CC_REFERENCIA_CLIENTES'',',
'                      patributo  => 12);',
'EXCEPTION',
'    WHEN OTHERS THEN',
'    APEX_DEBUG.ERROR(''DA_SELECCIONAR_REF_TIT ''||SQLERRM);',
'END;'))
,p_attribute_02=>'P131_REF_AUX_SEQ_ID,P131_REF_ACCION'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(37450615075992533)
,p_name=>'DA_SELECCIONAR_REF_CCO'
,p_event_sequence=>370
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P131_REF_CCO_AUX_SEQ_ID'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(37450764100992534)
,p_event_id=>wwv_flow_imp.id(37450615075992533)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_02=>'P131_REF_CCO_ACCION,P131_REF_CCO_AUX_SEQ_ID'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(37450831339992535)
,p_event_id=>wwv_flow_imp.id(37450615075992533)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    CCCRECLI.PR_CHECK(pseq_id    => :P131_REF_CCO_AUX_SEQ_ID, ',
'                      paccion    => :P131_REF_CCO_ACCION, ',
'                      pcolection => ''COLEC_CC_REFERENCIA_CLIENTES'',',
'                      patributo  => 20);',
'EXCEPTION',
'    WHEN OTHERS THEN',
'    APEX_DEBUG.ERROR(''DA_SELECCIONAR_REF_CCO ''||SQLERRM);',
'END;'))
,p_attribute_02=>'P131_REF_CCO_AUX_SEQ_ID,P131_REF_CCO_ACCION'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(37450900058992536)
,p_event_id=>wwv_flow_imp.id(37450615075992533)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    CCCRECLI.PR_CHECK(pseq_id    => :P131_REF_CCO_AUX_SEQ_ID, ',
'                      paccion    => :P131_REF_CCO_ACCION, ',
'                      pcolection => ''COLEC_CC_REFERENCIA_CLIENTES'',',
'                      patributo  => 20);',
'EXCEPTION',
'    WHEN OTHERS THEN',
'    APEX_DEBUG.ERROR(''DA_SELECCIONAR_REF_CCO ''||SQLERRM);',
'END;'))
,p_attribute_02=>'P131_REF_CCO_AUX_SEQ_ID,P131_REF_CCO_ACCION'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(37451620119992543)
,p_name=>'DA_ABRIR_MODAL_REF_TIT'
,p_event_sequence=>380
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(36937680213286811)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(37451763951992544)
,p_event_id=>wwv_flow_imp.id(37451620119992543)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P131_EDIT_DATA_REF_TIT,P131_TIPO_REF_TIT,P131_FEC_REF_TIT,P131_EMPRESA_REF_TIT,P131_CONTACTO_REF_TIT,P131_TELEFONO_REF_TIT,P131_COMENTARIO_REF_TIT'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(37451834158992545)
,p_event_id=>wwv_flow_imp.id(37451620119992543)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(39212052064004618)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(37452028018992547)
,p_name=>'DA_EDITAR_REF_TIT'
,p_event_sequence=>390
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P131_EDIT_DATA_REF_TIT'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(37452127435992548)
,p_event_id=>wwv_flow_imp.id(37452028018992547)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_02=>'P131_EDIT_DATA_REF_TIT'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(37452350405992550)
,p_event_id=>wwv_flow_imp.id(37452028018992547)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    CCCRECLI.CARGAR_DATOS_EDIT_REF_TIT(pedit_data    => :P131_EDIT_DATA_REF_TIT,',
'                                       ptipo         => :P131_TIPO_REF_TIT,',
'                                       pfecha        => :P131_FEC_REF_TIT,',
'                                       pempr_ref_tit => :P131_EMPRESA_REF_TIT,',
'                                       pcontacto     => :P131_CONTACTO_REF_TIT,',
'                                       ptelefono     => :P131_TELEFONO_REF_TIT,',
'                                       pcomentario   => :P131_COMENTARIO_REF_TIT);',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'    APEX_DEBUG.ERROR(''DA_EDITAR_REF_TIT CARGAR DATOS ''||SQLERRM);',
'END;'))
,p_attribute_02=>'P131_EDIT_DATA_REF_TIT'
,p_attribute_03=>'P131_TIPO_REF_TIT,P131_FEC_REF_TIT,P131_EMPRESA_REF_TIT,P131_CONTACTO_REF_TIT,P131_TELEFONO_REF_TIT,P131_COMENTARIO_REF_TIT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P131_EDIT_DATA_REF_TIT'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(37452289540992549)
,p_event_id=>wwv_flow_imp.id(37452028018992547)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(39212052064004618)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(41121549430562601)
,p_name=>'DA_AGREGAR_EDITAR_REF_TIT'
,p_event_sequence=>400
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(37451953139992546)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(41121616764562602)
,p_event_id=>wwv_flow_imp.id(41121549430562601)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_02=>'P131_TIPO_REF_TIT,P131_FEC_REF_TIT,P131_EMPRESA_REF_TIT,P131_CONTACTO_REF_TIT,P131_TELEFONO_REF_TIT,P131_COMENTARIO_REF_TIT'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(41121732652562603)
,p_event_id=>wwv_flow_imp.id(41121549430562601)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    CCCRECLI.ADD_COL_REF_TIT(pcod_empresa  => :P_COD_EMPRESA,',
'                             pcod_cliente  => :P131_COD_CLIENTE,',
'                             pcod_usuario  => :P_COD_USUARIO,',
'                             ptipo         => :P131_TIPO_REF_TIT,',
'                             pfecha        => :P131_FEC_REF_TIT,',
'                             pempr_ref_tit => :P131_EMPRESA_REF_TIT,',
'                             pcontacto     => :P131_CONTACTO_REF_TIT,',
'                             ptelefono     => :P131_TELEFONO_REF_TIT,',
'                             pcomentario   => :P131_COMENTARIO_REF_TIT);',
'EXCEPTION',
'    WHEN OTHERS THEN',
'    APEX_DEBUG.ERROR(''DA_AGREGAR_EDITAR_REF_TIT ADD_COL ''||SQLERRM);',
'END;'))
,p_attribute_02=>'P_COD_EMPRESA,P131_COD_CLIENTE,P_COD_USUARIO,P131_TIPO_REF_TIT,P131_FEC_REF_TIT,P131_EMPRESA_REF_TIT,P131_CONTACTO_REF_TIT,P131_TELEFONO_REF_TIT,P131_COMENTARIO_REF_TIT'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P131_EDIT_DATA_REF_TIT'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(41122098448562606)
,p_event_id=>wwv_flow_imp.id(41121549430562601)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    CCCRECLI.EDIT_COL_REF_TIT(pseq_id       => :P131_EDIT_DATA_REF_TIT,',
'                              pcod_empresa  => :P_COD_EMPRESA,',
'                              pcod_cliente  => :P131_COD_CLIENTE,',
'                              pcod_usuario  => :P_COD_USUARIO,',
'                              ptipo         => :P131_TIPO_REF_TIT,',
'                              pfecha        => :P131_FEC_REF_TIT,',
'                              pempr_ref_tit => :P131_EMPRESA_REF_TIT,',
'                              pcontacto     => :P131_CONTACTO_REF_TIT,',
'                              ptelefono     => :P131_TELEFONO_REF_TIT,',
'                              pcomentario   => :P131_COMENTARIO_REF_TIT);',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'    APEX_DEBUG.ERROR(''DA_AGREGAR_EDITAR_REF_TIT EDITAR ''||SQLERRM);',
'END;'))
,p_attribute_02=>'P131_EDIT_DATA_REF_TIT,P_COD_EMPRESA,P131_COD_CLIENTE,P_COD_USUARIO,P131_TIPO_REF_TIT,P131_FEC_REF_TIT,P131_EMPRESA_REF_TIT,P131_CONTACTO_REF_TIT,P131_TELEFONO_REF_TIT,P131_COMENTARIO_REF_TIT'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P131_EDIT_DATA_REF_TIT'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(41121871485562604)
,p_event_id=>wwv_flow_imp.id(41121549430562601)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(39212052064004618)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(41121994107562605)
,p_event_id=>wwv_flow_imp.id(41121549430562601)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(33511599652863318)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(41123150861562617)
,p_name=>'DA_ABRIR_MODAL_COMITE_CLIENTES'
,p_event_sequence=>410
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(41122157028562607)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(41123279046562618)
,p_event_id=>wwv_flow_imp.id(41123150861562617)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P131_TIPO_COMITE_CLIENTES,P131_FECHA_COMITE_CLIENTES,P131_ESTADO_COMITE_CLIENTES,P131_OBSERVACION_COM_CLI,P131_RESOLUCION_COM_CLI,P131_EDIT_DATA_COM_CLI'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(41123380171562619)
,p_event_id=>wwv_flow_imp.id(41123150861562617)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(41122332802562609)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(41123498139562620)
,p_name=>'DA_ABRIR_MODAL_EDITAR_COM_CLI'
,p_event_sequence=>420
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P131_EDIT_DATA_COM_CLI'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(41123503312562621)
,p_event_id=>wwv_flow_imp.id(41123498139562620)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_02=>'P131_EDIT_DATA_COM_CLI'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(41123661575562622)
,p_event_id=>wwv_flow_imp.id(41123498139562620)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    CCCRECLI.CARGAR_DATOS_EDIT_COM_CLI(pedit_data    => :P131_EDIT_DATA_COM_CLI,',
'                                       ptipo         => :P131_TIPO_COMITE_CLIENTES,',
'                                       pfecha        => :P131_FECHA_COMITE_CLIENTES,',
'                                       pestado       => :P131_ESTADO_COMITE_CLIENTES,',
'                                       pfecha_estado => :P131_FEC_ESTADO,',
'                                       pobservacion  => :P131_OBSERVACION_COM_CLI,',
'                                       presolucion   => :P131_RESOLUCION_COM_CLI);',
'EXCEPTION',
'    WHEN OTHERS THEN',
'    APEX_DEBUG.ERROR(''DA_ABRIR_MODAL_COM_CLI CARGAR_COL ''||SQLERRM);',
'END;'))
,p_attribute_02=>'P131_EDIT_DATA_COM_CLI'
,p_attribute_03=>'P131_TIPO_COMITE_CLIENTES,P131_FECHA_COMITE_CLIENTES,P131_ESTADO_COMITE_CLIENTES,P131_FEC_ESTADO,P131_OBSERVACION_COM_CLI,P131_RESOLUCION_COM_CLI'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P131_EDIT_DATA_COM_CLI'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(41123718551562623)
,p_event_id=>wwv_flow_imp.id(41123498139562620)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(41122332802562609)
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
 p_id=>wwv_flow_imp.id(41123981377562625)
,p_name=>'DA_AGREGAR_EDITAR_COM_CLI'
,p_event_sequence=>430
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(41123077086562616)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(41124048953562626)
,p_event_id=>wwv_flow_imp.id(41123981377562625)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_02=>'P131_TIPO_COMITE_CLIENTES,P131_FECHA_COMITE_CLIENTES,P131_ESTADO_COMITE_CLIENTES,P131_OBSERVACION_COM_CLI,P131_RESOLUCION_COM_CLI,P131_FEC_ESTADO'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(41124187870562627)
,p_event_id=>wwv_flow_imp.id(41123981377562625)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    CCCRECLI.ADD_COL_COM_CLI(pcod_empresa  => :P_COD_EMPRESA,',
'                             pcod_cliente  => :P131_COD_CLIENTE,',
'                             pcod_usuario  => :P_COD_USUARIO,',
'                             ptipo         => :P131_TIPO_COMITE_CLIENTES,',
'                             pfecha        => :P131_FECHA_COMITE_CLIENTES,',
'                             pestado       => :P131_ESTADO_COMITE_CLIENTES,',
'                             pfecha_estado => :P131_FEC_ESTADO,',
'                             pobservacion  => :P131_OBSERVACION_COM_CLI,',
'                             presolucion   => :P131_RESOLUCION_COM_CLI);',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'    APEX_DEBUG.ERROR(''DA_AGREGAR_EDITAR_COM_CLI ADD ''||SQLERRM);',
'END;'))
,p_attribute_02=>'P_COD_EMPRESA,P131_COD_CLIENTE,P_COD_USUARIO,,P131_TIPO_COMITE_CLIENTES,P131_FECHA_COMITE_CLIENTES,P131_ESTADO_COMITE_CLIENTES,P131_OBSERVACION_COM_CLI,P131_RESOLUCION_COM_CLI,P131_FEC_ESTADO'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P131_EDIT_DATA_COM_CLI'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(41124229528562628)
,p_event_id=>wwv_flow_imp.id(41123981377562625)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    CCCRECLI.EDIT_COL_REF_TIT(pseq_id       => :P131_EDIT_DATA_COM_CLI,',
'                              pcod_empresa  => :P_COD_EMPRESA,',
'                              pcod_cliente  => :P131_COD_CLIENTE,',
'                              pcod_usuario  => :P_COD_USUARIO,',
'                              ptipo         => :P131_TIPO_COMITE_CLIENTES,',
'                              pfecha        => :P131_FECHA_COMITE_CLIENTES,',
'                              pestado       => :P131_ESTADO_COMITE_CLIENTES,',
'                              pfecha_estado => :P131_FEC_ESTADO,',
'                              pobservacion  => :P131_OBSERVACION_COM_CLI,',
'                              presolucion   => :P131_RESOLUCION_COM_CLI);',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'    APEX_DEBUG.ERROR(''DA_AGREGAR_EDITAR_COM_CLI EDIT_COL ''||SQLERRM);',
'END;'))
,p_attribute_02=>'P131_EDIT_DATA_COM_CLI,P_COD_EMPRESA,P131_COD_CLIENTE,P_COD_USUARIO,P131_TIPO_COMITE_CLIENTES,P131_FECHA_COMITE_CLIENTES,P131_ESTADO_COMITE_CLIENTES,P131_FEC_ESTADO,P131_OBSERVACION_COM_CLI,P131_RESOLUCION_COM_CLI'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P131_EDIT_DATA_COM_CLI'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(41124339965562629)
,p_event_id=>wwv_flow_imp.id(41123981377562625)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(41122332802562609)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(41124499190562630)
,p_event_id=>wwv_flow_imp.id(41123981377562625)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(36941385177286848)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(41124597601562631)
,p_name=>'DA_SELECCIONAR_CP_ACTIVO'
,p_event_sequence=>440
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P131_CP_AUX_SEQ_ID'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(41124691331562632)
,p_event_id=>wwv_flow_imp.id(41124597601562631)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_02=>'P131_CP_AUX_SEQ_ID,P131_CP_ACCION'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(41124727241562633)
,p_event_id=>wwv_flow_imp.id(41124597601562631)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    CCCRECLI.PR_CHECK(pseq_id    => :P131_CP_AUX_SEQ_ID, ',
'                      paccion    => :P131_CP_ACCION, ',
'                      pcolection => ''COLEC_CC_COMPROBANTES_PRESENTADOS'',',
'                      patributo  => 15);',
'EXCEPTION',
'    WHEN OTHERS THEN',
'    APEX_DEBUG.ERROR(''DA_SELECCIONAR_CP_ACTIVO ''||SQLERRM);',
'END;'))
,p_attribute_02=>'P131_CP_AUX_SEQ_ID,P131_CP_ACCION'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(41124892411562634)
,p_name=>'DA_SELECCIONAR_CP_PRESENTADO'
,p_event_sequence=>450
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P131_CP_AUX_SEQ_ID_RADIO'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(41124922299562635)
,p_event_id=>wwv_flow_imp.id(41124892411562634)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_02=>'P131_CP_ACCION_RADIO,P131_CP_AUX_SEQ_ID_RADIO'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(41125014681562636)
,p_event_id=>wwv_flow_imp.id(41124892411562634)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    CCCRECLI.PR_CHECK(pseq_id    => :P131_CP_AUX_SEQ_ID_RADIO, ',
'                      paccion    => :P131_CP_ACCION_RADIO, ',
'                      pcolection => ''COLEC_CC_COMPROBANTES_PRESENTADOS'',',
'                      patributo  => 7);',
'EXCEPTION',
'    WHEN OTHERS THEN',
'    APEX_DEBUG.ERROR(''DA_SELECCIONAR_CP_PRESENTADO ''||SQLERRM);',
'END;'))
,p_attribute_02=>'P131_CP_AUX_SEQ_ID_RADIO,P131_CP_ACCION_RADIO'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(41125707970562643)
,p_name=>'DA_AGREGAR_EDITAR_CP'
,p_event_sequence=>460
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(41125561495562641)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(41125852061562644)
,p_event_id=>wwv_flow_imp.id(41125707970562643)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_02=>'P131_COD_DOCUMENTO,P131_FEC_VENCIMIENTO,P131_OBSERVACION_DOC_PRES,P131_CONTROL_CP'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(41125982460562645)
,p_event_id=>wwv_flow_imp.id(41125707970562643)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'VCONTROL NUMBER;',
'BEGIN',
'    VCONTROL := CCCRECLI.BUSCAR_COMP_PRES(pcod_cliente   => :P131_COD_CLIENTE,',
'                                          pcod_empresa   => :P_COD_EMPRESA,',
'                                          pcod_documento => :P131_COD_DOCUMENTO);',
'',
'    IF VCONTROL > 0 THEN',
'        :P131_CONTROL_CP := 1;',
'    ELSE',
'        :P131_CONTROL_CP := 0;',
'',
'        CCCRECLI.ADD_COL_COMP_PRES(pcod_empresa       => :P_COD_EMPRESA,',
'                                   pcod_cliente       => :P131_COD_CLIENTE,',
'                                   pcod_usuario       => :P_COD_USUARIO,',
'                                   pcod_documento     => :P131_COD_DOCUMENTO,',
'                                   pfecha_vencimiento => :P131_FEC_VENCIMIENTO,',
'                                   pobservacion       => :P131_OBSERVACION_DOC_PRES);',
'    END IF;',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'    :P131_CONTROL_CP := 0;',
'    APEX_DEBUG.ERROR(''DA_AGREGAR_EDITAR_CP ADD_COL ''||SQLERRM);',
'END;'))
,p_attribute_02=>'P131_COD_CLIENTE,P_COD_EMPRESA,P131_COD_DOCUMENTO,P_COD_USUARIO,P131_FEC_VENCIMIENTO,P131_OBSERVACION_DOC_PRES'
,p_attribute_03=>'P131_CONTROL_CP'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P131_EDIT_DATA_CP'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(41126026067562646)
,p_event_id=>wwv_flow_imp.id(41125707970562643)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'VCONTROL NUMBER;',
'BEGIN',
'    VCONTROL := CCCRECLI.BUSCAR_COMP_PRES(pcod_cliente   => :P131_COD_CLIENTE,',
'                                          pcod_empresa   => :P_COD_EMPRESA,',
'                                          pcod_documento => :P131_COD_DOCUMENTO,',
'                                          pseq_id        => :P131_EDIT_DATA_CP);',
'',
'    IF VCONTROL > 0 THEN',
'        :P131_CONTROL_CP := 1;',
'    ELSE',
'        :P131_CONTROL_CP := 0;',
'',
'        CCCRECLI.EDIT_COL_COMP_PRES(pseq_id            => :P131_EDIT_DATA_CP,',
'                                    pcod_empresa       => :P_COD_EMPRESA,',
'                                    pcod_cliente       => :P131_COD_CLIENTE,',
'                                    pcod_usuario       => :P_COD_USUARIO,',
'                                    pcod_documento     => :P131_COD_DOCUMENTO,',
'                                    pfecha_vencimiento => :P131_FEC_VENCIMIENTO,',
'                                    pobservacion       => :P131_OBSERVACION_DOC_PRES);',
'    END IF;',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'    :P131_CONTROL_CP := 0;',
'    APEX_DEBUG.ERROR(''DA_AGREGAR_EDITAR_CP EDIT_COL ''||SQLERRM);',
'END;'))
,p_attribute_02=>'P131_COD_CLIENTE,P_COD_EMPRESA,P131_COD_DOCUMENTO,P131_EDIT_DATA_CP,P_COD_USUARIO,P131_FEC_VENCIMIENTO,P131_OBSERVACION_DOC_PRES'
,p_attribute_03=>'P131_CONTROL_CP'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P131_EDIT_DATA_CP'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(41126478656562650)
,p_event_id=>wwv_flow_imp.id(41125707970562643)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'El documento seleccionado ya se encuentra asociado al cliente.'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P131_CONTROL_CP'
,p_client_condition_expression=>'1'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(41126148467562647)
,p_event_id=>wwv_flow_imp.id(41125707970562643)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(38521475314102835)
,p_client_condition_type=>'NOT_EQUALS'
,p_client_condition_element=>'P131_CONTROL_CP'
,p_client_condition_expression=>'1'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(41126292233562648)
,p_event_id=>wwv_flow_imp.id(41125707970562643)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(33412079822500311)
,p_client_condition_type=>'NOT_EQUALS'
,p_client_condition_element=>'P131_CONTROL_CP'
,p_client_condition_expression=>'1'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(41935016813702607)
,p_name=>'DA_IMPRIMIR_F_INI'
,p_event_sequence=>470
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P131_PERIODO_INICIAL'
,p_bind_type=>'bind'
,p_bind_event_type=>'focusout'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(41935144221702608)
,p_event_id=>wwv_flow_imp.id(41935016813702607)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_02=>'P131_PERIODO_INICIAL'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(41935219799702609)
,p_name=>'DA_IMPRIMIR_FIN'
,p_event_sequence=>480
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P131_PERIODO_FINAL'
,p_bind_type=>'bind'
,p_bind_event_type=>'focusout'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(41935383180702610)
,p_event_id=>wwv_flow_imp.id(41935219799702609)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_02=>'P131_PERIODO_FINAL'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(43197442639889703)
,p_name=>'DA_DESCARGAR_EJECUTAR'
,p_event_sequence=>490
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(35313769819024743)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(43198168600889710)
,p_event_id=>wwv_flow_imp.id(43197442639889703)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_02=>'P131_COD_CLIENTE,P_COD_EMPRESA,P131_COD_SUCURSAL'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(43197540574889704)
,p_event_id=>wwv_flow_imp.id(43197442639889703)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    :P131_URL := ''https://ngosaeca.com.py/reportes/rest_v2/reports/reports/CCCLIEDOCVEN.pdf?''||',
'                 ''P_COD_PROVINCIA=''||null||''&P_ES_FISICA=''||null||''&P_TIP_CLIENTE=''||null||''&P_COD_CENTRO=''||null||',
'                 ''&P_COD_CORPORACION=''||null||''&P_COD_PAIS=''||null||''&P_COD_PERSONA=''||null||''&P_COD_VENDEDOR=''||null||',
'                 ''&P_ESTADO=''||null||''&P_COD_EMPRESA=''||:P_COD_EMPRESA||''&P_TIPO_SOCIEDAD=''||null||',
'                 ''&P_COD_SUCURSAL=''||:P131_COD_SUCURSAL||',
'                 ''&P_COD_CLIENTE_DES=''||:P131_COD_CLIENTE||''&P_COD_CARGO=''||null||''&P_COD_CIUDAD=''||null||',
'                 ''&P_TIP_CLIENTE2=''||null||''&P_TIP_CLIENTE1=''||null||''&P_COD_SECTOR=''||null||',
'                 ''&P_GRUPO_ZONA=''||null||''&P_COD_COBRADOR=''||null||',
'                 ''&P_LINEA=''||null||''&P_COD_ZONA=''||null;',
'                                  ',
'APEX_DEBUG.ERROR(''P_COD_EMPRESA ''||:P_COD_EMPRESA);',
'APEX_DEBUG.ERROR(''P131_COD_SUCURSAL ''||:P131_COD_SUCURSAL);',
'APEX_DEBUG.ERROR(''P131_COD_CLIENTE ''||:P131_COD_CLIENTE);',
'EXCEPTION',
'    WHEN OTHERS THEN',
'    APEX_DEBUG.ERROR(''DA_DESCARGAR_EJECUTAR ''||SQLERRM);',
'END;'))
,p_attribute_02=>'P131_COD_CLIENTE,P_COD_EMPRESA,P131_COD_SUCURSAL'
,p_attribute_03=>'P131_URL'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(43198244432889711)
,p_event_id=>wwv_flow_imp.id(43197442639889703)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'doDescarga(null,',
'           null,',
'           null,',
'           null,',
'           null,',
'           null,',
'           null,',
'           null,',
'           null,',
'           apex.item(''P_COD_EMPRESA''),',
'           null,',
'           apex.item(''P131_COD_SUCURSAL''),',
'           apex.item(''P131_COD_CLIENTE''),',
'           null,',
'           null,',
'           null,',
'           null,',
'           null,',
'           null,',
'           null,',
'           null,',
'           null);'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(43197646907889705)
,p_event_id=>wwv_flow_imp.id(43197442639889703)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'console.log($v(''P131_URL''));',
'window.open(unescape($v(''P131_URL'').replace(/&amp;/g,''g'')),"_blank");'))
,p_server_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(29579376154358822)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_INIT'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'APEX_COLLECTION.CREATE_OR_TRUNCATE_COLLECTION(''COLEC_CC_VENDEDORES_CLIENTES'');',
'APEX_COLLECTION.CREATE_OR_TRUNCATE_COLLECTION(''COLEC_CC_CLIENTES_RUBROS'');',
'APEX_COLLECTION.CREATE_OR_TRUNCATE_COLLECTION(''COLEC_CC_CLIENTES_PROVEEDORES'');',
'APEX_COLLECTION.CREATE_OR_TRUNCATE_COLLECTION(''COLEC_CC_CLIENTES_MARCAS'');',
'APEX_COLLECTION.CREATE_OR_TRUNCATE_COLLECTION(''COLEC_CC_COMPROBANTES_PRESENTADOS'');',
'APEX_COLLECTION.CREATE_OR_TRUNCATE_COLLECTION(''COLEC_CC_CONTACTOS_CLIENTES'');',
'APEX_COLLECTION.CREATE_OR_TRUNCATE_COLLECTION(''COLEC_CC_REFERENCIA_CLIENTES'');',
'APEX_COLLECTION.CREATE_OR_TRUNCATE_COLLECTION(''COLEC_CC_REFERENCIA_CLIENTES_GAR'');',
'APEX_COLLECTION.CREATE_OR_TRUNCATE_COLLECTION(''COLEC_CC_COMPROBANTES_PRESENTADOS'');',
'APEX_COLLECTION.CREATE_OR_TRUNCATE_COLLECTION(''COLEC_CC_CONTACTOS_CLIENTES'');',
'APEX_COLLECTION.CREATE_OR_TRUNCATE_COLLECTION(''COLEC_CC_REFERENCIA_CLIENTES'');',
'APEX_COLLECTION.CREATE_OR_TRUNCATE_COLLECTION(''COLEC_CC_REFERENCIA_CLIENTES_GAR'');',
'APEX_COLLECTION.CREATE_OR_TRUNCATE_COLLECTION(''COLEC_CC_COMITE_CLIENTES'');',
'',
':P131_COD_PERSONA := ''3894'';',
':P131_COD_SUCURSAL := NVL(:P_COD_SUCURSAL,''01'');',
'BEGIN',
'    CCCRECLI.CARGAR_DATOS(pcod_empresa             => :P_COD_EMPRESA,',
'                          pcod_persona             => ''3894'',',
'                          pcod_cliente             => :P131_COD_CLIENTE,',
'                          pdesc_cliente            => :P131_DESC_CLIENTE,',
'                          pcontacto                => :P131_DATOS_CONTACTO,',
'                          ptelefono                => :P131_TELEFONO,',
'                          pmail                    => :P131_MAIL,',
'                          pcod_agente_cred         => :P131_COD_AGENTE_CRED,',
'                          pcod_agente_call         => :P131_COD_AGENTE,',
'                          ptamanio_mts2            => :P131_SIZE,',
'                          pcantidad_sucursal       => :P131_CANT_SUCURSALES,',
'                          pubicacion_comercial     => :P131_COMERCIAL,',
'                          pubicacion_residencial   => :P131_RESIDENCIAL,',
'                          pcantidad_empleados      => :P131_CANT_EMPLEADOS,',
'                          ptipo_pagare             => :P131_TIPO_PAGARE,',
'                          pcantidad_vehiculo       => :P131_CANT_VEHICULO,',
'                          pcantidad_local          => :P131_CANT_LOCAL,',
'                          pventa_directa           => :P131_VENTA_DIRECTA,',
'                          pasociaciones            => :P131_ASOCIACIONES,',
'                          pdescuento_ministerial   => :P131_DESCUENTO_MINISTERIAL,',
'                          pventa_contado           => :P131_CONTADO,',
'                          pventa_credito           => :P131_CREDITO_PROPIO,',
'                          pdeposito_propio         => :P131_DEPOSITO_PROPIO,',
'                          pventa_tarjeta           => :P131_TARJETAS,',
'                          pventa_cred_terciarizado => :P131_CREDITO_TERCIARIZADO,',
'                          pventa_fiado             => :P131_FIADO_NET,',
'                          pvision                  => :P131_VISION,',
'                          p6_meses                 => :P131_6_MESES,',
'                          p12_meses                => :P131_12_MESES,',
'                          p18_meses                => :P131_18_MESES,',
'                          pmas_18_meses            => :P131_MAS_18_MESES,',
'                          pvendedores_salon        => :P131_SALON,',
'                          pvendedores_externos     => :P131_EXTERNOS,',
'                          pvendedor_independiente  => :P131_INDEPENDIENTES,',
'                          pvendedor_call           => :P131_CALL_CENTER,',
'                          ptipo_empresa            => :P131_TIPO_EMPRESA,',
'                          pantiguedad              => :P131_ANTIGUEDAD,',
'                          ptipo_negocio            => :P131_TIPO_NEGOCIO,',
'                          pind_oc                  => :P131_GEN_ORD_COMPRA,',
'                          pfec_proceso_carpeta     => :P131_FECHA_PROCESO,',
'                          pfec_finalizado_carpeta  => :P131_FECHA_FINALIZADO,',
'                          pcod_analista_carpeta    => :P131_COD_ANALISTA,',
'                          pestado_carpeta          => :P131_ESTADO_CARPETA,',
'                          pcomentario              => :P131_COMENTARIO,',
'                          pobservacion_creditos    => :P131_OBSERVCION_CREDITO,',
'                          pcod_user_gestor         => :P131_COD_GESTOR,',
'                          pfecha_cierre            => :P131_FECHA_CIERRE);',
'EXCEPTION',
'    WHEN OTHERS THEN',
'    APEX_DEBUG.ERROR(''PR_INIT PAG 131 ''||SQLERRM);',
'END;'))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(43197839783889707)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_SAVE'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    CCCRECLI.GUARDAR_DATOS(pcod_empresa             => :P_COD_EMPRESA,',
'                           pcod_persona             => ''3894'',',
'                           pcod_cliente             => :P131_COD_CLIENTE,',
'                           pcod_usuario             => :P_COD_USUARIO,',
'                           pdesc_cliente            => :P131_DESC_CLIENTE,',
'                           pcontacto                => :P131_DATOS_CONTACTO,',
'                           ptelefono                => :P131_TELEFONO,',
'                           pmail                    => :P131_MAIL,',
'                           pcod_agente_cred         => :P131_COD_AGENTE_CRED,',
'                           pcod_agente_call         => :P131_COD_AGENTE,',
'                           ptamanio_mts2            => :P131_SIZE,',
'                           pcantidad_sucursal       => :P131_CANT_SUCURSALES,',
'                           pubicacion_comercial     => :P131_COMERCIAL,',
'                           pubicacion_residencial   => :P131_RESIDENCIAL,',
'                           pcantidad_empleados      => :P131_CANT_EMPLEADOS,',
'                           ptipo_pagare             => :P131_TIPO_PAGARE,',
'                           pcantidad_vehiculo       => :P131_CANT_VEHICULO,',
'                           pcantidad_local          => :P131_CANT_LOCAL,',
'                           pventa_directa           => :P131_VENTA_DIRECTA,',
'                           pasociaciones            => :P131_ASOCIACIONES,',
'                           pdescuento_ministerial   => :P131_DESCUENTO_MINISTERIAL,',
'                           pventa_contado           => :P131_CONTADO,',
'                           pventa_credito           => :P131_CREDITO_PROPIO,',
'                           pdeposito_propio         => :P131_DEPOSITO_PROPIO,',
'                           pventa_tarjeta           => :P131_TARJETAS,',
'                           pventa_cred_terciarizado => :P131_CREDITO_TERCIARIZADO,',
'                           pventa_fiado             => :P131_FIADO_NET,',
'                           pvision                  => :P131_VISION,',
'                           p6_meses                 => :P131_6_MESES,',
'                           p12_meses                => :P131_12_MESES,',
'                           p18_meses                => :P131_18_MESES,',
'                           pmas_18_meses            => :P131_MAS_18_MESES,',
'                           pvendedores_salon        => :P131_SALON,',
'                           pvendedores_externos     => :P131_EXTERNOS,',
'                           pvendedor_independiente  => :P131_INDEPENDIENTES,',
'                           pvendedor_call           => :P131_CALL_CENTER,',
'                           ptipo_empresa            => :P131_TIPO_EMPRESA,',
'                           pantiguedad              => :P131_ANTIGUEDAD,',
'                           ptipo_negocio            => :P131_TIPO_NEGOCIO,',
'                           pind_oc                  => :P131_GEN_ORD_COMPRA,',
'                           pfec_proceso_carpeta     => :P131_FECHA_PROCESO,',
'                           pfec_finalizado_carpeta  => :P131_FECHA_FINALIZADO,',
'                           pcod_analista_carpeta    => :P131_COD_ANALISTA,',
'                           pestado_carpeta          => :P131_ESTADO_CARPETA,',
'                           pcomentario              => :P131_COMENTARIO,',
'                           pobservacion_creditos    => :P131_OBSERVCION_CREDITO,',
'                           pcod_user_gestor         => :P131_COD_GESTOR,',
'                           pfecha_cierre            => :P131_FECHA_CIERRE);',
'EXCEPTION ',
'    WHEN OTHERS THEN',
'    APEX_DEBUG.ERROR(''PR_SAVE PANTALLA 131 ''||SQLERRM);',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'Error al procesar los datos.'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(43197211553889701)
,p_process_success_message=>'Datos procesados correctamente.'
);
wwv_flow_imp.component_end;
end;
/
