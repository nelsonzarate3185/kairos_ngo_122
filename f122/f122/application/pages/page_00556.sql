prompt --application/pages/page_00556
begin
--   Manifest
--     PAGE: 00556
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
 p_id=>556
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'Generacion de Inventario Movil - STGEINMO'
,p_alias=>'STGEINMO'
,p_step_title=>'Generacion de Inventario Movil - STGEINMO'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_html_page_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
'',
'<link href="https://fonts.googleapis.com/icon?family=Material+Icons"',
'      rel="stylesheet">',
'',
'',
'<link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200" />      '))
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function seleccionar(cb) {',
'    console.log(cb.value);',
'    console.log(cb.checked);',
'',
'',
'  if (cb.checked == true){',
'    console.log("block" + cb.value);',
'      $s(''P556_ACCION'',''AGREGAR'');',
'      $s(''P556_AUX_CHECK'', cb.value,false);',
'  } else {',
'      $s(''P556_ACCION'',''QUITAR'');',
'      $s(''P556_AUX_CHECK'', cb.value,false);',
'  }',
'  ',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_last_updated_by=>'NZARATE'
,p_last_upd_yyyymmddhh24miss=>'20250312101413'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(85085133357723606)
,p_plug_name=>'Generacion de Inventario Movil'
,p_region_template_options=>'#DEFAULT#:t-Region--accent1:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>990
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(85085224937723607)
,p_plug_name=>'CABECERA'
,p_parent_plug_id=>wwv_flow_imp.id(85085133357723606)
,p_region_css_classes=>'u-color-1-border'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>1000
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(85087784641723632)
,p_plug_name=>'C1'
,p_parent_plug_id=>wwv_flow_imp.id(85085224937723607)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>10
,p_plug_grid_column_span=>4
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(85087988190723634)
,p_plug_name=>'P1'
,p_parent_plug_id=>wwv_flow_imp.id(85085224937723607)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--accent1:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>20
,p_plug_new_grid_row=>false
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(85085303628723608)
,p_plug_name=>'DETALLE'
,p_parent_plug_id=>wwv_flow_imp.id(85085133357723606)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>1010
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select SEQ_ID,',
'    c001  COD_EMPRESA,',
'    c002  TIP_COMPROBANTE,',
'    c003  NRO_COMPROBANTE,',
'    c004  DESC_ARTICULO,',
'    c005  COD_ARTICULO,',
'    c006  CANTIDAD,',
'    c007  SER_OT,',
'    c008  NRO_OT,',
'    c009  SER_COMPROBANTE,',
'    c010  COSTO,',
'    APEX_ITEM.CHECKBOX(p_idx => 1 , ',
'                            p_value => c025, ',
'                            p_attributes => (case when c011=''S'' then ''checked '' else null end )||''onclick="seleccionar(this)"'' ) as C011,',
'    c012  OBSERVACION,',
'    c013  COD_USER_BLOQUEO,',
'    c014  FECHA_BLOQUEO,',
'    c015  COD_ART_CORTO,',
'    c016  COD_ARTICULO_OT,',
'    C017  EMPRESA,',
'    c025 r_id,',
'       NULL EDITAR,',
'       NULL ELIMINAR,',
'       NULL DETALLE,',
'       NULL DATOS',
'  from APEX_COLLECTIONS',
'  WHERE COLLECTION_NAME = ''COL_DET_STGEINMO''',
'  AND NVL(C022,''X'')<>''D''',
'  '))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'DETALLE'
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
 p_id=>wwv_flow_imp.id(85512797126744105)
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
,p_internal_uid=>85512797126744105
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(85512859821744106)
,p_db_column_name=>'SEQ_ID'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Seq Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(85512901034744107)
,p_db_column_name=>'COD_EMPRESA'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Cod Empresa'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(85513098324744108)
,p_db_column_name=>'TIP_COMPROBANTE'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Tip Comprobante'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(85513104607744109)
,p_db_column_name=>'NRO_COMPROBANTE'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Nro Comprobante'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(85513253195744110)
,p_db_column_name=>'DESC_ARTICULO'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>unistr('Descripci\00F3n')
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(85513368615744111)
,p_db_column_name=>'COD_ARTICULO'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Articulo'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(85513450498744112)
,p_db_column_name=>'CANTIDAD'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Cantidad'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(85513596595744113)
,p_db_column_name=>'SER_OT'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Ser Ot'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(85513611797744114)
,p_db_column_name=>'NRO_OT'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'OT'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(85513753285744115)
,p_db_column_name=>'SER_COMPROBANTE'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Ser Comprobante'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(85513814467744116)
,p_db_column_name=>'COSTO'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Costo'
,p_column_type=>'STRING'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(85514067160744118)
,p_db_column_name=>'OBSERVACION'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Observacion'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(85514192665744119)
,p_db_column_name=>'COD_USER_BLOQUEO'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>'Cod User Bloqueo'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(85514221813744120)
,p_db_column_name=>'FECHA_BLOQUEO'
,p_display_order=>150
,p_column_identifier=>'O'
,p_column_label=>'Fecha Bloqueo'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(85514362454744121)
,p_db_column_name=>'R_ID'
,p_display_order=>160
,p_column_identifier=>'P'
,p_column_label=>'R Id'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(85514496010744122)
,p_db_column_name=>'EDITAR'
,p_display_order=>170
,p_column_identifier=>'Q'
,p_column_label=>'&nbsp'
,p_column_link=>'javascript:$s(''P556_EDITAR_AUX'',''#SEQ_ID#'');'
,p_column_linktext=>'<span aria-hidden="true" class="fa fa-edit"></span>'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(85514505482744123)
,p_db_column_name=>'ELIMINAR'
,p_display_order=>180
,p_column_identifier=>'R'
,p_column_label=>'&nbsp'
,p_column_link=>'javascript:$s(''P556_ELIMINAR'',''#SEQ_ID#'');'
,p_column_linktext=>'<span class="fa fa-trash-o" aria-hidden="true"></span>'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(85514654550744124)
,p_db_column_name=>'DETALLE'
,p_display_order=>190
,p_column_identifier=>'S'
,p_column_label=>'Detalle'
,p_column_link=>'javascript:$s(''P556_DETALLE'',''#SEQ_ID#'');'
,p_column_linktext=>'<span aria-hidden="true" class="fa fa-eye"></span>'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(85515338526744131)
,p_db_column_name=>'COD_ART_CORTO'
,p_display_order=>200
,p_column_identifier=>'T'
,p_column_label=>'Codigo Corto'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(179067880569145306)
,p_db_column_name=>'C011'
,p_display_order=>210
,p_column_identifier=>'U'
,p_column_label=>'Bloqueado'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(180648025770332114)
,p_db_column_name=>'DATOS'
,p_display_order=>220
,p_column_identifier=>'V'
,p_column_label=>'&nbsp'
,p_column_link=>'javascript:$s(''P556_DATOS'',''#ROWID#'');'
,p_column_linktext=>'<span aria-hidden="true" class="fa fa-address-card-o"></span>'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(179223461263092332)
,p_db_column_name=>'COD_ARTICULO_OT'
,p_display_order=>230
,p_column_identifier=>'W'
,p_column_label=>'Cod Articulo Ot'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(179223588139092333)
,p_db_column_name=>'EMPRESA'
,p_display_order=>240
,p_column_identifier=>'X'
,p_column_label=>'Empresa'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(178630507448237049)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1786306'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>10
,p_report_columns=>'DATOS:COD_ART_CORTO:COD_ARTICULO:DESC_ARTICULO:SER_OT:NRO_OT:CANTIDAD:COSTO:C011:DETALLE:ELIMINAR:'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(85085404575723609)
,p_plug_name=>'DATOS'
,p_parent_plug_id=>wwv_flow_imp.id(85085133357723606)
,p_region_css_classes=>'u-color-1-border'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>1020
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(85085553653723610)
,p_plug_name=>'VARIABLES'
,p_region_template_options=>'#DEFAULT#:js-dialog-size600x400'
,p_plug_template=>wwv_flow_imp.id(40117728043263659)
,p_plug_display_sequence=>1010
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(85516670508744144)
,p_plug_name=>'New'
,p_parent_plug_id=>wwv_flow_imp.id(85085553653723610)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select COD_EMPRESA,',
'       TIP_COMPROBANTE,',
'       SER_COMPROBANTE,',
'       NRO_COMPROBANTE,',
'       COD_SUCURSAL,',
'       FEC_COMPROBANTE,',
'       POLITICA_INVENTARIO,',
'       ID_INVENTURY,',
'       FECHA_ACTUALIZA,',
'       USUARIO_ACTUALIZA,',
'       USUARIO_CIERRE,',
'       FECHA_CIERRE,',
'       SUCURSAL,',
'       OBSERVACION,',
'       ID_INVENTURY_LOC,',
'       INVENTARIOOT,',
'       IND_INVENTARIO_CPH,',
'       IND_ABIERTO,',
'       USUARIO,',
'       NRO_PLAN_INVENTARIO,',
'       NRO_INVENTARIO_RECONTEO,',
'       ES_RECONTEO',
'  from ST_GENERACION_INVENTARIO'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'New'
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
 p_id=>wwv_flow_imp.id(85516849486744146)
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
,p_internal_uid=>85516849486744146
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(85516909616744147)
,p_db_column_name=>'COD_EMPRESA'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Cod Empresa'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(85517044615744148)
,p_db_column_name=>'TIP_COMPROBANTE'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Tip Comprobante'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(85517198866744149)
,p_db_column_name=>'SER_COMPROBANTE'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Ser Comprobante'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(85517251424744150)
,p_db_column_name=>'NRO_COMPROBANTE'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Nro Comprobante'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(179012948978383901)
,p_db_column_name=>'COD_SUCURSAL'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Cod Sucursal'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(179013098421383902)
,p_db_column_name=>'FEC_COMPROBANTE'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Fec Comprobante'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(179013145272383903)
,p_db_column_name=>'POLITICA_INVENTARIO'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Politica Inventario'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(179013297093383904)
,p_db_column_name=>'ID_INVENTURY'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Id Inventury'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(179013303127383905)
,p_db_column_name=>'FECHA_ACTUALIZA'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Fecha Actualiza'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(179013432378383906)
,p_db_column_name=>'USUARIO_ACTUALIZA'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Usuario Actualiza'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(179013534431383907)
,p_db_column_name=>'USUARIO_CIERRE'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Usuario Cierre'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(179013687720383908)
,p_db_column_name=>'FECHA_CIERRE'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Fecha Cierre'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(179013758433383909)
,p_db_column_name=>'SUCURSAL'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Sucursal'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(179013870177383910)
,p_db_column_name=>'OBSERVACION'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>'Observacion'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(179013913590383911)
,p_db_column_name=>'ID_INVENTURY_LOC'
,p_display_order=>150
,p_column_identifier=>'O'
,p_column_label=>'Id Inventury Loc'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(179014086899383912)
,p_db_column_name=>'INVENTARIOOT'
,p_display_order=>160
,p_column_identifier=>'P'
,p_column_label=>'Inventarioot'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(179014154662383913)
,p_db_column_name=>'IND_INVENTARIO_CPH'
,p_display_order=>170
,p_column_identifier=>'Q'
,p_column_label=>'Ind Inventario Cph'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(179014203913383914)
,p_db_column_name=>'IND_ABIERTO'
,p_display_order=>180
,p_column_identifier=>'R'
,p_column_label=>'Ind Abierto'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(179014352173383915)
,p_db_column_name=>'USUARIO'
,p_display_order=>190
,p_column_identifier=>'S'
,p_column_label=>'Usuario'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(179014495634383916)
,p_db_column_name=>'NRO_PLAN_INVENTARIO'
,p_display_order=>200
,p_column_identifier=>'T'
,p_column_label=>'Nro Plan Inventario'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(179014558832383917)
,p_db_column_name=>'NRO_INVENTARIO_RECONTEO'
,p_display_order=>210
,p_column_identifier=>'U'
,p_column_label=>'Nro Inventario Reconteo'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(179014676522383918)
,p_db_column_name=>'ES_RECONTEO'
,p_display_order=>220
,p_column_identifier=>'V'
,p_column_label=>'Es Reconteo'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(179064976124292406)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1790650'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'COD_EMPRESA:TIP_COMPROBANTE:SER_COMPROBANTE:NRO_COMPROBANTE:COD_SUCURSAL:FEC_COMPROBANTE:POLITICA_INVENTARIO:ID_INVENTURY:FECHA_ACTUALIZA:USUARIO_ACTUALIZA:USUARIO_CIERRE:FECHA_CIERRE:SUCURSAL:OBSERVACION:ID_INVENTURY_LOC:INVENTARIOOT:IND_INVENTARIO_'
||'CPH:IND_ABIERTO:USUARIO:NRO_PLAN_INVENTARIO:NRO_INVENTARIO_RECONTEO:ES_RECONTEO'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(85515836034744136)
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
 p_id=>wwv_flow_imp.id(180075692692026330)
,p_plug_name=>'Control de Carga de Inventario Movil'
,p_region_template_options=>'#DEFAULT#:js-dialog-size600x400'
,p_plug_template=>wwv_flow_imp.id(40117728043263659)
,p_plug_display_sequence=>1030
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(180075735806026331)
,p_plug_name=>'REPORT'
,p_parent_plug_id=>wwv_flow_imp.id(180075692692026330)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select REGID,',
'       INVENTORY_ID,',
'       INVENTORY_AREA,',
'       ZONA,',
'       USUARIO,',
'       HORARIO,',
'       ITEMID,',
'       BARCODE,',
'       COD_ARTICULO,',
'       CANTIDAD,',
'       COMENTARIO,',
'       NOTIFICACION,',
'       COMPRA_SM,',
'       VENTA_SM,',
'       TRANSFERENCIA_SM,',
'       OPERACION,',
'       to_char(FECHA_CARGA,''DD/MM/YYYY HH24:MI:SS'')FECHA_CARGA,',
'       NRO_PLAN,',
'       TIPO_INVENTARIO,',
'       ROWID,',
'       NULL ELIMINAR',
'  from SM_INVENTARIO_DET',
'  where (COD_ARTICULO=:P556_COD_ARTICULO_FILTRO OR COD_ARTICULO=:P556_COD_ARTICULO_DET)',
'  and INVENTORY_AREA=:P556_NRO_COMPROBANTE;'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P556_NRO_COMPROBANTE,P556_COD_ARTICULO_FILTRO,P556_COD_ARTICULO_DET'
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
 p_id=>wwv_flow_imp.id(180075809588026332)
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
,p_internal_uid=>180075809588026332
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(180075964761026333)
,p_db_column_name=>'REGID'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Regid'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(180076046279026334)
,p_db_column_name=>'INVENTORY_ID'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Inventory Id'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(180076132748026335)
,p_db_column_name=>'INVENTORY_AREA'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Inventory Area'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(180076214788026336)
,p_db_column_name=>'ZONA'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Zona'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(180076370156026337)
,p_db_column_name=>'USUARIO'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Usuario'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(180076438725026338)
,p_db_column_name=>'HORARIO'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Horario'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(180076510464026339)
,p_db_column_name=>'ITEMID'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Itemid'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(180076695384026340)
,p_db_column_name=>'BARCODE'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Barcode'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(180076798449026341)
,p_db_column_name=>'COD_ARTICULO'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Cod Articulo'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(180076811167026342)
,p_db_column_name=>'CANTIDAD'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Cantidad'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(180076915925026343)
,p_db_column_name=>'COMENTARIO'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Comentario'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(180077008978026344)
,p_db_column_name=>'NOTIFICACION'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Notificacion'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(180077150900026345)
,p_db_column_name=>'COMPRA_SM'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Compra Sm'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(180077219660026346)
,p_db_column_name=>'VENTA_SM'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>'Venta Sm'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(180077318046026347)
,p_db_column_name=>'TRANSFERENCIA_SM'
,p_display_order=>150
,p_column_identifier=>'O'
,p_column_label=>'Transferencia Sm'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(180077455364026348)
,p_db_column_name=>'OPERACION'
,p_display_order=>160
,p_column_identifier=>'P'
,p_column_label=>'Operacion'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(180077637766026350)
,p_db_column_name=>'NRO_PLAN'
,p_display_order=>180
,p_column_identifier=>'R'
,p_column_label=>'Nro Plan'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(180646747909332101)
,p_db_column_name=>'TIPO_INVENTARIO'
,p_display_order=>190
,p_column_identifier=>'S'
,p_column_label=>'Tipo Inventario'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(180648722588332121)
,p_db_column_name=>'ELIMINAR'
,p_display_order=>200
,p_column_identifier=>'T'
,p_column_label=>'&nbsp'
,p_column_link=>'javascript:$s(''P556_ELIMINAR_AUX'',''#ROWID#'');'
,p_column_linktext=>'<span aria-hidden="true" class="fa fa-trash"></span>'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(180649172406332125)
,p_db_column_name=>'ROWID'
,p_display_order=>210
,p_column_identifier=>'U'
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
 p_id=>wwv_flow_imp.id(245899538485347550)
,p_db_column_name=>'FECHA_CARGA'
,p_display_order=>220
,p_column_identifier=>'V'
,p_column_label=>'Fecha Carga'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(180659181951328720)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1806592'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>20
,p_report_columns=>'INVENTORY_ID:USUARIO:CANTIDAD:FECHA_CARGA:ZONA:COMENTARIO:ELIMINAR:'
,p_sort_column_1=>'FECHA_CARGA'
,p_sort_direction_1=>'DESC'
,p_sum_columns_on_break=>'CANTIDAD'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(181158527953495137)
,p_plug_name=>'Carga de Articulo'
,p_region_template_options=>'#DEFAULT#:js-dialog-autoheight:js-dialog-size600x400'
,p_plug_template=>wwv_flow_imp.id(40117728043263659)
,p_plug_display_sequence=>1040
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(181641062303487501)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(85085553653723610)
,p_button_name=>'BT_CARGA_MANUAL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Carga Manual'
,p_warn_on_unsaved_changes=>null
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(180649622652332130)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(180075735806026331)
,p_button_name=>'BT_BUSCAR_DET'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--gapTop'
,p_button_template_id=>wwv_flow_imp.id(40187078917263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Buscar'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-search'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(181155046056495102)
,p_button_sequence=>340
,p_button_plug_id=>wwv_flow_imp.id(85085553653723610)
,p_button_name=>'BT_STDIFINVAND_OT'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_image_alt=>'Bt Stdifinvand Ot'
,p_button_redirect_url=>'f?p=&APP_ID.:558:&SESSION.::&DEBUG.:RP,558::'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(181155182335495103)
,p_button_sequence=>350
,p_button_plug_id=>wwv_flow_imp.id(85085553653723610)
,p_button_name=>'New_1'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_image_alt=>'New'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(85516182564744139)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(85515836034744136)
,p_button_name=>'BT_CANCELAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_image_alt=>'Cancelar'
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(181159261500495144)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_imp.id(181158527953495137)
,p_button_name=>'BT_CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_image_alt=>'Cancelar'
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(251382526246991438)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(85085133357723606)
,p_button_name=>'BT_DIF_resumen'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Resumen de Inventario'
,p_button_position=>'COPY'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'u-color-33-bg'
,p_icon_css_classes=>'fa-file'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(85515673702744134)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(85085133357723606)
,p_button_name=>'BT_DIF_INVENTARIO'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Dif. Inventario'
,p_button_position=>'COPY'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'u-color-33-bg'
,p_icon_css_classes=>'fa-paste'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(179069778883145325)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(85085133357723606)
,p_button_name=>'BT_DET_OT'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Det. OT'
,p_button_position=>'COPY'
,p_button_redirect_url=>'f?p=&APP_ID.:562:&SESSION.::&DEBUG.::P562_P_NRO_COMPROBANTE,P562_P_SER_COMPROBANTE,P562_P_TIP_COMPROBANTE,P562_P_COD_EMPRESA:&P556_NRO_COMPROBANTE.,&P556_SER_COMPROBANTE.,&P556_TIP_COMPROBANTE.,&P556_COD_EMPRESA.'
,p_button_css_classes=>'u-color-33-bg'
,p_icon_css_classes=>'fa-tools'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(1016658460217866443)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(85085133357723606)
,p_button_name=>'BT_DET_ubicaciones'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Det. Ubic.'
,p_button_position=>'COPY'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'u-color-33-bg'
,p_icon_css_classes=>'fa-clipboard-list'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(85515743738744135)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_imp.id(85085133357723606)
,p_button_name=>'BT_VOLVER'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Volver'
,p_button_position=>'COPY'
,p_button_redirect_url=>'f?p=&APP_ID.:559:&SESSION.::&DEBUG.:::'
,p_button_css_classes=>'u-color-29-bg u-normal-text'
,p_icon_css_classes=>'fa-arrow-left'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(178338944018924607)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(85085224937723607)
,p_button_name=>'BT_CONSULTAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Filtrar'
,p_button_position=>'CREATE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(178339578953924613)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(85085404575723609)
,p_button_name=>'BT_GENERAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Generar'
,p_button_position=>'CREATE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(85516006394744138)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(85515836034744136)
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
 p_id=>wwv_flow_imp.id(178339028656924608)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(85085224937723607)
,p_button_name=>'BT_NUEVO_INVENTARIO'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Nuevo Inventario'
,p_button_position=>'CREATE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(178339680481924614)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(85085404575723609)
,p_button_name=>'BT_CERRAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Cerrar'
,p_button_position=>'CREATE'
,p_warn_on_unsaved_changes=>null
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P556_NRO_COMPROBANTE is null then',
'return false;',
'else',
'declare vabierto varchar2(100);',
'begin',
'select fecha_cierre into vabierto from st_generacion_inventario where cod_empresa=:p_cod_empresa and nro_comprobante = :P556_NRO_COMPROBANTE;',
'if vabierto is not null then',
'return false;',
'else return true;',
'end if;',
'exception ',
'when others then null;',
'end;',
'end if;'))
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'FUNCTION_BODY'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(85087523874723630)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(85085224937723607)
,p_button_name=>'BT_BUSCAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Buscar'
,p_button_position=>'CREATE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(179069225669145320)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(85085224937723607)
,p_button_name=>'BT_GUARDAR_INVENTARIO'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Guardar Inventario'
,p_button_position=>'CREATE'
,p_warn_on_unsaved_changes=>null
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare vabierto varchar2(100);',
'begin',
'select fecha_cierre into vabierto from st_generacion_inventario where cod_empresa=:p_cod_empresa and nro_comprobante = :P556_NRO_COMPROBANTE;',
'if vabierto is not null then',
'return false;',
'else return true;',
'end if;',
'exception ',
'when others then return true;',
'end;'))
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'FUNCTION_BODY'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(181159176936495143)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(181158527953495137)
,p_button_name=>'BT_ACEPTAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Aceptar'
,p_button_position=>'CREATE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(180074672287026320)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_imp.id(85085224937723607)
,p_button_name=>'BT_ELIMINAR_CAB'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187078917263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Eliminar'
,p_button_position=>'CREATE'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-trash'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(85514732658744125)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(85085303628723608)
,p_button_name=>'BT_AGREGAR_DETALLE'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Carga Manual'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_warn_on_unsaved_changes=>null
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare vabierto varchar2(100);',
'begin',
'select fecha_cierre into vabierto from st_generacion_inventario where cod_empresa=:p_cod_empresa and nro_comprobante = :P556_NRO_COMPROBANTE;',
'if vabierto is not null then',
'return false;',
'else return true;',
'end if;',
'exception ',
'when others then return true;',
'end;'))
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'FUNCTION_BODY'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(86525183897903948)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(85085303628723608)
,p_button_name=>'cargar_Archivo'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Importar Stock a Inventariar'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:560:&SESSION.::&DEBUG.:CR,560:P560_EMPRESA,P560_COD_SUCURSAL:&P556_IND_INVENTARIO_CPH.,&P556_COD_SUCURSAL_AUX.'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare vabierto varchar2(100);',
'begin',
'select fecha_cierre into vabierto from st_generacion_inventario where cod_empresa=:p_cod_empresa and nro_comprobante = :P556_NRO_COMPROBANTE;',
'if vabierto is not null then',
'return false;',
'else return true;',
'end if;',
'exception ',
'when others then return true;',
'end;'))
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'FUNCTION_BODY'
,p_button_css_classes=>'u-color-33-bg'
,p_icon_css_classes=>'fa-download'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(251379739076991410)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(85085303628723608)
,p_button_name=>'cargar_conteo'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Importar Conteo'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:813:&SESSION.::&DEBUG.:813:P813_EMPRESA,P813_COD_SUCURSAL,P813_INVENTARIO_OT:&P556_IND_INVENTARIO_CPH.,&P556_COD_SUCURSAL_AUX.,&P556_NRO_COMPROBANTE.'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P556_NRO_COMPROBANTE is null then',
'return false;',
'else',
'declare vabierto varchar2(100);',
'begin',
'select fecha_cierre into vabierto from st_generacion_inventario where cod_empresa=:p_cod_empresa and nro_comprobante = :P556_NRO_COMPROBANTE;',
'if vabierto is not null then',
'return false;',
'else return true;',
'end if;',
'exception ',
'when others then null;',
'end;',
'end if;'))
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'FUNCTION_BODY'
,p_button_css_classes=>'u-color-9-bg'
,p_icon_css_classes=>'fa-download'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(40872820157631311)
,p_name=>'P556_FECHA_ALTA'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(85087784641723632)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(40872910519631312)
,p_name=>'P556_USUARIO_ALTA'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(85085404575723609)
,p_prompt=>'Creado Por'
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
 p_id=>wwv_flow_imp.id(85085631446723611)
,p_name=>'P556_COD_USUARIO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(85085553653723610)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(85085767395723612)
,p_name=>'P556_COD_EMPRESA'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(85085553653723610)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(85085884375723613)
,p_name=>'P556_COD_MODULO'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(85085553653723610)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(85085930725723614)
,p_name=>'P556_COD_SUCURSAL'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(85085553653723610)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(85086085912723615)
,p_name=>'P556_SER_COMPROBANTE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(85087784641723632)
,p_prompt=>'Ser Comprobante'
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
 p_id=>wwv_flow_imp.id(85086897042723623)
,p_name=>'P556_POLITICA_INVENTARIO'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(85087784641723632)
,p_prompt=>'Politica Inventario'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:LIBRE;FREE,CON SUGERENCIAS;FREE_WITH_SUGGESTIONS,ZONAS ESTRICTAS;STRICT_ZONES,ESTRICTO;STRICT,ESTRICTO CON EXCEPCIONES;STRICT_WITH_EXCEPTIONS'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(85086935068723624)
,p_name=>'P556_FEC_COMPROBANTE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(85087784641723632)
,p_prompt=>'Fec Comprobante'
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
 p_id=>wwv_flow_imp.id(85087136085723626)
,p_name=>'P556_NRO_COMPROBANTE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(85087784641723632)
,p_prompt=>'Nro Comprobante'
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
 p_id=>wwv_flow_imp.id(85087204893723627)
,p_name=>'P556_COD_SUCURSAL_AUX'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(85087784641723632)
,p_prompt=>'Cod Sucursal'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_SUCURSAL_STGEINMO'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select descripcion, cod_sucursal from sucursales where cod_empresa = :P_cod_empresa',
'AND NVL(:P556_IND_INVENTARIO_CPH,''N'')=''N'' ',
'AND NVL(estado,''S'') not in(''I'',''N'' )',
'UNION ALL',
'select descripcion, cod_sucursal from sucursales where cod_empresa = ''18''',
'AND NVL(:P556_IND_INVENTARIO_CPH,''N'')=''B'' ',
'AND NVL(estado,''S'') not in(''I'',''N'' )',
'union all ',
'     Select  descripcion, cod_sucursal  ',
'       from v_sucursales_cph',
'      where cod_empresa  = :P_cod_empresa      ',
'AND NVL(:P556_IND_INVENTARIO_CPH,''N'')=''S''',
'union all',
'     Select  descripcion, cod_sucursal  ',
'       from INV.V_depositos_tf',
'      where cod_empresa  = :P_cod_empresa      ',
'AND NVL(:P556_IND_INVENTARIO_CPH,''N'')=''T'' ',
'',
'order by 1'))
,p_lov_cascade_parent_items=>'P556_IND_INVENTARIO_CPH,P_COD_EMPRESA'
,p_ajax_items_to_submit=>'P556_IND_INVENTARIO_CPH,P_COD_EMPRESA'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'Y'
,p_attribute_05=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(85087334733723628)
,p_name=>'P556_USUARIO'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(85085553653723610)
,p_prompt=>'Usuario'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_USUARIOS_STGEINMO'
,p_lov=>'select cod_usuario c, nombre from mo_usuarios'
,p_lov_display_null=>'YES'
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
 p_id=>wwv_flow_imp.id(85087444626723629)
,p_name=>'P556_INC_N'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(85087784641723632)
,p_prompt=>'Incluir "-N"'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#:margin-top-md'
,p_attribute_01=>'N'
,p_attribute_02=>'S'
,p_attribute_03=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(85088011123723635)
,p_name=>'P556_COD_RUBRO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(85087988190723634)
,p_prompt=>'Cod Rubro'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_RUBRO_STGEINMO'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select cod_rubro, descripcion',
'from st_rubro r',
'where cod_empresa =  :P_cod_empresa ',
'order by descripcion',
'',
''))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_colspan=>3
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'Y'
,p_attribute_05=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(85088251232723637)
,p_name=>'P556_DESC_RUBRO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(85087988190723634)
,p_prompt=>'Desc Rubro'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(85088311428723638)
,p_name=>'P556_COD_FAMILIA'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(85087988190723634)
,p_prompt=>'Cod Familia'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_FAMILIAS_STGEINMO'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT F.DESCRIPCION||''-''||F.cod_familia  descripcion, F.cod_familia ',
'        FROM st_familia F ',
'        WHERE F.ESTADO=''S'' ',
'        AND   F.COD_EMPRESA=:P_COD_EMPRESA',
'        AND   F.COD_FAMILIA IN (        SELECT DISTINCT  A.COD_FAMILIA',
'        FROM ST_ARTICULOS A',
'        WHERE A.COD_EMPRESA=:P_COD_EMPRESA',
'        AND   A.ESTADO=''S''        ',
'       /* AND   A.COD_MADRE IS NULL',
'        AND   (A.COD_LINEA= :P556_COD_LINEA OR :P556_COD_LINEA IS NULL)',
'        AND   (A.COD_MARCA= :P556_COD_MARCA OR :P556_COD_MARCA IS NULL)',
'        AND   (A.COD_CATEGORIA=:P556_COD_CATEGORIA OR :P556_COD_CATEGORIA IS NULL)*/)'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'Y'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
,p_attribute_11=>':'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(85088403891723639)
,p_name=>'P556_DESC_FAMILIA'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(85087988190723634)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(85088597950723640)
,p_name=>'P556_COD_LINEA'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(85087988190723634)
,p_prompt=>'Cod Linea'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_LINEAS_STGEINMO'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT DISTINCT L.DESCRIPCION, L.COD_LINEA',
'        FROM st_linea  L ',
'        WHERE L.ESTADO=''A''',
'        AND   L.COD_EMPRESA=:P_COD_EMPRESA',
'        AND   L.COD_LINEA IN ( SELECT DISTINCT A.COD_LINEA',
'        FROM ST_ARTICULOS A',
'        WHERE A.COD_EMPRESA=:P_COD_EMPRESA',
'        AND   A.ESTADO=''A''        ',
'        AND   A.COD_MADRE IS NULL',
'        AND   (A.COD_MARCA= :P556_COD_MARCA OR :P556_COD_MARCA IS NULL)',
'        AND   (A.COD_FAMILIA=:P556_COD_FAMILIA OR :P556_COD_FAMILIA IS NULL)',
'        AND   (A.COD_CATEGORIA=:P556_COD_CATEGORIA OR :P556_COD_CATEGORIA IS NULL)',
'      )',
'          ORDER BY L.DESCRIPCION'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_colspan=>3
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'Y'
,p_attribute_05=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(85088664967723641)
,p_name=>'P556_DESC_LINEA'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(85087988190723634)
,p_prompt=>'Desc Linea'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(85088762974723642)
,p_name=>'P556_INVENTARIOT'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_imp.id(85087988190723634)
,p_prompt=>'Inventariot'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#:margin-top-md'
,p_attribute_01=>'N'
,p_attribute_02=>'S'
,p_attribute_03=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(85088809133723643)
,p_name=>'P556_RB'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_imp.id(85087988190723634)
,p_prompt=>'&nbsp'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_lov=>'STATIC:Desc.;D,Asc.;A'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:margin-left-lg:t-Form-fieldContainer--radioButtonGroup'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'2'
,p_attribute_02=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(85088954564723644)
,p_name=>'P556_COD_MARCA'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(85087988190723634)
,p_prompt=>'Cod Marca'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_DES_MARCA_STGEINMO'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT M.DESCRIPCION||''-''||M.cod_marca descripcion, M.cod_marca',
'FROM st_marcas M',
'WHERE M.cod_marca IN (        SELECT DISTINCT A.COD_MARCA',
'        FROM ST_ARTICULOS A',
'        WHERE A.COD_EMPRESA=:P_COD_EMPRESA',
'        AND   A.ESTADO=''A''        ',
'        AND   A.COD_MADRE IS NULL',
'        AND   (A.COD_LINEA= :P556_COD_LINEA OR :P556_COD_LINEA IS NULL)',
'         AND   (A.COD_FAMILIA=:P556_COD_FAMILIA OR :P556_COD_FAMILIA IS NULL)',
'        AND   (A.COD_CATEGORIA=:P556_COD_CATEGORIA OR :P556_COD_CATEGORIA IS NULL))',
'ORDER BY M.DESCRIPCION ',
' '))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'Y'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
,p_attribute_11=>':'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(85089065286723645)
,p_name=>'P556_DESC_MARCA'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(85087988190723634)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(85089118267723646)
,p_name=>'P556_COD_CATEGORIA'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(85087988190723634)
,p_prompt=>'Cod Categoria'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_CATEGORIAS_STGEINMO'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT C.DESCRIPCION||''-''||c.cod_categoria descripcion, C.COD_CATEGORIA',
'        FROM ST_CATEGORIAS C ',
'        WHERE C.COD_EMPRESA=:P_COD_EMPRESA ',
'        AND   C.ESTADO=''A''',
'        AND   C.COD_CATEGORIA IN (SELECT DISTINCT A.COD_CATEGORIA',
'        FROM ST_ARTICULOS A',
'        WHERE A.COD_EMPRESA=:P_COD_EMPRESA',
'        AND   A.ESTADO=''A''        ',
'        /*AND   A.COD_MADRE IS NULL',
'        AND   (A.COD_LINEA= :P556_COD_LINEA OR :P556_COD_LINEA IS NULL)',
'        AND   (A.COD_MARCA= :P556_COD_MARCA OR :P556_COD_MARCA IS NULL)',
'        AND   (A.COD_FAMILIA=:P556_COD_FAMILIA OR :P556_COD_FAMILIA IS NULL) */ ) '))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_colspan=>6
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'Y'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
,p_attribute_11=>':'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(85089300068723648)
,p_name=>'P556_DESC_CAT'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(85087988190723634)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(85089488876723649)
,p_name=>'P556_COD_ENCARGADO'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(85087988190723634)
,p_prompt=>'Cod Encargado'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_ENCARGADO_STGEINMO'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ltrim(rtrim(p.nombre)) nombre, p.cod_per_fisica cod_persona ',
'from personas_fisicas pf, personas p ',
'where pf.cod_per_fisica = p.cod_persona order by 1'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'Y'
,p_attribute_05=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(85089577379723650)
,p_name=>'P556_NOM_ENCARGADO'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(85087988190723634)
,p_prompt=>'Nom Encargado'
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
 p_id=>wwv_flow_imp.id(85515004553744128)
,p_name=>'P556_TIP_COMPROBANTE'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(85085553653723610)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(85515428901744132)
,p_name=>'P556_EDITAR_AUX'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(85085303628723608)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(85515553290744133)
,p_name=>'P556_ELIMINAR'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(85085303628723608)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(85515937791744137)
,p_name=>'P556_COD_ARTICULO'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(85515836034744136)
,p_prompt=>'Cod Articulo'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_ARTICULOS_STGEINMO'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select descripcion, cod_articulo, cod_origen_art, cod_art_corto ',
'from st_articulos where cod_empresa = :P_cod_empresa ',
'and estado = ''A'' ',
'AND :P556_IND_INVENTARIO_CPH=''N''',
'UNION ALL',
'select descripcion, cod_articulo, cod_origen_art, cod_art_corto ',
'from st_articulos@DBLINK_CPH where cod_empresa = :P_cod_empresa ',
'AND :P556_IND_INVENTARIO_CPH=''S''',
'UNION ALL',
'select descripcion, cod_articulo, cod_origen_art, cod_art_corto ',
'from st_articulos@dbLINK_TF',
' where cod_empresa = :P_cod_empresa ',
'AND :P556_IND_INVENTARIO_CPH=''T''',
'UNION ALL',
'select descripcion, cod_articulo, cod_origen_art, cod_art_corto ',
'from st_articulos where cod_empresa = ''18''',
'and estado = ''A'' ',
'AND :P556_IND_INVENTARIO_CPH=''B''',
'order by 1'))
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
 p_id=>wwv_flow_imp.id(178338324585924601)
,p_name=>'P556_OBSERVACION'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(85087784641723632)
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
 p_id=>wwv_flow_imp.id(178338532862924603)
,p_name=>'P556_IND_INVENTARIO_CPH'
,p_is_required=>true
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(85087784641723632)
,p_item_default=>'N'
,p_prompt=>'Empresa'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:NGO;N,CPH;S,TF;T,BEST HOME;B'
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#:margin-top-md'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(178338689557924604)
,p_name=>'P556_ES_RECONTEO'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(85087988190723634)
,p_prompt=>'Reconteo'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#:margin-top-md'
,p_attribute_01=>'N'
,p_attribute_02=>'S'
,p_attribute_03=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(178338707993924605)
,p_name=>'P556_PORC'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(85087988190723634)
,p_prompt=>'Porc'
,p_post_element_text=>'% del costo'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--postTextBlock'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(178339138660924609)
,p_name=>'P556_SUCURSAL'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(85087784641723632)
,p_prompt=>'Sucursal'
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
 p_id=>wwv_flow_imp.id(178339205365924610)
,p_name=>'P556_OBSERVACION_AUX'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(85085404575723609)
,p_prompt=>unistr('Observaci\00F3n')
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
 p_id=>wwv_flow_imp.id(178339338279924611)
,p_name=>'P556_FECHA_ACTUALIZADA'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(85085404575723609)
,p_prompt=>'Fecha Actualizada'
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
 p_id=>wwv_flow_imp.id(178339419917924612)
,p_name=>'P556_FECHA_CIERRE'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(85085404575723609)
,p_prompt=>'FECHA_CIERRE'
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
 p_id=>wwv_flow_imp.id(178339753416924615)
,p_name=>'P556_FECHA_BLOQUEO'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(85085404575723609)
,p_prompt=>'Fecha Bloqueo'
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
 p_id=>wwv_flow_imp.id(178339819957924616)
,p_name=>'P556_COD_USER_BLOQUEO'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(85085404575723609)
,p_prompt=>'Cod User Bloqueo'
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
 p_id=>wwv_flow_imp.id(178339909130924617)
,p_name=>'P556_CANTIDAD'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(85515836034744136)
,p_prompt=>'Cantidad'
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
 p_id=>wwv_flow_imp.id(178340096399924618)
,p_name=>'P556_SER_OT'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(85515836034744136)
,p_prompt=>'Ser Ot'
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
 p_id=>wwv_flow_imp.id(178340124049924619)
,p_name=>'P556_NRO_OT'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(85515836034744136)
,p_prompt=>'Nro Ot'
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
 p_id=>wwv_flow_imp.id(178340253744924620)
,p_name=>'P556_COSTO'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(85515836034744136)
,p_prompt=>'Costo'
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
 p_id=>wwv_flow_imp.id(178340373958924621)
,p_name=>'P556_OBSERVACION_AUX2'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(85515836034744136)
,p_prompt=>unistr('Observaci\00F3n')
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
 p_id=>wwv_flow_imp.id(178340496778924622)
,p_name=>'P556_COD_USER_BLOQUEO_AUX'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(85515836034744136)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(178340589415924623)
,p_name=>'P556_DESC_ARTICULO'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(85515836034744136)
,p_prompt=>unistr('Descripci\00F3n')
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
 p_id=>wwv_flow_imp.id(178340614470924624)
,p_name=>'P556_IND_BLOQUEA'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(85515836034744136)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(178340754266924625)
,p_name=>'P556_FECHA_BLOQUEO_AUX'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(85515836034744136)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(178340825380924626)
,p_name=>'P556_COD_ART_CORTO'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(85515836034744136)
,p_prompt=>'Art Corto'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_ART_WEB_STGEINMO'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select descripcion, cod_articulo, cod_art_corto ',
'from st_articulos where cod_empresa = :P_cod_empresa ',
'and :P556_IND_INVENTARIO_CPH=''N''',
'UNION ALL',
'select descripcion, cod_articulo, cod_art_corto ',
'from st_articulos@DBLINK_CPH where cod_empresa = :P_cod_empresa ',
'and :P556_IND_INVENTARIO_CPH=''S''',
'UNION ALL',
'select descripcion, cod_articulo, cod_art_corto ',
'from st_articulos@DBLINK_TF where cod_empresa = :P_cod_empresa ',
'and :P556_IND_INVENTARIO_CPH=''T''',
'UNION ALL',
'select descripcion, cod_articulo, cod_art_corto ',
'from st_articulos where cod_empresa = ''18'' ',
'and :P556_IND_INVENTARIO_CPH=''B''',
'order by 1'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186937130263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'Y'
,p_attribute_05=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(178340931780924627)
,p_name=>'P556_NRO_COMPROBANTE_AUX'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(85515836034744136)
,p_prompt=>'Nro Comprobante Aux'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(178341061420924628)
,p_name=>'P556_TIP_COMPROBANTE_AUX'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(85515836034744136)
,p_prompt=>'Tip Comprobante Aux'
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
 p_id=>wwv_flow_imp.id(178341100262924629)
,p_name=>'P556_SER_COMPROBANTE_AUX'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(85515836034744136)
,p_prompt=>'Ser Comprobante Aux'
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
 p_id=>wwv_flow_imp.id(178341674913924634)
,p_name=>'P556_ERR'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(85085553653723610)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(179014700671383919)
,p_name=>'P556_ID_INVENTURY'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(85085553653723610)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(179014814641383920)
,p_name=>'P556_FECHA_ACTUALIZA'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(85085553653723610)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(179014977279383921)
,p_name=>'P556_ID_INVENTURY_LOC'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(85085553653723610)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(179015053544383922)
,p_name=>'P556_USUARIO_ACTUALIZA'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(85085553653723610)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(179015173500383923)
,p_name=>'P556_NRO_PLAN_INVENTARIO'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_imp.id(85085553653723610)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(179015252669383924)
,p_name=>'P556_USUARIO_CIERRE'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(85085553653723610)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(179015304156383925)
,p_name=>'P556_INVENTARIOOT'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(85085553653723610)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(179015444117383926)
,p_name=>'P556_IND_ABIERTO'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_imp.id(85085553653723610)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(179015501446383927)
,p_name=>'P556_NRO_INVENTARIO_RECONTEO'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_imp.id(85085553653723610)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(179067400437145302)
,p_name=>'P556_BLOQUE'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_imp.id(85085553653723610)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(179067554998145303)
,p_name=>'P556_SUB_BLOQUE'
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_imp.id(85085553653723610)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(179067958064145307)
,p_name=>'P556_AUX_CHECK'
,p_item_sequence=>220
,p_item_plug_id=>wwv_flow_imp.id(85085553653723610)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(179068063364145308)
,p_name=>'P556_ACCION'
,p_item_sequence=>230
,p_item_plug_id=>wwv_flow_imp.id(85085553653723610)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(179069546842145323)
,p_name=>'P556_EDITAR'
,p_item_sequence=>240
,p_item_plug_id=>wwv_flow_imp.id(85085553653723610)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(179221922543092317)
,p_name=>'P556_COD_FORMA'
,p_item_sequence=>280
,p_item_plug_id=>wwv_flow_imp.id(85085553653723610)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(179222047922092318)
,p_name=>'P556_PERMITE_ANULAR'
,p_item_sequence=>290
,p_item_plug_id=>wwv_flow_imp.id(85085553653723610)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(179222136167092319)
,p_name=>'P556_CARGA_SUCURSAL'
,p_item_sequence=>300
,p_item_plug_id=>wwv_flow_imp.id(85085553653723610)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(179222303223092321)
,p_name=>'P556_SUPERA_CANT_LINEAS'
,p_item_sequence=>310
,p_item_plug_id=>wwv_flow_imp.id(85085553653723610)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(179223256762092330)
,p_name=>'P556_DETALLE_AUX'
,p_item_sequence=>320
,p_item_plug_id=>wwv_flow_imp.id(85085553653723610)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(180074106618026315)
,p_name=>'P556_DETALLE'
,p_item_sequence=>250
,p_item_plug_id=>wwv_flow_imp.id(85085553653723610)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(180074935761026323)
,p_name=>'P556_ACCION_CONSULTA'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(85087784641723632)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(180647718475332111)
,p_name=>'P556_DATOS'
,p_item_sequence=>260
,p_item_plug_id=>wwv_flow_imp.id(85085553653723610)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(180648837576332122)
,p_name=>'P556_ELIMINAR_AUX'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(180075692692026330)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(180649353748332127)
,p_name=>'P556_COD_ARTICULO_FILTRO'
,p_item_sequence=>270
,p_item_plug_id=>wwv_flow_imp.id(85085553653723610)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(180649436844332128)
,p_name=>'P556_COD_ARTICULO_DET'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(180075735806026331)
,p_prompt=>'Cod Articulo'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_ARTICULOS_STGEINMO'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select descripcion, cod_articulo, cod_origen_art, cod_art_corto ',
'from st_articulos where cod_empresa = :P_cod_empresa ',
'and estado = ''A'' ',
'AND :P556_IND_INVENTARIO_CPH=''N''',
'UNION ALL',
'select descripcion, cod_articulo, cod_origen_art, cod_art_corto ',
'from st_articulos@DBLINK_CPH where cod_empresa = :P_cod_empresa ',
'AND :P556_IND_INVENTARIO_CPH=''S''',
'UNION ALL',
'select descripcion, cod_articulo, cod_origen_art, cod_art_corto ',
'from st_articulos@dbLINK_TF',
' where cod_empresa = :P_cod_empresa ',
'AND :P556_IND_INVENTARIO_CPH=''T''',
'UNION ALL',
'select descripcion, cod_articulo, cod_origen_art, cod_art_corto ',
'from st_articulos where cod_empresa = ''18''',
'and estado = ''A'' ',
'AND :P556_IND_INVENTARIO_CPH=''B''',
'order by 1'))
,p_cSize=>30
,p_grid_column=>2
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(180649586426332129)
,p_name=>'P556_DESCRIPCION'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(180075735806026331)
,p_prompt=>unistr('Descripci\00F3n')
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
 p_id=>wwv_flow_imp.id(180651337833332147)
,p_name=>'P556_BANDERA'
,p_item_sequence=>330
,p_item_plug_id=>wwv_flow_imp.id(85085553653723610)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(181155356361495105)
,p_name=>'P556_URL'
,p_item_sequence=>360
,p_item_plug_id=>wwv_flow_imp.id(85085553653723610)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(181157517379495127)
,p_name=>'P556_MENSAJE'
,p_item_sequence=>370
,p_item_plug_id=>wwv_flow_imp.id(85085553653723610)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(181157605377495128)
,p_name=>'P556_MENSAJE1'
,p_item_sequence=>390
,p_item_plug_id=>wwv_flow_imp.id(85085553653723610)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(181157736428495129)
,p_name=>'P556_MENSAJE2'
,p_item_sequence=>400
,p_item_plug_id=>wwv_flow_imp.id(85085553653723610)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(181158658959495138)
,p_name=>'P556_COD_ART_CORTO_AUX'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(181158527953495137)
,p_prompt=>'Cod Art Corto'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_ART_WEB_STGEINMO'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select descripcion, cod_articulo, cod_art_corto ',
'from st_articulos where cod_empresa = :P_cod_empresa ',
'and :P556_IND_INVENTARIO_CPH=''N''',
'UNION ALL',
'select descripcion, cod_articulo, cod_art_corto ',
'from st_articulos@DBLINK_CPH where cod_empresa = :P_cod_empresa ',
'and :P556_IND_INVENTARIO_CPH=''S''',
'UNION ALL',
'select descripcion, cod_articulo, cod_art_corto ',
'from st_articulos@DBLINK_TF where cod_empresa = :P_cod_empresa ',
'and :P556_IND_INVENTARIO_CPH=''T''',
'UNION ALL',
'select descripcion, cod_articulo, cod_art_corto ',
'from st_articulos where cod_empresa = ''18'' ',
'and :P556_IND_INVENTARIO_CPH=''B''',
'order by 1'))
,p_lov_display_null=>'YES'
,p_lov_cascade_parent_items=>'P556_IND_INVENTARIO_CPH'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'Y'
,p_attribute_05=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(181158716949495139)
,p_name=>'P556_COD_ARTICULO_AUX'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(181158527953495137)
,p_prompt=>'Cod Articulo'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_ARTICULOS_STGEINMO'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select descripcion, cod_articulo, cod_origen_art, cod_art_corto ',
'from st_articulos where cod_empresa = :P_cod_empresa ',
'and estado = ''A'' ',
'AND :P556_IND_INVENTARIO_CPH=''N''',
'UNION ALL',
'select descripcion, cod_articulo, cod_origen_art, cod_art_corto ',
'from st_articulos@DBLINK_CPH where cod_empresa = :P_cod_empresa ',
'AND :P556_IND_INVENTARIO_CPH=''S''',
'UNION ALL',
'select descripcion, cod_articulo, cod_origen_art, cod_art_corto ',
'from st_articulos@dbLINK_TF',
' where cod_empresa = :P_cod_empresa ',
'AND :P556_IND_INVENTARIO_CPH=''T''',
'UNION ALL',
'select descripcion, cod_articulo, cod_origen_art, cod_art_corto ',
'from st_articulos where cod_empresa = ''18''',
'and estado = ''A'' ',
'AND :P556_IND_INVENTARIO_CPH=''B''',
'order by 1'))
,p_lov_display_null=>'YES'
,p_lov_cascade_parent_items=>'P556_IND_INVENTARIO_CPH'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'Y'
,p_attribute_05=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(181158859893495140)
,p_name=>'P556_DESC_ARTICULO_AUX'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(181158527953495137)
,p_prompt=>'Desc Articulo'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(181158910646495141)
,p_name=>'P556_CANTIDAD_AUX'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(181158527953495137)
,p_prompt=>'Cantidad'
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
 p_id=>wwv_flow_imp.id(181159565793495147)
,p_name=>'P556_VPLAN'
,p_item_sequence=>410
,p_item_plug_id=>wwv_flow_imp.id(85085553653723610)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(181159663209495148)
,p_name=>'P556_VDATOS'
,p_item_sequence=>420
,p_item_plug_id=>wwv_flow_imp.id(85085553653723610)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(181286305504968603)
,p_name=>'P556_SENIAL_GENERAR'
,p_item_sequence=>380
,p_item_plug_id=>wwv_flow_imp.id(85085553653723610)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(181641921206487510)
,p_name=>'P556_COSTO_AUX'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(181158527953495137)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(181642006773487511)
,p_name=>'P556_MENSAJE_ERROR'
,p_item_sequence=>430
,p_item_plug_id=>wwv_flow_imp.id(85085553653723610)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(183048716011013048)
,p_name=>'P556_USUARIO_CREADOR'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(85085404575723609)
,p_prompt=>'Actualizado Por'
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
 p_id=>wwv_flow_imp.id(188211192649298009)
,p_name=>'P556_PERMITE_CERRAR'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(85085553653723610)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(188211245197298010)
,p_name=>'P556_PERMITE_CERRAR_TODO'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(85085553653723610)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(251379472528991407)
,p_name=>'P556_AREA_RRHH'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(85087784641723632)
,p_prompt=>'Area Responsable'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select descripcion, cod_area from rh_areas',
'where cod_empresa= :P_COD_EMPRESA',
'and cod_sucursal=''01'''))
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(251379544174991408)
,p_name=>'P556_UBICACION'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(85087784641723632)
,p_prompt=>'Ubicacion'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT  DESCRIPCION,cod_ubicacion',
'FROM CO_ubicacion_inventario ',
'WHERE COD_EMPRESA = :P_COD_EMPRESA'))
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
 p_id=>wwv_flow_imp.id(251379677940991409)
,p_name=>'P556_TIPO_INVENTARIO'
,p_is_required=>true
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(85087784641723632)
,p_item_default=>'N'
,p_prompt=>'Tipo Inventario'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select descripcion, cod_tipo_inventario from CO_tipo_inventario',
'where cod_empresa= :P_COD_EMPRESA',
' '))
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#:margin-top-md'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(186565667510242620)
,p_validation_name=>'valida_eliminar'
,p_validation_sequence=>10
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
' BEGIN      ',
'    IF  :P556_FECHA_ACTUALIZADA is NOT null then ',
'        return ''No es posible eliminar la linea de un inventario generado'';',
'    END IF;',
'END;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_ERR_TEXT'
,p_always_execute=>'Y'
,p_associated_item=>wwv_flow_imp.id(85515553290744133)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(85514826450744126)
,p_name=>'DA_BUSCAR'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(85087523874723630)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(85514951920744127)
,p_event_id=>wwv_flow_imp.id(85514826450744126)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'STGEINMO.PR_OBTENER_DETALLE(PI_COD_EMPRESA => :P556_COD_EMPRESA,',
'                              PI_TIP_COMPROBANTE => :P556_TIP_COMPROBANTE, ',
'                              PI_SER_COMPROBANTE => :P556_SER_COMPROBANTE, ',
'                              PI_NRO_COMPROBANTE => :P556_NRO_COMPROBANTE);',
'',
'',
':P556_ERR:=null;',
'BEGIN',
'select COD_EMPRESA,',
'       TIP_COMPROBANTE,',
'       SER_COMPROBANTE,',
'       NRO_COMPROBANTE,',
'       COD_SUCURSAL,',
'       FEC_COMPROBANTE,',
'       POLITICA_INVENTARIO,',
'       ID_INVENTURY,',
'       FECHA_ACTUALIZA,',
'       USUARIO_ACTUALIZA,',
'       USUARIO_CIERRE,',
'       FECHA_CIERRE,',
'       SUCURSAL,',
'       OBSERVACION,',
'       ID_INVENTURY_LOC,',
'       INVENTARIOOT,',
'       IND_INVENTARIO_CPH,',
'       IND_ABIERTO,',
'       USUARIO,',
'       NRO_PLAN_INVENTARIO,',
'       NRO_INVENTARIO_RECONTEO,',
'       ES_RECONTEO,',
'       INVENTARIOOT',
'  into',
'       :P556_COD_EMPRESA,',
'        :P556_TIP_COMPROBANTE,',
'        :P556_SER_COMPROBANTE,',
'        :P556_NRO_COMPROBANTE,',
'        :P556_COD_SUCURSAL_AUX,',
'        :P556_FEC_COMPROBANTE,',
'        :P556_POLITICA_INVENTARIO,',
'        :P556_ID_INVENTURY,',
'        :P556_FECHA_ACTUALIZA,',
'        :P556_USUARIO_ACTUALIZA,',
'        :P556_USUARIO_CIERRE,',
'        :P556_FECHA_CIERRE,',
'        :P556_SUCURSAL,',
'        :P556_OBSERVACION,',
'        :P556_ID_INVENTURY_LOC,',
'        :P556_INVENTARIOOT,',
'        :P556_IND_INVENTARIO_CPH,',
'        :P556_IND_ABIERTO,',
'        :P556_USUARIO,',
'        :P556_NRO_PLAN_INVENTARIO,',
'        :P556_NRO_INVENTARIO_RECONTEO,',
'        :P556_ES_RECONTEO,',
'        :P556_INVENTARIOOT',
'  from ST_GENERACION_INVENTARIO                           ',
'    WHERE cod_empresa=:P_COD_EMPRESA',
'  and NRO_COMPROBANTE = :P556_NRO_COMPROBANTE',
'  and SER_COMPROBANTE = :P556_SER_COMPROBANTE',
'  and TIP_COMPROBANTE = :P556_TIP_COMPROBANTE;',
' exception',
'    when others then ',
'    apex_Debug.error(''armador coleccion:''||sqlerrm);',
'    :P556_ERR:=''El codigo que desea buscar no existe'';',
'END;'))
,p_attribute_02=>'P556_TIP_COMPROBANTE,P556_SER_COMPROBANTE,P556_NRO_COMPROBANTE,P556_COD_EMPRESA'
,p_attribute_03=>'P556_COD_EMPRESA, P556_TIP_COMPROBANTE, P556_SER_COMPROBANTE, P556_NRO_COMPROBANTE, P556_COD_SUCURSAL_AUX, P556_FEC_COMPROBANTE, P556_POLITICA_INVENTARIO, P556_ID_INVENTURY, P556_FECHA_ACTUALIZA, P556_USUARIO_CREADOR, P556_USUARIO_CIERRE, P556_FECHA_'
||'CIERRE, P556_SUCURSAL, P556_OBSERVACION, P556_ID_INVENTURY_LOC, P556_INVENTARIOOT, P556_IND_INVENTARIO_CPH, P556_IND_ABIERTO, P556_USUARIO, P556_NRO_PLAN_INVENTARIO, P556_NRO_INVENTARIO_RECONTEO,P556_ERR,P556_INVENTARIOT,P556_INVENTARIOOT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(85515192727744129)
,p_event_id=>wwv_flow_imp.id(85514826450744126)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(85085303628723608)
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
 p_id=>wwv_flow_imp.id(85516246281744140)
,p_name=>'DA_EDITAR_AUX'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P556_EDITAR_AUX'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(179067775494145305)
,p_event_id=>wwv_flow_imp.id(85516246281744140)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select  ',
'        c002,',
'        c003,',
'        c004,',
'        c005,',
'        c006,',
'        c007,',
'        c008,',
'        c009,',
'        c010,',
'        c011,',
'        c012,',
'        c013,',
'        c014,',
'        c015',
'',
'into    ',
'          :P556_TIP_COMPROBANTE_AUX,',
'          :P556_NRO_COMPROBANTE_AUX,',
'          :P556_DESC_ARTICULO,',
'          :P556_COD_ARTICULO,',
'          :P556_CANTIDAD,',
'          :P556_SER_OT,',
'          :P556_NRO_OT,',
'          :P556_SER_COMPROBANTE_AUX,',
'          :P556_COSTO,',
'          :P556_COD_USER_BLOQUEO_AUX,',
'          :P556_OBSERVACION_AUX2,',
'          :P556_IND_BLOQUEA,',
'          :P556_FECHA_BLOQUEO_AUX,',
'          :P556_COD_ART_CORTO',
'',
'  from APEX_COLLECTIONS',
'  WHERE COLLECTION_NAME = ''COL_DET_STGEINMO'' ',
'  AND SEQ_ID = :P556_EDITAR_AUX ;',
''))
,p_attribute_02=>'P556_EDITAR_AUX'
,p_attribute_03=>'P556_TIP_COMPROBANTE_AUX, P556_NRO_COMPROBANTE_AUX, P556_DESC_ARTICULO, P556_COD_ARTICULO, P556_CANTIDAD, P556_SER_OT, P556_NRO_OT, P556_SER_COMPROBANTE_AUX, P556_COSTO, P556_COD_USER_BLOQUEO_AUX, P556_OBSERVACION_AUX2, P556_FECHA_BLOQUEO_AUX, P556_C'
||'OD_ART_CORTO,P556_IND_BLOQUEA'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(85516312210744141)
,p_event_id=>wwv_flow_imp.id(85516246281744140)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(85515836034744136)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(85516427395744142)
,p_name=>'DA_AGREGAR_DETALLE'
,p_event_sequence=>30
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(85514732658744125)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(181286487190968604)
,p_event_id=>wwv_flow_imp.id(85516427395744142)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P556_COD_ART_CORTO_AUX:=NULL;',
':P556_COD_ARTICULO_AUX:=NULL;',
':P556_DESC_ARTICULO_AUX:=NULL;',
':P556_CANTIDAD_AUX:=NULL;',
':P556_COSTO_AUX:=NULL;',
''))
,p_attribute_03=>'P556_COD_ART_CORTO_AUX,P556_COD_ARTICULO_AUX, P556_DESC_ARTICULO_AUX,P556_CANTIDAD_AUX'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(179067686805145304)
,p_event_id=>wwv_flow_imp.id(85516427395744142)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P556_NRO_COMPROBANTE_AUX:=:P556_NRO_COMPROBANTE;',
':P556_SER_COMPROBANTE_AUX:=:P556_SER_COMPROBANTE;',
':P556_TIP_COMPROBANTE_AUX:=:P556_TIP_COMPROBANTE;'))
,p_attribute_02=>'P556_NRO_COMPROBANTE,P556_TIP_COMPROBANTE,P556_SER_COMPROBANTE'
,p_attribute_03=>'P556_NRO_COMPROBANTE_AUX,P556_SER_COMPROBANTE_AUX,P556_TIP_COMPROBANTE_AUX'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(85516572417744143)
,p_event_id=>wwv_flow_imp.id(85516427395744142)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(181158527953495137)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(178341246982924630)
,p_name=>'DA_GUARDAR'
,p_event_sequence=>40
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(85516006394744138)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(178341383109924631)
,p_event_id=>wwv_flow_imp.id(178341246982924630)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    :P556_ERR := null;',
'    IF :P556_ACCION_CONSULTA=''3''THEN',
'     :P556_NRO_COMPROBANTE_AUX:=STGEINMO.FN_NRO_COMPROBANTE();',
'    END IF;',
'    IF :P556_COD_ARTICULO is not null and :P556_NRO_COMPROBANTE_AUX is not null and :P556_COD_ART_CORTO is not null then ',
'        if :P556_EDITAR_AUX is null then',
'                :P556_IND_BLOQUEA:=''S'';',
'                  STGEINMO.PR_AGREGAR_DETALLE(',
'                               PI_COD_EMPRESA => :P_COD_EMPRESA,     ',
'                               PI_NRO_COMPROBANTE => :P556_NRO_COMPROBANTE_AUX,',
'                               PI_TIP_COMPROBANTE => :P556_TIP_COMPROBANTE_AUX,',
'                               PI_SER_COMPROBANTE => :P556_SER_COMPROBANTE_AUX,',
'                               PI_COD_ARTICULO => :P556_COD_ARTICULO,',
'                               PI_CANTIDAD => :P556_CANTIDAD,',
'                               PI_SER_OT => :P556_SER_OT,',
'                               PI_NRO_OT => :P556_NRO_OT,',
'                               PI_COSTO => :P556_COSTO,',
'                               PI_OBSERVACION => :P556_OBSERVACION_AUX2,',
'                               PI_FECHA_BLOQUEO => :P556_FECHA_BLOQUEO_AUX,',
'                               PI_IND_BLOQUEA => :P556_IND_BLOQUEA,',
'                               PI_COD_USER_BLOQUEO => :P556_COD_USER_BLOQUEO_AUX,',
'                               PI_COD_ART_CORTO => :P556_COD_ART_CORTO); ',
'',
'                               STGEINMO.PR_INSERT_DETALLE (PI_COD_EMPRESA => :P556_COD_EMPRESA,',
'                                    PI_TIP_COMPROBANTE => :P556_TIP_COMPROBANTE, PI_SER_COMPROBANTE => :P556_SER_COMPROBANTE, PI_NRO_COMPROBANTE  => :P556_NRO_COMPROBANTE, PI_ID_INVENTURY  => :P556_ID_INVENTURY,',
'                                    PI_COD_ARTICULO  => :P556_COD_ARTICULO,PI_CANTIDAD  => :P556_CANTIDAD,',
'                                    PI_IND_INVENTARIO_CPH => :P556_IND_INVENTARIO_CPH, PI_MENSAJE => :P556_MENSAJE_ERROR);',
'                                       ',
'',
'        else',
'',
'                    STGEINMO.PR_UPDATE_DETALLE(',
'                              PI_SEQ => :P556_EDITAR_AUX,',
'                               PI_COD_ARTICULO => :P556_COD_ARTICULO,',
'                               PI_CANTIDAD => :P556_CANTIDAD,',
'                               PI_SER_OT => :P556_SER_OT,',
'                               PI_NRO_OT => :P556_NRO_OT,',
'                               PI_COSTO => :P556_COSTO,',
'                               PI_OBSERVACION => :P556_OBSERVACION_AUX2,',
'                               PI_COD_USER_BLOQUEO=> :P556_COD_USER_BLOQUEO,',
'                               PI_DESC_ARTICULO => :P556_DESC_ARTICULO,',
'                               PI_IND_BLOQUEA => :P556_IND_BLOQUEA,',
'                               PI_FECHA_BLOQUEO => :P556_FECHA_BLOQUEO_AUX,',
'                                PI_COD_ART_CORTO => :P556_COD_ART_CORTO);',
'         end if;',
'    ELSE',
'        :P556_ERR:=''Por favor complete los campo obligatorios'';',
'end if;',
'    ',
'    EXCEPTION',
'        WHEN OTHERS THEN',
'            APEX_DEBUG.ERROR(SQLERRM);',
'',
'',
'END;'))
,p_attribute_02=>'P556_COD_EMPRESA,P556_NRO_COMPROBANTE_AUX,P556_TIP_COMPROBANTE_AUX,P556_SER_COMPROBANTE_AUX,P556_COD_ARTICULO,P556_CANTIDAD,P556_SER_OT,P556_NRO_OT,P556_COSTO,P556_OBSERVACION_AUX2,P556_FECHA_BLOQUEO_AUX,P556_IND_BLOQUEA,P556_COD_USER_BLOQUEO_AUX,P55'
||'6_COD_ART_CORTO,P556_ACCION_CONSULTA'
,p_attribute_03=>'P556_ERR,P556_MENSAJE_ERROR'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(178341428573924632)
,p_event_id=>wwv_flow_imp.id(178341246982924630)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(85515836034744136)
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P556_ERR'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(178341577615924633)
,p_event_id=>wwv_flow_imp.id(178341246982924630)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(85085303628723608)
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P556_ERR'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(178341737808924635)
,p_name=>'DA_ERR'
,p_event_sequence=>50
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P556_ERR'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(178341884804924636)
,p_event_id=>wwv_flow_imp.id(178341737808924635)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'&P556_ERR.'
,p_attribute_03=>'warning'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P556_ERR'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(179068121967145309)
,p_name=>'DA_AUX_CHECK'
,p_event_sequence=>60
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P556_AUX_CHECK'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(179068246984145310)
,p_event_id=>wwv_flow_imp.id(179068121967145309)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'STGEINMO.PR_CHECK(P_ROWID => :P556_AUX_CHECK, P_ACCION => :P556_ACCION);',
'',
'BEGIN',
'        APEX_COLLECTION.UPDATE_MEMBER_ATTRIBUTE (P_COLLECTION_NAME => ''COL_DET_STGEINMO'',',
'                                                 P_SEQ   => :P556_AUX_CHECK ,',
'                                                 P_ATTR_NUMBER => 11,',
'                                                 P_ATTR_VALUE  => :P556_ACCION);',
'',
'    EXCEPTION',
'            WHEN OTHERS THEN NULL;',
'',
'END;'))
,p_attribute_02=>'P556_AUX_CHECK,P556_ACCION'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(179068312012145311)
,p_name=>'DA_ELIMINAR'
,p_event_sequence=>70
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P556_ELIMINAR'
,p_condition_element=>'P556_SENIAL_GENERAR'
,p_triggering_condition_type=>'NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(179068433142145312)
,p_event_id=>wwv_flow_imp.id(179068312012145311)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>unistr('\00BFEsta seguro/a de borrar?')
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(179068536855145313)
,p_event_id=>wwv_flow_imp.id(179068312012145311)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN ',
'    STGEINMO.PR_ELIMINAR_REGISTRO(PI_SEQ_ID => :P556_ELIMINAR);   ',
'EXCEPTION',
'WHEN OTHERS THEN',
'APEX_DEBUG.ERROR(SQLERRM);',
'END;'))
,p_attribute_02=>'P556_ELIMINAR'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(179068678542145314)
,p_event_id=>wwv_flow_imp.id(179068312012145311)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(85085303628723608)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(179220450809092302)
,p_name=>'DA_COD_RUBRO'
,p_event_sequence=>80
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P556_COD_RUBRO'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(179220502101092303)
,p_event_id=>wwv_flow_imp.id(179220450809092302)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
' :P556_ERR:=NULL;',
'   begin',
'      select descripcion',
'         into :P556_DESC_RUBRO',
'         from st_rubro',
'         where cod_rubro = :P556_cod_rubro ',
'         and cod_empresa =  :P_cod_empresa;',
'   exception',
'      when no_data_found then',
'         :P556_DESC_RUBRO := null ;',
unistr('         :P556_ERR:=''No se encuentra c\00F3digo de familia'';'),
'         ',
'      when others then',
'         :P556_DESC_RUBRO := null ;',
'         :P556_ERR:=''Error en la tabla de familias '' ;',
'         ',
'      end ;'))
,p_attribute_02=>'P556_COD_RUBRO'
,p_attribute_03=>'P556_DESC_RUBRO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(898741473118768335)
,p_event_id=>wwv_flow_imp.id(179220450809092302)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'null;'
,p_attribute_02=>'P556_COD_SUCURSAL_AUX,P556_IND_INVENTARIO_CPH'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(179220693277092304)
,p_name=>'DA_FAMILIA'
,p_event_sequence=>90
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P556_COD_FAMILIA'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
,p_display_when_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(179220780287092305)
,p_event_id=>wwv_flow_imp.id(179220693277092304)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P556_ERR:=NULL;',
' begin',
'      select descripcion',
'         into :P556_desc_familia',
'         from st_familia',
'         where cod_familia = :P556_cod_familia ;',
'   exception',
'      when no_data_found then',
'         :P556_desc_familia := null ;',
unistr('         :P556_ERR:=''No se encuentra c\00F3digo de familia'' ;'),
'         ',
'      when others then',
'         :P556_desc_familia := null ;',
'         :P556_ERR:=''Error en la tabla de familias '' ;',
'         ',
'      end ;'))
,p_attribute_02=>'P556_COD_FAMILIA'
,p_attribute_03=>'P556_DESC_FAMILIA'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(179220851569092306)
,p_name=>'DA_COD_LINEA'
,p_event_sequence=>100
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P556_COD_LINEA'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(179220961512092307)
,p_event_id=>wwv_flow_imp.id(179220851569092306)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P556_ERR:=NULL;',
'   begin',
'      select descripcion',
'         into :P556_desc_linea',
'         from st_linea',
'         where cod_linea = :P556_cod_linea ;',
'   exception',
'      when no_data_found then',
'         :P556_desc_linea := null ;',
unistr('         :P556_ERR:=''No se encuentra c\00F3digo de linea'' ;'),
'         ',
'      when others then',
'         :P556_desc_linea := null ;',
'         :P556_ERR:=''Error en la tabla de lineas de articulos ''  ;',
'         ',
'      end ;'))
,p_attribute_02=>'P556_COD_LINEA'
,p_attribute_03=>'P556_DESC_LINEA'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(179221003248092308)
,p_name=>'DA_MARCA'
,p_event_sequence=>110
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P556_COD_MARCA'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(179221134313092309)
,p_event_id=>wwv_flow_imp.id(179221003248092308)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'     ',
':P556_ERR:=NULL;     ',
'      begin',
'      select descripcion',
'         into :P556_desc_marca',
'         from st_marcas',
'         where cod_marca = :P556_cod_marca ;',
'   exception',
'      when no_data_found then',
'         :P556_desc_marca := null ;',
unistr('         :P556_ERR:= ''No se encuentra c\00F3digo de marca.'' ;'),
'         ',
'      when others then',
'         :P556_desc_marca := null ;',
'         :P556_ERR:= ''Error en la tabla de marcas '' ;',
'         ',
'   end ;'))
,p_attribute_02=>'P556_COD_MARCA'
,p_attribute_03=>'P556_DESC_MARCA'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(179221252183092310)
,p_name=>'DA_CATEGORIA'
,p_event_sequence=>120
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P556_COD_CATEGORIA'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(179221396701092311)
,p_event_id=>wwv_flow_imp.id(179221252183092310)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
':P556_ERR:=NULL;',
'      begin',
'      select descripcion',
'         into :P556_desc_CAT',
'         from ST_CATEGORIAS',
'         where COD_CATEGORIA = :P556_COD_CATEGORIA ;',
'   exception',
'      when no_data_found then',
'         :P556_desc_CAT := null ;',
unistr('       :P556_ERR:=''No se encuentra c\00F3digo de Categoria.'';'),
'         ',
'      when others then',
'         :P556_desc_CAT := null ;',
'         :P556_ERR:=''Error en la tabla de Categorias '';',
'         ',
'   end ;   '))
,p_attribute_02=>'P556_COD_CATEGORIA'
,p_attribute_03=>'P556_DESC_CAT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(179221443849092312)
,p_name=>'DA_ENCARGADO'
,p_event_sequence=>130
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P556_COD_ENCARGADO'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(179221577104092313)
,p_event_id=>wwv_flow_imp.id(179221443849092312)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
':P556_ERR:=NULL;',
'      begin',
'            SELECT  NOMBRE',
'            INTO :P556_NOM_ENCARGADO',
'            FROM PERSONAS ',
'            WHERE COD_PERSONA = :P556_COD_ENCARGADO  ;',
'   exception',
'      when no_data_found then',
'         :P556_NOM_ENCARGADO := null ;',
unistr('         :P556_ERR:= ''No se encuentra c\00F3digo de Encargado.'';'),
'         ',
'      when others then',
'         :P556_NOM_ENCARGADO := null ;',
'         :P556_ERR:= ''Error en la tabla de Encargado '';',
'         ',
'   end ;'))
,p_attribute_02=>'P556_COD_ENCARGADO'
,p_attribute_03=>'P556_NOM_ENCARGADO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(179069341064145321)
,p_name=>'DA_GUARDAR_INVENTARIO'
,p_event_sequence=>140
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(179069225669145320)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(179069452870145322)
,p_event_id=>wwv_flow_imp.id(179069341064145321)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
':P556_ERR := null;',
'IF :P556_NRO_COMPROBANTE IS NULL THEN',
'    IF :P556_NRO_COMPROBANTE_AUX IS NULL THEN',
'        :P556_NRO_COMPROBANTE:=STGEINMO.FN_NRO_COMPROBANTE();',
'    ELSE',
'        :P556_NRO_COMPROBANTE:=:P556_NRO_COMPROBANTE_AUX;',
'    END IF;',
'END IF;    ',
'IF :P_COD_EMPRESA is not null ',
'and :P556_TIP_COMPROBANTE is not null and :P556_NRO_COMPROBANTE is not null and :P556_SER_COMPROBANTE is not null then',
' ',
'        IF :P556_EDITAR IS NULL THEN',
'        ',
'        :P556_rb:=''A'';',
'         STGEINMO.PR_CONFIRMAR(',
'       PI_COD_EMPRESA => :P_COD_EMPRESA,',
'        PI_TIP_COMPROBANTE => :P556_TIP_COMPROBANTE,',
'        PI_NRO_COMPROBANTE => :P556_NRO_COMPROBANTE,',
'        PI_POLITICA_INVENTARIO => :P556_POLITICA_INVENTARIO,',
'        PI_FEC_COMPROBANTE => :P556_FEC_COMPROBANTE,',
'        PI_COD_SUCURSAL => :P556_COD_SUCURSAL_AUX,',
'        PI_IND_INVENTARIO_CPH => :P556_IND_INVENTARIO_CPH,',
'        PI_IND_INVENTARIO_OT => :P556_INVENTARIOT,',
'        PI_OBSERVACION => :P556_OBSERVACION,',
'        PI_SUCURSAL => :P556_SUCURSAL,',
'        PI_SER_COMPROBANTE => :P556_SER_COMPROBANTE,',
'        PI_ES_RECONTEO => :P556_ES_RECONTEO,',
'        PI_COD_USUARIO => :P556_COD_USUARIO,',
'        PI_FECHA_ACTUALIZA => :P556_FECHA_ACTUALIZADA,',
'        PI_FECHA_CIERRE => :P556_FECHA_CIERRE,',
'        PI_ID_INVENTURY => :P556_ID_INVENTURY,',
'         PI_TIPO_INVENTARIO  => :P556_TIPO_INVENTARIO,',
'        PI_AREA_RESPONSABLE  => :P556_AREA_RRHH,',
'        PI_UBICACION  => :P556_UBICACION);',
'        ELSE ',
'    UPDATE ST_GENERACION_INVENTARIO',
'               SET  ',
'                --NRO_COMPROBANTE = :P556_NRO_COMPROBANTE,',
'                POLITICA_INVENTARIO = :P556_POLITICA_INVENTARIO,',
'                -- FEC_COMPROBANTE = :P556_FEC_COMPROBANTE,',
'                COD_SUCURSAL = :P556_COD_SUCURSAL,',
'                IND_INVENTARIO_CPH = :P556_IND_INVENTARIO_CPH,',
'                OBSERVACION = :P556_OBSERVACION,',
'                SUCURSAL = :P556_SUCURSAL,',
'                --  SER_COMPROBANTE = :P556_SER_COMPROBANTE,',
'                ES_RECONTEO = :P556_ES_RECONTEO,',
'               -- USUARIO = :P556_COD_USUARIO,',
'                FECHA_ACTUALIZA = :P556_FECHA_ACTUALIZA,',
'               FECHA_CIERRE = :P556_FECHA_CIERRE,',
'                ID_INVENTURY = :P556_ID_INVENTURY,',
'                TIPO_INVENTARIO  = :P556_TIPO_INVENTARIO,',
'         AREA_RESPONSABLE  = :P556_AREA_RRHH,',
'        UBICACION_INVENTARIO  = :P556_UBICACION',
'            WHERE COD_EMPRESA = :P_COD_EMPRESA',
'                AND NRO_COMPROBANTE= :P556_NRO_COMPROBANTE',
'                AND TIP_COMPROBANTE = :P556_TIP_COMPROBANTE',
'                AND SER_COMPROBANTE = :P556_SER_COMPROBANTE;',
'    END IF;',
'ELSE',
'    :P556_ERR := ''Por favor: ingrese los campos obligatorios ''; ',
'END IF;',
'EXCEPTION',
'WHEN OTHERS THEN ',
'    APEX_DEBUG.ERROR(SQLERRM);',
'END;'))
,p_attribute_02=>'P556_COD_EMPRESA,P556_TIP_COMPROBANTE,P556_NRO_COMPROBANTE,P556_POLITICA_INVENTARIO,P556_FEC_COMPROBANTE,P556_COD_SUCURSAL_AUX,P556_IND_INVENTARIO_CPH,P556_OBSERVACION,P556_SUCURSAL,P556_SER_COMPROBANTE,P556_ES_RECONTEO,P556_COD_USUARIO,P556_FECHA_AC'
||'TUALIZA,P556_FECHA_CIERRE,P556_ID_INVENTURY,P_COD_EMPRESA,P556_INVENTARIOT,P556_INVENTARIOT,P556_TIPO_INVENTARIO,P556_AREA_RRHH,P556_UBICACION,P556_FECHA_ACTUALIZADA'
,p_attribute_03=>'P556_ERR,P556_NRO_COMPROBANTE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(179069632778145324)
,p_event_id=>wwv_flow_imp.id(179069341064145321)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(85085224937723607)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(181158448068495136)
,p_event_id=>wwv_flow_imp.id(179069341064145321)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'Inventario guardado con exito'
,p_attribute_03=>'success'
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P556_ERR'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(179071051828145338)
,p_name=>'DA_CONSULTAR'
,p_event_sequence=>150
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(178338944018924607)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(179223360850092331)
,p_event_id=>wwv_flow_imp.id(179071051828145338)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'APEX_COLLECTION.CREATE_OR_TRUNCATE_COLLECTION(P_COLLECTION_NAME => ''COL_DET_STGEINMO'');'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(183048531233013046)
,p_event_id=>wwv_flow_imp.id(179071051828145338)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var spinner = apex.util.showSpinner(); ',
'$("#apex_wait_overlay").remove(); ',
''))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(179071107361145339)
,p_event_id=>wwv_flow_imp.id(179071051828145338)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'    IF NVL(:P556_INVENTARIOT,''N'')=''N'' or  :P556_COD_SUCURSAL_AUX not in (''248'') then',
'       ',
'        if :P556_IND_INVENTARIO_CPH=''S'' THEN',
'            :P556_DETALLE_AUX:=''2'';',
'          APEX_COLLECTION.CREATE_OR_TRUNCATE_COLLECTION(P_COLLECTION_NAME => ''COL_DET_STGEINMO'');',
'          apex_debug.error(''entro a obtener CPH'');',
'          STGEINMO.PR_OBTENER_CPH (PI_COD_EMPRESA=> :P556_COD_EMPRESA,',
'                                PI_TIP_COMPROBANTE=> :P556_TIP_COMPROBANTE, ',
'                                PI_SER_COMPROBANTE=> :P556_SER_COMPROBANTE,',
'                                PI_NRO_COMPROBANTE => :P556_NRO_COMPROBANTE,',
'                                PI_COD_RUBRO=> :P556_COD_RUBRO,',
'                                PI_COD_LINEA=> :P556_COD_LINEA,',
'                                PI_COD_FAMILIA=> :P556_COD_FAMILIA,',
'                                PI_COD_MARCA=> :P556_COD_MARCA,',
'                                PI_COD_CATEGORIA=> :P556_COD_CATEGORIA,',
'                                PI_COD_ENCARGADO=> :P556_COD_ENCARGADO,',
'                                PI_COD_SUCURSAL => :P556_COD_SUCURSAL_AUX,',
'                                PI_RB => :P556_RB);',
'     ELSIF :P556_IND_INVENTARIO_CPH=''T'' THEN            ',
'            :P556_DETALLE_AUX:=''2'';',
'          APEX_COLLECTION.CREATE_OR_TRUNCATE_COLLECTION(P_COLLECTION_NAME => ''COL_DET_STGEINMO'');',
'          apex_debug.error(''entro a obtener tf'');',
'          STGEINMO.PR_OBTENER_TF(:P556_COD_EMPRESA,',
'                                :P556_TIP_COMPROBANTE, ',
'                                :P556_SER_COMPROBANTE,',
'                                :P556_NRO_COMPROBANTE,',
'                                :P556_COD_RUBRO,',
'                                :P556_COD_LINEA,',
'                                :P556_COD_FAMILIA,',
'                                :P556_COD_MARCA,',
'                                :P556_COD_CATEGORIA,',
'                                :P556_COD_ENCARGADO,',
'                                :P556_COD_SUCURSAL_AUX,',
'                                :P556_RB);   ',
'     ELSIF :P556_IND_INVENTARIO_CPH=''B'' THEN            ',
'            :P556_DETALLE_AUX:=''2'';',
'          APEX_COLLECTION.CREATE_OR_TRUNCATE_COLLECTION(P_COLLECTION_NAME => ''COL_DET_STGEINMO'');',
'          apex_debug.error(''entro a obtener tf'');',
'          STGEINMO.PR_OBTENER_BH (:P556_COD_EMPRESA, :P556_TIP_COMPROBANTE, :P556_SER_COMPROBANTE,',
'                                :P556_NRO_COMPROBANTE,',
'                                :P556_COD_RUBRO,',
'                                :P556_COD_LINEA,',
'                                :P556_COD_FAMILIA,',
'                                :P556_COD_MARCA,',
'                                :P556_COD_CATEGORIA,',
'                                :P556_COD_ENCARGADO,',
'                                :P556_COD_SUCURSAL_AUX,',
'                                :P556_RB);                                                                                        ',
'        ELSE',
'                        ',
'            :P556_DETALLE_AUX:=''3'';',
'             STGEINMO.PR_OBTENER_DET (:P556_COD_EMPRESA,:P556_TIP_COMPROBANTE,:P556_SER_COMPROBANTE,:P556_NRO_COMPROBANTE,:P556_COD_RUBRO,:P556_COD_LINEA,:P556_COD_FAMILIA,:P556_COD_MARCA,:P556_COD_CATEGORIA,NULL,:P556_COD_SUCURSAL_AUX,:P556_RB);    '
||'    ',
'      END IF;',
'     ',
'    ELSE           ',
'     -- CARGA_DETALLES_ORDENES;',
'   ',
'     apex_debug.error(''entro a obtener ordenes'');',
'     :P556_DETALLE_AUX:=''4'';',
'      STGEINMO.PR_OBTENER_ORDENES (PI_COD_EMPRESA=> :P556_COD_EMPRESA,',
'    PI_TIP_COMPROBANTE=> :P556_TIP_COMPROBANTE, ',
'    PI_SER_COMPROBANTE=> :P556_SER_COMPROBANTE,',
'    PI_NRO_COMPROBANTE => :P556_NRO_COMPROBANTE,',
'    PI_COD_RUBRO=> :P556_COD_RUBRO,',
'    PI_COD_LINEA=> :P556_COD_LINEA,',
'    PI_COD_FAMILIA=> :P556_COD_FAMILIA,',
'    PI_COD_MARCA=> :P556_COD_MARCA,',
'    PI_COD_CATEGORIA=> :P556_COD_CATEGORIA,',
'    PI_COD_ENCARGADO=> :P556_COD_ENCARGADO,',
'    PI_COD_SUCURSAL => :P556_COD_SUCURSAL_AUX,',
'    PI_RB => :P556_RB,',
'    PI_EMPRESA_ORIGEN =>:P556_IND_INVENTARIO_CPH);',
'    ',
'    END IF;',
'',
'end;'))
,p_attribute_02=>'P556_COD_EMPRESA,P556_COD_RUBRO,P556_COD_LINEA,P556_COD_MARCA,P556_COD_FAMILIA,P556_COD_SUCURSAL_AUX,P556_COD_CATEGORIA,P556_COD_ENCARGADO,P556_COD_USUARIO,P556_PORC,P556_RB,P556_TIP_COMPROBANTE,P556_SER_COMPROBANTE,P556_NRO_COMPROBANTE,P556_POLITICA'
||'_INVENTARIO,P556_INVENTARIOOT,P556_IND_INVENTARIO_CPH,P556_INVENTARIOT'
,p_attribute_03=>'P556_DETALLE_AUX'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(183048639833013047)
,p_event_id=>wwv_flow_imp.id(179071051828145338)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$(".u-Processing").remove(); ',
''))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(179071224671145340)
,p_event_id=>wwv_flow_imp.id(179071051828145338)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(85085303628723608)
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
 p_id=>wwv_flow_imp.id(86525371020903950)
,p_name=>'DA_ACTUALIZAR'
,p_event_sequence=>160
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(86525183897903948)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(898741954278768340)
,p_event_id=>wwv_flow_imp.id(86525371020903950)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P556_IND_INVENTARIO_CPH IS  NULL OR :P556_COD_SUCURSAL_AUX IS NULL  THEN',
'',
'raise_application_error(-20201, ''Es necesario seleccionar la empresa y la sucursal para importar archivos'');',
' ',
'  END IF;',
''))
,p_attribute_02=>'P556_IND_INVENTARIO_CPH,P556_COD_SUCURSAL_AUX'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(898741895809768339)
,p_event_id=>wwv_flow_imp.id(86525371020903950)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
' ',
'var url = 	APEX_PAGE.GET_URL ({',
unistr('    pageId: ''560'',                    // ID de la p\00E1gina que quieres abrir en modal'),
unistr('    clearCache: ''560'',                // Limpiar cach\00E9 de la p\00E1gina de destino si es necesario'),
'    items: {',
unistr('        P560_EMPRESA: $v("P556_IND_INVENTARIO_CPH"),   // Pasar par\00E1metros'),
'        P560_COD_SUCURSAL: $v("P556_COD_SUCURSAL_AUX"), ',
unistr('        P560_INVENTARIO_OT: $v("P556_INVENTARIOT")         // Otro par\00E1metro o valor fijo'),
'    },',
unistr('    checksum: "SESSION"             // Incluye el checksum de sesi\00F3n'),
'});',
'',
unistr('// N\00FAmero de la p\00E1gina de destino (modal)'),
'var modalPage = 560; ',
'',
unistr('// Valores de los par\00E1metros que deseas pasar'),
unistr('var param1 = $v("P556_IND_INVENTARIO_CPH"); // Por ejemplo, el valor de un elemento de la p\00E1gina actual'),
unistr('var param2 = $v("P556_COD_SUCURSAL_AUX"); // Por ejemplo, el valor de un elemento de la p\00E1gina actual'),
unistr('var param3 = $v("P556_INVENTARIOT"); // Por ejemplo, el valor de un elemento de la p\00E1gina actual'),
'',
unistr('// Llama a la p\00E1gina modal con los par\00E1metros'),
'apex.navigation.dialog(',
'    //"f?p=&APP_ID.:" + modalPage + ":&SESSION.::NO::P560_EMPRESA,P556_COD_SUCURSAL_AUX,P556_INVENTARIOT:" + param1 + "," + param2+ "," + param3,',
'    url,',
'    {',
unistr('        title: "T\00EDtulo de la Modal",'),
'        height: "auto",',
'        width: "600"',
'    }',
');'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(898741716421768338)
,p_event_id=>wwv_flow_imp.id(86525371020903950)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(85085303628723608)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(180075083586026324)
,p_name=>'DA_ELIMINAR_CAB'
,p_event_sequence=>180
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(180074672287026320)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(180075112348026325)
,p_event_id=>wwv_flow_imp.id(180075083586026324)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>'Desea continuar?'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(180075273759026326)
,p_event_id=>wwv_flow_imp.id(180075083586026324)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'        :P556_ERR:=NULL;',
'        BEGIN',
'            DELETE ST_GENERACION_INVENTARIO_DET',
'              WHERE NRO_COMPROBANTE = :P556_NRO_COMPROBANTE ',
'              AND SER_COMPROBANTE = :P556_SER_COMPROBANTE',
'              AND TIP_COMPROBANTE = :P556_TIP_COMPROBANTE;',
'',
'        EXCEPTION ',
'        WHEN OTHERS THEN',
'         :P556_ERR:=''Debe eliminar los datos del detalle y guardar los cambios'';',
'        END;',
'',
'',
'',
'        BEGIN',
'            DELETE ST_GENERACION_INVENTARIO',
'              WHERE NRO_COMPROBANTE = :P556_NRO_COMPROBANTE ',
'              AND SER_COMPROBANTE = :P556_SER_COMPROBANTE',
'              AND TIP_COMPROBANTE = :P556_TIP_COMPROBANTE;',
'',
'        EXCEPTION ',
'        WHEN OTHERS THEN',
'         :P556_ERR:=''Debe eliminar los datos del detalle y guardar los cambios'';',
'        END;',
'END;'))
,p_attribute_02=>'P556_SER_COMPROBANTE,P556_NRO_COMPROBANTE,P556_TIP_COMPROBANTE'
,p_attribute_03=>'P556_ERR'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(180075399537026327)
,p_event_id=>wwv_flow_imp.id(180075083586026324)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(85085224937723607)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(180075489335026328)
,p_event_id=>wwv_flow_imp.id(180075083586026324)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(85085404575723609)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(180075580883026329)
,p_event_id=>wwv_flow_imp.id(180075083586026324)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P556_COD_EMPRESA:=NULL;',
':P556_TIP_COMPROBANTE:=NULL;',
':P556_SER_COMPROBANTE:=NULL;',
':P556_NRO_COMPROBANTE:=NULL;',
':P556_COD_SUCURSAL_AUX:=NULL;',
':P556_FEC_COMPROBANTE:=NULL;',
':P556_POLITICA_INVENTARIO:=NULL;',
':P556_ID_INVENTURY:=NULL;',
':P556_FECHA_ACTUALIZA:=NULL;',
':P556_USUARIO_ACTUALIZA:=NULL;',
':P556_USUARIO_CIERRE:=NULL;',
':P556_FECHA_CIERRE:=NULL;',
':P556_SUCURSAL:=NULL;',
':P556_OBSERVACION:=NULL;',
':P556_ID_INVENTURY_LOC:=NULL;',
':P556_INVENTARIOOT:=NULL;',
':P556_IND_INVENTARIO_CPH:=NULL;',
':P556_IND_ABIERTO:=NULL;',
':P556_USUARIO:=NULL;',
':P556_NRO_PLAN_INVENTARIO:=NULL;',
':P556_NRO_INVENTARIO_RECONTEO:=NULL;',
':P556_ES_RECONTEO:=NULL;'))
,p_attribute_03=>'P556_COD_EMPRESA,P556_TIP_COMPROBANTE,P556_SER_COMPROBANTE,P556_NRO_COMPROBANTE,P556_COD_SUCURSAL_AUX,P556_FEC_COMPROBANTE,P556_POLITICA_INVENTARIO,P556_ID_INVENTURY,P556_FECHA_ACTUALIZA,P556_USUARIO_CREADOR,P556_USUARIO_CIERRE,P556_FECHA_CIERRE,P556'
||'_SUCURSAL,P556_OBSERVACION,P556_ID_INVENTURY_LOC,P556_INVENTARIOOT,P556_IND_INVENTARIO_CPH,P556_IND_ABIERTO,P556_USUARIO,P556_NRO_PLAN_INVENTARIO,P556_NRO_INVENTARIO_RECONTEO,P556_ES_RECONTEO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(180646812457332102)
,p_name=>'DA_DETALLE'
,p_event_sequence=>190
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P556_DETALLE'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(180649256945332126)
,p_event_id=>wwv_flow_imp.id(180646812457332102)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'    BEGIN ',
'                select c005',
'                   into :P556_COD_ARTICULO_FILTRO',
'                   from apex_collections',
'                   where seq_id = :P556_DETALLE',
'                     and COLLECTION_NAME = ''COL_DET_STGEINMO'';',
'    EXCEPTION',
'    	WHEN OTHERS THEN',
'    		NULL;',
'    END;'))
,p_attribute_02=>'P556_DETALLE'
,p_attribute_03=>'P556_COD_ARTICULO_FILTRO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(180650653855332140)
,p_event_id=>wwv_flow_imp.id(180646812457332102)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>':P556_COD_ARTICULO_DET:=NULL;'
,p_attribute_03=>'P556_COD_ARTICULO_DET'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(180646923848332103)
,p_event_id=>wwv_flow_imp.id(180646812457332102)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(180075692692026330)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(180650402051332138)
,p_event_id=>wwv_flow_imp.id(180646812457332102)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(180075735806026331)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(180647042020332104)
,p_name=>'DA_CANCELAR'
,p_event_sequence=>200
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(85516182564744139)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(180647110981332105)
,p_event_id=>wwv_flow_imp.id(180647042020332104)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(85515836034744136)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(180647859414332112)
,p_name=>'DA_DATOS'
,p_event_sequence=>210
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P556_DATOS'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(180647611323332110)
,p_event_id=>wwv_flow_imp.id(180647859414332112)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    BEGIN ',
'                select c013',
'                   into :P556_COD_USER_BLOQUEO',
'                   from apex_collections',
'                   where seq_id = :P556_DATOS',
'                     and COLLECTION_NAME = ''COL_DET_STGEINMO'';',
'    EXCEPTION',
'    	WHEN OTHERS THEN',
'    		NULL;',
'    END;',
'',
'',
'      BEGIN ',
'                select c012',
'                   into :P556_OBSERVACION',
'                   from apex_collections',
'                   where seq_id = :P556_DATOS',
'                     and COLLECTION_NAME = ''COL_DET_STGEINMO'';',
'    EXCEPTION',
'    	WHEN OTHERS THEN',
'    		NULL;',
'    END;',
'',
'',
'      BEGIN ',
'                select c014',
'                   into :P556_FECHA_BLOQUEO',
'                   from apex_collections',
'                   where seq_id = :P556_DATOS',
'                     and COLLECTION_NAME = ''COL_DET_STGEINMO'';',
'    EXCEPTION',
'    	WHEN OTHERS THEN',
'    		NULL;',
'    END;',
'',
'END;',
'',
''))
,p_attribute_02=>'P556_DATOS'
,p_attribute_03=>'P556_OBSERVACION_AUX,P556_FECHA_BLOQUEO,P556_COD_USER_BLOQUEO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(180648170779332115)
,p_name=>'DA_NUEVO_INVENTARIO'
,p_event_sequence=>220
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(178339028656924608)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(179224924983092347)
,p_event_id=>wwv_flow_imp.id(180648170779332115)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'--:P556_FECHA_ACTUALIZADA := to_date(SYSDATE,''dd/MM/YYYY'');',
':P556_NRO_COMPROBANTE:=STGEINMO.FN_NRO_COMPROBANTE();',
'',
''))
,p_attribute_03=>'P556_NRO_COMPROBANTE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(179225092308092348)
,p_event_id=>wwv_flow_imp.id(180648170779332115)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'apex_collection.create_or_truncate_collection(p_collection_name => ''COL_DET_STEGEINMO'');'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(179225106872092349)
,p_event_id=>wwv_flow_imp.id(180648170779332115)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P556_COD_SUCURSAL_AUX:=NULL;',
':P556_FEC_COMPROBANTE:=NULL;',
':P556_POLITICA_INVENTARIO:=NULL;',
':P556_ID_INVENTURY:=NULL;',
':P556_FECHA_ACTUALIZA:=NULL;',
':P556_USUARIO_ACTUALIZA:=NULL;',
':P556_USUARIO_CIERRE:=NULL;',
':P556_FECHA_CIERRE:=NULL;',
':P556_SUCURSAL:=NULL;',
':P556_OBSERVACION:=NULL;',
':P556_ID_INVENTURY_LOC:=NULL;',
':P556_INVENTARIOOT:=NULL;',
':P556_IND_INVENTARIO_CPH:=NULL;',
':P556_IND_ABIERTO:=NULL;',
':P556_USUARIO:=NULL;',
':P556_NRO_PLAN_INVENTARIO:=NULL;',
':P556_NRO_INVENTARIO_RECONTEO:=NULL;',
':P556_ES_RECONTEO:=NULL;'))
,p_attribute_03=>'P556_COD_SUCURSAL_AUX,P556_FEC_COMPROBANTE,P556_POLITICA_INVENTARIO,P556_ID_INVENTURY,P556_FECHA_ACTUALIZA,P556_USUARIO_CREADOR,P556_USUARIO_CIERRE,P556_FECHA_CIERRE,P556_SUCURSAL,P556_OBSERVACION,P556_ID_INVENTURY_LOC,P556_INVENTARIOOT,P556_IND_INVE'
||'NTARIO_CPH,P556_IND_ABIERTO,P556_USUARIO,P556_NRO_PLAN_INVENTARIO,P556_NRO_INVENTARIO_RECONTEO,P556_ES_RECONTEO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(180648585806332119)
,p_event_id=>wwv_flow_imp.id(180648170779332115)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(85085224937723607)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(180648658635332120)
,p_event_id=>wwv_flow_imp.id(180648170779332115)
,p_event_result=>'TRUE'
,p_action_sequence=>80
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(85085303628723608)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(180648927127332123)
,p_name=>'DA_ELIMINAR_AUX'
,p_event_sequence=>230
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P556_ELIMINAR_AUX'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(180649009797332124)
,p_event_id=>wwv_flow_imp.id(180648927127332123)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'            DELETE SM_INVENTARIO_DET',
'              WHERE ROWID = :P556_ELIMINAR_AUX ;',
'            ',
'        EXCEPTION ',
'        WHEN OTHERS THEN',
'         :P556_ERR:=''Debe eliminar los datos del detalle y guardar los cambios'';',
'        END;'))
,p_attribute_02=>'P556_ELIMINAR_AUX'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(180650762608332141)
,p_event_id=>wwv_flow_imp.id(180648927127332123)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(180075735806026331)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(180649710788332131)
,p_name=>'DA_COD_ARTICULO'
,p_event_sequence=>240
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P556_COD_ARTICULO'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(180649813623332132)
,p_event_id=>wwv_flow_imp.id(180649710788332131)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    BEGIN',
'    IF :P556_IND_INVENTARIO_CPH=''S'' THEN',
'    	BEGIN',
'    	  select descripcion',
'    	    into :P556_desc_articulo',
'    	    from v_articulos_cph',
'    	   where  cod_articulo = :P556_cod_articulo;',
'    	EXCEPTION',
'    	  when others then',
unistr('    	    :P556_desc_articulo := ''Error en la tabla de Art\00EDculos '';'),
'    	END;',
'    else',
'    	BEGIN',
'    	  select descripcion',
'    	    into :P556_desc_articulo',
'    	    from st_articulos',
'    	   where cod_empresa = :P_cod_empresa',
'    	     and cod_articulo = :P556_cod_articulo;',
'    	EXCEPTION',
'    	  when others then',
unistr('    	    :P556_desc_articulo := ''Error en la tabla de Art\00EDculos '';'),
'    	END;',
'    end if;',
'    END;',
'',
'BEGIN',
'   	SELECT   SUM(E.CANT_DISPON)CANT , SUM(E.CANT_DISPON)*max(nvl(a.costo_prom,1))',
'  		INTO 	:P556_CANTIDAD, :P556_costo',
'			        FROM ST_ARTICULOS A,',
'			              ST_EXISTENCIA_ART E',
'			        WHERE A.COD_EMPRESA=:P_COD_EMPRESA',
'			        AND   E.COD_EMPRESA=A.COD_EMPRESA',
'			          --AND NVL(E.CANT_DISPON,0)>0        ',
'			        AND   E.COD_ARTICULO=A.COD_ARTICULO',
'			 --       AND   E.COD_SUCURSAL= :P556_COD_SUCURSAL_AUX   ',
'			        AND 	A.COD_ARTICULO= :P556_COD_ARTICULO;',
'    END;',
'',
'END;'))
,p_attribute_02=>'P556_COD_ARTICULO,P556_IND_INVENTARIO_CPH,P556_COD_SUCURSAL_AUX'
,p_attribute_03=>'P556_DESC_ARTICULO,P556_CANTIDAD,P556_COSTO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(180649953577332133)
,p_name=>'DA_COD_ART_DET'
,p_event_sequence=>250
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P556_COD_ARTICULO_DET'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(180650306282332137)
,p_event_id=>wwv_flow_imp.id(180649953577332133)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'		IF :P556_IND_INVENTARIO_CPH=''S'' THEN',
'				BEGIN',
'				  select descripcion',
'				    into :P556_descripcion',
'				    from v_articulos_cph',
'				   where  cod_articulo = :P556_cod_articulo_det;',
'				EXCEPTION',
'                  when no_data_found then',
'                    :P556_descripcion := NULL;',
'				  when others then',
unistr('				    :P556_descripcion := ''Error en la tabla de Art\00EDculos '';'),
'				END;',
'		else',
'				BEGIN',
'				  select descripcion',
'				    into :P556_descripcion',
'				    from st_articulos',
'				   where cod_empresa = :P_cod_empresa',
'				     and cod_articulo = :P556_cod_articulo_det;',
'				EXCEPTION',
'                    when no_data_found then',
'                    :P556_descripcion := NULL;',
'				  when others then',
unistr('				    :P556_descripcion := ''Error en la tabla de Art\00EDculos '';'),
'				END;',
'			end if;'))
,p_attribute_02=>'P556_COD_ARTICULO_DET'
,p_attribute_03=>'P556_DESCRIPCION'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(180650560589332139)
,p_event_id=>wwv_flow_imp.id(180649953577332133)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>':P556_COD_ARTICULO_FILTRO:=null;'
,p_attribute_03=>'P556_COD_ARTICULO_FILTRO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(180650160617332135)
,p_name=>'DA_BUSCAR_DET'
,p_event_sequence=>260
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(180649622652332130)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(180650073573332134)
,p_event_id=>wwv_flow_imp.id(180650160617332135)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(180075735806026331)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(179222638731092324)
,p_name=>'DA_CANTIDAD'
,p_event_sequence=>270
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P556_COD_ARTICULO'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(179222787202092325)
,p_event_id=>wwv_flow_imp.id(179222638731092324)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'	SELECT   SUM(E.CANT_DISPON)CANT , SUM(E.CANT_DISPON)*max(nvl(a.costo_prom,1))',
'  		INTO 	:P556_CANTIDAD, :P556_costo',
'			        FROM ST_ARTICULOS A,',
'			              ST_EXISTENCIA_ART E',
'			        WHERE A.COD_EMPRESA=:P_COD_EMPRESA',
'			        AND   E.COD_EMPRESA=A.COD_EMPRESA',
'			          --AND NVL(E.CANT_DISPON,0)>0        ',
'			        AND   E.COD_ARTICULO=A.COD_ARTICULO',
'			        AND   E.COD_SUCURSAL= :P556_COD_SUCURSAL_AUX   ',
'			        AND 	A.COD_ARTICULO= :P556_COD_ARTICULO;'))
,p_attribute_02=>'P556_COD_ARTICULO,P556_COD_SUCURSAL_AUX'
,p_attribute_03=>'P556_CANTIDAD,P556_COSTO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_server_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(180651153776332145)
,p_name=>'DA_SET_CONDICION'
,p_event_sequence=>280
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(85515673702744134)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(180651297646332146)
,p_event_id=>wwv_flow_imp.id(180651153776332145)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'    :P556_BANDERA:=NULL;',
'   ',
'    if NVL(:P556_INVENTARIOOT,''N'')=''S'' THEN  	',
'     ',
'',
'         SELECT APEX_PAGE.GET_URL (  p_page   => 558,',
'                                p_items  => ''P558_P_TIP_COMPROBANTE,P558_P_SER_COMPROBANTE,P558_P_NRO_COMPROBANTE,P558_P_COD_EMPRESA,P558_P_BLOQUE,P558_P_SUB_BLOQUE,P558_P_COD_ARTICULO,P558_P_IND_INVENTARIO_CPH,P558_P_COD_SUCURSAL,P558_EJECUTAR_REPOR'
||'TE_1,P558_EJECUTAR_REPORTE_2,P558_EJECUTAR'',',
'                                p_values => (''''||:P556_TIP_COMPROBANTE||'',''||:P556_SER_COMPROBANTE||'',''||:P556_NRO_COMPROBANTE||'',''||:P556_COD_EMPRESA||'',''||:P556_BLOQUE||'',''||:P556_SUB_BLOQUE||'',''||:P556_COD_ARTICULO||'',''||:P556_IND_INVENTARIO_CPH||'
||''',''||:P556_COD_SUCURSAL_AUX||'',''||null||'',''||null||'',''||''N''||'''')) f_url_1',
'                INTO :P556_URL',
'                 FROM DUAL;                                                     ',
'       :P556_BANDERA:=''1'';',
'    ELSE',
'        IF :p556_NRO_COMPROBANTE IS NOT NULL THEN',
'            if :p556_ind_inventario_cph=''S'' THEN',
'                :P556_BANDERA:=''2'';',
'                    SELECT APEX_PAGE.GET_URL (  p_page   => 558,',
'                                    p_items  => ''P558_P_TIP_COMPROBANTE,P558_P_SER_COMPROBANTE,P558_P_NRO_COMPROBANTE,P558_P_COD_EMPRESA,P558_P_BLOQUE,P558_P_SUB_BLOQUE,P558_P_COD_ARTICULO,P558_P_IND_INVENTARIO_CPH,P558_P_COD_SUCURSAL,P558_EJECUTAR_R'
||'EPORTE_1,P558_EJECUTAR_REPORTE_2,P558_EJECUTAR'',',
'                                    p_values => (''''||:P556_TIP_COMPROBANTE||'',''||:P556_SER_COMPROBANTE||'',''||:P556_NRO_COMPROBANTE||'',''||:P556_COD_EMPRESA||'',''||:P556_BLOQUE||'',''||:P556_SUB_BLOQUE||'',''||:P556_COD_ARTICULO||'',''||:P556_IND_INVENTARIO_C'
||'PH||'',''||:P556_COD_SUCURSAL_AUX||'',''||null||'',''||null||'',''||''N''||'''')) f_url_1',
'                    INTO :P556_URL',
'                     FROM DUAL;  ',
'',
'            else',
'                :P556_BANDERA:=''3'';',
'                SELECT APEX_PAGE.GET_URL (  p_page   => 558,',
'                                p_items  => ''P558_P_TIP_COMPROBANTE,P558_P_SER_COMPROBANTE,P558_P_NRO_COMPROBANTE,P558_P_COD_EMPRESA,P558_P_BLOQUE,P558_P_SUB_BLOQUE,P558_P_COD_ARTICULO,P558_P_IND_INVENTARIO_CPH,P558_P_COD_SUCURSAL,P558_EJECUTAR_REPOR'
||'TE_1,P558_EJECUTAR_REPORTE_2,P558_EJECUTAR'',',
'                                p_values => (''''||:P556_TIP_COMPROBANTE||'',''||:P556_SER_COMPROBANTE||'',''||:P556_NRO_COMPROBANTE||'',''||:P556_COD_EMPRESA||'',''||:P556_BLOQUE||'',''||:P556_SUB_BLOQUE||'',''||:P556_COD_ARTICULO||'',''||:P556_IND_INVENTARIO_CPH||'
||''',''||:P556_COD_SUCURSAL_AUX||'',''||null||'',''||null||'',''||''N''||'''')) f_url_1',
'                INTO :P556_URL',
'                 FROM DUAL;  ',
'            end if;',
'       ',
'       end if;',
'     ',
'    END IF;',
'end;'))
,p_attribute_02=>'P556_FEC_COMPROBANTE,P556_NRO_COMPROBANTE,P556_INVENTARIOOT,P556_TIP_COMPROBANTE,P556_SER_COMPROBANTE,P556_BLOQUE,P556_SUB_BLOQUE,P556_COD_ARTICULO,P556_COD_EMPRESA,P556_COD_SUCURSAL_AUX'
,p_attribute_03=>'P556_BANDERA,P556_URL'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(181286535815968605)
,p_event_id=>wwv_flow_imp.id(180651153776332145)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'null;'
,p_attribute_02=>'P556_URL,P556_IND_INVENTARIO_CPH'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(181155217785495104)
,p_event_id=>wwv_flow_imp.id(180651153776332145)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT APEX_PAGE.GET_URL (  p_page   => 558,',
'                            p_items  => ''P558_P_TIP_COMPROBANTE,P558_P_SER_COMPROBANTE,P558_P_NRO_COMPROBANTE,P558_P_COD_EMPRESA,P558_P_BLOQUE,P558_P_SUB_BLOQUE,P558_P_COD_ARTICULO, P558_P_IND_INVENTARIO_CPH,P558_EJECUTAR_REPORTE_1,P558_EJECUTAR_REPO'
||'RTE_2,P558_EJECUTAR'',',
'                            p_values => (''''||:P556_TIP_COMPROBANTE||'',''||:P556_SER_COMPROBANTE||'',''||:P556_NRO_COMPROBANTE||'',''||:P556_COD_EMPRESA||'',''||:P556_BLOQUE||'',''||:P556_SUB_BLOQUE||'',''||:P556_COD_ARTICULO||'',''||:P556_IND_INVENTARIO_CPH||'',''|'
||'|null||'',''||null||'',''||''N''||'''')) f_url_1',
'    INTO :P556_URL',
'     FROM DUAL;',
'',
''))
,p_attribute_02=>'P556_NRO_COMPROBANTE,P556_TIP_COMPROBANTE,P556_SER_COMPROBANTE'
,p_attribute_03=>'P556_URL'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P556_BANDERA'
,p_client_condition_expression=>'1'
,p_server_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(181155508362495107)
,p_event_id=>wwv_flow_imp.id(180651153776332145)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT APEX_PAGE.GET_URL (  p_page   => 562,',
'                            p_items  => ''P558_P_TIP_COMPROBANTE,P558_P_SER_COMPROBANTE,P558_P_NRO_COMPROBANTE,P558_P_COD_EMPRESA,P558_P_BLOQUE,P558_P_SUB_BLOQUE,P558_P_COD_ARTICULO,P558_P_IND_INVENTARIO_CPH'',',
'                            p_values => (''''||:P556_TIP_COMPROBANTE||'',''||:P556_SER_COMPROBANTE||'',''||:P556_NRO_COMPROBANTE||'',''||:P556_COD_EMPRESA||'',''||:P556_BLOQUE||'',''||:P556_SUB_BLOQUE||'',''||:P556_COD_ARTICULO||'',''||:P556_IND_INVENTARIO_CPH||''''))'
||' f_url_1',
'    INTO :P556_URL',
'     FROM DUAL;',
''))
,p_attribute_02=>'P556_NRO_COMPROBANTE,P556_TIP_COMPROBANTE,P556_SER_COMPROBANTE'
,p_attribute_03=>'P556_URL'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P556_BANDERA'
,p_client_condition_expression=>'2'
,p_server_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(181155646979495108)
,p_event_id=>wwv_flow_imp.id(180651153776332145)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var url = apex.item("P556_URL").getValue();',
'apex.navigation.redirect(url);',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(1016658547889866444)
,p_name=>'DA_SET_CONDICION_ubic'
,p_event_sequence=>290
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(1016658460217866443)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(1016658660937866445)
,p_event_id=>wwv_flow_imp.id(1016658547889866444)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'    :P556_BANDERA:=NULL;',
'   ',
'    if NVL(:P556_INVENTARIOOT,''N'')=''S'' THEN  	',
'     ',
'',
'         SELECT APEX_PAGE.GET_URL (  p_page   => 833,',
'                                p_items  => ''P833_P_TIP_COMPROBANTE,P833_P_SER_COMPROBANTE,P833_P_NRO_COMPROBANTE,P833_P_COD_EMPRESA,P833_P_BLOQUE,P833_P_SUB_BLOQUE,P833_P_COD_ARTICULO,P833_P_IND_INVENTARIO_CPH,P833_P_COD_SUCURSAL,P833_EJECUTAR_REPOR'
||'TE_1,P833_EJECUTAR_REPORTE_2,P833_EJECUTAR'',',
'                                p_values => (''''||:P556_TIP_COMPROBANTE||'',''||:P556_SER_COMPROBANTE||'',''||:P556_NRO_COMPROBANTE||'',''||:P556_COD_EMPRESA||'',''||:P556_BLOQUE||'',''||:P556_SUB_BLOQUE||'',''||:P556_COD_ARTICULO||'',''||:P556_IND_INVENTARIO_CPH||'
||''',''||:P556_COD_SUCURSAL_AUX||'',''||null||'',''||null||'',''||''N''||'''')) f_url_1',
'                INTO :P556_URL',
'                 FROM DUAL;                                                     ',
'       :P556_BANDERA:=''1'';',
'    ELSE',
'        IF :p556_NRO_COMPROBANTE IS NOT NULL THEN',
'            if :p556_ind_inventario_cph=''S'' THEN',
'                :P556_BANDERA:=''2'';',
'                    SELECT APEX_PAGE.GET_URL (  p_page   => 833,',
'                                    p_items  => ''P833_P_TIP_COMPROBANTE,P833_P_SER_COMPROBANTE,P833_P_NRO_COMPROBANTE,P833_P_COD_EMPRESA,P833_P_BLOQUE,P833_P_SUB_BLOQUE,P833_P_COD_ARTICULO,P833_P_IND_INVENTARIO_CPH,P833_P_COD_SUCURSAL,P833_EJECUTAR_R'
||'EPORTE_1,P833_EJECUTAR_REPORTE_2,P833_EJECUTAR'',',
'                                    p_values => (''''||:P556_TIP_COMPROBANTE||'',''||:P556_SER_COMPROBANTE||'',''||:P556_NRO_COMPROBANTE||'',''||:P556_COD_EMPRESA||'',''||:P556_BLOQUE||'',''||:P556_SUB_BLOQUE||'',''||:P556_COD_ARTICULO||'',''||:P556_IND_INVENTARIO_C'
||'PH||'',''||:P556_COD_SUCURSAL_AUX||'',''||null||'',''||null||'',''||''N''||'''')) f_url_1',
'                    INTO :P556_URL',
'                     FROM DUAL;  ',
'',
'            else',
'                :P556_BANDERA:=''3'';',
'                SELECT APEX_PAGE.GET_URL (  p_page   => 833,',
'                                p_items  => ''P833_P_TIP_COMPROBANTE,P833_P_SER_COMPROBANTE,P833_P_NRO_COMPROBANTE,P833_P_COD_EMPRESA,P833_P_BLOQUE,P833_P_SUB_BLOQUE,P833_P_COD_ARTICULO,P833_P_IND_INVENTARIO_CPH,P833_P_COD_SUCURSAL,P833_EJECUTAR_REPOR'
||'TE_1,P833_EJECUTAR_REPORTE_2,P833_EJECUTAR'',',
'                                p_values => (''''||:P556_TIP_COMPROBANTE||'',''||:P556_SER_COMPROBANTE||'',''||:P556_NRO_COMPROBANTE||'',''||:P556_COD_EMPRESA||'',''||:P556_BLOQUE||'',''||:P556_SUB_BLOQUE||'',''||:P556_COD_ARTICULO||'',''||:P556_IND_INVENTARIO_CPH||'
||''',''||:P556_COD_SUCURSAL_AUX||'',''||null||'',''||null||'',''||''N''||'''')) f_url_1',
'                INTO :P556_URL',
'                 FROM DUAL;  ',
'            end if;',
'       ',
'       end if;',
'     ',
'    END IF;',
'end;'))
,p_attribute_02=>'P556_FEC_COMPROBANTE,P556_NRO_COMPROBANTE,P556_INVENTARIOOT,P556_TIP_COMPROBANTE,P556_SER_COMPROBANTE,P556_BLOQUE,P556_SUB_BLOQUE,P556_COD_ARTICULO,P556_COD_EMPRESA,P556_COD_SUCURSAL_AUX'
,p_attribute_03=>'P556_BANDERA,P556_URL'
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
 p_id=>wwv_flow_imp.id(1016658703541866446)
,p_event_id=>wwv_flow_imp.id(1016658547889866444)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'null;'
,p_attribute_02=>'P556_URL,P556_IND_INVENTARIO_CPH'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(1016658896897866447)
,p_event_id=>wwv_flow_imp.id(1016658547889866444)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT APEX_PAGE.GET_URL (  p_page   => 833,',
'                            p_items  => ''P833_P_TIP_COMPROBANTE,P833_P_SER_COMPROBANTE,P833_P_NRO_COMPROBANTE,P833_P_COD_EMPRESA,P833_P_BLOQUE,P833_P_SUB_BLOQUE,P833_P_COD_ARTICULO, P833_P_IND_INVENTARIO_CPH,P833_EJECUTAR_REPORTE_1,P833_EJECUTAR_REPO'
||'RTE_2,P833_EJECUTAR'',',
'                            p_values => (''''||:P556_TIP_COMPROBANTE||'',''||:P556_SER_COMPROBANTE||'',''||:P556_NRO_COMPROBANTE||'',''||:P556_COD_EMPRESA||'',''||:P556_BLOQUE||'',''||:P556_SUB_BLOQUE||'',''||:P556_COD_ARTICULO||'',''||:P556_IND_INVENTARIO_CPH||'',''|'
||'|null||'',''||null||'',''||''N''||'''')) f_url_1',
'    INTO :P556_URL',
'     FROM DUAL;',
'',
''))
,p_attribute_02=>'P556_NRO_COMPROBANTE,P556_TIP_COMPROBANTE,P556_SER_COMPROBANTE'
,p_attribute_03=>'P556_URL'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P556_BANDERA'
,p_client_condition_expression=>'1'
,p_server_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(1016658991057866448)
,p_event_id=>wwv_flow_imp.id(1016658547889866444)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT APEX_PAGE.GET_URL (  p_page   => 562,',
'                            p_items  => ''P558_P_TIP_COMPROBANTE,P558_P_SER_COMPROBANTE,P558_P_NRO_COMPROBANTE,P558_P_COD_EMPRESA,P558_P_BLOQUE,P558_P_SUB_BLOQUE,P558_P_COD_ARTICULO,P558_P_IND_INVENTARIO_CPH'',',
'                            p_values => (''''||:P556_TIP_COMPROBANTE||'',''||:P556_SER_COMPROBANTE||'',''||:P556_NRO_COMPROBANTE||'',''||:P556_COD_EMPRESA||'',''||:P556_BLOQUE||'',''||:P556_SUB_BLOQUE||'',''||:P556_COD_ARTICULO||'',''||:P556_IND_INVENTARIO_CPH||''''))'
||' f_url_1',
'    INTO :P556_URL',
'     FROM DUAL;',
''))
,p_attribute_02=>'P556_NRO_COMPROBANTE,P556_TIP_COMPROBANTE,P556_SER_COMPROBANTE'
,p_attribute_03=>'P556_URL'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P556_BANDERA'
,p_client_condition_expression=>'2'
,p_server_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(1016659011698866449)
,p_event_id=>wwv_flow_imp.id(1016658547889866444)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var url = apex.item("P556_URL").getValue();',
'apex.navigation.redirect(url);',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(251383026543991443)
,p_name=>'DA_SET_CONDICION_RES'
,p_event_sequence=>300
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(251382526246991438)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(251383153477991444)
,p_event_id=>wwv_flow_imp.id(251383026543991443)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'    :P556_BANDERA:=NULL;',
'   ',
'    if NVL(:P556_INVENTARIOOT,''N'')=''S'' THEN  	',
'     ',
'',
'         SELECT APEX_PAGE.GET_URL (  p_page   => 814,',
'                                p_items  => ''P814_P_TIP_COMPROBANTE,P814_P_SER_COMPROBANTE,P814_P_NRO_COMPROBANTE,P814_P_COD_EMPRESA,P814_P_BLOQUE,P814_P_SUB_BLOQUE,P814_P_COD_ARTICULO,P814_P_IND_INVENTARIO_CPH,P814_P_COD_SUCURSAL,P814_EJECUTAR_REPOR'
||'TE_1,P814_EJECUTAR_REPORTE_2,P814_EJECUTAR'',',
'                                p_values => (''''||:P556_TIP_COMPROBANTE||'',''||:P556_SER_COMPROBANTE||'',''||:P556_NRO_COMPROBANTE||'',''||:P556_COD_EMPRESA||'',''||:P556_BLOQUE||'',''||:P556_SUB_BLOQUE||'',''||:P556_COD_ARTICULO||'',''||:P556_IND_INVENTARIO_CPH||'
||''',''||:P556_COD_SUCURSAL_AUX||'',''||null||'',''||null||'',''||''N''||'''')) f_url_1',
'                INTO :P556_URL',
'                 FROM DUAL;                                                     ',
'       :P556_BANDERA:=''1'';',
'    ELSE',
'        IF :p556_NRO_COMPROBANTE IS NOT NULL THEN',
'            if :p556_ind_inventario_cph=''S'' THEN',
'                :P556_BANDERA:=''2'';',
'                    SELECT APEX_PAGE.GET_URL (  p_page   => 814,',
'                                    p_items  => ''P814_P_TIP_COMPROBANTE,P814_P_SER_COMPROBANTE,P814_P_NRO_COMPROBANTE,P814_P_COD_EMPRESA,P814_P_BLOQUE,P814_P_SUB_BLOQUE,P814_P_COD_ARTICULO,P814_P_IND_INVENTARIO_CPH,P814_P_COD_SUCURSAL,P814_EJECUTAR_R'
||'EPORTE_1,P814_EJECUTAR_REPORTE_2,P814_EJECUTAR'',',
'                                    p_values => (''''||:P556_TIP_COMPROBANTE||'',''||:P556_SER_COMPROBANTE||'',''||:P556_NRO_COMPROBANTE||'',''||:P556_COD_EMPRESA||'',''||:P556_BLOQUE||'',''||:P556_SUB_BLOQUE||'',''||:P556_COD_ARTICULO||'',''||:P556_IND_INVENTARIO_C'
||'PH||'',''||:P556_COD_SUCURSAL_AUX||'',''||null||'',''||null||'',''||''N''||'''')) f_url_1',
'                    INTO :P556_URL',
'                     FROM DUAL;  ',
'',
'            else',
'                :P556_BANDERA:=''3'';',
'                SELECT APEX_PAGE.GET_URL (  p_page   => 814,',
'                                p_items  => ''P814_P_TIP_COMPROBANTE,P814_P_SER_COMPROBANTE,P814_P_NRO_COMPROBANTE,P814_P_COD_EMPRESA,P814_P_BLOQUE,P814_P_SUB_BLOQUE,P814_P_COD_ARTICULO,P814_P_IND_INVENTARIO_CPH,P814_P_COD_SUCURSAL,P814_EJECUTAR_REPOR'
||'TE_1,P814_EJECUTAR_REPORTE_2,P814_EJECUTAR'',',
'                                p_values => (''''||:P556_TIP_COMPROBANTE||'',''||:P556_SER_COMPROBANTE||'',''||:P556_NRO_COMPROBANTE||'',''||:P556_COD_EMPRESA||'',''||:P556_BLOQUE||'',''||:P556_SUB_BLOQUE||'',''||:P556_COD_ARTICULO||'',''||:P556_IND_INVENTARIO_CPH||'
||''',''||:P556_COD_SUCURSAL_AUX||'',''||null||'',''||null||'',''||''N''||'''')) f_url_1',
'                INTO :P556_URL',
'                 FROM DUAL;  ',
'            end if;',
'       ',
'       end if;',
'     ',
'    END IF;',
'end;'))
,p_attribute_02=>'P556_FEC_COMPROBANTE,P556_NRO_COMPROBANTE,P556_INVENTARIOOT,P556_TIP_COMPROBANTE,P556_SER_COMPROBANTE,P556_BLOQUE,P556_SUB_BLOQUE,P556_COD_ARTICULO,P556_COD_EMPRESA,P556_COD_SUCURSAL_AUX'
,p_attribute_03=>'P556_BANDERA,P556_URL'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(251383275098991445)
,p_event_id=>wwv_flow_imp.id(251383026543991443)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'null;'
,p_attribute_02=>'P556_URL,P556_IND_INVENTARIO_CPH'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(251383398395991446)
,p_event_id=>wwv_flow_imp.id(251383026543991443)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT APEX_PAGE.GET_URL (  p_page   => 814,',
'                            p_items  => ''P814_P_TIP_COMPROBANTE,P814_P_SER_COMPROBANTE,P814_P_NRO_COMPROBANTE,P814_P_COD_EMPRESA,P814_P_BLOQUE,P814_P_SUB_BLOQUE,P814_P_COD_ARTICULO, P814_P_IND_INVENTARIO_CPH,P814_EJECUTAR_REPORTE_1,P814_EJECUTAR_REPO'
||'RTE_2,P814_EJECUTAR'',',
'                            p_values => (''''||:P556_TIP_COMPROBANTE||'',''||:P556_SER_COMPROBANTE||'',''||:P556_NRO_COMPROBANTE||'',''||:P556_COD_EMPRESA||'',''||:P556_BLOQUE||'',''||:P556_SUB_BLOQUE||'',''||:P556_COD_ARTICULO||'',''||:P556_IND_INVENTARIO_CPH||'',''|'
||'|null||'',''||null||'',''||''N''||'''')) f_url_1',
'    INTO :P556_URL',
'     FROM DUAL;',
'',
''))
,p_attribute_02=>'P556_NRO_COMPROBANTE,P556_TIP_COMPROBANTE,P556_SER_COMPROBANTE'
,p_attribute_03=>'P556_URL'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_server_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(251383448317991447)
,p_event_id=>wwv_flow_imp.id(251383026543991443)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT APEX_PAGE.GET_URL (  p_page   => 562,',
'                            p_items  => ''P558_P_TIP_COMPROBANTE,P558_P_SER_COMPROBANTE,P558_P_NRO_COMPROBANTE,P558_P_COD_EMPRESA,P558_P_BLOQUE,P558_P_SUB_BLOQUE,P558_P_COD_ARTICULO,P558_P_IND_INVENTARIO_CPH'',',
'                            p_values => (''''||:P556_TIP_COMPROBANTE||'',''||:P556_SER_COMPROBANTE||'',''||:P556_NRO_COMPROBANTE||'',''||:P556_COD_EMPRESA||'',''||:P556_BLOQUE||'',''||:P556_SUB_BLOQUE||'',''||:P556_COD_ARTICULO||'',''||:P556_IND_INVENTARIO_CPH||''''))'
||' f_url_1',
'    INTO :P556_URL',
'     FROM DUAL;',
''))
,p_attribute_02=>'P556_NRO_COMPROBANTE,P556_TIP_COMPROBANTE,P556_SER_COMPROBANTE'
,p_attribute_03=>'P556_URL'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_server_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(251383553636991448)
,p_event_id=>wwv_flow_imp.id(251383026543991443)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var url = apex.item("P556_URL").getValue();',
'apex.navigation.redirect(url);',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(181157374338495125)
,p_name=>'DA_GENERAR'
,p_event_sequence=>310
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(178339578953924613)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(181157478213495126)
,p_event_id=>wwv_flow_imp.id(181157374338495125)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P556_ERR:=null;',
':P556_SENIAL_GENERAR:=null;',
'begin',
'		IF nvl(:P556_IND_INVENTARIO_CPH,''N'')=''S'' or nvl(:P556_inventarioot,''N'')=''S'' THEN',
'			NULL;',
'			ELSE',
'				STGEINMO.PR_ACTUALIZAR_CANTIDAD(PI_COD_EMPRESA => :P556_cod_empresa,',
'                                    PI_COD_ARTICULO => :P556_cod_articulo, ',
'                                    PI_CANTIDAD => :P556_cantidad, ',
'                                    PI_COSTO => :P556_costo,',
'                                    PI_COD_SUCURSAL => :P556_cod_sucursal_aux,',
'                                    PI_IND_INVENTARIO_CPH => :P556_IND_INVENTARIO_CPH); ',
'			END IF;',
'			if nvl(:P556_inventarioot,''N'')<>''S''  then',
'			 				STGEINMO.PR_ACTUALIZAR_CANTIDAD(PI_COD_EMPRESA => :P556_cod_empresa,',
'                                    PI_COD_ARTICULO => :P556_cod_articulo, ',
'                                    PI_CANTIDAD => :P556_cantidad, ',
'                                    PI_COSTO => :P556_costo,',
'                                    PI_COD_SUCURSAL => :P556_cod_sucursal_aux,',
'                                    PI_IND_INVENTARIO_CPH => :P556_IND_INVENTARIO_CPH); ',
'			end if;',
'	commit;',
' ',
'--if :P556_id_inventury is null then ',
'					GEN_INV_MOVIL_crea( :P556_cod_empresa, ',
'											 :P556_TIP_COMPROBANTE,',
'				               :P556_SER_COMPROBANTE,',
'				               :P556_NRO_COMPROBANTE,',
'				               null,',
'				               :P556_MENSAJE)  ;',
' 				               ',
'	if :P556_MENSAJE is NULL THEN',
'		:P556_ERR:=''Generacion Exitosa'';',
'        :P556_SENIAL_GENERAR:=''1'';',
'	else ',
'		:P556_ERR:=''Error'';',
'    END IF;',
' --gen_inv_movil_abre( :P556_NRO_COMPROBANTE);',
'	/*			IF v_mensaje IS NULL THEN														',
'						MESSAGE(''Generacion Exitosa'');',
'						MESSAGE(''Generacion Exitosa'');',
'						SET_BLOCK_PROPERTY(''B_CABECERA'', DEFAULT_WHERE, ''NRO_COMPROBANTE=''||:P556_NRO_COMPROBANTE);				',
'						go_block(''B_CABECERA'');									',
'						execute_query;	',
'						SET_BLOCK_PROPERTY(''B_CABECERA'', DEFAULT_WHERE, '''');',
'					--	execute_query;	',
'				ELSE					',
'				',
'						MESSAGE(''Error: '' );',
'				END IF;  */',
'end;',
'',
'',
'	:P556_MENSAJE1 :=NULL;',
'	:P556_MENSAJE2 :=NULL;',
'begin',
'	sp_crea_entidades_inventory(''InsertOrUpdateInventory'',',
'                                                     :P556_cod_empresa,',
'                                                    :P556_TIP_COMPROBANTE,',
'				                                            :P556_SER_COMPROBANTE,',
'				                                            :P556_NRO_COMPROBANTE,',
'                                                     :P556_USUARIO ,',
'                                                     null ,',
'',
'                                                     :P556_MENSAJE1 ) ;',
'                                                     ',
'	sp_crea_entidades_inventory(''ReleaseInventory'',',
'                                                     :P556_cod_empresa,',
'                                                    :P556_NRO_COMPROBANTE,',
'				                                            :P556_cod_sucursal,',
'				                                            null,',
'                                                     null ,',
'                                                     null ,',
'',
'                                                     :P556_MENSAJE2 ) ; ',
'                                                ',
'               :P556_ERR:='' Generacion Exitosa '';',
'               :P556_SENIAL_GENERAR:=''1'';',
'exception',
'	when others then null;',
'	',
'                                                     ',
'                                                     ',
'	end;'))
,p_attribute_02=>'P556_IND_INVENTARIO_CPH,P556_INVENTARIOOT,P556_COD_EMPRESA,P556_COD_ARTICULO,P556_MENSAJE,P556_MENSAJE1,P556_MENSAJE2,P556_SER_COMPROBANTE,P556_NRO_COMPROBANTE,P556_TIP_COMPROBANTE'
,p_attribute_03=>'P556_ERR,P556_COSTO,P556_CANTIDAD,P556_SENIAL_GENERAR'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(181157808305495130)
,p_name=>'DA_CERRAR'
,p_event_sequence=>320
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(178339680481924614)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(188211077534298008)
,p_event_id=>wwv_flow_imp.id(181157808305495130)
,p_event_result=>'TRUE'
,p_action_sequence=>5
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P556_FECHA_CIERRE IS NOT NULL THEN',
'',
'raise_application_error(-20201, ''No es posible volver a cerrar el invetario porque ya fue cerrado anteriormente'');',
'  :P556_ERR:='' Rrror  ''||:P556_MENSAJE1;',
'                :P556_SENIAL_GENERAR:=NULL;',
'  END IF;',
'',
'',
'',
'  IF NVL(:P556_PERMITE_CERRAR_TODO,''N'')<>''S'' THEN',
'IF NVL(:P556_PERMITE_CERRAR,''N'')<>''S'' THEN',
'raise_application_error(-20201, ''No cuenta con permiso para cerrar inventarios'');',
'  :P556_ERR:='' Rrror  ''||:P556_MENSAJE1;',
'                :P556_SENIAL_GENERAR:=NULL;',
'else',
'  if :P556_USUARIO_CREADOR<>:APP_USER THEN',
'  raise_application_error(-20201, ''No cuenta con permiso para cerrar inventarios no creado con su usuario'');',
'  :P556_ERR:='' Rrror  ''||:P556_MENSAJE1;',
'                :P556_SENIAL_GENERAR:=NULL;',
'  END IF;',
'',
'',
'END IF;',
'  END IF;'))
,p_attribute_02=>'P556_FECHA_CIERRE,P556_PERMITE_CERRAR,P556_PERMITE_CERRAR_TODO'
,p_attribute_03=>'P556_ERR,P556_SENIAL_GENERAR'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(181157909878495131)
,p_event_id=>wwv_flow_imp.id(181157808305495130)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'	--v_mensaje  long;',
'begin ',
'     				INVMOV_OPENCLOSE(:P556_NRO_COMPROBANTE,''C'');',
'     	',
'						:P556_ERR:=''Inventario Cerrado'';',
'                        :P556_SENIAL_GENERAR:=NULL;',
'		 ',
'exception',
'	when others then',
'	null;',
'end;	',
'',
'',
'',
'	:P556_MENSAJE1 :=NULL;',
'	:P556_MENSAJE2 :=NULL;',
'begin',
' ',
'                                                     ',
'	sp_crea_entidades_inventory(''CloseInventory'',',
'                                                     :P556_cod_empresa,',
'                                                    :P556_NRO_COMPROBANTE,',
'				                                            :P556_cod_sucursal_aux,',
'				                                            null,',
'                                                     null ,',
'                                                     null ,',
'',
'                                                     :P556_MENSAJE2  ) ; ',
'                                                      	--	:P556_ERR:=:P556_MENSAJE1'' Generacion Exitosa '':P556_MENSAJE1);',
'exception',
'	when others then null;',
'	',
'                                                     ',
'                                                     ',
'end;',
'',
'',
'	:P556_MENSAJE1 :=NULL;',
'	:P556_MENSAJE2 :=NULL;',
'begin',
'	sp_crea_entidades_inventory(''CloseInventory'', :P556_NRO_COMPROBANTE,:P556_cod_sucursal_aux,null,null,null,null,:P556_MENSAJE1 ) ; ',
'                :P556_ERR:='' Cierre Exitoso ''||:P556_MENSAJE1;',
'                :P556_SENIAL_GENERAR:=NULL;',
'exception',
'	when others then null;',
'	',
'                                                     ',
'                                                     ',
'	end;'))
,p_attribute_02=>'P556_NRO_COMPROBANTE,P556_MENSAJE1,P556_MENSAJE2,P556_COD_EMPRESA,P556_COD_SUCURSAL_AUX'
,p_attribute_03=>'P556_ERR,P556_SENIAL_GENERAR'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(179223700842092335)
,p_name=>'DA_ACCION_CONSULTA'
,p_event_sequence=>330
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P556_ACCION_CONSULTA'
,p_condition_element=>'P556_ACCION_CONSULTA'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'1'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(179223875337092336)
,p_event_id=>wwv_flow_imp.id(179223700842092335)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(178339028656924608)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(179224203383092340)
,p_event_id=>wwv_flow_imp.id(179223700842092335)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/*STGEINMO.PR_OBTENER_DETALLE(PI_COD_EMPRESA => :P556_COD_EMPRESA,',
'                              PI_TIP_COMPROBANTE => :P556_TIP_COMPROBANTE, ',
'                              PI_SER_COMPROBANTE => :P556_SER_COMPROBANTE, ',
'                              PI_NRO_COMPROBANTE => :P556_NRO_COMPROBANTE);*/',
'',
'',
':P556_ERR:=null;',
'BEGIN',
'select ',
'      -- COD_SUCURSAL,',
'       FEC_COMPROBANTE,',
'       POLITICA_INVENTARIO,',
'       ID_INVENTURY,',
'       FECHA_ACTUALIZA,',
'       USUARIO_ACTUALIZA,',
'       USUARIO_CIERRE,',
'       FECHA_CIERRE,',
'       SUCURSAL,',
'       OBSERVACION,',
'       ID_INVENTURY_LOC,',
'       INVENTARIOOT,',
'       IND_INVENTARIO_CPH,',
'       IND_ABIERTO,',
'       USUARIO,',
'       NRO_PLAN_INVENTARIO,',
'       NRO_INVENTARIO_RECONTEO,',
'       ES_RECONTEO ,usuario_actualiza,',
'       INVENTARIOOT,',
'         TIPO_INVENTARIO,',
'                        AREA_RESPONSABLE,',
'                        UBICACION_INVENTARIO, USUARIO_ALTA, FECHA_ALTA',
'  into',
'       --:P556_COD_SUCURSAL_AUX,',
'        :P556_FEC_COMPROBANTE,',
'        :P556_POLITICA_INVENTARIO,',
'        :P556_ID_INVENTURY,',
'        :P556_FECHA_ACTUALIZADA,',
'        :P556_USUARIO_ACTUALIZA,',
'        :P556_USUARIO_CIERRE,',
'        :P556_FECHA_CIERRE,',
'        :P556_SUCURSAL,',
'        :P556_OBSERVACION,',
'        :P556_ID_INVENTURY_LOC,',
'        :P556_INVENTARIOOT,',
'        :P556_IND_INVENTARIO_CPH,',
'        :P556_IND_ABIERTO,',
'        :P556_USUARIO,',
'        :P556_NRO_PLAN_INVENTARIO,',
'        :P556_NRO_INVENTARIO_RECONTEO,',
'        :P556_ES_RECONTEO ,',
'        :P556_USUARIO_CREADOR,',
'        :P556_INVENTARIOT, :P556_TIPO_INVENTARIO,:P556_AREA_RRHH,:P556_UBICACION,:P556_USUARIO_ALTA,:P556_FECHA_ALTA',
'  from ST_GENERACION_INVENTARIO                           ',
'    WHERE cod_empresa=:P_COD_EMPRESA',
'  and NRO_COMPROBANTE = :P556_NRO_COMPROBANTE',
'  and SER_COMPROBANTE = :P556_SER_COMPROBANTE',
'  and TIP_COMPROBANTE = :P556_TIP_COMPROBANTE;',
' exception',
'    when others then ',
'    apex_Debug.error(''armador coleccion:''||sqlerrm);',
'    :P556_ERR:=''El codigo que desea buscar no existe'';',
'END;'))
,p_attribute_02=>'P556_TIP_COMPROBANTE,P556_SER_COMPROBANTE,P556_NRO_COMPROBANTE,P556_COD_EMPRESA'
,p_attribute_03=>'P556_FEC_COMPROBANTE, P556_POLITICA_INVENTARIO, P556_ID_INVENTURY, P556_FECHA_ACTUALIZA, P556_USUARIO_CREADOR, P556_USUARIO_CIERRE, P556_FECHA_CIERRE, P556_SUCURSAL, P556_OBSERVACION, P556_ID_INVENTURY_LOC, P556_INVENTARIOOT, P556_IND_INVENTARIO_CPH,'
||' P556_IND_ABIERTO, P556_USUARIO, P556_NRO_PLAN_INVENTARIO, P556_NRO_INVENTARIO_RECONTEO,P556_ERR,P556_FECHA_ACTUALIZADA,P556_FECHA_CIERRE,P556_FECHA_ACTUALIZADA,P556_USUARIO_CREADOR,P556_FECHA_ACTUALIZA,P556_INVENTARIOT,P556_TIPO_INVENTARIO,P556_AREA'
||'_RRHH,P556_UBICACION,P556_FECHA_ALTA'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(183048425321013045)
,p_event_id=>wwv_flow_imp.id(179223700842092335)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
' ',
'BEGIN',
'select ',
'        COD_SUCURSAL ',
'      ',
'  into :P556_COD_SUCURSAL_AUX ',
'  from ST_GENERACION_INVENTARIO                           ',
'    WHERE cod_empresa=:P_COD_EMPRESA',
'  and NRO_COMPROBANTE = :P556_NRO_COMPROBANTE',
'  and SER_COMPROBANTE = :P556_SER_COMPROBANTE',
'  and TIP_COMPROBANTE = :P556_TIP_COMPROBANTE;',
' exception',
'    when others then ',
'    apex_Debug.error(''armador coleccion:''||sqlerrm);',
'    :P556_ERR:=''El codigo que desea buscar no existe'';',
'END;'))
,p_attribute_02=>'P556_TIP_COMPROBANTE,P556_SER_COMPROBANTE,P556_NRO_COMPROBANTE,P556_COD_EMPRESA'
,p_attribute_03=>'P556_COD_SUCURSAL_AUX'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(179224313097092341)
,p_event_id=>wwv_flow_imp.id(179223700842092335)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(85085224937723607)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(179224424888092342)
,p_event_id=>wwv_flow_imp.id(179223700842092335)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(85085303628723608)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(179223932574092337)
,p_name=>'DA_SET_CONSULTA'
,p_event_sequence=>340
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P556_ACCION_CONSULTA'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(179224070705092338)
,p_event_id=>wwv_flow_imp.id(179223932574092337)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_02=>'P556_ACCION_CONSULTA'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(179224515254092343)
,p_name=>'DA_ACCION_INSERT'
,p_event_sequence=>350
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P556_ACCION_CONSULTA'
,p_condition_element=>'P556_ACCION_CONSULTA'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'3'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(179224690268092344)
,p_event_id=>wwv_flow_imp.id(179224515254092343)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(85087523874723630)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(179224784988092345)
,p_event_id=>wwv_flow_imp.id(179224515254092343)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(180074672287026320)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(180648266210332116)
,p_event_id=>wwv_flow_imp.id(179224515254092343)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'--:P556_FECHA_ACTUALIZADA := to_date(SYSDATE,''dd/MM/YYYY'');',
':P556_NRO_COMPROBANTE:=STGEINMO.FN_NRO_COMPROBANTE();',
'',
''))
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(180648314506332117)
,p_event_id=>wwv_flow_imp.id(179224515254092343)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'apex_collection.create_or_truncate_collection(p_collection_name => ''COL_DET_STEGEINMO'');'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(180648457170332118)
,p_event_id=>wwv_flow_imp.id(179224515254092343)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P556_COD_SUCURSAL_AUX:=NULL;',
':P556_FEC_COMPROBANTE:=to_date(SYSDATE,''dd/mm/yyyy'');',
':P556_POLITICA_INVENTARIO:=''FREE''; ',
':P556_ID_INVENTURY:=NULL;',
':P556_FECHA_ACTUALIZA:=NULL;',
':P556_USUARIO_ACTUALIZA:=NULL;',
':P556_USUARIO_CIERRE:=NULL;',
':P556_FECHA_CIERRE:=NULL;',
':P556_SUCURSAL:=NULL;',
':P556_OBSERVACION:=NULL;',
':P556_ID_INVENTURY_LOC:=NULL;',
':P556_INVENTARIOOT:=NULL;',
':P556_IND_INVENTARIO_CPH:=NULL;',
':P556_IND_ABIERTO:=NULL;',
':P556_USUARIO:=NULL;',
':P556_NRO_PLAN_INVENTARIO:=NULL;',
':P556_NRO_INVENTARIO_RECONTEO:=NULL;',
':P556_ES_RECONTEO:=NULL;',
':P556_SER_COMPROBANTE:=''A'';',
':P556_IND_INVENTARIO_CPH:=''N'';',
':P556_TIPO_INVENTARIO:=NULL;',
':P556_AREA_RRHH :=NULL;',
':P556_UBICACION:=NULL;'))
,p_attribute_03=>'P556_COD_SUCURSAL_AUX,P556_FEC_COMPROBANTE,P556_POLITICA_INVENTARIO,P556_ID_INVENTURY,P556_FECHA_ACTUALIZA,P556_USUARIO_CREADOR,P556_USUARIO_CIERRE,P556_FECHA_CIERRE,P556_SUCURSAL,P556_OBSERVACION,P556_ID_INVENTURY_LOC,P556_INVENTARIOOT,P556_IND_INVE'
||'NTARIO_CPH,P556_IND_ABIERTO,P556_USUARIO,P556_NRO_PLAN_INVENTARIO,P556_NRO_INVENTARIO_RECONTEO,P556_ES_RECONTEO,P556_SER_COMPROBANTE,P556_IND_INVENTARIO_CPH,P556_POLITICA_INVENTARIO,P556_TIPO_INVENTARIO,P556_UBICACION,P556_AREA_RRHH'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(179225226555092350)
,p_event_id=>wwv_flow_imp.id(179224515254092343)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(85085224937723607)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(181286118185968601)
,p_event_id=>wwv_flow_imp.id(179224515254092343)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(85085303628723608)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(181158292719495134)
,p_name=>'DA_COD_ART_CORTO'
,p_event_sequence=>360
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P556_COD_ART_CORTO'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(181158363164495135)
,p_event_id=>wwv_flow_imp.id(181158292719495134)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'   IF :P556_IND_INVENTARIO_CPH=''S'' THEN',
'        BEGIN',
'            select cod_articulo',
'            into :P556_COD_ARTICULO',
'                from v_articulos_cph',
'             where  cod_art_corto = :P556_COD_ART_CORTO;',
'        EXCEPTION',
'        when others then',
'        :P556_COD_ARTICULO := null;',
'        END;',
'',
'    else',
'    	',
'        BEGIN',
'            select cod_articulo',
'            into :P556_COD_ARTICULO',
'                from  st_articulos',
'             where  cod_art_corto = :P556_COD_ART_CORTO',
'              and      cod_empresa = :P_COD_EMPRESA;',
'    	EXCEPTION',
'    	  when others then',
'    	     :P556_COD_ARTICULO := null;',
'    	END;',
'    end if;'))
,p_attribute_02=>'P556_COD_ART_CORTO'
,p_attribute_03=>'P556_COD_ARTICULO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(186563743422242601)
,p_name=>'DA_ACCION_OCULTAR'
,p_event_sequence=>370
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P556_FECHA_ACTUALIZADA'
,p_condition_element=>'P556_FECHA_ACTUALIZADA'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(186564684132242610)
,p_event_id=>wwv_flow_imp.id(186563743422242601)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(178338944018924607)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(186565162115242615)
,p_event_id=>wwv_flow_imp.id(186563743422242601)
,p_event_result=>'FALSE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(180074672287026320)
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
 p_id=>wwv_flow_imp.id(186565386444242617)
,p_event_id=>wwv_flow_imp.id(186563743422242601)
,p_event_result=>'FALSE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(178339578953924613)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(186565587498242619)
,p_event_id=>wwv_flow_imp.id(186563743422242601)
,p_event_result=>'FALSE'
,p_action_sequence=>40
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(178339680481924614)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(186564040572242604)
,p_event_id=>wwv_flow_imp.id(186563743422242601)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(178338944018924607)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(186565002595242614)
,p_event_id=>wwv_flow_imp.id(186563743422242601)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(180074672287026320)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(186565284279242616)
,p_event_id=>wwv_flow_imp.id(186563743422242601)
,p_event_result=>'TRUE'
,p_action_sequence=>80
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(178339578953924613)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(186565469001242618)
,p_event_id=>wwv_flow_imp.id(186563743422242601)
,p_event_result=>'TRUE'
,p_action_sequence=>90
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(178339680481924614)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(188210808996298006)
,p_name=>'da_fecha_cierre'
,p_event_sequence=>380
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P556_FECHA_CIERRE'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(188210931211298007)
,p_event_id=>wwv_flow_imp.id(188210808996298006)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'null;'
,p_attribute_02=>'P556_FECHA_CIERRE'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(187369782008765347)
,p_name=>'DA_ACCION_OCULTAR_cierre'
,p_event_sequence=>390
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P556_FECHA_CIERRE'
,p_condition_element=>'P556_FECHA_CIERRE'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(188210387854298001)
,p_event_id=>wwv_flow_imp.id(187369782008765347)
,p_event_result=>'FALSE'
,p_action_sequence=>40
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(178339680481924614)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(188210717945298005)
,p_event_id=>wwv_flow_imp.id(187369782008765347)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(178339680481924614)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(181159319040495145)
,p_name=>'DA_ACEPTAR'
,p_event_sequence=>400
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(181159176936495143)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(181159440428495146)
,p_event_id=>wwv_flow_imp.id(181159319040495145)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'  IF :P556_cantidad_aux IS NOT NULL AND :P556_cod_articulo_aux IS NOT NULL THEN',
'    :P556_vdatos := NULL;',
'    :P556_vplan  := NULL;',
'    begin',
'    ',
'      BEGIN',
'        SELECT NUMERO_PLAN',
'          into :P556_vplan',
'          FROM ST_PLAN_INVENTARIO_DET',
'         WHERE COD_EMPRESA = :P556_COD_EMPRESA',
'           AND TIP_COMPROBANTE = :P556_TIP_COMPROBANTE',
'           AND SER_COMPROBANTE = :P556_SER_COMPROBANTE',
'           AND NRO_COMPROBANTE = :P556_NRO_COMPROBANTE;',
'      EXCEPTION',
'        WHEN OTHERS THEN',
'          :P556_vplan := NULL;',
'        ',
'      END;',
'      if nvl(:P556_IND_INVENTARIO_CPH, ''N'') = ''S'' THEN',
'      ',
'        sp_invdetmanualcph(1,',
'                           nvl(:P556_id_inventury, :P556_nro_comprobante),',
'                           :P556_nro_comprobante,',
'                           ''manual'',',
'                           :P_COD_USUARIO,',
'                           to_char(sysdate, ''yy-mm-dd hh24:mi:ss''),',
'                           :P556_cod_articulo_aux,',
'                           :P556_cod_articulo_aux,',
'                           :P556_cod_articulo_aux,',
'                           :P556_cantidad_aux,',
'                           ''carga manual'',',
'                           null,',
'                           :P556_vdatos);',
'      ',
'      ELSIF nvl(:P556_IND_INVENTARIO_CPH, ''N'') = ''T'' THEN',
'        sp_invdetmanualtf(1,',
'                          nvl(:P556_id_inventury, :P556_nro_comprobante),',
'                          :P556_nro_comprobante,',
'                          ''manual'',',
'                          :P_COD_USUARIO,',
'                          to_char(sysdate, ''yy-mm-dd hh24:mi:ss''),',
'                          :P556_cod_articulo_aux,',
'                          :P556_cod_articulo_aux,',
'                          :P556_cod_articulo_aux,',
'                          :P556_cantidad_aux,',
'                          ''carga manual'',',
'                          null,',
'                          :P556_vdatos);',
'      ELSE',
'      ',
'        SP_INVENTARIO_DET_manual(1,',
'                                 nvl(:P556_id_inventury,',
'                                     :P556_nro_comprobante),',
'                                 :P556_nro_comprobante,',
'                                 ''manual'',',
'                                 :P_COD_USUARIO,',
'                                 to_char(sysdate, ''yy-mm-dd hh24:mi:ss''),',
'                                 :P556_cod_articulo_aux,',
'                                 :P556_cod_articulo_aux,',
'                                 :P556_cod_articulo_aux,',
'                                 :P556_cantidad_aux,',
'                                 ''carga manual'',',
'                                 null,',
'                                 :P556_vdatos);',
'      ',
'      END IF;',
'      :P556_ERR := :P556_vdatos;',
'      if :P556_vdatos = ''Insercion Correcta'' then',
'        :P556_cod_articulo_aux  := null;',
'        :P556_COD_aRT_CORTO_AUX := null;',
'        :P556_DESC_ARTICULO_AUX := null;',
'        :P556_cantidad_aux      := null;',
'      ',
'      end if;',
'    end;',
'  ELSE',
'    :P556_ERR := ''Debe Cargar la cantidad del producto'';',
'  END IF;',
'end;',
''))
,p_attribute_02=>'P556_VDATOS,P556_VPLAN,P556_CANTIDAD_AUX,P556_COD_ARTICULO_AUX,P556_NRO_COMPROBANTE,P556_ID_INVENTURY,P556_IND_INVENTARIO_CPH,P556_TIP_COMPROBANTE,P556_SER_COMPROBANTE,P556_COD_EMPRESA'
,p_attribute_03=>'P556_ERR'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(181159787057495149)
,p_name=>'DA_CANCEL'
,p_event_sequence=>410
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(181159261500495144)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(181159885569495150)
,p_event_id=>wwv_flow_imp.id(181159787057495149)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(181158527953495137)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(181641187167487502)
,p_name=>'da_cn'
,p_event_sequence=>420
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(181641062303487501)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(181641209046487503)
,p_event_id=>wwv_flow_imp.id(181641187167487502)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(181158527953495137)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(181641484701487505)
,p_name=>'DA_ART_CORTO_AUX'
,p_event_sequence=>430
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P556_COD_ART_CORTO_AUX'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(181641572696487506)
,p_event_id=>wwv_flow_imp.id(181641484701487505)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P556_COD_ARTICULO_AUX'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
' ',
'            select cod_articulo',
'           ',
'                from v_articulos_cph',
'             where  cod_art_corto = :P556_COD_ART_CORTO_aux',
'             AND :P556_IND_INVENTARIO_CPH=''S''',
'             UNION ALL',
'            select cod_articulo',
'       ',
'                from v_articulos_TF',
'             where  cod_art_corto = :P556_COD_ART_CORTO_aux',
'               AND :P556_IND_INVENTARIO_CPH=''T''',
'         UNION ALL',
'            select cod_articulo',
'           ',
'                from  st_articulos',
'             where  cod_art_corto = :P556_COD_ART_CORTO_aux',
'              and      cod_empresa = :P_COD_EMPRESA',
'               AND :P556_IND_INVENTARIO_CPH=''N'''))
,p_attribute_07=>'P556_COD_ART_CORTO_AUX,P_COD_EMPRESA'
,p_attribute_08=>'N'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(181641652006487507)
,p_name=>'DA_ART_AUX'
,p_event_sequence=>440
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P556_COD_ARTICULO_AUX'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(181641898730487509)
,p_event_id=>wwv_flow_imp.id(181641652006487507)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    BEGIN',
'    IF :P556_IND_INVENTARIO_CPH=''S'' THEN',
'    	BEGIN',
'    	  select descripcion',
'    	    into :P556_desc_articulo_aux',
'    	    from v_articulos_cph',
'    	   where  cod_articulo = :P556_cod_articulo_aux;',
'    	EXCEPTION',
'    	  when others then',
unistr('    	    :P556_desc_articulo_aux := ''Error en la tabla de Art\00EDculos cph''||SQLERRM ||:P556_COD_ART_CORTO_AUX;'),
'    	END;',
'      BEGIN',
'   	SELECT   SUM(E.CANT_DISPON)CANT , SUM(E.CANT_DISPON)*max(nvl(a.costo_prom,1))',
'  		INTO 	:P556_CANTIDAD_aux, :P556_costo_aux',
'			        FROM ST_ARTICULOS@DBLINK_CPH A,',
'			              ST_EXISTENCIA_ART@DBLINK_CPH E',
'			        WHERE A.COD_EMPRESA=:P_COD_EMPRESA',
'			        AND   E.COD_EMPRESA=A.COD_EMPRESA     ',
'			        AND   E.COD_ARTICULO=A.COD_ARTICULO   ',
'			        AND 	A.COD_ARTICULO= :P556_COD_ARTICULO_aux;',
'    END;',
'     ELSIF    :P556_IND_INVENTARIO_CPH=''T'' THEN',
'    	BEGIN',
'    	  select descripcion',
'    	    into :P556_desc_articulo_aux',
'    	    from v_articulos_TF',
'    	   where  cod_articulo = :P556_cod_articulo_aux;',
'    	EXCEPTION',
'    	  when others then',
unistr('    	    :P556_desc_articulo_aux := ''Error en la tabla de Art\00EDculos  tf'' ||sqlerrm||:P556_COD_ART_CORTO_AUX;'),
'    	END; ',
'',
'BEGIN',
'   	SELECT   SUM(E.CANT_DISPON)CANT , SUM(E.CANT_DISPON)*max(nvl(a.costo_prom,1))',
'  		INTO 	:P556_CANTIDAD_aux, :P556_costo_aux',
'			        FROM ST_ARTICULOS@DBLINK_TF A,',
'			              ST_EXISTENCIA_ART@DBLINK_TF E',
'			        WHERE A.COD_EMPRESA=:P_COD_EMPRESA',
'			        AND   E.COD_EMPRESA=A.COD_EMPRESA   ',
'			        AND   E.COD_ARTICULO=A.COD_ARTICULO  ',
'			        AND 	A.COD_ARTICULO= :P556_COD_ARTICULO_aux;',
'    END;',
'',
' ',
'    else',
'    	BEGIN',
'    	  select descripcion',
'    	    into :P556_desc_articulo_aux',
'    	    from st_articulos',
'    	   where cod_empresa = :P_cod_empresa',
'    	     and cod_articulo = :P556_cod_articulo_aux;',
'    	EXCEPTION',
'    	  when others then',
unistr('    	    :P556_desc_articulo_aux := ''Error en la tabla de Art\00EDculos  ngo'' ||sqlerrm||:P556_COD_ART_CORTO_AUX;'),
'    	END;',
'',
'       BEGIN',
'   	SELECT   SUM(E.CANT_DISPON)CANT , SUM(E.CANT_DISPON)*max(nvl(a.costo_prom,1))',
'  		INTO 	:P556_CANTIDAD_aux, :P556_costo_aux',
'			        FROM ST_ARTICULOS@DBLINK_CPH A,',
'			              ST_EXISTENCIA_ART@DBLINK_CPH E',
'			        WHERE A.COD_EMPRESA=:P_COD_EMPRESA',
'			        AND   E.COD_EMPRESA=A.COD_EMPRESA    ',
'			        AND   E.COD_ARTICULO=A.COD_ARTICULO ',
'			        AND 	A.COD_ARTICULO= :P556_COD_ARTICULO_aux;',
'    END;',
'    end if;',
'    END;',
' ',
'',
' END;'))
,p_attribute_02=>'P556_COD_ARTICULO_AUX,P556_IND_INVENTARIO_CPH'
,p_attribute_03=>'P556_DESC_ARTICULO_AUX'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(181642197451487512)
,p_name=>'DA_MENSAJE_ERROR'
,p_event_sequence=>450
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P556_MENSAJE_ERROR'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(181642219988487513)
,p_event_id=>wwv_flow_imp.id(181642197451487512)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'&P556_MENSAJE_ERROR.'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P556_MENSAJE_ERROR'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(183048164051013042)
,p_name=>'da_nombre_sucursal'
,p_event_sequence=>460
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P556_COD_SUCURSAL_AUX'
,p_condition_element=>'P556_NRO_COMPROBANTE'
,p_triggering_condition_type=>'NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(183048284951013043)
,p_event_id=>wwv_flow_imp.id(183048164051013042)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P556_SUCURSAL'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select cod_sucursal||'' - ''||descripcion from sucursales where cod_empresa = :P_cod_empresa',
'AND NVL(:P556_IND_INVENTARIO_CPH,''N'')=''N'' ',
'and COD_SUCURSAL=:P556_COD_SUCURSAL_AUX',
'UNION ALL  ',
'select cod_sucursal||'' - ''||descripcion from sucursales where cod_empresa = ''18''',
'AND NVL(:P556_IND_INVENTARIO_CPH,''N'')=''B'' ',
'and COD_SUCURSAL=:P556_COD_SUCURSAL_AUX',
'union all ',
'     Select  cod_sucursal||'' - ''||descripcion',
'       from v_sucursales_cph',
'      where cod_empresa  = :P_cod_empresa      ',
'AND NVL(:P556_IND_INVENTARIO_CPH,''N'')=''S''',
'and COD_SUCURSAL=:P556_COD_SUCURSAL_AUX',
'union all',
'     Select  cod_sucursal||'' - ''||descripcion',
'       from INV.V_depositos_tf',
'      where cod_empresa  = :P_cod_empresa      ',
'AND NVL(:P556_IND_INVENTARIO_CPH,''N'')=''T'' ',
'and COD_SUCURSAL=:P556_COD_SUCURSAL_AUX',
' '))
,p_attribute_07=>'P556_COD_SUCURSAL_AUX,P556_IND_INVENTARIO_CPH'
,p_attribute_08=>'N'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(898741383870768334)
,p_event_id=>wwv_flow_imp.id(183048164051013042)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN  apex_collection.create_or_truncate_collection(p_collection_name => ''CAB_INV'');',
'',
'  apex_collection.add_member(p_collection_name => ''CAB_INV'',',
'                                p_c001 => :P556_IND_INVENTARIO_CPH,',
'                                p_c002 => :P556_COD_SUCURSAL_AUX,',
'                                p_c003  => :P556_NRO_COMPROBANTE);',
'                                END;'))
,p_attribute_02=>'P556_COD_SUCURSAL_AUX,P556_IND_INVENTARIO_CPH,P556_NRO_COMPROBANTE'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(898742070392768341)
,p_name=>'da_nombre_sucursal_1'
,p_event_sequence=>470
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P556_COD_SUCURSAL_AUX'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(898742294771768343)
,p_event_id=>wwv_flow_imp.id(898742070392768341)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN  apex_collection.create_or_truncate_collection(p_collection_name => ''CAB_INV'');',
'',
'  apex_collection.add_member(p_collection_name => ''CAB_INV'',',
'                                p_c001 => :P556_IND_INVENTARIO_CPH,',
'                                p_c002 => :P556_COD_SUCURSAL_AUX ,',
'       p_c003  => :P556_NRO_COMPROBANTE);',
'                                END;'))
,p_attribute_02=>'P556_COD_SUCURSAL_AUX,P556_IND_INVENTARIO_CPH,P556_NRO_COMPROBANTE'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(85515290411744130)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_INIT'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P556_TIP_COMPROBANTE:=''GIN'';',
'',
':P556_COD_USUARIO := NVL(:P_COD_USUARIO,:APP_USER) ;',
'',
':P556_COD_EMPRESA := NVL(:P_COD_EMPRESA,''1'') ;',
':P556_USUARIO_ALTA :=:APP_USER;',
':P556_FECHA_ALTA  := SYSDATE;',
'',
':P556_COD_SUCURSAL := NVL(:P_COD_SUCURSAL,''01'') ;',
'',
':P556_COD_MODULO := NVL(:P_COD_MODULO,''VT'') ;',
':P556_cod_forma:=''STGEINMO'';',
':P556_BANDERA := NULL ;',
':P556_SER_COMPROBANTE:=''A'';',
':P556_IND_INVENTARIO_CPH:=''N'';',
'',
'APEX_COLLECTION.CREATE_OR_TRUNCATE_COLLECTION(P_COLLECTION_NAME => ''COL_AUX_STGEINMO'');',
'--APEX_COLLECTION.CREATE_OR_TRUNCATE_COLLECTION(P_COLLECTION_NAME => ''COL_DET_STGEINMO'');',
'',
'  :P556_PERMITE_CERRAR           := busca_permiso( :P_cod_empresa,',
'                                                        :P556_cod_forma,',
'                                                        :P_COD_USUARIO,',
'                                                        ''PERMITE_CERRAR'' );',
' :P556_PERMITE_CERRAR_TODO           := busca_permiso( :P_cod_empresa,',
'                                                        :P556_cod_forma,',
'                                                        :P_COD_USUARIO,',
'                                                        ''PERMITE_CERRAR_TODOS'' );                                                        ',
'',
'',
'',
'  :P556_carga_sucursal           := busca_permiso( :P556_cod_empresa,',
'                                                        :P556_cod_forma,',
'                                                        :P556_cod_usuario,',
'                                                        ''CARGA_SUCURSAL'' );',
'',
' ',
'',
'',
':P556_RB:=''A'';                                                        ',
'if :P556_NRO_COMPROBANTE IS NULL THEN',
'APEX_COLLECTION.CREATE_OR_TRUNCATE_COLLECTION(P_COLLECTION_NAME => ''COL_DET_STGEINMO'');',
'else',
'STGEINMO.PR_OBTENER_DETALLE(PI_COD_EMPRESA => :P556_COD_EMPRESA,',
'                              PI_TIP_COMPROBANTE => :P556_TIP_COMPROBANTE, ',
'                              PI_SER_COMPROBANTE => :P556_SER_COMPROBANTE, ',
'                              PI_NRO_COMPROBANTE => :P556_NRO_COMPROBANTE);',
'',
'END IF;'))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_imp.component_end;
end;
/
