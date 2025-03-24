prompt --application/pages/page_00496
begin
--   Manifest
--     PAGE: 00496
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
 p_id=>496
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'Agenda -   CAAGENDA'
,p_alias=>'AGENDA2'
,p_step_title=>'Agenda -   CAAGENDA'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_last_updated_by=>'EMILIANOP'
,p_last_upd_yyyymmddhh24miss=>'20230421144046'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(146992642143425039)
,p_plug_name=>'CA_FILTROS'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>1020
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(146992761717425040)
,p_plug_name=>unistr('CA_PESTA\00D1AS')
,p_region_template_options=>'#DEFAULT#:t-TabsRegion-mod--simple'
,p_plug_template=>wwv_flow_imp.id(40132096801263663)
,p_plug_display_sequence=>1030
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(146992823542425041)
,p_plug_name=>'Agenda NGO'
,p_parent_plug_id=>wwv_flow_imp.id(146992761717425040)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ',
'        SEQ_ID SEQ_ID_NGO,',
'        C003 cod_persona,',
'        C004 nombre_contacto,',
'        C009 nro_telefono,',
'        C008 nro_celular,',
'        C005 correo_mail,',
'        C006 area,                                  ',
'        C007 departamento,',
'        NULL AGENDA3',
'                                               ',
'FROM APEX_COLLECTIONS',
'WHERE COLLECTION_NAME = ''NGO''',
'AND :P496_IND_REP_NGO = ''1'''))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P496_IND_REP_NGO'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Agenda NGO'
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
 p_id=>wwv_flow_imp.id(146993379625425046)
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
,p_internal_uid=>146993379625425046
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(146993490739425047)
,p_db_column_name=>'SEQ_ID_NGO'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Seq Id Ngo'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(146993503882425048)
,p_db_column_name=>'COD_PERSONA'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Cod Persona'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(146993671508425049)
,p_db_column_name=>'NOMBRE_CONTACTO'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Nombre Contacto'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(146993772868425050)
,p_db_column_name=>'NRO_TELEFONO'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Nro Telefono'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(147871950559065301)
,p_db_column_name=>'NRO_CELULAR'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Nro Celular'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(147872059029065302)
,p_db_column_name=>'CORREO_MAIL'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Correo Mail'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(147872134352065303)
,p_db_column_name=>'AREA'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Area'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(147872226599065304)
,p_db_column_name=>'DEPARTAMENTO'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Departamento'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(147872319675065305)
,p_db_column_name=>'AGENDA3'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Editar Agenda'
,p_column_link=>'javascript:$s(''P496_SEQ_ID_AGENDA'',''#SEQ_ID_NGO#'');'
,p_column_linktext=>'<span class="fa fa-plus-square-o" aria-hidden="true"></span>'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(147881108221059982)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1478812'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'SEQ_ID_NGO:COD_PERSONA:NOMBRE_CONTACTO:NRO_TELEFONO:NRO_CELULAR:CORREO_MAIL:AREA:DEPARTAMENTO:AGENDA3'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(146992983814425042)
,p_plug_name=>'Agenda CPH'
,p_parent_plug_id=>wwv_flow_imp.id(146992761717425040)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ',
'        SEQ_ID SEQ_ID_CPH,',
'        C003 cod_persona,',
'        C004 nombre_contacto,',
'        C009 nro_telefono,',
'        C008 nro_celular,',
'        C005 correo_mail,',
'        C006 area,                                  ',
'        C007 departamento',
'',
'FROM APEX_COLLECTIONS',
'WHERE COLLECTION_NAME = ''CPH''',
'AND :P496_IND_REP_CPH = ''1'''))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P496_IND_REP_CPH'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Agenda CPH'
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
 p_id=>wwv_flow_imp.id(147873706469065319)
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
,p_internal_uid=>147873706469065319
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(147873926911065321)
,p_db_column_name=>'COD_PERSONA'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Cod Persona'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(147874017097065322)
,p_db_column_name=>'NOMBRE_CONTACTO'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Nombre Contacto'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(147874120063065323)
,p_db_column_name=>'NRO_TELEFONO'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Nro Telefono'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(147874231863065324)
,p_db_column_name=>'NRO_CELULAR'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Nro Celular'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(147874339771065325)
,p_db_column_name=>'CORREO_MAIL'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Correo Mail'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(147874446810065326)
,p_db_column_name=>'AREA'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Area'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(147874550888065327)
,p_db_column_name=>'DEPARTAMENTO'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Departamento'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(147876226147065344)
,p_db_column_name=>'SEQ_ID_CPH'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Seq Id Cph'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(147900141073763916)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1479002'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'COD_PERSONA:NOMBRE_CONTACTO:NRO_TELEFONO:NRO_CELULAR:CORREO_MAIL:AREA:DEPARTAMENTO'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(146993060446425043)
,p_plug_name=>'INDICADORES'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>1010
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(147873025224065312)
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
 p_id=>wwv_flow_imp.id(147874629578065328)
,p_plug_name=>'AGENDA'
,p_region_template_options=>'#DEFAULT#:js-dialog-size600x400'
,p_plug_template=>wwv_flow_imp.id(40117728043263659)
,p_plug_display_sequence=>1040
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(147875833461065340)
,p_plug_name=>'SEQ ROW'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>1000
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(148071486783515411)
,p_plug_name=>'REPORTE'
,p_region_css_classes=>'js-dialog-size1500x650'
,p_region_template_options=>'#DEFAULT#:js-dialog-size600x400'
,p_plug_template=>wwv_flow_imp.id(40117728043263659)
,p_plug_display_sequence=>1050
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(148071513692515412)
,p_plug_name=>'EMPLEADOS'
,p_parent_plug_id=>wwv_flow_imp.id(148071486783515411)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select  a.cod_empleado,a.nombre_contacto,area seccion, a.nro_telefono, a.correo_mail,',
'a.nro_celular, NULL direccion , departamento, area, EMPRESA',
' from v_agenda_colaboradores a',
'where (A.NOMBRE_CONTACTO IS NOT  NULL AND AREA IS NOT NULL)',
'AND :P496_IND_REP_EMP = ''1''',
'order by 3'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P496_IND_REP_EMP'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'EMPLEADOS'
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
 p_id=>wwv_flow_imp.id(148071688638515413)
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
,p_internal_uid=>148071688638515413
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(148071760968515414)
,p_db_column_name=>'COD_EMPLEADO'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Cod Empleado'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(148071819421515415)
,p_db_column_name=>'NOMBRE_CONTACTO'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Nombre Contacto'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(148071927897515416)
,p_db_column_name=>'SECCION'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Seccion'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(148072058663515417)
,p_db_column_name=>'NRO_TELEFONO'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Nro Telefono'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(148072137876515418)
,p_db_column_name=>'CORREO_MAIL'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Correo Mail'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(148072228814515419)
,p_db_column_name=>'NRO_CELULAR'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Nro Celular'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(148072392209515420)
,p_db_column_name=>'DIRECCION'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Direccion'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(148072439617515421)
,p_db_column_name=>'DEPARTAMENTO'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Departamento'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(148072504171515422)
,p_db_column_name=>'AREA'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Area'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(148072631251515423)
,p_db_column_name=>'EMPRESA'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Empresa'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(148098523222349586)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1480986'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'COD_EMPLEADO:NOMBRE_CONTACTO:SECCION:NRO_TELEFONO:CORREO_MAIL:NRO_CELULAR:DIRECCION:DEPARTAMENTO:AREA:EMPRESA'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(148072941802515426)
,p_plug_name=>'AREA'
,p_parent_plug_id=>wwv_flow_imp.id(148071486783515411)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select AREA seccion_res, count(*) cantidad',
' from v_agenda_colaboradores A',
'where  (A.NOMBRE_CONTACTO IS NOT  NULL AND AREA IS NOT NULL)',
'AND :P496_IND_REP_AREA = ''1''',
'group by AREA',
'order by AREA'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P496_IND_REP_AREA'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'AREA'
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
 p_id=>wwv_flow_imp.id(148073059126515427)
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
,p_internal_uid=>148073059126515427
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(148074118037515438)
,p_db_column_name=>'SECCION_RES'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Seccion Res'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(148074248882515439)
,p_db_column_name=>'CANTIDAD'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Cantidad'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(148099149203349568)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1480992'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'SECCION_RES:CANTIDAD'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(147875558417065337)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(147874629578065328)
,p_button_name=>'BTN_SALIR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--simple'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Salir'
,p_button_position=>'BELOW_BOX'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(147875430881065336)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(147874629578065328)
,p_button_name=>'BTN_GUARDAR_AGENDA'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Guardar'
,p_button_position=>'BELOW_BOX'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(147872643141065308)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(146992642143425039)
,p_button_name=>'BTN_BUSCAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight:t-Button--gapTop'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Buscar'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-search'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(148074825312515445)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(148071486783515411)
,p_button_name=>'BTN_CERRAR_REPORTE'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Cerrar'
,p_button_position=>'NEXT'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(147876631971065348)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(146992761717425040)
,p_button_name=>'BTN_IMPRIMIR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Imprimir'
,p_button_position=>'TOP'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-print'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(146993145940425044)
,p_name=>'P496_IND_REP_NGO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(146993060446425043)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(146993253896425045)
,p_name=>'P496_IND_REP_CPH'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(146993060446425043)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(147872478468065306)
,p_name=>'P496_FILTRO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(146992642143425039)
,p_prompt=>'Buscar'
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
 p_id=>wwv_flow_imp.id(147872547955065307)
,p_name=>'P496_RGB'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(146992642143425039)
,p_display_as=>'NATIVE_RADIOGROUP'
,p_lov=>'STATIC:Contacto;N,Interno;T,Celular;C,Area;A,Departamento;D'
,p_tag_attributes=>'"style=''margin-bottom:200px'';"'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#:margin-bottom-lg'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'5'
,p_attribute_02=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(147873110174065313)
,p_name=>'P496_COD_MODULO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(147873025224065312)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(147874703947065329)
,p_name=>'P496_COD_AGENDA'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(147874629578065328)
,p_prompt=>'Agenda'
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
 p_id=>wwv_flow_imp.id(147874866291065330)
,p_name=>'P496_COD_EMPLEADO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(147874629578065328)
,p_prompt=>'Cod. Colaborador'
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
 p_id=>wwv_flow_imp.id(147875056628065332)
,p_name=>'P496_NOMBRE_CONTACTO'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(147874629578065328)
,p_prompt=>'Nombre Contacto'
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
 p_id=>wwv_flow_imp.id(147875154999065333)
,p_name=>'P496_NRO_TELEFONO'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(147874629578065328)
,p_prompt=>unistr('Nro. Tel\00E9fono')
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
 p_id=>wwv_flow_imp.id(147875244624065334)
,p_name=>'P496_NRO_CELULAR'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(147874629578065328)
,p_prompt=>'Nro. Celular'
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
 p_id=>wwv_flow_imp.id(147875327979065335)
,p_name=>'P496_CORREO_MAIL'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(147874629578065328)
,p_prompt=>'Correo Mail'
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
 p_id=>wwv_flow_imp.id(147875983624065341)
,p_name=>'P496_SEQ_ID_AGENDA'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(147875833461065340)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(148070605470515403)
,p_name=>'P496_ROW_ID_AGENDA'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(147875833461065340)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(148072716145515424)
,p_name=>'P496_IND_REP_EMP'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(146993060446425043)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(148072882995515425)
,p_name=>'P496_IND_REP_AREA'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(146993060446425043)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(147872790549065309)
,p_name=>'DA_BUSCAR'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(147872643141065308)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(147873245193065314)
,p_event_id=>wwv_flow_imp.id(147872790549065309)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'var spinner = apex.util.showSpinner();'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(147872880620065310)
,p_event_id=>wwv_flow_imp.id(147872790549065309)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    AGENDA2.PR_CARGAR_COL_NGO (PI_FILTRO => :P496_FILTRO,',
'                               PI_RBG => :P496_RGB);',
'',
'    AGENDA2.PR_CARGAR_COL_CPH (PI_FILTRO => :P496_FILTRO,',
'                               PI_RBG => :P496_RGB);',
'',
'    :P496_IND_REP_NGO := ''1'';',
'    :P496_IND_REP_CPH := ''1'';  ',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;'))
,p_attribute_02=>'P496_FILTRO,P496_RGB'
,p_attribute_03=>'P496_IND_REP_NGO,P496_IND_REP_CPH'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(147873371701065315)
,p_event_id=>wwv_flow_imp.id(147872790549065309)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$("#apex_wait_overlay").remove();',
'$(".u-Processing").remove();'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(147872960057065311)
,p_event_id=>wwv_flow_imp.id(147872790549065309)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(146992823542425041)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(147876500477065347)
,p_event_id=>wwv_flow_imp.id(147872790549065309)
,p_event_result=>'TRUE'
,p_action_sequence=>90
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(146992983814425042)
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
 p_id=>wwv_flow_imp.id(147875674428065338)
,p_name=>'DA_CERRAR_AGENDA'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(147875558417065337)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(147875774102065339)
,p_event_id=>wwv_flow_imp.id(147875674428065338)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(147874629578065328)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(147876061967065342)
,p_name=>'DA_ABRIR_AGENDA'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P496_SEQ_ID_AGENDA'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(147876785598065349)
,p_event_id=>wwv_flow_imp.id(147876061967065342)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    V_COD_EMPLEADO VARCHAR2(50);',
'BEGIN',
'',
'    SELECT C002 INTO V_COD_EMPLEADO',
'    FROM APEX_COLLECTIONS',
'    WHERE COLLECTION_NAME = ''NGO''',
'    AND SEQ_ID = :P496_SEQ_ID_AGENDA;',
'',
'    BEGIN',
'        SELECT            ',
'            cod_agenda,',
'            cod_empleado,',
'            nombre_contacto,',
'            nro_telefono,',
'            nro_celular,',
'            correo_mail,',
'            rowid',
'        INTO',
'            :P496_COD_AGENDA,',
'            :P496_COD_EMPLEADO,',
'            :P496_NOMBRE_CONTACTO,',
'            :P496_NRO_TELEFONO,',
'            :P496_NRO_CELULAR,',
'            :P496_CORREO_MAIL,',
'            :P496_ROW_ID_AGENDA    ',
'        FROM agenda',
'        WHERE COD_EMPLEADO = V_COD_EMPLEADO;',
'',
'    EXCEPTION',
'        WHEN NO_DATA_FOUND THEN',
'        ',
'        SELECT C002,',
'               C004,',
'               C009,',
'               C008,',
'               C005',
'        INTO',
'            :P496_COD_EMPLEADO,',
'            :P496_NOMBRE_CONTACTO,',
'            :P496_NRO_TELEFONO,',
'            :P496_NRO_CELULAR,',
'            :P496_CORREO_MAIL ',
'        FROM APEX_COLLECTIONS',
'        WHERE COLLECTION_NAME = ''NGO''',
'        AND SEQ_ID = :P496_SEQ_ID_AGENDA;',
'',
'        :P496_COD_AGENDA := NULL;',
'        :P496_ROW_ID_AGENDA := NULL;',
'',
'        WHEN OTHERS THEN',
'            APEX_DEBUG.ERROR(SQLERRM);',
'    END;',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;',
'',
'',
' '))
,p_attribute_02=>'P496_SEQ_ID_AGENDA'
,p_attribute_03=>'P496_COD_AGENDA,P496_COD_EMPLEADO,P496_NOMBRE_CONTACTO,:P496_NRO_TELEFONO,P496_NRO_CELULAR,P496_CORREO_MAIL,P496_ROW_ID_AGENDA'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(147876128963065343)
,p_event_id=>wwv_flow_imp.id(147876061967065342)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(147874629578065328)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(147876366193065345)
,p_name=>'DA_LIMPIAR_FILTRO'
,p_event_sequence=>40
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P496_RGB'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(147876429557065346)
,p_event_id=>wwv_flow_imp.id(147876366193065345)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P496_FILTRO'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(147876866116065350)
,p_name=>'DA_GUARDAR_AGENDA'
,p_event_sequence=>50
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(147875430881065336)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(148070542971515402)
,p_event_id=>wwv_flow_imp.id(147876866116065350)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    IF :P496_COD_AGENDA IS NULL THEN',
'    	BEGIN',
'    		select nvl(max(cod_agenda),0)+1',
'    		into :P496_COD_AGENDA	',
'    		from agenda;	',
'    	EXCEPTION',
'    		when others then',
'    			NULL;',
'    	END;',
'    END IF;',
'',
'    IF :P496_ROW_ID_AGENDA IS NOT NULL THEN',
'        ',
'        UPDATE AGENDA',
'        SET nro_telefono = :P496_NRO_TELEFONO,',
'            nro_celular = :P496_NRO_CELULAR,',
'            CORREO_MAIL = :P496_CORREO_MAIL             ',
'        WHERE ROWID = :P496_ROW_ID_AGENDA;',
'    ELSE',
'        INSERT INTO AGENDA (cod_agenda,',
'                            cod_empleado,',
'                            nombre_contacto,',
'                            nro_telefono,',
'                            nro_celular,',
'                            correo_mail)',
'',
'               VALUES ( :P496_COD_AGENDA,',
'                        :P496_COD_EMPLEADO,',
'                        :P496_NOMBRE_CONTACTO,',
'                        :P496_NRO_TELEFONO,',
'                        :P496_NRO_CELULAR,',
'                        :P496_CORREO_MAIL);',
'    END IF;',
'EXCEPTION',
'',
'WHEN OTHERS THEN',
'    APEX_DEBUG.ERROR (SQLERRM);',
'END;',
'',
''))
,p_attribute_02=>'P496_COD_AGENDA,P496_COD_EMPLEADO,P496_NOMBRE_CONTACTO,P496_NRO_TELEFONO,P496_NRO_CELULAR,P496_CORREO_MAIL,P496_ROW_ID_AGENDA,P496_CORREO_MAIL'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(148070956563515406)
,p_event_id=>wwv_flow_imp.id(147876866116065350)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'var spinner = apex.util.showSpinner();'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(148071092858515407)
,p_event_id=>wwv_flow_imp.id(147876866116065350)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    AGENDA2.PR_CARGAR_COL_NGO (PI_FILTRO => :P496_FILTRO,',
'                               PI_RBG => :P496_RGB);',
'',
'    AGENDA2.PR_CARGAR_COL_CPH (PI_FILTRO => :P496_FILTRO,',
'                               PI_RBG => :P496_RGB);',
'',
'    :P496_IND_REP_NGO := ''1'';',
'    :P496_IND_REP_CPH := ''1'';  ',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;'))
,p_attribute_02=>'P496_FILTRO,P496_RGB'
,p_attribute_03=>'P496_IND_REP_NGO,P496_IND_REP_CPH'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(148071156186515408)
,p_event_id=>wwv_flow_imp.id(147876866116065350)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$("#apex_wait_overlay").remove();',
'$(".u-Processing").remove();'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(148071290861515409)
,p_event_id=>wwv_flow_imp.id(147876866116065350)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(146992823542425041)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(148071317376515410)
,p_event_id=>wwv_flow_imp.id(147876866116065350)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(146992983814425042)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(148070442013515401)
,p_event_id=>wwv_flow_imp.id(147876866116065350)
,p_event_result=>'TRUE'
,p_action_sequence=>90
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(147874629578065328)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(148074380509515440)
,p_name=>'DA_IMPRIMIR'
,p_event_sequence=>60
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(147876631971065348)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(148074411259515441)
,p_event_id=>wwv_flow_imp.id(148074380509515440)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    :P496_IND_REP_AREA := ''1'';',
'    :P496_IND_REP_EMP := ''1'';',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;',
'',
''))
,p_attribute_03=>'P496_IND_REP_AREA,P496_IND_REP_EMP'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(148074593967515442)
,p_event_id=>wwv_flow_imp.id(148074380509515440)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(148071513692515412)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(148074647298515443)
,p_event_id=>wwv_flow_imp.id(148074380509515440)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(148072941802515426)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(148074756095515444)
,p_event_id=>wwv_flow_imp.id(148074380509515440)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(148071486783515411)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(148074934225515446)
,p_name=>'DA_CERRAR_REPORTE'
,p_event_sequence=>70
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(148074825312515445)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(148075092987515447)
,p_event_id=>wwv_flow_imp.id(148074934225515446)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(148071486783515411)
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(147873593759065317)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'PR_LIMPIAR_DATOS'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(147873617991065318)
,p_process_sequence=>20
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_INIT'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    :P496_COD_MODULO := ''CA'';',
'    :P496_RGB := ''N'';',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;'))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_imp.component_end;
end;
/
