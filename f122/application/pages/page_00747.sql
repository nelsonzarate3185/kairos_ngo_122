prompt --application/pages/page_00747
begin
--   Manifest
--     PAGE: 00747
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
 p_id=>747
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'TESORERIA - PARTIDAS CONCILIADAS'
,p_alias=>'TESORERIA-PARTIDAS-CONCILIADAS'
,p_page_mode=>'MODAL'
,p_step_title=>'TESORERIA - PARTIDAS CONCILIADAS'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#:ui-dialog--stretch'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_last_updated_by=>'OSCARGO'
,p_last_upd_yyyymmddhh24miss=>'20240424135309'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(160019829882359046)
,p_plug_name=>'Transacciones Conciliadas'
,p_region_template_options=>'#DEFAULT#:t-Form--labelsAbove'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>930
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(160019933359359047)
,p_plug_name=>unistr('M\00E9todo de macheo')
,p_parent_plug_id=>wwv_flow_imp.id(160019829882359046)
,p_region_template_options=>'#DEFAULT#:margin-top-md'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select COD_EMPRESA,',
'       COD_BANCO,',
'       NRO_CUENTA,',
'       FECHA_CONCILIACION,',
'       NRO_APLICADO,',
'       MONTO_BANCO,',
'       MONTO_SISTEMA,',
'       FECHA_APLICADO,',
'       USUARIO,',
'       NVL(METODO,''MANUAL'') METODO,',
'       ''X'' ELIMINAR_MACHEO',
'  from CC_CONCILIACION_APLICADO',
' where cod_empresa = :P_COD_EMPRESA',
'and cod_banco = :P747_BANCO',
'and nro_cuenta = :P747_CUENTA',
'and fecha_conciliacion = :P747_PERIODO'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P747_BANCO,P747_CUENTA,P747_PERIODO'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>unistr('M\00E9todo de macheo')
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
,p_plug_header=>unistr('M\00E9todo de macheo')
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(160020075487359048)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'OSCARGO'
,p_internal_uid=>160020075487359048
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(160020169685359049)
,p_db_column_name=>'COD_EMPRESA'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Cod Empresa'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(160020291799359050)
,p_db_column_name=>'COD_BANCO'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Cod Banco'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(297354375070623001)
,p_db_column_name=>'NRO_CUENTA'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Nro Cuenta'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(297354458773623002)
,p_db_column_name=>'FECHA_CONCILIACION'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Fecha Conciliacion'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(297354531665623003)
,p_db_column_name=>'NRO_APLICADO'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Nro Aplicado'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(297354693911623004)
,p_db_column_name=>'MONTO_BANCO'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Monto Banco'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(297354732313623005)
,p_db_column_name=>'MONTO_SISTEMA'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Monto Sistema'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(297354853239623006)
,p_db_column_name=>'FECHA_APLICADO'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Fecha Aplicado'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(297354940342623007)
,p_db_column_name=>'USUARIO'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Usuario'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(297355040264623008)
,p_db_column_name=>'METODO'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Metodo'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(618068178291415716)
,p_db_column_name=>'ELIMINAR_MACHEO'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Eliminar'
,p_column_link=>'javascript:$s(''P747_ELIMINAR_MACHEO'',''#NRO_APLICADO#'');'
,p_column_linktext=>'<span class="t-Icon fa fa-trash delete-irrow" aria-hidden="true" title="Borrar registro"></span>'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(297363092332631856)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'2973631'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'NRO_APLICADO:FECHA_CONCILIACION:MONTO_BANCO:MONTO_SISTEMA:FECHA_APLICADO:METODO:ELIMINAR_MACHEO:'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(297355481474623012)
,p_plug_name=>'Extractos conciliados'
,p_parent_plug_id=>wwv_flow_imp.id(160019829882359046)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>40
,p_plug_grid_column_span=>6
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select',
'to_date(c001,''dd/mm/yyyy'') fecha,',
'c002 nro_operacion,',
'CASE WHEN n002>0 then n002 else 0 end debito,',
'CASE WHEN n002<0 then n002*-1 else 0 end credito,',
'c005 tipo_movimiento,',
'c009 descripcion,',
'c010 nro_aplicado',
'from APEX_COLLECTIONS ',
'           where COLLECTION_NAME = ''PARTIDAS_CONCILIADAS'' and c005=''NO-CONTABILIZADO'' and c007 = ''P'' --pendiente de aplicacion',
'            order by SEQ_ID desc'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Extractos conciliados'
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
,p_plug_header=>'Extractos conciliados'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(297355561288623013)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'OSCARGO'
,p_internal_uid=>297355561288623013
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(297355908709623017)
,p_db_column_name=>'FECHA'
,p_display_order=>20
,p_column_identifier=>'C'
,p_column_label=>'Fecha'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(297356076784623018)
,p_db_column_name=>'NRO_OPERACION'
,p_display_order=>30
,p_column_identifier=>'D'
,p_column_label=>'Nro Operacion'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(297356184476623019)
,p_db_column_name=>'DEBITO'
,p_display_order=>40
,p_column_identifier=>'E'
,p_column_label=>'Debito'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(297356266396623020)
,p_db_column_name=>'CREDITO'
,p_display_order=>50
,p_column_identifier=>'F'
,p_column_label=>'Credito'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(297356387604623021)
,p_db_column_name=>'TIPO_MOVIMIENTO'
,p_display_order=>60
,p_column_identifier=>'G'
,p_column_label=>'Tipo Movimiento'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(297356495852623022)
,p_db_column_name=>'DESCRIPCION'
,p_display_order=>70
,p_column_identifier=>'H'
,p_column_label=>'Descripcion'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(297356558275623023)
,p_db_column_name=>'NRO_APLICADO'
,p_display_order=>80
,p_column_identifier=>'I'
,p_column_label=>'Nro Aplicado'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(297369691046754901)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'2973697'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>10
,p_report_columns=>'FECHA:NRO_OPERACION:DEBITO:CREDITO:NRO_APLICADO:'
,p_sort_column_1=>'NRO_APLICADO'
,p_sort_direction_1=>'ASC'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(297356686511623024)
,p_plug_name=>'Transacciones sistema conciliados'
,p_parent_plug_id=>wwv_flow_imp.id(160019829882359046)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>50
,p_plug_new_grid_row=>false
,p_plug_grid_column_span=>6
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'to_date(c001,''dd/mm/yyyy'') fecha,',
'c002 nro_operacion,',
'CASE WHEN n001>0 then n001 else 0 end debito,',
'CASE WHEN n001<0 then n001*-1 else 0 end credito,',
'c005 tipo_movimiento,',
'c009 descripcion,',
'c010 nro_aplicado',
'from APEX_COLLECTIONS ',
'           where COLLECTION_NAME = ''PARTIDAS_CONCILIADAS'' and c005=''NO-ACREDITADO'' and c007 = ''P'' --pendiente de aplicacion',
'            order by SEQ_ID desc'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Transacciones sistema conciliados'
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
,p_plug_header=>'Transacciones sistema conciliados'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(297356774439623025)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'OSCARGO'
,p_internal_uid=>297356774439623025
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(297356992085623027)
,p_db_column_name=>'FECHA'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Fecha'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(297357038319623028)
,p_db_column_name=>'NRO_OPERACION'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Nro Operacion'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(297357150971623029)
,p_db_column_name=>'DEBITO'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Debito'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(297357257078623030)
,p_db_column_name=>'CREDITO'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Credito'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(297357392346623031)
,p_db_column_name=>'TIPO_MOVIMIENTO'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Tipo Movimiento'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(297357441040623032)
,p_db_column_name=>'DESCRIPCION'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Descripcion'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(297357552865623033)
,p_db_column_name=>'NRO_APLICADO'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Nro Aplicado'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(297381250639830682)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'2973813'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>10
,p_report_columns=>'FECHA:NRO_OPERACION:DEBITO:CREDITO:NRO_APLICADO:'
,p_sort_column_1=>'NRO_APLICADO'
,p_sort_direction_1=>'ASC'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(297355101343623009)
,p_name=>'P747_BANCO'
,p_item_sequence=>10
,p_use_cache_before_default=>'NO'
,p_prompt=>'Banco'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_colspan=>1
,p_field_template=>wwv_flow_imp.id(40186576483263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(297355244687623010)
,p_name=>'P747_CUENTA'
,p_item_sequence=>20
,p_use_cache_before_default=>'NO'
,p_prompt=>'Cuenta'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_begin_on_new_line=>'N'
,p_colspan=>1
,p_field_template=>wwv_flow_imp.id(40186576483263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(297355374393623011)
,p_name=>'P747_PERIODO'
,p_item_sequence=>30
,p_use_cache_before_default=>'NO'
,p_prompt=>'Periodo'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_begin_on_new_line=>'N'
,p_colspan=>1
,p_field_template=>wwv_flow_imp.id(40186576483263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(618068256651415717)
,p_name=>'P747_ELIMINAR_MACHEO'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(160019829882359046)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(618068679645415721)
,p_name=>'P747_MENSAJE'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(160019829882359046)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(618068365706415718)
,p_name=>'DA_ELIMINAR_MACHEO'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P747_ELIMINAR_MACHEO'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(618068593855415720)
,p_event_id=>wwv_flow_imp.id(618068365706415718)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>unistr('\00BFSeguro que quieres eliminar la coincidencia seleccionada?')
,p_attribute_02=>unistr('Confirmar operaci\00F3n')
,p_attribute_03=>'information'
,p_attribute_04=>'fa-question-circle'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(618068713315415722)
,p_event_id=>wwv_flow_imp.id(618068365706415718)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'    inv.PKG_CONCILIACION_BANCARIA.SP_ELIMINA_MACHEO(p_cod_empresa => :P_COD_EMPRESA,',
'                              p_cod_banco => :P747_BANCO,',
'                              p_nro_cuenta => :P747_CUENTA,',
'                              p_periodo => :P747_PERIODO,',
'                              p_nro_aplicado => :P747_ELIMINAR_MACHEO,',
'                              p_mensaje => :P747_MENSAJE);',
'end;'))
,p_attribute_02=>'P747_BANCO,P747_CUENTA,P747_PERIODO,P747_ELIMINAR_MACHEO'
,p_attribute_03=>'P747_MENSAJE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(618068448534415719)
,p_event_id=>wwv_flow_imp.id(618068365706415718)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'&P747_MENSAJE.'
,p_attribute_02=>'Mensaje'
,p_attribute_03=>'information'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(618069260623415727)
,p_event_id=>wwv_flow_imp.id(618068365706415718)
,p_event_result=>'TRUE'
,p_action_sequence=>80
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'v_total_extracto number := 0;',
'v_total_sistema number := 0;',
'begin',
'    inv.PKG_CONCILIACION_BANCARIA.OPERACIONES_CONCILIADAS(p_cod_empresa => :P_COD_EMPRESA,',
'                                    p_cod_banco => :P747_BANCO,',
'                                    p_nro_cuenta => :P747_CUENTA,',
'                                    p_periodo => :P747_PERIODO,',
'                                    p_total_extracto => v_total_extracto,',
'                                    p_total_sistema => v_total_sistema);',
'exception when others then',
'        RAISE_APPLICATION_ERROR(-20001, ''Error al listar transacciones'');',
'end;'))
,p_attribute_02=>'P747_BANCO,P747_CUENTA,P747_PERIODO'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(618069344136415728)
,p_event_id=>wwv_flow_imp.id(618068365706415718)
,p_event_result=>'TRUE'
,p_action_sequence=>90
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(297355481474623012)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(618069453571415729)
,p_event_id=>wwv_flow_imp.id(618068365706415718)
,p_event_result=>'TRUE'
,p_action_sequence=>100
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(297356686511623024)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(618069517359415730)
,p_event_id=>wwv_flow_imp.id(618068365706415718)
,p_event_result=>'TRUE'
,p_action_sequence=>110
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(160019933359359047)
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(297355716540623015)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'INICIO_DATO'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'v_total_extracto number := 0;',
'v_total_sistema number := 0;',
'begin',
'    inv.PKG_CONCILIACION_BANCARIA.OPERACIONES_CONCILIADAS(p_cod_empresa => :P_COD_EMPRESA,',
'                                    p_cod_banco => :P747_BANCO,',
'                                    p_nro_cuenta => :P747_CUENTA,',
'                                    p_periodo => :P747_PERIODO,',
'                                    p_total_extracto => v_total_extracto,',
'                                    p_total_sistema => v_total_sistema);',
'',
'    exception when others then',
'        RAISE_APPLICATION_ERROR(-20001, ''Error al listar transacciones'');',
'end;'))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_imp.component_end;
end;
/
