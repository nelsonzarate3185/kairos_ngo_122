prompt --application/pages/page_00032
begin
--   Manifest
--     PAGE: 00032
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
 p_id=>32
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>unistr('Entrega de Mercader\00EDas')
,p_alias=>unistr('ENTREGA-DE-MERCADER\00CDAS')
,p_page_mode=>'MODAL'
,p_step_title=>unistr('Entrega de Mercader\00EDas')
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function doDescarga(p_cod_empresa,p_cod_cliente,p_dir,p_observacion,p_direccion,p_departamento,p_ciudad,p_telefono_1){',
'   var vURL = ''https://ngosaeca.com.py/reportes/rest_v2/reports/reports/CCCLIEN1.pdf?''',
'            + ''&P_COD_EMPRESA='' + p_cod_empresa + ''&P_COD_CLIENTE=''+ p_cod_cliente',
'            + ''&P_DIR='' + p_dir + ''&P_OBSERVACION=''+ p_observacion ',
'            + ''&P_DIRECCION='' + p_direccion + ''&P_DEPARTAMENTO=''+ p_departamento',
'            + ''&P_CIUDAD='' + p_ciudad + ''&P_TELEFONO=''+ p_telefono_1;',
'',
'    console.log(vURL);',
'    window.open(unescape(vURL.replace(/&amp;/g,''g'')),''_blank'');',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_dialog_width=>'1200'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_last_updated_by=>'MARIANABLA'
,p_last_upd_yyyymmddhh24miss=>'20220915171607'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(13305847871033829)
,p_plug_name=>'VARIABLES'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(22935031336025268)
,p_plug_name=>'ARTICULOS'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(23024667077193028)
,p_plug_name=>'REPORTE'
,p_parent_plug_id=>wwv_flow_imp.id(22935031336025268)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select  d.cod_articulo,',
'        nvl(d.cantidad,1) cantidad,',
'        VTALPEDE.CF_ARTICULOFormula (P_COD_EMPRESA  => D.COD_EMPRESA,',
'                                     P_COD_ARTICULO => d.cod_articulo) desc_articulo,',
'        VTALPEDE.cf_sub_bloqueFormula(P_COD_EMPRESA  => D.COD_EMPRESA,',
'                                      P_COD_ARTICULO => d.cod_articulo,',
'                                      P_COD_BLOQUE   => c.cod_bloque,',
'                                      P_COD_SUCURSAL => SU.COD_SUCURSAL) sub_bloque,',
'        --SU.COD_SUCURSAL,',
'        SU.DESCRIPCION desc_sucursal, ',
'        ped.comentario, ',
'        --nvl(c.cod_bloque,''SB'') cod_bloque,',
'        BL.DESC_BLOQUE,  ',
'        (SELECT porton           ',
'           FROM RP_REPARTO_PEDIDO_det rr, rp_reparto_pedido_cab cp',
'          WHERE rr.cod_empresa =ped.cod_empresa',
'            AND rr.tip_comprobante = ped.tip_comprobante',
'            AND rr.ser_comprobante = ped.ser_comprobante',
'            AND rr.nro_comprobante = ped.nro_comprobante',
'            AND rr.cod_empresa = cp.cod_empresa',
'            AND rr.nro_planilla = cp.nro_planilla',
'            AND rownum=1) celda                                                           ',
'        from vt_entrega_cabecera_dep c, ',
'             vt_entrega_detalle_dep d, ',
'             VT_COMPROBANTES_CABECERA CC, ',
'             SUCURSALES SU, ',
'             VT_PEDIDOS_CABECERA PED, ',
'             ST_BLOQUES BL',
'       where c.cod_empresa = :P32_COD_EMPRESA  ',
'         and cc.tip_comprobante IN(''FCR''      ,''FCO'')',
'         and cc.ser_comprobante = :P32_SER_COMPROBANTE',
'         and cc.nro_comprobante = :P32_NRO_COMPROBANTE',
'       --and (c.nro_PLANILLA = :P32_NRO_PLANILLA OR :P32_NRO_PLANILLA IS NULL)',
'         and c.COD_EMPRESA=D.COD_EMPRESA',
'         and c.NRO_PLANILLA=D.NRO_PLANILLA',
'         and c.cod_empresa = CC.cod_empresa',
'         and nvl(c.tip_comprobante,''DFL'') = CC.tip_comprobante',
'         and nvl(c.ser_comprobante,''DFL'') = CC.ser_comprobante',
'         and nvl(c.nro_comprobante, 999999 ) = CC.nro_comprobante ',
'         and PED.cod_empresa=cc.cod_empresa',
'         and ped.tip_comprobante=cc.tip_comprobante_ref',
'         and ped.ser_comprobante=cc.ser_comprobante_ref',
'         and ped.nro_comprobante=cc.nro_comprobante_ref',
'         and C.COD_EMPRESA=SU.COD_EMPRESA',
'         and C.COD_SUCURSAL=SU.COD_SUCURSAL',
'         and C.COD_EMPRESA=BL.COD_EMPRESA(+)',
'         and C.COD_BLOQUE=BL.COD_BLOQUE(+)',
'         and C.COD_SUCURSAL=BL.COD_SUCURSAL(+);',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P32_COD_EMPRESA,P32_TIP_COMPROBANTE,P32_SER_COMPROBANTE,P32_NRO_PLANILLA'
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
 p_id=>wwv_flow_imp.id(23024756040193029)
,p_max_row_count=>'1000000'
,p_no_data_found_message=>'No se han encontrado datos.'
,p_allow_report_saving=>'N'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_rows_per_page=>'N'
,p_show_sort=>'N'
,p_show_control_break=>'N'
,p_show_highlight=>'N'
,p_show_computation=>'N'
,p_show_aggregate=>'N'
,p_show_chart=>'N'
,p_show_group_by=>'N'
,p_show_pivot=>'N'
,p_show_flashback=>'N'
,p_show_reset=>'N'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'MARIANABLA'
,p_internal_uid=>23024756040193029
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13517695429402542)
,p_db_column_name=>'COD_ARTICULO'
,p_display_order=>10
,p_column_identifier=>'B'
,p_column_label=>unistr('C\00F3digo')
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13518486651402543)
,p_db_column_name=>'CANTIDAD'
,p_display_order=>30
,p_column_identifier=>'D'
,p_column_label=>'Cantidad'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13304582391033816)
,p_db_column_name=>'DESC_ARTICULO'
,p_display_order=>40
,p_column_identifier=>'E'
,p_column_label=>unistr('Descripci\00F3n')
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13304672118033817)
,p_db_column_name=>'SUB_BLOQUE'
,p_display_order=>50
,p_column_identifier=>'F'
,p_column_label=>'Estante'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13304992426033820)
,p_db_column_name=>'COMENTARIO'
,p_display_order=>80
,p_column_identifier=>'I'
,p_column_label=>'Comentario'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13305120310033822)
,p_db_column_name=>'DESC_BLOQUE'
,p_display_order=>100
,p_column_identifier=>'K'
,p_column_label=>'Bloque'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13305253967033823)
,p_db_column_name=>'CELDA'
,p_display_order=>110
,p_column_identifier=>'L'
,p_column_label=>'Celda'
,p_column_type=>'STRING'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13305390804033824)
,p_db_column_name=>'DESC_SUCURSAL'
,p_display_order=>120
,p_column_identifier=>'M'
,p_column_label=>unistr('Dep\00F3sito')
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(23173285632410221)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'96614'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'COD_ARTICULO:DESC_ARTICULO:CANTIDAD:SUB_BLOQUE:CELDA:DESC_SUCURSAL:DESC_BLOQUE:COMENTARIO'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(13520328057402546)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(23024667077193028)
,p_button_name=>'VOLVER'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--padTop:t-Button--padBottom'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Volver'
,p_button_position=>'BOTTOM'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(13305580899033826)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(23024667077193028)
,p_button_name=>'ETIQUETA'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--padTop:t-Button--padBottom'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Imprimir Etiqueta'
,p_button_position=>'BOTTOM'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13304368302033814)
,p_name=>'P32_FEC_COMPROBANTE'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(22935031336025268)
,p_prompt=>'Fec Comprobante'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13304422634033815)
,p_name=>'P32_COD_SUCURSAL'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(22935031336025268)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13305941109033830)
,p_name=>'P32_VDEPARTAMENTO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(13305847871033829)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13306003840033831)
,p_name=>'P32_VCIUDAD'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(13305847871033829)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13306145980033832)
,p_name=>'P32_VDIRECCION'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(13305847871033829)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13306289279033833)
,p_name=>'P32_VTIPO_ENTREGA'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(13305847871033829)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13306375082033834)
,p_name=>'P32_VCOD_CLIENTE'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(13305847871033829)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13306451476033835)
,p_name=>'P32_VNOMBRE'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(13305847871033829)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13306570479033836)
,p_name=>'P32_VTELEFONO'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(13305847871033829)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13306626840033837)
,p_name=>'P32_VOBSERVACION'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(13305847871033829)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13512528317402533)
,p_name=>'P32_TIP_COMPROBANTE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(22935031336025268)
,p_prompt=>'Tipo de Factura'
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
 p_id=>wwv_flow_imp.id(13512909145402535)
,p_name=>'P32_SER_COMPROBANTE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(22935031336025268)
,p_prompt=>'Serie'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13513357769402536)
,p_name=>'P32_NRO_COMPROBANTE'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(22935031336025268)
,p_prompt=>unistr('N\00FAmero')
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13514109954402536)
,p_name=>'P32_BLOQUE'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(22935031336025268)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13514576302402536)
,p_name=>'P32_CELDA'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(22935031336025268)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13514902914402536)
,p_name=>'P32_COD_CLIENTE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(22935031336025268)
,p_prompt=>'Cliente'
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
 p_id=>wwv_flow_imp.id(13515308592402537)
,p_name=>'P32_COMENTARIO'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(22935031336025268)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13515780223402537)
,p_name=>'P32_COD_EMPRESA'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(22935031336025268)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13516133477402537)
,p_name=>'P32_NRO_PLANILLA'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(22935031336025268)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13516569187402537)
,p_name=>'P32_EMPRESA_ORIGEN'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(22935031336025268)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13516999182402537)
,p_name=>'P32_AUX_MENSAJE'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(22935031336025268)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(13522017502402556)
,p_name=>'DA_MENSAJE'
,p_event_sequence=>10
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(13522578835402556)
,p_event_id=>wwv_flow_imp.id(13522017502402556)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'&P32_AUX_MENSAJE.'
,p_attribute_02=>unistr('Atenci\00F3n')
,p_attribute_03=>'warning'
,p_attribute_04=>'fa-warning'
,p_attribute_06=>'Aceptar'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P32_AUX_MENSAJE'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(13521109709402555)
,p_name=>'DA_VOLVER'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(13520328057402546)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(13521652146402556)
,p_event_id=>wwv_flow_imp.id(13521109709402555)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CLOSE'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(13305692079033827)
,p_name=>'DA_ETIQUETA'
,p_event_sequence=>30
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(13305580899033826)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(13305711537033828)
,p_event_id=>wwv_flow_imp.id(13305692079033827)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    :P32_AUX_MENSAJE := null;',
'	SELECT departamento, ciudad, direccion_sucursal,tipo_entrega, a.cod_cliente, a.nombre, a.telefono , tip_comprobante||'' -  ''||ser_comprobante||''  -   ''||nro_comprobante ',
'	  INTO :P32_VDEPARTAMENTO, :P32_VCIUDAD, :P32_VDIRECCION, :P32_VTIPO_ENTREGA, :P32_VCOD_CLIENTE, :P32_VNOMBRE, :P32_VTELEFONO, :P32_VOBSERVACION',
'	  FROM V_VENTAS a ',
'	 WHERE a.nro_comprobante = :P32_NRO_COMPROBANTE',
'	   AND a.ser_comprobante = :P32_SER_COMPROBANTE',
'	   AND a.TIP_comprobante = :P32_TIP_COMPROBANTE  ',
'	   AND tipo_entrega = ''INTERIOR''',
'	   AND rownum = 1;',
'   ',
'EXCEPTION',
'     WHEN no_data_found THEN',
'	    :P32_VDEPARTAMENTO := null;',
unistr('        :P32_AUX_MENSAJE := ''No se encontr\00F3 al cliente en la tabla V_VENTAS.'';        '),
'    WHEN OTHERS THEN',
'	    :P32_VDEPARTAMENTO := null;',
'        :P32_AUX_MENSAJE := ''Ha ocurrido un error en la tabla V_VENTAS.''||sqlerrm;  ',
'END;',
'',
''))
,p_attribute_02=>'P32_NRO_COMPROBANTE,P32_SER_COMPROBANTE,P32_TIP_COMPROBANTE'
,p_attribute_03=>'P32_AUX_MENSAJE,P32_VDEPARTAMENTO,P32_VCIUDAD,P32_VDIRECCION,P32_VTIPO_ENTREGA,P32_VCOD_CLIENTE,P32_VNOMBRE,P32_VTELEFONO,P32_VOBSERVACION'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(13307649656033847)
,p_event_id=>wwv_flow_imp.id(13305692079033827)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'&P32_AUX_MENSAJE.'
,p_attribute_02=>'Error'
,p_attribute_03=>'warning'
,p_attribute_04=>'fa-warning'
,p_attribute_06=>'Aceptar'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P32_AUX_MENSAJE'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(13306754664033838)
,p_event_id=>wwv_flow_imp.id(13305692079033827)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'//CCCLIEN1',
'doDescarga(apex.item(''P32_COD_EMPRESA'').getValue(),apex.item(''P32_VCOD_CLIENTE'').getValue(),''0'',',
'apex.item(''P32_VOBSERVACION'').getValue(),apex.item(''P32_VDIRECCION'').getValue(),apex.item(''P32_VDEPARTAMENTO'').getValue(),',
'apex.item(''P32_VCIUDAD'').getValue(),apex.item(''P32_VTELEFONO'').getValue());',
'',
'//TEST',
'//doDescarga(apex.item(''P32_COD_EMPRESA'').getValue(),''889'',''0'',',
'//''PRUEBA'',apex.item(''P32_VDIRECCION'').getValue(),apex.item(''P32_VDEPARTAMENTO'').getValue(),',
'//apex.item(''P32_VCIUDAD'').getValue(),''456789123'');'))
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P32_VDEPARTAMENTO'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(13520743379402554)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_INIT'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'--CAENMERCAR',
'DECLARE',
'    VCOUNT NUMBER;',
'BEGIN',
'    :P32_AUX_MENSAJE := null;',
'    VCOUNT := APEX_COLLECTION.COLLECTION_MEMBER_COUNT( p_collection_name => ''DETALLE'');',
'    IF VCOUNT = 1 THEN',
'        SELECT C001,',
'               C002,',
'               C003,',
'               C004,',
'               C007',
'          INTO :P32_TIP_COMPROBANTE,  ',
'               :P32_SER_COMPROBANTE,',
'               :P32_NRO_COMPROBANTE,',
'               :P32_NRO_PLANILLA,',
'               :P32_COD_EMPRESA',
'          FROM APEX_COLLECTIONS',
'         WHERE COLLECTION_NAME = ''DETALLE'';        ',
'    ELSE   ',
'        :P32_AUX_MENSAJE := ''Ha ocurrido un error en la carga de datos.1'';  ',
'    END IF;    ',
'EXCEPTION',
'    WHEN OTHERS THEN       ',
'        :P32_AUX_MENSAJE := ''Ha ocurrido un error en la carga de datos.2'';   ',
'END;',
'',
'DECLARE',
'    VCOUNT NUMBER;',
'BEGIN',
'    :P32_AUX_MENSAJE := null;',
'    SELECT  cc.Cod_Cliente ||'' - ''|| cc.NOM_CLIENTE, ',
'            cc.FEC_COMPROBANTE       ',
'      INTO :P32_COD_CLIENTE,:P32_FEC_COMPROBANTE',
'      FROM vt_entrega_cabecera_dep c, ',
'           vt_entrega_detalle_dep d, ',
'           VT_COMPROBANTES_CABECERA CC, ',
'           SUCURSALES SU, ',
'           VT_PEDIDOS_CABECERA PED, ',
'           ST_BLOQUES BL',
'     WHERE c.cod_empresa = ''1''--:P32_COD_EMPRESA  ',
'       AND cc.tip_comprobante IN(''FCR'',''FCO'')',
'       AND cc.ser_comprobante = :P32_SER_COMPROBANTE',
'       AND cc.nro_comprobante = :P32_NRO_COMPROBANTE',
'     --AND (c.nro_PLANILLA = :P32_NRO_PLANILLA OR :P32_NRO_PLANILLA IS NULL)',
'       AND c.COD_EMPRESA=D.COD_EMPRESA',
'       AND c.NRO_PLANILLA=D.NRO_PLANILLA',
'       AND c.cod_empresa = CC.cod_empresa',
'       AND nvl(c.tip_comprobante,''DFL'') = CC.tip_comprobante',
'       AND nvl(c.ser_comprobante,''DFL'') = CC.ser_comprobante',
'       AND nvl(c.nro_comprobante, 999999 ) = CC.nro_comprobante ',
'       AND PED.cod_empresa=cc.cod_empresa',
'       AND ped.tip_comprobante=cc.tip_comprobante_ref',
'       AND ped.ser_comprobante=cc.ser_comprobante_ref',
'       AND ped.nro_comprobante=cc.nro_comprobante_ref',
'       AND C.COD_EMPRESA=SU.COD_EMPRESA',
'       AND C.COD_SUCURSAL=SU.COD_SUCURSAL',
'       AND C.COD_EMPRESA=BL.COD_EMPRESA(+)',
'       AND C.COD_BLOQUE=BL.COD_BLOQUE(+)',
'       AND C.COD_SUCURSAL=BL.COD_SUCURSAL(+)',
'       AND ROWNUM = 1;    ',
'EXCEPTION',
'    WHEN OTHERS THEN       ',
'        :P32_AUX_MENSAJE := ''No se encontraron datos para ese comprobante.3''||sqlerrm;   ',
'END;'))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_imp.component_end;
end;
/
