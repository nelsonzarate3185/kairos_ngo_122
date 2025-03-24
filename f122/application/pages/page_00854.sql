prompt --application/pages/page_00854
begin
--   Manifest
--     PAGE: 00854
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
 p_id=>854
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'CRED Y COB - ACTUALIZAR AGENTES Y COBRADORES'
,p_alias=>'CRED-Y-COB-ACTUALIZAR-AGENTES-Y-COBRADORES'
,p_step_title=>'CRED Y COB - ACTUALIZAR AGENTES Y COBRADORES'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_last_updated_by=>'OSCARGO'
,p_last_upd_yyyymmddhh24miss=>'20250321135338'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(480889858121839115)
,p_plug_name=>'PARAMETROS'
,p_region_template_options=>'#DEFAULT#:t-Region--accent1:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_grid_column_span=>7
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(480889926654839116)
,p_plug_name=>'CLIENTES_FILTRADOS'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>30
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select seq_id as reg_seq_id,',
'c001 cod_empresa,',
'c002 cod_cliente,',
'c003 cod_persona,',
'c004 nombre_cliente,',
'c005 cod_cobrador,',
'c006 cod_agente,',
'c007 Zona,',
'c008 grupo_zona',
'from apex_collections',
'where collection_name = ''CRED_COB_CLIENTES_FILTRO'';'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'CLIENTES_FILTRADOS'
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
 p_id=>wwv_flow_imp.id(480890022010839117)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y_OF_Z'
,p_pagination_display_pos=>'TOP_AND_BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link=>'javascript:$s(''P854_SELECCIONADO'',''#REG_SEQ_ID#'');'
,p_detail_link_text=>'<span aria-hidden="true" class="fa fa-eraser"></span>'
,p_owner=>'OSCARGO'
,p_internal_uid=>480890022010839117
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(480890199312839118)
,p_db_column_name=>'COD_EMPRESA'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Cod Empresa'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(480890233679839119)
,p_db_column_name=>'COD_CLIENTE'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Cod Cliente'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(480890356388839120)
,p_db_column_name=>'COD_PERSONA'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Cod Persona'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(480890421575839121)
,p_db_column_name=>'NOMBRE_CLIENTE'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Nombre Cliente'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(480890503422839122)
,p_db_column_name=>'COD_COBRADOR'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Cobrador'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(480890640643839123)
,p_db_column_name=>'COD_AGENTE'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Agente'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(496627026798262509)
,p_db_column_name=>'REG_SEQ_ID'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Reg Seq Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(496627515015262514)
,p_db_column_name=>'ZONA'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Zona'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(496627658848262515)
,p_db_column_name=>'GRUPO_ZONA'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Grupo Zona'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(496582133050248821)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'4965822'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'COD_CLIENTE:COD_PERSONA:NOMBRE_CLIENTE:COD_COBRADOR:COD_AGENTE:ZONA:GRUPO_ZONA:'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(480891755191839134)
,p_plug_name=>unistr('Actualizaci\00F3n Masiva')
,p_region_template_options=>'#DEFAULT#:t-Region--accent1:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>20
,p_plug_new_grid_row=>false
,p_plug_grid_column_span=>5
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(480891960694839136)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(480891755191839134)
,p_button_name=>'ACT_COBRADOR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--primary:t-Button--stretch:t-Button--gapBottom'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_image_alt=>'Actualiza Cobrador'
,p_warn_on_unsaved_changes=>null
,p_confirm_message=>unistr('\00BFSeguro que quieres actualizar el cobrador de los clientes que est\00E1n en el listado?')
,p_grid_new_row=>'Y'
,p_security_scheme=>wwv_flow_imp.id(255764604597109404)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(480892449753839141)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(480891755191839134)
,p_button_name=>'BTN_ACT_AGENTE'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--primary:t-Button--stretch'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_image_alt=>'Actualiza Agente'
,p_warn_on_unsaved_changes=>null
,p_confirm_message=>unistr('\00BFSeguro que quieres actualizar el agente de los clientes que est\00E1n en el listado?')
,p_grid_new_row=>'Y'
,p_security_scheme=>wwv_flow_imp.id(255764604597109404)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(480891127709839128)
,p_button_sequence=>70
,p_button_plug_id=>wwv_flow_imp.id(480889858121839115)
,p_button_name=>'BTN_FILTRAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--padTop'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_image_alt=>unistr('Filtrar b\00FAsqueda')
,p_warn_on_unsaved_changes=>null
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(480893292672839149)
,p_button_sequence=>80
,p_button_plug_id=>wwv_flow_imp.id(480889858121839115)
,p_button_name=>'BTN_LIMPIAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--gapTop'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_image_alt=>'Restablecer'
,p_warn_on_unsaved_changes=>null
,p_grid_new_row=>'N'
,p_grid_column=>11
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(480890910696839126)
,p_name=>'P854_CLIENTES'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(480889858121839115)
,p_prompt=>'Clientes'
,p_display_as=>'PLUGIN_BE.CTB.SELECT2'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select c.cod_cliente ||'' - ''||p.nombre cliente, c.cod_cliente from cc_clientes c',
'inner join personas p on c.cod_persona = p.cod_persona',
'and c.cod_empresa = :P_COD_EMPRESA',
'and cod_cobrador is not null;'))
,p_lov_display_null=>'YES'
,p_field_template=>wwv_flow_imp.id(40186576483263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'SINGLE'
,p_attribute_08=>'CIC'
,p_attribute_10=>'450'
,p_attribute_14=>'Y'
,p_attribute_15=>'50'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(480891604073839133)
,p_name=>'P854_COBRADORES'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(480889858121839115)
,p_prompt=>'Cobradores'
,p_display_as=>'PLUGIN_BE.CTB.SELECT2'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select cob.cod_cobrador||'' - ''||p.nombre as cobrador, cob.cod_cobrador from',
'cc_cobradores cob',
'inner join personas p on cob.cod_empresa = :P_COD_EMPRESA',
'and cob.cod_persona = p.cod_persona and cob.cod_cobrador not in(''74'');'))
,p_lov_display_null=>'YES'
,p_field_template=>wwv_flow_imp.id(40186576483263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'SINGLE'
,p_attribute_08=>'CIC'
,p_attribute_10=>'450'
,p_attribute_14=>'Y'
,p_attribute_15=>'50'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(480891864120839135)
,p_name=>'P854_ASIGNA_COBRADOR'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(480891755191839134)
,p_prompt=>'Asigna Cobrador'
,p_display_as=>'PLUGIN_BE.CTB.SELECT2'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select cob.cod_cobrador ||'' - ''||p.nombre cobrador, cob.cod_cobrador ',
'from cc_cobradores cob',
'inner join personas p on cob.cod_empresa = :P_COD_EMPRESA',
'and cob.cod_persona = p.cod_persona;'))
,p_lov_display_null=>'YES'
,p_field_template=>wwv_flow_imp.id(40186576483263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'SINGLE'
,p_attribute_08=>'CIC'
,p_attribute_10=>'450'
,p_attribute_14=>'Y'
,p_attribute_15=>'50'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(480892327198839140)
,p_name=>'P854_ASIGNA_AGENTE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(480891755191839134)
,p_prompt=>'Asigna Agente'
,p_display_as=>'PLUGIN_BE.CTB.SELECT2'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ac.cod_agente||'' - ''||p.nombre agente, ac.cod_agente ',
'from cc_agente_cobro ac',
'inner join personas p on ac.cod_empresa = :P_COD_EMPRESA and ac.cod_persona = p.cod_persona;'))
,p_lov_display_null=>'YES'
,p_field_template=>wwv_flow_imp.id(40186576483263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'SINGLE'
,p_attribute_08=>'CIC'
,p_attribute_10=>'450'
,p_attribute_14=>'Y'
,p_attribute_15=>'50'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(480893030482839147)
,p_name=>'P854_ZONAS'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(480889858121839115)
,p_prompt=>'Zonas'
,p_display_as=>'PLUGIN_BE.CTB.SELECT2'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select cod_zona||'' -''||descripcion zona, cod_zona',
'from zonas_geograficas;'))
,p_lov_display_null=>'YES'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186576483263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'SINGLE'
,p_attribute_08=>'CIC'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(496626886862262507)
,p_name=>'P854_AGENTES'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(480889858121839115)
,p_prompt=>'Agentes'
,p_display_as=>'PLUGIN_BE.CTB.SELECT2'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ac.cod_agente||'' - ''||p.nombre agente, ac.cod_agente',
'from cc_agente_cobro ac',
'inner join personas p on ac.cod_empresa = :P_COD_EMPRESA and ac.cod_persona = p.cod_persona;'))
,p_lov_display_null=>'YES'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186576483263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'SINGLE'
,p_attribute_08=>'CIC'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(496626961332262508)
,p_name=>'P854_SELECCIONADO'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(480891755191839134)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(480891287721839129)
,p_name=>'DA_FILTRAR'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(480891127709839128)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(496626558811262504)
,p_event_id=>wwv_flow_imp.id(480891287721839129)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.widget.waitPopup();'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(480891325972839130)
,p_event_id=>wwv_flow_imp.id(480891287721839129)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'v_conteo number;',
'BEGIN',
'    if :P854_CLIENTES is not null or :P854_COBRADORES is not null or :P854_ZONAS is not null or :P854_AGENTES is not null then',
'        for a in (select c.cod_empresa, p.nombre, c.cod_cliente, p.cod_persona, c.cod_cobrador, pcob.nombre cobrador,',
'        ag.cod_agente, pag.nombre agente, z.cod_zona, z.descripcion zona, z.cod_grupo as grupo_zona',
'        from cc_clientes c',
'        inner join personas p on c.cod_persona = p.cod_persona',
'        and c.cod_empresa = :P_COD_EMPRESA',
'        and ((:P854_CLIENTES is not null and c.cod_cliente = :P854_CLIENTES) or :P854_CLIENTES is null)',
'        and ((:P854_COBRADORES is not null and c.cod_cobrador = :P854_COBRADORES) or :P854_COBRADORES is null)',
'        and ((:P854_ZONAS is not null and c.cod_zona = :P854_ZONAS) or :P854_ZONAS is null)',
'        and ((:P854_AGENTES is not null and c.cod_agente = :P854_AGENTES) or :P854_AGENTES is null)',
'        left join cc_cobradores cob on cob.cod_empresa = c.cod_empresa and cob.cod_cobrador = c.cod_cobrador',
'        left join personas pcob on pcob.cod_persona = cob.cod_persona',
'        left join cc_agente_cobro ag on ag.cod_empresa = :P_COD_EMPRESA and ag.cod_agente = c.cod_agente',
'        left join personas pag on pag.cod_persona = ag.cod_persona',
'        left join zonas_geograficas z on z.cod_zona = c.cod_zona)',
'        loop',
'            select count(*) into v_conteo from apex_collections',
'                where collection_name = ''CRED_COB_CLIENTES_FILTRO''',
'                and c001 = a.cod_empresa and c002 = a.cod_cliente;',
'            if v_conteo = 0 then',
'                APEX_COLLECTION.add_member(p_collection_name => ''CRED_COB_CLIENTES_FILTRO'',',
'                        p_c001 => :P_COD_EMPRESA,',
'                        p_c002 => a.cod_cliente,',
'                        p_c003 => a.cod_persona,',
'                        p_c004 => a.nombre,',
'                        p_c005 => a.cod_cobrador ||'' - ''||a.cobrador,',
'                        p_c006 => a.cod_agente ||'' - ''|| a.agente,',
'                        p_c007 => a.cod_zona || '' - ''|| a.zona,',
'                        p_c008 => a.grupo_zona);',
'            end if;',
'        end loop;',
'    end if;',
'END;'))
,p_attribute_02=>'P854_CLIENTES,P854_COBRADORES,P854_ZONAS,P854_AGENTES'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(496626626787262505)
,p_event_id=>wwv_flow_imp.id(480891287721839129)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$("#apex_wait_overlay").remove();',
'$(".u-Processing").remove();'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(480891550415839132)
,p_event_id=>wwv_flow_imp.id(480891287721839129)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(480889926654839116)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(480892041375839137)
,p_name=>'DA_ACT_COBRADOR'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(480891960694839136)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(480892127463839138)
,p_event_id=>wwv_flow_imp.id(480892041375839137)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'v_cobrador_ant cc_cobradores.cod_cobrador%type;',
'begin',
'    if :P854_ASIGNA_COBRADOR is not null then',
'        FOR c IN (select * from apex_collections where collection_name = ''CRED_COB_CLIENTES_FILTRO'')',
'        loop',
'            select cod_cobrador into v_cobrador_ant from cc_clientes where cod_empresa = c.c001 and cod_cliente = c.c002;',
'            insert into cc_clientes_log_cambios (cod_empresa, cod_cliente, campo, anterior, actual, usuario, fecha, modo)',
'            values (c.c001, c.c002, ''cod_cobrador'',v_cobrador_ant, :P854_ASIGNA_COBRADOR, :P_COD_USUARIO, sysdate, ''PAGE_ID_854'');',
'            update cc_clientes set cod_cobrador = :P854_ASIGNA_COBRADOR',
'            where cod_empresa = c.c001',
'            and cod_cliente = c.c002;',
'        end loop;',
'    end if;',
'end;    '))
,p_attribute_02=>'P854_ASIGNA_COBRADOR'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(480892281123839139)
,p_event_id=>wwv_flow_imp.id(480892041375839137)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>unistr('Actualizaci\00F3n de registros completada')
,p_attribute_02=>'MENSAJE DE CONFIRMACION'
,p_attribute_03=>'success'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P854_ASIGNA_COBRADOR'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(480892884511839145)
,p_event_id=>wwv_flow_imp.id(480892041375839137)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_02=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(480892587350839142)
,p_name=>'DA_ACT_AGENTE'
,p_event_sequence=>30
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(480892449753839141)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(480892664044839143)
,p_event_id=>wwv_flow_imp.id(480892587350839142)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'v_agente_ant cc_agente_cobro.cod_agente%type;',
'begin',
'    if :P854_ASIGNA_AGENTE is not null then',
'        FOR c IN (select * from apex_collections where collection_name = ''CRED_COB_CLIENTES_FILTRO'')',
'        loop',
'            select cod_agente into v_agente_ant from cc_clientes where cod_empresa = c.c001 and cod_cliente = c.c002;',
'            insert into cc_clientes_log_cambios (cod_empresa, cod_cliente, campo, anterior, actual, usuario, fecha, modo)',
'            values (c.c001, c.c002, ''cod_agente'',v_agente_ant, :P854_ASIGNA_AGENTE, :P_COD_USUARIO, sysdate, ''PAGE_ID_854'');',
'            update cc_clientes set cod_agente = :P854_ASIGNA_AGENTE',
'            where cod_empresa = c.c001',
'            and cod_cliente = c.c002;',
'        end loop;',
'    end if;',
'end; '))
,p_attribute_02=>'P854_ASIGNA_AGENTE'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(480892749622839144)
,p_event_id=>wwv_flow_imp.id(480892587350839142)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>unistr('Actualizaci\00F3n de registros completada')
,p_attribute_02=>'MENSAJE DE CONFIRMACION'
,p_attribute_03=>'success'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P854_ASIGNA_AGENTE'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(480892936326839146)
,p_event_id=>wwv_flow_imp.id(480892587350839142)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_02=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(480893382095839150)
,p_name=>'DA_LIMPIAR'
,p_event_sequence=>40
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(480893292672839149)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(496626443353262503)
,p_event_id=>wwv_flow_imp.id(480893382095839150)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_02=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(496627177388262510)
,p_name=>'DA_SELECCIONADO'
,p_event_sequence=>50
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P854_SELECCIONADO'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(496627388100262512)
,p_event_id=>wwv_flow_imp.id(496627177388262510)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>unistr('\00BFSeguro que quieres excluir al cliente seleccionado?')
,p_attribute_02=>'Confirmar'
,p_attribute_03=>'warning'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(496627298185262511)
,p_event_id=>wwv_flow_imp.id(496627177388262510)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'APEX_COLLECTION.DELETE_MEMBER(',
'        p_collection_name => ''CRED_COB_CLIENTES_FILTRO'',',
'        p_seq => :P854_SELECCIONADO',
');'))
,p_attribute_02=>'P854_SELECCIONADO'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(496627481877262513)
,p_event_id=>wwv_flow_imp.id(496627177388262510)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(480889926654839116)
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(480891445539839131)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'INICO'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'v_conteo number;',
'BEGIN',
'    select count(*) into v_conteo from apex_collections where collection_name = ''CRED_COB_CLIENTES_FILTRO'';',
'    if v_conteo > 0 then',
'        APEX_COLLECTION.DELETE_COLLECTION(p_collection_name => ''CRED_COB_CLIENTES_FILTRO'');',
'    end if;',
'    APEX_COLLECTION.CREATE_OR_TRUNCATE_COLLECTION(''CRED_COB_CLIENTES_FILTRO'');',
'END;',
''))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_imp.component_end;
end;
/
