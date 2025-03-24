prompt --application/pages/page_00529
begin
--   Manifest
--     PAGE: 00529
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
 p_id=>529
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'Generar Varios Vales - STPROCAN'
,p_alias=>'GENERAR-VARIOS-VALES-STPROCAN'
,p_page_mode=>'MODAL'
,p_step_title=>'Generar Varios Vales - STPROCAN'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_height=>'580'
,p_dialog_width=>'800'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_last_updated_by=>'FCARDOZO'
,p_last_upd_yyyymmddhh24miss=>'20230511084502'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(158224141798033107)
,p_plug_name=>'Main'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--noBorder:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>1020
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(158224209966033108)
,p_plug_name=>'Report'
,p_parent_plug_id=>wwv_flow_imp.id(158224141798033107)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT distinct cod_cliente_vale,',
'       (select  C.DESCRIPCION',
'            from VT_CLIENTES_VALES C ',
'            where c.cod_empresa = ST.cod_empresa',
'            and c.COD_CLIENTE_VALE = ST.COD_CLIENTE_VALE) DESC_VALE,',
'       (select NVL(V.CANTIDAD, 0)',
'	        from VT_FILTROS_VALES V',
'            where V.cod_empresa = ST.cod_empresa',
'            and V.COD_CLIENTE = ST.COD_CLIENTE_VALE) CANTIDAD,',
'       (select NVL(V.MONTO, 0)',
'	        from VT_FILTROS_VALES V',
'            where V.cod_empresa = ST.cod_empresa',
'            and V.COD_CLIENTE = ST.COD_CLIENTE_VALE)MONTO,',
'        (select NVL(o.PUNTOS_VALES, 0)',
'	        from  st_puntos_vendedores o ',
'            where o.cod_empresa = ST.cod_empresa',
'            and o.nro_canje = :P529_AUX_NRO_CANJE',
'            and o.fec_canje = st.fec_canje)PUNTOS_VALES,',
'        ROWID',
'FROM ST_HISTORICOS_PUNTOS_CANJEADOS ST',
'WHERE :P529_AUX_IND = ''CV''',
'AND ST.NRO_CANJE = :P529_AUX_NRO_CANJE;'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P529_AUX_IND,P529_AUX_NRO_CANJE'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Report'
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
 p_id=>wwv_flow_imp.id(158224454890033110)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'AIBANEZ'
,p_internal_uid=>158224454890033110
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(158224622109033112)
,p_db_column_name=>'COD_CLIENTE_VALE'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Cod Cliente '
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(158225196413033117)
,p_db_column_name=>'ROWID'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Rowid'
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
 p_id=>wwv_flow_imp.id(159655162389763613)
,p_db_column_name=>'DESC_VALE'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>unistr('Descripci\00F3n')
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(159655228785763614)
,p_db_column_name=>'CANTIDAD'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Cantidad'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(159655346368763615)
,p_db_column_name=>'MONTO'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Monto'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(160230568688784105)
,p_db_column_name=>'PUNTOS_VALES'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Puntos Vales'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(158280125287551068)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1582802'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>5
,p_report_columns=>'COD_CLIENTE_VALE:DESC_VALE:CANTIDAD:MONTO:PUNTOS_VALES:'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(158224320693033109)
,p_plug_name=>'Info'
,p_parent_plug_id=>wwv_flow_imp.id(158224141798033107)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--noBorder:t-Region--scrollBody:margin-top-sm'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>30
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(159656292616763624)
,p_plug_name=>'Report2'
,p_parent_plug_id=>wwv_flow_imp.id(158224141798033107)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>20
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT distinct cod_cliente_vale,',
'       (select  C.DESCRIPCION',
'            from VT_CLIENTES_VALES C ',
'            where c.cod_empresa = ST.cod_empresa',
'            and c.COD_CLIENTE_VALE = ST.COD_CLIENTE_VALE) DESC_VALE,',
'       (select NVL( V.CANTIDAD, 0)',
'	        from VT_FILTROS_VALES V',
'            where V.cod_empresa = ST.cod_empresa',
'            and V.COD_CLIENTE = ST.COD_CLIENTE_VALE) CANTIDAD,',
'       (select NVL(V.MONTO, 0)',
'	        from VT_FILTROS_VALES V',
'            where V.cod_empresa = ST.cod_empresa',
'            and V.COD_CLIENTE = ST.COD_CLIENTE_VALE)MONTO,',
'        (select NVL(o.PUNTOS_VALES, 0)',
'	        from  st_puntos_vendedores o ',
'            where o.cod_empresa = ST.cod_empresa',
'            and o.nro_canje = ST.nro_canje',
'            and o.fec_canje = st.fec_canje)PUNTOS_VALES,',
'        ROWID',
'FROM ST_HISTORICOS_PUNTOS_CANJEADOS ST',
'WHERE :P529_AUX_IND = ''CA''',
'AND ST.NRO_CANJE = :P529_AUX_NRO_CANJE;'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P529_AUX_IND,P529_AUX_NRO_CANJE'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Report2'
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
 p_id=>wwv_flow_imp.id(159657889945763640)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'AIBANEZ'
,p_internal_uid=>159657889945763640
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(159657967940763641)
,p_db_column_name=>'COD_CLIENTE_VALE'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Cod Cliente '
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(159658002473763642)
,p_db_column_name=>'DESC_VALE'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>unistr('Descripci\00F3n')
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(159658124444763643)
,p_db_column_name=>'CANTIDAD'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Cantidad'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(159658259209763644)
,p_db_column_name=>'MONTO'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Monto'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(159658362058763645)
,p_db_column_name=>'ROWID'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Rowid'
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
 p_id=>wwv_flow_imp.id(160230471927784104)
,p_db_column_name=>'PUNTOS_VALES'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Puntos Vales'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(159824405392164439)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1598245'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>10
,p_report_columns=>'COD_CLIENTE_VALE:DESC_VALE:CANTIDAD:MONTO:'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(158224566128033111)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(158224141798033107)
,p_button_name=>'BT_ACEPTAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--iconRight:t-Button--hoverIconPush'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Aceptar'
,p_button_position=>'CHANGE'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-ticket'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(158225203870033118)
,p_name=>'P529_COD_VENDEDOR'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(158224320693033109)
,p_prompt=>unistr('C\00F3digo Vendedor')
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_COD_VENDEDOR_STPROCAN'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select p.nombre, COD_VENDEDOR, P.COD_PERSONA, I.NUMERO',
'	from st_vendedor_promo v, personas p, IDENT_PERSONAS I',
'	where v.cod_empresa=:p_cod_empresa',
'	and v.cod_persona=p.cod_persona',
'	AND  NVL(ACTIVO,''A'')<>''I''',
'AND I.COD_PERSONA = P.COD_PERSONA',
'AND I.COD_IDENT =''CI''',
'and (v.cod_distribuidor=:p529_cod_distribuidor or :p529_cod_distribuidor is null)'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_colspan=>4
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
 p_id=>wwv_flow_imp.id(158225386289033119)
,p_name=>'P529_DESC_VENDEDOR'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(158224320693033109)
,p_prompt=>unistr('Descripci\00F3n Vendedor')
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(158225403890033120)
,p_name=>'P529_COD_CLIENTE_VALE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(158224320693033109)
,p_prompt=>unistr('C\00F3digo Cliente ')
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_colspan=>2
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(158225594633033121)
,p_name=>'P529_DESC_VALE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(158224320693033109)
,p_prompt=>unistr('Descripci\00F3n Vale')
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(158225625573033122)
,p_name=>'P529_PORCENTAJE'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(158224320693033109)
,p_prompt=>'Porcentaje'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(159180234052757505)
,p_name=>'P529_FEC_ALTA_INI'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(158224320693033109)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(159180361163757506)
,p_name=>'P529_FEC_ALTA_FIN'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(158224320693033109)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(159180475442757507)
,p_name=>'P529_FEC_CARGA_FIN'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(158224320693033109)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(159180577456757508)
,p_name=>'P529_FEC_CARGA_INI'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(158224320693033109)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(159656438322763626)
,p_name=>'P529_AUX_IND'
,p_item_sequence=>990
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(160230645660784106)
,p_name=>'P529_AUX_NRO_CANJE'
,p_item_sequence=>1000
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(160230951800784109)
,p_name=>'P529_COD_DISTRIBUIDOR'
,p_item_sequence=>1010
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(159656050966763622)
,p_name=>'DA_DESC'
,p_event_sequence=>10
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(159656153046763623)
,p_event_id=>wwv_flow_imp.id(159656050966763622)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    IF :P529_COD_CLIENTE_VALE IS NOT NULL THEN',
'        select C.DESCRIPCION',
'        into :P529_DESC_VALE',
'        from VT_CLIENTES_VALES C ',
'        where c.cod_empresa = :P_cod_empresa',
'        and c.COD_CLIENTE_VALE = :P529_COD_CLIENTE_VALE;',
'    END IF;',
'',
'',
'',
'    EXCEPTION',
'           WHEN OTHERS THEN',
'                APEX_DEBUG.ERROR(''Error desc_vale: ''||SQLERRM);',
'END;'))
,p_attribute_02=>'P529_COD_CLIENTE_VALE,P529_COD_VENDEDOR'
,p_attribute_03=>'P529_DESC_VALE,P529_DESC_VENDEDOR'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(160230310288784103)
,p_event_id=>wwv_flow_imp.id(159656050966763622)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P529_DESC_VALE'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(159656542956763627)
,p_name=>'DA_MOSTRAR'
,p_event_sequence=>20
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(159656702651763629)
,p_event_id=>wwv_flow_imp.id(159656542956763627)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(158224209966033108)
,p_client_condition_type=>'NOT_EQUALS'
,p_client_condition_element=>'P529_AUX_IND'
,p_client_condition_expression=>'CV'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(159656943958763631)
,p_event_id=>wwv_flow_imp.id(159656542956763627)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(158224209966033108)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P529_AUX_IND'
,p_client_condition_expression=>'CV'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(159658422480763646)
,p_event_id=>wwv_flow_imp.id(159656542956763627)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(158224209966033108)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(159656898103763630)
,p_event_id=>wwv_flow_imp.id(159656542956763627)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(159656292616763624)
,p_client_condition_type=>'NOT_EQUALS'
,p_client_condition_element=>'P529_AUX_IND'
,p_client_condition_expression=>'CA'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(159657017541763632)
,p_event_id=>wwv_flow_imp.id(159656542956763627)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(159656292616763624)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P529_AUX_IND'
,p_client_condition_expression=>'CA'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(159657126998763633)
,p_event_id=>wwv_flow_imp.id(159656542956763627)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P529_COD_VENDEDOR'
,p_client_condition_type=>'NOT_EQUALS'
,p_client_condition_element=>'P529_AUX_IND'
,p_client_condition_expression=>'CV'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(159657203832763634)
,p_event_id=>wwv_flow_imp.id(159656542956763627)
,p_event_result=>'TRUE'
,p_action_sequence=>80
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P529_COD_VENDEDOR'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P529_AUX_IND'
,p_client_condition_expression=>'CV'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(159658527657763647)
,p_name=>'New'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P529_AUX_IND'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(159658624796763648)
,p_event_id=>wwv_flow_imp.id(159658527657763647)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(158224209966033108)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P529_AUX_IND'
,p_client_condition_expression=>'CV'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(160230777406784107)
,p_name=>'DA_DESC2'
,p_event_sequence=>40
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P529_COD_VENDEDOR'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(160230847623784108)
,p_event_id=>wwv_flow_imp.id(160230777406784107)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    IF :P529_COD_VENDEDOR IS NOT NULL THEN',
'            select p.nombre',
'            into :P529_DESC_VENDEDOR',
'          	from st_vendedor_promo v, personas p',
'        	where v.cod_empresa=:p_cod_empresa',
'        	and v.cod_persona=p.cod_persona',
'        	and v.cod_vendedor = :P529_COD_VENDEDOR',
'        	AND  NVL(ACTIVO,''A'')<>''I'';',
'    END IF;',
'',
'    EXCEPTION',
'        WHEN NO_DATA_FOUND THEN',
'            :P529_DESC_VENDEDOR := NULL;',
'        WHEN OTHERS THEN',
'                APEX_DEBUG.ERROR(''Error vendedor: ''||SQLERRM);',
'END;'))
,p_attribute_02=>'P529_COD_VENDEDOR'
,p_attribute_03=>'P529_DESC_VENDEDOR'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(159180004834757503)
,p_name=>'DA_CALCULO'
,p_event_sequence=>50
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(158224566128033111)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(159180148029757504)
,p_event_id=>wwv_flow_imp.id(159180004834757503)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P529_AUX_IND= ''CA'' then',
'        STPROCAN.PR_ASHIWEA(   PI_COD_EMPRESA      => :P_COD_EMPRESA,',
'                              PI_NRO_CANJE        => :P529_AUX_NRO_CANJE,',
'                              PI_FEC_ALTA_INI     => :P529_FEC_ALTA_INI,',
'                              PI_FEC_ALTA_FIN     => :P529_FEC_ALTA_FIN,',
'                              PI_COD_VENDEDOR     => :P529_COD_VENDEDOR,',
'                              PI_COD_DISTRIBUIDOR => :P529_COD_DISTRIBUIDOR,',
'                              PI_COD_CLIENTE_VALE => :P529_COD_CLIENTE_VALE,',
'                              PI_FEC_CARGA_INI    => :P529_FEC_CARGA_FIN,',
'                              PI_FEC_CARGA_FIN    => :P529_FEC_CARGA_INI,',
'                              PI_PORCENTAJE       => :P529_PORCENTAJE);',
'else',
'    STPROCAN.PR_MOBRA(    PI_COD_EMPRESA      => :P_COD_EMPRESA,',
'                      PI_NRO_CANJE        => :P529_AUX_NRO_CANJE,',
'                      PI_FEC_ALTA_INI     => :P529_FEC_ALTA_INI,',
'                      PI_FEC_ALTA_FIN     => :P529_FEC_ALTA_FIN,',
'                      PI_COD_VENDEDOR     => :P529_COD_VENDEDOR,',
'                      PI_COD_DISTRIBUIDOR => :P529_COD_DISTRIBUIDOR,',
'                      PI_COD_CLIENTE_VALE => :P529_COD_CLIENTE_VALE,',
'                      PI_FEC_CARGA_INI    => :P529_FEC_CARGA_FIN,',
'                      PI_FEC_CARGA_FIN    => :P529_FEC_CARGA_INI,',
'                      PI_PORCENTAJE       => :P529_PORCENTAJE);',
'end if;'))
,p_attribute_02=>'P529_AUX_IND'
,p_attribute_03=>'P529_COD_VENDEDOR,P529_PORCENTAJE,P529_COD_CLIENTE_VALE,P529_AUX_NRO_CANJE,P529_FEC_ALTA_INI,P529_FEC_ALTA_FIN,P529_FEC_CARGA_FIN,P529_FEC_CARGA_INI,P_COD_EMPRESA'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(159184050895757543)
,p_event_id=>wwv_flow_imp.id(159180004834757503)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'Se han realizado los cambios correctamente.'
,p_attribute_03=>'success'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(159656343289763625)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_INIT'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P529_AUX_IND := :P524_IND_PUNTOS;',
':P529_COD_CLIENTE_VALE := :P524_COD_CLIENTE;',
':P529_COD_VENDEDOR := :P524_COD_VENDEDOR;',
':P529_AUX_NRO_CANJE := :P524_NRO_CANJE;',
':P529_COD_DISTRIBUIDOR := :P524_COD_DISTRIBUIDOR;'))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_imp.component_end;
end;
/
