prompt --application/pages/page_00547
begin
--   Manifest
--     PAGE: 00547
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
 p_id=>547
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'ESTADO FACTURACION'
,p_alias=>'ESTADO-FACTURACION'
,p_step_title=>'ESTADO FACTURACION'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_last_updated_by=>'HSEGOVIA'
,p_last_upd_yyyymmddhh24miss=>'20230526154550'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(164394464036405404)
,p_plug_name=>unistr('REVISI\00D3N DE FACTURAS PROCESADAS')
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>990
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(65386176616339815)
,p_plug_name=>'FACTURAS'
,p_parent_plug_id=>wwv_flow_imp.id(164394464036405404)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT seq_id,',
'             c001   AS v_establecimiento,',
'             c002   AS v_punto_expedicion,',
'             c003   AS v_numero_doc,',
'             c004   AS v_fecha_emision,',
'             c005   AS v_cedula,',
'             c006   AS v_nombre,',
'             c007   AS v_cond_operacion,',
'             c008   AS v_tot_bru_operacion,',
'             c009   AS v_tot_oper_item,',
'             c010   AS v_iva5,',
'             c011   AS v_iva10,',
'             c012   AS v_tot_iva,',
'             c013  AS v_ba_grav_iva,',
'             c014   AS estado,',
'             c015   AS estadoEnvio,',
'             c016   AS estadoAnulacion,',
'             c017   AS RUC,',
'             c018   AS v_tot_exenta,',
'             c019   AS v_tot_gravada5,',
'             c020   AS v_tot_gravada10,',
'             c021  AS v_tot_iva5,',
'             c022  AS v_tot_iva10,',
'             c023  AS v_tot_operacion,',
'             c024  AS moneda',
'        FROM apex_collections',
'       WHERE collection_name = ''TMP_FACTURAS'''))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'FACTURAS'
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
 p_id=>wwv_flow_imp.id(65386296811339816)
,p_max_row_count=>'1000000'
,p_no_data_found_message=>'NO EXISTE FACTURAS EN EL PERIODO INGRESADO'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_fixed_header=>'REGION'
,p_fixed_header_max_height=>550
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'HSEGOVIA'
,p_internal_uid=>65386296811339816
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(65386347687339817)
,p_db_column_name=>'SEQ_ID'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Seq Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(65386432660339818)
,p_db_column_name=>'V_ESTABLECIMIENTO'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'ESTABLECIMIENTO'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(65386501859339819)
,p_db_column_name=>'V_PUNTO_EXPEDICION'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>unistr('PUNTO EXPEDICI\00D3N')
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(65386681652339820)
,p_db_column_name=>'V_NUMERO_DOC'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>unistr('N\00DAMERO DOCUMENTO')
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(65386719096339821)
,p_db_column_name=>'V_FECHA_EMISION'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>unistr('FECHA EMISI\00D3N')
,p_column_type=>'STRING'
,p_format_mask=>'DD/MM/YYYY'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(65386805053339822)
,p_db_column_name=>'V_CEDULA'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'RUC'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(65386919546339823)
,p_db_column_name=>'V_NOMBRE'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'NOMBRE'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(65387079467339824)
,p_db_column_name=>'V_COND_OPERACION'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>unistr('OPERACI\00D3N')
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(65388005203339834)
,p_db_column_name=>'ESTADO'
,p_display_order=>150
,p_column_identifier=>'O'
,p_column_label=>'ESTADO'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(65388147340339835)
,p_db_column_name=>'ESTADOENVIO'
,p_display_order=>160
,p_column_identifier=>'P'
,p_column_label=>unistr('ESTADO ENV\00CDO')
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(65388289124339836)
,p_db_column_name=>'ESTADOANULACION'
,p_display_order=>170
,p_column_identifier=>'Q'
,p_column_label=>unistr('ESTADO ANULACI\00D3N')
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(65389532610339849)
,p_db_column_name=>'RUC'
,p_display_order=>240
,p_column_identifier=>'X'
,p_column_label=>'Ruc'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(166400048085183330)
,p_db_column_name=>'V_TOT_OPERACION'
,p_display_order=>360
,p_column_identifier=>'BC'
,p_column_label=>unistr('TOTAL DE LA OPERACI\00D3N')
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(166400134860183331)
,p_db_column_name=>'V_TOT_BRU_OPERACION'
,p_display_order=>370
,p_column_identifier=>'BD'
,p_column_label=>'V Tot Bru Operacion'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(166400278193183332)
,p_db_column_name=>'V_TOT_OPER_ITEM'
,p_display_order=>380
,p_column_identifier=>'BE'
,p_column_label=>'V Tot Oper Item'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(166400376090183333)
,p_db_column_name=>'V_IVA5'
,p_display_order=>390
,p_column_identifier=>'BF'
,p_column_label=>'V Iva5'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(166400400160183334)
,p_db_column_name=>'V_IVA10'
,p_display_order=>400
,p_column_identifier=>'BG'
,p_column_label=>'V Iva10'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(166400594571183335)
,p_db_column_name=>'V_TOT_IVA'
,p_display_order=>410
,p_column_identifier=>'BH'
,p_column_label=>'V Tot Iva'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(166400686716183336)
,p_db_column_name=>'V_BA_GRAV_IVA'
,p_display_order=>420
,p_column_identifier=>'BI'
,p_column_label=>'V Ba Grav Iva'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(166400776863183337)
,p_db_column_name=>'V_TOT_EXENTA'
,p_display_order=>430
,p_column_identifier=>'BJ'
,p_column_label=>'TOTAL EXENTA'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(166400887613183338)
,p_db_column_name=>'V_TOT_GRAVADA5'
,p_display_order=>440
,p_column_identifier=>'BK'
,p_column_label=>'TOTAL GRAVADA 5%'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(166400953806183339)
,p_db_column_name=>'V_TOT_GRAVADA10'
,p_display_order=>450
,p_column_identifier=>'BL'
,p_column_label=>'TOTAL GRAVADA 10%'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(166401065036183340)
,p_db_column_name=>'V_TOT_IVA5'
,p_display_order=>460
,p_column_identifier=>'BM'
,p_column_label=>'TOTAL IVA  5%'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(166401119834183341)
,p_db_column_name=>'V_TOT_IVA10'
,p_display_order=>470
,p_column_identifier=>'BN'
,p_column_label=>'TOTAL IVA  10%'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(166401226759183342)
,p_db_column_name=>'MONEDA'
,p_display_order=>480
,p_column_identifier=>'BO'
,p_column_label=>'MONEDA'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(166358785276731628)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1663588'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>100000
,p_report_columns=>'V_ESTABLECIMIENTO:V_PUNTO_EXPEDICION:V_NUMERO_DOC:V_FECHA_EMISION:V_CEDULA:V_NOMBRE:V_COND_OPERACION:MONEDA:ESTADO:ESTADOANULACION:ESTADOENVIO:V_TOT_EXENTA:V_TOT_GRAVADA10:V_TOT_GRAVADA5:V_TOT_IVA10:V_TOT_IVA5:V_TOT_OPERACION:'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(65389415486339848)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_imp.id(164394464036405404)
,p_button_name=>'Limpiar'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_image_alt=>'Limpiar'
,p_button_redirect_url=>'f?p=&APP_ID.:547:&SESSION.::&DEBUG.:547::'
,p_grid_new_row=>'Y'
,p_grid_column=>1
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(164394630005405406)
,p_button_sequence=>70
,p_button_plug_id=>wwv_flow_imp.id(164394464036405404)
,p_button_name=>'PROCESAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Procesar'
,p_warn_on_unsaved_changes=>null
,p_grid_new_row=>'N'
,p_grid_column=>12
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(164394763790405407)
,p_name=>'P547_FECHA_EMISION_DESDE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(164394464036405404)
,p_use_cache_before_default=>'NO'
,p_prompt=>unistr('Fecha Expedici\00F3n Desde')
,p_placeholder=>'YYYY-MM-DD'
,p_format_mask=>'YYYY-MM-DD'
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
 p_id=>wwv_flow_imp.id(164394862405405408)
,p_name=>'P547_FECHA_EMISION_HASTA'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(164394464036405404)
,p_use_cache_before_default=>'NO'
,p_prompt=>unistr('Fecha Expedici\00F3n Hasta')
,p_placeholder=>'YYYY-MM-DD'
,p_format_mask=>'YYYY-MM-DD'
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
 p_id=>wwv_flow_imp.id(164394996625405409)
,p_name=>'P547_ESTABLECIMIENTO'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(164394464036405404)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Establecimiento'
,p_placeholder=>'XXX'
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
 p_id=>wwv_flow_imp.id(164395014397405410)
,p_name=>'P547_PUNTO_EXPEDICION'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(164394464036405404)
,p_use_cache_before_default=>'NO'
,p_prompt=>unistr('Punto Expedici\00F3n')
,p_placeholder=>'XXX'
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
 p_id=>wwv_flow_imp.id(65387779978339831)
,p_name=>'Busca facturas'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(164394630005405406)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(65389219760339846)
,p_event_id=>wwv_flow_imp.id(65387779978339831)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'var spinner = apex.util.showSpinner(); '
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(65387850537339832)
,p_event_id=>wwv_flow_imp.id(65387779978339831)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'INV.pkg_factura_electronica.sp_facturas(p_fecha_emision_deste  => :P547_FECHA_EMISION_DESDE,',
'                                      p_fecha_emision_hasta  =>  :P547_FECHA_EMISION_HASTA,',
'                                      p_establecimiento      => :P547_ESTABLECIMIENTO,',
'                                      p_punto_expedicion     => :P547_PUNTO_EXPEDICION);'))
,p_attribute_02=>'P547_FECHA_EMISION_DESDE,P547_FECHA_EMISION_HASTA,P547_ESTABLECIMIENTO,P547_PUNTO_EXPEDICION'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(65387928910339833)
,p_event_id=>wwv_flow_imp.id(65387779978339831)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(65386176616339815)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(65389306465339847)
,p_event_id=>wwv_flow_imp.id(65387779978339831)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'$("#apex_wait_overlay").remove(); $(".u-Processing").remove(); '
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(65388370258339837)
,p_name=>'Nuevo_1'
,p_event_sequence=>20
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(65388423835339838)
,p_event_id=>wwv_flow_imp.id(65388370258339837)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>' apex_collection.create_or_truncate_collection(p_collection_name => ''TMP_FACTURAS'');'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(65388525937339839)
,p_event_id=>wwv_flow_imp.id(65388370258339837)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(65386176616339815)
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(164394511104405405)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'LLamar proceso'
,p_process_sql_clob=>'inv.catickets.PR_WS_GET_FACT;'
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp.component_end;
end;
/
