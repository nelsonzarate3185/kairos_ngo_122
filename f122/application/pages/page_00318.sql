prompt --application/pages/page_00318
begin
--   Manifest
--     PAGE: 00318
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
 p_id=>318
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'CAGEVISP'
,p_alias=>'CTOTSSOL'
,p_step_title=>'CAGEVISP'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.a-IRR-header  a , #checktext {color: yellow; }',
'.a-IRR-header {    background-color: darkblue;',
'background-image: darkblue; ',
'',
' ',
'}',
'',
'.t-Body-mainContent  { ',
'                        background: #082b642f!important;',
'                    } ',
'',
'#PARAMETROS { ',
'                        background: #4a60852f !important;  ',
'                    } ',
'  ',
'  .t-Form-label{',
'                color:  #003A85  !important;  ',
'                font-weight: bold;   ',
'                } ',
' ',
' .rep .a-GV-w-hdr{ ',
'   overflow-x: auto !important;',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_last_updated_by=>'JUANSA'
,p_last_upd_yyyymmddhh24miss=>'20240916121437'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(77467528960092309)
,p_plug_name=>'GESTION DE ENTREGAS - SPP'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>990
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(75760253737816736)
,p_plug_name=>'VARIABLES'
,p_parent_plug_id=>wwv_flow_imp.id(77467528960092309)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(77467620401092310)
,p_plug_name=>'REPORTE'
,p_parent_plug_id=>wwv_flow_imp.id(77467528960092309)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>30
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select NRO_MOVIMIENTO,',
'    rowid id,',
'    null VER,',
'    FEC_VISITA,',
'    TO_CHAR(FEC_VISITA,''DAY'')dia,',
'    HORA_VISITA,',
'    SER_COMPROBANTE,',
'    TIP_COMPROBANTE,',
'    NRO_COMPROBANTE,',
'    COD_CLIENTE,',
'    (select '' ''||descripcion',
'      from CA_MOTIVO_VISITA',
'      where cod_motivo = AA.COD_MOTIVO_VISITA) MOTIVO_VISITA,',
'    ES_REAGENDA ,',
'    REALIZADO,',
'    CONTACTO,',
'    null detalle,',
'    NULL DIR,',
'    NULL ENCUESTA',
'from CA_GESTIONES_VISITAS AA',
'where :P318_EJECUTAR_REPORTE = ''EJECUTAR''',
'AND cod_empresa = NVL(:P_COD_EMPRESA,:P318_COD_EMPRESA)',
'and nvl(origen,''0'') in (''1'',''24'',''3'',''33'',''42'')',
'AND (trunc(FEC_VISITA) >=  TO_DATE(:P318_FECHA_INI,''DD/MM/YYYY'')  OR :P318_FECHA_INI IS NULL )',
'AND (trunc(FEC_VISITA) <= TO_DATE(:P318_FECHA_FIN,''DD/MM/YYYY'') OR :P318_FECHA_FIN IS NULL )',
'',
'AND NVL(:P318_COD_TECNICO,COD_TECNICO ) = COD_TECNICO',
'AND NVL(:P318_CLIENTE,COD_CLIENTE ) = COD_CLIENTE ',
'AND NVL(:P318_NRO_OT,NRO_COMPROBANTE ) = NRO_COMPROBANTE ',
'AND NVL(:P318_SER_OT,SER_COMPROBANTE ) = SER_COMPROBANTE ',
'',
'AND ( ',
'       (:P318_VISUAL=''D'' and trunc(aa.fec_visita)=trunc(sysdate)) or',
'       (:P318_VISUAL=''M'' and TO_CHAR(aa.fec_visita,''MMYYYY'')=TO_CHAR(sysdate,''MMYYYY'')) or   ',
'       (:P318_VISUAL=''S'' and TO_CHAR(aa.fec_visita,''WWYYYY'')=TO_CHAR(sysdate,''WWYYYY'')) or ',
'       (:P318_VISUAL=''T'') ',
'    )',
'',
'AND ( ',
'       (:P318_ESTADO=''A'' and REALIZADO=''P'' ) or',
'       (:P318_ESTADO=''R'' and REALIZADO=''S'' ) or',
'       (:P318_ESTADO=''C'' and REALIZADO=''N'' ) or',
'       (:P318_ESTADO=''T'') ',
'    )',
'',
'',
'',
'AND (:P318_ZONA =''T'' OR',
'     (',
'	:P318_ZONA=''C'' AND ',
'   	EXISTS( select DISTINCT ''1''',
'	from ciudades CC',
'	where CC.cod_pais=''PAR''',
'	AND   CC.COD_CIUDAD= AA.COD_CIUDAD',
'	AND   CC.COD_PROVINCIA= AA.COD_PROVINCIA',
'	AND   AA.COD_PROVINCIA in (''11'',''18'')',
'	AND   AA.COD_CIUDAD NOT IN (''21'',''23'',''7'',''14'',''18'',''20'')',
'     ) )',
'OR',
'	(  ',
'	:P318_ZONA=''I'' AND ',
'    	EXISTS( select DISTINCT ''1''',
'	from ciudades CC',
'	where CC.cod_pais=''PAR''',
'	AND   CC.COD_CIUDAD= AA.COD_CIUDAD',
'	AND   CC.COD_PROVINCIA= AA.COD_PROVINCIA',
'	AND   ( AA.COD_PROVINCIA not in (''11'',''18'')',
'	OR AA.COD_CIUDAD IN (''21'',''23'',''7'',''14'',''18'',''20''))',
'     )',
'',
'    )',
')',
'AND (ES_REAGENDA =''S'' OR  NVL(:P318_VER_REAG,''N'')=''N'')',
' ',
'order by AA.fec_visita, AA.hora_visita;',
'',
'',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P318_ZONA, P318_SER_OT, P318_CLIENTE,P318_VER_REAG, P318_FECHA_FIN, P318_FECHA_INI, P318_COD_ESTADO, P318_VISUAL,P318_COD_TECNICO, P318_COD_EMPRESA,P318_EJECUTAR_REPORTE,P318_ESTADO,P318_NRO_OT'
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
 p_id=>wwv_flow_imp.id(77470672390092340)
,p_max_row_count=>'100'
,p_no_data_found_message=>'NO SE ENCONTRARON REGISTROS'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_fixed_header=>'REGION'
,p_fixed_header_max_height=>400
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'JUANASIS'
,p_internal_uid=>77470672390092340
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(387041947895889150)
,p_db_column_name=>'NRO_MOVIMIENTO'
,p_display_order=>10
,p_column_identifier=>'S'
,p_column_label=>'Nro.'
,p_column_link=>'f?p=&APP_ID.:434:&SESSION.::&DEBUG.::P434_NRO_MOVIMIENTO,P434_P_NRO_MOVIMIENTO,P434_V_CONTROL:#NRO_MOVIMIENTO#,#NRO_MOVIMIENTO#,1'
,p_column_linktext=>'#NRO_MOVIMIENTO#'
,p_column_link_attr=>'target="_blank"'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(77470796020092341)
,p_db_column_name=>'FEC_VISITA'
,p_display_order=>20
,p_column_identifier=>'A'
,p_column_label=>'Fecha'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(399810431150424201)
,p_db_column_name=>'DIA'
,p_display_order=>30
,p_column_identifier=>'T'
,p_column_label=>'Dia'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(78062074686098213)
,p_db_column_name=>'TIP_COMPROBANTE'
,p_display_order=>40
,p_column_identifier=>'C'
,p_column_label=>'Tip Comprobante'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(78063190967098224)
,p_db_column_name=>'VER'
,p_display_order=>50
,p_column_identifier=>'D'
,p_column_label=>'Ver'
,p_column_link=>'f?p=&APP_ID.:434:&SESSION.::&DEBUG.:Y,:P434_NRO_MOVIMIENTO,P434_V_CONTROL:,1'
,p_column_linktext=>'<span class="fa fa-plus" aria-hidden="true"></span>'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(78063255237098225)
,p_db_column_name=>'HORA_VISITA'
,p_display_order=>60
,p_column_identifier=>'E'
,p_column_label=>'Hora Visita'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_format_mask=>'HH24:MI'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(78063392150098226)
,p_db_column_name=>'DIR'
,p_display_order=>70
,p_column_identifier=>'F'
,p_column_label=>'Dir'
,p_column_link=>'javascript:$s(''P318_MENSAJE'',''#VER#'');'
,p_column_linktext=>'<span aria-hidden="true" class="fa fa-binoculars"></span>'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(78063446594098227)
,p_db_column_name=>'ENCUESTA'
,p_display_order=>80
,p_column_identifier=>'G'
,p_column_label=>'Encuesta'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(78064020104098233)
,p_db_column_name=>'NRO_COMPROBANTE'
,p_display_order=>90
,p_column_identifier=>'H'
,p_column_label=>'Nro OT'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(78064193526098234)
,p_db_column_name=>'COD_CLIENTE'
,p_display_order=>100
,p_column_identifier=>'I'
,p_column_label=>'Cliente'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_rpt_named_lov=>wwv_flow_imp.id(6969834837818791)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(78064394740098236)
,p_db_column_name=>'ES_REAGENDA'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Es Reagenda'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(78064495612098237)
,p_db_column_name=>'REALIZADO'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Realizado'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(78064507541098238)
,p_db_column_name=>'DETALLE'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Detalle'
,p_column_link=>'javascript:$s(''P318_DETALLE_ID'',''#ID#'');'
,p_column_linktext=>'<span class="fa fa-search" aria-hidden="true"></span>'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(78064784476098240)
,p_db_column_name=>'ID'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>'Id'
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
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(78065170012098244)
,p_db_column_name=>'CONTACTO'
,p_display_order=>150
,p_column_identifier=>'O'
,p_column_label=>'Contacto'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(78065275563098245)
,p_db_column_name=>'SER_COMPROBANTE'
,p_display_order=>160
,p_column_identifier=>'P'
,p_column_label=>'Serie'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(78065648739098249)
,p_db_column_name=>'MOTIVO_VISITA'
,p_display_order=>170
,p_column_identifier=>'R'
,p_column_label=>'Motivo Visita'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(77611528485724276)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'776116'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'NRO_MOVIMIENTO:DIA:FEC_VISITA:HORA_VISITA:SER_COMPROBANTE:NRO_COMPROBANTE:COD_CLIENTE:MOTIVO_VISITA:DETALLE:'
);
wwv_flow_imp_page.create_worksheet_condition(
 p_id=>wwv_flow_imp.id(399817061763427017)
,p_report_id=>wwv_flow_imp.id(77611528485724276)
,p_name=>'Cancelado'
,p_condition_type=>'HIGHLIGHT'
,p_allow_delete=>'Y'
,p_column_name=>'REALIZADO'
,p_operator=>'='
,p_expr=>'N'
,p_condition_sql=>' (case when ("REALIZADO" = #APXWS_EXPR#) then #APXWS_HL_ID# end) '
,p_condition_display=>'#APXWS_COL_NAME# = ''N''  '
,p_enabled=>'Y'
,p_highlight_sequence=>10
,p_row_bg_color=>'#ffd6d2'
,p_row_font_color=>'#000000'
);
wwv_flow_imp_page.create_worksheet_condition(
 p_id=>wwv_flow_imp.id(399817444932427017)
,p_report_id=>wwv_flow_imp.id(77611528485724276)
,p_name=>'Pendiente'
,p_condition_type=>'HIGHLIGHT'
,p_allow_delete=>'Y'
,p_column_name=>'REALIZADO'
,p_operator=>'='
,p_expr=>'P'
,p_condition_sql=>' (case when ("REALIZADO" = #APXWS_EXPR#) then #APXWS_HL_ID# end) '
,p_condition_display=>'#APXWS_COL_NAME# = ''P''  '
,p_enabled=>'Y'
,p_highlight_sequence=>10
,p_row_bg_color=>'#cce5ff'
,p_row_font_color=>'#000000'
);
wwv_flow_imp_page.create_worksheet_condition(
 p_id=>wwv_flow_imp.id(399817821976427017)
,p_report_id=>wwv_flow_imp.id(77611528485724276)
,p_name=>'Finalizado'
,p_condition_type=>'HIGHLIGHT'
,p_allow_delete=>'Y'
,p_column_name=>'REALIZADO'
,p_operator=>'='
,p_expr=>'S'
,p_condition_sql=>' (case when ("REALIZADO" = #APXWS_EXPR#) then #APXWS_HL_ID# end) '
,p_condition_display=>'#APXWS_COL_NAME# = ''S''  '
,p_enabled=>'Y'
,p_highlight_sequence=>10
,p_row_bg_color=>'#9adfa7'
,p_row_font_color=>'#000000'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(77468072509092314)
,p_plug_name=>'DETALLE'
,p_region_name=>'PARAMETROS'
,p_parent_plug_id=>wwv_flow_imp.id(77467528960092309)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>40
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(77469349703092327)
,p_button_sequence=>220
,p_button_plug_id=>wwv_flow_imp.id(75760253737816736)
,p_button_name=>'BT_EJECUTAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--iconLeft:t-Button--stretch:t-Button--gapTop'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Ejecutar'
,p_warn_on_unsaved_changes=>null
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
,p_grid_column_span=>1
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(77470551524092339)
,p_button_sequence=>290
,p_button_plug_id=>wwv_flow_imp.id(75760253737816736)
,p_button_name=>'BT_LIMPIAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--iconLeft:t-Button--stretch:t-Button--gapTop'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Limpiar'
,p_warn_on_unsaved_changes=>null
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
,p_grid_column_span=>1
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(75760359224816737)
,p_name=>'P318_LOGO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(75760253737816736)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(75760447727816738)
,p_name=>'P318_DERECHOS'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(75760253737816736)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(75760523978816739)
,p_name=>'P318_NRO_ORDEN'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(75760253737816736)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(75760612518816740)
,p_name=>'P318_COD_MODULO'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(75760253737816736)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(75760739517816741)
,p_name=>'P318_COD_ESTADO'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(75760253737816736)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(75760878072816742)
,p_name=>'P318_NOM_ESTADO'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(75760253737816736)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(75760948714816743)
,p_name=>'P318_COD_FORMA'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(75760253737816736)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(75761124721816745)
,p_name=>'P318_NOM_FORMA'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(75760253737816736)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(75761218714816746)
,p_name=>'P318_COD_EMPRESA'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(75760253737816736)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(75761305838816747)
,p_name=>'P318_NOM_EMPRESA'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(75760253737816736)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(75761434686816748)
,p_name=>'P318_COD_SUCURSAL'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(75760253737816736)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(75761512258816749)
,p_name=>'P318_NOM_SUCURSAL'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(75760253737816736)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(75761699464816750)
,p_name=>'P318_COD_USUARIO'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(75760253737816736)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(77466758624092301)
,p_name=>'P318_COD_IDIOMA'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_imp.id(75760253737816736)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(77467929846092313)
,p_name=>'P318_TITULO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(75760253737816736)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(77468405565092318)
,p_name=>'P318_COD_TECNICO'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_imp.id(75760253737816736)
,p_prompt=>'Tecnico'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select V.COD_TECNICO ||'' - ''||nvl(p.nombre,p.nomb_fantasia) nombre , v.cod_tecnico ',
'				from vt_tecnicos v, personas p ',
'				where v.cod_empresa = :P_COD_EMPRESA',
'				and v.cod_persona = p.cod_persona '))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'TODOS'
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
 p_id=>wwv_flow_imp.id(77468597566092319)
,p_name=>'P318_CLIENTE'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_imp.id(75760253737816736)
,p_prompt=>'Cliente'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ltrim(rtrim(nvl(p.nombre, p.nomb_fantasia)))nom, c.cod_cliente ',
'		  from cc_clientes c, personas p',
'		 where c.cod_empresa = :p_cod_empresa',
'		   and c.cod_persona = p.cod_persona		',
'		   AND p.nombre NOT LIKE ''%NO USAR%''',
'		   AND NVL(C.ESTADO,''A'')=''A'''))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- Seleccione -'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(77468616274092320)
,p_name=>'P318_NOMBRE'
,p_item_sequence=>230
,p_item_plug_id=>wwv_flow_imp.id(75760253737816736)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(77468782933092321)
,p_name=>'P318_VISUAL'
,p_item_sequence=>280
,p_item_plug_id=>wwv_flow_imp.id(75760253737816736)
,p_prompt=>unistr('Visualizaci\00F3n')
,p_display_as=>'NATIVE_RADIOGROUP'
,p_lov=>'STATIC:Todos;T,Diaria;D,Semanal;S,Mensual;M'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'5'
,p_attribute_02=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(77468847452092322)
,p_name=>'P318_ESTADO'
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_imp.id(75760253737816736)
,p_prompt=>'Estado Visitas'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_lov=>'STATIC:Todos;T,Pendiente;A,Finalizado;R,Cancelado;C'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'5'
,p_attribute_02=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(77468957124092323)
,p_name=>'P318_SER_OT'
,p_item_sequence=>260
,p_item_plug_id=>wwv_flow_imp.id(75760253737816736)
,p_prompt=>'Serie Orden de Trabajo'
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
 p_id=>wwv_flow_imp.id(77469034051092324)
,p_name=>'P318_NRO_OT'
,p_item_sequence=>270
,p_item_plug_id=>wwv_flow_imp.id(75760253737816736)
,p_prompt=>'Nro Orden de Trabajo'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(77469102706092325)
,p_name=>'P318_VER_REAG'
,p_item_sequence=>310
,p_item_plug_id=>wwv_flow_imp.id(75760253737816736)
,p_item_default=>'N'
,p_prompt=>'Ver Visitas Reasignadas'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'S'
,p_attribute_03=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(77469214650092326)
,p_name=>'P318_ZONA'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_imp.id(75760253737816736)
,p_prompt=>'Zona'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:TODOS;T,CAPITAL;C,INTERIOR;I'
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
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(77469411105092328)
,p_name=>'P318_FECHA_INI'
,p_item_sequence=>240
,p_item_plug_id=>wwv_flow_imp.id(75760253737816736)
,p_prompt=>'Fecha Desde'
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
 p_id=>wwv_flow_imp.id(77469589275092329)
,p_name=>'P318_FECHA_FIN'
,p_item_sequence=>250
,p_item_plug_id=>wwv_flow_imp.id(75760253737816736)
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
 p_id=>wwv_flow_imp.id(77469689054092330)
,p_name=>'P318_CONTACTO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(77468072509092314)
,p_prompt=>'Contacto'
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
 p_id=>wwv_flow_imp.id(77469770850092331)
,p_name=>'P318_MOTREAG'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(77468072509092314)
,p_prompt=>'Reagendado por'
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
 p_id=>wwv_flow_imp.id(77469851168092332)
,p_name=>'P318_REALIZADO'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(77468072509092314)
,p_prompt=>'Estado'
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
 p_id=>wwv_flow_imp.id(77469998128092333)
,p_name=>'P318_DIRECCION'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(77468072509092314)
,p_prompt=>'Direccion'
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
 p_id=>wwv_flow_imp.id(77470017987092334)
,p_name=>'P318_CIUDAD'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(77468072509092314)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(77470193526092335)
,p_name=>'P318_BARRIO'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(77468072509092314)
,p_prompt=>'Barrio'
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
 p_id=>wwv_flow_imp.id(77470273493092336)
,p_name=>'P318_FEC_AGENDADA'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(77468072509092314)
,p_prompt=>'Fecha Agendada'
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
 p_id=>wwv_flow_imp.id(77470360190092337)
,p_name=>'P318_HORA_AGENDADA'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(77468072509092314)
,p_prompt=>'Hora Agendada'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_begin_on_new_field=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(77470457622092338)
,p_name=>'P318_OBSERVACION'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(77468072509092314)
,p_prompt=>'Observacion'
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
 p_id=>wwv_flow_imp.id(77471434727092348)
,p_name=>'P318_EJECUTAR_REPORTE'
,p_item_sequence=>320
,p_item_plug_id=>wwv_flow_imp.id(75760253737816736)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(78064635522098239)
,p_name=>'P318_DETALLE_ID'
,p_item_sequence=>330
,p_item_plug_id=>wwv_flow_imp.id(75760253737816736)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(78065483972098247)
,p_name=>'P318_DESC_CIUDAD'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(77468072509092314)
,p_prompt=>'Ciudad'
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
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(77470948737092343)
,p_name=>'DA_EJECUTAR_REPORTE'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(77469349703092327)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(77471543226092349)
,p_event_id=>wwv_flow_imp.id(77470948737092343)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    :P318_EJECUTAR_REPORTE := ''EJECUTAR'';',
'',
'END;'))
,p_attribute_03=>'P318_EJECUTAR_REPORTE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(77471075700092344)
,p_event_id=>wwv_flow_imp.id(77470948737092343)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(77467620401092310)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(77471303312092347)
,p_event_id=>wwv_flow_imp.id(77470948737092343)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(77467620401092310)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(77471184695092345)
,p_name=>'DA_OCULTAR_REPORTE'
,p_event_sequence=>20
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(77471290051092346)
,p_event_id=>wwv_flow_imp.id(77471184695092345)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(77467620401092310)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(78061053107098203)
,p_name=>'DA_LIMPIAR'
,p_event_sequence=>30
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(77470551524092339)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
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
 p_id=>wwv_flow_imp.id(78061195230098204)
,p_event_id=>wwv_flow_imp.id(78061053107098203)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P318_ZONA, P318_SER_OT, P318_CLIENTE,P318_VER_REAG, P318_FECHA_FIN, P318_FECHA_INI, P318_COD_ESTADO, P318_VISUAL,P318_COD_TECNICO,P318_EJECUTAR_REPORTE,P318_VISUAL,P318_COD_ESTADO'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(78061898930098211)
,p_event_id=>wwv_flow_imp.id(78061053107098203)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(77467620401092310)
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P318_EJECUTAR_REPORTE'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(78064819405098241)
,p_name=>'DA_MOSTRAR_DETALLE'
,p_event_sequence=>40
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P318_DETALLE_ID'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(78064969339098242)
,p_event_id=>wwv_flow_imp.id(78064819405098241)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'V_COD_MOTIVO_REAGENDA VARCHAR2(100);',
'BEGIN',
'    V_COD_MOTIVO_REAGENDA := NULL;',
'    SELECT ',
'        CONTACTO,',
'        COD_MOTIVO_REAGENDA,',
'        REALIZADO,',
'        DIRECCION,',
'        COD_CIUDAD,',
'        FEC_AGENDADA,',
'        HORA_AGENDADA,',
'        OBSERVACION    ',
'    INTO',
'        :P318_CONTACTO,',
'        V_COD_MOTIVO_REAGENDA,',
'        :P318_REALIZADO,',
'        :P318_DIRECCION,',
'        :P318_CIUDAD,',
'        :P318_FEC_AGENDADA,',
'        :P318_HORA_AGENDADA,',
'        :P318_OBSERVACION',
'    FROM CA_GESTIONES_VISITAS',
'',
'    WHERE rowid = :P318_DETALLE_ID;',
'',
'IF :P318_REALIZADO IS NOT NULL THEN',
'    CASE :P318_REALIZADO',
'',
'   WHEN ''S'' THEN :P318_REALIZADO := ''REALIZADO'';',
'   WHEN ''P'' THEN :P318_REALIZADO := ''PENDIENTE'';',
'  ELSE',
'    :P318_REALIZADO := ''CANCELADO'';',
'    END CASE;',
'end if;',
'',
'IF V_COD_MOTIVO_REAGENDA IS NOT NULL THEN',
'    select  descripcion     ',
'    INTO :P318_MOTREAG',
'        from ca_motivo_age',
'        where cod_motivo =  V_COD_MOTIVO_REAGENDA ;',
'END IF;',
'',
'IF :P318_CIUDAD IS NOT NULL THEN',
'     ',
'    select descripcion',
'      into :P318_DESC_CIUDAD',
'      from ciudades',
'      where cod_ciudad = :P318_CIUDAD',
'      AND COD_PROVINCIA=''11''',
'      and cod_pais=''PAR''',
'      ;',
' ',
' ',
'end if;',
'',
'EXCEPTION',
'     WHEN NO_DATA_FOUND THEN',
'        RAISE_APPLICATION_ERROR (-20111,''NO SE ENCONTRARON DATOS'' || SQLERRM);',
'',
'    WHEN OTHERS THEN',
'         RAISE_APPLICATION_ERROR (-20111,SQLERRM);',
'END;'))
,p_attribute_02=>'P318_DETALLE_ID'
,p_attribute_03=>'P318_CONTACTO,P318_REALIZADO,P318_DIRECCION,P318_CIUDAD,P318_FEC_AGENDADA,P318_HORA_AGENDADA,P318_OBSERVACION, P318_MOTREAG,P318_DESC_CIUDAD'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(78065080414098243)
,p_event_id=>wwv_flow_imp.id(78064819405098241)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'CONTACTO,P318_DESC_CIUDAD'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(78060935608098202)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'PR_LIMPIAR'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(77470861291092342)
,p_process_sequence=>20
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_INIT'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'   :P318_COD_USUARIO := nvl(:P_COD_USUARIO, user);',
'   :P318_COD_EMPRESA := nvl(:P_COD_EMPRESA,''1'');',
'   :P318_NOM_EMPRESA := nvl(:P_NOM_EMPRESA, null);',
'   :P318_COD_SUCURSAL := nvl(:P_COD_SUCURSAL, ''01'');',
'   :P318_NOM_SUCURSAL := nvl(:P_NOM_SUCURSAL, NULL);',
'   :P318_COD_MODULO := nvl(:P_COD_MODULO, null);',
'   :P318_EJECUTAR_REPORTE:= NULL;',
'   :P318_ESTADO := ''T'';',
'   :P318_VISUAL := ''T'';',
'   :P318_ZONA := ''T'';',
'end;'))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_imp.component_end;
end;
/
