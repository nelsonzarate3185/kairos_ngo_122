prompt --application/pages/page_00739
begin
--   Manifest
--     PAGE: 00739
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
 p_id=>739
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'Pantalla_comunicacion'
,p_alias=>'PANTALLA-COMUNICACION'
,p_step_title=>'Pantalla_comunicacion'
,p_autocomplete_on_off=>'OFF'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#botonbtn,#comunicado,#listado {',
unistr('    font-size: 25px; /* Ajustar el tama\00F1o del texto */'),
unistr('    width: 250px; /* Ajustar el ancho del bot\00F3n */'),
unistr('    height: 100px; /* Ajustar la altura del bot\00F3n */'),
'',
'}',
'',
'#ngo_web,#home,#catalogo_unico,#nosotros,#Articulo_NGO {',
'',
'    color: rgb(249, 249, 249);',
'   ',
'',
'}',
'',
'#R851080799060404162_toolbar_controls{		',
'	margin: 0 auto;',
'	 display: flex;',
'  justify-content: center;',
'  background-color: #00457F;',
'}',
'',
'#VISOR{    ',
'  background-color: #00457F  !important;',
'}  ',
'',
'.a-IRR-controlGroup--search{ width: 500px;}',
'.a-IRR-search-field{height: 40px;}'))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_last_updated_by=>'VGAMARRA'
,p_last_upd_yyyymmddhh24miss=>'20240919111305'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(707493888827482182)
,p_plug_name=>'titulo_rep'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_plug_template=>wwv_flow_imp.id(40134615190263663)
,p_plug_display_sequence=>30
,p_plug_grid_column_span=>4
,p_plug_display_column=>6
,p_plug_source=>'<h1>Comunicados</h1>'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(707493927381482183)
,p_plug_name=>'Centro de ayuda'
,p_region_name=>'VISOR'
,p_icon_css_classes=>'fa-podcast'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_source=>unistr('<img src="#APP_FILES#titulo_ngo/titulo_ngo.jpg" alt="Descripci\00F3n de la imagen" width="100%" height="400">')
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(851080799060404162)
,p_plug_name=>'Titulo'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>50
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/*select COD_EMPRESA,',
'       TITULO,',
'       DETALLES,',
'       TIPO,',
'       ESTADO,',
'       NRO_INTERNO,',
'       ETIQUETA,',
'       FEC_ALTA,',
'       null VER,',
'       COD_USUARIO',
'  from SPEE_TITULO',
'  where tipo = ''COMUNICADO''',
'  ORDER BY FEC_ALTA DESC*/',
'  SELECT',
'	COD_EMPRESA,',
'	TITULO,',
'	DETALLES,',
'	TIPO,',
'	ESTADO,',
'	NRO_INTERNO,',
'	ETIQUETA,',
'	FEC_ALTA,',
'	NULL VER,',
'	COD_USUARIO',
'FROM',
'	inv.SPEE_TITULO',
'WHERE',
'cod_empresa = :P_COD_EMPRESA',
'AND tipo = ''COMUNICADO''',
'	--AND (round((sysdate - fec_alta) * 24) <= 72)',
'	AND',
'  (estado = ''PUBLICAR''',
'		OR busca_permiso(p_empresa => 1,',
'		p_forma => ''SPEE'',',
'		p_usuario => :APP_USER,',
'		p_permiso => ''VER_TODOS'') = ''S'' )',
'	AND NOT (',
'        TIPO = ''COMUNICADO''',
'		AND (SYSDATE - FEC_ALTA) * 24 >= 72',
'    )',
'ORDER BY',
'	FEC_ALTA DESC'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_page_header=>'Titulo'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(851080840040404162)
,p_name=>'Titulo'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:737:&SESSION.::&DEBUG.:RP:P737_NRO_INTERNO:\#NRO_INTERNO#\'
,p_detail_link_text=>'<span aria-label="Edit"><span class="fa fa-edit" aria-hidden="true" title="Edit"></span></span>'
,p_detail_link_auth_scheme=>wwv_flow_imp.id(54258922546073523)
,p_owner=>'VGAMARRA'
,p_internal_uid=>851080840040404162
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(285329085505183651)
,p_db_column_name=>'NRO_INTERNO'
,p_display_order=>0
,p_column_identifier=>'G'
,p_column_label=>'Nro Interno'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(285327081679183650)
,p_db_column_name=>'COD_EMPRESA'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Cod Empresa'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(285327474104183650)
,p_db_column_name=>'TITULO'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Titulo'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(285328235296183651)
,p_db_column_name=>'TIPO'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Tipo'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(285328635654183651)
,p_db_column_name=>'ESTADO'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Estado'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_rpt_named_lov=>wwv_flow_imp.id(661673983748287327)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
,p_security_scheme=>wwv_flow_imp.id(54258922546073523)
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(285326640398183650)
,p_db_column_name=>'FEC_ALTA'
,p_display_order=>16
,p_column_identifier=>'I'
,p_column_label=>'Fec Alta'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_format_mask=>'DD-MM-YYYY HH24:MI:SS'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(285326218794183650)
,p_db_column_name=>'ETIQUETA'
,p_display_order=>26
,p_column_identifier=>'H'
,p_column_label=>'Etiqueta'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(286835409590879922)
,p_db_column_name=>'VER'
,p_display_order=>36
,p_column_identifier=>'J'
,p_column_label=>'Ver'
,p_column_link=>'f?p=&APP_ID.:746:&SESSION.::&DEBUG.:746:P746_NRO_INTERNO:#NRO_INTERNO#'
,p_column_linktext=>'<span class="fa fa-eye" aria-hidden="true"></span>'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(286837134401879939)
,p_db_column_name=>'COD_USUARIO'
,p_display_order=>46
,p_column_identifier=>'K'
,p_column_label=>'Usuario'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(557944862508594315)
,p_db_column_name=>'DETALLES'
,p_display_order=>56
,p_column_identifier=>'L'
,p_column_label=>'Detalles'
,p_allow_sorting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_column_type=>'CLOB'
,p_column_alignment=>'CENTER'
,p_rpt_show_filter_lov=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(851085931529404552)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'2804747'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'ETIQUETA:TITULO:COD_USUARIO:ESTADO:VER'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(286836764874879935)
,p_button_sequence=>21
,p_button_plug_id=>wwv_flow_imp.id(707493927381482183)
,p_button_name=>'Articulo_NGO'
,p_button_static_id=>'Articulo_NGO'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI:t-Button--iconLeft:t-Button--hoverIconPush'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Agregar Articulo'
,p_button_redirect_url=>'f?p=&APP_ID.:737:&SESSION.::&DEBUG.:::'
,p_grid_new_row=>'N'
,p_grid_column=>8
,p_security_scheme=>wwv_flow_imp.id(54258922546073523)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(285324784130183649)
,p_button_sequence=>41
,p_button_plug_id=>wwv_flow_imp.id(707493927381482183)
,p_button_name=>'Home'
,p_button_static_id=>'home'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI:t-Button--iconLeft:t-Button--hoverIconPush'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Home                          '
,p_button_redirect_url=>'f?p=&APP_ID.:736:&SESSION.::&DEBUG.:::'
,p_grid_new_row=>'N'
,p_grid_column=>7
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(285325163463183649)
,p_button_sequence=>51
,p_button_plug_id=>wwv_flow_imp.id(707493927381482183)
,p_button_name=>'ngo_web'
,p_button_static_id=>'ngo_web'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI:t-Button--iconLeft:t-Button--hoverIconPush'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'NGO web'
,p_button_redirect_url=>'https://ngosaeca.com.py/'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(285325588945183649)
,p_button_sequence=>61
,p_button_plug_id=>wwv_flow_imp.id(707493927381482183)
,p_button_name=>'catalogo_unico'
,p_button_static_id=>'catalogo_unico'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI:t-Button--iconLeft:t-Button--hoverIconPush'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('Catalogo \00FAnico')
,p_button_redirect_url=>'f?p=&APP_ID.:126:&SESSION.::&DEBUG.:::'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(285323945314183648)
,p_button_sequence=>71
,p_button_plug_id=>wwv_flow_imp.id(707493927381482183)
,p_button_name=>'Nosotros'
,p_button_static_id=>'nosotros'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI:t-Button--iconLeft:t-Button--hoverIconPush'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Nosotros'
,p_button_redirect_url=>'https://ngosaeca.com.py/nosotros'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(285330420161183652)
,p_name=>'Edit Report - Dialog Closed'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(851080799060404162)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(285330919215183652)
,p_event_id=>wwv_flow_imp.id(285330420161183652)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(851080799060404162)
);
wwv_flow_imp.component_end;
end;
/
