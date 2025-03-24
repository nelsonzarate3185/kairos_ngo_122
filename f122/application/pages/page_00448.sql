prompt --application/pages/page_00448
begin
--   Manifest
--     PAGE: 00448
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
 p_id=>448
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'Seguimiento de Proyectos Presupuestos'
,p_alias=>'SEGUIMIENTO-DE-PROYECTOS-PRESUPUESTOS'
,p_step_title=>'Seguimiento de Proyectos Presupuestos'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  .a-IRR-header , .a-IRR-headerLink{',
'      background: #003a85!important;',
'       color: yellow !important; ',
' }',
'',
' #parametros { ',
'      background: #003a85!important;',
'',
' }',
'',
' .t-Form-label{color: darkblue !important;}'))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_last_updated_by=>'JUANSA'
,p_last_upd_yyyymmddhh24miss=>'20230713093515'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(132511175139517903)
,p_plug_name=>'PARAMETROS'
,p_region_name=>'parametros'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>990
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(132511292162517904)
,p_plug_name=>'Listado de Proyectos'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>1000
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
' SELECT '''' VER,',
'        C001 NRO',
'       ,C002 FECHA',
'       ,C003 ESTADO  ',
'       ,C004 FECHA_TENTATIVA  ',
'       ,C006 PRIORIDAD ',
'       ,C005 CATEGORIA   ',
'       ,C007 RESPONSABLE  ',
'       ,C008 CLIENTE  ',
'       ,C009 NOMBRE_PROYECTO',
'       ,C010 MONTO_PRESUPUESTO',
'       ,C011 COSTO_PREVISTO',
'       ,C012 TIPO',
'FROM APEX_COLLECTIONS  ',
'WHERE COLLECTION_NAME = ''SMPROYECTOS''  ',
'  ',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P448_ESTADO,P448_CATEGORIA'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Listado de Proyectos'
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
 p_id=>wwv_flow_imp.id(132511333286517905)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'JUANSA'
,p_internal_uid=>132511333286517905
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(132512616382517918)
,p_db_column_name=>'VER'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Ver'
,p_column_link=>'f?p=&APP_ID.:445:&SESSION.::&DEBUG.:445:P445_PARAM_NRO:#NRO#'
,p_column_linktext=>'<span class="fa fa-plus-circle" aria-hidden="true"></span>'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(132512785241517919)
,p_db_column_name=>'ESTADO'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>'Estado'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(132512904475517921)
,p_db_column_name=>'PRIORIDAD'
,p_display_order=>160
,p_column_identifier=>'P'
,p_column_label=>'Prioridad'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(132513031798517922)
,p_db_column_name=>'CATEGORIA'
,p_display_order=>170
,p_column_identifier=>'Q'
,p_column_label=>'Categoria'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(132513137765517923)
,p_db_column_name=>'RESPONSABLE'
,p_display_order=>180
,p_column_identifier=>'R'
,p_column_label=>'Responsable'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(132513232991517924)
,p_db_column_name=>'CLIENTE'
,p_display_order=>190
,p_column_identifier=>'S'
,p_column_label=>'Cliente'
,p_allow_sorting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'RICH_TEXT'
,p_rich_text_format=>'MARKDOWN'
,p_rpt_show_filter_lov=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(132513316474517925)
,p_db_column_name=>'NOMBRE_PROYECTO'
,p_display_order=>200
,p_column_identifier=>'T'
,p_column_label=>'Nombre Proyecto'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(133463054384476641)
,p_db_column_name=>'NRO'
,p_display_order=>210
,p_column_identifier=>'U'
,p_column_label=>'Nro'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(133463173595476642)
,p_db_column_name=>'FECHA'
,p_display_order=>220
,p_column_identifier=>'V'
,p_column_label=>'Fecha'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(133463201153476643)
,p_db_column_name=>'FECHA_TENTATIVA'
,p_display_order=>230
,p_column_identifier=>'W'
,p_column_label=>'Fecha Tentativa'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(133463357341476644)
,p_db_column_name=>'MONTO_PRESUPUESTO'
,p_display_order=>240
,p_column_identifier=>'X'
,p_column_label=>'Monto Presupuesto'
,p_column_type=>'STRING'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(133463410023476645)
,p_db_column_name=>'COSTO_PREVISTO'
,p_display_order=>250
,p_column_identifier=>'Y'
,p_column_label=>'Costo Previsto'
,p_column_type=>'STRING'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(165070370597894650)
,p_db_column_name=>'TIPO'
,p_display_order=>260
,p_column_identifier=>'Z'
,p_column_label=>'Tipo'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(132540677176407716)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1325407'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'VER:TIPO:NRO:FECHA:FECHA_TENTATIVA:CLIENTE:ESTADO:CATEGORIA:PRIORIDAD:NOMBRE_PROYECTO:COSTO_PREVISTO:MONTO_PRESUPUESTO:RESPONSABLE:'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(133462366554476634)
,p_button_sequence=>90
,p_button_plug_id=>wwv_flow_imp.id(132511175139517903)
,p_button_name=>'filtrar'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--iconRight:t-Button--gapTop'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Filtrar'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'u-color-21-bg u-color-43-text'
,p_icon_css_classes=>'fa-search'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(133462539700476636)
,p_button_sequence=>100
,p_button_plug_id=>wwv_flow_imp.id(132511175139517903)
,p_button_name=>'Limpiar'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--iconRight:t-Button--gapTop'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Limpiar Campos'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'u-color-21-bg u-color-43-text'
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(133461714629476628)
,p_name=>'P448_ESTADO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(132511175139517903)
,p_prompt=>'Estado'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT DISTINCT ESTADO_PROY, ESTADO_PROY COD',
'from SM_OT_OBRA o',
'where cod_empresa = :P_COD_EMPRESA ',
'AND ESTADO_PROY IS NOT NULL',
';'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'-TODOS-'
,p_cHeight=>1
,p_colspan=>3
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(133461880542476629)
,p_name=>'P448_FEC_TENTATIVA_INI'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(132511175139517903)
,p_prompt=>' Fecha Tentativa desde'
,p_format_mask=>'DD/MM/YYYY'
,p_display_as=>'NATIVE_DATE_PICKER_JET'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_begin_on_new_field=>'N'
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
 p_id=>wwv_flow_imp.id(133461906217476630)
,p_name=>'P448_FEC_TENTATIVA_FIN'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(132511175139517903)
,p_prompt=>'Fecha Tentativa hasta'
,p_format_mask=>'DD/MM/YYYY'
,p_display_as=>'NATIVE_DATE_PICKER_JET'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_begin_on_new_field=>'N'
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
 p_id=>wwv_flow_imp.id(133462090514476631)
,p_name=>'P448_RESPONSABLE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(132511175139517903)
,p_prompt=>'Responsable'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT DISTINCT  NOMBRE, RESPONSABLE_PROY',
'from SM_OT_OBRA O,',
'     PERSONAS P',
'where cod_empresa = :P_COD_EMPRESA ',
'AND RESPONSABLE_PROY = COD_PERSONA',
'',
';'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'-TODOS-'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_begin_on_new_field=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(133462166035476632)
,p_name=>'P448_CATEGORIA'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(132511175139517903)
,p_prompt=>'Categoria'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT DISTINCT CATEGORIA_PROY, CATEGORIA_PROY COD',
'from SM_OT_OBRA o',
'where cod_empresa = :P_COD_EMPRESA ',
'AND CATEGORIA_PROY IS NOT NULL;'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'-TODOS-'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(133462293160476633)
,p_name=>'P448_PRIORIDAD'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(132511175139517903)
,p_prompt=>'Prioridad'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT DISTINCT PRIORIDAD_PROY, PRIORIDAD_PROY COD',
'from SM_OT_OBRA o',
'where cod_empresa = :P_COD_EMPRESA ',
'AND PRIORIDAD_PROY IS NOT NULL;'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'-TODOS-'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(133462413891476635)
,p_name=>'P448_CLIENTE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(132511175139517903)
,p_prompt=>'Cliente'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT DISTINCT P.NOMBRE ||'' - ''||  O.COD_CLIENTE, O.COD_CLIENTE',
'from SM_OT_OBRA o,',
'     CC_CLIENTES C,',
'     PERSONAS P',
'where O.cod_empresa = :P_COD_EMPRESA ',
'AND   O.COD_EMPRESA = C.COD_EMPRESA',
'AND   O.COD_CLIENTE = C.COD_CLIENTE',
'AND   C.COD_PERSONA = P.COD_PERSONA',
';'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'-TODOS-'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_begin_on_new_field=>'N'
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
 p_id=>wwv_flow_imp.id(165070257246894649)
,p_name=>'P448_TIPO'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(132511175139517903)
,p_prompt=>'Tipo'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC2:TODOS;T,OBRAS;O,MANTENIMIENTO;M,VRF;V'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(133462689369476637)
,p_name=>'da_limpiar'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(133462539700476636)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(133462732214476638)
,p_event_id=>wwv_flow_imp.id(133462689369476637)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P448_ESTADO,P448_CATEGORIA,P448_PRIORIDAD,P448_FEC_TENTATIVA_INI,P448_RESPONSABLE,P448_CLIENTE,P448_FEC_TENTATIVA_FIN'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(133462827117476639)
,p_name=>'DA_FILTRAR'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(133462366554476634)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(171354959476796101)
,p_event_id=>wwv_flow_imp.id(133462827117476639)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var spinner = apex.util.showSpinner();',
''))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(133462923855476640)
,p_event_id=>wwv_flow_imp.id(133462827117476639)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  BEGIN ',
'  inv.smotobra.carga_grilla(pi_cod_empresa => :p_cod_empresa,',
'                            pi_cliente => :P448_CLIENTE,',
'                            pi_prioridad => :P448_PRIORIDAD,',
'                            pi_categoria => :P448_CATEGORIA,',
'                            pi_responsable => :P448_RESPONSABLE,',
'                            pi_estado => :P448_ESTADO,',
'                            pi_cod_vendedor => NULL,',
'                            pi_fec_tenta_ini => :P448_FEC_TENTATIVA_INI,',
'                            pi_fec_tenta_fin => :P448_FEC_TENTATIVA_FIN,',
'                            PI_TIPO =>:P448_TIPO);',
'EXCEPTION',
'    WHEN OTHERS THEN',
'         raise_application_error(-20000,  sqlerrm );',
'END;'))
,p_attribute_02=>'P448_ESTADO,P448_CATEGORIA,P448_PRIORIDAD,P448_FEC_TENTATIVA_INI,P448_RESPONSABLE,P448_CLIENTE,P448_FEC_TENTATIVA_FIN,P448_TIPO'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(171355010774796102)
,p_event_id=>wwv_flow_imp.id(133462827117476639)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$("#apex_wait_overlay").remove();',
'$(".u-Processing").remove();'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(133463697288476647)
,p_event_id=>wwv_flow_imp.id(133462827117476639)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(132511292162517904)
);
wwv_flow_imp.component_end;
end;
/
