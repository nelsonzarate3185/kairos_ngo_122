prompt --application/pages/page_00554
begin
--   Manifest
--     PAGE: 00554
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
 p_id=>554
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'Llamadas Salientes - Ventas'
,p_alias=>'LLAMADAS-SALIENTES-VENTAS'
,p_page_mode=>'MODAL'
,p_step_title=>'Llamadas Salientes - Ventas'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
'function formatotelefono(e) {',
'  var key = e.charCode;',
'  var char = String.fromCharCode(key);',
'',
unistr('  // Permite n\00FAmeros del 0 al 9'),
'  if (key >= 48 && key <= 57) {',
'    return true;',
'  }',
'  // // Permite el punto decimal (ASCII 46) o coma decimal (ASCII 44) solo si no se ha ingresado previamente ',
'else if ((key === 46 || key === 44|| key === 45) //&& e.target.value.indexOf(''-'') === -1 && e.target.value.indexOf('','') === -1',
') {',
'    return true;',
'',
'  }',
unistr('  // Bloquea cualquier otro car\00E1cter'),
'  e.preventDefault();',
'  return false;',
'}',
''))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_last_updated_by=>'INV'
,p_last_upd_yyyymmddhh24miss=>'20230704122202'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(304177642399161749)
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
 p_id=>wwv_flow_imp.id(304177751112161750)
,p_plug_name=>'B_GESTION'
,p_parent_plug_id=>wwv_flow_imp.id(304177642399161749)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(304178388609161756)
,p_plug_name=>'IZQ'
,p_parent_plug_id=>wwv_flow_imp.id(304177751112161750)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(304178508180161757)
,p_plug_name=>'DER'
,p_region_name=>'region_mid'
,p_parent_plug_id=>wwv_flow_imp.id(304177751112161750)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40097820288263654)
,p_plug_display_sequence=>30
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(304285003797945125)
,p_plug_name=>'MID'
,p_parent_plug_id=>wwv_flow_imp.id(304177751112161750)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(304285148892945127)
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
 p_id=>wwv_flow_imp.id(304286593871945141)
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
 p_id=>wwv_flow_imp.id(304286882167945144)
,p_plug_name=>'FILTROS'
,p_parent_plug_id=>wwv_flow_imp.id(304286593871945141)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(304287052945945146)
,p_plug_name=>'RESULTADOS BUSQUEDA'
,p_parent_plug_id=>wwv_flow_imp.id(304286593871945141)
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
'AND :P554_IND_REP_BUSQ_LLAM = ''1''',
'AND (nro_movimiento = :P554_NRO_MOV_BUSQ OR :P554_NRO_MOV_BUSQ IS NULL)',
'AND (fec_movimiento >=  TO_DATE(:P554_FEC_MOV_INI_BUSQ, ''DD/MM/YYYY'') OR :P554_FEC_MOV_INI_BUSQ IS NULL)',
'AND (fec_movimiento <=  TO_DATE(:P554_FEC_MOV_FIN_BUSQ, ''DD/MM/YYYY'') OR :P554_FEC_MOV_FIN_BUSQ IS NULL)',
'AND (cod_cliente = :P554_COD_CLIENTE_BUSQ OR :P554_COD_CLIENTE_BUSQ IS NULL)',
'AND (tip_comprobante = :P554_TIP_COMP_BUSQ OR :P554_TIP_COMP_BUSQ IS NULL)',
'AND (ser_comprobante = :P554_SER_COMP_BUSQ OR :P554_SER_COMP_BUSQ IS NULL)',
'AND (nro_comprobante = :P554_NRO_COMP_BUSQ OR :P554_NRO_COMP_BUSQ IS NULL)',
'',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P554_IND_REP_BUSQ_LLAM,P554_NRO_MOV_BUSQ,P554_FEC_MOV_INI_BUSQ,P554_FEC_MOV_FIN_BUSQ,P554_COD_CLIENTE_BUSQ,P554_TIP_COMP_BUSQ,P554_SER_COMP_BUSQ,P554_NRO_COMP_BUSQ'
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
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(304287193791945147)
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
,p_internal_uid=>304287193791945147
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(177735319299430071)
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
 p_id=>wwv_flow_imp.id(177735768855430071)
,p_db_column_name=>'COD_EMPRESA'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Cod Empresa'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(177736195695430071)
,p_db_column_name=>'TIP_MOVIMIENTO'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Tip Movimiento'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(177736576940430071)
,p_db_column_name=>'NRO_MOVIMIENTO'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Nro Movimiento'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(177736944949430070)
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
 p_id=>wwv_flow_imp.id(177737338221430070)
,p_db_column_name=>'COD_CLIENTE'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Cod Cliente'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(177737732238430070)
,p_db_column_name=>'TIP_COMPROBANTE'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Tip Comprobante'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(177738108493430070)
,p_db_column_name=>'SER_COMPROBANTE'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Ser Comprobante'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(177738537460430069)
,p_db_column_name=>'NRO_COMPROBANTE'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Nro Comprobante'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(177738975541430069)
,p_db_column_name=>'NRO_CUOTA'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Nro Cuota'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(177739345774430069)
,p_db_column_name=>'COD_MONEDA'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Cod Moneda'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(177739731487430069)
,p_db_column_name=>'SALDO_RECLAMADO'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Saldo Reclamado'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(177740179009430068)
,p_db_column_name=>'OBSERVACION'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Observacion'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(177740503736430068)
,p_db_column_name=>'COD_SECTOR_ANT'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>'Cod Sector Ant'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(177740954300430068)
,p_db_column_name=>'COD_SECTOR'
,p_display_order=>150
,p_column_identifier=>'O'
,p_column_label=>'Cod Sector'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(177741310378430068)
,p_db_column_name=>'COD_USUARIO'
,p_display_order=>160
,p_column_identifier=>'P'
,p_column_label=>'Cod Usuario'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(177741707646430068)
,p_db_column_name=>'NRO_ORDEN'
,p_display_order=>170
,p_column_identifier=>'Q'
,p_column_label=>'Nro Orden'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(177742150273430067)
,p_db_column_name=>'CALIFICACION'
,p_display_order=>180
,p_column_identifier=>'R'
,p_column_label=>'Calificacion'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(177742508490430067)
,p_db_column_name=>'COD_MOTIVO'
,p_display_order=>190
,p_column_identifier=>'S'
,p_column_label=>'Cod Motivo'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(177742961248430067)
,p_db_column_name=>'NRO_TELEFONO'
,p_display_order=>200
,p_column_identifier=>'T'
,p_column_label=>'Nro Telefono'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(177743374302430067)
,p_db_column_name=>'NOMBRE'
,p_display_order=>210
,p_column_identifier=>'U'
,p_column_label=>'Nombre'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(177743752412430066)
,p_db_column_name=>'NRO_LLAMADA'
,p_display_order=>220
,p_column_identifier=>'V'
,p_column_label=>'Nro Llamada'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(177744193005430066)
,p_db_column_name=>'EMPRESA'
,p_display_order=>230
,p_column_identifier=>'W'
,p_column_label=>'Empresa'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(177744516175430066)
,p_db_column_name=>'HORA_LLAMADA'
,p_display_order=>240
,p_column_identifier=>'X'
,p_column_label=>'Hora Llamada'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(177744947209430066)
,p_db_column_name=>'MOVIMIENTO'
,p_display_order=>250
,p_column_identifier=>'Y'
,p_column_label=>'Movimiento'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(177745338608430066)
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
 p_id=>wwv_flow_imp.id(177745702428430065)
,p_db_column_name=>'HORA_REAGENDADA'
,p_display_order=>270
,p_column_identifier=>'AA'
,p_column_label=>'Hora Reagendada'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(177746148005430065)
,p_db_column_name=>'HORA_FIN'
,p_display_order=>280
,p_column_identifier=>'AB'
,p_column_label=>'Hora Fin'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(177746571975430065)
,p_db_column_name=>'MOTIVO_SECUNDARIO'
,p_display_order=>290
,p_column_identifier=>'AC'
,p_column_label=>'Motivo Secundario'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(177746930488430065)
,p_db_column_name=>'MOTIVO_PRINCIPAL'
,p_display_order=>300
,p_column_identifier=>'AD'
,p_column_label=>'Motivo Principal'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(177747367281430064)
,p_db_column_name=>'ROW_ID_LLAMADA'
,p_display_order=>310
,p_column_identifier=>'AF'
,p_column_label=>'Row Id Llamada'
,p_column_type=>'OTHER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(304415199642413760)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1266937'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'SELECCIONAR:COD_EMPRESA:TIP_MOVIMIENTO:NRO_MOVIMIENTO:FEC_MOVIMIENTO:COD_CLIENTE:TIP_COMPROBANTE:SER_COMPROBANTE:NRO_COMPROBANTE:NRO_CUOTA:COD_MONEDA:SALDO_RECLAMADO:OBSERVACION:COD_SECTOR_ANT:COD_SECTOR:COD_USUARIO:NRO_ORDEN:CALIFICACION:COD_MOTIVO:'
||'NRO_TELEFONO:NOMBRE:NRO_LLAMADA:EMPRESA:HORA_LLAMADA:MOVIMIENTO:FECHA_REAGENDADA:HORA_REAGENDADA:HORA_FIN:MOTIVO_SECUNDARIO:MOTIVO_PRINCIPAL'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(304401239997414229)
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
 p_id=>wwv_flow_imp.id(306139353693554327)
,p_plug_name=>'TELEFONO'
,p_parent_plug_id=>wwv_flow_imp.id(304401239997414229)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(306460502173943617)
,p_plug_name=>'IDENTIFICACION'
,p_parent_plug_id=>wwv_flow_imp.id(304401239997414229)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(306832559245172234)
,p_plug_name=>'EMAIL'
,p_parent_plug_id=>wwv_flow_imp.id(304401239997414229)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>30
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(309327409912973528)
,p_plug_name=>'DIRECCION'
,p_parent_plug_id=>wwv_flow_imp.id(304401239997414229)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>40
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(304402610261414242)
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
 p_id=>wwv_flow_imp.id(307711646610116324)
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
 p_id=>wwv_flow_imp.id(309330068196973555)
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
' and (a.cod_cliente = :P554_COD_CLIENTE or :P554_COD_CLIENTE is null)',
' and a.cod_empresa = c.cod_empresa',
' and a.cod_cliente = c.cod_cliente',
' and p.cod_persona = c.cod_persona',
'AND C.COD_empresa=fv.cod_empresa(+)',
'and c.cod_vendedor=fv.cod_vendedor(+)',
'AND (A.COD_MOTIVO = :P554_COD_MOTIVO OR :P554_COD_MOTIVO IS NULL)',
' and m.cod_motivo(+) = a.cod_motivo',
'and (a.cod_usuario = :P554_COD_USUARIO or  :P554_COD_USUARIO is null)',
'and :P554_IND_REP_CALLASALDET = ''1''',
' order by a.fec_movimiento desc ,a.NRO_MOVIMIENTO',
'',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P554_COD_CLIENTE,P554_IND_REP_CALLASALDET,P554_COD_USUARIO,P554_COD_MOTIVO'
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
 p_id=>wwv_flow_imp.id(309330207307973556)
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
,p_internal_uid=>309330207307973556
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(177722198201430099)
,p_db_column_name=>'NRO_TELEFONO'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Nro Telefono'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(177722560199430098)
,p_db_column_name=>'NOMBRE'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Nombre'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(177722974616430098)
,p_db_column_name=>'COD_CLIENTE'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Cod Cliente'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(177723364327430097)
,p_db_column_name=>'NOMB_CLIENTE'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Nomb Cliente'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(177723776100430097)
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
 p_id=>wwv_flow_imp.id(177724184302430097)
,p_db_column_name=>'CALIFICACION'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Calificacion'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(177724513257430097)
,p_db_column_name=>'HORA_LLAMADA'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Hora Llamada'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(177724972117430096)
,p_db_column_name=>'EMPRESA'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Empresa'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(177725343112430096)
,p_db_column_name=>'NRO_LLAMADA'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Nro Llamada'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(177725792997430096)
,p_db_column_name=>'TIP_COMPROBANTE'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Tip Comprobante'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(177726134183430095)
,p_db_column_name=>'SER_COMPROBANTE'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Ser Comprobante'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(177726565319430095)
,p_db_column_name=>'NRO_COMPROBANTE'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Nro Comprobante'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(177726907947430095)
,p_db_column_name=>'COD_MOTIVO'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Cod Motivo'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(177727307358430095)
,p_db_column_name=>'OBSERVACION'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>'Observacion'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(177727728928430094)
,p_db_column_name=>'DESC_MOTIVO'
,p_display_order=>150
,p_column_identifier=>'O'
,p_column_label=>'Desc Motivo'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(177728178949430094)
,p_db_column_name=>'COD_USUARIO'
,p_display_order=>160
,p_column_identifier=>'P'
,p_column_label=>'Cod Usuario'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(177728504898430094)
,p_db_column_name=>'VENDEDOR'
,p_display_order=>170
,p_column_identifier=>'Q'
,p_column_label=>'Vendedor'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(309968202412231326)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1322467'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'NRO_TELEFONO:NOMBRE:COD_CLIENTE:NOMB_CLIENTE:FEC_LLAMDA:CALIFICACION:HORA_LLAMADA:EMPRESA:NRO_LLAMADA:TIP_COMPROBANTE:SER_COMPROBANTE:NRO_COMPROBANTE:COD_MOTIVO:OBSERVACION:DESC_MOTIVO:COD_USUARIO:VENDEDOR'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(177776903098430045)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(304178508180161757)
,p_button_name=>'BTN_LIST_EXC_CLIENTES'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--stretch:t-Button--gapTop'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Listados Extracto de Clientes'
,p_warn_on_unsaved_changes=>null
,p_button_cattributes=>'style="margin-left:25px;width:200px;"'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(177776572119430045)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(304178508180161757)
,p_button_name=>'BTN_LIST_LLAMADAS_CLIENTES'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--stretch:t-Button--gapTop'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Listados Llamadas Salientes'
,p_warn_on_unsaved_changes=>null
,p_button_cattributes=>'style="margin-left:25px;width:200px;"'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(177729247180430088)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(309330068196973555)
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
 p_id=>wwv_flow_imp.id(177730630788430078)
,p_button_sequence=>80
,p_button_plug_id=>wwv_flow_imp.id(304286882167945144)
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
 p_id=>wwv_flow_imp.id(177731068066430078)
,p_button_sequence=>90
,p_button_plug_id=>wwv_flow_imp.id(304286882167945144)
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
 p_id=>wwv_flow_imp.id(177729929309430079)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(304286593871945141)
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
 p_id=>wwv_flow_imp.id(177768876004430050)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(304177642399161749)
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
 p_id=>wwv_flow_imp.id(177769229583430049)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(304177642399161749)
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
 p_id=>wwv_flow_imp.id(175480234165656540)
,p_name=>'P554_COD_VENDEDOR'
,p_is_required=>true
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(304178388609161756)
,p_prompt=>'Vendedor'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT  P.NOMBRE||''(''||COD_VENDEDOR||'')'' NOMBRE,F.COD_VENDEDOR FROM FV_VENDEDORES F, PERSONAS P',
'WHERE F.COD_EMPRESA=''1''',
'AND F.COD_PERSONA=P.COD_PERSONA',
'AND NVL(F.ESTADO,''I'')NOT IN ''I'''))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(177731494233430078)
,p_name=>'P554_NRO_MOV_BUSQ'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(304286882167945144)
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
 p_id=>wwv_flow_imp.id(177731897930430076)
,p_name=>'P554_FEC_MOV_INI_BUSQ'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(304286882167945144)
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
 p_id=>wwv_flow_imp.id(177732221624430076)
,p_name=>'P554_FEC_MOV_FIN_BUSQ'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(304286882167945144)
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
 p_id=>wwv_flow_imp.id(177732642225430076)
,p_name=>'P554_COD_CLIENTE_BUSQ'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(304286882167945144)
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
 p_id=>wwv_flow_imp.id(177733080753430074)
,p_name=>'P554_TIP_COMP_BUSQ'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(304286882167945144)
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
 p_id=>wwv_flow_imp.id(177733486704430074)
,p_name=>'P554_SER_COMP_BUSQ'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(304286882167945144)
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
 p_id=>wwv_flow_imp.id(177733802353430074)
,p_name=>'P554_NRO_COMP_BUSQ'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(304286882167945144)
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
 p_id=>wwv_flow_imp.id(177734275993430074)
,p_name=>'P554_FEC_ULT_PAGO_BUSQ'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(304286882167945144)
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
 p_id=>wwv_flow_imp.id(177734674268430074)
,p_name=>'P554_TIP_MOVIMIENTO'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(304286882167945144)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(177748393279430063)
,p_name=>'P554_ROW_ID_BUS_LLAM'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(304401239997414229)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(177749062943430063)
,p_name=>'P554_SEQ_ID_TEL_EDITAR'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(306139353693554327)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(177749436306430063)
,p_name=>'P554_SEQ_ID_TEL_ELIMINAR'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(306139353693554327)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(177750102717430062)
,p_name=>'P554_SEQ_ID_IDENT_EDITAR'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(306460502173943617)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(177750569570430062)
,p_name=>'P554_SEQ_ID_IDENT_ELIMINAR'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(306460502173943617)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(177751295367430061)
,p_name=>'P554_SEQ_ID_DIRE_EDITAR'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(309327409912973528)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(177751674424430061)
,p_name=>'P554_SEQ_ID_DIRE_ELIMINAR'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(309327409912973528)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(177752308661430060)
,p_name=>'P554_SEQ_ID_EMAIL_EDITAR'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(306832559245172234)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(177752742629430060)
,p_name=>'P554_SEQ_ID_EMAIL_ELIMINAR'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(306832559245172234)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(177753406118430059)
,p_name=>'P554_IND_REP_BUSQ_LLAM'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(304402610261414242)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(177753843894430059)
,p_name=>'P554_IND_REP_PERSONA'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(304402610261414242)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(177754278046430059)
,p_name=>'P554_IND_REP_DIRECCION'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(304402610261414242)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(177754630566430059)
,p_name=>'P554_IND_REP_IDENTIFICACION'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(304402610261414242)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(177755005490430059)
,p_name=>'P554_IND_REP_TELEFONO'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(304402610261414242)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(177755443409430059)
,p_name=>'P554_IND_REP_EMAIL'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(304402610261414242)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(177755801265430058)
,p_name=>'P554_IND_REP_CALLASALDET'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(304402610261414242)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(177756598385430058)
,p_name=>'P554_COD_MODULO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(304285148892945127)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(177756916789430057)
,p_name=>'P554_DIAS_ATRASO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(304285148892945127)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(177757314002430057)
,p_name=>'P554_MENSAJE_ALERT'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(304285148892945127)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(177757779717430057)
,p_name=>'P554_COD_PERSONA'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(304285148892945127)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(177758181316430057)
,p_name=>'P554_CONSULTO'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(304285148892945127)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(177758538212430056)
,p_name=>'P554_HORA_LLAMADA'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(304285148892945127)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(177758948134430056)
,p_name=>'P554_URL'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(304285148892945127)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(177765318909430052)
,p_name=>'P554_P_NRO_LLAMADA'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(307711646610116324)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(177765768556430052)
,p_name=>'P554_P_COD_CLIENTE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(307711646610116324)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(177766133866430051)
,p_name=>'P554_P_NRO_TELEFONO'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(307711646610116324)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(177766597827430051)
,p_name=>'P554_P_NOMBRE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(307711646610116324)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(177766983715430051)
,p_name=>'P554_P_EMPRESA'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(307711646610116324)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(177767360204430051)
,p_name=>'P554_P_TIP_COMPROBANTE'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(307711646610116324)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(177767730669430050)
,p_name=>'P554_P_SER_COMPROBANTE'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(307711646610116324)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(177768148708430050)
,p_name=>'P554_P_NRO_COMPROBANTE'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(307711646610116324)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(177770270505430049)
,p_name=>'P554_NRO_MOVIMIENTO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(304178388609161756)
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
 p_id=>wwv_flow_imp.id(177770622008430048)
,p_name=>'P554_NRO_LLAMADA'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(304178388609161756)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(177771028926430048)
,p_name=>'P554_FEC_MOVIMIENTO'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(304178388609161756)
,p_item_default=>'SYSDATE'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
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
 p_id=>wwv_flow_imp.id(177771402552430048)
,p_name=>'P554_COD_CLIENTE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(304178388609161756)
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
 p_id=>wwv_flow_imp.id(177771880047430048)
,p_name=>'P554_NRO_TELEFONO'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(304178388609161756)
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
 p_id=>wwv_flow_imp.id(177772234910430048)
,p_name=>'P554_NOMBRE'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(304178388609161756)
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
 p_id=>wwv_flow_imp.id(177772690906430047)
,p_name=>'P554_EMPRESA'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(304178388609161756)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(177773089098430047)
,p_name=>'P554_TIP_COMPROBANTE'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(304178388609161756)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(177773448168430047)
,p_name=>'P554_SER_COMPROBANTE'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(304178388609161756)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(177773804900430047)
,p_name=>'P554_NRO_COMPROBANTE'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(304178388609161756)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(177774245720430047)
,p_name=>'P554_FEC_ULTIMO_PAGO'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(304178388609161756)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(177774624421430046)
,p_name=>'P554_COD_MOTIVO'
,p_is_required=>true
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(304178388609161756)
,p_prompt=>'Motivo'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select cod_motivo || '' - '' || descripcion D,',
'       cod_motivo R ',
'from ca_motivo_lla a',
'where estado=''S''',
'AND A.TIP_COMPROBANTE=''PED'''))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(177775068810430046)
,p_name=>'P554_OBSERVACION'
,p_is_required=>true
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(304178388609161756)
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
 p_id=>wwv_flow_imp.id(177778876732430044)
,p_name=>'P554_CALIFICACION'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(304285003797945125)
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
 p_id=>wwv_flow_imp.id(177779212007430044)
,p_name=>'P554_COD_USUARIO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(304285003797945125)
,p_item_default=>'P_COD_USUARIO'
,p_item_default_type=>'ITEM'
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
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(177816283201429997)
,p_validation_name=>'VL_FEC_MOVIMIENTO'
,p_validation_sequence=>20
,p_validation=>'P554_FEC_MOVIMIENTO'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'La fecha del movimiento no puede ser nulo.'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(177816684929429997)
,p_validation_name=>'VL_COD_CLIENTE'
,p_validation_sequence=>30
,p_validation=>'P554_COD_CLIENTE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>unistr('El c\00F3digo de cliente no puede ser nulo.')
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(177817090163429996)
,p_validation_name=>'VL_COD_USUARIO'
,p_validation_sequence=>40
,p_validation=>'P554_COD_USUARIO'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>unistr('El c\00F3digo de usuario no puede ser nulo.')
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(177817458951429996)
,p_validation_name=>'VL_COD_MOTIVO'
,p_validation_sequence=>50
,p_validation=>'P554_COD_MOTIVO'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>unistr('El c\00F3digo del motivo no puede ser nulo.')
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(177817835297429996)
,p_validation_name=>'VL_OBSERVACION'
,p_validation_sequence=>60
,p_validation=>'P554_OBSERVACION'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>unistr('La observaci\00F3n no puede ser nula.')
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(177896580795429951)
,p_name=>'DA_LOAD_ALERT'
,p_event_sequence=>10
,p_condition_element=>'P554_MENSAJE_ALERT'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(177897087607429951)
,p_event_id=>wwv_flow_imp.id(177896580795429951)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'&P554_MENSAJE_ALERT.'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P554_MENSAJE_ALERT'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(177827630448429986)
,p_name=>'DA_LLAMAR_CCRSALDO'
,p_event_sequence=>50
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(177776903098430045)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(177828194188429986)
,p_event_id=>wwv_flow_imp.id(177827630448429986)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'	SELECT APEX_PAGE.GET_URL (  p_page   => 85) f_url_1',
'		INTO :P554_URL',
'		FROM DUAL;        ',
'	 ',
'    --APEX_DEBUG.ERROR(:P554_URL);',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;'))
,p_attribute_03=>'P554_URL'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(177828684736429986)
,p_event_id=>wwv_flow_imp.id(177827630448429986)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var url = apex.item("P554_URL").getValue();',
'',
'apex.navigation.openInNewWindow(url, "_blank");',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(177853264775429973)
,p_name=>'DA_SELECCIONAR_LLAMADA'
,p_event_sequence=>60
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P554_ROW_ID_BUS_LLAM'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(177854299492429972)
,p_event_id=>wwv_flow_imp.id(177853264775429973)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(304286593871945141)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(177853717087429972)
,p_event_id=>wwv_flow_imp.id(177853264775429973)
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
'    INTO :P554_TIP_MOVIMIENTO, ',
'         :P554_NRO_MOVIMIENTO,',
'         :P554_FEC_MOVIMIENTO, ',
'         :P554_COD_CLIENTE,',
'         :P554_TIP_COMPROBANTE, ',
'         :P554_SER_COMPROBANTE, ',
'         :P554_NRO_COMPROBANTE, ',
'         :P554_OBSERVACION,',
'         :P554_COD_USUARIO, ',
'         :P554_CALIFICACION, ',
'         :P554_COD_MOTIVO, ',
'         :P554_NRO_TELEFONO, ',
'         :P554_NOMBRE,',
'         :P554_EMPRESA, ',
'         :P554_FECHA_REAGENDADA',
'    FROM',
'        ca_llamadas_salientes',
'    WHERE',
'        ROWID = :P554_ROW_ID_BUS_LLAM;',
'',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;'))
,p_attribute_02=>'P554_ROW_ID_BUS_LLAM'
,p_attribute_03=>'P554_TIP_MOVIMIENTO,P554_NRO_MOVIMIENTO,P554_FEC_MOVIMIENTO,P554_COD_CLIENTE,P554_TIP_COMPROBANTE,P554_SER_COMPROBANTE,P554_NRO_COMPROBANTE,P554_OBSERVACION,P554_COD_USUARIO,P554_CALIFICACION,P554_COD_MOTIVO,P554_NRO_TELEFONO,P554_EMPRESA,P554_NOMBRE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(177839540689429981)
,p_name=>'DA_BUSCAR_LLAMADA'
,p_event_sequence=>70
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(177730630788430078)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(177840016940429980)
,p_event_id=>wwv_flow_imp.id(177839540689429981)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    :P554_IND_REP_BUSQ_LLAM := ''1'';',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;'))
,p_attribute_03=>'P554_IND_REP_BUSQ_LLAM'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(177840567019429980)
,p_event_id=>wwv_flow_imp.id(177839540689429981)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(304287052945945146)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(177840969145429980)
,p_name=>'DA_LIMPIAR_CAMPOS_BUSQ_LLAM'
,p_event_sequence=>80
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(177731068066430078)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(177841446500429980)
,p_event_id=>wwv_flow_imp.id(177840969145429980)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P554_NRO_MOV_BUSQ,P554_FEC_MOV_INI_BUSQ,P554_IND_REP_BUSQ_LLAM,P554_FEC_MOV_FIN_BUSQ,P554_COD_CLIENTE_BUSQ,P554_TIP_COMP_BUSQ,P554_SER_COMP_BUSQ,P554_NRO_COMP_BUSQ,P554_FEC_ULT_PAGO_BUSQ'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(177841923908429980)
,p_event_id=>wwv_flow_imp.id(177840969145429980)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(304287052945945146)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(177833446463429984)
,p_name=>'DA_SETEAR_DATOS_PERSONA'
,p_event_sequence=>90
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P554_COD_CLIENTE'
,p_condition_element=>'P554_COD_CLIENTE'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(177835966902429982)
,p_event_id=>wwv_flow_imp.id(177833446463429984)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    BEGIN',
'      Select  p.cod_persona',
'        into :P554_COD_PERSONA',
'        from cc_clientes c, personas p',
'       where c.cod_empresa = :P_COD_EMPRESA',
'         and c.cod_cliente = :P554_COD_CLIENTE',
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
,p_attribute_02=>'P554_COD_CLIENTE'
,p_attribute_03=>'P554_COD_PERSONA'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(177835405880429983)
,p_event_id=>wwv_flow_imp.id(177833446463429984)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    CALLASAL.PR_EMAIL_CONTACTOS (PI_COD_PERSONA => :P554_COD_PERSONA);',
'',
'    CALLASAL.PR_PERSONAS (PI_COD_PERSONA => :P554_COD_PERSONA,',
'                           PI_COD_CLIENTE => :P554_COD_CLIENTE,',
'                           PO_COD_PERSONA => :P554_COD_PERSONA_PER,',
'                           PO_NOMBRE => :P554_NOMBRE_PER,',
'                           PO_DIREC_ELECTRONICA => :P554_DIREC_ELECTRONICA_PER);',
'',
'    :P554_IND_REP_TELEFONO := ''1'';',
'    :P554_IND_REP_DIRECCION := ''1'';',
'    :P554_IND_REP_IDENTIFICACION := ''1'';',
'    :P554_IND_REP_EMAIL := ''1'';',
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
,p_attribute_02=>'P554_COD_CLIENTE'
,p_attribute_03=>'P554_COD_PERSONA,P554_IND_REP_DIRECCION,P554_IND_REP_IDENTIFICACION,P554_IND_REP_TELEFONO,P554_IND_REP_EMAIL'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(177884815318429957)
,p_name=>'DA_CREAR_LLAMADA'
,p_event_sequence=>100
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(177729929309430079)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(177886381341429956)
,p_event_id=>wwv_flow_imp.id(177884815318429957)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>unistr('\00BFCrear un nuevo registro de llamada?')
,p_attribute_03=>'information'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(177886875996429956)
,p_event_id=>wwv_flow_imp.id(177884815318429957)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P554_NRO_MOVIMIENTO,P554_FEC_MOVIMIENTO,P554_COD_CLIENTE,P554_NRO_TELEFONO,P554_EMPRESA,P554_TIP_COMPROBANTE,P554_SER_COMPROBANTE,P554_NRO_COMPROBANTE,P554_FEC_ULTIMO_PAGO,P554_COD_MOTIVO,P554_OBSERVACION,P554_CALIFICACION,P554_COD_USUARIO,P554_COD_P'
||'ERSONA,P554_IND_REP_PERSONA,P554_IND_REP_DIRECCION,P554_IND_REP_IDENTIFICACION,P554_IND_REP_TELEFONO,P554_IND_REP_EMAIL'
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
 p_id=>wwv_flow_imp.id(177889362337429954)
,p_event_id=>wwv_flow_imp.id(177884815318429957)
,p_event_result=>'TRUE'
,p_action_sequence=>130
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    :P554_TIP_MOVIMIENTO := ''INF'';',
'    :P554_COD_USUARIO := :P_COD_USUARIO;',
'    :P554_FEC_MOVIMIENTO := trae_fecha(:P_COD_EMPRESA, :P554_COD_MODULO);',
'    :P554_HORA_LLAMADA := to_char(sysdate,''HH24:MI:SS'');',
'    :P554_CONSULTO :=''N'';',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;',
'',
''))
,p_attribute_02=>'P554_COD_MODULO'
,p_attribute_03=>'P554_COD_USUARIO,P554_TIP_MOVIMIENTO,P554_FEC_MOVIMIENTO,P554_HORA_LLAMADA,P554_CONSULTO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(177885367095429956)
,p_event_id=>wwv_flow_imp.id(177884815318429957)
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
'                                       :P554_TIP_MOVIMIENTO,',
'                                       :P554_NRO_MOVIMIENTO,',
'                                       :P554_HORA_LLAMADA,',
'                                       :P554_COD_USUARIO,',
'                                       :P554_FEC_MOVIMIENTO);',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;',
'',
'',
'',
''))
,p_attribute_02=>'P554_TIP_MOVIMIENTO,P554_NRO_MOVIMIENTO,P554_HORA_LLAMADA,P554_COD_USUARIO,P554_FEC_MOVIMIENTO'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_server_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(177885892766429956)
,p_event_id=>wwv_flow_imp.id(177884815318429957)
,p_event_result=>'TRUE'
,p_action_sequence=>150
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(304286593871945141)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(177860608184429968)
,p_name=>'DA_GUARDAR_DATOS_BD'
,p_event_sequence=>240
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(177768876004430050)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(177861148885429968)
,p_event_id=>wwv_flow_imp.id(177860608184429968)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_01=>'GUARDAR'
,p_attribute_02=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(177844779257429978)
,p_name=>'DA_ELIMINAR_TELEFONO'
,p_event_sequence=>250
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P554_SEQ_ID_TEL_ELIMINAR'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(177845255452429978)
,p_event_id=>wwv_flow_imp.id(177844779257429978)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>unistr('\00BFDesea eliminar el registro?')
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(177845776970429978)
,p_event_id=>wwv_flow_imp.id(177844779257429978)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    CALLASAL.PR_BORRAR_MIE_TEL (PI_SEQ_ID_ELIMINAR => :P554_SEQ_ID_TEL_ELIMINAR);',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;'))
,p_attribute_02=>'P554_SEQ_ID_TEL_ELIMINAR'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(177842336711429979)
,p_name=>'DA_EDITAR_TELEFONO'
,p_event_sequence=>260
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P554_SEQ_ID_TEL_EDITAR'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(177844386827429979)
,p_event_id=>wwv_flow_imp.id(177842336711429979)
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
'    INTO :P554_TIP_TELEF_CR_ED,',
'         :P554_TEL_UBIC_CR_ED,',
'         :P554_NOTA_CR_ED,',
'         :P554_COD_AREA_TEL_C_E,',
'         :P554_NUM_TELEF_CR_ED',
'',
'    FROM APEX_COLLECTIONS',
'    WHERE COLLECTION_NAME = ''TELEFONOS''',
'    AND SEQ_ID = :P554_SEQ_ID_TEL_EDITAR;',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;',
'',
''))
,p_attribute_02=>'P554_SEQ_ID_TEL_EDITAR'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(177868624646429964)
,p_name=>'DA_ELIMINAR_IDENTIFICACION'
,p_event_sequence=>340
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P554_SEQ_ID_IDENT_ELIMINAR'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(177869133496429964)
,p_event_id=>wwv_flow_imp.id(177868624646429964)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>unistr('\00BFDesea eliminar el registro?')
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(177869608249429964)
,p_event_id=>wwv_flow_imp.id(177868624646429964)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    CALLASAL.PR_BORRAR_MIE_IDENT (PI_SEQ_ID_ELIMINAR => :P554_SEQ_ID_IDENT_ELIMINAR);',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;'))
,p_attribute_02=>'P554_SEQ_ID_IDENT_ELIMINAR'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(177870508918429964)
,p_name=>'DA_EDITAR_IDENTIFICACION'
,p_event_sequence=>350
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P554_SEQ_ID_IDENT_EDITAR'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(177872008296429963)
,p_event_id=>wwv_flow_imp.id(177870508918429964)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    SELECT C001,',
'           C002',
'    INTO :P554_COD_IDENT_CR_ED,',
'         :P554_NUMERO_CR_ED',
'',
'    FROM APEX_COLLECTIONS',
'    WHERE COLLECTION_NAME = ''IDENTIFICACION''',
'    AND SEQ_ID = :P554_SEQ_ID_IDENT_EDITAR;',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;',
'',
''))
,p_attribute_02=>'P554_SEQ_ID_IDENT_EDITAR'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(177906276590429947)
,p_name=>'DA_EDITAR_MAIL'
,p_event_sequence=>400
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P554_SEQ_ID_EMAIL_EDITAR'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(177907781876429946)
,p_event_id=>wwv_flow_imp.id(177906276590429947)
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
'    INTO :P554_COD_AREA_CR_ED,',
'         :P554_DESC_AREA_CR_ED,',
'         :P554_NOM_CONT_CR_ED,',
'         :P554_DESC_AREA_CON_CR_ED,',
'         :P554_COD_PER_CONT_CR_ED,',
'         :P554_NOMBRE_CR_ED,',
'         :P554_DIREC_ELECT_CR_ED',
'',
'    FROM APEX_COLLECTIONS',
'    WHERE COLLECTION_NAME = ''EMAIL_CONTACTOS''',
'    AND SEQ_ID = :P554_SEQ_ID_EMAIL_EDITAR;',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;',
''))
,p_attribute_02=>'P554_SEQ_ID_EMAIL_EDITAR'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(177858775862429970)
,p_name=>'DA_ELIMINAR_EMAIL'
,p_event_sequence=>410
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P554_SEQ_ID_EMAIL_ELIMINAR'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(177859202855429969)
,p_event_id=>wwv_flow_imp.id(177858775862429970)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>unistr('\00BFDesea eliminar el registro?')
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(177859705869429969)
,p_event_id=>wwv_flow_imp.id(177858775862429970)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    CALLASAL.PR_BORRAR_MIE_EMAIL (PI_SEQ_ID_ELIMINAR => :P554_SEQ_ID_EMAIL_ELIMINAR);',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;'))
,p_attribute_02=>'P554_SEQ_ID_EMAIL_ELIMINAR'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(177822558317429989)
,p_name=>'DA_SETEAR_DESC_AREA'
,p_event_sequence=>430
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P554_COD_AREA_TEL_C_E'
,p_condition_element=>'P554_COD_AREA_TEL_C_E'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(177823026008429989)
,p_event_id=>wwv_flow_imp.id(177822558317429989)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    BEGIN',
'        select descripcion        ',
'        into :P554_DESC_AREA_CR_ED           ',
'        from areas_contactos',
'       where cod_empresa = :P_COD_EMPRESA',
'         and cod_area    = :P554_COD_AREA_CR_ED;',
'    EXCEPTION',
'       WHEN no_data_found THEN',
'         :P554_DESC_AREA_CR_ED := NULL;',
'      WHEN others THEN',
'         :P554_DESC_AREA_CR_ED := NULL ;',
'    END;',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;'))
,p_attribute_02=>'P554_COD_AREA_TEL_C_E'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(177823446704429989)
,p_name=>'DA_SETEAR_NOM_CONT'
,p_event_sequence=>440
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P554_COD_PER_CONT_CR_ED'
,p_condition_element=>'P554_COD_PER_CONT_CR_ED'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(177823923573429988)
,p_event_id=>wwv_flow_imp.id(177823446704429989)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    BEGIN',
'      select nvl(ltrim( nombre ),ltrim( nomb_fantasia ))           ',
'       into :P554_NOMBRE      ',
'         from personas',
'         where cod_persona = :P554_COD_PER_CONT_CR_ED ;',
'   EXCEPTION',
'      WHEN no_data_found THEN',
'         :P554_NOMBRE := NULL;',
'         :P554_NOMBRE := NULL;',
'',
'      when others then',
'         :P554_NOMBRE := NULL;',
'         :P554_NOMBRE := NULL;',
'   END ;  ',
'',
'',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;'))
,p_attribute_02=>'P554_COD_PER_CONT_CR_ED'
,p_attribute_03=>'P554_NOMBRE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(177875775414429961)
,p_name=>'DA_CARGAR_DATOS_PARAMETRO'
,p_event_sequence=>460
,p_condition_element=>'P_NRO_LLAMADA'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(177876219847429961)
,p_event_id=>wwv_flow_imp.id(177875775414429961)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P554_IND_REP_BUSQ_LLAM,P554_IND_REP_PERSONA,P554_IND_REP_DIRECCION,P554_IND_REP_IDENTIFICACION,P554_IND_REP_TELEFONO,P554_IND_REP_EMAIL,P554_NRO_MOVIMIENTO,P554_NRO_LLAMADA,P554_FEC_MOVIMIENTO,P554_COD_CLIENTE,P554_NRO_TELEFONO,P554_NOMBRE,P554_EMPRE'
||'SA,P554_TIP_COMPROBANTE,P554_SER_COMPROBANTE,P554_NRO_COMPROBANTE,P554_COD_MOTIVO,P554_OBSERVACION,P554_CALIFICACION,P554_COD_USUARIO,P554_NRO_MOV_BUSQ,P554_FEC_MOV_INI_BUSQ,P554_IND_REP_BUSQ_LLAM,P554_FEC_MOV_FIN_BUSQ,P554_COD_CLIENTE_BUSQ,P554_TIP_'
||'COMP_BUSQ,P554_SER_COMP_BUSQ,P554_NRO_COMP_BUSQ,P554_FEC_ULT_PAGO_BUSQ'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(177879201744429959)
,p_event_id=>wwv_flow_imp.id(177875775414429961)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    IF :P554_P_NRO_LLAMADA IS NOT NULL THEN',
'        :P554_NRO_LLAMADA := :P554_P_NRO_LLAMADA;',
'        :P554_COD_CLIENTE := :P554_P_COD_CLIENTE;',
'        :P554_NRO_TELEFONO := :P554_P_NRO_TELEFONO;',
'        :P554_NOMBRE := :P554_P_NOMBRE;',
'        :P554_EMPRESA := :P554_P_EMPRESA;',
'        :P554_TIP_COMPROBANTE := :P554_P_TIP_COMPROBANTE;',
'        :P554_SER_COMPROBANTE := :P554_P_SER_COMPROBANTE;',
'        :P554_NRO_COMPROBANTE := :P554_P_NRO_COMPROBANTE;',
'',
'    ELSIF :P554_P_NRO_COMPROBANTE IS NOT NULL THEN',
'    	:P554_TIP_COMPROBANTE := :P554_P_TIP_COMPROBANTE;',
'        :P554_SER_COMPROBANTE := :P554_P_SER_COMPROBANTE;',
'        :P554_NRO_COMPROBANTE := :P554_P_NRO_COMPROBANTE;',
'        :P554_COD_CLIENTE     := :P554_P_COD_CLIENTE;',
'        :P554_NRO_TELEFONO := :P554_P_NRO_TELEFONO;',
'    END IF;    ',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;'))
,p_attribute_02=>'P554_P_NRO_LLAMADA,P554_P_COD_CLIENTE,P554_P_NRO_TELEFONO,P554_P_NOMBRE,P554_P_EMPRESA,P554_P_TIP_COMPROBANTE,P554_P_SER_COMPROBANTE,P554_P_NRO_COMPROBANTE,P554_P_NRO_COMPROBANTE'
,p_attribute_03=>'P554_NRO_LLAMADA,P554_COD_CLIENTE,P554_NRO_TELEFONO,P554_NOMBRE,P554_EMPRESA,P554_TIP_COMPROBANTE,P554_SER_COMPROBANTE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(177876705364429961)
,p_event_id=>wwv_flow_imp.id(177875775414429961)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(304287052945945146)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(177879650649429959)
,p_name=>'DA_LIMPIAR_CAMPOS'
,p_event_sequence=>470
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(177769229583430049)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(177880189757429959)
,p_event_id=>wwv_flow_imp.id(177879650649429959)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_01=>'LIMPIAR'
,p_attribute_02=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(177851383622429974)
,p_name=>'DA_ELIMINAR_DIRE'
,p_event_sequence=>500
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P554_SEQ_ID_DIRE_ELIMINAR'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(177852372585429973)
,p_event_id=>wwv_flow_imp.id(177851383622429974)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>unistr('\00BFDesea eliminar el registro?')
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(177851864456429973)
,p_event_id=>wwv_flow_imp.id(177851383622429974)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    CALLASAL.PR_BORRAR_MIE_DIR (PI_SEQ_ID_ELIMINAR => :P554_SEQ_ID_DIRE_ELIMINAR);',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;'))
,p_attribute_02=>'P554_SEQ_ID_DIRE_ELIMINAR'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(177880581421429959)
,p_name=>'DA_EDITAR_DIRE'
,p_event_sequence=>510
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P554_SEQ_ID_DIRE_EDITAR'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(177882007941429958)
,p_event_id=>wwv_flow_imp.id(177880581421429959)
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
'    INTO :P554_COD_DIRECCION_CR_ED,',
'         :P554_DETALLE_CR_ED,',
'         :P554_TIP_DIRECCION_CR_ED,',
'         :P554_COD_PAIS_CR_ED,',
'         :P554_COD_PROVINCIA_CR_ED,',
'         :P554_COD_CIUDAD_CR_ED,',
'         :P554_COD_BARRIO_CR_ED,',
'         :P554_POR_DEFECTO_CR_ED',
'',
'    FROM APEX_COLLECTIONS',
'    WHERE COLLECTION_NAME = ''DIRECCION''',
'    AND SEQ_ID = :P554_SEQ_ID_DIRE_EDITAR;',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;',
'',
''))
,p_attribute_02=>'P554_SEQ_ID_DIRE_EDITAR'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(177903442816429948)
,p_name=>'DA_LLAMAR_CALLASALDET'
,p_event_sequence=>530
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(177776572119430045)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(177903926104429948)
,p_event_id=>wwv_flow_imp.id(177903442816429948)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    :P554_IND_REP_CALLASALDET := ''1'';',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;'))
,p_attribute_03=>'P554_IND_REP_CALLASALDET'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(177904425033429947)
,p_event_id=>wwv_flow_imp.id(177903442816429948)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(309330068196973555)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(177904948235429947)
,p_event_id=>wwv_flow_imp.id(177903442816429948)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(309330068196973555)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(177905352756429947)
,p_name=>'DA_CERRAR_CALLASALDET'
,p_event_sequence=>540
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(177729247180430088)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(177905872655429947)
,p_event_id=>wwv_flow_imp.id(177905352756429947)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(309330068196973555)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(175480042231656538)
,p_name=>'Nuevo'
,p_event_sequence=>550
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P554_NRO_TELEFONO'
,p_bind_type=>'bind'
,p_bind_event_type=>'keypress'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(175480172251656539)
,p_event_id=>wwv_flow_imp.id(175480042231656538)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if (!formatotelefono(event)){',
'      event.preventDefault();',
'}'))
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(177819359721429995)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_PRUEBA_VALORES'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    :P554_P_NRO_LLAMADA := ''101020'';',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;'))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(177818116750429996)
,p_process_sequence=>20
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_INIT'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    :P554_COD_MODULO := ''CA'';',
'',
'    --:P554_MENSAJE_ALERT := ''HOLA'';',
'',
'    DECLARE',
'        i NUMBER;',
'        e EXCEPTION;',
'    BEGIN',
'        select to_number( nvl( valor, 0 ) )',
'          into :P554_DIAS_ATRASO',
'          from parametros_generales',
'         where cod_modulo = :P554_COD_MODULO',
'           and parametro = ''DIAS_ATRASO_INF'';',
'',
'        IF :P554_DIAS_ATRASO < 1 THEN',
'          raise e;',
'        END IF;',
'',
'    EXCEPTION',
'        WHEN e THEN',
unistr('            :P554_MENSAJE_ALERT := ''El valor del par\00E1metro "DIAS_ATRASO_INF" es menor o igual a 0 (cero).''||chr(13)||'),
'                 ''Consulte con el administrador del sistema para corregir el error.'';',
'            :P554_DIAS_ATRASO := 30;',
'        WHEN OTHERS THEN',
'          IF substr( sqlerrm, 1, 9 ) = ''ORA-01722'' THEN',
unistr('            :P554_MENSAJE_ALERT := ''El par\00E1metro "DIAS_ATRASO_INF" no es un n\00FAmero.''||chr(13)||'),
'                   ''Consulte con el administrador del sistema para corregir el error.'';',
'            :P554_DIAS_ATRASO := 30;',
'          ELSE',
'            :P554_DIAS_ATRASO := 30;',
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
 p_id=>wwv_flow_imp.id(177819777483429995)
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
 p_id=>wwv_flow_imp.id(177818551897429996)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_GUARDAR_DATOS_BD'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  V_EXISTE         VARCHAR2(50);',
'  V_NRO_MOVIMIENTO NUMBER;',
'BEGIN',
'  IF :P554_NRO_MOVIMIENTO IS NOT NULL then',
'    BEGIN',
'      SELECT NRO_MOVIMIENTO',
'        INTO V_EXISTE',
'        FROM ca_llamadas_salientes',
'       WHERE COD_EMPRESA = :P_COD_EMPRESA',
'         AND NRO_MOVIMIENTO = :P554_NRO_MOVIMIENTO;',
'    ',
'      UPDATE ca_llamadas_salientes',
'         SET COD_CLIENTE  = :P554_COD_CLIENTE,',
'             NRO_TELEFONO = :P554_NRO_TELEFONO,',
'             NOMBRE       = :P554_NOMBRE,',
'             COD_MOTIVO   = :P554_COD_MOTIVO,',
'             OBSERVACION  = :P554_OBSERVACION,',
'             CALIFICACION = :P554_CALIFICACION',
'       WHERE COD_EMPRESA = :P_COD_EMPRESA',
'         AND NRO_MOVIMIENTO = :P554_NRO_MOVIMIENTO;',
'    EXCEPTION',
'      WHEN NO_DATA_FOUND THEN',
'        null;',
'    end;',
'  ELSE',
'  ',
'    DECLARE',
'      vnumero NUMBER(8);',
'    BEGIN',
'      Select max(nro_movimiento)',
'        into vnumero',
'        from CA_LLAMADAS_SALIENTES',
'       where cod_empresa = :p_cod_empresa;',
'    ',
'      vnumero          := nvl(vnumero, 0) + 1;',
'      V_NRO_MOVIMIENTO := vnumero;',
'    EXCEPTION',
'      when no_data_found then',
'        vnumero          := 1;',
'        V_NRO_MOVIMIENTO := vnumero;',
'      when others then',
'     RAISE_APPLICATION_ERROR(-20000, sqlerrm || '' Error en tabla de cabecera '');',
'        APEX_DEBUG.ERROR(''Error en tabla de cabecera '' || sqlerrm);',
'    END;',
'    begin',
'      INSERT INTO CA_LLAMADAS_SALIENTES',
'        (COD_EMPRESA,',
'         TIP_MOVIMIENTO,',
'         NRO_MOVIMIENTO,',
'         HORA_LLAMADA,',
'         COD_USUARIO,',
'         FEC_MOVIMIENTO,',
'         NRO_LLAMADA,',
'         COD_CLIENTE,',
'         NRO_TELEFONO,',
'         NOMBRE,',
'         EMPRESA,',
'         TIP_COMPROBANTE,',
'         SER_COMPROBANTE,',
'         NRO_COMPROBANTE,',
'         COD_MOTIVO,',
'         OBSERVACION,',
'         CALIFICACION, cod_vendedor)',
'      VALUES',
'        (:p_cod_empresa,',
'         ''INF'',',
'         V_NRO_MOVIMIENTO,',
'         to_char(SYSDATE,''HH24:MI:SS''),',
'         :P554_COD_USUARIO,',
'         :P554_FEC_MOVIMIENTO,',
'         :P554_NRO_LLAMADA,',
'         :P554_COD_CLIENTE,',
'         :P554_NRO_TELEFONO,',
'         :P554_NOMBRE,',
'         :P554_EMPRESA,',
'         :P554_TIP_COMPROBANTE,',
'         :P554_SER_COMPROBANTE,',
'         :P554_NRO_COMPROBANTE,',
'         :P554_COD_MOTIVO,',
'         :P554_OBSERVACION,',
'         :P554_CALIFICACION, :P554_COD_VENDEDOR);',
'    exception',
'      WHEN OTHERS THEN',
'        RAISE_APPLICATION_ERROR(-20000, sqlerrm || '' AQUI'');',
'        APEX_DEBUG.ERROR(SQLERRM);',
'      ',
'    END;',
'  ',
'  end if;',
'',
'EXCEPTION',
'  WHEN OTHERS THEN',
'   RAISE_APPLICATION_ERROR(-20000, sqlerrm || '' AQUI2'');',
'    APEX_DEBUG.ERROR(SQLERRM);',
'    ',
'END;',
''))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'Hubo un error.'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Datos guardados exitosamente.'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(177818969959429995)
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
