prompt --application/pages/page_00054
begin
--   Manifest
--     PAGE: 00054
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
 p_id=>54
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'Listado de Recibos'
,p_alias=>'LISTADO-DE-RECIBOS'
,p_step_title=>'Listado de Recibos'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.apex-item-select:focus, .apex-item-text:focus, .apex-item-textarea:focus {',
'   background-color:  hsl(147, 69%, 87%)  !important;',
'   border-color:  #c9fceb  !important;',
'}',
'',
'',
'#GRILLA   th.a-IRR-header {',
'  background-color:  rgb(218, 238, 239);',
' /* border-color: rgb(43, 79, 80);*/',
'}',
'/* ',
' #GRILLA  td {',
'  background-color: rgb(218, 239, 223); ',
'  border-color: rgb(43, 79, 80);',
'}',
'',
' ',
'*/',
'',
' ',
'.chip {',
'    padding: 4px 10px;',
'    border-radius: 16px;',
'    box-shadow: 0 1px 2px 0 rgba(0, 0, 0, .05);',
'}',
'',
'.chip-success {',
'    background: #cdffe0;',
'    color: #00592e;',
'}',
'',
'.chip-danger {',
'    background: #ffebeb;',
'    color: #a50000;',
'}',
'',
'.chip-warning {',
'    background: #fffedc;',
'    color: #764400;',
'}',
'',
'.chip-primary {',
'    background: #e9f5ff;',
'    color: #004f95;',
'}',
'',
'.chip-purple {',
'    background: #eddbfa;',
'    color: #5200a5;',
'}',
'',
'.chip-pink {',
'    background: #ffeffa;',
'    color: #990067;',
'}',
'',
'.chip-orange {',
'    background: #fff2e4;',
'    color: #8d3600;',
'}',
'',
'.chip-teal {',
'    background: #e4fdff;',
'    color: #00526e;',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_last_updated_by=>'NZARATE'
,p_last_upd_yyyymmddhh24miss=>'20240924120730'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(415010323611755899)
,p_plug_name=>'Parametros'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_plug_template=>wwv_flow_imp.id(40134615190263663)
,p_plug_display_sequence=>10
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(415954067111942174)
,p_plug_name=>'Recibos'
,p_region_name=>'GRILLA'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>20
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'RECIBO , ESTADO , SER_RECIBO,  NRO_RECIBO , FECHA , COD_CLIENTE,  NOM_CLIENTE  ,COD_COBRADOR,  COD_CUSTODIO , TOT_RECIBO,',
' ESTADO_RECIBO, EMPRESA',
'from',
'(',
'select  r.ser_recibo ||''-''|| r.nro_recibo rECIBO,        ',
'     ',
'        CASE ',
'            WHEN nvl(R.ANULADO,''n'') IN (''S'') THEN  ---- Azul',
'            ''<span class="chip chip-warning ">''||''ANULADO''||''</span> ''',
'',
'            WHEN  R.NRO_MOV_CAJ IS NULL THEN ------ ROJO',
'            ''<span class="chip chip-danger ">''||''PENDIENTE DE COBRO''||''</span> ''',
'',
'           ',
'           ELSE            --------  Verde',
'            ''<span class="chip chip-primary ">''||''COBRADO''||''</span> ''   ',
'',
'            ',
'           END   estado,',
'        R.SER_RECIBO ,   ',
'        R.NRO_RECIBO ,',
'        R.FEC_RECIBO FECHA,      ',
'       ',
'        R.COD_CLIENTE,',
'        P.NOMBRE NOM_CLIENTE,',
'        R.COD_COBRADOR, R.COD_CUSTODIO, R.TOT_RECIBO,',
'          CASE ',
'            WHEN nvl(R.ANULADO,''n'') IN (''S'') THEN   ',
'            ''A''',
'',
'            WHEN  R.NRO_MOV_CAJ IS NOT NULL THEN ',
'            ''C''',
'',
'           ',
'           ELSE            ',
'            ''P''   ',
'',
'            ',
'           END   estado_recibo, case when r.cod_empresa=''1'' then''NGO''else ''BH''END EMPRESA',
'from cc_recibos r,',
'     cc_clienTes cc,',
'     personas  p',
'where  r.cod_empresa in(''1'')',
'and r.cod_empresa=cc.cod_empresa',
'and r.cod_cliente=cc.cod_cliente',
'and cc.cod_persona=p.cod_persona',
' ',
'',
'AND   (NVL(:P54_CLIENTE,''T'')=''T'' OR :P54_CLIENTE=r.COD_CLIENTE)',
'AND   (NVL(:P54_EMPRESA,''T'')=''T'' OR :P54_EMPRESA=''NGO'')',
'AND   (NVL(:P54_COBRADOR,''T'')=''T'' OR :P54_COBRADOR=r.COD_COBRADOR)',
' ',
'AND   ( :P54_NRO_RECIBO is null OR :P54_NRO_RECIBO=r.nro_recibo)',
'AND   ( :P54_SER_RECIBO is null OR :P54_SER_RECIBO=r.ser_recibo)',
'---AND   TRUNC( OT.FEC_COMPROBANTE) >= NVL(TO_DATE(:P54_FECHA_INI,''DD/MM/YYYY''),TRUNC(SYSDATE-90,''MM''))',
'AND   ( :P54_FECHA_INI is null OR r.fec_recibo >= TO_DATE(:P54_FECHA_INI,''DD/MM/YYYY''))',
'AND   ( :P54_FECHA_FIN is null OR r.fec_recibo <= TO_DATE(:P54_FECHA_FIN,''DD/MM/YYYY''))',
' ',
'UNION ALL',
'',
'select  r.ser_recibo ||''-''|| r.nro_recibo rECIBO,        ',
'     ',
'        CASE ',
'            WHEN nvl(R.ANULADO,''n'') IN (''S'') THEN  ---- Azul',
'            ''<span class="chip chip-warning ">''||''ANULADO''||''</span> ''',
'',
'            WHEN  R.NRO_MOV_CAJ IS NULL THEN ------ ROJO',
'            ''<span class="chip chip-danger ">''||''PENDIENTE DE COBRO''||''</span> ''',
'',
'           ',
'           ELSE            --------  Verde',
'            ''<span class="chip chip-primary ">''||''COBRADO''||''</span> ''   ',
'',
'            ',
'           END   estado,',
'        R.SER_RECIBO ,   ',
'        R.NRO_RECIBO ,',
'        R.FEC_RECIBO FECHA,      ',
'       ',
'        R.COD_CLIENTE,',
'        P.NOMBRE NOM_CLIENTE,',
'        R.COD_COBRADOR, R.COD_CUSTODIO, R.TOT_RECIBO,',
'          CASE ',
'            WHEN nvl(R.ANULADO,''n'') IN (''S'') THEN   ',
'            ''A''',
'',
'            WHEN  R.NRO_MOV_CAJ IS NOT NULL THEN ',
'            ''C''',
'',
'           ',
'           ELSE            ',
'            ''P''   ',
'',
'            ',
'           END   estado_recibo, case when r.cod_empresa=''1'' then''NGO''else ''BH''END EMPRESA',
'from cc_recibos r,',
'     cc_clienTes cc,',
'     personas  p',
'where  r.cod_empresa in(''18'')',
'and r.cod_empresa=cc.cod_empresa',
'and r.cod_cliente=cc.cod_cliente',
'and cc.cod_persona=p.cod_persona',
' ',
'',
'AND   (NVL(:P54_CLIENTE,''T'')=''T'' OR :P54_CLIENTE=r.COD_CLIENTE)',
'AND   (NVL(:P54_EMPRESA,''T'')=''T'' OR :P54_EMPRESA=''BH'')',
'AND   (NVL(:P54_COBRADOR,''T'')=''T'' OR :P54_COBRADOR=r.COD_COBRADOR)',
' ',
'AND   ( :P54_NRO_RECIBO is null OR :P54_NRO_RECIBO=r.nro_recibo)',
'AND   ( :P54_SER_RECIBO is null OR :P54_SER_RECIBO=r.ser_recibo)',
'---AND   TRUNC( OT.FEC_COMPROBANTE) >= NVL(TO_DATE(:P54_FECHA_INI,''DD/MM/YYYY''),TRUNC(SYSDATE-90,''MM''))',
'AND   ( :P54_FECHA_INI is null OR r.fec_recibo >= TO_DATE(:P54_FECHA_INI,''DD/MM/YYYY''))',
'AND   ( :P54_FECHA_FIN is null OR r.fec_recibo <= TO_DATE(:P54_FECHA_FIN,''DD/MM/YYYY''))',
' ',
')',
'WHERE   (NVL(:P54_ESTADO,''T'') =''T'' OR :P54_ESTADO=ESTADO_RECIBO)',
'union all',
'SELECT',
'RECIBO , ESTADO , SER_RECIBO,  NRO_RECIBO , FECHA , COD_CLIENTE,  NOM_CLIENTE  ,COD_COBRADOR,  COD_CUSTODIO , TOT_RECIBO, ESTADO_RECIBO, EMPRESA',
'from',
'(',
'select  r.ser_recibo ||''-''|| r.nro_recibo rECIBO,        ',
'     ',
'        CASE ',
'            WHEN nvl(R.ANULADO,''n'') IN (''S'') THEN  ---- Azul',
'            ''<span class="chip chip-warning ">''||''ANULADO''||''</span> ''',
'',
'            WHEN  R.NRO_MOV_CAJ IS NULL THEN ------ ROJO',
'            ''<span class="chip chip-danger ">''||''PENDIENTE DE COBRO''||''</span> ''',
'',
'           ',
'           ELSE            --------  Verde',
'            ''<span class="chip chip-primary ">''||''COBRADO''||''</span> ''   ',
'',
'            ',
'           END   estado,',
'        R.SER_RECIBO ,   ',
'        R.NRO_RECIBO ,',
'        R.FEC_RECIBO FECHA,      ',
'       ',
'        R.COD_CLIENTE,',
'        P.NOMBRE NOM_CLIENTE,',
'        R.COD_COBRADOR, R.COD_CUSTODIO, R.TOT_RECIBO,',
'          CASE ',
'            WHEN nvl(R.ANULADO,''n'') IN (''S'') THEN   ',
'            ''A''',
'',
'            WHEN  R.NRO_MOV_CAJ IS NOT NULL THEN ',
'            ''C''         ',
'           ELSE            ',
'            ''P''   ',
'',
'            ',
'           END   estado_recibo, ''CPH'' EMPRESA',
'from cc_recibos@dblink_cph r,',
'     cc_clienTes@dblink_cph cc,',
'     personas@dblink_cph  p',
'where  r.cod_empresa=''1''',
'and r.cod_empresa=cc.cod_empresa',
'and r.cod_cliente=cc.cod_cliente',
'and cc.cod_persona=p.cod_persona',
' AND   (NVL(:P54_EMPRESA,''T'')=''T'' OR :P54_EMPRESA=''CPH'')',
'',
'AND   (NVL(:P54_CLIENTE,''T'')=''T'' OR :P54_CLIENTE=r.COD_CLIENTE)',
'AND   (NVL(:P54_COBRADOR,''T'')=''T'' OR :P54_COBRADOR=r.COD_COBRADOR)',
' ',
'AND   ( :P54_NRO_RECIBO is null OR :P54_NRO_RECIBO=r.nro_recibo)',
'AND   ( :P54_SER_RECIBO is null OR :P54_SER_RECIBO=r.ser_recibo)',
'---AND   TRUNC( OT.FEC_COMPROBANTE) >= NVL(TO_DATE(:P54_FECHA_INI,''DD/MM/YYYY''),TRUNC(SYSDATE-90,''MM''))',
'AND   ( :P54_FECHA_INI is null OR r.fec_recibo >= TO_DATE(:P54_FECHA_INI,''DD/MM/YYYY''))',
'AND   ( :P54_FECHA_FIN is null OR r.fec_recibo <= TO_DATE(:P54_FECHA_FIN,''DD/MM/YYYY''))',
'',
'order by R.FEC_RECIBO desc',
')',
'WHERE   (NVL(:P54_ESTADO,''T'') =''T'' OR :P54_ESTADO=ESTADO_RECIBO)'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P54_COBRADOR,P54_ESTADO,P54_FECHA_INI,P54_FECHA_FIN,P54_CLIENTE,P54_SER_RECIBO,P54_NRO_RECIBO,P54_EMPRESA'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Recibos'
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
 p_id=>wwv_flow_imp.id(415954428963942174)
,p_name=>'Report 1'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_LEFT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:44:&SESSION.::&DEBUG.:RR,44:P44_PARAM_SER,P44_PARAM_NRO,P44_EMPRESA_ORIGEN,P44_COD_CLIENTE:#SER_RECIBO#,#NRO_RECIBO#,#EMPRESA#,#COD_CLIENTE##NRO_COMPROBANTE#\,\#SER_COMPROBANTE#\,\#COD_CLIENTE#\'
,p_detail_link_text=>'<span aria-label="Editar"><span class="fa fa-search-plus" aria-hidden="true" title="Editar"></span></span>'
,p_owner=>'JUANSA'
,p_internal_uid=>415954428963942174
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13802202127399260)
,p_db_column_name=>'ESTADO'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Estado'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13803483481399260)
,p_db_column_name=>'FECHA'
,p_display_order=>90
,p_column_identifier=>'U'
,p_column_label=>'Fecha'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_format_mask=>'DD/MM/YYYY'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13802603358399260)
,p_db_column_name=>'COD_CLIENTE'
,p_display_order=>230
,p_column_identifier=>'S'
,p_column_label=>'Cod Cliente'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13803072282399260)
,p_db_column_name=>'NOM_CLIENTE'
,p_display_order=>240
,p_column_identifier=>'T'
,p_column_label=>'Nom Cliente'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13799499338399257)
,p_db_column_name=>'RECIBO'
,p_display_order=>250
,p_column_identifier=>'AA'
,p_column_label=>'Recibo'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13799814202399258)
,p_db_column_name=>'SER_RECIBO'
,p_display_order=>260
,p_column_identifier=>'AB'
,p_column_label=>'Ser Recibo'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13800224843399258)
,p_db_column_name=>'NRO_RECIBO'
,p_display_order=>270
,p_column_identifier=>'AC'
,p_column_label=>'Nro Recibo'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13800685581399258)
,p_db_column_name=>'COD_COBRADOR'
,p_display_order=>280
,p_column_identifier=>'AD'
,p_column_label=>'Cod Cobrador'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13801006067399259)
,p_db_column_name=>'COD_CUSTODIO'
,p_display_order=>290
,p_column_identifier=>'AE'
,p_column_label=>'Cod Custodio'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13801439386399259)
,p_db_column_name=>'TOT_RECIBO'
,p_display_order=>300
,p_column_identifier=>'AF'
,p_column_label=>'Tot Recibo'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13801800392399259)
,p_db_column_name=>'ESTADO_RECIBO'
,p_display_order=>310
,p_column_identifier=>'AG'
,p_column_label=>'Estado Recibo'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13803848675399261)
,p_db_column_name=>'EMPRESA'
,p_display_order=>320
,p_column_identifier=>'AH'
,p_column_label=>'Empresa'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(415964164646943919)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'2126061'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'GARANTIA_COD_EMPRESA_PRESU:ARTICULO1_PRESU_:COD_DESCRIPCION:ESTADO:COD_CLIENTE:NOM_CLIENTE:FECHA:RECIBO:SER_RECIBO:NRO_RECIBO:COD_COBRADOR:COD_CUSTODIO:TOT_RECIBO:ESTADO_RECIBO:EMPRESA'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(13794766948399253)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(415010323611755899)
,p_button_name=>'refrescar'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Refrescar'
,p_button_position=>'BELOW_BOX'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'u-color-1-bg'
,p_icon_css_classes=>'fa-refresh'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(13804505420399262)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(415954067111942174)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Crear Recibo'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:104:&SESSION.::&DEBUG.:CR,104::'
,p_button_css_classes=>'u-color-1-bg'
,p_icon_css_classes=>'fa fa-pencil'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13795148701399253)
,p_name=>'P54_PROVEEDOR'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(415010323611755899)
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select distinct p.cod_proveedor',
'from usuarios u,',
'     cm_proveedores p',
'where u.cod_usuario= v(''app_user'')',
'AND   u.cod_persona=p.cod_persona',
'AND   p.cod_empresa=''1''',
'AND   NVL(p.ESTADO,''A'')NOT IN (''I'') ',
'AND   p.ind_servicio_tecnico =''STNGO'''))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13795585088399254)
,p_name=>'P54_EMPRESA'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(415010323611755899)
,p_item_default=>'T'
,p_prompt=>'Empresa'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ''TODOS'' D, ''T'' C',
'FROM DUAL',
'UNION ALL',
'SELECT ''NGO'' D, ''NGO'' C',
'FROM DUAL',
'UNION ALL',
'SELECT ''CPH'' D, ''CPH'' C',
'FROM DUAL',
'UNION ALL',
'SELECT ''BESTHOME'' D, ''BH'' C',
'FROM DUAL',
' '))
,p_cHeight=>1
,p_tag_attributes=>'style="background-color:#ebfaff ; border-color:  #7fb2c2"'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13795907250399255)
,p_name=>'P54_CLIENTE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(415010323611755899)
,p_prompt=>'Cliente'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select distinct pr.nombre||'' ''|| CL.COD_CLIENTE CLIENTE,cl.cod_cliente',
'from   ',
'      cc_clientes cl,',
'      personas pr',
'where ''1''=cl.COD_EMPRESA',
'and   cl.cod_persona=pr.cod_persona',
'and   nvl(cl.estado,'''')NOT IN (''I'')',
'and :P54_EMPRESA=''NGO''',
'union all',
'select distinct pr.nombre||'' ''|| CL.COD_CLIENTE CLIENTE,cl.cod_cliente',
'from   ',
'      cc_clientes@DBLINK_CPH cl,',
'      personas@DBLINK_CPH pr',
'where ''1''=cl.COD_EMPRESA',
'and   cl.cod_persona=pr.cod_persona',
'and   nvl(cl.estado,'''')NOT IN (''I'')',
'and :P54_EMPRESA=''CPH''',
' ',
'union all',
'',
'select ''TODOS'',''T''',
'FROM DUAL',
'order by 2'))
,p_lov_display_null=>'YES'
,p_lov_cascade_parent_items=>'P54_EMPRESA'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>30
,p_tag_attributes=>'style="background-color:#ebfaff ; border-color:  #7fb2c2"'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13796345050399255)
,p_name=>'P54_COBRADOR'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(415010323611755899)
,p_item_default=>'P0_COD_COBRADOR'
,p_item_default_type=>'ITEM'
,p_prompt=>'Cobrador'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ''TODOS'' D, ''T'' C ',
'FROM DUAL',
'UNION ALL',
' select NOMBRE|| '' (''|| C.COD_COBRADOR||'')'' as d,',
'       C.COD_COBRADOR as r ',
'  from CC_COBRADORES C, PERSONAS P',
'WHERE C.COD_EMPRESA=''1''',
'AND C.COD_PERSONA=P.COD_PERSONA',
'and activo=''S''',
'and :P54_EMPRESA=''NGO''',
'UNION ALL',
' select NOMBRE|| '' (''|| C.COD_COBRADOR||'')'' as d,',
'       C.COD_COBRADOR as r ',
'  from CC_COBRADORES@DBLINK_CPH C, PERSONAS@DBLINK_CPH P',
'WHERE C.COD_EMPRESA=''1''',
'AND C.COD_PERSONA=P.COD_PERSONA',
'and activo=''S''',
'and :P54_EMPRESA=''CPH''',
' order by 1'))
,p_lov_display_null=>'YES'
,p_lov_cascade_parent_items=>'P54_EMPRESA'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>30
,p_tag_attributes=>'style="background-color:#ebfaff ; border-color:  #7fb2c2"'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13796701445399255)
,p_name=>'P54_ESTADO'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(415010323611755899)
,p_prompt=>'Estado'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ''ANULADO'' estado, ''A'' C',
'from  DUAL t',
'union all',
'select ''COBRADO'' estado, ''C'' C',
'from  DUAL t',
'union all',
'select ''PENDIENTE COBRO'' estado, ''P'' C',
'from  DUAL t',
'union all',
'select ''TODOS'', ''T''',
'FROM DUAL',
'order by 1'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_tag_attributes=>'style="background-color:#ebfaff ; border-color:  #7fb2c2"'
,p_begin_on_new_line=>'N'
,p_colspan=>5
,p_grid_column=>8
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13797128209399255)
,p_name=>'P54_SER_RECIBO'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(415010323611755899)
,p_prompt=>'Serie Recibo'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13797506578399255)
,p_name=>'P54_NRO_RECIBO'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(415010323611755899)
,p_prompt=>'Nro Recibo'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13797968708399255)
,p_name=>'P54_FECHA_INI'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(415010323611755899)
,p_item_default=>'sysdate'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>'Fecha desde'
,p_format_mask=>'DD/MM/YYYY'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>30
,p_tag_attributes=>'style="background-color:#ebfaff ; border-color:  #7fb2c2"'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13798382500399255)
,p_name=>'P54_FECHA_FIN'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(415010323611755899)
,p_prompt=>'Fecha hasta'
,p_format_mask=>'DD/MM/YYYY'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>30
,p_tag_attributes=>'style="background-color:#ebfaff ; border-color:  #7fb2c2"'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13798774493399256)
,p_name=>'P54_USER'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(415010323611755899)
,p_source=>'&APP_USER.'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(13804980440399262)
,p_name=>'CLIC_EST'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P54_ESTADO'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(13805464751399262)
,p_event_id=>wwv_flow_imp.id(13804980440399262)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_02=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(13805810491399263)
,p_name=>'CLIC_CL'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P54_CLIENTE'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(13806328301399263)
,p_event_id=>wwv_flow_imp.id(13805810491399263)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_02=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(13806737556399263)
,p_name=>'CHNG_FEC_INI'
,p_event_sequence=>50
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P54_FECHA_INI'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(13807213652399263)
,p_event_id=>wwv_flow_imp.id(13806737556399263)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_02=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(13807602831399263)
,p_name=>'CHNG_FEC_FIN'
,p_event_sequence=>60
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P54_FECHA_FIN'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(13808196769399263)
,p_event_id=>wwv_flow_imp.id(13807602831399263)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_02=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(13808515568399263)
,p_name=>'da_refrescar_consulta'
,p_event_sequence=>70
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(13794766948399253)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(13809008754399264)
,p_event_id=>wwv_flow_imp.id(13808515568399263)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(415954067111942174)
);
wwv_flow_imp.component_end;
end;
/
