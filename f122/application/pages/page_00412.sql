prompt --application/pages/page_00412
begin
--   Manifest
--     PAGE: 00412
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
 p_id=>412
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'Panel de Facturas a Rutear - RPRUPFAC'
,p_alias=>'PANEL-DE-FACTURAS-A-RUTEAR-RPRUPFAC'
,p_step_title=>'Panel de Facturas a Rutear - RPRUPFAC'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_last_updated_by=>'DFINO'
,p_last_upd_yyyymmddhh24miss=>'20230309171453'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(121749834197419420)
,p_plug_name=>'Panel de Facturas a Rutear - RPRUPFAC'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>990
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(121749934320419421)
,p_plug_name=>'Contenedor'
,p_parent_plug_id=>wwv_flow_imp.id(121749834197419420)
,p_region_template_options=>'#DEFAULT#:t-TabsRegion-mod--simple'
,p_plug_template=>wwv_flow_imp.id(40132096801263663)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(121750016307419422)
,p_plug_name=>'Ruteo'
,p_parent_plug_id=>wwv_flow_imp.id(121749934320419421)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(121751346924419435)
,p_plug_name=>'V_FACTURA_RUTEO'
,p_parent_plug_id=>wwv_flow_imp.id(121750016307419422)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT NUMERO_PEDIDO,',
'       NRO_PLANILLA_REPARTO,',
'       COMPROBANTE,',
'       REQ_CONFIRMACION_ENVIO_PEDIDO,',
'       NRO_FACTURA_QM,',
'       VOLUMEN,',
'       PESO_KG,',
'       DEPARTAMENTO,',
'       CIUDAD,',
'       BARRIO,',
'       NOMBRE,',
'       IMPORTE,',
'       FECHA_ENTREGA,',
'       SITUACION,',
'       COD_CLIENTE,',
'       TIP_COMPROBANTE,',
'       SER_COMPROBANTE,',
'       NRO_COMPROBANTE,',
'       NULL FAC,',
'       NULL PED,',
'       NULL DETALLE',
'  FROM V_FACTURA_RUTEO',
' WHERE (ESTADO_distribucion = :P412_ESTADO_DISTRIBUCION or :P412_ESTADO_DISTRIBUCION IS NULL)',
'   AND (TO_DATE(FEC_comprobante,''DD/MM/YYYY'') >= TO_DATE(:P412_FECHA_INI,''DD/MM/YYYY'')  OR TO_DATE(:P412_FECHA_INI,''DD/MM/YYYY'') IS NULL)',
'   AND (TO_DATE(FEC_comprobante,''DD/MM/YYYY'') <= TO_DATE(:P412_FECHA_FIN,''DD/MM/YYYY'')  OR TO_DATE(:P412_FECHA_FIN,''DD/MM/YYYY'') IS NULL)',
'   AND (COD_CLIENTE = :P412_COD_CLIENTE OR :P412_COD_CLIENTE IS NULL)',
'   AND (origen_entrega = :P412_ORIGEN_ENTREGA OR :P412_ORIGEN_ENTREGA IS NULL)',
'   AND (empresa = :P412_EMPRESA_ORIGEN OR :P412_EMPRESA_ORIGEN IS NULL)',
'   AND (TIPO = :P412_ZONA_ENTREGA OR :P412_ZONA_ENTREGA IS NULL)',
'   AND ((cod_departamento = DECODE(:P412_COD_DEPARTAMENTO,''T'',cod_departamento,:P412_COD_DEPARTAMENTO) OR :P412_COD_DEPARTAMENTO IS NULL))',
'   AND ((cod_ciudad = DECODE(:P412_COD_CIUDAD,''T'',cod_ciudad,:P412_COD_CIUDAD) OR :P412_COD_CIUDAD IS NULL))',
'   AND :P412_CONTROL = 1'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P412_ESTADO_DISTRIBUCION,P412_COD_CLIENTE,P412_ORIGEN_ENTREGA,P412_COD_DEPARTAMENTO,P412_COD_CIUDAD,P412_EMPRESA_ORIGEN,P412_ZONA_ENTREGA,P412_FECHA_INI,P412_FECHA_FIN,P412_CONTROL'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'V_FACTURA_RUTEO'
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
 p_id=>wwv_flow_imp.id(122711679799550109)
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
,p_internal_uid=>122711679799550109
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(122711716382550110)
,p_db_column_name=>'NUMERO_PEDIDO'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Numero Pedido'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(122711823237550111)
,p_db_column_name=>'NRO_PLANILLA_REPARTO'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Nro Planilla Reparto'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(122711989514550112)
,p_db_column_name=>'COMPROBANTE'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Comprobante'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(122712044060550113)
,p_db_column_name=>'REQ_CONFIRMACION_ENVIO_PEDIDO'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Req Confirmacion Envio Pedido'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(122712149684550114)
,p_db_column_name=>'NRO_FACTURA_QM'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Nro Factura Qm'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(122712200520550115)
,p_db_column_name=>'VOLUMEN'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Volumen'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_format_mask=>'999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(122712317912550116)
,p_db_column_name=>'PESO_KG'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Peso Kg'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_format_mask=>'999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(122712459394550117)
,p_db_column_name=>'DEPARTAMENTO'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Departamento'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(122712509870550118)
,p_db_column_name=>'CIUDAD'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Ciudad'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(122712607232550119)
,p_db_column_name=>'BARRIO'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Barrio'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(122712723192550120)
,p_db_column_name=>'NOMBRE'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Nombre'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(122712878236550121)
,p_db_column_name=>'IMPORTE'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Importe'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_format_mask=>'999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(122712961161550122)
,p_db_column_name=>'FECHA_ENTREGA'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Fecha Entrega'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(122713016047550123)
,p_db_column_name=>'SITUACION'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>'Situacion'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(122713165337550124)
,p_db_column_name=>'FAC'
,p_display_order=>150
,p_column_identifier=>'O'
,p_column_label=>'Fac'
,p_column_link=>'javascript:$s(''P412_COD_CLIENTE_AUX'',''#COD_CLIENTE#''),$s(''P412_TIP_COMPROBANTE_AUX'',''#TIP_COMPROBANTE#''),$s(''P412_SER_COMPROBANTE_AUX'',''#SER_COMPROBANTE#''),$s(''P412_NRO_COMPROBANTE_AUX_2'',''#NRO_COMPROBANTE#'');'
,p_column_linktext=>' <span class="t-Button-label">F</span>'
,p_column_link_attr=>'class="t-Button"'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(122713202474550125)
,p_db_column_name=>'PED'
,p_display_order=>160
,p_column_identifier=>'P'
,p_column_label=>'Ped'
,p_column_link=>'javascript:$s(''P412_COD_CLIENTE_AUX'',''#COD_CLIENTE#''),$s(''P412_TIP_COMPROBANTE_AUX'',''#TIP_COMPROBANTE#''),$s(''P412_SER_COMPROBANTE_AUX'',''#SER_COMPROBANTE#''),$s(''P412_NRO_COMPROBANTE_AUX_3'',''#NRO_COMPROBANTE#'');'
,p_column_linktext=>' <span class="t-Button-label">P</span>'
,p_column_link_attr=>'class="t-Button"'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(122713638318550129)
,p_db_column_name=>'DETALLE'
,p_display_order=>170
,p_column_identifier=>'Q'
,p_column_label=>'Detalle'
,p_column_link=>'javascript:$s(''P412_COD_CLIENTE_AUX'',''#COD_CLIENTE#''),$s(''P412_TIP_COMPROBANTE_AUX'',''#TIP_COMPROBANTE#''),$s(''P412_SER_COMPROBANTE_AUX'',''#SER_COMPROBANTE#''),$s(''P412_NRO_COMPROBANTE_AUX'',''#NRO_COMPROBANTE#'');'
,p_column_linktext=>'<span class="fa fa-search">'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(122713906326550132)
,p_db_column_name=>'COD_CLIENTE'
,p_display_order=>180
,p_column_identifier=>'R'
,p_column_label=>'Cod Cliente'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(122714058513550133)
,p_db_column_name=>'TIP_COMPROBANTE'
,p_display_order=>190
,p_column_identifier=>'S'
,p_column_label=>'Tip Comprobante'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(122714191276550134)
,p_db_column_name=>'SER_COMPROBANTE'
,p_display_order=>200
,p_column_identifier=>'T'
,p_column_label=>'Ser Comprobante'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(122714297040550135)
,p_db_column_name=>'NRO_COMPROBANTE'
,p_display_order=>210
,p_column_identifier=>'U'
,p_column_label=>'Nro Comprobante'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(123061918640808219)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1230620'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>10
,p_report_columns=>'NUMERO_PEDIDO:NRO_PLANILLA_REPARTO:COMPROBANTE:REQ_CONFIRMACION_ENVIO_PEDIDO:NRO_FACTURA_QM:VOLUMEN:PESO_KG:DEPARTAMENTO:CIUDAD:BARRIO:NOMBRE:IMPORTE:FECHA_ENTREGA:SITUACION:DETALLE:FAC:PED:'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(121751718552419439)
,p_plug_name=>'Contenedor Detalle 1'
,p_parent_plug_id=>wwv_flow_imp.id(121750016307419422)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(121752153058419443)
,p_plug_name=>'Contenedor Detalle 2'
,p_parent_plug_id=>wwv_flow_imp.id(121750016307419422)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>30
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(121752260792419444)
,p_plug_name=>'Contenedor Detalle 3'
,p_parent_plug_id=>wwv_flow_imp.id(121750016307419422)
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
 p_id=>wwv_flow_imp.id(121752386461419445)
,p_plug_name=>'Contenedor Detalle 4'
,p_parent_plug_id=>wwv_flow_imp.id(121750016307419422)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>50
,p_plug_new_grid_row=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(122715134932550144)
,p_plug_name=>'Filtros'
,p_parent_plug_id=>wwv_flow_imp.id(121750016307419422)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>5
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(121750441023419426)
,p_plug_name=>'Planillas'
,p_parent_plug_id=>wwv_flow_imp.id(121749934320419421)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(121751415321419436)
,p_plug_name=>'V_RESUMEN_FACTURAS_REPARTOS'
,p_parent_plug_id=>wwv_flow_imp.id(121750441023419426)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT FEC_PLANILLA,',
'       NRO_PLANILLA,',
'       TIPO_ENTREGA,',
'       DESCRIPCION,',
'       TOTAL,',
'       VOLUMEN,',
'       HORA_ALTA,',
'       CANTIDAD_PEDIDOS,',
'       CAPACIDAD,',
'       HORA_FACTURA,',
'       NRO_PLANILLA_QM',
'  FROM V_RESUMEN_FACTURAS_REPARTOS',
' WHERE :P412_CONTROL_2 = 1'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P412_CONTROL_2'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'V_RESUMEN_FACTURAS_REPARTOS'
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
 p_id=>wwv_flow_imp.id(122715470398550147)
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
,p_internal_uid=>122715470398550147
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(122715564462550148)
,p_db_column_name=>'FEC_PLANILLA'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Fecha'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(122715681477550149)
,p_db_column_name=>'NRO_PLANILLA'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Planilla'
,p_column_link=>'f?p=&APP_ID.:31:&SESSION.::&DEBUG.:31:P31_NRO_PLANILLA:#NRO_PLANILLA#'
,p_column_linktext=>'#NRO_PLANILLA#'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(122715778176550150)
,p_db_column_name=>'TIPO_ENTREGA'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Tipo Entrega'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(123209343153722801)
,p_db_column_name=>'DESCRIPCION'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Descripcion'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(123209464736722802)
,p_db_column_name=>'TOTAL'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Monto'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_format_mask=>'999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(123209594959722803)
,p_db_column_name=>'VOLUMEN'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Volumen'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_format_mask=>'999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(123209658004722804)
,p_db_column_name=>'HORA_ALTA'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Hora'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(123209706993722805)
,p_db_column_name=>'CANTIDAD_PEDIDOS'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Cantidad Pedidos'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(123209889883722806)
,p_db_column_name=>'CAPACIDAD'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Capacidad'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(123209965796722807)
,p_db_column_name=>'HORA_FACTURA'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Hora Factura'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(123210021297722808)
,p_db_column_name=>'NRO_PLANILLA_QM'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Nro. Planilla Qm'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(123221458983731334)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1232215'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>10
,p_report_columns=>'FEC_PLANILLA:HORA_ALTA:NRO_PLANILLA:TOTAL:VOLUMEN:CANTIDAD_PEDIDOS:DESCRIPCION:CAPACIDAD:NRO_PLANILLA_QM:TIPO_ENTREGA:HORA_FACTURA:'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(122715318419550146)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(121750441023419426)
,p_button_name=>'BTGENERAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Generar'
,p_button_position=>'TOP'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(121751242137419434)
,p_button_sequence=>100
,p_button_plug_id=>wwv_flow_imp.id(121750016307419422)
,p_button_name=>'BTFILTRAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Filtrar'
,p_button_position=>'TOP'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(123212177827722829)
,p_button_sequence=>110
,p_button_plug_id=>wwv_flow_imp.id(121750016307419422)
,p_button_name=>'BTCONFIRMACION_ENVIO'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('Confirmaci\00F3n Env\00EDo')
,p_button_position=>'TOP'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(123212001987722828)
,p_button_sequence=>120
,p_button_plug_id=>wwv_flow_imp.id(121750016307419422)
,p_button_name=>'BTSUCURSALES'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Sucursales'
,p_button_position=>'TOP'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(121750153595419423)
,p_name=>'P412_ESTADO_DISTRIBUCION'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(122715134932550144)
,p_prompt=>'Estado'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>'STATIC:PENDIENTE_QM;PENDIENTE_QM,EN_QM;EN_QM,CON_PLANILLA_REPARTO;CON_PLANILLA_REPARTO,SIN GEOLOCALIZAR;SIN_GEOLOCALIZAR,A_CONFIRMAR_ENVIO;A_CONFIRMAR_ENVIO'
,p_lov_display_null=>'YES'
,p_lov_null_text=>'-Todos-'
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
 p_id=>wwv_flow_imp.id(121750266507419424)
,p_name=>'P412_ORIGEN_ENTREGA'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(122715134932550144)
,p_prompt=>unistr('Dep\00F3sito Origen')
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>'STATIC:SAN LORENZO;SL,CDE;CDE,ARTIGAS;AR,STNGO;STNGO'
,p_lov_display_null=>'YES'
,p_lov_null_text=>'-Todos-'
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
 p_id=>wwv_flow_imp.id(121750572804419427)
,p_name=>'P412_COD_CLIENTE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(122715134932550144)
,p_prompt=>'Cliente'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_CLIENTES_RPRUPFAC'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select c.cod_cliente||'' - ''||ltrim(rtrim(nvl(p.nombre, p.nomb_fantasia))) D, ',
'       c.cod_cliente R',
'  from cc_clientes c, personas p',
' where c.cod_empresa = :P_COD_EMPRESA',
'   and c.cod_persona = p.cod_persona		',
'   AND p.nombre NOT LIKE ''%NO USAR%''',
'   AND NVL(C.ESTADO,''A'')=''A'''))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'-Seleccione-'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>8
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
 p_id=>wwv_flow_imp.id(121750692114419428)
,p_name=>'P412_COD_CIUDAD'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(122715134932550144)
,p_prompt=>'Ciudad'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>'STATIC:CAPITAL;CAPITAL,INTERIOR;INTERIOR,CLIENTE RETIRA;CLIENTE RETIRA,TODOS;T'
,p_lov_display_null=>'YES'
,p_lov_null_text=>'-Seleccione-'
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
 p_id=>wwv_flow_imp.id(121750779974419429)
,p_name=>'P412_COD_DEPARTAMENTO'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(122715134932550144)
,p_prompt=>'Departamento'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>'STATIC:CAPITAL;CAPITAL,INTERIOR;INTERIOR,CLIENTE RETIRA;CLIENTE RETIRA,TODOS;T'
,p_lov_display_null=>'YES'
,p_lov_null_text=>'-Seleccione-'
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
 p_id=>wwv_flow_imp.id(121750853071419430)
,p_name=>'P412_ZONA_ENTREGA'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(122715134932550144)
,p_prompt=>'Zona Entrega'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>'STATIC:CAPITAL;CAPITAL,INTERIOR;INTERIOR,CLIENTE RETIRA;CLIENTE RETIRA'
,p_lov_display_null=>'YES'
,p_lov_null_text=>'-Todos-'
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
 p_id=>wwv_flow_imp.id(121750943021419431)
,p_name=>'P412_EMPRESA_ORIGEN'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(122715134932550144)
,p_prompt=>'Empresa Origen'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>'STATIC:NGO;NGO,CPH;CPH,GONZALITO;GONZALITO'
,p_lov_display_null=>'YES'
,p_lov_null_text=>'-Todos-'
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
 p_id=>wwv_flow_imp.id(121751001355419432)
,p_name=>'P412_FECHA_FIN'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(122715134932550144)
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
 p_id=>wwv_flow_imp.id(121751104352419433)
,p_name=>'P412_FECHA_INI'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(122715134932550144)
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
 p_id=>wwv_flow_imp.id(121751531813419437)
,p_name=>'P412_COD_MODULO'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(122715134932550144)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(121751864888419440)
,p_name=>'P412_VOLUMEN_TOTAL'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(121751718552419439)
,p_prompt=>'Volumen Total'
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
 p_id=>wwv_flow_imp.id(121751918217419441)
,p_name=>'P412_OBSERVACION'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(121751718552419439)
,p_prompt=>unistr('Observaci\00F3n')
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
 p_id=>wwv_flow_imp.id(121752054899419442)
,p_name=>'P412_IMPORTE_TOTAL'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(121751718552419439)
,p_prompt=>'Importe Total'
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
 p_id=>wwv_flow_imp.id(121752457410419446)
,p_name=>'P412_COD_CLIENTE_DET'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(121752153058419443)
,p_prompt=>'Cliente'
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
 p_id=>wwv_flow_imp.id(121752583936419447)
,p_name=>'P412_COD_SUCURSAL_DET'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(121752153058419443)
,p_prompt=>'Sucursal'
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
 p_id=>wwv_flow_imp.id(121752622745419448)
,p_name=>'P412_SEGMENTO_CLIENTE_DET'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(121752153058419443)
,p_prompt=>unistr('Segmentaci\00F3n')
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
 p_id=>wwv_flow_imp.id(121752775923419449)
,p_name=>'P412_DIRECCION_SUCURSAL_DET'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(121752153058419443)
,p_prompt=>unistr('Direcci\00F3n')
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
 p_id=>wwv_flow_imp.id(121752888753419450)
,p_name=>'P412_COMENTARIO_DET'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(121752153058419443)
,p_prompt=>'Comentario'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>30
,p_cHeight=>5
,p_tag_attributes=>'readonly'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(122710891927550101)
,p_name=>'P412_NRO_PLAN_PED_CONFIRMADO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(121752260792419444)
,p_prompt=>unistr('Plan Pedido N\00BA')
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
 p_id=>wwv_flow_imp.id(122710918135550102)
,p_name=>'P412_FECHA_PEDIDO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(121752260792419444)
,p_prompt=>'Fecha Pedido'
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
 p_id=>wwv_flow_imp.id(122711046040550103)
,p_name=>'P412_FECHA_TRASLADO'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(121752260792419444)
,p_prompt=>'Fecha Traslado'
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
 p_id=>wwv_flow_imp.id(122711152879550104)
,p_name=>'P412_TIPO'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(121752260792419444)
,p_prompt=>'Tipo Entrega'
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
 p_id=>wwv_flow_imp.id(122711248212550105)
,p_name=>'P412_FECHA_HORA_PLAN_PED'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(121752386461419445)
,p_prompt=>'Fec./Hora'
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
 p_id=>wwv_flow_imp.id(122711316855550106)
,p_name=>'P412_ESTADO_DISTRIBUCION_DET'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(121752386461419445)
,p_prompt=>'Est. Distrib.'
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
 p_id=>wwv_flow_imp.id(122711452774550107)
,p_name=>'P412_EMPRESA_DET'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(121752386461419445)
,p_prompt=>'Empresa'
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
 p_id=>wwv_flow_imp.id(122711550228550108)
,p_name=>'P412_ORIGEN_ENTREGA_DET'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(121752386461419445)
,p_prompt=>'Origen Ent.'
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
 p_id=>wwv_flow_imp.id(122713748672550130)
,p_name=>'P412_CONTROL'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(122715134932550144)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(122714349423550136)
,p_name=>'P412_COD_CLIENTE_AUX'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(121751346924419435)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(122714443586550137)
,p_name=>'P412_TIP_COMPROBANTE_AUX'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(121751346924419435)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(122714510669550138)
,p_name=>'P412_SER_COMPROBANTE_AUX'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(121751346924419435)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(122714689341550139)
,p_name=>'P412_NRO_COMPROBANTE_AUX'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(121751346924419435)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(123210130553722809)
,p_name=>'P412_CONTROL_2'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(121750441023419426)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(123210695397722814)
,p_name=>'P412_NRO_COMPROBANTE_AUX_2'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(121751346924419435)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(123210732577722815)
,p_name=>'P412_NRO_COMPROBANTE_AUX_3'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(121751346924419435)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(123211250223722820)
,p_name=>'P412_URL'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(121751346924419435)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(123212438850722832)
,p_name=>'P412_CONTROL_CONFIRMAR_ENVIO'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(122715134932550144)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(123212631217722834)
,p_name=>'P412_MENSAJE_CONFIRMA_ENVIO'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(122715134932550144)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(123213778200722845)
,p_name=>'P412_CONTROL_SUCURSALES'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(122715134932550144)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(122713399734550126)
,p_name=>'BTFILTRAR'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(121751242137419434)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(122713464120550127)
,p_event_id=>wwv_flow_imp.id(122713399734550126)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_02=>'P412_ESTADO_DISTRIBUCION,P412_COD_CLIENTE,P412_ORIGEN_ENTREGA,P412_COD_DEPARTAMENTO,P412_COD_CIUDAD,P412_EMPRESA_ORIGEN,P412_ZONA_ENTREGA,P412_FECHA_INI,P412_FECHA_FIN'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(122713835192550131)
,p_event_id=>wwv_flow_imp.id(122713399734550126)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>':P412_CONTROL := 1;'
,p_attribute_03=>'P412_CONTROL'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(122713572593550128)
,p_event_id=>wwv_flow_imp.id(122713399734550126)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(121751346924419435)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(122715084071550143)
,p_event_id=>wwv_flow_imp.id(122713399734550126)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    RPRUPFAC.SUMAR_TOT(pcod_cliente    => :P412_COD_CLIENTE,',
'                       pfecha_ini      => :P412_FECHA_INI,',
'                       pfecha_fin      => :P412_FECHA_FIN,',
'                       pestado_dist    => :P412_ESTADO_DISTRIBUCION,',
'                       porigen_entrega => :P412_ORIGEN_ENTREGA,',
'                       pempresa_origen => :P412_EMPRESA_ORIGEN,',
'                       pzona_entrega   => :P412_ZONA_ENTREGA,',
'                       pdepartamento   => :P412_COD_DEPARTAMENTO,',
'                       pciudad         => :P412_COD_CIUDAD,',
'                       ptot_volumen    => :P412_VOLUMEN_TOTAL,',
'                       ptot_importe    => :P412_IMPORTE_TOTAL);',
'EXCEPTION',
'    WHEN OTHERS THEN',
'    APEX_DEBUG.ERROR(''DA_BTFILTRAR ''||SQLERRM);',
'END;    '))
,p_attribute_02=>'P412_COD_CLIENTE,P412_FECHA_INI,P412_FECHA_FIN,P412_ESTADO_DISTRIBUCION,P412_ORIGEN_ENTREGA,P412_EMPRESA_ORIGEN,P412_ZONA_ENTREGA,P412_COD_DEPARTAMENTO,P412_COD_CIUDAD'
,p_attribute_03=>'P412_VOLUMEN_TOTAL,P412_IMPORTE_TOTAL'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(122714770740550140)
,p_name=>'DA_DET'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P412_NRO_COMPROBANTE_AUX'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(122714867669550141)
,p_event_id=>wwv_flow_imp.id(122714770740550140)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_02=>'P412_COD_CLIENTE_AUX,P412_TIP_COMPROBANTE_AUX,P412_SER_COMPROBANTE_AUX,P412_NRO_COMPROBANTE_AUX'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(122714900646550142)
,p_event_id=>wwv_flow_imp.id(122714770740550140)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    RPRUPFAC.CARGAR_DATOS_DET(pcod_cliente         => :P412_COD_CLIENTE_AUX,',
'                              ptip_comprobante     => :P412_TIP_COMPROBANTE_AUX,',
'                              pser_comprobante     => :P412_SER_COMPROBANTE_AUX,',
'                              pnro_comprobante     => :P412_NRO_COMPROBANTE_AUX,',
'                              pcliente             => :P412_COD_CLIENTE_DET,',
'                              psucursal            => :P412_COD_SUCURSAL_DET,',
'                              pdire_sucursal       => :P412_DIRECCION_SUCURSAL_DET,',
'                              pcomentario          => :P412_COMENTARIO_DET,',
'                              psegmento_cliente    => :P412_SEGMENTO_CLIENTE_DET,',
'                              pnro_plan_ped_confir => :P412_NRO_PLAN_PED_CONFIRMADO,',
'                              pfecha_pedido        => :P412_FECHA_PEDIDO,',
'                              pfecha_traslado      => :P412_FECHA_TRASLADO,',
'                              ptipo                => :P412_TIPO,',
'                              pfec_hs_plan_ped     => :P412_FECHA_HORA_PLAN_PED,',
'                              pestado_dist         => :P412_ESTADO_DISTRIBUCION_DET,',
'                              pempresa             => :P412_EMPRESA_DET,',
'                              porigen_entrega      => :P412_ORIGEN_ENTREGA_DET,',
'                              pobservacion         => :P412_OBSERVACION);',
'EXCEPTION',
'    WHEN OTHERS THEN',
'    APEX_DEBUG.ERROR(''DA_DET ''||SQLERRM);',
'END;'))
,p_attribute_02=>'P412_COD_CLIENTE_AUX,P412_TIP_COMPROBANTE_AUX,P412_SER_COMPROBANTE_AUX,P412_NRO_COMPROBANTE_AUX'
,p_attribute_03=>'P412_COD_CLIENTE_DET,P412_COD_SUCURSAL_DET,P412_DIRECCION_SUCURSAL_DET,P412_COMENTARIO_DET,P412_SEGMENTO_CLIENTE_DET,P412_NRO_PLAN_PED_CONFIRMADO,P412_FECHA_PEDIDO,P412_FECHA_TRASLADO,P412_TIPO,P412_FECHA_HORA_PLAN_PED,P412_ESTADO_DISTRIBUCION_DET,P4'
||'12_EMPRESA_DET,P412_ORIGEN_ENTREGA_DET,P412_OBSERVACION'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(123210206942722810)
,p_name=>'DA_BTGENERAR'
,p_event_sequence=>30
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(122715318419550146)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(123210303230722811)
,p_event_id=>wwv_flow_imp.id(123210206942722810)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_02=>'P412_CONTROL_2'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(123210495057722812)
,p_event_id=>wwv_flow_imp.id(123210206942722810)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>':P412_CONTROL_2 := 1;'
,p_attribute_03=>'P412_CONTROL_2'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(123210543059722813)
,p_event_id=>wwv_flow_imp.id(123210206942722810)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(121751415321419436)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(123210821142722816)
,p_name=>'DA_FAC'
,p_event_sequence=>40
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P412_NRO_COMPROBANTE_AUX_2'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(123210956800722817)
,p_event_id=>wwv_flow_imp.id(123210821142722816)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_02=>'P412_COD_CLIENTE_AUX,P412_TIP_COMPROBANTE_AUX,P412_SER_COMPROBANTE_AUX,P412_NRO_COMPROBANTE_AUX_2'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(123211559046722823)
,p_event_id=>wwv_flow_imp.id(123210821142722816)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    IF :P412_TIP_COMPROBANTE_AUX = ''RET'' THEN',
'        SELECT APEX_PAGE.GET_URL(p_page   => 409,',
'            				     p_items  => ''P409_P_SER_PLANILLA,P409_P_NRO_PLANILLA,P409_P_LOGISTICA'',',
'            				     p_values => (''''||:P412_SER_COMPROBANTE_AUX||'',',
'                                              ''||:P412_NRO_COMPROBANTE_AUX_2||'',',
'                                              ''||''SI''||'''')) f_url_1',
'		INTO :P412_URL',
'		FROM DUAL;  ',
'    ELSE',
'        SELECT APEX_PAGE.GET_URL(p_page   => 193,',
'            				     p_items  => ''P193_TIP_COMPROBANTE,P193_SER_COMPROBANTE,P193_NRO_COMPROBANTE'',',
'            				     p_values => (''''||:P412_TIP_COMPROBANTE_AUX||'',',
'                                              ''||:P412_SER_COMPROBANTE_AUX||'',',
'                                              ''||:P412_NRO_COMPROBANTE_AUX_2||'''')) f_url_1',
'		INTO :P412_URL',
'		FROM DUAL;  ',
'    END IF;',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'    APEX_DEBUG.ERROR(''DA_FAC ''||SQLERRM);',
'END;'))
,p_attribute_02=>'P412_TIP_COMPROBANTE_AUX ,P412_SER_COMPROBANTE_AUX,P412_NRO_COMPROBANTE_AUX_2'
,p_attribute_03=>'P412_URL'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(123211618539722824)
,p_event_id=>wwv_flow_imp.id(123210821142722816)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var url = apex.item("P412_URL").getValue();',
'',
'apex.navigation.openInNewWindow(url, "_blank");'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(123211045615722818)
,p_name=>'DA_PED'
,p_event_sequence=>50
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P412_NRO_COMPROBANTE_AUX_3'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(123211160886722819)
,p_event_id=>wwv_flow_imp.id(123211045615722818)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_02=>'P412_COD_CLIENTE_AUX,P412_TIP_COMPROBANTE_AUX,P412_SER_COMPROBANTE_AUX,P412_NRO_COMPROBANTE_AUX_3'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(123211716710722825)
,p_event_id=>wwv_flow_imp.id(123211045615722818)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'VTIP_PED VARCHAR2(600);',
'VSER_PED VARCHAR2(600);',
'VNRO_PED VARCHAR2(600);',
'BEGIN',
'    IF :P412_TIP_COMPROBANTE_AUX = ''RET'' THEN',
'        SELECT APEX_PAGE.GET_URL(p_page   => 409,',
'            				     p_items  => ''P409_P_SER_PLANILLA,P409_P_NRO_PLANILLA,P409_P_LOGISTICA'',',
'            				     p_values => (''''||:P412_SER_COMPROBANTE_AUX||'',',
'                                              ''||:P412_NRO_COMPROBANTE_AUX_3||'',',
'                                              ''||''SI''||'''')) f_url_1',
'		INTO :P412_URL',
'		FROM DUAL;',
'    ELSE',
'        BEGIN',
'            SELECT TIP_COMPROBANTE_REF, ',
'                   SER_COMPROBANTE_REF, ',
'                   NRO_COMPROBANTE_REF',
'              INTO VTIP_PED, ',
'                   VSER_PED, ',
'                   VNRO_PED',
'              FROM VT_COMPROBANTES_CABECERA A',
'             WHERE A.COD_EMPRESA = :P_COD_EMPRESA',
'               AND TIP_COMPROBANTE = :P412_TIP_COMPROBANTE_AUX',
'               AND SER_COMPROBANTE = :P412_SER_COMPROBANTE_AUX',
'               AND NRO_COMPROBANTE = :P412_NRO_COMPROBANTE_AUX_3;',
'        EXCEPTION',
'            WHEN NO_DATA_FOUND THEN',
'            VTIP_PED := NULL;',
'            VSER_PED := NULL;',
'            VNRO_PED := NULL;',
'            WHEN OTHERS THEN',
'            APEX_DEBUG.ERROR(''ERROR DEL ELSE DA_PED ''||SQLERRM);',
'        END;',
'--APEX_DEBUG.ERROR(''VNRO_PED ''||VNRO_PED);',
'        SELECT APEX_PAGE.GET_URL(p_page   => 234,',
'            				     p_items  => ''P234_TIP_COMPROBANTE,P234_SER_COMPROBANTE,P234_NRO_COMPROBANTE'',',
'            				     p_values => (''''||VTIP_PED||'',',
'                                              ''||VSER_PED||'',',
'                                              ''||TO_NUMBER(VNRO_PED)||'''')) f_url_1',
'		INTO :P412_URL',
'		FROM DUAL; ',
'',
'    END IF;',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'    APEX_DEBUG.ERROR(''DA_PED ''||SQLERRM);',
'END;'))
,p_attribute_02=>'P412_SER_COMPROBANTE_AUX,P412_NRO_COMPROBANTE_AUX_3,P_COD_EMPRESA,P412_TIP_COMPROBANTE_AUX'
,p_attribute_03=>'P412_URL'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(123211841897722826)
,p_event_id=>wwv_flow_imp.id(123211045615722818)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var url = apex.item("P412_URL").getValue();',
'',
'apex.navigation.openInNewWindow(url, "_blank");'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(123211376590722821)
,p_name=>'DA_URL'
,p_event_sequence=>60
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P412_URL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(123211463558722822)
,p_event_id=>wwv_flow_imp.id(123211376590722821)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_02=>'P412_URL'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(123212238647722830)
,p_name=>'DA_BTCONFIRMACION_ENVIO'
,p_event_sequence=>70
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(123212177827722829)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(123212309211722831)
,p_event_id=>wwv_flow_imp.id(123212238647722830)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    IF :P412_TIP_COMPROBANTE_AUX IS NULL OR :P412_SER_COMPROBANTE_AUX IS NULL OR :P412_NRO_COMPROBANTE_AUX IS NULL THEN',
'        :P412_CONTROL_CONFIRMAR_ENVIO := 1;',
'    ELSE',
'        :P412_CONTROL_CONFIRMAR_ENVIO := 0;       ',
'    END IF;',
'    ',
'EXCEPTION',
'    WHEN OTHERS THEN',
'    APEX_DEBUG.ERROR(''DA_BTCONFIRMACION_ENVIO ''||SQLERRM);',
'END;'))
,p_attribute_02=>'P412_TIP_COMPROBANTE_AUX ,P412_SER_COMPROBANTE_AUX ,P412_NRO_COMPROBANTE_AUX,P_COD_EMPRESA'
,p_attribute_03=>'P412_CONTROL_CONFIRMAR_ENVIO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(123213073732722838)
,p_event_id=>wwv_flow_imp.id(123212238647722830)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>unistr('Est\00E1 por confirmar el env\00EDo del comprobante &P412_TIP_COMPROBANTE_AUX. - &P412_SER_COMPROBANTE_AUX. - &P412_NRO_COMPROBANTE_AUX. , \00BFDesea continuar?')
,p_attribute_02=>'Aviso'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P412_CONTROL_CONFIRMAR_ENVIO'
,p_client_condition_expression=>'0'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(123212566634722833)
,p_event_id=>wwv_flow_imp.id(123212238647722830)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>unistr('Por favor antes de confirmar el env\00EDo seleccionar un comprobante desde la lupa.')
,p_attribute_02=>'Aviso'
,p_attribute_03=>'warning'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P412_CONTROL_CONFIRMAR_ENVIO'
,p_client_condition_expression=>'1'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(123213177037722839)
,p_event_id=>wwv_flow_imp.id(123212238647722830)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    sp_confirma_envio_factura(:P412_TIP_COMPROBANTE_AUX,',
'	                          :P412_SER_COMPROBANTE_AUX,',
'                              :P412_NRO_COMPROBANTE_AUX,                                                	',
'                              :P_COD_EMPRESA,',
'                              :P412_MENSAJE_CONFIRMA_ENVIO);',
'',
'    IF :P412_MENSAJE_CONFIRMA_ENVIO IS NULL THEN',
unistr('        :P412_MENSAJE_CONFIRMA_ENVIO := ''Env\00EDo confirmado con \00E9xito.'';'),
'    END IF;',
'EXCEPTION',
'    WHEN OTHERS THEN',
'    APEX_DEBUG.ERROR(''DA_BTCONFIRMAR_ENVIO 2 ''||SQLERRM);',
'END;'))
,p_attribute_02=>'P412_TIP_COMPROBANTE_AUX ,P412_SER_COMPROBANTE_AUX ,P412_NRO_COMPROBANTE_AUX,P_COD_EMPRESA'
,p_attribute_03=>'P412_MENSAJE_CONFIRMA_ENVIO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P412_CONTROL_CONFIRMAR_ENVIO'
,p_client_condition_expression=>'0'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(123213391869722841)
,p_event_id=>wwv_flow_imp.id(123212238647722830)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(121751346924419435)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(123212700535722835)
,p_name=>'DA_MENSAJE_CONFIRMA_ENVIO'
,p_event_sequence=>80
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P412_MENSAJE_CONFIRMA_ENVIO'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(123212843723722836)
,p_event_id=>wwv_flow_imp.id(123212700535722835)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_02=>'P412_MENSAJE_CONFIRMA_ENVIO'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(123212993152722837)
,p_event_id=>wwv_flow_imp.id(123212700535722835)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'&P412_MENSAJE_CONFIRMA_ENVIO.'
,p_attribute_02=>'Aviso'
,p_attribute_03=>'warning'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P412_MENSAJE_CONFIRMA_ENVIO'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(123213447334722842)
,p_name=>'DA_SUCURSALES'
,p_event_sequence=>90
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(123212001987722828)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(123213586623722843)
,p_event_id=>wwv_flow_imp.id(123213447334722842)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'vpersona varchar2(100);',
'VCOD_CLIENTE VARCHAR2(1000);',
'VSITUACION VARCHAR2(1000);',
'BEGIN',
'    IF :P412_EMPRESA_ORIGEN IS NULL OR :P412_ESTADO_DISTRIBUCION IS NULL THEN',
'        :P412_CONTROL_SUCURSALES := 1;',
'    ELSE',
'        :P412_CONTROL_SUCURSALES := 0;',
'        BEGIN',
'            SELECT COD_CLIENTE,',
'                   SITUACION',
'              INTO VCOD_CLIENTE,',
'                   VSITUACION',
'              FROM V_FACTURA_RUTEO',
'             WHERE TIP_COMPROBANTE = :P412_TIP_COMPROBANTE_AUX',
'               AND SER_COMPROBANTE = :P412_SER_COMPROBANTE_AUX',
'               AND NRO_COMPROBANTE = :P412_NRO_COMPROBANTE_AUX;',
'        EXCEPTION',
'            WHEN NO_DATA_FOUND THEN',
'            VCOD_CLIENTE := NULL;',
'            VSITUACION := NULL;',
'        END;',
'',
'        BEGIN',
'            select cod_persona',
'              into vpersona',
'              from cc_clientes a',
'             where cod_empresa = :P_COD_EMPRESA',
'               and cod_cliente = VCOD_CLIENTE',
'               and :P412_EMPRESA_ORIGEN = ''NGO''',
'               AND :P412_ESTADO_DISTRIBUCION= ''SIN_GEOLOCALIZAR'';',
'        EXCEPTION',
'            WHEN NO_DATA_FOUND THEN',
'            vpersona := NULL;',
'        END;',
'',
'        IF vpersona IS NOT NULL THEN',
'            SELECT APEX_PAGE.GET_URL(p_page   => 171,',
'                				     p_items  => ''P171_COD_PERSONA'',',
'                				     p_values => (''''||vpersona||'''')) f_url_1',
'    		INTO :P412_URL',
'    		FROM DUAL;',
'        END IF;',
'    END IF;',
'EXCEPTION',
'    WHEN OTHERS THEN',
'    APEX_DEBUG.ERROR(''DA_SUCURSALES ''||SQLERRM);',
'END;'))
,p_attribute_02=>'P412_TIP_COMPROBANTE_AUX,P412_SER_COMPROBANTE_AUX,P412_NRO_COMPROBANTE_AUX,P_COD_EMPRESA,P412_EMPRESA_ORIGEN,P412_ESTADO_DISTRIBUCION'
,p_attribute_03=>'P412_URL,P412_CONTROL_SUCURSALES'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(123213871029722846)
,p_event_id=>wwv_flow_imp.id(123213447334722842)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>unistr('Para consultar sobre sucursales previamente seleccionar estado de distribuci\00F3n, empresa origen y luego seleccionar un registro desde la la lupa.')
,p_attribute_02=>'Aviso'
,p_attribute_03=>'warning'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P412_CONTROL_SUCURSALES'
,p_client_condition_expression=>'1'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(123213658019722844)
,p_event_id=>wwv_flow_imp.id(123213447334722842)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var url = apex.item("P412_URL").getValue();',
'',
'apex.navigation.openInNewWindow(url, "_blank");'))
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P412_CONTROL_SUCURSALES'
,p_client_condition_expression=>'0'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(122715224311550145)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'PR_CLEAR'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(121751638420419438)
,p_process_sequence=>20
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_INIT'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P412_COD_MODULO := ''RP'';',
':P412_CONTROL := 0;'))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_imp.component_end;
end;
/
