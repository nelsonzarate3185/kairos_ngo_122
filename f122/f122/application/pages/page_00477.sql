prompt --application/pages/page_00477
begin
--   Manifest
--     PAGE: 00477
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
 p_id=>477
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'Diferencias de Cambios - CCDIFCAM'
,p_alias=>'CCDIFCAM'
,p_step_title=>'Diferencias de Cambios'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_last_updated_by=>'AIBANEZ'
,p_last_upd_yyyymmddhh24miss=>'20230411111005'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(141212118775784101)
,p_plug_name=>'Diferencias de Cambios'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>990
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(141212232047784102)
,p_plug_name=>'Reporte'
,p_parent_plug_id=>wwv_flow_imp.id(141212118775784101)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>20
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT NRO_COMPROBANTE,',
'       FEC_COMPROBANTE,',
'       TIP_COMPROBANTE_REF,',
'       SER_COMPROBANTE_REF,',
'       NRO_COMPROBANTE_REF,',
'       COD_CLIENTE,',
'       MONTO_US,',
'       TIP_CAMBIO_ANT,',
'       TIP_CAMBIO_ACT,',
'       MONTO_DIF,',
'       MONTO_DIF_GRAV,',
'       MONTO_DIF_EXEN,',
'       ROWID,',
'       NULL EDITAR,',
'       NULL ELIMINAR',
'FROM CC_DIFERENCIAS_CAMBIOS',
'WHERE COD_EMPRESA = :P_COD_EMPRESA',
'ORDER BY cod_empresa, ',
'         tip_comprobante, ',
'         ser_comprobante, ',
'         nro_comprobante ',
'         desc;',
'',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Reporte'
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
 p_id=>wwv_flow_imp.id(141212474592784104)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_finder_drop_down=>'N'
,p_show_actions_menu=>'N'
,p_report_list_mode=>'NONE'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_enable_mail_download=>'Y'
,p_owner=>'AIBANEZ'
,p_internal_uid=>141212474592784104
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(141212523557784105)
,p_db_column_name=>'NRO_COMPROBANTE'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Comprobante'
,p_column_link=>'javascript:$s(''P477_DETALLE'', ''#ROWID#''),$s(''P477_AUX_COD_CLIENTE'',''#COD_CLIENTE#'');'
,p_column_linktext=>'#NRO_COMPROBANTE#'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(141212611801784106)
,p_db_column_name=>'FEC_COMPROBANTE'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Fecha'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(141212768691784107)
,p_db_column_name=>'TIP_COMPROBANTE_REF'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Referencia'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(141212825381784108)
,p_db_column_name=>'SER_COMPROBANTE_REF'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Ref Serie'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(141212976360784109)
,p_db_column_name=>'NRO_COMPROBANTE_REF'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Nro Ref'
,p_column_type=>'NUMBER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(141213058489784110)
,p_db_column_name=>'COD_CLIENTE'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Cliente'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(141213182553784111)
,p_db_column_name=>'MONTO_US'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Monto U$$'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(141213296519784112)
,p_db_column_name=>'TIP_CAMBIO_ANT'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Tipo Cambio Anterior'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(141213353247784113)
,p_db_column_name=>'TIP_CAMBIO_ACT'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Tipo Cambio Actual'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(141213438010784114)
,p_db_column_name=>'MONTO_DIF'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Diferencia Gs.'
,p_column_type=>'NUMBER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(141213554685784115)
,p_db_column_name=>'MONTO_DIF_GRAV'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Diferencia Gs. Grav'
,p_column_type=>'NUMBER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(141213632209784116)
,p_db_column_name=>'MONTO_DIF_EXEN'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Diferencia Gs. Exentas'
,p_column_type=>'NUMBER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(141213861307784118)
,p_db_column_name=>'EDITAR'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>'&nbsp'
,p_column_link=>'javascript:$s(''P477_EDITAR'',''#ROWID#'');'
,p_column_linktext=>'<span aria-hidden="true" class="fa fa-edit"></span>'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_display_condition_type=>'FUNCTION_BODY'
,p_display_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'VCONTROL NUMBER;',
'BEGIN',
'',
'    VCONTROL := SEGURIDAD_GRANULAR.RETORNA_PERMISO_BOTON(ppage_id     => :APP_PAGE_ID,',
'                                                         papli0100_id => :P_APLI0100_ID,',
'                                                         pcod_empresa => :P_COD_EMPRESA,',
'                                                         pusua0100_id => :P_USUA0100_ID,',
'                                                         pdm_boto     => 2); --1 guardar, 2 editar, 3 eliminar',
'',
'    IF VCONTROL = 0 THEN',
'        RETURN FALSE;',
'    ELSE',
'        RETURN TRUE;',
'    END IF;',
'END;'))
,p_display_condition2=>'PLSQL'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(141213989271784119)
,p_db_column_name=>'ELIMINAR'
,p_display_order=>150
,p_column_identifier=>'O'
,p_column_label=>'&nbsp'
,p_column_link=>'javascript:$s(''P477_ELIMINAR'',''#ROWID#'');'
,p_column_linktext=>'<span aria-hidden="true" class="fa fa-trash-o"></span>'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_display_condition_type=>'FUNCTION_BODY'
,p_display_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'VCONTROL NUMBER;',
'BEGIN',
'',
'    VCONTROL := SEGURIDAD_GRANULAR.RETORNA_PERMISO_BOTON(ppage_id     => :APP_PAGE_ID,',
'                                                         papli0100_id => :P_APLI0100_ID,',
'                                                         pcod_empresa => :P_COD_EMPRESA,',
'                                                         pusua0100_id => :P_USUA0100_ID,',
'                                                         pdm_boto     => 3); --1 guardar, 2 editar, 3 eliminar',
'',
'    IF VCONTROL = 0 THEN',
'        RETURN FALSE;',
'    ELSE',
'        RETURN TRUE;',
'    END IF;',
'END;'))
,p_display_condition2=>'PLSQL'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(141215022730784130)
,p_db_column_name=>'ROWID'
,p_display_order=>160
,p_column_identifier=>'P'
,p_column_label=>'Rowid'
,p_column_type=>'OTHER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(141229417697711051)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1412295'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>10
,p_report_columns=>'EDITAR:NRO_COMPROBANTE:FEC_COMPROBANTE:TIP_COMPROBANTE_REF:SER_COMPROBANTE_REF:NRO_COMPROBANTE_REF:COD_CLIENTE:MONTO_US:TIP_CAMBIO_ANT:TIP_CAMBIO_ACT:MONTO_DIF:MONTO_DIF_GRAV:MONTO_DIF_EXEN:ELIMINAR'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(141212392546784103)
,p_plug_name=>'Info'
,p_parent_plug_id=>wwv_flow_imp.id(141212118775784101)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--noBorder:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>30
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(141214415443784124)
,p_plug_name=>'Fecha'
,p_parent_plug_id=>wwv_flow_imp.id(141212392546784103)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--removeHeader:t-Region--noBorder:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>20
,p_plug_new_grid_row=>false
,p_plug_grid_column_span=>4
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(141214730271784127)
,p_plug_name=>'Editar/Agregar'
,p_parent_plug_id=>wwv_flow_imp.id(141212118775784101)
,p_region_template_options=>'#DEFAULT#:js-dialog-size600x400'
,p_plug_template=>wwv_flow_imp.id(40117728043263659)
,p_plug_display_sequence=>150
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(141305063814930304)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(141214730271784127)
,p_button_name=>'BT_CANCELAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_image_alt=>'Cancelar'
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(141305154914930305)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(141214730271784127)
,p_button_name=>'BT_GUARDAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Guardar'
,p_button_position=>'CREATE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(141217045290784150)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(141212232047784102)
,p_button_name=>'BT_AGREGAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Agregar'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_warn_on_unsaved_changes=>null
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'VCONTROL NUMBER;',
'BEGIN',
'',
'    VCONTROL := SEGURIDAD_GRANULAR.RETORNA_PERMISO_BOTON(ppage_id     => :APP_PAGE_ID,',
'                                                         papli0100_id => :P_APLI0100_ID,',
'                                                         pcod_empresa => :P_COD_EMPRESA,',
'                                                         pusua0100_id => :P_USUA0100_ID,',
'                                                         pdm_boto     => 1); --1 guardar, 2 editar, 3 eliminar',
'',
'    IF VCONTROL = 0 THEN',
'        RETURN FALSE;',
'    ELSE',
'        RETURN TRUE;',
'    END IF;',
'END;'))
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'FUNCTION_BODY'
,p_icon_css_classes=>'fa-file-o'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(141214094963784120)
,p_name=>'P477_DETALLE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(141212118775784101)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(141214119816784121)
,p_name=>'P477_EDITAR'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(141212118775784101)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(141214269391784122)
,p_name=>'P477_ELIMINAR'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(141212118775784101)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(141214316785784123)
,p_name=>'P477_NOM_CLIENTE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(141212392546784103)
,p_prompt=>'Nombre Cliente'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readOnly'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(141214548525784125)
,p_name=>'P477_FEC_CARGA'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(141214415443784124)
,p_prompt=>'Fecha Carga'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'ReadOnly'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(141214609720784126)
,p_name=>'P477_COD_USUARIO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(141214415443784124)
,p_prompt=>'Usuario'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'ReadOnly'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(141215486999784134)
,p_name=>'P477_AUX_COD_CLIENTE'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(141212118775784101)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(141215825060784138)
,p_name=>'P477_COD_MODULO'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(141212118775784101)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(141215954812784139)
,p_name=>'P477_CAMBIA_FECHA'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(141212118775784101)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(141216045158784140)
,p_name=>'P477_MODIFICA_FECHA_ANT'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(141212118775784101)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(141216195925784141)
,p_name=>'P477_TIP_COMPROBANTE'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(141212118775784101)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(141216202423784142)
,p_name=>'P477_SER_COMPROBANTE'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(141212118775784101)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(141216397760784143)
,p_name=>'P477_TIPO_TRANS'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(141212118775784101)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(141216501176784145)
,p_name=>'P477_FEC_COMPROBANTE'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(141214730271784127)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(141216600176784146)
,p_name=>'P477_COD_CLIENTE'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(141214730271784127)
,p_prompt=>'Cliente'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_CLIENTES_CAMBIOS'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select distinct c.cod_cliente ||'' - '' || nvl( ltrim(p.nombre), ltrim( p.nomb_fantasia ) ) D, ',
'                c.cod_cliente R',
'from cc_clientes c, personas p ',
'where c.cod_empresa = :p_cod_empresa ',
'and c.cod_persona = p.cod_persona ',
'and c.estado  NOT IN(''I'',''B'') ',
''))
,p_cSize=>30
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
 p_id=>wwv_flow_imp.id(141216965909784149)
,p_name=>'P477_NRO_COMPROBANTE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(141214730271784127)
,p_prompt=>'Nro Comprobante'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readOnly'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(141305691198930310)
,p_name=>'P477_TIP_COMPROBANTE_REF'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(141214730271784127)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(142946857894517701)
,p_name=>'P477_MONTO_US'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(141214730271784127)
,p_prompt=>'Monto U$S'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(142946954992517702)
,p_name=>'P477_TIP_CAMBIO_ANT'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(141214730271784127)
,p_prompt=>'Tipo Cambio Anterior'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(142947065195517703)
,p_name=>'P477_TIP_CAMBIO_ACT'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(141214730271784127)
,p_prompt=>'Tipo Cambio Actual'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(142947359227517706)
,p_name=>'P477_MONTO_DIF'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(141214730271784127)
,p_prompt=>'Diferencia Gs.'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(142947429380517707)
,p_name=>'P477_MONTO_DIF_GRA'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(141214730271784127)
,p_prompt=>'Diferencia Gs. Grav'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(142947512004517708)
,p_name=>'P477_MONTO_DIF_EXEN'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(141214730271784127)
,p_prompt=>'Diferencia Gs. Exentas'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(142947702988517710)
,p_name=>'P477_ERR_MESSAGE'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(141212118775784101)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(142948062228517713)
,p_name=>'P477_NRO_COMPROBANTE_REF'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(141214730271784127)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(142948186923517714)
,p_name=>'P477_SER_COMPROBANTE_REF'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(141214730271784127)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(143546145174760106)
,p_name=>'P477_NEW_COD_USUARIO'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_imp.id(141212118775784101)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(141214891542784128)
,p_name=>'DA_EDITAR'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P477_EDITAR'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(143291275327977406)
,p_event_id=>wwv_flow_imp.id(141214891542784128)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P477_MONTO_US := NULL;',
':P477_TIP_CAMBIO_ACT := NULL;',
':P477_TIP_CAMBIO_ANT := NULL;'))
,p_attribute_03=>'P477_TIP_CAMBIO_ACT,P477_TIP_CAMBIO_ANT,P477_MONTO_US'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(141216819661784148)
,p_event_id=>wwv_flow_imp.id(141214891542784128)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    ',
'    select nro_comprobante,',
'           fec_comprobante,',
'           cod_cliente,',
'           tip_comprobante_ref,',
'           monto_us,',
'           tip_cambio_ant,',
'           tip_cambio_act',
'    into :P477_NRO_COMPROBANTE, ',
'         :P477_FEC_COMPROBANTE,',
'         :P477_COD_CLIENTE,',
'         :P477_TIP_COMPROBANTE_REF,',
'         :P477_MONTO_US,',
'         :P477_TIP_CAMBIO_ANT,',
'         :P477_TIP_CAMBIO_ACT',
'    from CC_DIFERENCIAS_CAMBIOS',
'    where rowid = :P477_EDITAR;',
'',
'    IF :P477_MONTO_US IS NOT NULL AND :P477_TIP_CAMBIO_ANT IS NOT NULL AND :P477_TIP_CAMBIO_ACT IS NOT NULL THEN',
'        CCDIFCAM.PR_CALCULOS(PI_MONTO_US => :P477_MONTO_US,',
'                              PI_TIP_CAMBIO_ACT => :P477_TIP_CAMBIO_ACT,',
'                              PI_TIP_CAMBIO_ANT => :P477_TIP_CAMBIO_ANT,',
'                              PO_MONTO_DIF => :P477_MONTO_DIF,',
'                              PI_COD_EMPRESA => :P_COD_EMPRESA,',
'                              PI_NRO_COMPROBANTE => :P477_NRO_COMPROBANTE,',
'                              PI_SER_COMPROBANTE => :P477_SER_COMPROBANTE,',
'                              PI_TIP_COMPROBANTE => :P477_TIP_COMPROBANTE,',
'                              PI_TIP_COMPROBANTE_REF => :P477_TIP_COMPROBANTE_REF,',
'                              PI_SER_COMPROBANTE_REF => :P477_SER_COMPROBANTE_REF,',
'                              PI_NRO_COMPROBANTE_REF => :P477_NRO_COMPROBANTE_REF,',
'                              PO_MONTO_DIF_GRAV => :P477_MONTO_DIF_GRA);',
'        :P477_MONTO_DIF_EXEN := NVL(TO_NUMBER(:P477_MONTO_DIF),0) - NVL(TO_NUMBER(:P477_MONTO_DIF_GRA),0);',
'',
'    ELSE',
'        :P477_MONTO_DIF := NULL;',
'        :P477_MONTO_DIF_GRA := NULL;',
'        :P477_MONTO_DIF_EXEN := NULL;',
'    END IF;',
'',
'',
'   EXCEPTION',
'        when others then',
'                  apex_debug.error(''Error editar ''||sqlerrm);',
'END;'))
,p_attribute_02=>'P477_EDITAR'
,p_attribute_03=>'P477_NRO_COMPROBANTE,P477_FEC_COMPROBANTE,P477_COD_CLIENTE,P477_TIP_COMPROBANTE_REF,P477_MONTO_US,P477_TIP_CAMBIO_ANT,P477_TIP_CAMBIO_ACT,P477_MONTO_DIF,P477_MONTO_DIF_GRA,P477_MONTO_DIF_EXEN'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(143545916091760104)
,p_event_id=>wwv_flow_imp.id(141214891542784128)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P477_COD_CLIENTE'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(141214995333784129)
,p_event_id=>wwv_flow_imp.id(141214891542784128)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(141214730271784127)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(141215132172784131)
,p_name=>'DA_DETALLE'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P477_DETALLE'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(141215236045784132)
,p_event_id=>wwv_flow_imp.id(141215132172784131)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'        select (select distinct c.cod_cliente|| '' - '' ||nvl( ltrim(p.nombre), ltrim( p.nomb_fantasia ) )',
'                from cc_clientes c, personas p, CC_DIFERENCIAS_CAMBIOS d',
'                where c.cod_empresa = :P_cod_empresa ',
'                and c.cod_persona = p.cod_persona ',
'                and c.cod_empresa = d.cod_empresa',
'                and c.cod_cliente = :P477_AUX_COD_CLIENTE) cod_cliente,',
'                fec_carga,',
'                cod_usuario ',
'        into :P477_NOM_CLIENTE,',
'             :P477_FEC_CARGA,',
'             :P477_COD_USUARIO',
'        from CC_DIFERENCIAS_CAMBIOS',
'        where ROWID = :P477_DETALLE',
'        and cod_empresa = :P_COD_EMPRESA;',
'',
'        IF :P477_NOM_CLIENTE is null then',
'            :P477_NOM_CLIENTE := ''Cliente no definido.'';',
'        END IF;',
'',
'',
'     EXCEPTION',
'    when no_data_found then',
'      :p477_nom_cliente := null;',
'   ',
'    when others then',
'       apex_debug.error(''Error detalle ''||sqlerrm);',
'END;'))
,p_attribute_02=>'P477_DETALLE,P477_NOM_CLIENTE,P477_AUX_COD_CLIENTE'
,p_attribute_03=>'P477_NOM_CLIENTE,P477_FEC_CARGA,P477_COD_USUARIO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(141215315842784133)
,p_event_id=>wwv_flow_imp.id(141215132172784131)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(141212392546784103)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(141304737194930301)
,p_name=>'DA_AGREGAR'
,p_event_sequence=>30
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(141217045290784150)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(141304891290930302)
,p_event_id=>wwv_flow_imp.id(141304737194930301)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P477_NRO_COMPROBANTE,P477_FEC_COMPROBANTE,P477_COD_CLIENTE,P477_TIP_COMPROBANTE_REF,P477_MONTO_US,P477_MONTO_DIF_GRA,P477_MONTO_DIF_EXEN,P477_TIP_CAMBIO_ANT,P477_TIP_CAMBIO_ACT,P477_MONTO_DIF'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(142948537774517718)
,p_event_id=>wwv_flow_imp.id(141304737194930301)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    IF :P477_EDITAR is null then',
'        ',
'        :P477_NRO_COMPROBANTE := CCDIFCAM.FN_NRO_COMPROBANTE;',
'  ',
'  ',
'           IF :P477_NRO_COMPROBANTE IS NOT NULL THEN',
'                BEGIN',
'          ',
'                        :P477_NRO_COMPROBANTE_REF := :P477_NRO_COMPROBANTE;',
'                        :P477_SER_COMPROBANTE_REF := :P477_SER_COMPROBANTE;',
'                        :P477_TIP_COMPROBANTE_REF := :P477_TIP_COMPROBANTE;',
'',
'                     /*   APEX_DEBUG.ERROR(''REF NRO ''||:P477_NRO_COMPROBANTE_REF ',
'                                      ||''REF SER ''|| :P477_SER_COMPROBANTE_REF ',
'                                      ||''REF TIP ''|| :P477_TIP_COMPROBANTE_REF); */',
'                   EXCEPTION',
'                        WHEN OTHERS THEN',
'                            APEX_DEBUG.ERROR(''Error asignando referencias ''',
'                                            ||''REF NRO ''||:P477_NRO_COMPROBANTE_REF   ',
'                                            ||'' REF SER ''|| :P477_SER_COMPROBANTE_REF ',
'                                            ||'' REF TIP ''|| :P477_TIP_COMPROBANTE_REF',
'                                            ||sqlerrm);',
'                 END;',
'    ',
'            END IF;',
'',
'    END IF;',
'    ',
'    EXCEPTION',
'        WHEN OTHERS THEN',
unistr('            APEX_DEBUG.ERROR(''Error al generar un n\00FAmero de comprobante. ''||sqlerrm);'),
'END;'))
,p_attribute_02=>'P477_EDITAR,P477_NRO_COMPROBANTE,P477_TIP_COMPROBANTE,P477_SER_COMPROBANTE'
,p_attribute_03=>'P477_NRO_COMPROBANTE,P477_NRO_COMPROBANTE_REF,P477_SER_COMPROBANTE_REF,P477_TIP_COMPROBANTE_REF'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(143546091966760105)
,p_event_id=>wwv_flow_imp.id(141304737194930301)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P477_COD_CLIENTE'
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
 p_id=>wwv_flow_imp.id(141304941513930303)
,p_event_id=>wwv_flow_imp.id(141304737194930301)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(141214730271784127)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(141305245697930306)
,p_name=>'DA_CANCELAR'
,p_event_sequence=>40
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(141305063814930304)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(141305356723930307)
,p_event_id=>wwv_flow_imp.id(141305245697930306)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(141214730271784127)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(141305411435930308)
,p_name=>'DA_GUARDAR'
,p_event_sequence=>50
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(141305154914930305)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(142947685103517709)
,p_event_id=>wwv_flow_imp.id(141305411435930308)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'  ',
'',
'    IF :P477_MONTO_US IS NOT NULL AND :P477_TIP_CAMBIO_ANT IS NOT NULL AND :P477_TIP_CAMBIO_ACT IS NOT NULL THEN',
'        CCDIFCAM.PR_CALCULOS(PI_MONTO_US => :P477_MONTO_US,',
'                              PI_TIP_CAMBIO_ACT => :P477_TIP_CAMBIO_ACT,',
'                              PI_TIP_CAMBIO_ANT => :P477_TIP_CAMBIO_ANT,',
'                              PO_MONTO_DIF => :P477_MONTO_DIF,',
'                              PI_COD_EMPRESA => :P_COD_EMPRESA,',
'                              PI_NRO_COMPROBANTE => :P477_NRO_COMPROBANTE,',
'                              PI_SER_COMPROBANTE => :P477_SER_COMPROBANTE,',
'                              PI_TIP_COMPROBANTE => :P477_TIP_COMPROBANTE,',
'                              PI_TIP_COMPROBANTE_REF => :P477_TIP_COMPROBANTE_REF,',
'                              PI_SER_COMPROBANTE_REF => :P477_SER_COMPROBANTE_REF,',
'                              PI_NRO_COMPROBANTE_REF => :P477_NRO_COMPROBANTE_REF,',
'                              PO_MONTO_DIF_GRAV => :P477_MONTO_DIF_GRA);',
'        ',
'        :P477_MONTO_DIF_EXEN := NVL(TO_NUMBER(:P477_MONTO_DIF),0) - NVL(TO_NUMBER(:P477_MONTO_DIF_GRA),0);',
'',
'    ELSE',
'        CASE',
'                WHEN :P477_MONTO_US IS NULL THEN :P477_ERR_MESSAGE := ''Debe insertar el monto en U$S'';',
'                WHEN :P477_TIP_CAMBIO_ACT IS NULL THEN :P477_ERR_MESSAGE := ''Debe insertar el cambio actual'';',
'                WHEN :P477_TIP_CAMBIO_ANT IS NULL THEN :P477_ERR_MESSAGE := ''Debe insertar el cambio anterior'';',
'        END CASE;',
'    END IF;',
'    ',
'    ',
'    IF :P477_EDITAR is null then',
'',
'      BEGIN',
'        :P477_ERR_MESSAGE := null;',
'',
'        INSERT INTO CC_DIFERENCIAS_CAMBIOS(',
'            COD_EMPRESA,',
'            TIP_COMPROBANTE,',
'            SER_COMPROBANTE,',
'            NRO_COMPROBANTE,',
'            FEC_COMPROBANTE,',
'            TIP_COMPROBANTE_REF,',
'            SER_COMPROBANTE_REF,',
'            NRO_COMPROBANTE_REF,',
'            COD_CLIENTE,',
'            FEC_CARGA,',
'            COD_USUARIO,',
'            MONTO_US,',
'            TIP_CAMBIO_ANT,',
'            TIP_CAMBIO_ACT,',
'            MONTO_DIF,',
'            MONTO_DIF_GRAV,',
'            MONTO_DIF_EXEN',
'        )VALUES (',
'            :P_COD_EMPRESA,',
'            :P477_TIP_COMPROBANTE,',
'            :P477_SER_COMPROBANTE,',
'            :P477_NRO_COMPROBANTE,',
'            :P477_FEC_COMPROBANTE,',
'            :P477_TIP_COMPROBANTE_REF,',
'            :P477_SER_COMPROBANTE_REF,',
'            :P477_NRO_COMPROBANTE_REF,',
'            :P477_COD_CLIENTE,',
'            SYSDATE,',
'            :P477_NEW_COD_USUARIO,',
'            :P477_MONTO_US,',
'            :P477_TIP_CAMBIO_ANT,',
'            :P477_TIP_CAMBIO_ACT,',
'            :P477_MONTO_DIF,',
'            :P477_MONTO_DIF_GRA,',
'            :P477_MONTO_DIF_EXEN',
'        );',
'   --    APEX_DEBUG.ERROR (''COD CLIENTE ''||:P477_COD_CLIENTE);',
'     END;',
'    ELSE',
'     ',
'     BEGIN',
'        UPDATE CC_DIFERENCIAS_CAMBIOS',
'        SET  MONTO_US = :P477_MONTO_US,',
'             TIP_CAMBIO_ANT = :P477_TIP_CAMBIO_ANT,',
'             TIP_CAMBIO_ACT = :P477_TIP_CAMBIO_ACT,',
'             MONTO_DIF = :P477_MONTO_DIF,',
'             MONTO_DIF_GRAV = :P477_MONTO_DIF_GRA,',
'             MONTO_DIF_EXEN = :P477_MONTO_DIF_EXEN',
'        WHERE ROWID = :P477_EDITAR;',
'    --           APEX_DEBUG.ERROR (''COD CLIENTE ''||:P477_COD_CLIENTE);',
'',
'        END;',
'',
'     END IF;',
'',
' EXCEPTION',
'             WHEN NO_DATA_FOUND THEN',
'                apex_debug.error(''No se ingreso la data correctamente ''|| ''Tip comprobante ''||:P477_TIP_COMPROBANTE_REF|| sqlerrm);',
'                ',
'             WHEN OTHERS THEN',
'                apex_debug.error(''Error al Guardar ''||sqlerrm);',
'',
'   ',
'END;'))
,p_attribute_02=>'P477_EDITAR,P477_NRO_COMPROBANTE,P477_COD_CLIENTE'
,p_attribute_03=>'P477_ERR_MESSAGE,P477_NRO_COMPROBANTE,P477_FEC_CARGA,P477_NEW_COD_USUARIO,P477_SER_COMPROBANTE_REF,P477_NRO_COMPROBANTE_REF,P477_TIP_COMPROBANTE_REF,P477_FEC_COMPROBANTE,P477_MONTO_US,P477_TIP_CAMBIO_ANT,P477_TIP_CAMBIO_ACT,P477_TIP_COMPROBANTE,P477_'
||'SER_COMPROBANTE,P477_MONTO_DIF,P477_TIPO_TRANS,P477_MONTO_DIF_GRA,P477_MONTO_DIF_EXEN,P477_COD_CLIENTE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(141305566231930309)
,p_event_id=>wwv_flow_imp.id(141305411435930308)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(141214730271784127)
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P477_ERR_MESSAGE'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(141307540516930329)
,p_event_id=>wwv_flow_imp.id(141305411435930308)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(141212232047784102)
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P477_ERR_MESSAGE'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(141305807061930312)
,p_name=>'DA_ELIMINAR'
,p_event_sequence=>60
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P477_ELIMINAR'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(141305952125930313)
,p_event_id=>wwv_flow_imp.id(141305807061930312)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>unistr('\00BFEsta seguro que desea eliminar el comprobante seleccionado? ')
,p_attribute_03=>'warning'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(141306079702930314)
,p_event_id=>wwv_flow_imp.id(141305807061930312)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    DELETE CC_DIFERENCIAS_CAMBIOS',
'    WHERE ROWID = :P477_ELIMINAR;',
'',
'    EXCEPTION',
'           WHEN OTHERS THEN',
'                    apex_debug.error(''Error al eliminar ''||sqlerrm);',
'',
'END;'))
,p_attribute_02=>'P477_ELIMINAR'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P477_ELIMINAR'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(141307425193930328)
,p_event_id=>wwv_flow_imp.id(141305807061930312)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(141212232047784102)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(142947896433517711)
,p_name=>'DA_MESSAGE'
,p_event_sequence=>70
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P477_ERR_MESSAGE'
,p_condition_element=>'P477_ERR_MESSAGE'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(142947935253517712)
,p_event_id=>wwv_flow_imp.id(142947896433517711)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'&P477_ERR_MESSAGE.'
,p_attribute_03=>'warning'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(137094137158548645)
,p_name=>'DA_CALCULAR'
,p_event_sequence=>80
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P477_MONTO_US,P477_TIP_CAMBIO_ANT,P477_TIP_CAMBIO_ACT'
,p_bind_type=>'bind'
,p_bind_event_type=>'focusout'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(137094290960548646)
,p_event_id=>wwv_flow_imp.id(137094137158548645)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'IF :P477_MONTO_US IS NOT NULL AND :P477_TIP_CAMBIO_ANT IS NOT NULL AND :P477_TIP_CAMBIO_ACT IS NOT NULL THEN',
'        CCDIFCAM.PR_CALCULOS(PI_MONTO_US => :P477_MONTO_US,',
'                              PI_TIP_CAMBIO_ACT => :P477_TIP_CAMBIO_ACT,',
'                              PI_TIP_CAMBIO_ANT => :P477_TIP_CAMBIO_ANT,',
'                              PO_MONTO_DIF => :P477_MONTO_DIF,',
'                              PI_COD_EMPRESA => :P_COD_EMPRESA,',
'                              PI_NRO_COMPROBANTE => :P477_NRO_COMPROBANTE,',
'                              PI_SER_COMPROBANTE => :P477_SER_COMPROBANTE,',
'                              PI_TIP_COMPROBANTE => :P477_TIP_COMPROBANTE,',
'                              PI_TIP_COMPROBANTE_REF => :P477_TIP_COMPROBANTE_REF,',
'                              PI_SER_COMPROBANTE_REF => :P477_SER_COMPROBANTE_REF,',
'                              PI_NRO_COMPROBANTE_REF => :P477_NRO_COMPROBANTE_REF,',
'                              PO_MONTO_DIF_GRAV => :P477_MONTO_DIF_GRA);',
'        :P477_MONTO_DIF_EXEN := NVL(TO_NUMBER(:P477_MONTO_DIF),0) - NVL(TO_NUMBER(:P477_MONTO_DIF_GRA),0);',
'',
'    ELSE',
'        :P477_MONTO_DIF := NULL;',
'        :P477_MONTO_DIF_GRA := NULL;',
'        :P477_MONTO_DIF_EXEN := NULL;',
'    END IF;',
' EXCEPTION',
' WHEN OTHERS THEN ',
'    APEX_dEBUG.ERROR(SQLERRM);',
' END;'))
,p_attribute_02=>'P477_MONTO_US,P477_TIP_CAMBIO_ACT,P477_TIP_CAMBIO_ANT,P477_NRO_COMPROBANTE,P477_SER_COMPROBANTE,P477_TIP_COMPROBANTE,P477_TIP_COMPROBANTE_REF,P477_SER_COMPROBANTE_REF,P477_NRO_COMPROBANTE_REF'
,p_attribute_03=>'P477_MONTO_DIF,P477_MONTO_DIF_GRA,P477_MONTO_DIF_EXEN'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(141215622211784136)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'PR_CLEAR'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(141215737716784137)
,p_process_sequence=>20
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_INIT'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
':p477_cod_modulo :=  ''CC'' ;',
'',
':p477_tipo_trans :=  bs_busca_parametro(:p_cod_modulo, ''CONCEPTO_DEBITO'')  ;',
'',
':p477_ser_comprobante := bs_busca_parametro(:p_cod_modulo, ''SERIE_DEBITO'');',
'--busca_parametro( :p_cod_modulo, ''SERIE_DEBITO'' ); ',
'',
':p477_tip_comprobante := ''CAJ'' ;',
'',
':P477_NEW_COD_USUARIO := :APP_USER;',
'',
':p477_fec_comprobante := trae_fecha(:p_cod_empresa, :p_cod_modulo);',
'',
':p477_modifica_fecha_ant:= busca_permiso( :p_cod_empresa,',
'                                        :p_cod_forma,',
'                                        :p_cod_usuario,',
'                                        ''MODIFICA FECHA ANTERIOR'' );',
'',
':p477_cambia_fecha  := busca_permiso( :p_cod_empresa,',
'                            :p_cod_forma,',
'                            :p_cod_usuario,',
'                            ''CAMBIA_FECHA'' );',
''))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_imp.component_end;
end;
/
