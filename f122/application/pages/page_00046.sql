prompt --application/pages/page_00046
begin
--   Manifest
--     PAGE: 00046
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
 p_id=>46
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'Gestion de Cobranzas'
,p_alias=>'GESTION-DE-COBRANZAS'
,p_step_title=>'Gestion de Cobranzas'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code_onload=>wwv_flow_string.join(wwv_flow_t_varchar2(
'// standard, cacheable elements',
'var pagePrefix = ''P'' + $(''#pFlowStepId'').val();',
'var displayAsId = pagePrefix + ''_DISPLAY_AS'';',
'var $displayAs = $(''#'' + displayAsId);',
'var $cardsReg = $(''#cards_region'');',
'var $reportReg = $(''#report_region'');',
'',
'// applyFilters triggers the refresh event on the correct region',
'function applyFilters() {',
'  var display = $v(displayAsId);',
'  ',
'  if (display === ''CARDS'') {',
'    $cardsReg.trigger(''apexrefresh'');',
'  } else if (display === ''REPORT'') {',
'    $reportReg.trigger(''apexrefresh'');',
'  }',
'}',
'',
'// toggleRegionDisplay is similar to applyFilters except that it also',
'// takes into account what regions or items need to be displayed or hidden',
'function toggleRegionDisplay(refresh) {',
'  var display = $v(displayAsId);',
'  ',
'  refresh = (refresh === false) ? false : true;',
'  ',
'  if (display === ''CARDS'') {',
'    $reportReg.hide();',
'    if (refresh) {',
'      $cardsReg.trigger(''apexrefresh'');',
'    }',
'    $cardsReg.show();',
'  } else if (display === ''REPORT'') {',
'    $cardsReg.hide();',
'    if (refresh) {',
'      $reportReg.trigger(''apexrefresh'');',
'    }',
'    $reportReg.show();',
'  }',
'}',
'',
'// standard display, sort, reset event bindings',
'$displayAs.change(toggleRegionDisplay);',
'  ',
'toggleRegionDisplay(false);'))
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.t-Card-initials {',
'  font-size: 14px;',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_page_component_map=>'18'
,p_last_updated_by=>'INV'
,p_last_upd_yyyymmddhh24miss=>'20231205152139'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(86935860312601712)
,p_plug_name=>'Filtro'
,p_region_template_options=>'#DEFAULT#:is-collapsed:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40108275410263656)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(86938906182601642)
,p_name=>'Gestion Tarjeta'
,p_region_name=>'cards_region'
,p_template=>wwv_flow_imp.id(40108275410263656)
,p_display_sequence=>50
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_template_options=>'#DEFAULT#:is-expanded:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:u-colors:t-Cards--compact:t-Cards--displayInitials:t-Cards--4cols:t-Cards--animRaiseCard'
,p_region_attributes=>'style="display: none"'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'FEC_AGENDADA,',
'p.nombre||''(''||c.cod_cliente||'')'' card_title, ',
'       apex_util.prepare_url(''f?p=''||:APP_ID||'':82:''||:APP_SESSION||'':::82:P82_NRO_MOVIMIENTO:''||c.nro_movimiento) card_link,',
'       ',
'       null card_text,',
'       null card_subtext,',
'           upper(',
'          decode(instr(p.nombre,'' ''),',
'                 0, ',
'                 substr(p.nombre,1,2),',
'                 substr(p.nombre,1,1)||substr(p.nombre,instr(p.nombre,'' '')+1,1)',
'           )) card_initials,',
'',
'NRO_MOVIMIENTO, ',
'''Fecha Agendada: ''||fec_visita FECHA_AGENDADA,',
'''Hora Agendada: ''||HORA_visita HORA_AGENDADA,',
'',
'',
'''Contacto: ''||Contacto CONTACTO,',
'',
'''Motivo: ''||m.descripcion motivo,',
'',
'DIRECCION ',
'',
'FROM CC_GESTIONES_VISITAS  c, cc_clientes  cc, personas  p,',
'CA_MOTIVO_VISITA  m',
'',
'WHERE c.COD_EMPRESA=''1''',
'/*and :P46_DISPLAY_AS = ''CARDS''*/',
'AND (REALIZADO = :P46_ESTADO OR :P46_ESTADO IS NULL)',
'and c.cod_empresa=cc.cod_empresa',
'and c.cod_cliente=cc.cod_cliente',
'and c.cod_motivo_visita=m.cod_motivo',
'and cc.cod_persona=p.cod_persona',
'AND (c.cod_cobrador = :P46_cobrador OR :P46_cobrador IS NULL)',
'and trunc(fec_visita) between :P46_FECHA_INICIO AND :P46_FECHA_FIN',
'AND (COD_MOTIVO_VISITA = :P46_MOTIVO OR :P46_MOTIVO IS NULL)',
'ORDER BY FEC_visita,hora_visita'))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P46_COBRADOR,P46_DISPLAY_AS,P46_ESTADO,P46_MOTIVO,P46_FECHA_INICIO,P46_FECHA_FIN'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(40141194770263665)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'-'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(13645825357998271)
,p_query_column_id=>1
,p_column_alias=>'FEC_AGENDADA'
,p_column_display_sequence=>12
,p_column_heading=>'Fec Agendada'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(13646206098998272)
,p_query_column_id=>2
,p_column_alias=>'CARD_TITLE'
,p_column_display_sequence=>1
,p_column_heading=>'Card Title'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(13646634191998272)
,p_query_column_id=>3
,p_column_alias=>'CARD_LINK'
,p_column_display_sequence=>2
,p_column_heading=>'Card Link'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(13647024063998272)
,p_query_column_id=>4
,p_column_alias=>'CARD_TEXT'
,p_column_display_sequence=>3
,p_column_heading=>'Card Text'
,p_use_as_row_header=>'N'
,p_column_html_expression=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#MOTIVO#<br >',
'<small>',
'#FECHA_AGENDADA#<br />',
'#HORA_AGENDADA#<br />',
'</small>',
''))
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(13647398493998273)
,p_query_column_id=>5
,p_column_alias=>'CARD_SUBTEXT'
,p_column_display_sequence=>4
,p_column_heading=>'Card Subtext'
,p_use_as_row_header=>'N'
,p_column_html_expression=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#CONTACTO#<br >',
'<small>',
'#DIRECCION#<br /> ',
'</small>',
''))
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(13647798237998273)
,p_query_column_id=>6
,p_column_alias=>'CARD_INITIALS'
,p_column_display_sequence=>5
,p_column_heading=>'Card Initials'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(13648128667998273)
,p_query_column_id=>7
,p_column_alias=>'NRO_MOVIMIENTO'
,p_column_display_sequence=>6
,p_column_heading=>'Nro Movimiento'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(13648574120998273)
,p_query_column_id=>8
,p_column_alias=>'FECHA_AGENDADA'
,p_column_display_sequence=>10
,p_column_heading=>'Fecha Agendada'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(13648961641998273)
,p_query_column_id=>9
,p_column_alias=>'HORA_AGENDADA'
,p_column_display_sequence=>7
,p_column_heading=>'Hora Agendada'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(13649307898998273)
,p_query_column_id=>10
,p_column_alias=>'CONTACTO'
,p_column_display_sequence=>8
,p_column_heading=>'Contacto'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(13649713197998274)
,p_query_column_id=>11
,p_column_alias=>'MOTIVO'
,p_column_display_sequence=>11
,p_column_heading=>'Motivo'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(13650117560998274)
,p_query_column_id=>12
,p_column_alias=>'DIRECCION'
,p_column_display_sequence=>9
,p_column_heading=>'Direccion'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(96604904412503331)
,p_plug_name=>'Gesion Reporte'
,p_region_name=>'report_region'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'fec_visita FEC_AGENDADA,NRO_MOVIMIENTO,',
'hora_visita HORA_AGENDADA,',
'FEC_VISITA,HORA_VISITA,CONTACTO,',
'COD_MOTIVO_VISITA,DIRECCION, ',
'COD_CLIENTE,',
' ',
'COD_COBRADOR,',
'COD_USUARIO,',
'(select nombre  ',
'from cc_clientes  cl, personas  p ',
'where cl.cod_empresa = c.cod_empresa',
'and cl.cod_persona = p.cod_persona',
'and cl.cod_cliente=c.cod_cliente)nombre_cliente,',
'',
'',
'nvl((select  ''Visita Abierta NGO:   (ID VISITA:''||ID||'')''   ',
'  from cc_visit_cast v, cc_clientes cc, personas  p',
'  where v.cod_empresa=c.cod_empresa',
'  and fecha_fin_visita is null',
'  and c.cod_cliente=v.codigo_cliente',
'  and codigo_usuario = :P0_COD_CUSTODIO',
'  and cc.cod_empresa=v.cod_empresa',
'  and cc.cod_cliente=v.codigo_cliente',
'  and cc.cod_persona=p.cod_persona),',
'  (select  ''Visita Abierta CPH:  (ID VISITA:''||ID||'')'' ',
'  from cc_visit_cast@dblink_cph v, cc_clientes@dblink_cph cc, personas@dblink_cph  p',
'  where v.cod_empresa=''1''',
'  and fecha_fin_visita is null',
'  and codigo_usuario = :P0_COD_CUSTODIO',
'  and c.cod_cliente=v.codigo_cliente',
'  and cc.cod_empresa=v.cod_empresa',
'  and cc.cod_cliente=v.codigo_cliente',
'  and cc.cod_persona=p.cod_persona))visita',
'',
'',
'FROM CC_GESTIONES_VISITAS  c',
'WHERE COD_EMPRESA=''1''',
'AND (REALIZADO = :P46_ESTADO OR :P46_ESTADO IS NULL)',
'AND (cod_cobrador = :P46_cobrador OR :P46_cobrador IS NULL)',
'and trunc(fec_visita) between :P46_FECHA_INICIO AND :P46_FECHA_FIN',
'AND (COD_MOTIVO_VISITA = :P46_MOTIVO OR :P46_MOTIVO IS NULL)',
'ORDER BY fec_visita, hora_visita'))
,p_plug_source_type=>'NATIVE_IR'
,p_translate_title=>'N'
,p_ajax_items_to_submit=>'P46_DISPLAY_AS,P46_ESTADO,P46_MOTIVO,P46_FECHA_INICIO,P46_FECHA_FIN,P46_COBRADOR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>210
,p_prn_height=>297
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#9bafde'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'normal'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#efefef'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(96605005594503332)
,p_max_row_count=>'100000'
,p_max_rows_per_page=>'100'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_display_row_count=>'Y'
,p_report_list_mode=>'TABS'
,p_fixed_header=>'NONE'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'INV'
,p_internal_uid=>96605005594503332
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13651272010998275)
,p_db_column_name=>'NRO_MOVIMIENTO'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Nro Movimiento'
,p_column_link=>'f?p=&APP_ID.:82:&SESSION.::&DEBUG.:RP,82:P82_NRO_MOVIMIENTO,P82_COD_CLIENTE,P82_COBRADOR:#NRO_MOVIMIENTO#,#COD_CLIENTE#,#COD_COBRADOR#'
,p_column_linktext=>'#NRO_MOVIMIENTO#'
,p_column_link_attr=>'class="t-Button t-Button--simple t-Button--hot t-Button--stretch t-Button--small"'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13651605650998275)
,p_db_column_name=>'FEC_AGENDADA'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Fecha'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_column_alignment=>'CENTER'
,p_format_mask=>'DD/MM/YYYY'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13652038588998275)
,p_db_column_name=>'HORA_AGENDADA'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Hora Agendada'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13652423081998276)
,p_db_column_name=>'FEC_VISITA'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Fecha'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_format_mask=>'DD/MM/YYYY'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13652819274998276)
,p_db_column_name=>'HORA_VISITA'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Hora'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13653242114998276)
,p_db_column_name=>'CONTACTO'
,p_display_order=>150
,p_column_identifier=>'O'
,p_column_label=>'Contacto'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13653631565998276)
,p_db_column_name=>'COD_MOTIVO_VISITA'
,p_display_order=>170
,p_column_identifier=>'Q'
,p_column_label=>'Motivo'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_rpt_named_lov=>wwv_flow_imp.id(13659706906998287)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13654075854998276)
,p_db_column_name=>'DIRECCION'
,p_display_order=>190
,p_column_identifier=>'S'
,p_column_label=>'Direccion'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13654447685998277)
,p_db_column_name=>'COD_CLIENTE'
,p_display_order=>220
,p_column_identifier=>'V'
,p_column_label=>'Cliente'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13654867058998277)
,p_db_column_name=>'COD_COBRADOR'
,p_display_order=>240
,p_column_identifier=>'X'
,p_column_label=>'Cobrador'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_rpt_named_lov=>wwv_flow_imp.id(13659162274998285)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13655236390998277)
,p_db_column_name=>'COD_USUARIO'
,p_display_order=>250
,p_column_identifier=>'Y'
,p_column_label=>'Cod Usuario'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13655697172998277)
,p_db_column_name=>'NOMBRE_CLIENTE'
,p_display_order=>260
,p_column_identifier=>'Z'
,p_column_label=>'Nombre Cliente'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13650861170998274)
,p_db_column_name=>'VISITA'
,p_display_order=>270
,p_column_identifier=>'AA'
,p_column_label=>'Visita'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(96639619419160699)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'717780'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>100
,p_report_columns=>'NRO_MOVIMIENTO:COD_CLIENTE:NOMBRE_CLIENTE:FEC_AGENDADA:HORA_AGENDADA:DIRECCION:CONTACTO:COD_COBRADOR:COD_MOTIVO_:VISITA'
,p_sort_column_1=>'HORA_AGENDADA'
,p_sort_direction_1=>'ASC'
,p_sort_column_2=>'FEC_AGENDADA'
,p_sort_direction_2=>'ASC'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(10719689574730089130)
,p_plug_name=>'Gestion de Cobros'
,p_region_template_options=>'#DEFAULT#:t-HeroRegion--hideIcon'
,p_plug_template=>wwv_flow_imp.id(40115692756263658)
,p_plug_display_sequence=>70
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(6816501386398533106)
,p_plug_name=>'Page Settings'
,p_parent_plug_id=>wwv_flow_imp.id(10719689574730089130)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(13643109054998269)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(86935860312601712)
,p_button_name=>'BUSCAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187078917263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'BUSCAR'
,p_button_position=>'EDIT'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-refresh'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(13656683666998278)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(10719689574730089130)
,p_button_name=>'Crear_Visita'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Crear Visita'
,p_button_position=>'NEXT'
,p_button_redirect_url=>'f?p=&APP_ID.:652:&SESSION.::&DEBUG.:RP,652::'
,p_icon_css_classes=>'fa-plus'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13643545532998269)
,p_name=>'P46_COBRADOR'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(86935860312601712)
,p_item_default=>':P0_COD_COBRADOR'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>'Cobrador'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select NOMBRE as d,',
'       C.COD_COBRADOR as r',
'  from CC_COBRADORES C, PERSONAS P',
'WHERE C.COD_EMPRESA=''1''',
'AND C.COD_PERSONA=P.COD_PERSONA',
'and activo=''S''',
' order by 1'))
,p_lov_display_null=>'YES'
,p_cSize=>30
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
 p_id=>wwv_flow_imp.id(13643948514998269)
,p_name=>'P46_ESTADO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(86935860312601712)
,p_item_default=>'P'
,p_prompt=>'Estado'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ''PENDIENTE'' D, ''P'' C',
'from dual union all',
'select ''REALIZADO'' D, ''S'' C',
'from dual '))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13644392089998269)
,p_name=>'P46_MOTIVO'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(86935860312601712)
,p_prompt=>'Motivo'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'LV_MOTIVO_VISITA_GESTION_COBRANZA1'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select DESCRIPCION as d,',
'       COD_MOTIVO as r',
'  from CA_MOTIVO_VISITA',
' order by 1'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13644721928998270)
,p_name=>'P46_FECHA_INICIO'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(86935860312601712)
,p_item_default=>'SYSDATE'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>'Fecha Inicio'
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
 p_id=>wwv_flow_imp.id(13645114295998270)
,p_name=>'P46_FECHA_FIN'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(86935860312601712)
,p_item_default=>'SYSDATE'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>'Fecha Fin'
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
 p_id=>wwv_flow_imp.id(13657306482998279)
,p_name=>'P46_DISPLAY_AS'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(6816501386398533106)
,p_item_default=>'CARDS'
,p_prompt=>'Display'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_named_lov=>'PILL_DISPLAY_AS_GC'
,p_lov=>'.'||wwv_flow_imp.id(13660642979998289)||'.'
,p_field_template=>wwv_flow_imp.id(40186365556263678)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large:t-Form-fieldContainer--radioButtonGroup'
,p_is_persistent=>'U'
,p_lov_display_extra=>'NO'
,p_escape_on_http_output=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'4'
,p_attribute_02=>'NONE'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(13657733156998284)
,p_name=>'REFRESCAR'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(13643109054998269)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(13658299324998285)
,p_event_id=>wwv_flow_imp.id(13657733156998284)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(96604904412503331)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(13658728907998285)
,p_event_id=>wwv_flow_imp.id(13657733156998284)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(86938906182601642)
);
wwv_flow_imp.component_end;
end;
/
