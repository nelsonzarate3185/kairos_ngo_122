prompt --application/pages/page_00249
begin
--   Manifest
--     PAGE: 00249
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
 p_id=>249
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'SMSEGOBR - Seguimiento de Obras'
,p_alias=>'SMSEGOBR'
,p_step_title=>'SMSEGOBR'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#seg_obr{ background-color: rgb(205, 213, 221);}',
'',
'  .t-Report-colHead , .a-IRR-headerLabel, .a-IRR-headerLink{',
'      background: #003a85!important;',
'       color: yellow; ',
' }',
'',
' .t-Form-label{',
'    color:  darkblue !important;',
'    font-weight: bold !important;',
'    }',
''))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_last_updated_by=>'JUANSA'
,p_last_upd_yyyymmddhh24miss=>'20230629092707'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(61222283320647332)
,p_plug_name=>'SEGUIMIENTO DE OBRAS'
,p_region_name=>'seg_obr'
,p_region_template_options=>'#DEFAULT#:t-Region--accent1:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>990
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(61222386821647333)
,p_plug_name=>'CABECERA'
,p_parent_plug_id=>wwv_flow_imp.id(61222283320647332)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(61223687045647346)
,p_plug_name=>'REPORTE'
,p_parent_plug_id=>wwv_flow_imp.id(61222283320647332)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ',
'        NULL, NRO_COMPROBANTE, FEC_COMPROBANTE, ESTADO, FEC_APROBACION,',
'        COD_CLIENTE, NOM_CLIENTE, ',
'        MONTO_PRESUPUESTO,',
'        COSTO_PREVISTO,',
'        COSTO_FINAL,',
'        DECODE(NVL(COSTO_FINAL,0),0,0,round(nvl(((nvl(MONTO_PRESUPUESTO,1) - nvl(costo_final,1)) / nvl(MONTO_PRESUPUESTO,0))*100,1),2)) MARGEN,',
'        ROWID ROW_ID, NULL DETALLES, NULL AGREGAR_OBSERVACION ,       ',
'        FEC_VERIFICADO,',
'        VERIFICADO_POR,',
'        FEC_PRESUPUESTADO,',
'        PRESUPUESTADO_POR, ',
'        APROBADO_POR,',
'        FEC_FINALIZADO,',
'        FINALIZADO_POR,',
'        FEC_ENTREGADO,',
'        ENTREGADO_POR,',
'        FEC_RECHAZO,',
'        RECHAZADO_POR,',
'        DURACION_OBRA,',
'        TIPO,        ',
'        COD_VENDEDOR,',
'        SUPERVISOR,',
'        PORC_AVANCE',
'',
'',
'FROM VW_OBRAS_SEGUIMIENTO',
'WHERE cod_empresa = :P_COD_EMPRESA ',
'AND (ESTADO = :P249_ESTADO or :P249_ESTADO = ''T'')',
'AND (FEC_comprobante >= :P249_FECHA_INI OR :P249_FECHA_INI IS NULL )',
'AND (FEC_comprobante <= :P249_FECHA_FIN OR :P249_FECHA_FIN IS NULL )',
'AND (COD_CLIENTE = :P249_COD_CLIENTE_CAB OR :P249_COD_CLIENTE_CAB IS NULL)',
'AND (COD_VENDEDOR = :P249_COD_VENDEDOR OR :P249_COD_VENDEDOR IS NULL)',
'AND :P249_INDICADOR_REPORTE = ''1''',
'AND ( NVL(:P249_TIPO,''T'')=''T''  OR :P249_TIPO= TIPO)',
'',
';'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P249_COD_CLIENTE_CAB,P_COD_EMPRESA,P249_ESTADO ,P249_FECHA_INI ,P249_FECHA_FIN ,P249_COD_VENDEDOR,P249_INDICADOR_REPORTE'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'REPORTE'
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
 p_id=>wwv_flow_imp.id(63185055555384303)
,p_max_row_count=>'1000000'
,p_max_rows_per_page=>'15'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'EMILIANOP'
,p_internal_uid=>63185055555384303
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(63185113654384304)
,p_db_column_name=>'NRO_COMPROBANTE'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>unistr('N\00BA Obra')
,p_allow_ctrl_breaks=>'N'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(63185262677384305)
,p_db_column_name=>'FEC_COMPROBANTE'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Fecha'
,p_allow_ctrl_breaks=>'N'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(63185336292384306)
,p_db_column_name=>'ESTADO'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Estado'
,p_allow_ctrl_breaks=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_column_alignment=>'CENTER'
,p_rpt_named_lov=>wwv_flow_imp.id(63078483405874160)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(63185430215384307)
,p_db_column_name=>'FEC_APROBACION'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Fec Aprobacion'
,p_allow_ctrl_breaks=>'N'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(63185575298384308)
,p_db_column_name=>'COD_CLIENTE'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Cod.Cliente'
,p_allow_ctrl_breaks=>'N'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(63185671110384309)
,p_db_column_name=>'NOM_CLIENTE'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Nombre del Cliente'
,p_allow_ctrl_breaks=>'N'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(63186352765384316)
,p_db_column_name=>'ROW_ID'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Row Id'
,p_column_type=>'OTHER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(63186482807384317)
,p_db_column_name=>'DETALLES'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Detalles'
,p_column_link=>'javascript:$s(''P249_ROW_ID_DETALLES'',''#ROW_ID#'');'
,p_column_linktext=>'<span class="fa fa-search" aria-hidden="true"></span>'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(63188354012384336)
,p_db_column_name=>'AGREGAR_OBSERVACION'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Agregar Observacion'
,p_column_link=>'javascript:$s(''P249_ROW_ID_OBSERVACION'',''#ROW_ID#'');'
,p_column_linktext=>'<span class="fa fa-plus-circle" aria-hidden="true"></span>'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(65271584119719722)
,p_db_column_name=>'NULL'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Ver'
,p_column_link=>'f?p=&APP_ID.:258:&SESSION.::&DEBUG.:258:P258_NRO_COMPROBANTE_RECIBIDO:#NRO_COMPROBANTE#'
,p_column_linktext=>'<span class="fa fa-plus-circle" aria-hidden="true"></span>'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_allow_hide=>'N'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(118932514108854150)
,p_db_column_name=>'MONTO_PRESUPUESTO'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Monto Presupuesto'
,p_allow_ctrl_breaks=>'N'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(128530565824125301)
,p_db_column_name=>'COSTO_PREVISTO'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Costo Previsto'
,p_allow_ctrl_breaks=>'N'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(128530612192125302)
,p_db_column_name=>'COSTO_FINAL'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Costo Final'
,p_allow_ctrl_breaks=>'N'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(128530796005125303)
,p_db_column_name=>'MARGEN'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>'Margen'
,p_allow_ctrl_breaks=>'N'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'9G990D90'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(128530813465125304)
,p_db_column_name=>'FEC_VERIFICADO'
,p_display_order=>150
,p_column_identifier=>'O'
,p_column_label=>'Fec Verificado'
,p_allow_ctrl_breaks=>'N'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(128530998558125305)
,p_db_column_name=>'VERIFICADO_POR'
,p_display_order=>160
,p_column_identifier=>'P'
,p_column_label=>'Verificado Por'
,p_allow_ctrl_breaks=>'N'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(128531039569125306)
,p_db_column_name=>'FEC_PRESUPUESTADO'
,p_display_order=>170
,p_column_identifier=>'Q'
,p_column_label=>'Fec Presupuestado'
,p_allow_ctrl_breaks=>'N'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(128531108077125307)
,p_db_column_name=>'PRESUPUESTADO_POR'
,p_display_order=>180
,p_column_identifier=>'R'
,p_column_label=>'Presupuestado Por'
,p_allow_ctrl_breaks=>'N'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(128531274742125308)
,p_db_column_name=>'APROBADO_POR'
,p_display_order=>190
,p_column_identifier=>'S'
,p_column_label=>'Aprobado Por'
,p_allow_ctrl_breaks=>'N'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(128531386194125309)
,p_db_column_name=>'FEC_FINALIZADO'
,p_display_order=>200
,p_column_identifier=>'T'
,p_column_label=>'Fec Finalizado'
,p_allow_ctrl_breaks=>'N'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(128531417149125310)
,p_db_column_name=>'FINALIZADO_POR'
,p_display_order=>210
,p_column_identifier=>'U'
,p_column_label=>'Finalizado Por'
,p_allow_ctrl_breaks=>'N'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(128531599118125311)
,p_db_column_name=>'FEC_ENTREGADO'
,p_display_order=>220
,p_column_identifier=>'V'
,p_column_label=>'Fec Entregado'
,p_allow_ctrl_breaks=>'N'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(128531636466125312)
,p_db_column_name=>'ENTREGADO_POR'
,p_display_order=>230
,p_column_identifier=>'W'
,p_column_label=>'Entregado Por'
,p_allow_ctrl_breaks=>'N'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(128531749787125313)
,p_db_column_name=>'FEC_RECHAZO'
,p_display_order=>240
,p_column_identifier=>'X'
,p_column_label=>'Fec Rechazo'
,p_allow_ctrl_breaks=>'N'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(128531833310125314)
,p_db_column_name=>'RECHAZADO_POR'
,p_display_order=>250
,p_column_identifier=>'Y'
,p_column_label=>'Rechazado Por'
,p_allow_ctrl_breaks=>'N'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(128531981049125315)
,p_db_column_name=>'DURACION_OBRA'
,p_display_order=>260
,p_column_identifier=>'Z'
,p_column_label=>'Duracion Obra'
,p_allow_ctrl_breaks=>'N'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(128532064519125316)
,p_db_column_name=>'TIPO'
,p_display_order=>270
,p_column_identifier=>'AA'
,p_column_label=>'Tipo'
,p_allow_ctrl_breaks=>'N'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(128532155215125317)
,p_db_column_name=>'COD_VENDEDOR'
,p_display_order=>280
,p_column_identifier=>'AB'
,p_column_label=>'Cod Vendedor'
,p_allow_ctrl_breaks=>'N'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(128532228868125318)
,p_db_column_name=>'SUPERVISOR'
,p_display_order=>290
,p_column_identifier=>'AC'
,p_column_label=>'Supervisor'
,p_allow_ctrl_breaks=>'N'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(128532337719125319)
,p_db_column_name=>'PORC_AVANCE'
,p_display_order=>300
,p_column_identifier=>'AD'
,p_column_label=>'%Avance'
,p_allow_ctrl_breaks=>'N'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_format_mask=>'999D90'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(63225685299023945)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'632257'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>10
,p_report_columns=>'NULL:NRO_COMPROBANTE:TIPO:PORC_AVANCE:FEC_COMPROBANTE:ESTADO:FEC_APROBACION:COD_CLIENTE:NOM_CLIENTE:DURACION_OBRA:MONTO_PRESUPUESTO:MARGEN:COSTO_PREVISTO:COSTO_FINAL:COD_VENDEDOR:'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(61223149338647341)
,p_plug_name=>'VARIABLES'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>985
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(64452612135711414)
,p_plug_name=>'SMROBRAS'
,p_region_template_options=>'#DEFAULT#:js-dialog-size720x480'
,p_plug_template=>wwv_flow_imp.id(40117728043263659)
,p_plug_display_sequence=>1030
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT o.tip_comprobante,',
'       o.ser_comprobante,',
'       o.nro_comprobante,',
'       o.fec_comprobante,',
'       o.estado,',
'       o.monto_presupuesto,',
'       o.costo_previsto, ',
'       nvl(o.porc_avance,0)avance,',
'       o.cod_vendedor,',
'       o.supervisor,',
'       o.cod_cliente,',
'       o.nom_cliente,',
'       o.direccion,',
'       o.comentario,',
'       o.cod_condicion,',
'       o.DURACION_OBRA,',
'      (SELECT pc.cod_condicion_venta',
'       FROM  vt_pedidos_cabecera pc,',
'     	     vt_pedidos_detalle pd',
'       WHERE pd.cod_empresa = o.cod_empresa',
'       AND   pd.cod_articulo = o.COD_ART_FAC',
'       AND   pd.cod_empresa = pc.cod_empresa',
'       AND   pd.tip_comprobante = pc.tip_comprobante',
'       AND   pd.ser_comprobante = pc.ser_comprobante',
'       AND   pd.nro_comprobante = pc.nro_comprobante',
'       AND   nvl(pc.estado,''P'')<>''A''',
'       AND rownum=1',
'       ) cond_Vta,',
'        o.fec_verificado, ',
'        o.fec_entregado,',
'        FEC_APROBACION,',
'        FEC_RECHAZO,',
'        FEC_FINALIZADO,',
'        FEC_PRESUPUESTADO',
'',
'FROM sm_ot_obra o',
'WHERE o.cod_empresa= :P_COD_EMPRESA',
'AND  (trunc(o.fec_comprobante) >= to_date(:P249_FECHA_INI,''DD/MM/YYYY'') or :P249_FECHA_INI is null)',
'AND  (trunc(o.fec_comprobante) <= to_date(:P249_FECHA_FIN,''DD/MM/YYYY'') or :P249_FECHA_FIN is null)',
'AND  (o.cod_cliente = :P249_COD_CLIENTE_CAB or NVL(:P249_COD_CLIENTE_CAB,''TODOS'') = ''TODOS'')',
'AND  (o.cod_vendedor = :P249_COD_VENDEDOR or NVL(:P249_COD_VENDEDOR ,''TODOS'') = ''TODOS'')',
'AND  (o.estado = :P249_ESTADO or nvl(:P249_ESTADO, ''T'' ) = ''T'')',
'AND :P249_INDICADOR_REP_SMROBRAS = ''1'';',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P_COD_EMPRESA,P249_FECHA_INI,P249_FECHA_FIN,P249_COD_CLIENTE_CAB,P249_COD_VENDEDOR,P249_ESTADO,P249_INDICADOR_REP_SMROBRAS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'SMROBRAS'
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
 p_id=>wwv_flow_imp.id(64633718634918818)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_search_textbox=>'N'
,p_report_list_mode=>'NONE'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_rows_per_page=>'N'
,p_show_control_break=>'N'
,p_show_highlight=>'N'
,p_show_aggregate=>'N'
,p_show_chart=>'N'
,p_show_pivot=>'N'
,p_show_flashback=>'N'
,p_show_help=>'N'
,p_download_formats=>'CSV:XLSX:PDF'
,p_enable_mail_download=>'N'
,p_owner=>'EMILIANOP'
,p_internal_uid=>64633718634918818
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(64633883823918819)
,p_db_column_name=>'TIP_COMPROBANTE'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Tip Comprobante'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(64633966438918820)
,p_db_column_name=>'SER_COMPROBANTE'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Ser Comprobante'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(64634063578918821)
,p_db_column_name=>'NRO_COMPROBANTE'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Nro Comprobante'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(64634135115918822)
,p_db_column_name=>'FEC_COMPROBANTE'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Fec Comprobante'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(64634222455918823)
,p_db_column_name=>'ESTADO'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Estado'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(64634317482918824)
,p_db_column_name=>'MONTO_PRESUPUESTO'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Monto Presupuesto'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(64634433712918825)
,p_db_column_name=>'COSTO_PREVISTO'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Costo Previsto'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(64634554224918826)
,p_db_column_name=>'AVANCE'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Avance'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(64634670016918827)
,p_db_column_name=>'COD_VENDEDOR'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Cod Vendedor'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(64634735183918828)
,p_db_column_name=>'SUPERVISOR'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Supervisor'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(64634840190918829)
,p_db_column_name=>'COD_CLIENTE'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Cod Cliente'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(64634943706918830)
,p_db_column_name=>'NOM_CLIENTE'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Nom Cliente'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(64635006514918831)
,p_db_column_name=>'DIRECCION'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Direccion'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(64635155408918832)
,p_db_column_name=>'COMENTARIO'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>'Comentario'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(64635296873918833)
,p_db_column_name=>'COD_CONDICION'
,p_display_order=>150
,p_column_identifier=>'O'
,p_column_label=>'Cod Condicion'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(64635354834918834)
,p_db_column_name=>'DURACION_OBRA'
,p_display_order=>160
,p_column_identifier=>'P'
,p_column_label=>'Duracion Obra'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(64635476949918835)
,p_db_column_name=>'COND_VTA'
,p_display_order=>170
,p_column_identifier=>'Q'
,p_column_label=>'Cond Vta'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(64635532438918836)
,p_db_column_name=>'FEC_VERIFICADO'
,p_display_order=>180
,p_column_identifier=>'R'
,p_column_label=>'Fec Verificado'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(64635678607918837)
,p_db_column_name=>'FEC_ENTREGADO'
,p_display_order=>190
,p_column_identifier=>'S'
,p_column_label=>'Fec Entregado'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(64635794270918838)
,p_db_column_name=>'FEC_APROBACION'
,p_display_order=>200
,p_column_identifier=>'T'
,p_column_label=>'Fec Aprobacion'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(64635894847918839)
,p_db_column_name=>'FEC_RECHAZO'
,p_display_order=>210
,p_column_identifier=>'U'
,p_column_label=>'Fec Rechazo'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(64635924931918840)
,p_db_column_name=>'FEC_FINALIZADO'
,p_display_order=>220
,p_column_identifier=>'V'
,p_column_label=>'Fec Finalizado'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(64636098482918841)
,p_db_column_name=>'FEC_PRESUPUESTADO'
,p_display_order=>230
,p_column_identifier=>'W'
,p_column_label=>'Fec Presupuestado'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(64695254229928995)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'646953'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>10
,p_report_columns=>'TIP_COMPROBANTE:SER_COMPROBANTE:NRO_COMPROBANTE:FEC_COMPROBANTE:ESTADO:MONTO_PRESUPUESTO:COSTO_PREVISTO:AVANCE:COD_VENDEDOR:SUPERVISOR:COD_CLIENTE:NOM_CLIENTE:DIRECCION:COMENTARIO:COD_CONDICION:DURACION_OBRA:COND_VTA:FEC_VERIFICADO:FEC_ENTREGADO:FEC_'
||'APROBACION:FEC_RECHAZO:FEC_FINALIZADO:FEC_PRESUPUESTADO'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(63185996323384312)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(61222386821647333)
,p_button_name=>'P249_BOTON_BUSCAR'
,p_button_static_id=>'buscar'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight:t-Button--stretch:t-Button--gapLeft:t-Button--gapTop'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Buscar'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-search'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(64636162428918842)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_imp.id(61222386821647333)
,p_button_name=>'P249_BOTON_LIMPIAR_CAMPOS'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--gapTop'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Limpiar Campos'
,p_warn_on_unsaved_changes=>null
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(171355149531796103)
,p_button_sequence=>70
,p_button_plug_id=>wwv_flow_imp.id(61222386821647333)
,p_button_name=>'Nuevo'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight:t-Button--stretch:t-Button--gapRight:t-Button--gapTop'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Nuevo'
,p_button_redirect_url=>'f?p=&APP_ID.:258:&SESSION.::&DEBUG.:CR,258:P258_NRO_COMPROBANTE_RECIBIDO:'
,p_icon_css_classes=>'fa-plus'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(64455272755711440)
,p_button_sequence=>100
,p_button_plug_id=>wwv_flow_imp.id(61222386821647333)
,p_button_name=>'P249_BOTON_IMPRIMIR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight:t-Button--gapLeft:t-Button--gapTop'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Imprimir'
,p_warn_on_unsaved_changes=>null
,p_button_condition_type=>'NEVER'
,p_icon_css_classes=>'fa-print'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(64455749966711445)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(64452612135711414)
,p_button_name=>'P249_BOTON_CERRAR_SMROBRAS'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_image_alt=>'Cerrar'
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(65272158988719728)
,p_branch_name=>'BR_LLAMAR_SMOTOBRA'
,p_branch_action=>'f?p=&APP_ID.:258:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
,p_branch_condition_type=>'REQUEST_EQUALS_CONDITION'
,p_branch_condition=>'SMOTOBRA'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(61222419115647334)
,p_name=>'P249_ESTADO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(61222386821647333)
,p_prompt=>'Estado'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'LV_SMSEGOBR_ESTADO'
,p_lov=>'.'||wwv_flow_imp.id(63078483405874160)||'.'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_colspan=>3
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(61222528244647335)
,p_name=>'P249_FECHA_INI'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(61222386821647333)
,p_prompt=>'Fecha Desde'
,p_display_as=>'NATIVE_DATE_PICKER_JET'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>2
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
 p_id=>wwv_flow_imp.id(61222759182647337)
,p_name=>'P249_FECHA_FIN'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(61222386821647333)
,p_prompt=>'Fecha Hasta'
,p_display_as=>'NATIVE_DATE_PICKER_JET'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>2
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
 p_id=>wwv_flow_imp.id(61222865224647338)
,p_name=>'P249_COD_VENDEDOR'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(61222386821647333)
,p_prompt=>'Vendedor'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select v.cod_vendedor  || '' - '' || nvl( v.descripcion, ltrim(p.nombre) ) D, v.cod_vendedor R',
'from fv_vendedores v, personas p ',
'where v.cod_empresa = NVL(:P_cod_empresa,''1'') ',
'and v.cod_persona = p.cod_persona and v.estado = ''A'' ',
'order by ltrim(p.nombre)'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'...'
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
 p_id=>wwv_flow_imp.id(61223229100647342)
,p_name=>'P249_INDICADOR_ALERT'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(61223149338647341)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(63185742022384310)
,p_name=>'P249_INDICADOR_REPORTE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(61223149338647341)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(63186592138384318)
,p_name=>'P249_ROW_ID_DETALLES'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(61223149338647341)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(63187479170384327)
,p_name=>'P249_COD_MOTIVO'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(61223149338647341)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(63187511541384328)
,p_name=>'P249_DESC_MOTIVO'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(61223149338647341)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(63187615690384329)
,p_name=>'P249_DESCRIPCION'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(61223149338647341)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(63187738517384330)
,p_name=>'P249_OBSERVACION'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(61223149338647341)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(63187834646384331)
,p_name=>'P249_CALIFICACION'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(61223149338647341)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(63188466679384337)
,p_name=>'P249_ROW_ID_OBSERVACION'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(61223149338647341)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(63323624064651402)
,p_name=>'P249_TIP_COMPROBANTE'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(61223149338647341)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(63323713066651403)
,p_name=>'P249_SER_COMPROBANTE'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(61223149338647341)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(63323803887651404)
,p_name=>'P249_NRO_COMPROBANTE'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(61223149338647341)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(63326578336651431)
,p_name=>'P249_COD_CLIENTE'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(61223149338647341)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(63326613385651432)
,p_name=>'P249_NOM_CLIENTE'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(61223149338647341)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(63326762983651433)
,p_name=>'P249_DATOS_CONTACTO'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_imp.id(61223149338647341)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(64451671285711404)
,p_name=>'P249_COD_CLIENTE_CAB'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(61222386821647333)
,p_prompt=>'Cliente'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_CLIENTE'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  SELECT cod_cliente||'' - ''||nombre D, ',
'         cod_cliente R',
'    FROM cc_clientes c, personas p',
'   WHERE c.cod_empresa = :P_COD_EMPRESA ',
'     AND c.cod_persona = p.cod_persona ',
'     AND nvl(c.estado,''X'') = ''A'' ',
'ORDER BY nombre;'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'...'
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
 p_id=>wwv_flow_imp.id(64451838168711406)
,p_name=>'P249_INDICADOR_REPORTE_OBS'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(61223149338647341)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(64455109200711439)
,p_name=>'P249_INDICADOR_REP_SMROBRAS'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(61223149338647341)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(65271638496719723)
,p_name=>'P249_LLAMAR_SMOTOBRA'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_imp.id(61223149338647341)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(65273607645719743)
,p_name=>'P249_NRO_COMPROBANTE_MANDAR'
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_imp.id(61223149338647341)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(65273905599719746)
,p_name=>'P249_URL_258'
,p_item_sequence=>220
,p_item_plug_id=>wwv_flow_imp.id(61223149338647341)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(171355808981796110)
,p_name=>'P249_TIPO'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(61222386821647333)
,p_prompt=>'Tipo'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC2:TODOS;T,OBRAS;OBRA,VRF;VRF,MANTENIMIENTOS;MANT'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(63186025416384313)
,p_name=>'DA_CARGAR_REPORTE'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(63185996323384312)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(63186123267384314)
,p_event_id=>wwv_flow_imp.id(63186025416384313)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    IF :P249_ESTADO IS NULL THEN',
'',
'        IF :P249_INDICADOR_ALERT = ''2'' THEN',
'            :P249_INDICADOR_ALERT := ''2'';',
'        ELSE',
'            :P249_INDICADOR_ALERT := ''1'';',
'        END IF;    ',
'    ELSE',
'        :P249_INDICADOR_ALERT := ''0'';',
'        :P249_INDICADOR_REPORTE := ''1'';',
'        :P249_INDICADOR_REPORTE_OBS := ''0'';',
'    END IF;',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;'))
,p_attribute_02=>'P249_ESTADO,P249_INDICADOR_ALERT'
,p_attribute_03=>'P249_INDICADOR_ALERT ,P249_INDICADOR_REPORTE,P249_INDICADOR_REPORTE_OBS'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(64452148970711409)
,p_event_id=>wwv_flow_imp.id(63186025416384313)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'El estado no puede ser nulo.'
,p_attribute_02=>'ESTADO NULO'
,p_attribute_03=>'warning'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P249_INDICADOR_ALERT'
,p_client_condition_expression=>'1'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(64452209029711410)
,p_event_id=>wwv_flow_imp.id(63186025416384313)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    IF :P249_FECHA_FIN < :P249_FECHA_INI THEN',
'',
'        IF :P249_INDICADOR_ALERT = ''1'' THEN',
'            :P249_INDICADOR_ALERT := ''1'';',
'        ELSE',
'            :P249_INDICADOR_ALERT := ''2'';',
'        END IF;    ',
'    ELSE',
'        :P249_INDICADOR_ALERT := ''0'';',
'        :P249_INDICADOR_REPORTE := ''1'';',
'        :P249_INDICADOR_REPORTE_OBS := ''0'';',
'    END IF;',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;'))
,p_attribute_02=>'P249_FECHA_INI,P249_FECHA_FIN,P249_INDICADOR_ALERT,P249_TIPO'
,p_attribute_03=>'P249_INDICADOR_REPORTE,P249_INDICADOR_REPORTE_OBS,P249_INDICADOR_ALERT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(64452387526711411)
,p_event_id=>wwv_flow_imp.id(63186025416384313)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'La fecha final no puede ser menor a la fecha inicial.'
,p_attribute_02=>'FECHAS INVALIDAS'
,p_attribute_03=>'warning'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P249_INDICADOR_ALERT'
,p_client_condition_expression=>'2'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(63186281925384315)
,p_event_id=>wwv_flow_imp.id(63186025416384313)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(61223687045647346)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P249_INDICADOR_ALERT'
,p_client_condition_expression=>'0'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(64452423527711412)
,p_event_id=>wwv_flow_imp.id(63186025416384313)
,p_event_result=>'TRUE'
,p_action_sequence=>90
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P249_MONTO_PRESUPUESTO,P249_COSTO_PREVISTO,P249_COSTO_FIN,P249_DURACION_OBRA'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P249_INDICADOR_ALERT'
,p_client_condition_expression=>'0'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(63186684822384319)
,p_name=>'DA_SETEAR_DETALLES'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P249_ROW_ID_DETALLES'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(63186716163384320)
,p_event_id=>wwv_flow_imp.id(63186684822384319)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    SELECT MONTO_PRESUPUESTO, COSTO_PREVISTO, COSTO_FINAL, DURACION_OBRA',
'',
'    INTO :P249_MONTO_PRESUPUESTO, :P249_COSTO_PREVISTO, :P249_COSTO_FIN, :P249_DURACION_OBRA',
'',
'FROM SM_OT_OBRA',
'WHERE ROWID = :P249_ROW_ID_DETALLES',
'AND :P249_INDICADOR_REPORTE = ''1'';',
'',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;'))
,p_attribute_02=>'P249_INDICADOR_REPORTE,P249_ROW_ID_DETALLES'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(63186852907384321)
,p_event_id=>wwv_flow_imp.id(63186684822384319)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    SELECT TIP_COMPROBANTE, SER_COMPROBANTE, NRO_COMPROBANTE, COD_CLIENTE,',
'           NOM_CLIENTE, DATOS_CONTACTO',
'    INTO :P249_TIP_COMPROBANTE, :P249_SER_COMPROBANTE, :P249_NRO_COMPROBANTE, ',
'         :P249_COD_CLIENTE, :P249_NOM_CLIENTE, :P249_DATOS_CONTACTO',
'',
'    FROM SM_OT_OBRA',
'    WHERE ROWID = :P249_ROW_ID_DETALLES',
'    AND :P249_INDICADOR_REPORTE = ''1'';   ',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;',
'',
''))
,p_attribute_02=>'P249_INDICADOR_REPORTE,P249_ROW_ID_DETALLES'
,p_attribute_03=>'P249_TIP_COMPROBANTE,P249_SER_COMPROBANTE,P249_NRO_COMPROBANTE,P249_COD_CLIENTE,P249_NOM_CLIENTE,P249_DATOS_CONTACTO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(64452594314711413)
,p_event_id=>wwv_flow_imp.id(63186684822384319)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF :P249_NRO_COMPROBANTE IS NOT NULL THEN',
'			BEGIN',
'					SELECT round(nvl(sum(tot),0),0)',
'					INTO 	:P249_COSTO_FIN',
'					FROM (			',
'							SELECT ROUND( (NVL(sum(d.cantidad * d.costo),0))   ,0) tot',
'								FROM inv.st_entsal_cab c,',
'								     inv.st_entsal_det d',
'								WHERE c.cod_empresa= :P_COD_EMPRESA',
'								AND   c.tip_comprobante_ref = :P249_TIP_COMPROBANTE',
'								AND   c.ser_comprobante_ref = :P249_SER_COMPROBANTE',
'								AND   (c.nro_comprobante_ref = :P249_NRO_COMPROBANTE)',
'								AND   c.cod_empresa=d.cod_empresa',
'								AND   c.num_ent_sal=d.num_ent_sal',
'								AND   c.ser_ent_sal=d.ser_ent_sal',
'								AND   c.tip_ent_sal=d.tip_ent_sal ',
'							UNION ALL',
'							SELECT (c.tot_comprobante* nvl(c.tip_cambio,1)) tot',
'							FROM CP_COMPROBANTES_CABECERA c,',
'							     cp_conceptos e ,',
'							     cm_proveedores pr, ',
'							     personas pe',
'							WHERE c.cod_empresa= :P_COD_EMPRESA',
'							AND   c.tip_comprobante_ref= :P249_TIP_COMPROBANTE',
'							AND   c.ser_comprobante_ref= :P249_SER_COMPROBANTE',
'							AND   c.num_comprobante_ref= :P249_NRO_COMPROBANTE  ',
'							AND   c.cod_empresa = e.cod_empresa',
'							AND   c.cod_concepto = e.cod_concepto',
'							AND   pr.cod_empresa = c.cod_empresa',
'							AND   pr.cod_proveedor = c.cod_proveedor',
'							AND   pr.cod_persona = pe.cod_persona',
'						  union all',
'              select (c.tot_comprobante* nvl(c.tip_cambio,1)) tot',
'              from cm_compras_cabecera c ,',
'                   cm_proveedores pr, ',
'                   personas pe',
'              where c.cod_empresa= :P_COD_EMPRESA',
'                and   c.tip_obra= :P249_TIP_COMPROBANTE',
'                and   c.ser_obra= :P249_SER_COMPROBANTE',
'                and   c.nRO_obra= :P249_NRO_COMPROBANTE',
'                and   pr.cod_empresa = c.cod_empresa',
'                and   pr.cod_proveedor = c.cod_proveedor',
'                and   pr.cod_persona = pe.cod_persona	  ',
'					)  ;',
'			',
'			',
'			EXCEPTION ',
'					WHEN OTHERS THEN',
'							APEX_DEBUG.ERROR(SQLERRM);',
'			END;',
'END IF;'))
,p_attribute_02=>'P_COD_EMPRESA,P249_TIP_COMPROBANTE,P249_SER_COMPROBANTE,P249_NRO_COMPROBANTE'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(64451933852711407)
,p_event_id=>wwv_flow_imp.id(63186684822384319)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    :P249_INDICADOR_REPORTE_OBS := ''1'';',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;'))
,p_attribute_03=>'P249_INDICADOR_REPORTE_OBS'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(63325163108651417)
,p_name=>'DA_OCULTAR_BOTONES'
,p_event_sequence=>60
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(63327506050651441)
,p_name=>'DA_ELIMINAR_OBS'
,p_event_sequence=>90
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P249_ROW_ID_OBS_ELIMINAR'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(63327693420651442)
,p_event_id=>wwv_flow_imp.id(63327506050651441)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>unistr('\00BFDesea eliminar el registro?')
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(63327728362651443)
,p_event_id=>wwv_flow_imp.id(63327506050651441)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    DELETE CA_LLAMADAS_SALIENTES ',
'    WHERE ROWID = :P249_ROW_ID_OBS_ELIMINAR;',
'',
'',
'EXCEPTION',
'    WHEN OTHERS THEN    ',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;'))
,p_attribute_02=>'P249_ROW_ID_OBS_ELIMINAR'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(63327987023651445)
,p_name=>'DA_ABRIR_REGION_ED'
,p_event_sequence=>100
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P249_ROW_ID_OBS_EDITAR'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(63328294061651448)
,p_event_id=>wwv_flow_imp.id(63327987023651445)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    SELECT  OBSERVACION, COD_USUARIO, FEC_MOVIMIENTO, HORA_LLAMADA',
'    INTO  :P249_NOMBRE_CR_ED, :P249_COD_USUARIO, :P249_FEC_LLAMADA, :P249_HORA_LLAMADA    ',
'',
'    FROM CA_LLAMADAS_SALIENTES',
'    WHERE ROWID = :P249_ROW_ID_OBS_EDITAR;',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;'))
,p_attribute_02=>'P249_ROW_ID_OBS_EDITAR'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(64455399287711441)
,p_name=>'DA_ABRIR_REP_SMROBRAS'
,p_event_sequence=>120
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(64455272755711440)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(64455459343711442)
,p_event_id=>wwv_flow_imp.id(64455399287711441)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    :P249_INDICADOR_REP_SMROBRAS := ''1'';',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;'))
,p_attribute_03=>'P249_INDICADOR_REP_SMROBRAS'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(64455559381711443)
,p_event_id=>wwv_flow_imp.id(64455399287711441)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(64452612135711414)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(64455648423711444)
,p_event_id=>wwv_flow_imp.id(64455399287711441)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(64452612135711414)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(64455897820711446)
,p_name=>'DA_CERRAR_REGION_SMROBRAS'
,p_event_sequence=>130
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(64455749966711445)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(64455977441711447)
,p_event_id=>wwv_flow_imp.id(64455897820711446)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(64452612135711414)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(64636271235918843)
,p_name=>'DA_LIMPIAR_CAMPOS'
,p_event_sequence=>140
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(64636162428918842)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(64636317810918844)
,p_event_id=>wwv_flow_imp.id(64636271235918843)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P249_ESTADO,P249_FECHA_INI,P249_FECHA_FIN,P249_COD_CLIENTE_CAB,P249_COD_VENDEDOR'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(64636457198918845)
,p_event_id=>wwv_flow_imp.id(64636271235918843)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    :P249_INDICADOR_REPORTE := ''0'';',
'    :P249_INDICADOR_REPORTE_OBS := ''0'';',
'    :P249_INDICADOR_REP_SMROBRAS := ''0'';',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;'))
,p_attribute_03=>'P249_INDICADOR_REPORTE,P249_INDICADOR_REPORTE_OBS,P249_INDICADOR_REP_SMROBRAS'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(64636581976918846)
,p_event_id=>wwv_flow_imp.id(64636271235918843)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(61223687045647346)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(64636666431918847)
,p_event_id=>wwv_flow_imp.id(64636271235918843)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(64452612135711414)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(65271754116719724)
,p_name=>'DA_LLAMAR_SMOTOBRA'
,p_event_sequence=>150
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P249_LLAMAR_SMOTOBRA'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(65274242875719749)
,p_event_id=>wwv_flow_imp.id(65271754116719724)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    SELECT ',
'        NRO_COMPROBANTE',
'    INTO :P249_NRO_COMPROBANTE_MANDAR',
'    FROM SM_OT_OBRA',
'    WHERE ROWID = :P249_LLAMAR_SMOTOBRA;    ',
'',
'    APEX_DEBUG.ERROR(:P249_NRO_COMPROBANTE_MANDAR);',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;'))
,p_attribute_02=>'P249_LLAMAR_SMOTOBRA'
,p_attribute_03=>'P249_NRO_COMPROBANTE_MANDAR'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(65273722825719744)
,p_event_id=>wwv_flow_imp.id(65271754116719724)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'	SELECT APEX_PAGE.GET_URL (  p_page   => 258,',
'				    p_items  => ''P258_NRO_COMPROBANTE_RECIBIDO'',',
'				    p_values => (''''||:P249_NRO_COMPROBANTE_MANDAR||'''')) f_url_1',
'		INTO :P249_URL_258',
'		FROM DUAL;        ',
'	 ',
'    APEX_DEBUG.ERROR(:P249_URL_258);',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;'))
,p_attribute_02=>'P249_NRO_COMPROBANTE_MANDAR'
,p_attribute_03=>'P249_URL_258'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(65274193366719748)
,p_event_id=>wwv_flow_imp.id(65271754116719724)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var url = apex.item("P249_URL_258").getValue();',
'',
'    apex.navigation.redirect(url);'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(152903885248462227)
,p_name=>'New'
,p_event_sequence=>160
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(61223687045647346)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosecanceldialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(152903907590462228)
,p_event_id=>wwv_flow_imp.id(152903885248462227)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'$(''#buscar'').trigger(''click'');'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(61223365607647343)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_INIT'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    :P249_INDICADOR_ALERT := ''0'';',
'    :P249_INDICADOR_REPORTE := ''0'';',
'    :P249_INDICADOR_REPORTE_OBS := ''0'';',
'    :P249_INDICADOR_REP_SMROBRAS := ''0'';',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;'))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(63185839744384311)
,p_process_sequence=>20
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'PR_LIMPIAR_DATOS'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_process_when_type=>'NEVER'
);
wwv_flow_imp.component_end;
end;
/
