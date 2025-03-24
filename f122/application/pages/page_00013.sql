prompt --application/pages/page_00013
begin
--   Manifest
--     PAGE: 00013
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
 p_id=>13
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'Alerta de planillas en depositos '
,p_alias=>'ALERTA-DE-PLANILLAS-EN-DEPOSITOS'
,p_step_title=>'Alerta de planillas en depositos '
,p_autocomplete_on_off=>'OFF'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.t-Report-pagination, .t-Report-pagination table, .t-Report-report {',
'    display: none;',
'}',
'',
'body .ui-widget-content, body .ui-widget.ui-widget-content {',
'    width:1080px !important;',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_page_component_map=>'18'
,p_last_updated_by=>'MARIANABLA'
,p_last_upd_yyyymmddhh24miss=>'20221017160048'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(40330793002321635)
,p_plug_name=>'Reporte de Planillas'
,p_region_template_options=>'#DEFAULT#:margin-top-sm'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select COD_EMPRESA,',
'       FEC_PLANILLA,',
'       NRO_PLANILLA,',
'       REPARTIDOR,',
'       CHAPA,',
'       ZONA_REPARTO,',
'       COD_POSICION_CELDA,',
'       FECHA_INICIO,',
'       SUC_ASIGNADA,',
'       VOLUMEN,',
'       NULL COPIAR,',
'       NULL DETALLE',
'  from V_PLANILLA_ENTREGA_CELDA',
' WHERE cod_empresa = :P_COD_EMPRESA --1',
'   AND suc_asignada = :P_COD_SUCURSAL',
'  AND (cod_posicion_celda = :P13_CELDA or cod_posicion_celda is null )',
' AND (:P13_FEC_FINAL IS NULL ',
'       OR TO_DATE(fec_planilla,''DD/MM/YYYY'') BETWEEN to_Date(:P13_FEC_INICIAL,''DD/MM/YYYY'') and to_Date(:P13_FEC_FINAL,''DD/MM/YYYY'') )'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P13_CELDA,P13_FEC_INICIAL,P13_FEC_FINAL,P_COD_SUCURSAL'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Listado de Planillas'
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
 p_id=>wwv_flow_imp.id(40330802658321636)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_actions_menu=>'N'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_enable_mail_download=>'Y'
,p_owner=>'MILAGROFE'
,p_internal_uid=>40330802658321636
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(40332072501321648)
,p_db_column_name=>'NRO_PLANILLA'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Nro Planilla'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(40332261571321650)
,p_db_column_name=>'CHAPA'
,p_display_order=>60
,p_column_identifier=>'E'
,p_column_label=>'Chapa'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(41155408588424201)
,p_db_column_name=>'ZONA_REPARTO'
,p_display_order=>70
,p_column_identifier=>'F'
,p_column_label=>'Zona Reparto'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(41155691995424203)
,p_db_column_name=>'FECHA_INICIO'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Fecha de Inicio'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(41155580209424202)
,p_db_column_name=>'COD_POSICION_CELDA'
,p_display_order=>90
,p_column_identifier=>'G'
,p_column_label=>unistr('Posici\00F3n Celda')
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(41158462885424231)
,p_db_column_name=>'COD_EMPRESA'
,p_display_order=>100
,p_column_identifier=>'M'
,p_column_label=>'Codigo Empresa'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(41158554120424232)
,p_db_column_name=>'FEC_PLANILLA'
,p_display_order=>110
,p_column_identifier=>'N'
,p_column_label=>'Fecha Planilla'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(41158609744424233)
,p_db_column_name=>'SUC_ASIGNADA'
,p_display_order=>120
,p_column_identifier=>'O'
,p_column_label=>'Sucursal Asignada'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(41158726423424234)
,p_db_column_name=>'COPIAR'
,p_display_order=>130
,p_column_identifier=>'P'
,p_column_label=>'Copiar'
,p_column_link=>'f?p=&APP_ID.:22:&SESSION.::&DEBUG.:22:P22_NRO_PLANILLA:#NRO_PLANILLA##13#'
,p_column_linktext=>'<span aria-hidden="true" class="fa fa-copy"></span>'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(41158822952424235)
,p_db_column_name=>'DETALLE'
,p_display_order=>140
,p_column_identifier=>'Q'
,p_column_label=>'Detalle'
,p_column_link=>'f?p=&APP_ID.:31:&SESSION.::&DEBUG.:31:P31_NRO_PLANILLA,P31_COD_EMPRESA:#NRO_PLANILLA#,#COD_EMPRESA#'
,p_column_linktext=>'<img src="#IMAGE_PREFIX#menu/add-small.png" style="max-width:px;" alt="" title="" />'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(34631383796731228)
,p_db_column_name=>'REPARTIDOR'
,p_display_order=>150
,p_column_identifier=>'T'
,p_column_label=>'Repartidor'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(34631477950731229)
,p_db_column_name=>'VOLUMEN'
,p_display_order=>160
,p_column_identifier=>'U'
,p_column_label=>'Volumen'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(41125553821089217)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'411256'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>10
,p_report_columns=>'COPIAR:NRO_PLANILLA:VOLUMEN:REPARTIDOR:CHAPA:ZONA_REPARTO:FECHA_INICIO:COD_POSICION_CELDA:DETALLE:'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(40330923876321637)
,p_plug_name=>'Listado de Planillas'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(41157692166424223)
,p_plug_name=>'Detalle'
,p_region_template_options=>'#DEFAULT#:js-dialog-autoheight:js-dialog-size720x480'
,p_plug_template=>wwv_flow_imp.id(40117728043263659)
,p_plug_display_sequence=>70
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(5577507481281233)
,p_name=>'Cabecera'
,p_parent_plug_id=>wwv_flow_imp.id(41157692166424223)
,p_template=>wwv_flow_imp.id(40125238939263661)
,p_display_sequence=>20
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-AVPList--leftAligned'
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select  pla.nro_planilla nro_planilla , ',
'        pla.fec_planilla fecha_planilla, ',
'        VC.SER_COMPROBANTE SER_FACTURA, ',
'        VC.NRO_COMPROBANTE NRO_FACTURA, ',
'        vc.fec_comprobante fec_factura, ',
'        vc.nom_cliente cliente',
'  from  rp_reparto_cabecera pla, rp_reparto_detalle det, vt_comprobantes_cabecera vc',
' where  pla.cod_empresa = det.cod_empresa',
'   and  pla.nro_planilla = det.nro_planilla',
'   and  det.cod_empresa = vc.cod_empresa',
'   and  det.tip_comprobante = vc.tip_comprobante',
'   and  det.ser_comprobante =vc.ser_comprobante',
'   and  det.nro_comprobante =vc.nro_comprobante',
'   and  rownum = 1',
'   and  pla.cod_empresa = :p_cod_empresa',
'   and  pla.cod_sucursal = :p_cod_sucursal',
'   and  pla.nro_planilla = :p13_nro_planilla'))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P13_NRO_PLANILLA'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(40159146993263670)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>unistr('No existen art\00EDculos.')
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(5577704226281235)
,p_query_column_id=>1
,p_column_alias=>'NRO_PLANILLA'
,p_column_display_sequence=>10
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(5853423349363449)
,p_query_column_id=>2
,p_column_alias=>'FECHA_PLANILLA'
,p_column_display_sequence=>20
,p_column_heading=>'Fecha Planilla'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(5578404019281242)
,p_query_column_id=>3
,p_column_alias=>'SER_FACTURA'
,p_column_display_sequence=>50
,p_column_heading=>'Ser Factura'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(5578512455281243)
,p_query_column_id=>4
,p_column_alias=>'NRO_FACTURA'
,p_column_display_sequence=>60
,p_column_heading=>'Nro Factura'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(5578151313281239)
,p_query_column_id=>5
,p_column_alias=>'FEC_FACTURA'
,p_column_display_sequence=>30
,p_column_heading=>'Fec Factura'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(5578260260281240)
,p_query_column_id=>6
,p_column_alias=>'CLIENTE'
,p_column_display_sequence=>40
,p_column_heading=>'Cliente'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(5577616053281234)
,p_plug_name=>unistr('Detalle de Art\00EDculos')
,p_parent_plug_id=>wwv_flow_imp.id(41157692166424223)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>30
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Select  fac.cod_articulo, ',
'        art.descripcion desc_articulo,',
'        art.cod_origen_art, ',
'        art.cod_grupo_art, ',
'        art.cod_relacion_um',
' from rp_reparto_cabecera pla, rp_reparto_detalle det, vt_comprobantes_detalle fac, personas per, rp_repartidores rep,',
'      st_articulos art, st_grupos_art gr',
'where pla.cod_empresa  = rep.cod_empresa(+)',
'  and pla.cod_repartidor = rep.cod_repartidor(+)',
'  and rep.cod_persona = per.cod_persona(+)',
'  and pla.cod_empresa = det.cod_empresa',
'  and pla.nro_planilla = det.nro_planilla',
'  and det.cod_empresa = fac.cod_empresa',
'  and det.tip_comprobante = fac.tip_comprobante',
'  and det.ser_comprobante = fac.ser_comprobante',
'  and det.nro_comprobante = fac.nro_comprobante',
'  and fac.cod_empresa = art.cod_empresa',
'  and fac.cod_articulo = art.cod_articulo',
'  and art.cod_grupo_art = gr.cod_grupo_art(+)',
'  and  pla.cod_empresa = :p_cod_empresa',
'  and  pla.cod_sucursal = :p_cod_sucursal',
'  and  pla.nro_planilla = :p13_nro_planilla ;',
'  '))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P13_NRO_PLANILLA'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>unistr('Detalle de Art\00EDculos')
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
 p_id=>wwv_flow_imp.id(5965139528783205)
,p_max_row_count=>'1000000'
,p_no_data_found_message=>unistr('No existen art\00EDculos.')
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_search_bar=>'N'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_enable_mail_download=>'Y'
,p_owner=>'MILAGROFE'
,p_internal_uid=>5965139528783205
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(5965287554783206)
,p_db_column_name=>'COD_ARTICULO'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>unistr('C\00F3digo de Articulo')
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(5965379877783207)
,p_db_column_name=>'DESC_ARTICULO'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>unistr('Descripci\00F3n')
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(5965451676783208)
,p_db_column_name=>'COD_ORIGEN_ART'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>unistr('C\00F3digo Origen Art\00EDculo')
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(5965570746783209)
,p_db_column_name=>'COD_GRUPO_ART'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Cod Grupo Art'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(5965628606783210)
,p_db_column_name=>'COD_RELACION_UM'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Cod Relacion Um'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(5976796680805584)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'59768'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>10
,p_report_columns=>'COD_ARTICULO:DESC_ARTICULO:COD_ORIGEN_ART:COD_GRUPO_ART:COD_RELACION_UM'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(40331748463321645)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(40330923876321637)
,p_button_name=>'BT_FILTRAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Filtrar'
,p_button_position=>'BOTTOM'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(41157053004424217)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(40330923876321637)
,p_button_name=>'BT_LIMPIAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_image_alt=>'Limpiar'
,p_button_position=>'BOTTOM'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(40331159467321639)
,p_name=>'P13_SUCURSAL'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(40330923876321637)
,p_item_default=>'P_NOM_SUCURSAL'
,p_item_default_type=>'ITEM'
,p_prompt=>unistr('Dep\00F3sito')
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(40331238181321640)
,p_name=>'P13_CELDA'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(40330923876321637)
,p_prompt=>'Celda'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_CELDA'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT a.cod_posicion , a.cod_nivel ',
'FROM st_posiciones a',
'where a.cod_empresa = 1--:variables.cod_empresa',
'    and a.cod_sucursal=190--:variables.cod_sucursal',
'    and a.ind_celda = ''S'' ',
'    and a.estado = ''S'''))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'Todos'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
,p_attribute_08=>'500'
,p_attribute_09=>'500'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(40331300568321641)
,p_name=>'P13_FEC_INICIAL'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(40330923876321637)
,p_prompt=>'Fecha Inicial'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(40331467388321642)
,p_name=>'P13_FEC_FINAL'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(40330923876321637)
,p_prompt=>'Fecha Final'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(41158039736424227)
,p_name=>'P13_NRO_PLANILLA'
,p_item_sequence=>80
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(41155996228424206)
,p_name=>'Refresh'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(40331748463321645)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(41156013242424207)
,p_event_id=>wwv_flow_imp.id(41155996228424206)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(40330793002321635)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(41157128247424218)
,p_name=>'DA_LIMPIAR'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(41157053004424217)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(41157233270424219)
,p_event_id=>wwv_flow_imp.id(41157128247424218)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(40330923876321637)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(41157396256424220)
,p_event_id=>wwv_flow_imp.id(41157128247424218)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(40330793002321635)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(41158118356424228)
,p_name=>'DA_CAMBIO_PLANILLA'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P13_NRO_PLANILLA'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(41158262671424229)
,p_event_id=>wwv_flow_imp.id(41158118356424228)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'null;'
,p_attribute_02=>'P13_NRO_PLANILLA'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(5578687009281244)
,p_event_id=>wwv_flow_imp.id(41158118356424228)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(5577507481281233)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(5578724394281245)
,p_event_id=>wwv_flow_imp.id(41158118356424228)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(5577616053281234)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(41158339084424230)
,p_event_id=>wwv_flow_imp.id(41158118356424228)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(41157692166424223)
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(41156667552424213)
,p_process_sequence=>20
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_INIT'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P_COD_SUCURSAL := 190;',
':P_COD_MODULO := ''VT'';',
':P_COD_EMPRESA := 1;',
'',
'begin',
'    select descripcion',
'      into :P13_SUCURSAL',
'      from sucursales',
'     where cod_sucursal = :P_COD_SUCURSAL',
'       and cod_empresa = :P_COD_EMPRESA;',
'exception',
'    when others then',
'        apex_debug.error(sqlerrm);',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp.component_end;
end;
/
