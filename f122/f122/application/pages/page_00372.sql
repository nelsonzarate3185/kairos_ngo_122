prompt --application/pages/page_00372
begin
--   Manifest
--     PAGE: 00372
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
 p_id=>372
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'STREQREP'
,p_alias=>'STREQREP'
,p_step_title=>'STREQREP'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function soloNumeros(e){',
'  var key = e.charCode;',
'    return key >= 48 && key <= 57;',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_last_updated_by=>'JUANASIS'
,p_last_upd_yyyymmddhh24miss=>'20230215101224'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(109030754099414048)
,p_plug_name=>'Requerimientos para Pedidos de Repuestos'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>990
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(109030865402414049)
,p_plug_name=>'AGREGAR/EDITAR'
,p_region_template_options=>'#DEFAULT#:js-dialog-autoheight:js-dialog-size600x400'
,p_plug_template=>wwv_flow_imp.id(40117728043263659)
,p_plug_display_sequence=>1040
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(110501646469280514)
,p_plug_name=>'VARIABLES'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>1070
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(110504830153280546)
,p_plug_name=>'REPORTE_COMENTARIOS'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>1030
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_new_grid_row=>false
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ',
'    seq_id  P_ID,',
'    C001 NOMBRE',
'       ',
'FROM APEX_COLLECTIONS',
'WHERE COLLECTION_NAME = ''COL_COMENTARIOS''',
'AND NVL(C030,''P'') <> ''B''',
'and c002 = :P372_SEQ_ID_COMENTARIOS;'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P372_SEQ_ID_COMENTARIOS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'REPORTE_COMENTARIOS'
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
 p_id=>wwv_flow_imp.id(110504981724280547)
,p_max_row_count=>'1000000'
,p_no_data_found_message=>'NO SE ENCONTRARON REGISTROS'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_search_bar=>'N'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_enable_mail_download=>'Y'
,p_owner=>'JUANASIS'
,p_internal_uid=>110504981724280547
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(110722537771282223)
,p_db_column_name=>'P_ID'
,p_display_order=>180
,p_column_identifier=>'R'
,p_column_label=>'P Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(110724679945282244)
,p_db_column_name=>'NOMBRE'
,p_display_order=>190
,p_column_identifier=>'S'
,p_column_label=>'Nombre'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(110750716970306223)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1107508'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'NOMBRE:'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(110722600559282224)
,p_plug_name=>'REPORTE_ST_REQUERIMIENTO_REPUESTOS_DET'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>1010
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_grid_column_span=>9
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ',
'    seq_id  P_ID,',
'       C001 COD_EMPRESA,',
'        C002 NRO_PEDIDO,',
'        C003 COD_ARTICULO,',
'        C004 CODIGO_ORIGEN_ARTICULO,',
'        C005 COD_PROVEEDOR,',
'        C006 CANTIDAD,',
'        C007 URGENTE,',
'        C008 ESTADO,',
'        C009 PENDIENTE_USER,',
'        C010 FECHA_PENDIENTE,',
'        C011 RECHAZADO_USER,',
'        C012 FECHA_RECHAZADO,',
'        C013 FINALIZADO_USER,',
'        C014 FECHA_FINALIZADO,',
'        C021 ROW_ID,',
'        NULL EDITAR,',
'        NULL ELIMINAR,',
'        NULL ADD_COM',
'FROM APEX_COLLECTIONS',
'WHERE COLLECTION_NAME = ''COL_STREQREP''',
'AND NVL(C030,''P'') <> ''B'''))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'REPORTE_ST_REQUERIMIENTO_REPUESTOS_DET'
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
 p_id=>wwv_flow_imp.id(110722710761282225)
,p_max_row_count=>'1000000'
,p_no_data_found_message=>'NO SE ENCONTRARON REGISTROS'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'JUANASIS'
,p_internal_uid=>110722710761282225
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(110722852718282226)
,p_db_column_name=>'COD_EMPRESA'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Cod Empresa'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(110722961858282227)
,p_db_column_name=>'NRO_PEDIDO'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Id'
,p_column_link=>'javascript:$s(''P372_SEQ_ID_COMENTARIOS'',''#P_ID#'');'
,p_column_linktext=>'#NRO_PEDIDO#'
,p_column_type=>'STRING'
,p_heading_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(110723084472282228)
,p_db_column_name=>'COD_ARTICULO'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>unistr('Cod. NGO - Descripci\00F3n NGO')
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_rpt_named_lov=>wwv_flow_imp.id(111099221869661752)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(110723109687282229)
,p_db_column_name=>'CODIGO_ORIGEN_ARTICULO'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Codigo Origen Articulo'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_rpt_named_lov=>wwv_flow_imp.id(111099221869661752)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(110723239035282230)
,p_db_column_name=>'COD_PROVEEDOR'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Proveedor'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_rpt_named_lov=>wwv_flow_imp.id(111004162384342890)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(110723364893282231)
,p_db_column_name=>'CANTIDAD'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Cantidad'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(110723483233282232)
,p_db_column_name=>'URGENTE'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Prioridad'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_rpt_named_lov=>wwv_flow_imp.id(111001082418321971)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(110723574759282233)
,p_db_column_name=>'ESTADO'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Estado'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_rpt_named_lov=>wwv_flow_imp.id(110996778912301999)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(110723637884282234)
,p_db_column_name=>'PENDIENTE_USER'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Pendiente User'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(110723785256282235)
,p_db_column_name=>'FECHA_PENDIENTE'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Fecha Pendiente'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(110723859917282236)
,p_db_column_name=>'RECHAZADO_USER'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Rechazado User'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(110723998134282237)
,p_db_column_name=>'FECHA_RECHAZADO'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Fecha Rechazado'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(110724033501282238)
,p_db_column_name=>'FINALIZADO_USER'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Finalizado User'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(110724100412282239)
,p_db_column_name=>'FECHA_FINALIZADO'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>'Fecha Finalizado'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(110724279413282240)
,p_db_column_name=>'ROW_ID'
,p_display_order=>150
,p_column_identifier=>'O'
,p_column_label=>'Row Id'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(110724370643282241)
,p_db_column_name=>'EDITAR'
,p_display_order=>160
,p_column_identifier=>'P'
,p_column_label=>'Editar'
,p_column_link=>'javascript:$s(''P372_SEQ_ID_EDITAR'',''#P_ID#'');'
,p_column_linktext=>'<span aria-hidden="true" class="fa fa-edit"></span>'
,p_column_type=>'STRING'
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
'    END IF;                                                     ',
'END;'))
,p_display_condition2=>'PLSQL'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(110724424927282242)
,p_db_column_name=>'ELIMINAR'
,p_display_order=>170
,p_column_identifier=>'Q'
,p_column_label=>'Eliminar'
,p_column_link=>'javascript:$s(''P372_SEQ_ID_ELIMINAR'',''#P_ID#'');'
,p_column_linktext=>'<span class="fa fa-trash" aria-hidden="true"></span>'
,p_column_type=>'STRING'
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
'    END IF;                                                     ',
'END;'))
,p_display_condition2=>'PLSQL'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(110724578275282243)
,p_db_column_name=>'P_ID'
,p_display_order=>180
,p_column_identifier=>'R'
,p_column_label=>'P Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(111438589559896311)
,p_db_column_name=>'ADD_COM'
,p_display_order=>190
,p_column_identifier=>'S'
,p_column_label=>'Add Com'
,p_column_link=>'javascript:$s(''P372_SEQ_ID_ADD_COMENT'',''#NRO_PEDIDO#'');'
,p_column_linktext=>'<span class="fa fa-file-text-o" aria-hidden="true"></span>'
,p_column_type=>'STRING'
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
'                                                         pdm_boto     => 1); ',
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
 p_id=>wwv_flow_imp.id(111026795101410338)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1110268'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>10
,p_report_columns=>'EDITAR:NRO_PEDIDO:COD_ARTICULO:CODIGO_ORIGEN_ARTICULO:COD_PROVEEDOR:CANTIDAD:URGENTE:ESTADO:ADD_COM:ELIMINAR:'
,p_sort_column_1=>'P_ID'
,p_sort_direction_1=>'DESC'
,p_sort_column_2=>'0'
,p_sort_direction_2=>'ASC'
,p_sort_column_3=>'0'
,p_sort_direction_3=>'ASC'
,p_sort_column_4=>'0'
,p_sort_direction_4=>'ASC'
,p_sort_column_5=>'0'
,p_sort_direction_5=>'ASC'
,p_sort_column_6=>'0'
,p_sort_direction_6=>'ASC'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(111110520640782125)
,p_plug_name=>'USUARIOS'
,p_region_template_options=>'#DEFAULT#:t-Region--accent1:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>1060
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_grid_column_span=>6
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(111111526227782135)
,p_plug_name=>'REPORTE_USUARIOS'
,p_parent_plug_id=>wwv_flow_imp.id(111110520640782125)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ',
'    seq_id  P_ID,',
'    C002 NRO_PEDIDO,',
'    C009 PENDIENTE_USER,',
'    C010 FECHA_PENDIENTE,',
'    C011 RECHAZADO_USER,',
'    C012 FECHA_RECHAZADO,',
'    C013 FINALIZADO_USER,',
'    C014 FECHA_FINALIZADO',
'FROM APEX_COLLECTIONS',
'WHERE COLLECTION_NAME = ''COL_STREQREP''',
'AND NVL(C030,''P'') <> ''B'''))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'REPORTE_USUARIOS'
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
 p_id=>wwv_flow_imp.id(111111642169782136)
,p_max_row_count=>'1000000'
,p_no_data_found_message=>'NO SE ENCONTRARON REGISTROS'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_search_bar=>'N'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_enable_mail_download=>'Y'
,p_owner=>'JUANASIS'
,p_internal_uid=>111111642169782136
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(111111811868782138)
,p_db_column_name=>'NRO_PEDIDO'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Id'
,p_column_link=>'javascript:$s(''P372_SEQ_ID_COMENTARIOS'',''#NRO_PEDIDO#'');'
,p_column_linktext=>'#NRO_PEDIDO#'
,p_column_type=>'STRING'
,p_heading_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(111112570463782145)
,p_db_column_name=>'PENDIENTE_USER'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Pendiente'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(111112690969782146)
,p_db_column_name=>'FECHA_PENDIENTE'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Fecha Pendiente'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(111112765367782147)
,p_db_column_name=>'RECHAZADO_USER'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Anulado'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(111112886551782148)
,p_db_column_name=>'FECHA_RECHAZADO'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Fecha Rechazado'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(111112933177782149)
,p_db_column_name=>'FINALIZADO_USER'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Cerrado'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(111113053377782150)
,p_db_column_name=>'FECHA_FINALIZADO'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>'Fecha Finalizado'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(111437877181896304)
,p_db_column_name=>'P_ID'
,p_display_order=>180
,p_column_identifier=>'R'
,p_column_label=>'P Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(111453463684898059)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1114535'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>5
,p_report_columns=>'NRO_PEDIDO:PENDIENTE_USER:FECHA_PENDIENTE:RECHAZADO_USER:FECHA_RECHAZADO:FINALIZADO_USER:FECHA_FINALIZADO'
,p_sort_column_1=>'P_ID'
,p_sort_direction_1=>'DESC'
,p_sort_column_2=>'0'
,p_sort_direction_2=>'ASC'
,p_sort_column_3=>'0'
,p_sort_direction_3=>'ASC'
,p_sort_column_4=>'0'
,p_sort_direction_4=>'ASC'
,p_sort_column_5=>'0'
,p_sort_direction_5=>'ASC'
,p_sort_column_6=>'0'
,p_sort_direction_6=>'ASC'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(111440626401896332)
,p_plug_name=>'ASIGNAR COMENTARIO'
,p_region_template_options=>'#DEFAULT#:js-dialog-autoheight:js-dialog-size480x320'
,p_plug_template=>wwv_flow_imp.id(40117728043263659)
,p_plug_display_sequence=>1050
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(111441079042896336)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(111440626401896332)
,p_button_name=>'BT_CANCELAR_COM'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_image_alt=>' Cancelar'
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(111108425115782104)
,p_button_sequence=>170
,p_button_plug_id=>wwv_flow_imp.id(109030865402414049)
,p_button_name=>'BT_CANCELAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_image_alt=>'Cancelar'
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(110722092590282218)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(109030754099414048)
,p_button_name=>'bt_LIMPIAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_image_alt=>'LIMPIAR'
,p_button_position=>'CREATE'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-database-search'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(110504779297280545)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(109030754099414048)
,p_button_name=>'bt_buscar'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Buscar'
,p_button_position=>'CREATE'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-database-search'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(111440869982896334)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(111440626401896332)
,p_button_name=>'BT_ACEPTAR_COMENTARIO'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Aceptar'
,p_button_position=>'CREATE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(111108246888782102)
,p_button_sequence=>150
,p_button_plug_id=>wwv_flow_imp.id(109030865402414049)
,p_button_name=>'BT_ACEPTAR_CREAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Aceptar'
,p_button_position=>'CREATE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(111108317134782103)
,p_button_sequence=>160
,p_button_plug_id=>wwv_flow_imp.id(109030865402414049)
,p_button_name=>'BT_ACEPTAR_EDITAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Aceptar'
,p_button_position=>'CREATE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(110722397993282221)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(110722600559282224)
,p_button_name=>'BT_AGREGAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'AGREGAR'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
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
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(109030912770414050)
,p_name=>'P372_COD_EMPRESA'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(109030865402414049)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(110500382527280501)
,p_name=>'P372_DESC_PROVEEDOR'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(109030865402414049)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(110500440767280502)
,p_name=>'P372_COD_ARTICULO'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(109030865402414049)
,p_prompt=>'Codigo NGO'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_ARTICULOS_STREQREP'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select a.cod_articulo||'' - ''||a.descripcion D, a.cod_articulo R,  a.cod_origen_art from st_articulos a ',
'where a.cod_empresa = ''1'' and ( a.estado is null or a.estado <> ''I'' ) ',
'and cod_rubro=''RE''  order by a.descripcion'))
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
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(110500594265280503)
,p_name=>'P372_DESCRIPCION_NGO'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(109030865402414049)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(110500671456280504)
,p_name=>'P372_CODIGO_ORIGEN_ARTICULO'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(109030865402414049)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(110500786185280505)
,p_name=>'P372_COD_PROVEEDOR'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(109030865402414049)
,p_prompt=>'Proveedor'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_PROVEEDORES_DET_STREQREP'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select v.cod_proveedor||'' - ''||ltrim(p.nombre) D, v.cod_proveedor R, v.cod_rubro ',
'from personas p, cm_proveedores v ',
'where v.cod_empresa = :P_COD_EMPRESA',
'and v.cod_persona = p.cod_persona ',
'and nvl(estado,''A'') = ''A'' ',
'order by 1'))
,p_lov_display_null=>'YES'
,p_cSize=>30
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
 p_id=>wwv_flow_imp.id(110500853248280506)
,p_name=>'P372_URGENTE'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(109030865402414049)
,p_prompt=>'Prioridad'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'LV_URGENTE_STATIC_STREQPED'
,p_lov=>'.'||wwv_flow_imp.id(111001082418321971)||'.'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(110500966790280507)
,p_name=>'P372_CANTIDAD'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(109030865402414049)
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
 p_id=>wwv_flow_imp.id(110501033755280508)
,p_name=>'P372_ESTADO'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(109030865402414049)
,p_prompt=>'Estado'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'LV_ESTADO_DETALLE_STREQREP'
,p_lov=>'.'||wwv_flow_imp.id(110996778912301999)||'.'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(110501152225280509)
,p_name=>'P372_PENDIENTE_USER'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(109030865402414049)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(110501252764280510)
,p_name=>'P372_FECHA_PENDIENTE'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(109030865402414049)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(110501359104280511)
,p_name=>'P372_RECHAZADO_USER'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(109030865402414049)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
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
 p_id=>wwv_flow_imp.id(110501498190280512)
,p_name=>'P372_FINALIZADO_USER'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(109030865402414049)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(110501569038280513)
,p_name=>'P372_NRO_PEDIDO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(109030865402414049)
,p_prompt=>'Id'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_colspan=>2
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(110501796007280515)
,p_name=>'P372_DERECHOS'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(110501646469280514)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(110501877505280516)
,p_name=>'P372_COD_MODULO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(110501646469280514)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(110501986754280517)
,p_name=>'P372_COD_MONEDA_DOL'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(110501646469280514)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(110502070215280518)
,p_name=>'P372_NOM_MODULO'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(110501646469280514)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(110502191833280519)
,p_name=>'P372_COD_FORMA'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(110501646469280514)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(110502266075280520)
,p_name=>'P372_NOM_FORMA'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(110501646469280514)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(110502397000280521)
,p_name=>'P372_NOM_EMPRESA'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(110501646469280514)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(110502484399280522)
,p_name=>'P372_COD_SUCURSAL'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(110501646469280514)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(110502606887280524)
,p_name=>'P372_NOM_SUCURSAL'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(110501646469280514)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(110502772842280525)
,p_name=>'P372_COD_USUARIO'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(110501646469280514)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(110502886486280526)
,p_name=>'P372_COD_IDIOMA'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(110501646469280514)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(110502940639280527)
,p_name=>'P372_CODSISMENU'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(110501646469280514)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(110503064882280528)
,p_name=>'P372_CODPROVEEDOR_DFLT'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(110501646469280514)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(110503181327280529)
,p_name=>'P372_VAR_DESC_PROVEEDOR'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(110501646469280514)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(110503221475280530)
,p_name=>'P372_IND_PROCESADO'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(110501646469280514)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(110503378114280531)
,p_name=>'P372_VAR_ESTADO'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(110501646469280514)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(110503521044280533)
,p_name=>'P372_VAR_FECHA_INI'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_imp.id(110501646469280514)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(110503604779280534)
,p_name=>'P372_VAR_FECHA_FIN'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_imp.id(110501646469280514)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(110503783280280535)
,p_name=>'P372_VAR_MARCA'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_imp.id(110501646469280514)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(110503893156280536)
,p_name=>'P372_DERIVAR_COMENTARIO'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_imp.id(110501646469280514)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(110503910271280537)
,p_name=>'P372_BUSCAR_ESTADO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(109030754099414048)
,p_prompt=>'Estado'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:PENDIENTE;P,CERRADO;C,ANULADO;A'
,p_lov_display_null=>'YES'
,p_lov_null_text=>'TODOS'
,p_lov_null_value=>'T'
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(110504099826280538)
,p_name=>'P372_BUSCAR_FECHA_INI'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(109030754099414048)
,p_prompt=>'Fecha Inicial'
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
 p_id=>wwv_flow_imp.id(110504232232280540)
,p_name=>'P372_BUSCAR_FECHA_FIN'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(109030754099414048)
,p_prompt=>'Fecha Fin'
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
 p_id=>wwv_flow_imp.id(110504529334280543)
,p_name=>'P372_BUSCAR_PROVEEDOR'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(109030754099414048)
,p_prompt=>'Proveedor'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_PROVEEDORES_STREQREP'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select v.cod_proveedor||'' - ''|| ltrim(p.nombre) D, v.cod_proveedor R, v.cod_rubro ',
'from personas p, cm_proveedores v ',
'where v.cod_empresa = :P_COD_EMPRESA',
'and v.cod_persona = p.cod_persona ',
'and nvl(estado,''A'') = ''A'' order by 1'))
,p_lov_display_null=>'YES'
,p_lov_null_value=>'- seleccione -'
,p_cSize=>30
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
 p_id=>wwv_flow_imp.id(110504655418280544)
,p_name=>'P372_BUSCAR_COD_REP'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(109030754099414048)
,p_prompt=>'Codigo Rep'
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
 p_id=>wwv_flow_imp.id(110722490207282222)
,p_name=>'P372_BUSCAR_MARCA'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(109030754099414048)
,p_prompt=>'Marca'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_CARGA_LISTA_MARCA'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
'select cod_marca||'' - ''||descripcion D ,cod_marca R, 2 ord',
'from st_marcas',
'UNION ALL',
'SELECT ''TODOS'' descripcion, ''T'' cod, 1 rod',
'FROM DUAL	 ',
'ORDER BY 3 ASC;'))
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(110724841100282246)
,p_name=>'P372_SEQ_ID_COMENTARIOS'
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_imp.id(110501646469280514)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(111109511684782115)
,p_name=>'P372_AUX_MSJ_CONTROL'
,p_item_sequence=>220
,p_item_plug_id=>wwv_flow_imp.id(110501646469280514)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(111110220714782122)
,p_name=>'P372_AUX_NRO_PEDIDO'
,p_item_sequence=>230
,p_item_plug_id=>wwv_flow_imp.id(110501646469280514)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(111438034459896306)
,p_name=>'P372_SEQ_ID_EDITAR'
,p_item_sequence=>240
,p_item_plug_id=>wwv_flow_imp.id(110501646469280514)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(111438108055896307)
,p_name=>'P372_SEQ_ID_ELIMINAR'
,p_item_sequence=>250
,p_item_plug_id=>wwv_flow_imp.id(110501646469280514)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(111438426934896310)
,p_name=>'P372_SEQ_ID_ADD_COMENT'
,p_item_sequence=>260
,p_item_plug_id=>wwv_flow_imp.id(110501646469280514)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(111440754068896333)
,p_name=>'P372_COMENTARIO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(111440626401896332)
,p_prompt=>'Comentario'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>30
,p_cHeight=>5
,p_field_template=>wwv_flow_imp.id(40186937130263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(110721502673282213)
,p_name=>'EJECUTAR_REPORTE'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(110504779297280545)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(110721657634282214)
,p_event_id=>wwv_flow_imp.id(110721502673282213)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'STREQREP.pr_cargar_col(',
'    PI_COD_EMPRESA => :P372_COD_EMPRESA,',
'    PI_ESTADO => :P372_BUSCAR_ESTADO,',
'    PI_FECHA_INI => TO_DATE(:P372_BUSCAR_FECHA_INI,''DD/MM/YYYY''), ',
'    PI_FECHA_FIN => TO_DATE(:P372_BUSCAR_FECHA_FIN,''DD/MM/YYYY''),',
'    PI_MARCA => :P372_BUSCAR_MARCA,',
'    PI_PROVEEDOR => :P372_BUSCAR_PROVEEDOR,',
'    PI_COD_REP => :P372_BUSCAR_COD_REP);'))
,p_attribute_02=>'P372_COD_EMPRESA,P372_BUSCAR_ESTADO,P372_BUSCAR_FECHA_INI,P372_BUSCAR_FECHA_FIN,P372_BUSCAR_MARCA,P372_BUSCAR_PROVEEDOR,P372_BUSCAR_COD_REP'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(110721750694282215)
,p_event_id=>wwv_flow_imp.id(110721502673282213)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(110722600559282224)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(111442118452896347)
,p_event_id=>wwv_flow_imp.id(110721502673282213)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(111111526227782135)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(111442282789896348)
,p_event_id=>wwv_flow_imp.id(110721502673282213)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(110504830153280546)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(110722184386282219)
,p_name=>'DA_BORRAR_FILTROS'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(110722092590282218)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(110722223329282220)
,p_event_id=>wwv_flow_imp.id(110722184386282219)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P372_BUSCAR_ESTADO,P372_BUSCAR_FECHA_INI,P372_BUSCAR_FECHA_FIN,P372_BUSCAR_PROVEEDOR,P372_BUSCAR_COD_REP'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(110724905354282247)
,p_name=>'DA_MOSTAR_COMENTARIOS'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P372_SEQ_ID_COMENTARIOS'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(110725045279282248)
,p_event_id=>wwv_flow_imp.id(110724905354282247)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    select c002 ',
'    into :P372_AUX_NRO_PEDIDO',
'    from apex_collections',
'    where collection_name = ''COL_STREQREP''',
'    AND SEQ_ID = :P372_SEQ_ID_COMENTARIOS;',
'    STREQREP.pr_cargar_col_comentarios(PI_COD_EMPRESA => :P372_COD_EMPRESA,',
'                PI_NRO_PEDIDO => :P372_AUX_NRO_PEDIDO,',
'                PI_SEQ_ID => :P372_SEQ_ID_COMENTARIOS);',
'    ',
'END;'))
,p_attribute_02=>'P372_COD_EMPRESA,P372_SEQ_ID_COMENTARIOS'
,p_attribute_03=>'P372_AUX_NRO_PEDIDO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(110725127903282249)
,p_event_id=>wwv_flow_imp.id(110724905354282247)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(110504830153280546)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(111442056273896346)
,p_event_id=>wwv_flow_imp.id(110724905354282247)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(111111526227782135)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(110725253044282250)
,p_name=>'DA_ABRIR_CREAR'
,p_event_sequence=>40
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(110722397993282221)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(111442365383896349)
,p_event_id=>wwv_flow_imp.id(110725253044282250)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P372_COD_ARTICULO,P372_CANTIDAD,P372_URGENTE'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(111108833242782108)
,p_event_id=>wwv_flow_imp.id(110725253044282250)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'    :P372_ESTADO := ''P'';',
'    :P372_PENDIENTE_USER := :P372_COD_USUARIO;',
'    :P372_FECHA_PENDIENTE := SYSDATE;',
'',
'',
'    select nvl( max( nro_pedido ), 0 ) + 1',
'    into :P372_NRO_PEDIDO',
'    from ST_REQUERIMIENTO_REPUESTOS_DET',
'    where cod_empresa = :P372_COD_EMPRESA ;',
'       ',
' ',
'',
'     EXCEPTION',
'          when others then',
'            :P372_NRO_PEDIDO := 1;',
'end;'))
,p_attribute_02=>'P372_COD_USUARIO'
,p_attribute_03=>'P372_NRO_PEDIDO,P372_ESTADO,P372_FECHA_PENDIENTE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(111108534552782105)
,p_event_id=>wwv_flow_imp.id(110725253044282250)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(111108246888782102)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(111108600099782106)
,p_event_id=>wwv_flow_imp.id(110725253044282250)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(111108317134782103)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(111108758991782107)
,p_event_id=>wwv_flow_imp.id(110725253044282250)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(109030865402414049)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(111108954761782109)
,p_name=>'DA_ES_NUMERO'
,p_event_sequence=>50
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P372_CANTIDAD'
,p_bind_type=>'bind'
,p_bind_event_type=>'keyup'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(111109099787782110)
,p_event_id=>wwv_flow_imp.id(111108954761782109)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if (!soloNumeros(event)){',
'      event.preventDefault();',
'}'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(111109114795782111)
,p_name=>'DA_CANCELAR'
,p_event_sequence=>60
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(111108425115782104)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(111109203577782112)
,p_event_id=>wwv_flow_imp.id(111109114795782111)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(109030865402414049)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(111109369746782113)
,p_name=>'DA_GUARDAR'
,p_event_sequence=>70
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(111108246888782102)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(111109450545782114)
,p_event_id=>wwv_flow_imp.id(111109369746782113)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P372_AUX_MSJ_CONTROL := NULL;',
'IF(:P372_COD_ARTICULO IS NULL)THEN',
'    :P372_AUX_MSJ_CONTROL := ''INGRESE UN ARTICULO'';',
'    ELSE',
'    :P372_AUX_MSJ_CONTROL := NULL;',
'    :P372_AUX_NRO_PEDIDO := :P372_NRO_PEDIDO;',
'    STREQREP.pr_agregar_miembro(PI_COD_EMPRESA => :P372_COD_EMPRESA,',
'                                PI_NRO_PEDIDO => :P372_NRO_PEDIDO,',
'                                PI_COD_ARTICULO => :P372_COD_ARTICULO,',
'                                PI_CANTIDAD => :P372_CANTIDAD,',
'                                PI_COD_PROVEEDOR => :P372_COD_PROVEEDOR,',
'                                PI_URGENTE => :P372_URGENTE,',
'                                PI_ESTADO => :P372_ESTADO,',
'                                PI_PENDIENTE_USER => :P372_PENDIENTE_USER,',
'                                PI_FECHA_PENDIENTE => :P372_FECHA_PENDIENTE);',
'',
'END IF;',
''))
,p_attribute_02=>'P372_COD_PROVEEDOR,P372_COD_EMPRESA,P372_NRO_PEDIDO,P372_COD_ARTICULO,P372_CANTIDAD,P372_URGENTE,P372_ESTADO,P372_FECHA_PENDIENTE'
,p_attribute_03=>'P372_AUX_MSJ_CONTROL,P372_AUX_NRO_PEDIDO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(111109615958782116)
,p_event_id=>wwv_flow_imp.id(111109369746782113)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'&P372_AUX_MSJ_CONTROL.'
,p_attribute_02=>'ERROR'
,p_attribute_03=>'warning'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P372_AUX_MSJ_CONTROL'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(111109717969782117)
,p_event_id=>wwv_flow_imp.id(111109369746782113)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(110722600559282224)
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P372_AUX_MSJ_CONTROL'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(111437935338896305)
,p_event_id=>wwv_flow_imp.id(111109369746782113)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(111111526227782135)
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P372_AUX_MSJ_CONTROL'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(111109844608782118)
,p_event_id=>wwv_flow_imp.id(111109369746782113)
,p_event_result=>'TRUE'
,p_action_sequence=>90
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(109030865402414049)
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P372_AUX_MSJ_CONTROL'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(111109925281782119)
,p_event_id=>wwv_flow_imp.id(111109369746782113)
,p_event_result=>'TRUE'
,p_action_sequence=>110
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>unistr('Nuevo registro a\00F1adido')
,p_attribute_02=>unistr('\00C9XITO')
,p_attribute_03=>'success'
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P372_AUX_MSJ_CONTROL'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(111110007251782120)
,p_name=>'DA_CARGAR_PROVEEDOR'
,p_event_sequence=>80
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P372_COD_ARTICULO'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(111110139287782121)
,p_event_id=>wwv_flow_imp.id(111110007251782120)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF :P372_COD_ARTICULO IS NOT NULL THEN',
'        begin',
'      select  COD_PROVEEDOR_DFLT',
'        into  ',
'        :P372_COD_PROVEEDOR',
'        from ST_ARTICULOS',
'      where COD_EMPRESA=:P372_COD_EMPRESA',
'      AND COD_aRTICULO=:P372_COD_ARTICULO;',
'    exception ',
'      when no_data_found then',
'         ',
'         :P372_COD_PROVEEDOR:= null; ',
'        ',
'         raise_application_error(-20201,''No existe el ST_ARTICULOS''); ',
'     ',
'      when others then',
'         :P372_COD_PROVEEDOR:= null;',
'         raise_application_error(-20201,''Error en tabla ST_ARTICULOS''); ',
'    end;',
'    END IF;'))
,p_attribute_02=>'P372_COD_ARTICULO,P372_COD_EMPRESA'
,p_attribute_03=>'P372_COD_PROVEEDOR'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(111438620637896312)
,p_name=>'DA_ABRIR_EDITAR'
,p_event_sequence=>90
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P372_SEQ_ID_EDITAR'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(111438723275896313)
,p_event_id=>wwv_flow_imp.id(111438620637896312)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'    SELECT  ',
'        C002 NRO_PEDIDO,',
'        C003 COD_ARTICULO,',
'        C005 COD_PROVEEDOR,',
'        C006 CANTIDAD,',
'        C007 URGENTE,',
'        C008 ESTADO',
'    into ',
'        :P372_NRO_PEDIDO,',
'        :P372_COD_ARTICULO,',
'        :P372_COD_PROVEEDOR,',
'        :P372_CANTIDAD,',
'        :P372_URGENTE,',
'        :P372_ESTADO',
'         ',
'    FROM APEX_COLLECTIONS',
'    WHERE COLLECTION_NAME = ''COL_STREQREP''',
'    AND seq_id = :P372_SEQ_ID_EDITAR;',
'',
'end;'))
,p_attribute_02=>'P372_SEQ_ID_EDITAR'
,p_attribute_03=>'P372_NRO_PEDIDO,P372_COD_ARTICULO,P372_CANTIDAD,P372_URGENTE,P372_ESTADO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(111438810362896314)
,p_event_id=>wwv_flow_imp.id(111438620637896312)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(109030865402414049)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(111438931620896315)
,p_event_id=>wwv_flow_imp.id(111438620637896312)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(111108317134782103)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(111439011665896316)
,p_event_id=>wwv_flow_imp.id(111438620637896312)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(111108246888782102)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(111439118500896317)
,p_name=>'DA_EDITAR'
,p_event_sequence=>100
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(111108317134782103)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(111439324534896319)
,p_event_id=>wwv_flow_imp.id(111439118500896317)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P372_AUX_MSJ_CONTROL := NULL;',
'IF(:P372_COD_ARTICULO IS NULL)THEN',
'    :P372_AUX_MSJ_CONTROL := ''INGRESE UN ARTICULO'';',
'    ELSE',
'    :P372_AUX_MSJ_CONTROL := NULL;    ',
'    STREQREP.pr_editar_miembro(PI_SEQ_ID_EDITAR => :P372_SEQ_ID_EDITAR,',
'                                PI_COD_USUARIO => :P372_COD_USUARIO,',
'                                PI_COD_EMPRESA => :P372_COD_EMPRESA,',
'                                PI_NRO_PEDIDO => :P372_NRO_PEDIDO,',
'                                PI_COD_ARTICULO => :P372_COD_ARTICULO,',
'                                PI_COD_PROVEEDOR => :P372_COD_PROVEEDOR,',
'                                PI_CANTIDAD => :P372_CANTIDAD,',
'                                PI_URGENTE => :P372_URGENTE,',
'                                PI_ESTADO => :P372_ESTADO);',
'                      ',
'END IF;',
''))
,p_attribute_02=>'P372_SEQ_ID_EDITAR,P372_COD_USUARIO,P372_COD_EMPRESA,P372_NRO_PEDIDO,P372_COD_ARTICULO,P372_COD_PROVEEDOR,P372_CANTIDAD,P372_URGENTE,P372_ESTADO'
,p_attribute_03=>'P372_AUX_MSJ_CONTROL'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(111439408807896320)
,p_event_id=>wwv_flow_imp.id(111439118500896317)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'&P372_AUX_MSJ_CONTROL.'
,p_attribute_02=>'ERROR'
,p_attribute_03=>'warning'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P372_AUX_MSJ_CONTROL'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(111439546336896321)
,p_event_id=>wwv_flow_imp.id(111439118500896317)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(110722600559282224)
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P372_AUX_MSJ_CONTROL'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(111439640271896322)
,p_event_id=>wwv_flow_imp.id(111439118500896317)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(111111526227782135)
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P372_AUX_MSJ_CONTROL'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(111439794876896323)
,p_event_id=>wwv_flow_imp.id(111439118500896317)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(109030865402414049)
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P372_AUX_MSJ_CONTROL'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(111439888654896324)
,p_event_id=>wwv_flow_imp.id(111439118500896317)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'Registro editado'
,p_attribute_02=>unistr('\00C9XITO')
,p_attribute_03=>'success'
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P372_AUX_MSJ_CONTROL'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(111439980585896325)
,p_name=>'DA_ELIMINAR'
,p_event_sequence=>110
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P372_SEQ_ID_ELIMINAR'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(111440000662896326)
,p_event_id=>wwv_flow_imp.id(111439980585896325)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>'presione para continuar'
,p_attribute_02=>unistr('\00BFDesea eliminar?')
,p_attribute_03=>'danger'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(111440121211896327)
,p_event_id=>wwv_flow_imp.id(111439980585896325)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    STREQREP.pr_eliminar_miembro( PI_SEQ_ID_ELIMINAR => :P372_SEQ_ID_ELIMINAR);',
' EXCEPTION',
' WHEN OTHERS THEN',
' APEX_DEBUG.ERROR(SQLERRM);',
'',
'END;'))
,p_attribute_02=>'P372_SEQ_ID_ELIMINAR'
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
 p_id=>wwv_flow_imp.id(111440211399896328)
,p_event_id=>wwv_flow_imp.id(111439980585896325)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(110722600559282224)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(111440379252896329)
,p_event_id=>wwv_flow_imp.id(111439980585896325)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(111111526227782135)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(111440411666896330)
,p_name=>'DA_ADD_COMENTARIO'
,p_event_sequence=>120
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P372_SEQ_ID_ADD_COMENT'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(111440933968896335)
,p_event_id=>wwv_flow_imp.id(111440411666896330)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(111440626401896332)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(111441123813896337)
,p_name=>'DA_CANCELAR_COM'
,p_event_sequence=>130
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(111441079042896336)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(111441220139896338)
,p_event_id=>wwv_flow_imp.id(111441123813896337)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(111440626401896332)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(111441345277896339)
,p_name=>'DA_GUARDAR_COMENTARIO'
,p_event_sequence=>140
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(111440869982896334)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(111441439230896340)
,p_event_id=>wwv_flow_imp.id(111441345277896339)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P372_AUX_MSJ_CONTROL := NULL;',
'',
'IF(:P372_COMENTARIO IS NULL)THEN',
'    :P372_AUX_MSJ_CONTROL := ''INGRESE UN COMENTARIO'';',
'    ELSE',
'        BEGIN',
'            STREQREP.pr_add_comentario(PI_COD_EMPRESA => :P372_COD_EMPRESA,',
'                                    PI_fecha => SYSDATE,',
'                                    PI_hora => SYSDATE,',
'                                    PI_COD_USUARIO => :P372_COD_USUARIO,',
'                                    PI_COMENTARIO => :P372_COMENTARIO,',
'                                    PI_NRO_PEDIDO => :P372_SEQ_ID_ADD_COMENT  );',
'',
'        END;',
'END IF;'))
,p_attribute_02=>'P372_COD_USUARIO,P372_COMENTARIO,P372_SEQ_ID_ADD_COMENT,P372_COD_EMPRESA'
,p_attribute_03=>'P372_AUX_MSJ_CONTROL'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(111441566615896341)
,p_event_id=>wwv_flow_imp.id(111441345277896339)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'&P372_AUX_MSJ_CONTROL.'
,p_attribute_02=>'ERROR'
,p_attribute_03=>'warning'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P372_AUX_MSJ_CONTROL'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(111441769760896343)
,p_event_id=>wwv_flow_imp.id(111441345277896339)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(110504830153280546)
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P372_AUX_MSJ_CONTROL'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(111441965233896345)
,p_event_id=>wwv_flow_imp.id(111441345277896339)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(110504830153280546)
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P372_AUX_MSJ_CONTROL'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(111441602025896342)
,p_event_id=>wwv_flow_imp.id(111441345277896339)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(111440626401896332)
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P372_AUX_MSJ_CONTROL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(109030553901414046)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'PR_LIMPIAR'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(109030673496414047)
,p_process_sequence=>20
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_INIT'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P372_COD_USUARIO :=NVL(:P_COD_USUARIO,NULL);',
':P372_COD_EMPRESA :=NVL(:P_COD_EMPRESA,NULL);',
':P372_NOM_EMPRESA :=NVL(:P_NOM_EMPRESA,NULL);',
':P372_COD_SUCURSAL :=NVL(:P372_COD_SUCURSAL,NULL);',
':P372_NOM_SUCURSAL :=NVL(:P_NOM_SUCURSAL,NULL);',
':P372_COD_MODULO :=NVL(:P_COD_MODULO,NULL);',
':P372_COD_FORMA   := ''STREQREP'';',
'APEX_COLLECTION.CREATE_OR_TRUNCATE_COLLECTION(P_COLLECTION_NAME => ''COL_STREQREP'');',
'APEX_COLLECTION.CREATE_OR_TRUNCATE_COLLECTION(P_COLLECTION_NAME => ''COL_COMENTARIOS'');',
'',
'',
' ',
'',
''))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_imp.component_end;
end;
/
