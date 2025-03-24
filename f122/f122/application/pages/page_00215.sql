prompt --application/pages/page_00215
begin
--   Manifest
--     PAGE: 00215
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
 p_id=>215
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'VTCANRET'
,p_alias=>'VTCANRET'
,p_step_title=>'VTCANRET'
,p_autocomplete_on_off=>'OFF'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.a-IRR-controlsContainer {',
'    display: none;',
'}',
'',
'.ui-dialog{',
'    width: 1500px !important;',
'    }'))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_last_updated_by=>'DFINO'
,p_last_upd_yyyymmddhh24miss=>'20221219145806'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(43198994274889718)
,p_plug_name=>unistr('Autorizaci\00F3n de movimientos de cheques')
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(47545159971299022)
,p_plug_name=>'Cab'
,p_parent_plug_id=>wwv_flow_imp.id(43198994274889718)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>50
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(43199259622889721)
,p_plug_name=>'CC_SOLICITUD_MOV_VALORES_CAB'
,p_parent_plug_id=>wwv_flow_imp.id(47545159971299022)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>60
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT SMV.SER_COMPROBANTE,',
'       SMV.NRO_COMPROBANTE,',
'       SMV.FEC_COMPROBANTE,',
'       SMV.COD_CLIENTE,',
'       (SELECT CC.COD_CLIENTE||'' - ''||NVL(P.NOMBRE, P.NOMB_FANTASIA)',
'          FROM CC_CLIENTES CC,',
'               PERSONAS P,',
'               CC_TIPO_CLIENTE TIP',
'         WHERE CC.COD_EMPRESA = SMV.COD_EMPRESA',
'           AND CC.COD_CLIENTE = SMV.COD_CLIENTE',
'           AND CC.COD_PERSONA = P.COD_PERSONA',
'           AND CC.TIP_CLIENTE = TIP.COD_TIP_CLIENTE )DESCRIPCION_CLIENTE,',
'       SMV.COD_MONEDA,',
'       (SELECT COD_MONEDA||'' - ''||DESCRIPCION',
'          FROM MONEDAS',
'         WHERE COD_MONEDA = SMV.COD_MONEDA) DESCRIPCION_MONEDA,',
'       SMV.TOT_DEBITO,',
'       SMV.OBSERVACION,',
'       SMV.COD_SUCURSAL,',
'       SMV.TIP_COMPROBANTE,',
'       SMV.PR_FMA,',
'       NULL DETALLE',
'  FROM CC_SOLICITUD_MOV_VALORES_CAB SMV',
' WHERE SMV.COD_EMPRESA = :P_COD_EMPRESA',
'   AND (SMV.TIP_COMPROBANTE = ''RTC'')',
'   AND SMV.TOT_DEBITO > 0',
'   --AND SMV.ESTADO = ''P''',
'   --AND (:P215_ESTADO_PEDIDO IS NULL OR :P215_ESTADO_PEDIDO = SMV.ESTADO)',
'   AND (:P215_DERIVADO IS NULL OR :P215_DERIVADO = SMV.DERIVADO)',
'   AND (:P215_COD_CLIENTE IS NULL OR :P215_COD_CLIENTE = SMV.COD_CLIENTE)',
'   AND (:P215_NRO_PEDIDO IS NULL OR UPPER(:P215_NRO_PEDIDO) = SMV.SER_COMPROBANTE||''-''||SMV.NRO_COMPROBANTE)',
'   AND (EXISTS(SELECT COD_CLIENTE ',
'                 FROM CC_CLIENTES CC ',
'                WHERE CC.COD_EMPRESA = :P_COD_EMPRESA',
'                  AND CC.COD_CLIENTE = SMV.COD_CLIENTE))',
'      AND EXISTS(SELECT B.COD_USUARIO',
'                   FROM CM_APRUEBA_DEPTO B',
'                  WHERE B.COD_USUARIO = :P_COD_USUARIO',
'                    AND B.COD_EMPRESA = :P_COD_EMPRESA)',
'   AND (SMV.DERIVADO IN(SELECT COD_DEPARTAMENTO',
'                          FROM CM_APRUEBA_DEPTO B',
'                         WHERE B.COD_USUARIO = :P_COD_USUARIO',
'                           AND B.COD_EMPRESA = :P_COD_EMPRESA)',
'        OR :P_COD_USUARIO = SMV.COD_USUARIO)',
'   AND NVL(SMV.ESTADO,''N'') NOT IN (''A'')',
'   AND (:P215_ESTADO_PEDIDO IS NULL',
'        OR (NVL(:P215_ESTADO_PEDIDO,''NN'') = ''S'' AND NVL(SMV.AUTORIZADO,''P'') = ''S'' AND NVL(SMV.ESTADO,''P'') <> ''F'')',
'        OR (NVL(:P215_ESTADO_PEDIDO,''NN'') = ''N'' AND NVL(SMV.AUTORIZADO,''P'') = ''N'')',
'        OR (NVL(:P215_ESTADO_PEDIDO,''NN'') = ''P'' AND NVL(SMV.AUTORIZADO,''P'') = ''P'')',
'        OR (NVL(:P215_ESTADO_PEDIDO,''NN'') = ''C'' AND NVL(SMV.AUTORIZADO,''P'') = ''C'')',
'        OR (NVL(:P215_ESTADO_PEDIDO,''NN'') = ''F'' AND NVL(SMV.ESTADO,''P'') = ''F'')',
'        OR (NVL(:P215_ESTADO_PEDIDO,''NN'') = ''T''))'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P_COD_EMPRESA,P215_ESTADO_PEDIDO,P215_DERIVADO,P215_COD_CLIENTE_AUX,P215_NRO_PEDIDO,P_COD_USUARIO'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'CC_SOLICITUD_MOV_VALORES_CAB'
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
 p_id=>wwv_flow_imp.id(43199320877889722)
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
,p_internal_uid=>43199320877889722
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43199573175889724)
,p_db_column_name=>'TIP_COMPROBANTE'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Tip Comprobante'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43199645787889725)
,p_db_column_name=>'SER_COMPROBANTE'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Serie'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43199783755889726)
,p_db_column_name=>'NRO_COMPROBANTE'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Nro'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43199849919889727)
,p_db_column_name=>'FEC_COMPROBANTE'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Fecha'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43199903772889728)
,p_db_column_name=>'COD_CLIENTE'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>unistr('C\00F3digo de Cliente')
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43200057829889729)
,p_db_column_name=>'COD_SUCURSAL'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Cod Sucursal'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43200180619889730)
,p_db_column_name=>'COD_MONEDA'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>unistr('C\00F3digo de Moneda')
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43200449809889733)
,p_db_column_name=>'TOT_DEBITO'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>unistr('Total D\00E9bito')
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_format_mask=>'999G999G999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43200690358889735)
,p_db_column_name=>'OBSERVACION'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>unistr('Observaci\00F3n')
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(47545867741299029)
,p_db_column_name=>'DESCRIPCION_CLIENTE'
,p_display_order=>140
,p_column_identifier=>'O'
,p_column_label=>'Cliente'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(47545986505299030)
,p_db_column_name=>'DESCRIPCION_MONEDA'
,p_display_order=>150
,p_column_identifier=>'P'
,p_column_label=>'Moneda'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(47547735438299048)
,p_db_column_name=>'DETALLE'
,p_display_order=>160
,p_column_identifier=>'Q'
,p_column_label=>'Detalle'
,p_column_link=>'javascript:$s(''P215_TIP_COMPROBANTE'',''#TIP_COMPROBANTE#''),$s(''P215_SER_COMPROBANTE'',''#SER_COMPROBANTE#''),$s(''P215_NRO_COMPROBANTE'',''#NRO_COMPROBANTE#''),$s(''P215_PR_FMA'',''#PR_FMA#''),$s(''P215_CLIENTE'',''#DESCRIPCION_CLIENTE#'');'
,p_column_linktext=>'<span class="fa fa-search">'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(48572696179708440)
,p_db_column_name=>'PR_FMA'
,p_display_order=>170
,p_column_identifier=>'R'
,p_column_label=>'Pr Fma'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(47563745105299479)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'475638'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>5
,p_report_columns=>'SER_COMPROBANTE:NRO_COMPROBANTE:FEC_COMPROBANTE:DESCRIPCION_CLIENTE:OBSERVACION:DESCRIPCION_MONEDA:TOT_DEBITO:DETALLE:'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(47545522379299026)
,p_plug_name=>'Det'
,p_parent_plug_id=>wwv_flow_imp.id(43198994274889718)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>60
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(48568846701708402)
,p_plug_name=>'VT_ANALIZA_CV_MOVIMIENTO_DOC'
,p_region_name=>'RDES'
,p_parent_plug_id=>wwv_flow_imp.id(47545522379299026)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select a.tipo_analisis, a.resultado, a.comentario',
'  from INV.VT_ANALIZA_CV_MOVIMIENTO_DOC a',
' where a.nro_comprobante = :P215_NRO_COMPROBANTE',
'   and a.ser_comprobante = :P215_SER_COMPROBANTE',
'   and tip_comprobante = :P215_TIP_COMPROBANTE',
'   AND comentario NOT IN (''N/A'')',
'group by a.tipo_analisis,a.resultado, a.comentario, ID_ANALISIS',
'ORDER BY ID_ANALISIS ASC;'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P215_NRO_COMPROBANTE,P215_SER_COMPROBANTE,P215_TIP_COMPROBANTE'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'VT_ANALIZA_CV_MOVIMIENTO_DOC'
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
 p_id=>wwv_flow_imp.id(48568921195708403)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_search_bar=>'N'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_enable_mail_download=>'Y'
,p_owner=>'DFINO'
,p_internal_uid=>48568921195708403
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(48569089883708404)
,p_db_column_name=>'TIPO_ANALISIS'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Tipo Analisis'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(48569110038708405)
,p_db_column_name=>'RESULTADO'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Resultado'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(48569252402708406)
,p_db_column_name=>'COMENTARIO'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Comentario'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(48600397320865274)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'486004'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'COMENTARIO:'
);
wwv_flow_imp_page.create_worksheet_condition(
 p_id=>wwv_flow_imp.id(48644478780979544)
,p_report_id=>wwv_flow_imp.id(48600397320865274)
,p_name=>'.'
,p_condition_type=>'HIGHLIGHT'
,p_allow_delete=>'Y'
,p_column_name=>'RESULTADO'
,p_operator=>'='
,p_expr=>'-1'
,p_condition_sql=>' (case when ("RESULTADO" = #APXWS_EXPR#) then #APXWS_HL_ID# end) '
,p_condition_display=>'#APXWS_COL_NAME# = ''-1''  '
,p_enabled=>'Y'
,p_highlight_sequence=>10
,p_row_font_color=>'#f44336'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(48569425050708408)
,p_plug_name=>'Det 2'
,p_parent_plug_id=>wwv_flow_imp.id(43198994274889718)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>70
,p_plug_new_grid_row=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(47546790525299038)
,p_plug_name=>'Ultimo Comentario'
,p_region_name=>'RDETA'
,p_parent_plug_id=>wwv_flow_imp.id(48569425050708408)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select fecha, hora , c.comentario,cod_usuario',
'  from INV.VT_SEGUIMIENTO_SOL_MOV_DOC c',
' where c.cod_empresa = :P_COD_EMPRESA',
'   and c.tip_comprobante = :P215_TIP_COMPROBANTE',
'   and c.ser_comprobante = :P215_SER_COMPROBANTE',
'   and c.NRO_COMPROBANTE = :P215_NRO_COMPROBANTE',
'   and c.fecha in (select max(c1.fecha)',
'                     from INV.VT_SEGUIMIENTO_SOL_MOV_DOC c1',
'                    where c1.cod_empresa = :P_COD_EMPRESA',
'                     and c1.tip_comprobante = :P215_TIP_COMPROBANTE',
'                     and c1.ser_comprobante = :P215_SER_COMPROBANTE',
'                     and c1.NRO_COMPROBANTE = :P215_NRO_COMPROBANTE)'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P_COD_EMPRESA,P215_TIP_COMPROBANTE,P215_SER_COMPROBANTE,P215_NRO_COMPROBANTE'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Ultimo Comentario'
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
 p_id=>wwv_flow_imp.id(47546884182299039)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_search_bar=>'N'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_enable_mail_download=>'Y'
,p_owner=>'DFINO'
,p_internal_uid=>47546884182299039
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(47547351731299044)
,p_db_column_name=>'FECHA'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Fecha'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(47547441755299045)
,p_db_column_name=>'HORA'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Hora'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(47547504917299046)
,p_db_column_name=>'COMENTARIO'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Comentario'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(47547686202299047)
,p_db_column_name=>'COD_USUARIO'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>unistr('C\00F3digo de Usuario')
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(48405768483129526)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'484058'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'FECHA:HORA:COMENTARIO:COD_USUARIO'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(48569785529708411)
,p_plug_name=>'Detalle de aprobacion y rechazo'
,p_parent_plug_id=>wwv_flow_imp.id(48569425050708408)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(47526871402138177)
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
 p_id=>wwv_flow_imp.id(49568115045128303)
,p_plug_name=>'Acciones'
,p_region_template_options=>'#DEFAULT#:js-dialog-autoheight:js-dialog-size720x480'
,p_plug_template=>wwv_flow_imp.id(40117728043263659)
,p_plug_display_sequence=>50
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(50533013025993633)
,p_plug_name=>'Contenedor Botones'
,p_parent_plug_id=>wwv_flow_imp.id(49568115045128303)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>10
,p_plug_grid_column_span=>8
,p_plug_display_column=>3
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(50530679927993609)
,p_plug_name=>'Vista Clientes'
,p_region_template_options=>'#DEFAULT#:js-dialog-autoheight:js-dialog-size600x400'
,p_plug_template=>wwv_flow_imp.id(40117728043263659)
,p_plug_display_sequence=>60
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(50531530800993618)
,p_plug_name=>'Pedidos Pendientes'
,p_parent_plug_id=>wwv_flow_imp.id(50530679927993609)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>50
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT SER_COMPROBANTE||''-''||NRO_COMPROBANTE COMPROBANTE,',
'       TOTAL_PEDIDO_MON_ORI,',
'       TOTAL_PEDIDO_US',
'  FROM VIEW_PEDIDOS_PENDIENTES_AUT',
' WHERE COD_CLIENTE = ''889''--:P215_COD_CLIENTE_AUX'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P215_COD_CLIENTE_AUX'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Pedidos Pendientes'
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
 p_id=>wwv_flow_imp.id(50532409622993627)
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
,p_internal_uid=>50532409622993627
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(50532736093993630)
,p_db_column_name=>'TOTAL_PEDIDO_MON_ORI'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Total Pedido Mon Ori'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(50532895014993631)
,p_db_column_name=>'TOTAL_PEDIDO_US'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Total Pedido Us'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(50532918540993632)
,p_db_column_name=>'COMPROBANTE'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Comprobante'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(50690997352188612)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'506910'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'COMPROBANTE:TOTAL_PEDIDO_MON_ORI:TOTAL_PEDIDO_US:'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(50533157504993634)
,p_plug_name=>'Contedor'
,p_parent_plug_id=>wwv_flow_imp.id(50530679927993609)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>60
,p_plug_new_grid_row=>false
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(50531450163993617)
,p_plug_name=>'Datos y Valores del Cliente'
,p_parent_plug_id=>wwv_flow_imp.id(50533157504993634)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>70
,p_plug_new_grid_row=>false
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(50533204021993635)
,p_plug_name=>'Saldo en Meses'
,p_parent_plug_id=>wwv_flow_imp.id(50533157504993634)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(60227975040608907)
,p_plug_name=>'Conceptos'
,p_parent_plug_id=>wwv_flow_imp.id(50530679927993609)
,p_region_template_options=>'#DEFAULT#:js-dialog-size600x400'
,p_plug_template=>wwv_flow_imp.id(40117728043263659)
,p_plug_display_sequence=>70
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(60229297636608920)
,p_plug_name=>'Ver Seguimientos'
,p_parent_plug_id=>wwv_flow_imp.id(50530679927993609)
,p_region_template_options=>'#DEFAULT#:js-dialog-autoheight:js-dialog-size600x400'
,p_plug_template=>wwv_flow_imp.id(40117728043263659)
,p_plug_display_sequence=>80
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(60229343930608921)
,p_plug_name=>'Seguimientos'
,p_parent_plug_id=>wwv_flow_imp.id(60229297636608920)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select fecha, hora , c.comentario,cod_usuario',
'  from INV.VT_SEGUIMIENTO_SOL_MOV_DOC c',
' where c.cod_empresa = :P_COD_EMPRESA',
'   and c.tip_comprobante = :P215_TIP_COMPROBANTE',
'   and c.ser_comprobante = :P215_SER_COMPROBANTE',
'   and c.NRO_COMPROBANTE = :P215_NRO_COMPROBANTE'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P_COD_EMPRESA,P215_TIP_COMPROBANTE,P215_SER_COMPROBANTE,P215_NRO_COMPROBANTE'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Seguimientos'
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
 p_id=>wwv_flow_imp.id(60229464907608922)
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
,p_internal_uid=>60229464907608922
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(60229505654608923)
,p_db_column_name=>'FECHA'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Fecha'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(60229695182608924)
,p_db_column_name=>'HORA'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Hora'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(60229725560608925)
,p_db_column_name=>'COMENTARIO'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Comentario'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(60229814249608926)
,p_db_column_name=>'COD_USUARIO'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Cod. Usuario'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(63269733024700046)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'632698'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'FECHA:HORA:COMENTARIO:COD_USUARIO'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(60228204597608910)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(60227975040608907)
,p_button_name=>'BTADD_SEG'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Aceptar'
,p_button_position=>'BELOW_BOX'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(49568658968128308)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(50533013025993633)
,p_button_name=>'BTSALDOS'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--padTop:t-Button--padBottom'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Reporte Saldos'
,p_button_redirect_url=>'f?p=&APP_ID.:85:&SESSION.::&DEBUG.:85:P85_COD_CLIENTE,P85_CONTROL_LLAMADO:&P215_COD_CLIENTE_AUX.,215'
,p_button_cattributes=>'style = "width: 100%;"'
,p_grid_new_row=>'Y'
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
 p_id=>wwv_flow_imp.id(49568741105128309)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(50533013025993633)
,p_button_name=>'BTHISTORIAL_CLIENTE'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--padTop:t-Button--padBottom'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Historial Cliente'
,p_warn_on_unsaved_changes=>null
,p_button_cattributes=>'style = "width: 100%;"'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(49568809612128310)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(50533013025993633)
,p_button_name=>'BTVER_MOV'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--padTop:t-Button--padBottom'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Ver Movimientos'
,p_warn_on_unsaved_changes=>null
,p_button_cattributes=>'style = "width: 100%;"'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(49568927988128311)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(50533013025993633)
,p_button_name=>'BTANA_CAN_VERD'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--padTop:t-Button--padBottom'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Analizar Canal Verde'
,p_button_cattributes=>'style = "width: 100%;"'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(49569070337128312)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_imp.id(50533013025993633)
,p_button_name=>'BTVER_PEDIDOS'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--padTop:t-Button--padBottom'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Ver Pedidos'
,p_button_redirect_url=>'f?p=&APP_ID.:214:&SESSION.::&DEBUG.:214:P214_IND_DEVUELTO:&P215_IND_DEVUELTO.'
,p_button_cattributes=>'style = "width: 100%;"'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(49569176360128313)
,p_button_sequence=>70
,p_button_plug_id=>wwv_flow_imp.id(50533013025993633)
,p_button_name=>'BTVER_DATOS'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--padTop:t-Button--padBottom'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Ver Datos'
,p_button_redirect_url=>'f?p=&APP_ID.:162:&SESSION.::&DEBUG.:162:P162_COD_CLIENTE:&P215_COD_CLIENTE_AUX.'
,p_button_cattributes=>'style = "width: 100%;"'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(49569210535128314)
,p_button_sequence=>80
,p_button_plug_id=>wwv_flow_imp.id(50533013025993633)
,p_button_name=>'BTPERSONAS'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--padTop:t-Button--padBottom'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Personas'
,p_button_redirect_url=>'f?p=&APP_ID.:102:&SESSION.::&DEBUG.:102:P102_PERS_COD_PERSONA,P102_CONTROL_PAG_ORIG:&P215_COD_PERSONA_AUX.,215'
,p_button_cattributes=>'style = "width: 100%;"'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(49569307483128315)
,p_button_sequence=>90
,p_button_plug_id=>wwv_flow_imp.id(50533013025993633)
,p_button_name=>'BTAUTORIZADOS'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--padTop:t-Button--padBottom'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Autorizados'
,p_button_redirect_url=>'f?p=&APP_ID.:129:&SESSION.::&DEBUG.:129:P129_COD_PERSONA,P129_CONTROL_PAG_ORI:&P215_COD_PERSONA_AUX.,215'
,p_button_cattributes=>'style = "width: 100%;"'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(49569420583128316)
,p_button_sequence=>100
,p_button_plug_id=>wwv_flow_imp.id(50533013025993633)
,p_button_name=>'BTOBSERVACIONES'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--padTop:t-Button--padBottom'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Observaciones'
,p_button_cattributes=>'style = "width: 100%;"'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(49569660604128318)
,p_button_sequence=>120
,p_button_plug_id=>wwv_flow_imp.id(50533013025993633)
,p_button_name=>'BTAGREGAR_SEG'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--padTop:t-Button--padBottom'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Agregar Seguimiento'
,p_warn_on_unsaved_changes=>null
,p_button_cattributes=>'style = "width: 100%;"'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(49569703792128319)
,p_button_sequence=>130
,p_button_plug_id=>wwv_flow_imp.id(50533013025993633)
,p_button_name=>'BTDERIVAR'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--padTop:t-Button--padBottom'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Derivar'
,p_button_cattributes=>'style = "width: 100%;"'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(49569829753128320)
,p_button_sequence=>140
,p_button_plug_id=>wwv_flow_imp.id(50533013025993633)
,p_button_name=>'BTVER_SEG'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--padTop:t-Button--padBottom'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Ver Seguimiento'
,p_warn_on_unsaved_changes=>null
,p_button_cattributes=>'style = "width: 100%;"'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(49569977513128321)
,p_button_sequence=>150
,p_button_plug_id=>wwv_flow_imp.id(50533013025993633)
,p_button_name=>'BTVER_PEDIDO'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--padTop:t-Button--padBottom'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Ver Pedido'
,p_warn_on_unsaved_changes=>null
,p_button_cattributes=>'style = "width: 100%;"'
,p_grid_new_row=>'Y'
,p_grid_column_span=>4
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(49568240383128304)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(43198994274889718)
,p_button_name=>'BTACCIONES'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Acciones'
,p_button_position=>'COPY'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(48570857538708422)
,p_button_sequence=>70
,p_button_plug_id=>wwv_flow_imp.id(48569785529708411)
,p_button_name=>'BTAUTO_COBRANZA'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Autorizado Cobranza'
,p_button_position=>'TOP'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(48570946347708423)
,p_button_sequence=>80
,p_button_plug_id=>wwv_flow_imp.id(48569785529708411)
,p_button_name=>'BTAUTO_AF'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Autorizado A y F'
,p_button_position=>'TOP'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(49569530281128317)
,p_button_sequence=>110
,p_button_plug_id=>wwv_flow_imp.id(48569785529708411)
,p_button_name=>'BTANULAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Anular'
,p_button_position=>'TOP'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(49570052057128322)
,p_button_sequence=>160
,p_button_plug_id=>wwv_flow_imp.id(48569785529708411)
,p_button_name=>'BTRECHAZAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Rechazar'
,p_button_position=>'TOP'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(49570189698128323)
,p_button_sequence=>170
,p_button_plug_id=>wwv_flow_imp.id(48569785529708411)
,p_button_name=>'BTAUTORIZAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Autorizar'
,p_button_position=>'TOP'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(43199120012889720)
,p_name=>'P215_COD_MODULO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(43198994274889718)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(47545273083299023)
,p_name=>'P215_DERIVADO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(47545159971299022)
,p_prompt=>'Derivado'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:FACTURACION;F,COBRANZAS;CO,CREDITOS;CR,DIRECTORIO;DI,RRHH;RH,CANJE;CA,MARKETING;MA,ANULACION;AN,AUTORIZADO A FACTURA;AF,VENTAS;VE,AUTORIZACION CREDITOS;AC,SUPERVISION DE VALORES;SV,CANJE PUBLICIDAD;CP,ARREGLOS ADMINISTRATIVOS;AA,TESORERIA;TE,D'
||'ISTRIBUCION;RP,AUTORIZACION VALORES;AV,GERENCIA ADMINISTRATIVA;GA'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(47545397894299024)
,p_name=>'P215_COD_CLIENTE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(47545159971299022)
,p_prompt=>'Cliente'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_CLIENTES_VTCANRET'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select /*+rule*/  nombre, nomb_fantasia, cod_cliente, codigo_area, num_telefono, cod_ident, numero ',
'  from cc_clientes, personas p, telef_personas pt, ident_personas pi',
' where cc_clientes.cod_empresa = :P_COD_EMPRESA ',
'   and cc_clientes.cod_persona = p.cod_persona',
'   and p.cod_persona = pt.cod_persona(+) ',
'   and p.cod_persona = pi.cod_persona(+) ',
'  order by nombre',
'',
''))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'Todos'
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
 p_id=>wwv_flow_imp.id(47545444548299025)
,p_name=>'P215_NRO_PEDIDO'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(47545159971299022)
,p_prompt=>'Nro. Pedido'
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
 p_id=>wwv_flow_imp.id(47545640065299027)
,p_name=>'P215_ESTADO_PEDIDO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(47545159971299022)
,p_item_default=>'P'
,p_prompt=>'Estado Pedido'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:Vto Bo Comercial;S,Rechazado;N,Pendientes;P,Autorizado A&F;S,Autorizado Cobranza;C,Anulado;A'
,p_lov_display_null=>'YES'
,p_lov_null_text=>'Todos'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(47546965944299040)
,p_name=>'P215_TIP_COMPROBANTE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(43199259622889721)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(47547075349299041)
,p_name=>'P215_SER_COMPROBANTE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(43199259622889721)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(47547130898299042)
,p_name=>'P215_NRO_COMPROBANTE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(43199259622889721)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(48569806877708412)
,p_name=>'P215_USUA_AUT_COB'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(48569785529708411)
,p_prompt=>'Usuario Aut. Cobranza'
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
 p_id=>wwv_flow_imp.id(48569919682708413)
,p_name=>'P215_USUA_AUT_A_F'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(48569785529708411)
,p_prompt=>'Usuario Aut. A&F'
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
 p_id=>wwv_flow_imp.id(48570007377708414)
,p_name=>'P215_USUA_RECH'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(48569785529708411)
,p_prompt=>'Rechazado por'
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
 p_id=>wwv_flow_imp.id(48570131971708415)
,p_name=>'P215_FECH_AUT_COB'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(48569785529708411)
,p_prompt=>'Fecha Aut. Cobranza'
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
 p_id=>wwv_flow_imp.id(48570233488708416)
,p_name=>'P215_FECH_AUT_A_F'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(48569785529708411)
,p_prompt=>'Fecha Aut. A&F'
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
 p_id=>wwv_flow_imp.id(48570394667708417)
,p_name=>'P215_FECH_RECHAZADO'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(48569785529708411)
,p_prompt=>'Fecha de Rechazo'
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
 p_id=>wwv_flow_imp.id(48571003074708424)
,p_name=>'P215_PEDIDO'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(47545159971299022)
,p_prompt=>'Pedido'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_colspan=>3
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(48571190596708425)
,p_name=>'P215_MENSAJE'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(43199259622889721)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(48571746243708431)
,p_name=>'P215_CONTROL'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(43199259622889721)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(48572001907708434)
,p_name=>'P215_MENSAJE_AF'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(43199259622889721)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(48572788684708441)
,p_name=>'P215_PR_FMA'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(43199259622889721)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(48572863654708442)
,p_name=>'P215_MESAJE_AF_2'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(43199259622889721)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(48573198479708445)
,p_name=>'P215_CONTROL_AUTORIZA'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(43199259622889721)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(49568568729128307)
,p_name=>'P215_PEDIDO_ACC'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(49568115045128303)
,p_prompt=>'Pedido'
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
 p_id=>wwv_flow_imp.id(49571085188128332)
,p_name=>'P215_CLIENTE'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(43199259622889721)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(49571141045128333)
,p_name=>'P215_TOT_DEB'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(43199259622889721)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(49571319629128335)
,p_name=>'P215_MENSAJE_RECHAZO'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(43199259622889721)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(49571672648128338)
,p_name=>'P215_IND_DEVUELTO'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(43199259622889721)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(50530169159993604)
,p_name=>'P215_COD_CLIENTE_AUX'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(43199259622889721)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(50530963670993612)
,p_name=>'P215_COD_CLIENTE_VISTA'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(50530679927993609)
,p_prompt=>'Cliente'
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
 p_id=>wwv_flow_imp.id(50531049449993613)
,p_name=>'P215_LIMITE_CREDITO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(50530679927993609)
,p_prompt=>unistr('L\00EDmite Cr\00E9dito')
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
 p_id=>wwv_flow_imp.id(50531172863993614)
,p_name=>'P215_LINEA_EJECUTADA'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(50530679927993609)
,p_prompt=>'Linea Ejecutada'
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
 p_id=>wwv_flow_imp.id(50531241529993615)
,p_name=>'P215_PORC'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(50530679927993609)
,p_prompt=>'Porc.'
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
 p_id=>wwv_flow_imp.id(50531665356993619)
,p_name=>'P215_VALORES_AL_COBRO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(50531450163993617)
,p_prompt=>'Valores Al Cobro'
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
 p_id=>wwv_flow_imp.id(50531700833993620)
,p_name=>'P215_SALDO_1_30'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(50531450163993617)
,p_prompt=>'Saldo 1 30'
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
 p_id=>wwv_flow_imp.id(50531874313993621)
,p_name=>'P215_SALDO_31_60'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(50531450163993617)
,p_prompt=>'Saldo 31 60'
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
 p_id=>wwv_flow_imp.id(50531940248993622)
,p_name=>'P215_SALDO_61_90'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(50531450163993617)
,p_prompt=>'Saldo 61 90'
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
 p_id=>wwv_flow_imp.id(50532098789993623)
,p_name=>'P215_SALDO_MAYOR_90'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(50531450163993617)
,p_prompt=>'Saldo Mayor 90'
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
 p_id=>wwv_flow_imp.id(50532134894993624)
,p_name=>'P215_CARTA_GARANTIA_GS'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(50531450163993617)
,p_prompt=>unistr('Carta Garant\00EDa GS')
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
 p_id=>wwv_flow_imp.id(50532276959993625)
,p_name=>'P215_CARTA_GARANTIA_US'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(50531450163993617)
,p_prompt=>unistr('Carta Garant\00EDa US')
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
 p_id=>wwv_flow_imp.id(50532347504993626)
,p_name=>'P215_SALDO_CHP'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(50531450163993617)
,p_prompt=>'Saldo CHP'
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
 p_id=>wwv_flow_imp.id(50533304131993636)
,p_name=>'P215_MES_6'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(50533204021993635)
,p_prompt=>'Mes 6'
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
 p_id=>wwv_flow_imp.id(50533467144993637)
,p_name=>'P215_MES_5'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(50533204021993635)
,p_prompt=>'Mes 5'
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
 p_id=>wwv_flow_imp.id(50533592733993638)
,p_name=>'P215_MES_4'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(50533204021993635)
,p_prompt=>'Mes 4'
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
 p_id=>wwv_flow_imp.id(50533622829993639)
,p_name=>'P215_MES_3'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(50533204021993635)
,p_prompt=>'Mes 3'
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
 p_id=>wwv_flow_imp.id(50533722888993640)
,p_name=>'P215_MES_2'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(50533204021993635)
,p_prompt=>'Mes 2'
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
 p_id=>wwv_flow_imp.id(50533831093993641)
,p_name=>'P215_MES_1'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(50533204021993635)
,p_prompt=>'Mes 1'
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
 p_id=>wwv_flow_imp.id(50533904680993642)
,p_name=>'P215_MES_ANTERIOR'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(50533204021993635)
,p_prompt=>'Mes Anterior'
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
 p_id=>wwv_flow_imp.id(50534061316993643)
,p_name=>'P215_MES_ACTUAL'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(50533204021993635)
,p_prompt=>'Mes Actual'
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
 p_id=>wwv_flow_imp.id(50534153004993644)
,p_name=>'P215_MES_SIGUIENTE'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(50533204021993635)
,p_prompt=>'Mes Siguiente'
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
 p_id=>wwv_flow_imp.id(50534213402993645)
,p_name=>'P215_MES_SIGUIENTE_ADEL'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(50533204021993635)
,p_prompt=>'Saldo Mayor 90'
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
 p_id=>wwv_flow_imp.id(50534321445993646)
,p_name=>'P215_CALIF_CARPETA'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(50533204021993635)
,p_prompt=>unistr('Calificaci\00F3n Carpeta')
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
 p_id=>wwv_flow_imp.id(50534475116993647)
,p_name=>'P215_VENTAS_ANT_GS'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(50533204021993635)
,p_prompt=>unistr('Ventas A\00F1o Anterior Gs')
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
 p_id=>wwv_flow_imp.id(50534555500993648)
,p_name=>'P215_VENTAS_ACT_GS'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(50533204021993635)
,p_prompt=>unistr('Ventas A\00F1o Actual Gs')
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
 p_id=>wwv_flow_imp.id(50534649268993649)
,p_name=>'P215_VENTAS_ANT_US'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(50533204021993635)
,p_prompt=>unistr('Ventas A\00F1o Anterior Us')
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
 p_id=>wwv_flow_imp.id(50534799762993650)
,p_name=>'P215_VENTAS_ACT_US'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(50533204021993635)
,p_prompt=>unistr('Ventas A\00F1o Actual Us')
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
 p_id=>wwv_flow_imp.id(50719433995458501)
,p_name=>'P215_PUBLICIDAD_ANIO_ANT'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(50533204021993635)
,p_prompt=>unistr('Publicidad A\00F1o Anterior')
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
 p_id=>wwv_flow_imp.id(50719508109458502)
,p_name=>'P215_PUBLICIDAD_ANIO_ACT'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_imp.id(50533204021993635)
,p_prompt=>unistr('Publicidad A\00F1o Actual')
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
 p_id=>wwv_flow_imp.id(50719609689458503)
,p_name=>'P215_GARANTIA__ANIO_ANT'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_imp.id(50533204021993635)
,p_prompt=>unistr('Garantia  A\00F1o Anterior')
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
 p_id=>wwv_flow_imp.id(50719746104458504)
,p_name=>'P215_GARANTIA_ANIO_ACT'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_imp.id(50533204021993635)
,p_prompt=>unistr('Garant\00EDa A\00F1o Actual')
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
 p_id=>wwv_flow_imp.id(50720161320458508)
,p_name=>'P215_COD_PERSONA_AUX'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(43199259622889721)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(51234867427511049)
,p_name=>'P215_URL'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(49568115045128303)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(60228025800608908)
,p_name=>'P215_COMENTARIO_SEG'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(60227975040608907)
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
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(47546100209299032)
,p_name=>'DA_REFRESH_1'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P215_ESTADO_PEDIDO'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(47546231823299033)
,p_event_id=>wwv_flow_imp.id(47546100209299032)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(43199259622889721)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(47546351463299034)
,p_name=>'DA_REFRESH_2'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P215_DERIVADO'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(47546462504299035)
,p_event_id=>wwv_flow_imp.id(47546351463299034)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(43199259622889721)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(48570520583708419)
,p_event_id=>wwv_flow_imp.id(47546351463299034)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P215_TIP_COMPROBANTE,P215_SER_COMPROBANTE,P215_NRO_COMPROBANTE,P215_PEDIDO'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(48570686514708420)
,p_event_id=>wwv_flow_imp.id(47546351463299034)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(48568846701708402)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(48570798908708421)
,p_event_id=>wwv_flow_imp.id(47546351463299034)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(47546790525299038)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(47546517406299036)
,p_name=>'DA_REFRESH_3'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P215_COD_CLIENTE'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(47546616710299037)
,p_event_id=>wwv_flow_imp.id(47546517406299036)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(43199259622889721)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(47547869095299049)
,p_name=>'DA_REFRESH_4'
,p_event_sequence=>40
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P215_TIP_COMPROBANTE'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(48568713205708401)
,p_event_id=>wwv_flow_imp.id(47547869095299049)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'null;'
,p_attribute_02=>'P215_SER_COMPROBANTE,P215_TIP_COMPROBANTE,P215_NRO_COMPROBANTE,P215_USUA_AUT_COB,P215_FECH_AUT_COB,P215_USUA_AUT_A_F,P215_FECH_AUT_A_F,P215_USUA_RECH,P215_FECH_RECHAZADO,P215_PR_FMA,P215_TOT_DEB'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(48570453275708418)
,p_event_id=>wwv_flow_imp.id(47547869095299049)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    VTCANRET.CARGAR_DET_APRO_RECH(ptip_comprobante => :P215_TIP_COMPROBANTE,',
'                                  pser_comprobante => :P215_SER_COMPROBANTE,',
'                                  pnro_comprobante => :P215_NRO_COMPROBANTE,',
'                                  pcod_empresa     => :P_COD_EMPRESA,',
'                                  pusua_apro_cob   => :P215_USUA_AUT_COB,',
'                                  pfech_apro_cob   => :P215_FECH_AUT_COB,',
'                                  pusua_apro_af    => :P215_USUA_AUT_A_F,',
'                                  pfech_apro_af    => :P215_FECH_AUT_A_F,',
'                                  pusua_rechazado  => :P215_USUA_RECH,',
'                                  pfech_rechazado  => :P215_FECH_RECHAZADO,',
'                                  ptot_deb         => :P215_TOT_DEB,',
'                                  pind_devuelto    => :P215_IND_DEVUELTO,',
'                                  pcod_cliente     => :P215_COD_CLIENTE_AUX,',
'                                  pcod_persona     => :P215_COD_PERSONA_AUX);',
'',
'    :P215_PEDIDO := :P215_SER_COMPROBANTE||''-''||:P215_NRO_COMPROBANTE;',
'',
'    :P215_PEDIDO_ACC := :P215_PEDIDO;',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'    APEX_DEBUG.ERROR(''DA_REFRESH_4 CARGA DATOS ''||SQLERRM);',
'END;'))
,p_attribute_02=>'P215_TIP_COMPROBANTE,P215_SER_COMPROBANTE,P215_NRO_COMPROBANTE,P_COD_EMPRESA'
,p_attribute_03=>'P215_USUA_AUT_COB,P215_FECH_AUT_COB,P215_USUA_AUT_A_F,P215_FECH_AUT_A_F,P215_USUA_RECH,P215_FECH_RECHAZADO,P215_PEDIDO,P215_PEDIDO_ACC,P215_TOT_DEB,P215_IND_DEVUELTO,P215_COD_CLIENTE_AUX,P215_COD_PERSONA_AUX'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(47547993636299050)
,p_event_id=>wwv_flow_imp.id(47547869095299049)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(47546790525299038)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(48569391631708407)
,p_event_id=>wwv_flow_imp.id(47547869095299049)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(48568846701708402)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(60230109102608929)
,p_event_id=>wwv_flow_imp.id(47547869095299049)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(60229343930608921)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(48571226921708426)
,p_name=>'DA_AUTO_COBRANZA'
,p_event_sequence=>50
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(48570857538708422)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(48571363521708427)
,p_event_id=>wwv_flow_imp.id(48571226921708426)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_02=>'P215_TIP_COMPROBANTE,P215_SER_COMPROBANTE,P215_NRO_COMPROBANTE,P215_MENSAJE,P215_DERIVADO,P215_CONTROL'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(48571417277708428)
,p_event_id=>wwv_flow_imp.id(48571226921708426)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    IF :P215_PEDIDO IS NULL THEN',
'        :P215_CONTROL := 1;',
'    ELSE ',
'        VTCANRET.AUTO_COBRANZA(ptip_comprobante => :P215_TIP_COMPROBANTE,',
'                               pser_comprobante => :P215_SER_COMPROBANTE,',
'                               pnro_comprobante => :P215_NRO_COMPROBANTE,',
'                               pderivado        => :P215_DERIVADO,',
'                               pcod_empresa     => :P_COD_EMPRESA,',
'                               pcod_usuario     => :P_COD_USUARIO,',
'                               pmensaje_cob     => :P215_MENSAJE);',
'        :P215_CONTROL := 2;                    ',
'    END IF;',
'    ',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'    :P215_CONTROL := 0; ',
'    APEX_DEBUG.ERROR(''DA_AUTO_COBRANZA ''||SQLERRM);',
'END;'))
,p_attribute_02=>'P215_TIP_COMPROBANTE,P215_SER_COMPROBANTE,P215_NRO_COMPROBANTE,P215_DERIVADO,P_COD_EMPRESA,P_COD_USUARIO,P215_PEDIDO'
,p_attribute_03=>'P215_MENSAJE,P215_CONTROL'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(48571922554708433)
,p_event_id=>wwv_flow_imp.id(48571226921708426)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    VTCANRET.CARGAR_DET_APRO_RECH(ptip_comprobante => :P215_TIP_COMPROBANTE,',
'                                  pser_comprobante => :P215_SER_COMPROBANTE,',
'                                  pnro_comprobante => :P215_NRO_COMPROBANTE,',
'                                  pcod_empresa     => :P_COD_EMPRESA,',
'                                  pusua_apro_cob   => :P215_USUA_AUT_COB,',
'                                  pfech_apro_cob   => :P215_FECH_AUT_COB,',
'                                  pusua_apro_af    => :P215_USUA_AUT_A_F,',
'                                  pfech_apro_af    => :P215_FECH_AUT_A_F,',
'                                  pusua_rechazado  => :P215_USUA_RECH,',
'                                  pfech_rechazado  => :P215_FECH_RECHAZADO);',
'',
'    --:P215_PEDIDO := :P215_SER_COMPROBANTE||''-''||:P215_NRO_COMPROBANTE;',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'    APEX_DEBUG.ERROR(''DA_AUTO_COBRANZA CARGA DATOS ''||SQLERRM);',
'END;'))
,p_attribute_02=>'P215_TIP_COMPROBANTE,P215_SER_COMPROBANTE,P215_NRO_COMPROBANTE,P_COD_EMPRESA'
,p_attribute_03=>'P215_USUA_AUT_COB,P215_FECH_AUT_COB,P215_USUA_AUT_A_F,P215_FECH_AUT_A_F,P215_USUA_RECH,P215_FECH_RECHAZADO,P215_PEDIDO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'NOT_EQUALS'
,p_client_condition_element=>'P215_CONTROL'
,p_client_condition_expression=>'2'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(48571887285708432)
,p_event_id=>wwv_flow_imp.id(48571226921708426)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'Seleccione un registro a autorizar.'
,p_attribute_02=>'Aviso'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P215_CONTROL'
,p_client_condition_expression=>'1'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(48571540513708429)
,p_name=>'DA_MENSAJE'
,p_event_sequence=>60
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P215_MENSAJE'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(48571632708708430)
,p_event_id=>wwv_flow_imp.id(48571540513708429)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'&P215_MENSAJE.'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P215_MENSAJE'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(48572172781708435)
,p_name=>'DA_AUTO_AF'
,p_event_sequence=>70
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(48570946347708423)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(48572273542708436)
,p_event_id=>wwv_flow_imp.id(48572172781708435)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_02=>'P215_TIP_COMPROBANTE,P215_SER_COMPROBANTE,P215_NRO_COMPROBANTE,P215_DERIVADO,P215_MENSAJE_AF,P215_PR_FMA,P215_MESAJE_AF_2'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(48572358296708437)
,p_event_id=>wwv_flow_imp.id(48572172781708435)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    IF :P215_USUA_AUT_COB IS NULL THEN',
'        :P215_MENSAJE_AF := ''Sigue Pendiente a Jefatura Cobranza'';',
'    ELSE ',
'        VTCANRET.AUTO_AF(ptip_comprobante => :P215_TIP_COMPROBANTE,',
'                         pser_comprobante => :P215_SER_COMPROBANTE,',
'                         pnro_comprobante => :P215_NRO_COMPROBANTE,',
'                         pderivado        => :P215_DERIVADO,',
'                         pcod_empresa     => :P_COD_EMPRESA,',
'                         pcod_usuario     => :P_COD_USUARIO,',
'                         ppr_fma          => :P215_PR_FMA,',
'                         pmensaje_cob     => :P215_MESAJE_AF_2);',
'        ',
'        :P215_MENSAJE_AF := NULL;',
'    END IF;',
'EXCEPTION',
'    WHEN OTHERS THEN',
'    APEX_DEBUG.ERROR(''DA_AUTO_AF ''||SQLERRM);',
'END;'))
,p_attribute_02=>'P215_USUA_AUT_COB,P215_TIP_COMPROBANTE,P215_SER_COMPROBANTE,P215_NRO_COMPROBANTE,P215_DERIVADO,P215_PR_FMA,P_COD_USUARIO,P_COD_EMPRESA'
,p_attribute_03=>'P215_MENSAJE_AF,P215_MESAJE_AF_2'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(48572469126708438)
,p_name=>'DA_MENSAJE_AF'
,p_event_sequence=>80
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P215_MENSAJE_AF'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(48572526318708439)
,p_event_id=>wwv_flow_imp.id(48572469126708438)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'&P215_MENSAJE_AF.'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P215_MENSAJE_AF'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(48572954698708443)
,p_name=>'DA_MENSAJE_AF_2'
,p_event_sequence=>90
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P215_MESAJE_AF_2'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(48573079960708444)
,p_event_id=>wwv_flow_imp.id(48572954698708443)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'&P215_MESAJE_AF_2.'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P215_MESAJE_AF_2'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(49567909742128301)
,p_name=>'DA_REFRESH_5'
,p_event_sequence=>100
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P215_NRO_PEDIDO'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(49568001572128302)
,p_event_id=>wwv_flow_imp.id(49567909742128301)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(43199259622889721)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(49568343890128305)
,p_name=>'DA_ABRIR_MODAL'
,p_event_sequence=>110
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(49568240383128304)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(49568438006128306)
,p_event_id=>wwv_flow_imp.id(49568343890128305)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(49568115045128303)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(49570213497128324)
,p_name=>'DA_ANULAR'
,p_event_sequence=>120
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(49569530281128317)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(49570346208128325)
,p_event_id=>wwv_flow_imp.id(49570213497128324)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(49570439772128326)
,p_event_id=>wwv_flow_imp.id(49570213497128324)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    VTCANRET.ANULAR(ptip_comprobante => :P215_TIP_COMPROBANTE,',
'                    pser_comprobante => :P215_SER_COMPROBANTE,',
'                    pnro_comprobante => :P215_NRO_COMPROBANTE,',
'                    pcod_empresa     => :P_COD_EMPRESA);',
'EXCEPTION',
'    WHEN OTHERS THEN',
'    APEX_DEBUG.ERROR(''DA_ANULAR ''||SQLERRM);',
'END;'))
,p_attribute_02=>'P215_TIP_COMPROBANTE,P215_SER_COMPROBANTE,P215_NRO_COMPROBANTE,P_COD_EMPRESA'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(49570787741128329)
,p_event_id=>wwv_flow_imp.id(49570213497128324)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'Comprobante anulado correctamente.'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(49570597713128327)
,p_event_id=>wwv_flow_imp.id(49570213497128324)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(49568115045128303)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(49570605958128328)
,p_event_id=>wwv_flow_imp.id(49570213497128324)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(43199259622889721)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(49570848827128330)
,p_name=>'DA_RECHAZAR'
,p_event_sequence=>130
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(49570052057128322)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(49570945534128331)
,p_event_id=>wwv_flow_imp.id(49570848827128330)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>unistr('\00BFEst\00E1 seguro de rechazar la solicitud &P215_SER_COMPROBANTE. &P215_NRO_COMPROBANTE. cliente: &P215_CLIENTE. Total: &P215_TOT_DEB. ?')
,p_attribute_02=>'Aviso'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(49571254650128334)
,p_event_id=>wwv_flow_imp.id(49570848827128330)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    VTCANRET.RECHAZAR(ptip_comprobante => :P215_TIP_COMPROBANTE,',
'                      pser_comprobante => :P215_SER_COMPROBANTE,',
'                      pnro_comprobante => :P215_NRO_COMPROBANTE,',
'                      pcod_empresa     => :P_COD_EMPRESA,',
'                      pcod_usuario     => :P_COD_USUARIO,',
'                      pmensaje_rech    => :P215_MENSAJE_RECHAZO);',
'EXCEPTION',
'    WHEN OTHERS THEN',
'    APEX_DEBUG.ERROR(''DA_RECHAZAR ''||SQLERRM);',
'END;'))
,p_attribute_02=>'P215_TIP_COMPROBANTE,P215_SER_COMPROBANTE,P215_NRO_COMPROBANTE,P_COD_USUARIO,P_COD_EMPRESA'
,p_attribute_03=>'P215_MENSAJE_RECHAZO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(49571405718128336)
,p_name=>'DA_MENSAJE_RECHAZO'
,p_event_sequence=>140
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P215_MENSAJE_RECHAZO'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(49571543892128337)
,p_event_id=>wwv_flow_imp.id(49571405718128336)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'&P215_MENSAJE_RECHAZO.'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P215_MENSAJE_RECHAZO'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(48573225930708446)
,p_name=>'DA_AUTORIZAR'
,p_event_sequence=>150
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(49570189698128323)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(48573311156708447)
,p_event_id=>wwv_flow_imp.id(48573225930708446)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_02=>'P215_TIP_COMPROBANTE,P215_SER_COMPROBANTE,P215_NRO_COMPROBANTE,P215_CONTROL_AUTORIZA,P215_USUA_AUT_A_F'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(48573423273708448)
,p_event_id=>wwv_flow_imp.id(48573225930708446)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'apex_debug.error(''P215_USUA_AUT_COB ''||:P215_USUA_AUT_COB);',
'apex_debug.error(''P215_USUA_AUT_A_F ''||:P215_USUA_AUT_A_F);',
'',
'    IF :P215_USUA_AUT_COB IS NULL THEN',
'',
'        :P215_CONTROL_AUTORIZA := 1;   ',
'',
'    ELSE',
'        :P215_CONTROL_AUTORIZA := 0;',
'',
'        IF :P215_USUA_AUT_A_F IS NULL THEN',
'',
'            :P215_CONTROL_AUTORIZA := 2;',
'',
'        ELSE',
'        ',
'            :P215_CONTROL_AUTORIZA := 0;           ',
'            ',
'        END IF;',
'',
'    END IF;',
'EXCEPTION',
'    WHEN OTHERS THEN',
'    :P215_CONTROL_AUTORIZA := 0;',
'    APEX_DEBUG.ERROR(''DA_AUTORIZAR ''||SQLERRM);',
'END;'))
,p_attribute_02=>'P215_USUA_AUT_COB,P215_USUA_AUT_A_F'
,p_attribute_03=>'P215_CONTROL_AUTORIZA'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(48573598111708449)
,p_event_id=>wwv_flow_imp.id(48573225930708446)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'Sigue Pendiente a Jefatura Cobranza'
,p_attribute_02=>'Aviso'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P215_CONTROL_AUTORIZA'
,p_client_condition_expression=>'1'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(48573605926708450)
,p_event_id=>wwv_flow_imp.id(48573225930708446)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'Sigue Pendiente a A&f.'
,p_attribute_02=>'Aviso'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P215_CONTROL_AUTORIZA'
,p_client_condition_expression=>'2'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(50529800590993601)
,p_event_id=>wwv_flow_imp.id(48573225930708446)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>unistr('\00BFEst\00E1 seguro de Autorizar la solicitud &P215_SER_COMPROBANTE. &P215_NRO_COMPROBANTE. cliente: &P215_CLIENTE. Total: &P215_TOT_DEB. ?')
,p_attribute_02=>'Aviso'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P215_CONTROL_AUTORIZA'
,p_client_condition_expression=>'0'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(50529905212993602)
,p_event_id=>wwv_flow_imp.id(48573225930708446)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    VTCANRET.AUTORIZAR(ptip_comprobante => :P215_TIP_COMPROBANTE,',
'                       pser_comprobante => :P215_SER_COMPROBANTE,',
'                       pnro_comprobante => :P215_NRO_COMPROBANTE,',
'                       pcod_empresa     => :P_COD_EMPRESA,',
'                       pcod_usuario     => :P_COD_USUARIO);',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'    APEX_DEBUG.ERROR(''DA_AUTORIZAR OK ''||SQLERRM);',
'END;'))
,p_attribute_02=>'P215_TIP_COMPROBANTE,P215_SER_COMPROBANTE,P215_NRO_COMPROBANTE,P_COD_USUARIO,P_COD_EMPRESA'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P215_CONTROL_AUTORIZA'
,p_client_condition_expression=>'0'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(50530093806993603)
,p_event_id=>wwv_flow_imp.id(48573225930708446)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'Comprobante autorizado correctamente.'
,p_attribute_02=>'Aviso'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P215_CONTROL_AUTORIZA'
,p_client_condition_expression=>'0'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(50530400240993607)
,p_name=>'DA_VER_MOVIMIENTOS'
,p_event_sequence=>160
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(49568809612128310)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(50530591501993608)
,p_event_id=>wwv_flow_imp.id(50530400240993607)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'VNOMB_CLIENTE VARCHAR2(4000);',
'BEGIN',
'    SP_ACTUALIZA_CLIENTES_DATOS(P_COD_CLIENTE => :P215_COD_CLIENTE_AUX);',
'',
'    VNOMB_CLIENTE := :P215_COD_CLIENTE_AUX || '' - '' || VTCANRET.OBTENER_DESC_CLIEN(pcod_empresa => :P_COD_EMPRESA,',
'                                                                                   pcod_cliente => :P215_COD_CLIENTE_AUX);',
'',
'    :P215_COD_CLIENTE_VISTA := VNOMB_CLIENTE;',
'EXCEPTION',
'    WHEN OTHERS THEN',
'    APEX_DEBUG.ERROR(''DA_VER_MOVIMIENTOS ''||SQLERRM);',
'END;'))
,p_attribute_02=>'P215_COD_CLIENTE_AUX,P_COD_EMPRESA'
,p_attribute_03=>'P215_COD_CLIENTE_VISTA'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(50531382354993616)
,p_event_id=>wwv_flow_imp.id(50530400240993607)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    VTCANRET.CARGAR_VISTA_CLIENTES(pcod_cliente       => :P215_COD_CLIENTE_AUX,',
'                                   pser_comprobante   => :P215_SER_COMPROBANTE,',
'                                   pnro_comprobante   => :P215_NRO_COMPROBANTE,',
'                                   plimite            => :P215_LIMITE_CREDITO,',
'                                   plinea             => :P215_LINEA_EJECUTADA,',
'                                   pporc              => :P215_PORC,',
'                                   pvalores_cobro     => :P215_VALORES_AL_COBRO,',
'                                   psaldo_1_30        => :P215_SALDO_1_30,',
'                                   psaldo_31_60       => :P215_SALDO_31_60,',
'                                   psaldo_61_90       => :P215_SALDO_61_90,',
'                                   psaldo_mayor_90    => :P215_SALDO_MAYOR_90,',
'                                   pcarta_gar_gs      => :P215_CARTA_GARANTIA_GS,',
'                                   pcarta_gar_us      => :P215_CARTA_GARANTIA_US,',
'                                   psaldo_cph         => :P215_SALDO_CHP,',
'                                   pcalif_carpeta     => :P215_CALIF_CARPETA,',
'                                   pventas_ant_gs     => :P215_VENTAS_ANT_GS,',
'                                   pventas_act_gs     => :P215_VENTAS_ACT_GS,',
'                                   pventas_ant_us     => :P215_VENTAS_ANT_US,',
'                                   pventas_act_us     => :P215_VENTAS_ACT_US,',
'                                   ppubli_anio_ant    => :P215_PUBLICIDAD_ANIO_ANT,',
'                                   ppubli_anio_act    => :P215_PUBLICIDAD_ANIO_ACT,',
'                                   pgarantia_anio_ant => :P215_GARANTIA__ANIO_ANT,',
'                                   pgarantia_anio_act => :P215_GARANTIA_ANIO_ACT);',
'',
'    VTCANRET.CARGAR_LOGICA_MES(pmes_ant          => :P215_MES_ANTERIOR,',
'                               pmes_ant_menos_1  => :P215_MES_1,',
'                               pmes_ant_menos_2  => :P215_MES_2,',
'                               pmes_ant_menos_3  => :P215_MES_3,',
'                               pmes_ant_menos_4  => :P215_MES_4,',
'                               pmes_ant_menos_5  => :P215_MES_5,',
'                               pmes_ant_menos_6  => :P215_MES_6,',
'                               pmes_actual       => :P215_MES_ACTUAL,',
'                               pmes_siguente     => :P215_MES_SIGUIENTE,',
'                               pmes_sig_adelante => :P215_MES_SIGUIENTE_ADEL);',
'EXCEPTION',
'    WHEN OTHERS THEN',
'    APEX_DEBUG.ERROR(''DA_VER_MOVIMIENTOS CARGAR_DATOS ''||SQLERRM);',
'END;'))
,p_attribute_02=>'P215_COD_CLIENTE_AUX,P215_SER_COMPROBANTE,P215_NRO_COMPROBANTE'
,p_attribute_03=>'P215_LIMITE_CREDITO,P215_LINEA_EJECUTADA,P215_PORC,P215_MES_6,P215_MES_5,P215_MES_4,P215_MES_3,P215_MES_2,P215_MES_1,P215_MES_ANTERIOR,P215_MES_ACTUAL,P215_MES_SIGUIENTE,P215_MES_SIGUIENTE_ADEL,P215_VALORES_AL_COBRO,P215_SALDO_1_30,P215_SALDO_31_60,P'
||'215_SALDO_61_90,P215_SALDO_MAYOR_90,P215_SALDO_CHP,P215_CARTA_GARANTIA_GS,P215_CARTA_GARANTIA_US,P215_CALIF_CARPETA,P215_VENTAS_ANT_GS,P215_VENTAS_ACT_GS,P215_VENTAS_ANT_US,P215_VENTAS_ACT_US,P215_PUBLICIDAD_ANIO_ANT,P215_PUBLICIDAD_ANIO_ACT,P215_GAR'
||'ANTIA__ANIO_ANT,P215_GARANTIA_ANIO_ACT'
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
 p_id=>wwv_flow_imp.id(50530877954993611)
,p_event_id=>wwv_flow_imp.id(50530400240993607)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(49568115045128303)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(50530788766993610)
,p_event_id=>wwv_flow_imp.id(50530400240993607)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(50530679927993609)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(50720632945458513)
,p_name=>'DA_VER_PEDIDO'
,p_event_sequence=>170
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(49569977513128321)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(50720757250458514)
,p_event_id=>wwv_flow_imp.id(50720632945458513)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'Reporte desestimado'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(51234930015511050)
,p_name=>'DA_IMPRIMIR'
,p_event_sequence=>180
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(49568741105128309)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(51560929670250201)
,p_event_id=>wwv_flow_imp.id(51234930015511050)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'VANIO_1 NUMBER;',
'VANIO_2 NUMBER;',
'BEGIN',
'    SELECT EXTRACT(YEAR FROM TO_DATE(ADD_MONTHS(SYSDATE,-12),''DD/MM/YYYY''))',
'      INTO VANIO_1',
'      FROM DUAL;',
'',
'    SELECT EXTRACT(YEAR FROM TO_DATE(SYSDATE,''DD/MM/YYYY''))',
'      INTO VANIO_2',
'      FROM DUAL;',
'',
'    :P215_URL := ''https://ngosaeca.com.py/reportes/rest_v2/reports/reports/CCRHISTC.pdf?''||',
'                 ''P_REFINANCIACION=N&P_TIP_CLIENTE=~NULL~&P_CHEQUE=N&P_COD_CORPORACION=~NULL~&''||',
'                 ''P_COD_CUSTODIO=~NULL~&P_NRO_COMPROBANTE=~NULL~&P_COD_PERSONA=~NULL~&P_VER_OBS=N&''||',
'                 ''P_VER_CONTADO=~NULL~&P_MES=~NULL~&P_ANIO_C1=''||VANIO_1||''&P_VER_PAGOS=S&P_ANIO_C2=''||VANIO_2||''&''||',
'                 ''P_ATRASO_B=~NULL~&P_SECTOR=~NULL~&P_OBSERVACIONES=~NULL~&P_COD_MONEDA_CUOTA=~NULL~&''||',
'                 ''P_MOROSIDAD=N&P_COD_EMPRESA=''||:P_COD_EMPRESA||''&P_COD_CLIENTE=''||:P215_COD_CLIENTE_AUX||',
'                 ''&P_ANIO_2=~NULL~&P_VER_SCORING=N&P_ATRASO_A=N&P_COD_SECTOR=~NULL~&P_USER=''||:P_COD_USUARIO||''&P_ANIO=~NULL~'';',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'    APEX_DEBUG.ERROR(''DA_IMPRIMIR ''||SQLERRM);',
'END;'))
,p_attribute_02=>'P215_COD_CLIENTE_AUX,P_COD_EMPRESA,P_COD_USUARIO'
,p_attribute_03=>'P215_URL'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(51561092340250202)
,p_event_id=>wwv_flow_imp.id(51234930015511050)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'console.log($v(''P215_URL''));',
'window.open(unescape($v(''P215_URL'').replace(/&amp;/g,''g'')),"_blank");'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(60228338812608911)
,p_name=>'DA_AGREGAR_SEG'
,p_event_sequence=>190
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(49569660604128318)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(60228485878608912)
,p_event_id=>wwv_flow_imp.id(60228338812608911)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P215_COMENTARIO_SEG'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(60228502982608913)
,p_event_id=>wwv_flow_imp.id(60228338812608911)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(60227975040608907)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(60228654766608914)
,p_name=>'DA_ADD_SEG'
,p_event_sequence=>200
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(60228204597608910)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(60228714133608915)
,p_event_id=>wwv_flow_imp.id(60228654766608914)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_02=>'P215_COMENTARIO_SEG'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(60228874030608916)
,p_event_id=>wwv_flow_imp.id(60228654766608914)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    VTCANRET.ADD_SEGUIMIENTO(pcod_empresa     => :P_COD_EMPRESA,',
'                             pcod_usuario     => :P_COD_USUARIO,',
'                             pcomentario      => :P215_COMENTARIO_SEG,',
'                             ptip_comprobante => :P215_TIP_COMPROBANTE,',
'                             pser_comprobante => :P215_SER_COMPROBANTE,',
'                             pnro_comprobante => :P215_NRO_COMPROBANTE);',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'    APEX_DEBUG.ERROR(''DA_ADD_SEG ''||SQLERRM);',
'END;'))
,p_attribute_02=>'P_COD_EMPRESA,P_COD_USUARIO,P215_COMENTARIO_SEG,P215_TIP_COMPROBANTE,P215_SER_COMPROBANTE,P215_NRO_COMPROBANTE'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(60228931261608917)
,p_event_id=>wwv_flow_imp.id(60228654766608914)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(60227975040608907)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(60229072241608918)
,p_event_id=>wwv_flow_imp.id(60228654766608914)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(49568115045128303)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(60229154601608919)
,p_event_id=>wwv_flow_imp.id(60228654766608914)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(47546790525299038)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(60229910414608927)
,p_name=>'DA_VER_SEG'
,p_event_sequence=>210
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(49569829753128320)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(60230067278608928)
,p_event_id=>wwv_flow_imp.id(60229910414608927)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(60229297636608920)
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(43199076061889719)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_INIT'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P215_COD_MODULO := NVL(:P_COD_MODULO, ''VT'');',
''))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_imp.component_end;
end;
/
