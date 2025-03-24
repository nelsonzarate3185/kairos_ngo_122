prompt --application/pages/page_00425
begin
--   Manifest
--     PAGE: 00425
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
 p_id=>425
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'Llamadas Salientes - CALLASAL'
,p_alias=>'CALLASAL'
,p_step_title=>'Llamadas Salientes - CALLASAL'
,p_autocomplete_on_off=>'OFF'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#region_mid{',
'    background: #cffbff;',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_last_updated_by=>'INV'
,p_last_upd_yyyymmddhh24miss=>'20230517074727'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(126456127306731636)
,p_plug_name=>'MAIN'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>1040
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(126456236019731637)
,p_plug_name=>'B_GESTION'
,p_parent_plug_id=>wwv_flow_imp.id(126456127306731636)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(126456873516731643)
,p_plug_name=>'IZQ'
,p_parent_plug_id=>wwv_flow_imp.id(126456236019731637)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(126456993087731644)
,p_plug_name=>'DER'
,p_region_name=>'region_mid'
,p_parent_plug_id=>wwv_flow_imp.id(126456236019731637)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40097820288263654)
,p_plug_display_sequence=>30
,p_plug_new_grid_row=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(126563488705515012)
,p_plug_name=>'MID'
,p_parent_plug_id=>wwv_flow_imp.id(126456236019731637)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>20
,p_plug_new_grid_row=>false
,p_plug_display_column=>8
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(126456393926731638)
,p_plug_name=>'B_TABS'
,p_parent_plug_id=>wwv_flow_imp.id(126456127306731636)
,p_region_template_options=>'#DEFAULT#:t-TabsRegion-mod--simple'
,p_plug_template=>wwv_flow_imp.id(40132096801263663)
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(126456459536731639)
,p_plug_name=>'Datos'
,p_parent_plug_id=>wwv_flow_imp.id(126456393926731638)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(127099936754486703)
,p_plug_name=>'B_TELEFONO'
,p_parent_plug_id=>wwv_flow_imp.id(126456459536731639)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>40
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT  SEQ_ID SEQ_ID_TELEFONO,',
'        C001 num_telefono,',
'        C002 tip_telefono,',
'        C003 tel_ubicacion,',
'        C004 nota,',
'        NULL EDITAR,',
'        NULL ELIMINAR',
'        ',
'FROM APEX_COLLECTIONS',
'WHERE COLLECTION_NAME = ''TELEFONOS''',
'AND :P425_IND_REP_TELEFONO = ''1''',
'AND nvl(c020, ''O'') <> ''B'';'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P425_IND_REP_TELEFONO'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'B_TELEFONO'
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
 p_id=>wwv_flow_imp.id(127102317886486727)
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
,p_internal_uid=>127102317886486727
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(127102527861486729)
,p_db_column_name=>'NUM_TELEFONO'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Num Telefono'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(127102695753486730)
,p_db_column_name=>'TIP_TELEFONO'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Tip Telefono'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_column_alignment=>'CENTER'
,p_rpt_named_lov=>wwv_flow_imp.id(128537947717116651)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(127102780607486731)
,p_db_column_name=>'TEL_UBICACION'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Tel Ubicacion'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_column_alignment=>'CENTER'
,p_rpt_named_lov=>wwv_flow_imp.id(128542101527109939)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(127102855630486732)
,p_db_column_name=>'NOTA'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Nota'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(128417602046124212)
,p_db_column_name=>'EDITAR'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Editar'
,p_column_link=>'javascript:$s(''P425_SEQ_ID_TEL_EDITAR'',''#SEQ_ID_TELEFONO#'');'
,p_column_linktext=>'<span aria-hidden="true" class="fa fa-edit"></span>'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(128417721968124213)
,p_db_column_name=>'ELIMINAR'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Eliminar'
,p_column_link=>'javascript:$s(''P425_SEQ_ID_TEL_ELIMINAR'',''#SEQ_ID_TELEFONO#'');'
,p_column_linktext=>'<span class="fa fa-trash" aria-hidden="true"></span>'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(128418383378124219)
,p_db_column_name=>'SEQ_ID_TELEFONO'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Seq Id Telefono'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(127216032091536501)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1272161'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'NUM_TELEFONO:TIP_TELEFONO:TEL_UBICACION:NOTA:EDITAR:ELIMINAR:'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(128417519420124211)
,p_plug_name=>'AGREGAR/EDITAR TELEFONO'
,p_parent_plug_id=>wwv_flow_imp.id(127099936754486703)
,p_region_template_options=>'#DEFAULT#:js-dialog-size600x400'
,p_plug_template=>wwv_flow_imp.id(40117728043263659)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(126456602275731641)
,p_plug_name=>'Otros Datos'
,p_parent_plug_id=>wwv_flow_imp.id(126456393926731638)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(127100360396486707)
,p_plug_name=>'B_DIRECCION'
,p_parent_plug_id=>wwv_flow_imp.id(126456602275731641)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT SEQ_ID SEQ_ID_DIRECCION,',
'       C001 cod_persona,',
'       C002 cod_direccion,',
'       C003 detalle,',
'       C004 tip_direccion,',
'       C005 cod_pais,       ',
'       C006 cod_provincia,',
'       C006 || '' - '' || (SELECT DESCRIPCION from provincias WHERE COD_PAIS = C005 AND COD_PROVINCIA = C006) PROVINCIA,',
'       C007 cod_ciudad,',
'       C007 || '' - '' || (SELECT DESCRIPCION from CIUDADES WHERE COD_PAIS = C005 AND COD_PROVINCIA = C006 ',
'                                AND COD_CIUDAD = C007 ) CIUDAD,',
'       C008 cod_barrio,',
'       C008 || '' - '' || (SELECT DESCRIPCION from BARRIOS WHERE COD_PAIS = C005 AND COD_PROVINCIA = C006 ',
'                                AND COD_CIUDAD = C007 AND COD_BARRIO = C008) BARRIO,',
'       C009 por_defecto,',
'       C021 row_id,',
'       NULL EDITAR,',
'       NULL ELIMINAR',
'FROM APEX_COLLECTIONS',
'WHERE COLLECTION_NAME = ''DIRECCION''',
'AND :P425_IND_REP_DIRECCION = ''1''',
'AND nvl(c020, ''O'') <> ''B'';'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P425_IND_REP_DIRECCION'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'B_DIRECCION'
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
 p_id=>wwv_flow_imp.id(127100565683486709)
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
,p_internal_uid=>127100565683486709
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(127100800960486712)
,p_db_column_name=>'COD_PERSONA'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Cod Persona'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(127100904684486713)
,p_db_column_name=>'COD_DIRECCION'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Cod Direccion'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(127101068550486714)
,p_db_column_name=>'DETALLE'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Detalle'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(127101140003486715)
,p_db_column_name=>'TIP_DIRECCION'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Tip Direccion'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(127101256388486716)
,p_db_column_name=>'COD_PAIS'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Cod Pais'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_column_alignment=>'CENTER'
,p_rpt_named_lov=>wwv_flow_imp.id(131539557290747694)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(127101355262486717)
,p_db_column_name=>'COD_PROVINCIA'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Cod Provincia'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(127101489429486718)
,p_db_column_name=>'COD_CIUDAD'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Cod Ciudad'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(127101586804486719)
,p_db_column_name=>'COD_BARRIO'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Cod Barrio'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(127101682165486720)
,p_db_column_name=>'POR_DEFECTO'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Por Defecto'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(127101710621486721)
,p_db_column_name=>'ROW_ID'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Row Id'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(131605012220543407)
,p_db_column_name=>'EDITAR'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Editar'
,p_column_link=>'javascript:$s(''P425_SEQ_ID_DIRE_EDITAR'',''#SEQ_ID_DIRECCION#'');'
,p_column_linktext=>'<span aria-hidden="true" class="fa fa-edit"></span>'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(131605107163543408)
,p_db_column_name=>'ELIMINAR'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Eliminar'
,p_column_link=>'javascript:$s(''P425_SEQ_ID_DIRE_ELIMINAR'',''#SEQ_ID_DIRECCION#'');'
,p_column_linktext=>'<span class="fa fa-trash" aria-hidden="true"></span>'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(131605237016543409)
,p_db_column_name=>'SEQ_ID_DIRECCION'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Seq Id Direccion'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(132237841227802922)
,p_db_column_name=>'PROVINCIA'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>'Provincia'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(132237945922802923)
,p_db_column_name=>'CIUDAD'
,p_display_order=>150
,p_column_identifier=>'O'
,p_column_label=>'Ciudad'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(132238022923802924)
,p_db_column_name=>'BARRIO'
,p_display_order=>160
,p_column_identifier=>'P'
,p_column_label=>'Barrio'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(127196631037659196)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1271967'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'DETALLE:COD_PAIS:PROVINCIA:CIUDAD:BARRIO:EDITAR:ELIMINAR:'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(129113911518742150)
,p_plug_name=>unistr('CREAR/EDITAR DIRECCI\00D3N')
,p_parent_plug_id=>wwv_flow_imp.id(127100360396486707)
,p_region_css_classes=>'js-dialog-size800x380'
,p_region_template_options=>'#DEFAULT#:js-dialog-size600x400'
,p_plug_template=>wwv_flow_imp.id(40117728043263659)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(127100433701486708)
,p_plug_name=>'B_IDENTIFICACION'
,p_parent_plug_id=>wwv_flow_imp.id(126456602275731641)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ',
'    SEQ_ID SEQ_ID_IDENT,',
'    C001 COD_IDENT,',
'    C002 NUMERO,',
'    NULL EDITAR,',
'    NULL ELIMINAR',
'FROM APEX_COLLECTIONS',
'WHERE COLLECTION_NAME = ''IDENTIFICACION''',
'AND :P425_IND_REP_IDENTIFICACION = ''1''',
'AND nvl(c020, ''O'') <> ''B'';',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P425_IND_REP_IDENTIFICACION'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'B_IDENTIFICACION'
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
 p_id=>wwv_flow_imp.id(127100668791486710)
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
,p_internal_uid=>127100668791486710
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(127101996071486723)
,p_db_column_name=>'COD_IDENT'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Cod Ident'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_column_alignment=>'CENTER'
,p_rpt_named_lov=>wwv_flow_imp.id(128754210914350257)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(127102055030486724)
,p_db_column_name=>'NUMERO'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Numero'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(128741005997513525)
,p_db_column_name=>'EDITAR'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Editar'
,p_column_link=>'javascript:$s(''P425_SEQ_ID_IDENT_EDITAR'',''#SEQ_ID_IDENT#'');'
,p_column_linktext=>'<span aria-hidden="true" class="fa fa-edit"></span>'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(128741178569513526)
,p_db_column_name=>'ELIMINAR'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Eliminar'
,p_column_link=>'javascript:$s(''P425_SEQ_ID_IDENT_ELIMINAR'',''#SEQ_ID_IDENT#'');'
,p_column_linktext=>'<span class="fa fa-trash" aria-hidden="true"></span>'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(128741337869513528)
,p_db_column_name=>'SEQ_ID_IDENT'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Seq Id Ident'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(127197233797659189)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1271973'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'COD_IDENT:NUMERO:EDITAR:ELIMINAR:'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(128739258779513507)
,p_plug_name=>unistr('CREAR/EDITAR IDENTIFICACI\00D3N')
,p_parent_plug_id=>wwv_flow_imp.id(127100433701486708)
,p_region_css_classes=>'js-dialog-size640x180'
,p_region_template_options=>'#DEFAULT#:js-dialog-size480x320'
,p_plug_template=>wwv_flow_imp.id(40117728043263659)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(126456796692731642)
,p_plug_name=>'Email Contactos'
,p_parent_plug_id=>wwv_flow_imp.id(126456393926731638)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>30
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT  SEQ_ID SEQ_ID_TEL,',
'        C001 cod_area,',
'        C002 desc_area,',
'        C003 nombre_contacto,',
'        C004 desc_area_cont,',
'        C005 cod_persona_contacto,     ',
'        C006 nombre,  ',
'        C007 direc_electronica,',
'        C021 row_id,        ',
'        NULL EDITAR,',
'        NULL ELIMINAR',
'',
'FROM APEX_COLLECTIONS',
'WHERE COLLECTION_NAME = ''EMAIL_CONTACTOS''',
'AND :P425_IND_REP_EMAIL = ''1''',
'AND nvl(c020, ''O'') <> ''B'';'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P425_IND_REP_EMAIL'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Email Contactos'
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
 p_id=>wwv_flow_imp.id(127103160473486735)
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
,p_internal_uid=>127103160473486735
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(127103381949486737)
,p_db_column_name=>'COD_AREA'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>unistr('C\00F3digo \00C1rea')
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(127103412490486738)
,p_db_column_name=>'DESC_AREA'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>unistr('Descripci\00F3n \00C1rea')
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(127103539552486739)
,p_db_column_name=>'NOMBRE_CONTACTO'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Otro Contacto'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(127103630008486740)
,p_db_column_name=>'DESC_AREA_CONT'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Desc Area Cont'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(127103726282486741)
,p_db_column_name=>'COD_PERSONA_CONTACTO'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Cod Persona Contacto'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(127103844461486742)
,p_db_column_name=>'NOMBRE'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Nombre'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(127103952553486743)
,p_db_column_name=>'DIREC_ELECTRONICA'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Primer Email'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(127104020093486744)
,p_db_column_name=>'ROW_ID'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Row Id'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(129110803411742119)
,p_db_column_name=>'EDITAR'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Editar'
,p_column_link=>'javascript:$s(''P425_SEQ_ID_EMAIL_EDITAR'',''#SEQ_ID_TEL#'');'
,p_column_linktext=>'<span aria-hidden="true" class="fa fa-edit"></span>'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(129110940507742120)
,p_db_column_name=>'ELIMINAR'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Eliminar'
,p_column_link=>'javascript:$s(''P425_SEQ_ID_EMAIL_ELIMINAR'',''#SEQ_ID_TEL#'');'
,p_column_linktext=>'<span class="fa fa-trash" aria-hidden="true"></span>'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(129111315503742124)
,p_db_column_name=>'SEQ_ID_TEL'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Seq Id Tel'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(127224258695480809)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1272243'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'COD_PERSONA_CONTACTO:NOMBRE:COD_AREA:DESC_AREA:NOMBRE_CONTACTO:DIREC_ELECTRONICA:EDITAR:ELIMINAR:'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(128743201148513547)
,p_plug_name=>'AGREGAR/EDITAR EMAILS'
,p_parent_plug_id=>wwv_flow_imp.id(126456796692731642)
,p_region_css_classes=>'js-dialog-size700x380'
,p_region_template_options=>'#DEFAULT#:js-dialog-size600x400'
,p_plug_template=>wwv_flow_imp.id(40117728043263659)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(126563633800515014)
,p_plug_name=>'VARIABLES'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>990
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(126565078779515028)
,p_plug_name=>'BUSQUEDA LLAMADA'
,p_region_css_classes=>'js-dialog-size1200x580'
,p_region_template_options=>'#DEFAULT#:js-dialog-size600x400'
,p_plug_template=>wwv_flow_imp.id(40117728043263659)
,p_plug_display_sequence=>1030
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(126565367075515031)
,p_plug_name=>'FILTROS'
,p_parent_plug_id=>wwv_flow_imp.id(126565078779515028)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(126565537853515033)
,p_plug_name=>'RESULTADOS BUSQUEDA'
,p_parent_plug_id=>wwv_flow_imp.id(126565078779515028)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'    NULL SELECCIONAR,',
'    cod_empresa,',
'    tip_movimiento,',
'    nro_movimiento,',
'    fec_movimiento,',
'    cod_cliente,',
'    tip_comprobante,',
'    ser_comprobante,',
'    nro_comprobante,',
'    nro_cuota,',
'    cod_moneda,',
'    saldo_reclamado,',
'    observacion,',
'    cod_sector_ant,',
'    cod_sector,',
'    cod_usuario,',
'    nro_orden,',
'    calificacion,',
'    cod_motivo,',
'    nro_telefono,',
'    nombre,',
'    nro_llamada,',
'    empresa,',
'    hora_llamada,',
'    movimiento,',
'    fecha_reagendada,',
'    hora_reagendada,',
'    hora_fin,',
'    motivo_secundario,',
'    motivo_principal,',
'    ROWID ROW_ID_LLAMADA',
'FROM',
'    ca_llamadas_salientes',
'WHERE COD_EMPRESA = :P_COD_EMPRESA',
'AND :P425_IND_REP_BUSQ_LLAM = ''1''',
'AND (nro_movimiento = :P425_NRO_MOV_BUSQ OR :P425_NRO_MOV_BUSQ IS NULL)',
'AND (fec_movimiento >=  TO_DATE(:P425_FEC_MOV_INI_BUSQ, ''DD/MM/YYYY'') OR :P425_FEC_MOV_INI_BUSQ IS NULL)',
'AND (fec_movimiento <=  TO_DATE(:P425_FEC_MOV_FIN_BUSQ, ''DD/MM/YYYY'') OR :P425_FEC_MOV_FIN_BUSQ IS NULL)',
'AND (cod_cliente = :P425_COD_CLIENTE_BUSQ OR :P425_COD_CLIENTE_BUSQ IS NULL)',
'AND (tip_comprobante = :P425_TIP_COMP_BUSQ OR :P425_TIP_COMP_BUSQ IS NULL)',
'AND (ser_comprobante = :P425_SER_COMP_BUSQ OR :P425_SER_COMP_BUSQ IS NULL)',
'AND (nro_comprobante = :P425_NRO_COMP_BUSQ OR :P425_NRO_COMP_BUSQ IS NULL)',
'',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P425_IND_REP_BUSQ_LLAM,P425_NRO_MOV_BUSQ,P425_FEC_MOV_INI_BUSQ,P425_FEC_MOV_FIN_BUSQ,P425_COD_CLIENTE_BUSQ,P425_TIP_COMP_BUSQ,P425_SER_COMP_BUSQ,P425_NRO_COMP_BUSQ'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'RESULTADOS BUSQUEDA'
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
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(126565678699515034)
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
,p_internal_uid=>126565678699515034
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(126565714419515035)
,p_db_column_name=>'SELECCIONAR'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Seleccionar'
,p_column_link=>'javascript:$s(''P425_ROW_ID_BUS_LLAM'',''#ROW_ID_LLAMADA#'');'
,p_column_linktext=>'<span aria-hidden="true" class="fa fa-edit"></span>'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(126565886678515036)
,p_db_column_name=>'COD_EMPRESA'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Cod Empresa'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(126565930412515037)
,p_db_column_name=>'TIP_MOVIMIENTO'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Tip Movimiento'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(126566055980515038)
,p_db_column_name=>'NRO_MOVIMIENTO'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Nro Movimiento'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(126566109635515039)
,p_db_column_name=>'FEC_MOVIMIENTO'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Fec Movimiento'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(126566251814515040)
,p_db_column_name=>'COD_CLIENTE'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Cod Cliente'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(126566334005515041)
,p_db_column_name=>'TIP_COMPROBANTE'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Tip Comprobante'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(126566451887515042)
,p_db_column_name=>'SER_COMPROBANTE'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Ser Comprobante'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(126566552000515043)
,p_db_column_name=>'NRO_COMPROBANTE'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Nro Comprobante'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(126566613580515044)
,p_db_column_name=>'NRO_CUOTA'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Nro Cuota'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(126566777751515045)
,p_db_column_name=>'COD_MONEDA'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Cod Moneda'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(126566815382515046)
,p_db_column_name=>'SALDO_RECLAMADO'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Saldo Reclamado'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(126566988956515047)
,p_db_column_name=>'OBSERVACION'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Observacion'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(126567002016515048)
,p_db_column_name=>'COD_SECTOR_ANT'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>'Cod Sector Ant'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(126567169987515049)
,p_db_column_name=>'COD_SECTOR'
,p_display_order=>150
,p_column_identifier=>'O'
,p_column_label=>'Cod Sector'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(126567269567515050)
,p_db_column_name=>'COD_USUARIO'
,p_display_order=>160
,p_column_identifier=>'P'
,p_column_label=>'Cod Usuario'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(126678237435984101)
,p_db_column_name=>'NRO_ORDEN'
,p_display_order=>170
,p_column_identifier=>'Q'
,p_column_label=>'Nro Orden'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(126678312356984102)
,p_db_column_name=>'CALIFICACION'
,p_display_order=>180
,p_column_identifier=>'R'
,p_column_label=>'Calificacion'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(126678483445984103)
,p_db_column_name=>'COD_MOTIVO'
,p_display_order=>190
,p_column_identifier=>'S'
,p_column_label=>'Cod Motivo'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(126678584126984104)
,p_db_column_name=>'NRO_TELEFONO'
,p_display_order=>200
,p_column_identifier=>'T'
,p_column_label=>'Nro Telefono'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(126678626410984105)
,p_db_column_name=>'NOMBRE'
,p_display_order=>210
,p_column_identifier=>'U'
,p_column_label=>'Nombre'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(126678709509984106)
,p_db_column_name=>'NRO_LLAMADA'
,p_display_order=>220
,p_column_identifier=>'V'
,p_column_label=>'Nro Llamada'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(126678855339984107)
,p_db_column_name=>'EMPRESA'
,p_display_order=>230
,p_column_identifier=>'W'
,p_column_label=>'Empresa'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(126678984229984108)
,p_db_column_name=>'HORA_LLAMADA'
,p_display_order=>240
,p_column_identifier=>'X'
,p_column_label=>'Hora Llamada'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(126679032602984109)
,p_db_column_name=>'MOVIMIENTO'
,p_display_order=>250
,p_column_identifier=>'Y'
,p_column_label=>'Movimiento'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(126679157462984110)
,p_db_column_name=>'FECHA_REAGENDADA'
,p_display_order=>260
,p_column_identifier=>'Z'
,p_column_label=>'Fecha Reagendada'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(126679245429984111)
,p_db_column_name=>'HORA_REAGENDADA'
,p_display_order=>270
,p_column_identifier=>'AA'
,p_column_label=>'Hora Reagendada'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(126679391354984112)
,p_db_column_name=>'HORA_FIN'
,p_display_order=>280
,p_column_identifier=>'AB'
,p_column_label=>'Hora Fin'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(126679484109984113)
,p_db_column_name=>'MOTIVO_SECUNDARIO'
,p_display_order=>290
,p_column_identifier=>'AC'
,p_column_label=>'Motivo Secundario'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(126679526537984114)
,p_db_column_name=>'MOTIVO_PRINCIPAL'
,p_display_order=>300
,p_column_identifier=>'AD'
,p_column_label=>'Motivo Principal'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(126679954423984118)
,p_db_column_name=>'ROW_ID_LLAMADA'
,p_display_order=>310
,p_column_identifier=>'AF'
,p_column_label=>'Row Id Llamada'
,p_column_type=>'OTHER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(126693684549983647)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1266937'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'SELECCIONAR:COD_EMPRESA:TIP_MOVIMIENTO:NRO_MOVIMIENTO:FEC_MOVIMIENTO:COD_CLIENTE:TIP_COMPROBANTE:SER_COMPROBANTE:NRO_COMPROBANTE:NRO_CUOTA:COD_MONEDA:SALDO_RECLAMADO:OBSERVACION:COD_SECTOR_ANT:COD_SECTOR:COD_USUARIO:NRO_ORDEN:CALIFICACION:COD_MOTIVO:'
||'NRO_TELEFONO:NOMBRE:NRO_LLAMADA:EMPRESA:HORA_LLAMADA:MOVIMIENTO:FECHA_REAGENDADA:HORA_REAGENDADA:HORA_FIN:MOTIVO_SECUNDARIO:MOTIVO_PRINCIPAL'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(126679724904984116)
,p_plug_name=>'ROW/SEQ'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>1010
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(128417838601124214)
,p_plug_name=>'TELEFONO'
,p_parent_plug_id=>wwv_flow_imp.id(126679724904984116)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(128738987081513504)
,p_plug_name=>'IDENTIFICACION'
,p_parent_plug_id=>wwv_flow_imp.id(126679724904984116)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(129111044152742121)
,p_plug_name=>'EMAIL'
,p_parent_plug_id=>wwv_flow_imp.id(126679724904984116)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>30
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(131605894820543415)
,p_plug_name=>'DIRECCION'
,p_parent_plug_id=>wwv_flow_imp.id(126679724904984116)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>40
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(126681095168984129)
,p_plug_name=>'INDICADORES REPORTES'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>1020
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(127270069528907236)
,p_plug_name=>unistr('\00BFPara cuando?')
,p_region_css_classes=>'js-dialog-size800x475'
,p_region_template_options=>'#DEFAULT#:js-dialog-size600x400'
,p_plug_template=>wwv_flow_imp.id(40117728043263659)
,p_plug_display_sequence=>1050
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(127270429101907240)
,p_plug_name=>unistr('D\00EDa')
,p_parent_plug_id=>wwv_flow_imp.id(127270069528907236)
,p_region_template_options=>'#DEFAULT#:t-Region--accent2:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(127270868528907244)
,p_plug_name=>'Hora'
,p_parent_plug_id=>wwv_flow_imp.id(127270069528907236)
,p_region_template_options=>'#DEFAULT#:t-Region--accent2:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(129990131517686211)
,p_plug_name=>'PARAMETROS'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>1000
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(131608553104543442)
,p_plug_name=>'CALLASALDET'
,p_region_css_classes=>'js-dialog-size1200x580'
,p_region_template_options=>'#DEFAULT#:js-dialog-size600x400'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40117728043263659)
,p_plug_display_sequence=>1060
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select a.nro_telefono, a.nombre, a.cod_cliente, nvl(p.nombre, p.nomb_fantasia)nomb_cliente,',
'       a.fec_movimiento fec_llamda,  a.calificacion,a.hora_llamada,',
'       a.empresa,a.Nro_Movimiento nro_llamada,',
'       a.tip_comprobante,a.ser_comprobante, a.nro_comprobante, a.cod_motivo,',
'       a.observacion, m.descripcion desc_motivo, a.cod_usuario, fv.descripcion vendedor',
'from ca_llamadas_salientes a, cc_clientes c, personas p,',
'     ca_motivo_lla m, fv_VENDEDORES FV',
'where a.cod_empresa= :P_COD_EMPRESA',
' --and a.fec_movimiento between nvl(:p_fec_ini,''01/01/2000'') and nvl(:p_fec_fin,''31/12/2099'')',
' and (a.cod_cliente = :P425_COD_CLIENTE or :P425_COD_CLIENTE is null)',
' and a.cod_empresa = c.cod_empresa',
' and a.cod_cliente = c.cod_cliente',
' and p.cod_persona = c.cod_persona',
'AND C.COD_empresa=fv.cod_empresa(+)',
'and c.cod_vendedor=fv.cod_vendedor(+)',
'AND (A.COD_MOTIVO = :P425_COD_MOTIVO OR :P425_COD_MOTIVO IS NULL)',
' and m.cod_motivo(+) = a.cod_motivo',
'and (a.cod_usuario = :P425_COD_USUARIO or  :P425_COD_USUARIO is null)',
'and :P425_IND_REP_CALLASALDET = ''1''',
' order by a.fec_movimiento desc ,a.NRO_MOVIMIENTO',
'',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P425_COD_CLIENTE,P425_IND_REP_CALLASALDET,P425_COD_USUARIO,P425_COD_MOTIVO'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'CALLASALDET'
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
 p_id=>wwv_flow_imp.id(131608692215543443)
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
,p_internal_uid=>131608692215543443
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(131608749235543444)
,p_db_column_name=>'NRO_TELEFONO'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Nro Telefono'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(131608897508543445)
,p_db_column_name=>'NOMBRE'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Nombre'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(131608957714543446)
,p_db_column_name=>'COD_CLIENTE'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Cod Cliente'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(131609042160543447)
,p_db_column_name=>'NOMB_CLIENTE'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Nomb Cliente'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(131609119329543448)
,p_db_column_name=>'FEC_LLAMDA'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Fec Llamda'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(131609291545543449)
,p_db_column_name=>'CALIFICACION'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Calificacion'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(131609319482543450)
,p_db_column_name=>'HORA_LLAMADA'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Hora Llamada'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(132235748152802901)
,p_db_column_name=>'EMPRESA'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Empresa'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(132235829437802902)
,p_db_column_name=>'NRO_LLAMADA'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Nro Llamada'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(132235926398802903)
,p_db_column_name=>'TIP_COMPROBANTE'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Tip Comprobante'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(132236005019802904)
,p_db_column_name=>'SER_COMPROBANTE'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Ser Comprobante'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(132236168290802905)
,p_db_column_name=>'NRO_COMPROBANTE'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Nro Comprobante'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(132236219495802906)
,p_db_column_name=>'COD_MOTIVO'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Cod Motivo'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(132236335789802907)
,p_db_column_name=>'OBSERVACION'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>'Observacion'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(132236424461802908)
,p_db_column_name=>'DESC_MOTIVO'
,p_display_order=>150
,p_column_identifier=>'O'
,p_column_label=>'Desc Motivo'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(132236536527802909)
,p_db_column_name=>'COD_USUARIO'
,p_display_order=>160
,p_column_identifier=>'P'
,p_column_label=>'Cod Usuario'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(132236674919802910)
,p_db_column_name=>'VENDEDOR'
,p_display_order=>170
,p_column_identifier=>'Q'
,p_column_label=>'Vendedor'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(132246687319801213)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1322467'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'NRO_TELEFONO:NOMBRE:COD_CLIENTE:NOMB_CLIENTE:FEC_LLAMDA:CALIFICACION:HORA_LLAMADA:EMPRESA:NRO_LLAMADA:TIP_COMPROBANTE:SER_COMPROBANTE:NRO_COMPROBANTE:COD_MOTIVO:OBSERVACION:DESC_MOTIVO:COD_USUARIO:VENDEDOR'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(128419207387124228)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(128417519420124211)
,p_button_name=>'BTN_ACEPTAR_TEL_ED'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Aceptar'
,p_button_position=>'BELOW_BOX'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(128419457458124230)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(128417519420124211)
,p_button_name=>'BTN_ACEPTAR_TEL_CR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Aceptar'
,p_button_position=>'BELOW_BOX'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(128419324979124229)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(128417519420124211)
,p_button_name=>'BTN_CERRAR_TEL_ED_CR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_image_alt=>'Cerrar'
,p_button_position=>'BELOW_BOX'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(126457011726731645)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(126456993087731644)
,p_button_name=>'BTN_VISITAS'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--stretch:t-Button--gapTop'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Registrar Visitas'
,p_warn_on_unsaved_changes=>null
,p_button_cattributes=>'style="margin-left:25px;width:200px;"'
,p_grid_new_row=>'Y'
,p_grid_column_span=>6
,p_grid_column=>4
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(127312136330320805)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(127270429101907240)
,p_button_name=>'BTN_HOY'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--simple:t-Button--gapTop'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Hoy'
,p_warn_on_unsaved_changes=>null
,p_button_cattributes=>'style="margin-left:25px;width:100px;"'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(127313348449320817)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(127270868528907244)
,p_button_name=>'BTN_HORA1'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--simple:t-Button--gapTop'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'08:00 a 10:00'
,p_warn_on_unsaved_changes=>null
,p_button_cattributes=>'style="margin-left:25px;width:100px;"'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(126457127762731646)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(126456993087731644)
,p_button_name=>'BTN_CONSULTAR_VISITAS'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--stretch:t-Button--gapTop'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Consultar Visitas'
,p_warn_on_unsaved_changes=>null
,p_button_cattributes=>'style="margin-left:25px;width:200px;"'
,p_grid_new_row=>'Y'
,p_grid_column_span=>6
,p_grid_column=>4
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(127267009580907206)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(126563488705515012)
,p_button_name=>'BTN_CREAR_LLAMADA_MAIN'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight:t-Button--gapBottom'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Crear Nueva Llamada'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-plus-square-o'
,p_button_cattributes=>'style="margin-left:18px;width:175px;"'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(127313427579320818)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(127270868528907244)
,p_button_name=>'BTN_HORA2'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--simple:t-Button--gapTop'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'10:00 a 12:00'
,p_warn_on_unsaved_changes=>null
,p_button_cattributes=>'style="margin-left:25px;width:100px;"'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(126457353468731648)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(126456993087731644)
,p_button_name=>'BTN_LIST_EXC_CLIENTES'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--stretch:t-Button--gapTop'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Listados Extracto de Clientes'
,p_warn_on_unsaved_changes=>null
,p_button_cattributes=>'style="margin-left:25px;width:200px;"'
,p_grid_new_row=>'Y'
,p_grid_column_span=>6
,p_grid_column=>4
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(127267174117907207)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(126563488705515012)
,p_button_name=>'BTN_BUSCAR_LLAMADA_MAIN'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight:t-Button--gapBottom'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Buscar Llamada'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-search'
,p_button_cattributes=>'style="margin-left:18px;width:175px;"'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(127312377434320807)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(127270429101907240)
,p_button_name=>'BTN_SIGUIENTE_DIA'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--simple:t-Button--gapTop'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('Siguiente D\00EDa')
,p_warn_on_unsaved_changes=>null
,p_button_cattributes=>'style="margin-left:25px;width:100px;"'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(127313540165320819)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(127270868528907244)
,p_button_name=>'BTN_HORA3'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--simple:t-Button--gapTop'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'13:00 a 15:00'
,p_warn_on_unsaved_changes=>null
,p_button_cattributes=>'style="margin-left:25px;width:100px;"'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(126457279426731647)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(126456993087731644)
,p_button_name=>'BTN_LIST_LLAMADAS_CLIENTES'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--stretch:t-Button--gapTop'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Listados Llamadas Salientes'
,p_warn_on_unsaved_changes=>null
,p_button_cattributes=>'style="margin-left:25px;width:200px;"'
,p_grid_new_row=>'Y'
,p_grid_column_span=>6
,p_grid_column=>4
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(127313641854320820)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(127270868528907244)
,p_button_name=>'BTN_HORA4'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--simple:t-Button--gapTop'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'15:00 a 18:00'
,p_warn_on_unsaved_changes=>null
,p_button_cattributes=>'style="margin-left:25px;width:100px;"'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(126457439463731649)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(126456993087731644)
,p_button_name=>'BTN_REAGENDAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--stretch:t-Button--gapTop'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Reagendar'
,p_warn_on_unsaved_changes=>null
,p_button_cattributes=>'style="margin-left:25px;width:200px;"'
,p_grid_new_row=>'Y'
,p_grid_column_span=>6
,p_grid_column=>4
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(127312535213320809)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(127270429101907240)
,p_button_name=>'BTN_DIAS_5'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--simple:t-Button--gapTop'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('5 d\00EDas')
,p_warn_on_unsaved_changes=>null
,p_button_cattributes=>'style="margin-left:25px;width:100px;"'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(127312207879320806)
,p_button_sequence=>70
,p_button_plug_id=>wwv_flow_imp.id(127270429101907240)
,p_button_name=>'BTN_DIAS_10'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--simple:t-Button--gapTop'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('10 d\00EDas')
,p_warn_on_unsaved_changes=>null
,p_button_cattributes=>'style="margin-left:25px;width:100px;"'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
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
 p_id=>wwv_flow_imp.id(132237167292802915)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(131608553104543442)
,p_button_name=>'BTN_ACEPTAR_CALLASALDET'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Aceptar'
,p_button_position=>'BOTTOM'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(128739554555513510)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(128739258779513507)
,p_button_name=>'BTN_ACEPTAR_IDENT_CR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Aceptar'
,p_button_position=>'BOTTOM'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(128740015352513515)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(128739258779513507)
,p_button_name=>'BTN_ACEPTAR_IDENT_ED'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Aceptar'
,p_button_position=>'BOTTOM'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(128739710643513512)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_imp.id(128739258779513507)
,p_button_name=>'BTN_CERRAR_IDENT_CR_ED'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_image_alt=>'Cerrar'
,p_button_position=>'BOTTOM'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(126681235070984131)
,p_button_sequence=>80
,p_button_plug_id=>wwv_flow_imp.id(126565367075515031)
,p_button_name=>'BTN_BUSCAR_LLAM'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Buscar'
,p_button_position=>'BOTTOM'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-search'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(126681668898984135)
,p_button_sequence=>90
,p_button_plug_id=>wwv_flow_imp.id(126565367075515031)
,p_button_name=>'BTN_LIMPIAR_CAMPOS_BUSQ_LLAM'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Limpiar Campos'
,p_button_position=>'BOTTOM'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-trash-o'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(129110051256742111)
,p_button_sequence=>90
,p_button_plug_id=>wwv_flow_imp.id(128743201148513547)
,p_button_name=>'BTN_ACEPTAR_EMAILS_CR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Aceptar'
,p_button_position=>'BOTTOM'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(129110154758742112)
,p_button_sequence=>100
,p_button_plug_id=>wwv_flow_imp.id(128743201148513547)
,p_button_name=>'BTN_ACEPTAR_EMAILS_ED'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Aceptar'
,p_button_position=>'BOTTOM'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(129109440353742105)
,p_button_sequence=>110
,p_button_plug_id=>wwv_flow_imp.id(128743201148513547)
,p_button_name=>'BTN_CERRAR_EMAILS'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_image_alt=>'Cerrar'
,p_button_position=>'BOTTOM'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(131604641726543403)
,p_button_sequence=>110
,p_button_plug_id=>wwv_flow_imp.id(129113911518742150)
,p_button_name=>'BTN_ACEPTAR_DIRECCION_CR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Aceptar'
,p_button_position=>'BOTTOM'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(131604730050543404)
,p_button_sequence=>120
,p_button_plug_id=>wwv_flow_imp.id(129113911518742150)
,p_button_name=>'BTN_ACEPTAR_DIRECCION_ED'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Aceptar'
,p_button_position=>'BOTTOM'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(129994044232686250)
,p_button_sequence=>130
,p_button_plug_id=>wwv_flow_imp.id(129113911518742150)
,p_button_name=>'BTN_CERRAR_DIRECCION_CR_ED'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_image_alt=>'Cerrar'
,p_button_position=>'BOTTOM'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(127271045631907246)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(127270069528907236)
,p_button_name=>'BTN_CERRAR_REAGENDAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_image_alt=>'Cerrar'
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(127270935180907245)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(127270069528907236)
,p_button_name=>'BTN_ACEPTAR_REAGENDAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Aceptar'
,p_button_position=>'CREATE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(127104444294486748)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(126565078779515028)
,p_button_name=>'BTN_CREAR_LLAMADA'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Crear Nueva Llamada'
,p_button_position=>'NEXT'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-plus-square-o'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(127316074129320844)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(126456127306731636)
,p_button_name=>'BTN_GUARDAR_CAMBIOS'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight:t-Button--gapBottom'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Guardar Cambios'
,p_button_position=>'TOP'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-save'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(128420406469124240)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(127099936754486703)
,p_button_name=>'BTN_AGREGAR_TELEFONO'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('Agregar Tel\00E9fono')
,p_button_position=>'TOP'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(128738813610513503)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(127100433701486708)
,p_button_name=>'BTN_CREAR_IDENTIFICACION'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--gapTop'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('Agregar Identificaci\00F3n')
,p_button_position=>'TOP'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(128743005048513545)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(127100360396486707)
,p_button_name=>'BTN_CREAR_DIRECCION'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('Agregar Direcci\00F3n')
,p_button_position=>'TOP'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(128743153111513546)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(126456796692731642)
,p_button_name=>'BTN_CREAR_CONTACTO'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Agregar Contacto'
,p_button_position=>'TOP'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(129991406250686224)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(126456127306731636)
,p_button_name=>'BTN_LIMPIAR_CAMPOS'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight:t-Button--gapBottom'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Limpiar Campos'
,p_button_position=>'TOP'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-trash'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(126457590683731650)
,p_name=>'P425_NRO_MOVIMIENTO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(126456873516731643)
,p_prompt=>unistr('N\00FAmero')
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
 p_id=>wwv_flow_imp.id(126562304417515001)
,p_name=>'P425_FEC_MOVIMIENTO'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(126456873516731643)
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
 p_id=>wwv_flow_imp.id(126562407501515002)
,p_name=>'P425_COD_CLIENTE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(126456873516731643)
,p_prompt=>'Cliente'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select c.cod_cliente  || '' - '' || ltrim( rtrim( nvl( p.nombre, p.nomb_fantasia ) ) ) D, ',
'       c.cod_cliente R ',
'from cc_clientes c, personas p ',
'where c.cod_empresa = :P_COD_EMPRESA',
'and c.cod_persona = p.cod_persona ',
'order by 1'))
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
 p_id=>wwv_flow_imp.id(126562565123515003)
,p_name=>'P425_NRO_TELEFONO'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(126456873516731643)
,p_prompt=>unistr('Tel\00E9fono')
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
 p_id=>wwv_flow_imp.id(126562691236515004)
,p_name=>'P425_NOMBRE'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(126456873516731643)
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
 p_id=>wwv_flow_imp.id(126562770173515005)
,p_name=>'P425_EMPRESA'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(126456873516731643)
,p_prompt=>'Empresa'
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
 p_id=>wwv_flow_imp.id(126562856966515006)
,p_name=>'P425_COD_MOTIVO'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(126456873516731643)
,p_prompt=>'Motivo'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select cod_motivo || '' - '' || descripcion D,',
'       cod_motivo R ',
'from ca_motivo_lla'))
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
 p_id=>wwv_flow_imp.id(126562905781515007)
,p_name=>'P425_OBSERVACION'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(126456873516731643)
,p_prompt=>unistr('Observaci\00F3n')
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>30
,p_cHeight=>5
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(126563025349515008)
,p_name=>'P425_TIP_COMPROBANTE'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(126456873516731643)
,p_prompt=>'Tipo Comprobante'
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
 p_id=>wwv_flow_imp.id(126563188105515009)
,p_name=>'P425_SER_COMPROBANTE'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(126456873516731643)
,p_prompt=>'Serie Comprobante'
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
 p_id=>wwv_flow_imp.id(126563238620515010)
,p_name=>'P425_NRO_COMPROBANTE'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(126456873516731643)
,p_prompt=>unistr('N\00FAmero Comprobante')
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
 p_id=>wwv_flow_imp.id(126563323738515011)
,p_name=>'P425_FEC_ULTIMO_PAGO'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(126456873516731643)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(126563566233515013)
,p_name=>'P425_CALIFICACION'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(126563488705515012)
,p_prompt=>unistr('Calificaci\00F3n')
,p_display_as=>'NATIVE_RADIOGROUP'
,p_lov=>'STATIC:1;1,2;2,3;3,4;4,5;5'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'5'
,p_attribute_02=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(126563744603515015)
,p_name=>'P425_COD_MODULO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(126563633800515014)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(126563883940515016)
,p_name=>'P425_DIAS_ATRASO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(126563633800515014)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(126564057984515018)
,p_name=>'P425_MENSAJE_ALERT'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(126563633800515014)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(126679812389984117)
,p_name=>'P425_ROW_ID_BUS_LLAM'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(126679724904984116)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(126680241935984121)
,p_name=>'P425_NRO_MOV_BUSQ'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(126565367075515031)
,p_prompt=>unistr('N\00FAmero')
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
 p_id=>wwv_flow_imp.id(126680395865984122)
,p_name=>'P425_FEC_MOV_INI_BUSQ'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(126565367075515031)
,p_prompt=>'Fecha Desde'
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
 p_id=>wwv_flow_imp.id(126680419904984123)
,p_name=>'P425_COD_CLIENTE_BUSQ'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(126565367075515031)
,p_prompt=>'Cliente'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select c.cod_cliente  || '' - '' || ltrim( rtrim( nvl( p.nombre, p.nomb_fantasia ) ) ) D, ',
'       c.cod_cliente R ',
'from cc_clientes c, personas p ',
'where c.cod_empresa = :P_COD_EMPRESA',
'and c.cod_persona = p.cod_persona ',
'order by 1'))
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
 p_id=>wwv_flow_imp.id(126680536971984124)
,p_name=>'P425_TIP_COMP_BUSQ'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(126565367075515031)
,p_prompt=>'Tipo Comprobante'
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
 p_id=>wwv_flow_imp.id(126680654821984125)
,p_name=>'P425_SER_COMP_BUSQ'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(126565367075515031)
,p_prompt=>'Serie Comprobante'
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
 p_id=>wwv_flow_imp.id(126680748156984126)
,p_name=>'P425_NRO_COMP_BUSQ'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(126565367075515031)
,p_prompt=>unistr('N\00FAmero Comprobante')
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
 p_id=>wwv_flow_imp.id(126680837195984127)
,p_name=>'P425_FEC_ULT_PAGO_BUSQ'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(126565367075515031)
,p_prompt=>'Fecha Ultimo Pago'
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
 p_id=>wwv_flow_imp.id(126680995506984128)
,p_name=>'P425_FEC_MOV_FIN_BUSQ'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(126565367075515031)
,p_prompt=>'Fecha Hasta'
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
 p_id=>wwv_flow_imp.id(126681163432984130)
,p_name=>'P425_IND_REP_BUSQ_LLAM'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(126681095168984129)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(126682127703984140)
,p_name=>'P425_FECHA_REAGENDADA'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(127270429101907240)
,p_prompt=>'Fecha'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>4
,p_grid_column=>9
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#:margin-left-lg'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(126682248441984141)
,p_name=>'P425_TIP_MOVIMIENTO'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(126565367075515031)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(126682381623984142)
,p_name=>'P425_COD_USUARIO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(126563488705515012)
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
 p_id=>wwv_flow_imp.id(126682614670984145)
,p_name=>'P425_COD_PERSONA'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(126563633800515014)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(126683188353984150)
,p_name=>'P425_COD_PERSONA_PER'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(126456459536731639)
,p_prompt=>unistr('C\00F3digo')
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
 p_id=>wwv_flow_imp.id(127099797328486701)
,p_name=>'P425_NOMBRE_PER'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(126456459536731639)
,p_prompt=>'Apellido y Nombre'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>6
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(127099868509486702)
,p_name=>'P425_DIREC_ELECTRONICA_PER'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(126456459536731639)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(127100170773486705)
,p_name=>'P425_IND_REP_PERSONA'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(126681095168984129)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(127100783693486711)
,p_name=>'P425_IND_REP_DIRECCION'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(126681095168984129)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(127101845637486722)
,p_name=>'P425_IND_REP_IDENTIFICACION'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(126681095168984129)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(127102402602486728)
,p_name=>'P425_IND_REP_TELEFONO'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(126681095168984129)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(127103211991486736)
,p_name=>'P425_IND_REP_EMAIL'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(126681095168984129)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(127266673564907202)
,p_name=>'P425_CONSULTO'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(126563633800515014)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(127266774468907203)
,p_name=>'P425_HORA_LLAMADA'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(126563633800515014)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(127313740688320821)
,p_name=>'P425_HORA_REAGENDADA'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(127270868528907244)
,p_prompt=>'Hora'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>4
,p_grid_column=>9
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#:margin-left-lg'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(128417909150124215)
,p_name=>'P425_SEQ_ID_TEL_EDITAR'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(128417838601124214)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(128418008936124216)
,p_name=>'P425_SEQ_ID_TEL_ELIMINAR'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(128417838601124214)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(128418801929124224)
,p_name=>'P425_NUM_TELEF_CR_ED'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(128417519420124211)
,p_prompt=>unistr('N\00FAmero')
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
 p_id=>wwv_flow_imp.id(128418944321124225)
,p_name=>'P425_TIP_TELEF_CR_ED'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(128417519420124211)
,p_prompt=>'Tipo'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_TIP_TELEFONO_CALLASAL'
,p_lov=>'.'||wwv_flow_imp.id(128537947717116651)||'.'
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
 p_id=>wwv_flow_imp.id(128419084309124226)
,p_name=>'P425_TEL_UBIC_CR_ED'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(128417519420124211)
,p_prompt=>unistr('Ubicaci\00F3n')
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_TEL_UBICACION_CALLASAL'
,p_lov=>'.'||wwv_flow_imp.id(128542101527109939)||'.'
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
 p_id=>wwv_flow_imp.id(128419147891124227)
,p_name=>'P425_NOTA_CR_ED'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(128417519420124211)
,p_prompt=>'Nota'
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
 p_id=>wwv_flow_imp.id(128739043470513505)
,p_name=>'P425_SEQ_ID_IDENT_EDITAR'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(128738987081513504)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(128739131642513506)
,p_name=>'P425_SEQ_ID_IDENT_ELIMINAR'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(128738987081513504)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(128739380253513508)
,p_name=>'P425_COD_IDENT_CR_ED'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(128739258779513507)
,p_prompt=>unistr('C\00F3digo')
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_IDENTIFICACION_CALLASAL'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT cod_ident || '' - '' || descripcion D, ',
'       cod_ident R',
'FROM identificaciones ',
'ORDER BY descripcion'))
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
 p_id=>wwv_flow_imp.id(128739480830513509)
,p_name=>'P425_NUMERO_CR_ED'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(128739258779513507)
,p_prompt=>unistr('N\00FAmero')
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
 p_id=>wwv_flow_imp.id(128743388150513548)
,p_name=>'P425_COD_AREA_CR_ED'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(128743201148513547)
,p_prompt=>unistr('Cod. \00C1rea')
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
 p_id=>wwv_flow_imp.id(128743445716513549)
,p_name=>'P425_DESC_AREA_CR_ED'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(128743201148513547)
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
 p_id=>wwv_flow_imp.id(128743570083513550)
,p_name=>'P425_NOM_CONT_CR_ED'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(128743201148513547)
,p_prompt=>'Nombre'
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
 p_id=>wwv_flow_imp.id(129109011490742101)
,p_name=>'P425_DESC_AREA_CON_CR_ED'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(128743201148513547)
,p_prompt=>unistr('\00C1rea')
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
 p_id=>wwv_flow_imp.id(129109140891742102)
,p_name=>'P425_COD_PER_CONT_CR_ED'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(128743201148513547)
,p_prompt=>unistr('C\00F3digo')
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
 p_id=>wwv_flow_imp.id(129109267595742103)
,p_name=>'P425_NOMBRE_CR_ED'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(128743201148513547)
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
 p_id=>wwv_flow_imp.id(129109345641742104)
,p_name=>'P425_DIREC_ELECT_CR_ED'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(128743201148513547)
,p_prompt=>'Correo Electronico'
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
 p_id=>wwv_flow_imp.id(129111124951742122)
,p_name=>'P425_SEQ_ID_EMAIL_EDITAR'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(129111044152742121)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(129111235842742123)
,p_name=>'P425_SEQ_ID_EMAIL_ELIMINAR'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(129111044152742121)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(129989152386686201)
,p_name=>'P425_COD_DIRECCION_CR_ED'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(129113911518742150)
,p_prompt=>unistr('Direcci\00F3n')
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
 p_id=>wwv_flow_imp.id(129989207396686202)
,p_name=>'P425_TIP_DIRECCION_CR_ED'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(129113911518742150)
,p_prompt=>unistr('Tipo Direcci\00F3n')
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>'STATIC:Casa;C,Trabajo;T,Otro;O'
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_colspan=>3
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
 p_id=>wwv_flow_imp.id(129989322889686203)
,p_name=>'P425_DETALLE_CR_ED'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(129113911518742150)
,p_prompt=>'Detalle'
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
 p_id=>wwv_flow_imp.id(129989427596686204)
,p_name=>'P425_COD_PAIS_CR_ED'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(129113911518742150)
,p_prompt=>unistr('Pa\00EDs')
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_PAISES_CALLASAL'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select cod_pais || '' - '' || descripcion D, cod_pais R',
'from paises ',
'order by D'))
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
 p_id=>wwv_flow_imp.id(129989590974686205)
,p_name=>'P425_COD_PROVINCIA_CR_ED'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(129113911518742150)
,p_prompt=>'Provincia'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select cod_provincia || '' - '' || descripcion D, cod_provincia R',
'from provincias ',
'where cod_pais = :P425_COD_PAIS_CR_ED',
'order by descripcion'))
,p_lov_display_null=>'YES'
,p_lov_cascade_parent_items=>'P425_COD_PAIS_CR_ED'
,p_ajax_items_to_submit=>'P425_COD_PAIS_CR_ED'
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
 p_id=>wwv_flow_imp.id(129989685223686206)
,p_name=>'P425_COD_CIUDAD_CR_ED'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(129113911518742150)
,p_prompt=>'Ciudad'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select cod_ciudad || '' - '' || descripcion d, cod_ciudad r',
'from ciudades ',
'where cod_pais = :P425_COD_PAIS_CR_ED',
'and cod_provincia = :P425_COD_PROVINCIA_CR_ED',
'order by descripcion'))
,p_lov_display_null=>'YES'
,p_lov_cascade_parent_items=>'P425_COD_PROVINCIA_CR_ED'
,p_ajax_items_to_submit=>'P425_COD_PROVINCIA_CR_ED'
,p_ajax_optimize_refresh=>'Y'
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
 p_id=>wwv_flow_imp.id(129989738820686207)
,p_name=>'P425_COD_BARRIO_CR_ED'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(129113911518742150)
,p_prompt=>'Barrio'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select cod_barrio || '' - '' || descripcion D,',
'       cod_barrio R',
'  from barrios',
' where cod_pais      = :P425_COD_PAIS_CR_ED',
'   and cod_provincia = :P425_COD_PROVINCIA_CR_ED',
'   and cod_ciudad    = :P425_COD_CIUDAD_CR_ED;'))
,p_lov_display_null=>'YES'
,p_lov_cascade_parent_items=>'P425_COD_CIUDAD_CR_ED'
,p_ajax_items_to_submit=>'P425_COD_CIUDAD_CR_ED'
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
 p_id=>wwv_flow_imp.id(129989884163686208)
,p_name=>'P425_POR_DEFECTO_CR_ED'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(129113911518742150)
,p_prompt=>'Por defecto'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#:margin-top-md'
,p_attribute_01=>'N'
,p_attribute_02=>'S'
,p_attribute_03=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(129990230798686212)
,p_name=>'P425_P_NRO_LLAMADA'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(129990131517686211)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(129990378525686213)
,p_name=>'P425_P_COD_CLIENTE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(129990131517686211)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(129990468378686214)
,p_name=>'P425_P_NRO_TELEFONO'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(129990131517686211)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(129990542129686215)
,p_name=>'P425_P_NOMBRE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(129990131517686211)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(129990677746686216)
,p_name=>'P425_P_EMPRESA'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(129990131517686211)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(129990713458686217)
,p_name=>'P425_P_TIP_COMPROBANTE'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(129990131517686211)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(129990819255686218)
,p_name=>'P425_P_SER_COMPROBANTE'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(129990131517686211)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(129990989166686219)
,p_name=>'P425_P_NRO_COMPROBANTE'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(129990131517686211)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(129991340913686223)
,p_name=>'P425_NRO_LLAMADA'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(126456873516731643)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(131605994691543416)
,p_name=>'P425_SEQ_ID_DIRE_EDITAR'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(131605894820543415)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(131606051190543417)
,p_name=>'P425_SEQ_ID_DIRE_ELIMINAR'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(131605894820543415)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(131607715004543434)
,p_name=>'P425_URL'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(126563633800515014)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(131608433109543441)
,p_name=>'P425_IND_REP_CALLASALDET'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(126681095168984129)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(132237424571802918)
,p_name=>'P425_COD_AREA_TEL_C_E'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(128417519420124211)
,p_prompt=>unistr('Cod. \00C1rea ')
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(128416702591124203)
,p_validation_name=>'VL_FEC_MOVIMIENTO'
,p_validation_sequence=>20
,p_validation=>'P425_FEC_MOVIMIENTO'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'La fecha del movimiento no puede ser nulo.'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(128416888749124204)
,p_validation_name=>'VL_COD_CLIENTE'
,p_validation_sequence=>30
,p_validation=>'P425_COD_CLIENTE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>unistr('El c\00F3digo de cliente no puede ser nulo.')
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(128416948211124205)
,p_validation_name=>'VL_COD_USUARIO'
,p_validation_sequence=>40
,p_validation=>'P425_COD_USUARIO'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>unistr('El c\00F3digo de usuario no puede ser nulo.')
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(128417000620124206)
,p_validation_name=>'VL_COD_MOTIVO'
,p_validation_sequence=>50
,p_validation=>'P425_COD_MOTIVO'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>unistr('El c\00F3digo del motivo no puede ser nulo.')
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(128417141714124207)
,p_validation_name=>'VL_OBSERVACION'
,p_validation_sequence=>60
,p_validation=>'P425_OBSERVACION'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>unistr('La observaci\00F3n no puede ser nula.')
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(126564174833515019)
,p_name=>'DA_LOAD_ALERT'
,p_event_sequence=>10
,p_condition_element=>'P425_MENSAJE_ALERT'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(126564208706515020)
,p_event_id=>wwv_flow_imp.id(126564174833515019)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'&P425_MENSAJE_ALERT.'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P425_MENSAJE_ALERT'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(126565194925515029)
,p_name=>'DA_LOAD_ABRIR_BUSQUEDA'
,p_event_sequence=>20
,p_condition_element=>'P_NRO_LLAMADA'
,p_triggering_condition_type=>'NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(129992006036686230)
,p_event_id=>wwv_flow_imp.id(126565194925515029)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P425_COD_PERSONA_PER,P425_NOMBRE_PER,P425_IND_REP_BUSQ_LLAM,P425_IND_REP_PERSONA,P425_IND_REP_DIRECCION,P425_IND_REP_IDENTIFICACION,P425_IND_REP_TELEFONO,P425_IND_REP_EMAIL,P425_NRO_MOVIMIENTO,P425_NRO_LLAMADA,P425_FEC_MOVIMIENTO,P425_COD_CLIENTE,P42'
||'5_NRO_TELEFONO,P425_NOMBRE,P425_EMPRESA,P425_TIP_COMPROBANTE,P425_SER_COMPROBANTE,P425_NRO_COMPROBANTE,P425_COD_MOTIVO,P425_OBSERVACION,P425_CALIFICACION,P425_COD_USUARIO,P425_NRO_MOV_BUSQ,P425_FEC_MOV_INI_BUSQ,P425_IND_REP_BUSQ_LLAM,P425_FEC_MOV_FIN'
||'_BUSQ,P425_COD_CLIENTE_BUSQ,P425_TIP_COMP_BUSQ,P425_SER_COMP_BUSQ,P425_NRO_COMP_BUSQ,P425_FEC_ULT_PAGO_BUSQ,P425_IND_REP_CALLASALDET'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(129992158054686231)
,p_event_id=>wwv_flow_imp.id(126565194925515029)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(126565537853515033)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(132237000155802914)
,p_event_id=>wwv_flow_imp.id(126565194925515029)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(131608553104543442)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(129992281540686232)
,p_event_id=>wwv_flow_imp.id(126565194925515029)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(127099936754486703)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(129992384343686233)
,p_event_id=>wwv_flow_imp.id(126565194925515029)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(127100360396486707)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(129992404002686234)
,p_event_id=>wwv_flow_imp.id(126565194925515029)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(127100433701486708)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(129992505495686235)
,p_event_id=>wwv_flow_imp.id(126565194925515029)
,p_event_result=>'TRUE'
,p_action_sequence=>80
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(126456796692731642)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(126565251762515030)
,p_event_id=>wwv_flow_imp.id(126565194925515029)
,p_event_result=>'TRUE'
,p_action_sequence=>90
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(126565078779515028)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(126564423311515022)
,p_name=>'DA_LLAMAR_CAGESVIS'
,p_event_sequence=>30
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(126457011726731645)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(126564505617515023)
,p_event_id=>wwv_flow_imp.id(126564423311515022)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'	SELECT APEX_PAGE.GET_URL (  p_page   => 434,',
'				    p_items  => ''P434_P_TIP_COMPROBANTE,P434_P_SER_COMPROBANTE,P434_P_NRO_COMPROBANTE'',',
'				    p_values => (''''||:P425_TIP_COMPROBANTE||'',',
'                                  ''||:P425_SER_COMPROBANTE||'',',
'                                  ''||:P425_NRO_COMPROBANTE||'''')) f_url_1',
'		INTO :P425_URL',
'		FROM DUAL;        ',
'	 ',
'    --APEX_DEBUG.ERROR(:P425_URL);',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;'))
,p_attribute_02=>'P425_TIP_COMPROBANTE,P425_SER_COMPROBANTE,P425_NRO_COMPROBANTE'
,p_attribute_03=>'P425_URL'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(131607865039543435)
,p_event_id=>wwv_flow_imp.id(126564423311515022)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var url = apex.item("P425_URL").getValue();',
'',
'apex.navigation.openInNewWindow(url, "_blank");',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(126564633702515024)
,p_name=>'DA_LLAMAR_CACONVIS'
,p_event_sequence=>40
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(126457127762731646)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(131607917692543436)
,p_event_id=>wwv_flow_imp.id(126564633702515024)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'	SELECT APEX_PAGE.GET_URL (  p_page   => 427,',
'				    p_items  => ''P427_P_TIP_COMPROBANTE,P427_P_SER_COMPROBANTE,P427_P_NRO_COMPROBANTE'',',
'				    p_values => (''''||:P425_TIP_COMPROBANTE||'',',
'                                  ''||:P425_SER_COMPROBANTE||'',',
'                                  ''||:P425_NRO_COMPROBANTE||'''')) f_url_1',
'		INTO :P425_URL',
'		FROM DUAL;        ',
'	 ',
'    --APEX_DEBUG.ERROR(:P425_URL);',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;'))
,p_attribute_02=>'P425_TIP_COMPROBANTE,P425_SER_COMPROBANTE,P425_NRO_COMPROBANTE'
,p_attribute_03=>'P425_URL'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(131608066963543437)
,p_event_id=>wwv_flow_imp.id(126564633702515024)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var url = apex.item("P425_URL").getValue();',
'',
'apex.navigation.openInNewWindow(url, "_blank");',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(126564883687515026)
,p_name=>'DA_LLAMAR_CCRSALDO'
,p_event_sequence=>50
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(126457353468731648)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(126564966409515027)
,p_event_id=>wwv_flow_imp.id(126564883687515026)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'	SELECT APEX_PAGE.GET_URL (  p_page   => 85) f_url_1',
'		INTO :P425_URL',
'		FROM DUAL;        ',
'	 ',
'    --APEX_DEBUG.ERROR(:P425_URL);',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;'))
,p_attribute_03=>'P425_URL'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(131608331247543440)
,p_event_id=>wwv_flow_imp.id(126564883687515026)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var url = apex.item("P425_URL").getValue();',
'',
'apex.navigation.openInNewWindow(url, "_blank");',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(126680098762984119)
,p_name=>'DA_SELECCIONAR_LLAMADA'
,p_event_sequence=>60
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P425_ROW_ID_BUS_LLAM'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(126680162269984120)
,p_event_id=>wwv_flow_imp.id(126680098762984119)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(126565078779515028)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(126682082613984139)
,p_event_id=>wwv_flow_imp.id(126680098762984119)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    SELECT  tip_movimiento,',
'            nro_movimiento,',
'            fec_movimiento,',
'            cod_cliente,',
'            tip_comprobante,',
'            ser_comprobante,',
'            nro_comprobante,',
'            observacion,',
'            cod_usuario,',
'            calificacion,',
'            cod_motivo,',
'            nro_telefono,',
'            nombre,',
'            empresa,',
'            fecha_reagendada',
'            --hora_reagendada,',
'            --hora_fin',
'    INTO :P425_TIP_MOVIMIENTO, ',
'         :P425_NRO_MOVIMIENTO,',
'         :P425_FEC_MOVIMIENTO, ',
'         :P425_COD_CLIENTE,',
'         :P425_TIP_COMPROBANTE, ',
'         :P425_SER_COMPROBANTE, ',
'         :P425_NRO_COMPROBANTE, ',
'         :P425_OBSERVACION,',
'         :P425_COD_USUARIO, ',
'         :P425_CALIFICACION, ',
'         :P425_COD_MOTIVO, ',
'         :P425_NRO_TELEFONO, ',
'         :P425_NOMBRE,',
'         :P425_EMPRESA, ',
'         :P425_FECHA_REAGENDADA',
'    FROM',
'        ca_llamadas_salientes',
'    WHERE',
'        ROWID = :P425_ROW_ID_BUS_LLAM;',
'',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;'))
,p_attribute_02=>'P425_ROW_ID_BUS_LLAM'
,p_attribute_03=>'P425_TIP_MOVIMIENTO,P425_NRO_MOVIMIENTO,P425_FEC_MOVIMIENTO,P425_COD_CLIENTE,P425_TIP_COMPROBANTE,P425_SER_COMPROBANTE,P425_NRO_COMPROBANTE,P425_OBSERVACION,P425_COD_USUARIO,P425_CALIFICACION,P425_COD_MOTIVO,P425_NRO_TELEFONO,P425_NOMBRE_CR_ED,P425_E'
||'MPRESA,P425_FECHA_REAGENDADA,P425_NOMBRE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(126681355503984132)
,p_name=>'DA_BUSCAR_LLAMADA'
,p_event_sequence=>70
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(126681235070984131)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(126681496968984133)
,p_event_id=>wwv_flow_imp.id(126681355503984132)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    :P425_IND_REP_BUSQ_LLAM := ''1'';',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;'))
,p_attribute_03=>'P425_IND_REP_BUSQ_LLAM'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(126681548886984134)
,p_event_id=>wwv_flow_imp.id(126681355503984132)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(126565537853515033)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(126681757346984136)
,p_name=>'DA_LIMPIAR_CAMPOS_BUSQ_LLAM'
,p_event_sequence=>80
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(126681668898984135)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(126681829804984137)
,p_event_id=>wwv_flow_imp.id(126681757346984136)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P425_NRO_MOV_BUSQ,P425_FEC_MOV_INI_BUSQ,P425_IND_REP_BUSQ_LLAM,P425_FEC_MOV_FIN_BUSQ,P425_COD_CLIENTE_BUSQ,P425_TIP_COMP_BUSQ,P425_SER_COMP_BUSQ,P425_NRO_COMP_BUSQ,P425_FEC_ULT_PAGO_BUSQ'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(126681918136984138)
,p_event_id=>wwv_flow_imp.id(126681757346984136)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(126565537853515033)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(126682791714984146)
,p_name=>'DA_SETEAR_DATOS_PERSONA'
,p_event_sequence=>90
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P425_COD_CLIENTE'
,p_condition_element=>'P425_COD_CLIENTE'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(126682978146984148)
,p_event_id=>wwv_flow_imp.id(126682791714984146)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    BEGIN',
'      Select  p.cod_persona',
'        into :P425_COD_PERSONA',
'        from cc_clientes c, personas p',
'       where c.cod_empresa = :P_COD_EMPRESA',
'         and c.cod_cliente = :P425_COD_CLIENTE',
'         and c.cod_persona = p.cod_persona;   ',
'        ',
'      --personas;',
'      --email_contactos;',
'    EXCEPTION',
'        WHEN OTHERS THEN ',
'            APEX_DEBUG.ERROR(SQLERRM);',
'    END;',
'',
'EXCEPTION',
'    WHEN OTHERS THEN ',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;'))
,p_attribute_02=>'P425_COD_CLIENTE'
,p_attribute_03=>'P425_COD_PERSONA'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(126682506983984144)
,p_event_id=>wwv_flow_imp.id(126682791714984146)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    CALLASAL.PR_EMAIL_CONTACTOS (PI_COD_PERSONA => :P425_COD_PERSONA);',
'',
'    CALLASAL.PR_PERSONAS (PI_COD_PERSONA => :P425_COD_PERSONA,',
'                           PI_COD_CLIENTE => :P425_COD_CLIENTE,',
'                           PO_COD_PERSONA => :P425_COD_PERSONA_PER,',
'                           PO_NOMBRE => :P425_NOMBRE_PER,',
'                           PO_DIREC_ELECTRONICA => :P425_DIREC_ELECTRONICA_PER);',
'',
'    :P425_IND_REP_TELEFONO := ''1'';',
'    :P425_IND_REP_DIRECCION := ''1'';',
'    :P425_IND_REP_IDENTIFICACION := ''1'';',
'    :P425_IND_REP_EMAIL := ''1'';',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;',
'',
'',
'',
'',
'',
''))
,p_attribute_02=>'P425_COD_CLIENTE,P425_COD_PERSONA_PER,P425_NOMBRE_PER,P425_DIREC_ELECTRONICA_PER'
,p_attribute_03=>'P425_COD_PERSONA,P425_COD_PERSONA_PER,P425_NOMBRE_PER,P425_DIREC_ELECTRONICA_PER,P425_IND_REP_DIRECCION,P425_IND_REP_IDENTIFICACION,P425_IND_REP_TELEFONO,P425_IND_REP_EMAIL'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(127102951800486733)
,p_event_id=>wwv_flow_imp.id(126682791714984146)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(127099936754486703)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(126683089213984149)
,p_event_id=>wwv_flow_imp.id(126682791714984146)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(127100360396486707)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(127102275449486726)
,p_event_id=>wwv_flow_imp.id(126682791714984146)
,p_event_result=>'TRUE'
,p_action_sequence=>80
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(127100433701486708)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(127104183871486745)
,p_event_id=>wwv_flow_imp.id(126682791714984146)
,p_event_result=>'TRUE'
,p_action_sequence=>100
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(126456796692731642)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(127104551052486749)
,p_name=>'DA_CREAR_LLAMADA'
,p_event_sequence=>100
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(127104444294486748)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(127268816927907224)
,p_event_id=>wwv_flow_imp.id(127104551052486749)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>unistr('\00BFCrear un nuevo registro de llamada?')
,p_attribute_03=>'information'
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
 p_id=>wwv_flow_imp.id(127268903653907225)
,p_event_id=>wwv_flow_imp.id(127104551052486749)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P425_NRO_MOVIMIENTO,P425_FEC_MOVIMIENTO,P425_COD_CLIENTE,P425_NRO_TELEFONO,P425_NOMBRE_CR_ED,P425_EMPRESA,P425_TIP_COMPROBANTE,P425_SER_COMPROBANTE,P425_NRO_COMPROBANTE,P425_FEC_ULTIMO_PAGO,P425_COD_MOTIVO,P425_OBSERVACION,P425_CALIFICACION,P425_COD_'
||'USUARIO,P425_COD_PERSONA_PER,P425_NOMBRE_PER,P425_DIREC_ELECTRONICA_PER,P425_COD_PERSONA,P425_IND_REP_PERSONA,P425_IND_REP_DIRECCION,P425_IND_REP_IDENTIFICACION,P425_IND_REP_TELEFONO,P425_IND_REP_EMAIL'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(127269085285907226)
,p_event_id=>wwv_flow_imp.id(127104551052486749)
,p_event_result=>'TRUE'
,p_action_sequence=>80
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(127099936754486703)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(127269139636907227)
,p_event_id=>wwv_flow_imp.id(127104551052486749)
,p_event_result=>'TRUE'
,p_action_sequence=>90
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(127100360396486707)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(127269257826907228)
,p_event_id=>wwv_flow_imp.id(127104551052486749)
,p_event_result=>'TRUE'
,p_action_sequence=>100
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(127100433701486708)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(127269303979907229)
,p_event_id=>wwv_flow_imp.id(127104551052486749)
,p_event_result=>'TRUE'
,p_action_sequence=>110
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(126456796692731642)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(129991921314686229)
,p_event_id=>wwv_flow_imp.id(127104551052486749)
,p_event_result=>'TRUE'
,p_action_sequence=>130
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    :P425_TIP_MOVIMIENTO := ''INF'';',
'    :P425_COD_USUARIO := :P_COD_USUARIO;',
'    :P425_FEC_MOVIMIENTO := trae_fecha(:P_COD_EMPRESA, :P425_COD_MODULO);',
'    :P425_HORA_LLAMADA := to_char(sysdate,''HH24:MI:SS'');',
'    :P425_CONSULTO :=''N'';',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;',
'',
''))
,p_attribute_02=>'P425_COD_MODULO'
,p_attribute_03=>'P425_COD_USUARIO,P425_TIP_MOVIMIENTO,P425_FEC_MOVIMIENTO,P425_HORA_LLAMADA,P425_CONSULTO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(127269845938907234)
,p_event_id=>wwv_flow_imp.id(127104551052486749)
,p_event_result=>'TRUE'
,p_action_sequence=>140
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    INSERT INTO CA_LLAMADAS_SALIENTES (COD_EMPRESA, ',
'                                       TIP_MOVIMIENTO,',
'                                       NRO_MOVIMIENTO,',
'                                       HORA_LLAMADA,',
'                                       COD_USUARIO,',
'                                       FEC_MOVIMIENTO)',
'                               VALUES (:P_COD_EMPRESA,',
'                                       :P425_TIP_MOVIMIENTO,',
'                                       :P425_NRO_MOVIMIENTO,',
'                                       :P425_HORA_LLAMADA,',
'                                       :P425_COD_USUARIO,',
'                                       :P425_FEC_MOVIMIENTO);',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;',
'',
'',
'',
''))
,p_attribute_02=>'P425_TIP_MOVIMIENTO,P425_NRO_MOVIMIENTO,P425_HORA_LLAMADA,P425_COD_USUARIO,P425_FEC_MOVIMIENTO'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_server_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(127104664801486750)
,p_event_id=>wwv_flow_imp.id(127104551052486749)
,p_event_result=>'TRUE'
,p_action_sequence=>150
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(126565078779515028)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(127267276531907208)
,p_name=>'DA_ABRIR_BUSQ_LLAM'
,p_event_sequence=>110
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(127267174117907207)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(127269618617907232)
,p_event_id=>wwv_flow_imp.id(127267276531907208)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P425_NRO_MOV_BUSQ,P425_FEC_MOV_INI_BUSQ,P425_IND_REP_BUSQ_LLAM,P425_FEC_MOV_FIN_BUSQ,P425_COD_CLIENTE_BUSQ,P425_TIP_COMP_BUSQ,P425_SER_COMP_BUSQ,P425_NRO_COMP_BUSQ,P425_FEC_ULT_PAGO_BUSQ'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(127267633898907212)
,p_event_id=>wwv_flow_imp.id(127267276531907208)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(126565537853515033)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(127267304538907209)
,p_event_id=>wwv_flow_imp.id(127267276531907208)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(126565078779515028)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(127267800447907214)
,p_name=>'DA_CREAR_LLAMADA_MAIN'
,p_event_sequence=>120
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(127267009580907206)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(127267789638907213)
,p_event_id=>wwv_flow_imp.id(127267800447907214)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>unistr('\00BFCrear un nuevo registro de llamada?')
,p_attribute_03=>'information'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(127268276565907218)
,p_event_id=>wwv_flow_imp.id(127267800447907214)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P425_NRO_MOVIMIENTO,P425_FEC_MOVIMIENTO,P425_COD_CLIENTE,P425_NRO_TELEFONO,P425_NOMBRE_CR_ED,P425_EMPRESA,P425_TIP_COMPROBANTE,P425_SER_COMPROBANTE,P425_NRO_COMPROBANTE,P425_FEC_ULTIMO_PAGO,P425_COD_MOTIVO,P425_OBSERVACION,P425_CALIFICACION,P425_COD_'
||'USUARIO,P425_COD_PERSONA_PER,P425_NOMBRE_PER,P425_DIREC_ELECTRONICA_PER,P425_COD_PERSONA,P425_IND_REP_PERSONA,P425_IND_REP_DIRECCION,P425_IND_REP_IDENTIFICACION,P425_IND_REP_TELEFONO,P425_IND_REP_EMAIL,P425_NOMBRE'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(127268496251907220)
,p_event_id=>wwv_flow_imp.id(127267800447907214)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(127099936754486703)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(127268597363907221)
,p_event_id=>wwv_flow_imp.id(127267800447907214)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(127100360396486707)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(127268677570907222)
,p_event_id=>wwv_flow_imp.id(127267800447907214)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(127100433701486708)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(127268783294907223)
,p_event_id=>wwv_flow_imp.id(127267800447907214)
,p_event_result=>'TRUE'
,p_action_sequence=>80
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(126456796692731642)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(127268181271907217)
,p_event_id=>wwv_flow_imp.id(127267800447907214)
,p_event_result=>'TRUE'
,p_action_sequence=>90
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    :P425_TIP_MOVIMIENTO := ''INF'';',
'    :P425_COD_USUARIO := :P_COD_USUARIO;',
'    :P425_FEC_MOVIMIENTO := trae_fecha(:P_COD_EMPRESA, :P425_COD_MODULO);',
'    :P425_HORA_LLAMADA := to_char(sysdate,''HH24:MI:SS'');',
'    :P425_CONSULTO :=''N'';',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;',
'',
''))
,p_attribute_02=>'P425_COD_MODULO'
,p_attribute_03=>'P425_COD_USUARIO,P425_TIP_MOVIMIENTO,P425_FEC_MOVIMIENTO,P425_HORA_LLAMADA,P425_CONSULTO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(127269904280907235)
,p_event_id=>wwv_flow_imp.id(127267800447907214)
,p_event_result=>'TRUE'
,p_action_sequence=>110
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    INSERT INTO CA_LLAMADAS_SALIENTES (COD_EMPRESA, ',
'                                       TIP_MOVIMIENTO,',
'                                       NRO_MOVIMIENTO,',
'                                       HORA_LLAMADA,',
'                                       COD_USUARIO,',
'                                       FEC_MOVIMIENTO)',
'                               VALUES (:P_COD_EMPRESA,',
'                                       :P425_TIP_MOVIMIENTO,',
'                                       :P425_NRO_MOVIMIENTO,',
'                                       :P425_HORA_LLAMADA,',
'                                       :P425_COD_USUARIO,',
'                                       :P425_FEC_MOVIMIENTO);',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;',
'',
'',
'',
''))
,p_attribute_02=>'P425_TIP_MOVIMIENTO,P425_NRO_MOVIMIENTO,P425_HORA_LLAMADA,P425_COD_USUARIO,P425_FEC_MOVIMIENTO'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_server_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(127270104747907237)
,p_name=>'DA_REAGENDADA'
,p_event_sequence=>130
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(126457439463731649)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(127270284021907238)
,p_event_id=>wwv_flow_imp.id(127270104747907237)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(127270069528907236)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(127271146753907247)
,p_name=>'DA_ASIGNAR_AGENDADA'
,p_event_sequence=>140
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(127270935180907245)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(127271244172907248)
,p_event_id=>wwv_flow_imp.id(127271146753907247)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    :P425_OBSERVACION := :P425_OBSERVACION||'' Reagendada: ''||:P425_FECHA_REAGENDADA ||'' ''||:P425_HORA_REAGENDADA;',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;'))
,p_attribute_02=>'P425_OBSERVACION,P425_FECHA_REAGENDADA'
,p_attribute_03=>'P425_OBSERVACION'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(127271477061907250)
,p_event_id=>wwv_flow_imp.id(127271146753907247)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(127270069528907236)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(127311765031320801)
,p_name=>'DA_CERRAR_REAGENDAR'
,p_event_sequence=>150
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(127271045631907246)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(127311999367320803)
,p_event_id=>wwv_flow_imp.id(127311765031320801)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(127270069528907236)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(127313187284320815)
,p_name=>'DA_HOY'
,p_event_sequence=>160
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(127312136330320805)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(127313237562320816)
,p_event_id=>wwv_flow_imp.id(127313187284320815)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    :P425_FECHA_REAGENDADA := sysdate;',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;'))
,p_attribute_03=>'P425_FECHA_REAGENDADA'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(127313809173320822)
,p_name=>'DA_SIGUIENTE_DIA'
,p_event_sequence=>170
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(127312377434320807)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(127313915304320823)
,p_event_id=>wwv_flow_imp.id(127313809173320822)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    :P425_FECHA_REAGENDADA := sysdate+ 1;',
'',
'    IF TO_CHAR(:P425_FECHA_REAGENDADA,''D'')= 6 THEN 	',
'        :P425_FECHA_REAGENDADA := :P425_FECHA_REAGENDADA+2;',
'    ELSIF TO_CHAR(:P425_FECHA_REAGENDADA,''D'')= 7 THEN ',
'        :P425_FECHA_REAGENDADA := :P425_FECHA_REAGENDADA+1;',
'    END IF;	',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;'))
,p_attribute_02=>'P425_FECHA_REAGENDADA'
,p_attribute_03=>'P425_FECHA_REAGENDADA'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(127314020051320824)
,p_name=>'DA_DIAS_5'
,p_event_sequence=>180
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(127312535213320809)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(127314223927320826)
,p_event_id=>wwv_flow_imp.id(127314020051320824)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    :P425_FECHA_REAGENDADA := sysdate + 5;',
'',
'    IF TO_CHAR(:P425_FECHA_REAGENDADA,''D'')= 6 THEN 	',
'        :P425_FECHA_REAGENDADA := :P425_FECHA_REAGENDADA+2;',
'    ELSIF TO_CHAR(:P425_FECHA_REAGENDADA,''D'')= 7 THEN ',
'        :P425_FECHA_REAGENDADA := :P425_FECHA_REAGENDADA+1;',
'    END IF;',
'    	',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;'))
,p_attribute_02=>'P425_FECHA_REAGENDADA'
,p_attribute_03=>'P425_FECHA_REAGENDADA'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(127314358929320827)
,p_name=>'DA_DIAS_10'
,p_event_sequence=>190
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(127312207879320806)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(127314526742320829)
,p_event_id=>wwv_flow_imp.id(127314358929320827)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    :P425_FECHA_REAGENDADA := sysdate + 10;',
'',
'    IF TO_CHAR(:P425_FECHA_REAGENDADA,''D'')= 6 THEN 	',
'        :P425_FECHA_REAGENDADA := :P425_FECHA_REAGENDADA+2;',
'    ELSIF TO_CHAR(:P425_FECHA_REAGENDADA,''D'')= 7 THEN ',
'        :P425_FECHA_REAGENDADA := :P425_FECHA_REAGENDADA+1;',
'    END IF;	',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;'))
,p_attribute_02=>'P425_FECHA_REAGENDADA'
,p_attribute_03=>'P425_FECHA_REAGENDADA'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(127314649623320830)
,p_name=>'DA_HORA1'
,p_event_sequence=>200
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(127313348449320817)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(127314753400320831)
,p_event_id=>wwv_flow_imp.id(127314649623320830)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    :P425_HORA_REAGENDADA :=''08:00 a 10:00'';',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;'))
,p_attribute_03=>'P425_HORA_REAGENDADA'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(127314888458320832)
,p_name=>'DA_HORA2'
,p_event_sequence=>210
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(127313427579320818)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(127315017689320834)
,p_event_id=>wwv_flow_imp.id(127314888458320832)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    :P425_HORA_REAGENDADA :=''10:00 a 12:00'';',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;'))
,p_attribute_03=>'P425_HORA_REAGENDADA'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(127315172604320835)
,p_name=>'DA_HORA3'
,p_event_sequence=>220
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(127313540165320819)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(127315374320320837)
,p_event_id=>wwv_flow_imp.id(127315172604320835)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    :P425_HORA_REAGENDADA :=''13:00 a 15:00'';',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;'))
,p_attribute_03=>'P425_HORA_REAGENDADA'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(127315483975320838)
,p_name=>'DA_HORA4'
,p_event_sequence=>230
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(127313641854320820)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(127315646290320840)
,p_event_id=>wwv_flow_imp.id(127315483975320838)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    :P425_HORA_REAGENDADA :=''15:00 a 18:00'';',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;'))
,p_attribute_03=>'P425_HORA_REAGENDADA'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(127316454796320848)
,p_name=>'DA_GUARDAR_DATOS_BD'
,p_event_sequence=>240
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(127316074129320844)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(127316563032320849)
,p_event_id=>wwv_flow_imp.id(127316454796320848)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_01=>'GUARDAR'
,p_attribute_02=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(128418159731124217)
,p_name=>'DA_ELIMINAR_TELEFONO'
,p_event_sequence=>250
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P425_SEQ_ID_TEL_ELIMINAR'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(128418244698124218)
,p_event_id=>wwv_flow_imp.id(128418159731124217)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>unistr('\00BFDesea eliminar el registro?')
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(128418409146124220)
,p_event_id=>wwv_flow_imp.id(128418159731124217)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    CALLASAL.PR_BORRAR_MIE_TEL (PI_SEQ_ID_ELIMINAR => :P425_SEQ_ID_TEL_ELIMINAR);',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;'))
,p_attribute_02=>'P425_SEQ_ID_TEL_ELIMINAR'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(128418508519124221)
,p_event_id=>wwv_flow_imp.id(128418159731124217)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(127099936754486703)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(128418613818124222)
,p_name=>'DA_EDITAR_TELEFONO'
,p_event_sequence=>260
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P425_SEQ_ID_TEL_EDITAR'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(128419596132124231)
,p_event_id=>wwv_flow_imp.id(128418613818124222)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(128419207387124228)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(128419652970124232)
,p_event_id=>wwv_flow_imp.id(128418613818124222)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(128419457458124230)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(128419783595124233)
,p_event_id=>wwv_flow_imp.id(128418613818124222)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    SELECT C002,',
'           C003,',
'           C004,',
'           C005,',
'           C006',
'',
'    INTO :P425_TIP_TELEF_CR_ED,',
'         :P425_TEL_UBIC_CR_ED,',
'         :P425_NOTA_CR_ED,',
'         :P425_COD_AREA_TEL_C_E,',
'         :P425_NUM_TELEF_CR_ED',
'',
'    FROM APEX_COLLECTIONS',
'    WHERE COLLECTION_NAME = ''TELEFONOS''',
'    AND SEQ_ID = :P425_SEQ_ID_TEL_EDITAR;',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;',
'',
''))
,p_attribute_02=>'P425_SEQ_ID_TEL_EDITAR'
,p_attribute_03=>'P425_COD_AREA_TEL_C_E,P425_NUM_TELEF_CR_ED,P425_TIP_TELEF_CR_ED,P425_TEL_UBIC_CR_ED,P425_NOTA_CR_ED'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(128418775430124223)
,p_event_id=>wwv_flow_imp.id(128418613818124222)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(128417519420124211)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(128419836008124234)
,p_name=>'DA_CERRAR_CR_ED_TEL'
,p_event_sequence=>270
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(128419324979124229)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(128419924163124235)
,p_event_id=>wwv_flow_imp.id(128419836008124234)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(128417519420124211)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(128420013936124236)
,p_name=>'DA_EDITAR_TEL_COL'
,p_event_sequence=>280
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(128419207387124228)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(128420845360124244)
,p_event_id=>wwv_flow_imp.id(128420013936124236)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    CALLASAL.PR_MODIFICAR_MIE_TEL (PI_SEQ_ID_EDITAR => :P425_SEQ_ID_TEL_EDITAR,',
'                                    PI_COD_AREA_TELEFONO => :P425_COD_AREA_TEL_C_E,',
'                                    PI_NUM_TELEFONO => :P425_NUM_TELEF_CR_ED,',
'                                    PI_TIP_TELEFONO => :P425_TIP_TELEF_CR_ED,',
'                                    PI_TEL_UBICACION => :P425_TEL_UBIC_CR_ED,',
'                                    PI_NOTA => :P425_NOTA_CR_ED);',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;',
'',
''))
,p_attribute_02=>'P425_COD_AREA_TEL_C_E,P425_SEQ_ID_TEL_EDITAR,P425_NUM_TELEF_CR_ED,P425_TIP_TELEF_CR_ED,P425_TEL_UBIC_CR_ED,P425_NOTA_CR_ED'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(128420343383124239)
,p_event_id=>wwv_flow_imp.id(128420013936124236)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(127099936754486703)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(128420228157124238)
,p_event_id=>wwv_flow_imp.id(128420013936124236)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(128417519420124211)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(128420561601124241)
,p_name=>'DA_CREAR_TELEFONO'
,p_event_sequence=>290
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(128420406469124240)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(128420761282124243)
,p_event_id=>wwv_flow_imp.id(128420561601124241)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P425_COD_AREA_TEL_C_E,P425_NUM_TELEF_CR_ED,P425_TIP_TELEF_CR_ED,P425_TEL_UBIC_CR_ED,P425_NOTA_CR_ED'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(128421237538124248)
,p_event_id=>wwv_flow_imp.id(128420561601124241)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(128419457458124230)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(128421312480124249)
,p_event_id=>wwv_flow_imp.id(128420561601124241)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(128419207387124228)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(128420618123124242)
,p_event_id=>wwv_flow_imp.id(128420561601124241)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(128417519420124211)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(128420954803124245)
,p_name=>'DA_AGREGAR_TEL'
,p_event_sequence=>300
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(128419457458124230)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(128420188318124237)
,p_event_id=>wwv_flow_imp.id(128420954803124245)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    CALLASAL.PR_AGREGAR_MIE_TEL (PI_COD_AREA_TELEFONO => :P425_COD_AREA_TEL_C_E,',
'                                 PI_NUM_TELEFONO => :P425_NUM_TELEF_CR_ED,',
'                                 PI_TIP_TELEFONO => :P425_TIP_TELEF_CR_ED,',
'                                 PI_TEL_UBICACION => :P425_TEL_UBIC_CR_ED,',
'                                 PI_NOTA => :P425_NOTA_CR_ED);',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;',
'',
''))
,p_attribute_02=>'P425_COD_AREA_TEL_C_E,P425_SEQ_ID_TEL_EDITAR,P425_NUM_TELEF_CR_ED,P425_TIP_TELEF_CR_ED,P425_TEL_UBIC_CR_ED,P425_NOTA_CR_ED'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(128421122168124247)
,p_event_id=>wwv_flow_imp.id(128420954803124245)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(127099936754486703)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(128421425161124250)
,p_event_id=>wwv_flow_imp.id(128420954803124245)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(128417519420124211)
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
 p_id=>wwv_flow_imp.id(128739816822513513)
,p_name=>'DA_CERRAR_IDENT_CR_ED'
,p_event_sequence=>310
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(128739710643513512)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(128739908422513514)
,p_event_id=>wwv_flow_imp.id(128739816822513513)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(128739258779513507)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(128740140441513516)
,p_name=>'DA_ABRIR_IDENT_CR'
,p_event_sequence=>320
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(128738813610513503)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(128740226866513517)
,p_event_id=>wwv_flow_imp.id(128740140441513516)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(128739554555513510)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(128740349435513518)
,p_event_id=>wwv_flow_imp.id(128740140441513516)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(128740015352513515)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(128740591320513520)
,p_event_id=>wwv_flow_imp.id(128740140441513516)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P425_COD_IDENT_CR_ED,P425_NUMERO_CR_ED'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(128740404151513519)
,p_event_id=>wwv_flow_imp.id(128740140441513516)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(128739258779513507)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(128740675899513521)
,p_name=>'DA_AGREGAR_IDENT'
,p_event_sequence=>330
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(128739554555513510)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(128740761795513522)
,p_event_id=>wwv_flow_imp.id(128740675899513521)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    CALLASAL.PR_AGREGAR_MIE_IDENT (PI_COD_IDENT => :P425_COD_IDENT_CR_ED,',
'                                   PI_NUMERO => :P425_NUMERO_CR_ED); ',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;',
'',
''))
,p_attribute_02=>'P425_COD_IDENT_CR_ED,P425_NUMERO_CR_ED'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(128740934055513524)
,p_event_id=>wwv_flow_imp.id(128740675899513521)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(127100433701486708)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(128740855467513523)
,p_event_id=>wwv_flow_imp.id(128740675899513521)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(128739258779513507)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(128741432549513529)
,p_name=>'DA_ELIMINAR_IDENTIFICACION'
,p_event_sequence=>340
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P425_SEQ_ID_IDENT_ELIMINAR'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(128741632206513531)
,p_event_id=>wwv_flow_imp.id(128741432549513529)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>unistr('\00BFDesea eliminar el registro?')
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(128741785577513532)
,p_event_id=>wwv_flow_imp.id(128741432549513529)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    CALLASAL.PR_BORRAR_MIE_IDENT (PI_SEQ_ID_ELIMINAR => :P425_SEQ_ID_IDENT_ELIMINAR);',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;'))
,p_attribute_02=>'P425_SEQ_ID_IDENT_ELIMINAR'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(128741800761513533)
,p_event_id=>wwv_flow_imp.id(128741432549513529)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(127100433701486708)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(128741929514513534)
,p_name=>'DA_EDITAR_IDENTIFICACION'
,p_event_sequence=>350
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P425_SEQ_ID_IDENT_EDITAR'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(128742163670513536)
,p_event_id=>wwv_flow_imp.id(128741929514513534)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(128740015352513515)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(128742227201513537)
,p_event_id=>wwv_flow_imp.id(128741929514513534)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(128739554555513510)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(128742349627513538)
,p_event_id=>wwv_flow_imp.id(128741929514513534)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    SELECT C001,',
'           C002',
'    INTO :P425_COD_IDENT_CR_ED,',
'         :P425_NUMERO_CR_ED',
'',
'    FROM APEX_COLLECTIONS',
'    WHERE COLLECTION_NAME = ''IDENTIFICACION''',
'    AND SEQ_ID = :P425_SEQ_ID_IDENT_EDITAR;',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;',
'',
''))
,p_attribute_02=>'P425_SEQ_ID_IDENT_EDITAR'
,p_attribute_03=>'P425_COD_IDENT_CR_ED,P425_NUMERO_CR_ED'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(128742474642513539)
,p_event_id=>wwv_flow_imp.id(128741929514513534)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(128739258779513507)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(128742598365513540)
,p_name=>'DA_EDITAR_IDENT'
,p_event_sequence=>360
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(128740015352513515)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(128742733761513542)
,p_event_id=>wwv_flow_imp.id(128742598365513540)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    CALLASAL.PR_MODIFICAR_MIE_IDENT (PI_SEQ_ID_EDITAR => :P425_SEQ_ID_IDENT_EDITAR,',
'                                     PI_COD_IDENTIFICACION => :P425_COD_IDENT_CR_ED,',
'                                     PI_NUMERO => :P425_NUMERO_CR_ED);',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;',
'',
'',
'',
''))
,p_attribute_02=>'P425_SEQ_ID_IDENT_EDITAR,P425_COD_IDENT_CR_ED,P425_NUMERO_CR_ED'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(128742817203513543)
,p_event_id=>wwv_flow_imp.id(128742598365513540)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(127100433701486708)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(128742953639513544)
,p_event_id=>wwv_flow_imp.id(128742598365513540)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(128739258779513507)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(129109506365742106)
,p_name=>'DA_CERRAR_EMAIL_CR_ED'
,p_event_sequence=>370
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(129109440353742105)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(129109606192742107)
,p_event_id=>wwv_flow_imp.id(129109506365742106)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(128743201148513547)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(129109733238742108)
,p_name=>'DA_ABRIR_EMAIL_CR_ED'
,p_event_sequence=>380
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(128743153111513546)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(129109973848742110)
,p_event_id=>wwv_flow_imp.id(129109733238742108)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(129110051256742111)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(129110282495742113)
,p_event_id=>wwv_flow_imp.id(129109733238742108)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(129110154758742112)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(129110338314742114)
,p_event_id=>wwv_flow_imp.id(129109733238742108)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P425_COD_AREA_TEL_C_E,P425_DESC_AREA_CR_ED,P425_NOM_CONT_CR_ED,P425_DESC_AREA_CON_CR_ED,P425_COD_PER_CONT_CR_ED,P425_NOMBRE_CR_ED,P425_DIREC_ELECT_CR_ED'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(129109836259742109)
,p_event_id=>wwv_flow_imp.id(129109733238742108)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(128743201148513547)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(129110476132742115)
,p_name=>'DA_AGREGAR_EMAIL_COL'
,p_event_sequence=>390
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(129110051256742111)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(129110643218742117)
,p_event_id=>wwv_flow_imp.id(129110476132742115)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'     CALLASAL.PR_AGREGAR_MIE_EMAIL (PI_COD_AREA => :P425_COD_AREA_CR_ED,',
'                                    PI_DESC_AREA => :P425_DESC_AREA_CR_ED,',
'                                    PI_NOMBRE_CONTACTO => :P425_NOM_CONT_CR_ED,',
'                                    PI_DESC_AREA_CONTACTO => :P425_DESC_AREA_CON_CR_ED,',
'                                    PI_COD_PERSONA_CONTACTO => :P425_COD_PER_CONT_CR_ED,',
'                                    PI_NOMBRE => :P425_NOMBRE_CR_ED,',
'                                    PI_DIREC_ELECTRONICA => :P425_DIREC_ELECT_CR_ED);',
'',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;',
'',
''))
,p_attribute_02=>'P425_COD_AREA_TEL_C_E,P425_DESC_AREA_CR_ED,P425_NOM_CONT_CR_ED,P425_DESC_AREA_CON_CR_ED,P425_COD_PER_CONT_CR_ED,P425_NOMBRE_CR_ED,P425_DIREC_ELECT_CR_ED'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(129110704661742118)
,p_event_id=>wwv_flow_imp.id(129110476132742115)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(126456796692731642)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(129110533159742116)
,p_event_id=>wwv_flow_imp.id(129110476132742115)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(128743201148513547)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(129111408283742125)
,p_name=>'DA_EDITAR_MAIL'
,p_event_sequence=>400
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P425_SEQ_ID_EMAIL_EDITAR'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(129111635730742127)
,p_event_id=>wwv_flow_imp.id(129111408283742125)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(129110154758742112)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(129111756795742128)
,p_event_id=>wwv_flow_imp.id(129111408283742125)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(129110051256742111)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(129111896842742129)
,p_event_id=>wwv_flow_imp.id(129111408283742125)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    SELECT C001,',
'           C002,',
'           C003,',
'           C004,',
'           C005,     ',
'           C006,  ',
'           C007',
'    INTO :P425_COD_AREA_CR_ED,',
'         :P425_DESC_AREA_CR_ED,',
'         :P425_NOM_CONT_CR_ED,',
'         :P425_DESC_AREA_CON_CR_ED,',
'         :P425_COD_PER_CONT_CR_ED,',
'         :P425_NOMBRE_CR_ED,',
'         :P425_DIREC_ELECT_CR_ED',
'',
'    FROM APEX_COLLECTIONS',
'    WHERE COLLECTION_NAME = ''EMAIL_CONTACTOS''',
'    AND SEQ_ID = :P425_SEQ_ID_EMAIL_EDITAR;',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;',
''))
,p_attribute_02=>'P425_SEQ_ID_EMAIL_EDITAR'
,p_attribute_03=>'P425_COD_AREA_TEL_C_E,P425_DESC_AREA_CR_ED,P425_NOM_CONT_CR_ED,P425_DESC_AREA_CON_CR_ED,P425_COD_PER_CONT_CR_ED,P425_NOMBRE_CR_ED,P425_DIREC_ELECT_CR_ED'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(129111970070742130)
,p_event_id=>wwv_flow_imp.id(129111408283742125)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(128743201148513547)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(129112372908742134)
,p_name=>'DA_ELIMINAR_EMAIL'
,p_event_sequence=>410
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P425_SEQ_ID_EMAIL_ELIMINAR'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(129112560161742136)
,p_event_id=>wwv_flow_imp.id(129112372908742134)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>unistr('\00BFDesea eliminar el registro?')
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(129112696696742137)
,p_event_id=>wwv_flow_imp.id(129112372908742134)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    CALLASAL.PR_BORRAR_MIE_EMAIL (PI_SEQ_ID_ELIMINAR => :P425_SEQ_ID_EMAIL_ELIMINAR);',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;'))
,p_attribute_02=>'P425_SEQ_ID_EMAIL_ELIMINAR'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(129112762686742138)
,p_event_id=>wwv_flow_imp.id(129112372908742134)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(126456796692731642)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(129112855209742139)
,p_name=>'DA_EDITAR_EMAIL_COL'
,p_event_sequence=>420
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(129110154758742112)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(129113309234742144)
,p_event_id=>wwv_flow_imp.id(129112855209742139)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'     CALLASAL.PR_MODIFICAR_MIE_EMAIL (PI_SEQ_ID_EDITAR => :P425_SEQ_ID_EMAIL_EDITAR,',
'                                      PI_COD_AREA => :P425_COD_AREA_CR_ED,',
'                                      PI_DESC_AREA => :P425_DESC_AREA_CR_ED,',
'                                      PI_NOMBRE_CONTACTO => :P425_NOM_CONT_CR_ED,',
'                                      PI_DESC_AREA_CONTACTO => :P425_DESC_AREA_CON_CR_ED,',
'                                      PI_COD_PERSONA_CONTACTO => :P425_COD_PER_CONT_CR_ED,',
'                                      PI_NOMBRE => :P425_NOMBRE_CR_ED,',
'                                      PI_DIREC_ELECTRONICA => :P425_DIREC_ELECT_CR_ED);',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;',
'',
'',
''))
,p_attribute_02=>'P425_SEQ_ID_EMAIL_EDITAR,P425_COD_AREA_TEL_C_E,P425_DESC_AREA_CR_ED,P425_NOM_CONT_CR_ED,P425_DESC_AREA_CON_CR_ED,P425_COD_PER_CONT_CR_ED,P425_NOMBRE_CR_ED,P425_DIREC_ELECT_CR_ED'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(129113198591742142)
,p_event_id=>wwv_flow_imp.id(129112855209742139)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(126456796692731642)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(129113249657742143)
,p_event_id=>wwv_flow_imp.id(129112855209742139)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(128743201148513547)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(129113409089742145)
,p_name=>'DA_SETEAR_DESC_AREA'
,p_event_sequence=>430
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P425_COD_AREA_TEL_C_E'
,p_condition_element=>'P425_COD_AREA_TEL_C_E'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(129113560114742146)
,p_event_id=>wwv_flow_imp.id(129113409089742145)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    BEGIN',
'        select descripcion        ',
'        into :P425_DESC_AREA_CR_ED           ',
'        from areas_contactos',
'       where cod_empresa = :P_COD_EMPRESA',
'         and cod_area    = :P425_COD_AREA_CR_ED;',
'    EXCEPTION',
'       WHEN no_data_found THEN',
'         :P425_DESC_AREA_CR_ED := NULL;',
'      WHEN others THEN',
'         :P425_DESC_AREA_CR_ED := NULL ;',
'    END;',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;'))
,p_attribute_02=>'P425_COD_AREA_TEL_C_E'
,p_attribute_03=>'P425_DESC_AREA_CR_ED'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(129113667003742147)
,p_name=>'DA_SETEAR_NOM_CONT'
,p_event_sequence=>440
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P425_COD_PER_CONT_CR_ED'
,p_condition_element=>'P425_COD_PER_CONT_CR_ED'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(129113727784742148)
,p_event_id=>wwv_flow_imp.id(129113667003742147)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    BEGIN',
'      select nvl(ltrim( nombre ),ltrim( nomb_fantasia ))           ',
'       into :P425_NOMBRE      ',
'         from personas',
'         where cod_persona = :P425_COD_PER_CONT_CR_ED ;',
'   EXCEPTION',
'      WHEN no_data_found THEN',
'         :P425_NOMBRE := NULL;',
'         :P425_NOMBRE := NULL;',
'',
'      when others then',
'         :P425_NOMBRE := NULL;',
'         :P425_NOMBRE := NULL;',
'   END ;  ',
'',
'',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;'))
,p_attribute_02=>'P425_COD_PER_CONT_CR_ED'
,p_attribute_03=>'P425_NOMBRE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(129989974938686209)
,p_name=>'DA_ABRIR_DIRECCION_CR_ED'
,p_event_sequence=>450
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(128743005048513545)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(129993835866686248)
,p_event_id=>wwv_flow_imp.id(129989974938686209)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P425_COD_DIRECCION_CR_ED,P425_POR_DEFECTO_CR_ED,P425_TIP_DIRECCION_CR_ED,P425_DETALLE_CR_ED,P425_COD_PAIS_CR_ED,P425_COD_PROVINCIA_CR_ED,P425_COD_CIUDAD_CR_ED,P425_COD_BARRIO_CR_ED'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(131604844922543405)
,p_event_id=>wwv_flow_imp.id(129989974938686209)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(131604641726543403)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(131604921521543406)
,p_event_id=>wwv_flow_imp.id(129989974938686209)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(131604730050543404)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(129990021565686210)
,p_event_id=>wwv_flow_imp.id(129989974938686209)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(129113911518742150)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(129991166351686221)
,p_name=>'DA_CARGAR_DATOS_PARAMETRO'
,p_event_sequence=>460
,p_condition_element=>'P_NRO_LLAMADA'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(129993254165686242)
,p_event_id=>wwv_flow_imp.id(129991166351686221)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P425_COD_PERSONA_PER,P425_NOMBRE_PER,P425_IND_REP_BUSQ_LLAM,P425_IND_REP_PERSONA,P425_IND_REP_DIRECCION,P425_IND_REP_IDENTIFICACION,P425_IND_REP_TELEFONO,P425_IND_REP_EMAIL,P425_NRO_MOVIMIENTO,P425_NRO_LLAMADA,P425_FEC_MOVIMIENTO,P425_COD_CLIENTE,P42'
||'5_NRO_TELEFONO,P425_NOMBRE,P425_EMPRESA,P425_TIP_COMPROBANTE,P425_SER_COMPROBANTE,P425_NRO_COMPROBANTE,P425_COD_MOTIVO,P425_OBSERVACION,P425_CALIFICACION,P425_COD_USUARIO,P425_NRO_MOV_BUSQ,P425_FEC_MOV_INI_BUSQ,P425_IND_REP_BUSQ_LLAM,P425_FEC_MOV_FIN'
||'_BUSQ,P425_COD_CLIENTE_BUSQ,P425_TIP_COMP_BUSQ,P425_SER_COMP_BUSQ,P425_NRO_COMP_BUSQ,P425_FEC_ULT_PAGO_BUSQ'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(129991273140686222)
,p_event_id=>wwv_flow_imp.id(129991166351686221)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    IF :P425_P_NRO_LLAMADA IS NOT NULL THEN',
'        :P425_NRO_LLAMADA := :P425_P_NRO_LLAMADA;',
'        :P425_COD_CLIENTE := :P425_P_COD_CLIENTE;',
'        :P425_NRO_TELEFONO := :P425_P_NRO_TELEFONO;',
'        :P425_NOMBRE := :P425_P_NOMBRE;',
'        :P425_EMPRESA := :P425_P_EMPRESA;',
'        :P425_TIP_COMPROBANTE := :P425_P_TIP_COMPROBANTE;',
'        :P425_SER_COMPROBANTE := :P425_P_SER_COMPROBANTE;',
'        :P425_NRO_COMPROBANTE := :P425_P_NRO_COMPROBANTE;',
'',
'    ELSIF :P425_P_NRO_COMPROBANTE IS NOT NULL THEN',
'    	:P425_TIP_COMPROBANTE := :P425_P_TIP_COMPROBANTE;',
'        :P425_SER_COMPROBANTE := :P425_P_SER_COMPROBANTE;',
'        :P425_NRO_COMPROBANTE := :P425_P_NRO_COMPROBANTE;',
'        :P425_COD_CLIENTE     := :P425_P_COD_CLIENTE;',
'        :P425_NRO_TELEFONO := :P425_P_NRO_TELEFONO;',
'    END IF;    ',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;'))
,p_attribute_02=>'P425_P_NRO_LLAMADA,P425_P_COD_CLIENTE,P425_P_NRO_TELEFONO,P425_P_NOMBRE,P425_P_EMPRESA,P425_P_TIP_COMPROBANTE,P425_P_SER_COMPROBANTE,P425_P_NRO_COMPROBANTE,P425_P_NRO_COMPROBANTE'
,p_attribute_03=>'P425_NRO_LLAMADA,P425_COD_CLIENTE,P425_NRO_TELEFONO,P425_NOMBRE,P425_EMPRESA,P425_TIP_COMPROBANTE,P425_SER_COMPROBANTE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(129993326522686243)
,p_event_id=>wwv_flow_imp.id(129991166351686221)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(126565537853515033)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(129993407128686244)
,p_event_id=>wwv_flow_imp.id(129991166351686221)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(127099936754486703)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(129993538152686245)
,p_event_id=>wwv_flow_imp.id(129991166351686221)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(127100360396486707)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(129993600667686246)
,p_event_id=>wwv_flow_imp.id(129991166351686221)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(127100433701486708)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(129993721050686247)
,p_event_id=>wwv_flow_imp.id(129991166351686221)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(126456796692731642)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(129991519777686225)
,p_name=>'DA_LIMPIAR_CAMPOS'
,p_event_sequence=>470
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(129991406250686224)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(129991629725686226)
,p_event_id=>wwv_flow_imp.id(129991519777686225)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_01=>'LIMPIAR'
,p_attribute_02=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(131604415053543401)
,p_name=>'DA_CERRAR_CR_ED'
,p_event_sequence=>480
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(129994044232686250)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(131604597251543402)
,p_event_id=>wwv_flow_imp.id(131604415053543401)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(129113911518742150)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(131605380478543410)
,p_name=>'DA_AGREGAR_DIRE_COL'
,p_event_sequence=>490
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(131604641726543403)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(131605485641543411)
,p_event_id=>wwv_flow_imp.id(131605380478543410)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    CALLASAL.PR_AGREGAR_MIE_DIR (PI_COD_PERSONA => :P425_COD_PERSONA,',
'                                 PI_COD_DIRECCION => :P425_COD_DIRECCION_CR_ED,',
'                                 PI_POR_DEFECTO => :P425_POR_DEFECTO_CR_ED,',
'                                 PI_TIP_DIRECCION => :P425_TIP_DIRECCION_CR_ED,',
'                                 PI_DETALLE => :P425_DETALLE_CR_ED,',
'                                 PI_COD_PAIS => :P425_COD_PAIS_CR_ED,',
'                                 PI_COD_PROVINCIA => :P425_COD_PROVINCIA_CR_ED,',
'                                 PI_COD_CIUDAD => :P425_COD_CIUDAD_CR_ED,',
'                                 PI_COD_BARRIO => :P425_COD_BARRIO_CR_ED);',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;'))
,p_attribute_02=>'P425_COD_PERSONA,P425_COD_DIRECCION_CR_ED,P425_POR_DEFECTO_CR_ED,P425_TIP_DIRECCION_CR_ED,P425_DETALLE_CR_ED,P425_COD_PAIS_CR_ED,P425_COD_PROVINCIA_CR_ED,P425_COD_CIUDAD_CR_ED,P425_COD_BARRIO_CR_ED'
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
 p_id=>wwv_flow_imp.id(131605662675543413)
,p_event_id=>wwv_flow_imp.id(131605380478543410)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(127100360396486707)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(131605530531543412)
,p_event_id=>wwv_flow_imp.id(131605380478543410)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(129113911518742150)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(131606145905543418)
,p_name=>'DA_ELIMINAR_DIRE'
,p_event_sequence=>500
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P425_SEQ_ID_DIRE_ELIMINAR'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(131606329391543420)
,p_event_id=>wwv_flow_imp.id(131606145905543418)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>unistr('\00BFDesea eliminar el registro?')
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(131606495371543421)
,p_event_id=>wwv_flow_imp.id(131606145905543418)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    CALLASAL.PR_BORRAR_MIE_DIR (PI_SEQ_ID_ELIMINAR => :P425_SEQ_ID_DIRE_ELIMINAR);',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;'))
,p_attribute_02=>'P425_SEQ_ID_DIRE_ELIMINAR'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(131606574540543422)
,p_event_id=>wwv_flow_imp.id(131606145905543418)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(127100360396486707)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(131606623597543423)
,p_name=>'DA_EDITAR_DIRE'
,p_event_sequence=>510
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P425_SEQ_ID_DIRE_EDITAR'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(131606842102543425)
,p_event_id=>wwv_flow_imp.id(131606623597543423)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(131604730050543404)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(131606961395543426)
,p_event_id=>wwv_flow_imp.id(131606623597543423)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(131604641726543403)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(131607023523543427)
,p_event_id=>wwv_flow_imp.id(131606623597543423)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    SELECT C002,',
'           C003,',
'           C004,',
'           C005,',
'           C006,     ',
'           C007,  ',
'           C008,',
'           C009',
'    INTO :P425_COD_DIRECCION_CR_ED,',
'         :P425_DETALLE_CR_ED,',
'         :P425_TIP_DIRECCION_CR_ED,',
'         :P425_COD_PAIS_CR_ED,',
'         :P425_COD_PROVINCIA_CR_ED,',
'         :P425_COD_CIUDAD_CR_ED,',
'         :P425_COD_BARRIO_CR_ED,',
'         :P425_POR_DEFECTO_CR_ED',
'',
'    FROM APEX_COLLECTIONS',
'    WHERE COLLECTION_NAME = ''DIRECCION''',
'    AND SEQ_ID = :P425_SEQ_ID_DIRE_EDITAR;',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;',
'',
''))
,p_attribute_02=>'P425_SEQ_ID_DIRE_EDITAR'
,p_attribute_03=>'P425_COD_DIRECCION_CR_ED,P425_DETALLE_CR_ED,P425_TIP_DIRECCION_CR_ED,P425_COD_PAIS_CR_ED,P425_COD_PROVINCIA_CR_ED,P425_COD_CIUDAD_CR_ED,P425_COD_BARRIO_CR_ED,P425_POR_DEFECTO_CR_ED'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(131607191552543428)
,p_event_id=>wwv_flow_imp.id(131606623597543423)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(129113911518742150)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(131607238891543429)
,p_name=>'DA_EDITAR_COL_DIRE'
,p_event_sequence=>520
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(131604730050543404)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(131607492322543431)
,p_event_id=>wwv_flow_imp.id(131607238891543429)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    CALLASAL.PR_MODIFICAR_MIE_DIR (PI_SEQ_ID_EDITAR => :P425_SEQ_ID_DIRE_EDITAR,',
'                                   PI_COD_PERSONA => :P425_COD_PERSONA,',
'                                   PI_COD_DIRECCION => :P425_COD_DIRECCION_CR_ED,',
'                                   PI_POR_DEFECTO => :P425_POR_DEFECTO_CR_ED,',
'                                   PI_TIP_DIRECCION => :P425_TIP_DIRECCION_CR_ED,',
'                                   PI_DETALLE => :P425_DETALLE_CR_ED,',
'                                   PI_COD_PAIS => :P425_COD_PAIS_CR_ED,',
'                                   PI_COD_PROVINCIA => :P425_COD_PROVINCIA_CR_ED,',
'                                   PI_COD_CIUDAD => :P425_COD_CIUDAD_CR_ED,',
'                                   PI_COD_BARRIO => :P425_COD_BARRIO_CR_ED);',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;'))
,p_attribute_02=>'P425_SEQ_ID_DIRE_EDITAR,P425_COD_PERSONA,P425_COD_DIRECCION_CR_ED,P425_POR_DEFECTO_CR_ED,P425_TIP_DIRECCION_CR_ED,P425_DETALLE_CR_ED,P425_COD_PAIS_CR_ED,P425_COD_PROVINCIA_CR_ED,P425_COD_CIUDAD_CR_ED,P425_COD_BARRIO_CR_ED'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(131607596838543432)
,p_event_id=>wwv_flow_imp.id(131607238891543429)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(127100360396486707)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(131607643678543433)
,p_event_id=>wwv_flow_imp.id(131607238891543429)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(129113911518742150)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(131608189727543438)
,p_name=>'DA_LLAMAR_CALLASALDET'
,p_event_sequence=>530
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(126457279426731647)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(132236781675802911)
,p_event_id=>wwv_flow_imp.id(131608189727543438)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    :P425_IND_REP_CALLASALDET := ''1'';',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;'))
,p_attribute_03=>'P425_IND_REP_CALLASALDET'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(132236837630802912)
,p_event_id=>wwv_flow_imp.id(131608189727543438)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(131608553104543442)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(132236931948802913)
,p_event_id=>wwv_flow_imp.id(131608189727543438)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(131608553104543442)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(132237255655802916)
,p_name=>'DA_CERRAR_CALLASALDET'
,p_event_sequence=>540
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(132237167292802915)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(132237375649802917)
,p_event_id=>wwv_flow_imp.id(132237255655802916)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(131608553104543442)
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(129991897301686228)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_PRUEBA_VALORES'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    :P425_P_NRO_LLAMADA := ''101020'';',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;'))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(126563957504515017)
,p_process_sequence=>20
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_INIT'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    :P425_COD_MODULO := ''CA'';',
'',
'    --:P425_MENSAJE_ALERT := ''HOLA'';',
'',
'    DECLARE',
'        i NUMBER;',
'        e EXCEPTION;',
'    BEGIN',
'        select to_number( nvl( valor, 0 ) )',
'          into :P425_DIAS_ATRASO',
'          from parametros_generales',
'         where cod_modulo = :P425_COD_MODULO',
'           and parametro = ''DIAS_ATRASO_INF'';',
'',
'        IF :P425_DIAS_ATRASO < 1 THEN',
'          raise e;',
'        END IF;',
'',
'    EXCEPTION',
'        WHEN e THEN',
unistr('            :P425_MENSAJE_ALERT := ''El valor del par\00E1metro "DIAS_ATRASO_INF" es menor o igual a 0 (cero).''||chr(13)||'),
'                 ''Consulte con el administrador del sistema para corregir el error.'';',
'            :P425_DIAS_ATRASO := 30;',
'        WHEN OTHERS THEN',
'          IF substr( sqlerrm, 1, 9 ) = ''ORA-01722'' THEN',
unistr('            :P425_MENSAJE_ALERT := ''El par\00E1metro "DIAS_ATRASO_INF" no es un n\00FAmero.''||chr(13)||'),
'                   ''Consulte con el administrador del sistema para corregir el error.'';',
'            :P425_DIAS_ATRASO := 30;',
'          ELSE',
'            :P425_DIAS_ATRASO := 30;',
'          END IF;',
'      END;',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;'))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(132237781098802921)
,p_process_sequence=>30
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_CREAR_COLL'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    APEX_COLLECTION.CREATE_OR_TRUNCATE_COLLECTION(P_COLLECTION_NAME => ''TELEFONOS'');',
'    APEX_COLLECTION.CREATE_OR_TRUNCATE_COLLECTION(P_COLLECTION_NAME => ''IDENTIFICACION'');',
'    APEX_COLLECTION.CREATE_OR_TRUNCATE_COLLECTION(P_COLLECTION_NAME => ''DIRECCION'');',
'    APEX_COLLECTION.CREATE_OR_TRUNCATE_COLLECTION(P_COLLECTION_NAME => ''EMAIL_CONTACTOS'');',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;'))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(128416510379124201)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_GUARDAR_DATOS_BD'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    CALLASAL.GUARDAR_LLAMADA_CAB_BD ( PI_COD_CLIENTE => :P425_COD_CLIENTE,',
'                                      PI_TIP_MOVIMIENTO => :P425_TIP_MOVIMIENTO,',
'                                      PI_NRO_TELEFONO => :P425_NRO_TELEFONO,',
'                                      PI_NOMBRE => :P425_NOMBRE,',
'                                      PI_EMPRESA => :P425_EMPRESA,',
'                                      PI_COD_MOTIVO => :P425_COD_MOTIVO,',
'                                      PI_OBSERVACION => :P425_OBSERVACION,',
'                                      PI_NRO_MOVIMIENTO => :P425_NRO_MOVIMIENTO,                                      ',
'                                      PI_HORA_LLAMADA => :P425_HORA_LLAMADA,',
'                                      PI_COD_USUARIO => :P425_COD_USUARIO,',
'                                      PI_FEC_MOVIMIENTO => :P425_FEC_MOVIMIENTO,                                            ',
'                                      PI_NRO_LLAMADA => :P425_NRO_LLAMADA,',
'                                      PI_TIP_COMPROBANTE => :P425_TIP_COMPROBANTE,',
'                                      PI_SER_COMPROBANTE => :P425_SER_COMPROBANTE,',
'                                      PI_NRO_COMPROBANTE => :P425_NRO_COMPROBANTE,',
'                                      PI_CALIFICACION => :P425_CALIFICACION);',
'',
'    CALLASAL.PR_ACCION_EMAIL_BD (PI_COD_PERSONA => :P425_COD_PERSONA_PER);',
'',
'    CALLASAL.PR_ACCION_IDENT_BD (PI_COD_PERSONA => :P425_COD_PERSONA_PER);',
'',
'    CALLASAL.PR_ACCION_DIRE_BD (PI_COD_PERSONA => :P425_COD_PERSONA_PER);',
'',
'    CALLASAL.PR_ACCION_TEL_BD (PI_COD_PERSONA => :P425_COD_PERSONA_PER);',
'',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'        ROLLBACK;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'Hubo un error.'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Datos guardados exitosamente.'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(129991767622686227)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'PR_LIMPIAR_CAMPOS'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_process_error_message=>'Hubo un error.'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Datos guardados exitosamente.'
);
wwv_flow_imp.component_end;
end;
/
