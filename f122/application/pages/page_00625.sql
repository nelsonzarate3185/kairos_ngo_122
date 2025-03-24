prompt --application/pages/page_00625
begin
--   Manifest
--     PAGE: 00625
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
 p_id=>625
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'625 RH Solicitud Ausencias'
,p_alias=>'625-RH-SOLICITUD-AUSENCIAS'
,p_step_title=>'625 RH Solicitud Ausencias'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function openModal() {',
'    apex.region("formulario").show();',
'}',
'',
'',
'function abrirModal(nroMovimiento) {',
unistr('    // Asignar el valor de NRO_MOVIMIENTO al elemento de la p\00E1gina'),
'    $s("P625_NRO_ANULAR", nroMovimiento);',
'    ',
unistr('    // Mostrar la regi\00F3n modal'),
'    apex.region("modal_region").show();',
'}',
''))
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.a-IRR-header  a , .a-IRR-headerLabel{color:yellow; }',
'.a-IRR-header , .a-IRR-headerLabel{    background: #003a85!important;}'))
,p_step_template=>wwv_flow_imp.id(40090628970263651)
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_last_updated_by=>'PABLOALV'
,p_last_upd_yyyymmddhh24miss=>'20250217213549'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(332531706651929199)
,p_plug_name=>unistr('Gesti\00F3n Solicitud de Ausentismos')
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(332531748744929200)
,p_plug_name=>'Solicitudes de ausencias'
,p_parent_plug_id=>wwv_flow_imp.id(332531706651929199)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>70
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select p.COD_EMPRESA,',
'       CASE ',
'           WHEN p.ESTADO in (''P'') and p.REL_AUTORIZACION is null THEN',
'               ''<a href="'' || APEX_UTIL.PREPARE_URL(',
'            ''f?p='' || :APP_ID || '':844:'' || :APP_SESSION || ''::NO::P844_NRO_MOVIMIENTO:'' ',
'            || P.NRO_MOVIMIENTO, ''SESSION'') || ',
'            ''" > <span class="fa fa-edit" style="color:blue;"></span></a>''',
'           ELSE NULL',
'       END AS Accion,',
'       CASE ',
'           WHEN p.ESTADO in (''P'') and p.REL_AUTORIZACION is null  THEN',
'               ''<a href="javascript:void(0);" onclick="abrirModal('' || p.NRO_MOVIMIENTO || '')">',
'                   <span class="fa fa-ban" aria-hidden="true" title="Anular"></span>',
'               </a>''',
'           ELSE NULL',
'       END AS Anular,',
'        p.NRO_MOVIMIENTO nro_solicitud,',
'       p.COD_EMPLEADO,',
'       CASE p.IND_TIPO ',
'        WHEN ''P'' THEN ''PERMISO''',
'        WHEN ''V'' THEN ''VACACIONES''',
'        WHEN ''L'' THEN ''LICENCIAS/BENEFICIOS''',
'        WHEN ''R'' THEN ''REPOSO''',
'        ELSE ''OTROS'' END IND_TIPO,',
'       m.descripcion MOTIVO,',
'       p.FEC_INICIAL,',
'       p.FEC_FINAL,',
'       p.CANT_DIAS,',
'       p.HORA_INICIAL,',
'       p.HORA_FINAL,',
'       p.CANT_HORAS,',
'       p.OBSERVACION,',
'       p.IND_DESCUENTO,',
'       p.REL_AUTORIZACION,',
'       p.REL_RECHAZO,',
'       --p.ESTADO,',
'       case ',
'         when p.ESTADO =''A'' THEN ''APROBADO'' ',
'         when p.ESTADO =''P'' THEN ''PENDIENTE''',
'         When p.ESTADO =''N'' THEN  ''ANULADO''',
'         When p.Estado =''R'' THEN ''RECHAZADO''',
'       END AS ESTADO,',
'       p.IND_EXC_ALMUERZO,',
'       p.PERIODO,',
'       p.COD_USR_INS,',
'       p.FEC_HOR_INS,',
'       p.COD_USR_UPD,',
'       p.FEC_HOR_UPD',
'  from RH_MOV_PERMISOS p',
'  INNER JOIN rh_motivos m on m.cod_motivo = p.cod_motivo and p.cod_empresa = m.cod_empresa',
' and p.cod_empleado = :P625_COD_EMPLEADO and p.cod_empresa = :P_COD_EMPRESA',
' order by p.NRO_MOVIMIENTO'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P625_COD_EMPLEADO'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Solicitudes de ausencias'
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
 p_id=>wwv_flow_imp.id(332531857268929201)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'OSCARGO'
,p_internal_uid=>332531857268929201
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(238771001837197373)
,p_db_column_name=>'COD_EMPRESA'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Cod Empresa'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(238771844483197374)
,p_db_column_name=>'COD_EMPLEADO'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Funcionario'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_rpt_named_lov=>wwv_flow_imp.id(12499741931502745)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(238772278885197375)
,p_db_column_name=>'IND_TIPO'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Tipo Ausentismo'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(238772626293197375)
,p_db_column_name=>'FEC_INICIAL'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Fecha inicio'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(238773096578197375)
,p_db_column_name=>'FEC_FINAL'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Fecha final'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(238773490773197375)
,p_db_column_name=>'CANT_DIAS'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>unistr('D\00EDas')
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(238773865165197375)
,p_db_column_name=>'HORA_INICIAL'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Hora Inicial'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_format_mask=>'HH24:MI:SS'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(238774247580197376)
,p_db_column_name=>'HORA_FINAL'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Hora Final'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_format_mask=>'HH24:MI:SS'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(238774643745197376)
,p_db_column_name=>'CANT_HORAS'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Cantidad Horas'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(238775098128197376)
,p_db_column_name=>'OBSERVACION'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>unistr('Observaci\00F3n del Ausentismo')
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(238775405425197376)
,p_db_column_name=>'IND_DESCUENTO'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Se  Descuenta  '
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(238775857978197376)
,p_db_column_name=>'REL_AUTORIZACION'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>'Rel Autorizacion'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(238776216589197376)
,p_db_column_name=>'REL_RECHAZO'
,p_display_order=>150
,p_column_identifier=>'O'
,p_column_label=>'Rel Rechazo'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(238776642972197377)
,p_db_column_name=>'ESTADO'
,p_display_order=>160
,p_column_identifier=>'P'
,p_column_label=>'Estado'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(238777019860197377)
,p_db_column_name=>'IND_EXC_ALMUERZO'
,p_display_order=>170
,p_column_identifier=>'Q'
,p_column_label=>'Excluir Almuerzo'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(238777404159197377)
,p_db_column_name=>'PERIODO'
,p_display_order=>180
,p_column_identifier=>'R'
,p_column_label=>unistr('Periodo Vacaci\00F3n')
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(238777860270197377)
,p_db_column_name=>'COD_USR_INS'
,p_display_order=>190
,p_column_identifier=>'S'
,p_column_label=>'Cod Usr Ins'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(238778239915197377)
,p_db_column_name=>'FEC_HOR_INS'
,p_display_order=>200
,p_column_identifier=>'T'
,p_column_label=>'Fec y  Hor Solicitud'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_format_mask=>'DD-MON-YYYY HH24:MI'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(238778638514197378)
,p_db_column_name=>'COD_USR_UPD'
,p_display_order=>210
,p_column_identifier=>'U'
,p_column_label=>'Cod Usr Upd'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(238779036891197378)
,p_db_column_name=>'FEC_HOR_UPD'
,p_display_order=>220
,p_column_identifier=>'V'
,p_column_label=>'Fec Hor Upd'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(238779473339197378)
,p_db_column_name=>'MOTIVO'
,p_display_order=>230
,p_column_identifier=>'W'
,p_column_label=>'Motivo Ausentismo'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(463290788759385928)
,p_db_column_name=>'NRO_SOLICITUD'
,p_display_order=>240
,p_column_identifier=>'X'
,p_column_label=>'Nro Solicitud'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(269013632088120305)
,p_db_column_name=>'ANULAR'
,p_display_order=>260
,p_column_identifier=>'AC'
,p_column_label=>'Anular Solicitud'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_format_mask=>'PCT_GRAPH:::'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(269013916991120308)
,p_db_column_name=>'ACCION'
,p_display_order=>270
,p_column_identifier=>'AD'
,p_column_label=>'Actualizar Solicitud'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_format_mask=>'PCT_GRAPH:::'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(428809065706072259)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_type=>'REPORT'
,p_report_alias=>'1900410'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'ACCION:ANULAR:NRO_SOLICITUD:COD_EMPLEADO:IND_TIPO:MOTIVO:OBSERVACION:FEC_HOR_INS:FEC_INICIAL:HORA_INICIAL:FEC_FINAL:HORA_FINAL:CANT_HORAS:CANT_DIAS:PERIODO:IND_DESCUENTO:REL_AUTORIZACION:REL_RECHAZO:ESTADO:IND_EXC_ALMUERZO:'
,p_sort_column_1=>'NRO_SOLICITUD'
,p_sort_direction_1=>'DESC'
,p_sort_column_2=>'COD_EMPLEADO'
,p_sort_direction_2=>'DESC'
,p_sort_column_3=>'IND_TIPO'
,p_sort_direction_3=>'DESC'
,p_sort_column_4=>'FEC_HOR_INS'
,p_sort_direction_4=>'DESC'
,p_sort_column_5=>'FEC_FINAL'
,p_sort_direction_5=>'DESC'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(428798342755073777)
,p_plug_name=>'Fomulario de Solicitud de Ausentismos'
,p_region_name=>'formulario'
,p_region_template_options=>'#DEFAULT#:js-dialog-autoheight:js-dialog-size720x480:t-Form--stretchInputs'
,p_plug_template=>wwv_flow_imp.id(40117728043263659)
,p_plug_display_sequence=>940
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(238768729864197367)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_imp.id(332531706651929199)
,p_button_name=>'BTN_CREAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--gapTop'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_image_alt=>'Crear'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'btn_agregar'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(238780470229197380)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(428798342755073777)
,p_button_name=>'BTN_GUARDAR'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_image_alt=>'Guardar'
,p_button_position=>'CREATE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(260845888503980932)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(428798342755073777)
,p_button_name=>'BTN_ACTUALIZAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Actualizar'
,p_button_position=>'EDIT'
,p_warn_on_unsaved_changes=>null
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'IF :P625_NRO_SOLICITUD IS NULL THEN',
'RETURN FALSE;',
'END IF;',
'',
'IF :P625_ESTADO IN (''A'') THEN',
'RETURN FALSE;',
'END IF;',
'IF :P625_ESTADO IN (''P'') THEN',
'RETURN TRUE;',
'END IF;',
'',
'END;'))
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'FUNCTION_BODY'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(238769136550197369)
,p_name=>'P625_COD_EMPLEADO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(332531706651929199)
,p_prompt=>unistr('C\00F3digo Empleado')
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_colspan=>1
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(238769535761197370)
,p_name=>'P625_NRO_SOLICITUD'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(332531706651929199)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(238769959022197370)
,p_name=>'P625_DESC_EMPLEADO'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(332531706651929199)
,p_prompt=>'Nombre Empleado'
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
 p_id=>wwv_flow_imp.id(238770348540197370)
,p_name=>'P625_AUTORIZADOR_NV1'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(332531706651929199)
,p_prompt=>'Autorizador de la Solicitud'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
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
 p_id=>wwv_flow_imp.id(238780886591197380)
,p_name=>'P625_TIPO_SOLICITUD'
,p_is_required=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(428798342755073777)
,p_prompt=>'Tipo Solicitud'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:Permisos;P,Vacaciones;V,Reposos;R,Licencias/Beneficios;L'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(238781216772197381)
,p_name=>'P625_MOTIVO_SOLICITUD'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(428798342755073777)
,p_prompt=>'Motivo Solicitud'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>'select descripcion d, cod_motivo from rh_motivos where cod_empresa = :P_COD_EMPRESA and ind_tipo = :P625_TIPO_SOLICITUD and cod_motivo not in (''13'',''25'');'
,p_lov_cascade_parent_items=>'P625_TIPO_SOLICITUD'
,p_ajax_items_to_submit=>'P625_TIPO_SOLICITUD'
,p_ajax_optimize_refresh=>'Y'
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
 p_id=>wwv_flow_imp.id(238781676246197381)
,p_name=>'P625_DESCUENTO'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(428798342755073777)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(238782079739197381)
,p_name=>'P625_PERIODO_VACACION'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(428798342755073777)
,p_prompt=>unistr('Periodo Vacaci\00F3n')
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select (''Periodo''||'' ''||periodo||'' ''||''con''||'' ''||v.dias_disponibles||'' ''||''dias de vacaciones disponibles'') desc_periodo, periodo cod_periodo ',
' from rh_reg_vacaciones v where v.cod_empresa = :P_COD_EMPRESA and v.cod_empleado = :P625_COD_EMPLEADO',
'and v.dias_disponibles > 0;'))
,p_lov_display_null=>'YES'
,p_lov_cascade_parent_items=>'P625_COD_EMPLEADO'
,p_ajax_optimize_refresh=>'Y'
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(238782476615197382)
,p_name=>'P625_FECHA_INICIO'
,p_is_required=>true
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(428798342755073777)
,p_prompt=>'Fecha Inicio'
,p_display_as=>'NATIVE_DATE_PICKER_JET'
,p_cSize=>30
,p_colspan=>6
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'POPUP'
,p_attribute_03=>'NONE'
,p_attribute_06=>'ITEM'
,p_attribute_08=>'P625_FECHA_FIN'
,p_attribute_09=>'N'
,p_attribute_11=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(238782882886197382)
,p_name=>'P625_FECHA_FIN'
,p_is_required=>true
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(428798342755073777)
,p_prompt=>'Fecha Fin'
,p_display_as=>'NATIVE_DATE_PICKER_JET'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>6
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'POPUP'
,p_attribute_03=>'ITEM'
,p_attribute_05=>'P625_FECHA_INICIO'
,p_attribute_06=>'NONE'
,p_attribute_09=>'N'
,p_attribute_11=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(238783240951197382)
,p_name=>'P625_HORA_INICIO'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(428798342755073777)
,p_prompt=>'Hora Inicio'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'LV_HORAS'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT TO_CHAR(TRUNC(SYSDATE) + (LEVEL - 1) / 24, ''HH24:MI'') AS Hora',
'FROM DUAL',
'CONNECT BY LEVEL <= 24;',
''))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_colspan=>6
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(238783646940197383)
,p_name=>'P625_HORA_FIN'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(428798342755073777)
,p_prompt=>'Hora Fin'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'LV_HORAS'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT TO_CHAR(TRUNC(SYSDATE) + (LEVEL - 1) / 24, ''HH24:MI'') AS Hora',
'FROM DUAL',
'CONNECT BY LEVEL <= 24;',
''))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_colspan=>6
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(238784090418197383)
,p_name=>'P625_OBSERVACION'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(428798342755073777)
,p_prompt=>'Observacion'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>30
,p_cHeight=>5
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(260844011163980914)
,p_name=>'P625_NRO_SOL_AUTORIZADO'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(332531706651929199)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(266137311237443729)
,p_name=>'P625_ABRE_MODAL'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(332531748744929200)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(268598328580706504)
,p_name=>'P625_ESTADO'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(428798342755073777)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(269013297601120301)
,p_name=>'P625_NRO_ANULAR'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(332531748744929200)
,p_prompt=>'New'
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
 p_id=>wwv_flow_imp.id(379427604996767420)
,p_name=>'P625_DISPONIBLES'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(428798342755073777)
,p_prompt=>unistr('D\00EDas Disponibles')
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_colspan=>3
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(379427722171767421)
,p_name=>'P625_DECONTAR_DIAS'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(428798342755073777)
,p_prompt=>unistr('D\00EDas a descontar')
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(379427825510767422)
,p_name=>'P625_CARGAR_HORARIO'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(428798342755073777)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(379429219238767436)
,p_name=>'P625_CANT_HORAS'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(428798342755073777)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(260843727653980911)
,p_validation_name=>'VALIDACIONES'
,p_validation_sequence=>10
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'v_aux number := 0;',
'begin',
'    if :P625_TIPO_SOLICITUD IN (''V'') and to_number(nvl(:P625_DECONTAR_DIAS,0)) > to_number(nvl(:P625_DISPONIBLES,0)) then',
'        --:P625_MENSAJE := ''La cantidad solicitada''||:P625_DECONTAR_DIAS||''no puede ser mayor al disponible ''||:P625_DISPONIBLES;',
'        return ''La cantidad solicitada (''||:P625_DECONTAR_DIAS||'') no puede ser mayor a la disponible (''||:P625_DISPONIBLES||'')'';',
'        --RAISE_APPLICATION_ERROR(-20001,''Error al registrar: '');',
'    end if;',
'',
'    if :P625_DECONTAR_DIAS = 0 and :P625_CARGAR_HORARIO = ''S'' and (:P625_HORA_INICIO IS NULL OR :P625_HORA_FIN IS NULL',
'        OR :P625_CANT_HORAS <= 0) then',
'        RETURN ''Se debe indicar correctamente el horario'';',
'    end if;',
'',
'       SELECT NVL(MAX(nro_movimiento), 0) ',
'        INTO v_aux',
'        FROM rh_mov_permisos',
'        WHERE cod_empleado = :P625_COD_EMPLEADO ',
'        AND cod_empresa = :P_COD_EMPRESA ',
'        AND (:P625_FECHA_INICIO BETWEEN fec_inicial AND fec_final ',
'        OR :P625_FECHA_FIN BETWEEN fec_inicial AND fec_final',
'        OR fec_inicial BETWEEN :P625_FECHA_INICIO AND :P625_FECHA_FIN',
'        OR fec_final BETWEEN :P625_FECHA_INICIO AND :P625_FECHA_FIN',
'        OR fec_inicial = :P625_FECHA_INICIO ',
'        OR fec_final = :P625_FECHA_FIN)',
'        AND estado NOT IN (''N'', ''R'') -- Asegurarse de excluir estos estados en todos los casos',
'        AND (:P625_NRO_SOLICITUD IS NULL OR nro_movimiento <> :P625_NRO_SOLICITUD);',
'',
'    if v_aux > 0 then',
'        RETURN ''Ya existe una solicitud de ausentismos en el rango de fecha solicitada, el nro de dicho ausentismo es el ''|| v_aux ||'' Favor verificar'' ;',
'    end if;',
'end;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_ERR_TEXT'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(238786165880197387)
,p_name=>'DA_CREAR'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(238768729864197367)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(260846873427980942)
,p_event_id=>wwv_flow_imp.id(238786165880197387)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(260845888503980932)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(260846979208980943)
,p_event_id=>wwv_flow_imp.id(238786165880197387)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(238780470229197380)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(238787194928197388)
,p_event_id=>wwv_flow_imp.id(238786165880197387)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P625_FECHA_INICIO,P625_FECHA_FIN,P625_TIPO_SOLICITUD,P625_MOTIVO_SOLICITUD,P625_DESCUENTO,P625_PERIODO_VACACION,P625_HORA_INICIO,P625_HORA_FIN,P625_OBSERVACION'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(238786657672197388)
,p_event_id=>wwv_flow_imp.id(238786165880197387)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(428798342755073777)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(238787556538197388)
,p_name=>'DA_TIPO_SOLICITUD'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P625_TIPO_SOLICITUD'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(238788529708197388)
,p_event_id=>wwv_flow_imp.id(238787556538197388)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P625_PERIODO_VACACION,P625_DECONTAR_DIAS,P625_DISPONIBLES'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P625_TIPO_SOLICITUD'
,p_client_condition_expression=>'V'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(238788020970197388)
,p_event_id=>wwv_flow_imp.id(238787556538197388)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P625_PERIODO_VACACION,P625_DECONTAR_DIAS,P625_DISPONIBLES'
,p_client_condition_type=>'NOT_EQUALS'
,p_client_condition_element=>'P625_TIPO_SOLICITUD'
,p_client_condition_expression=>'V'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(238788921468197389)
,p_name=>'DA_MOTIVO'
,p_event_sequence=>40
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P625_MOTIVO_SOLICITUD'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
,p_display_when_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(238789476296197389)
,p_event_id=>wwv_flow_imp.id(238788921468197389)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select NVL(deducir,''S'') INTO :P625_DESCUENTO',
'from rh_motivos where cod_empresa = :P_COD_EMPRESA',
'and cod_motivo = :P625_MOTIVO_SOLICITUD;'))
,p_attribute_02=>'P625_MOTIVO_SOLICITUD'
,p_attribute_03=>'P625_DESCUENTO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(238785234543197386)
,p_name=>'Deshabilitar'
,p_event_sequence=>50
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
,p_display_when_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(238785743132197387)
,p_event_id=>wwv_flow_imp.id(238785234543197386)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P625_COD_EMPLEADO'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(379427410718767418)
,p_name=>'DA_MOTIVO_SOLICITUD'
,p_event_sequence=>60
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P625_MOTIVO_SOLICITUD'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
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
 p_id=>wwv_flow_imp.id(379427569632767419)
,p_event_id=>wwv_flow_imp.id(379427410718767418)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    select NVL(max(m.IND_MIRA_HORARIO),''N'') INTO :P625_CARGAR_HORARIO ',
'        from rh_motivos m where m.cod_empresa = :P_COD_EMPRESA',
'            and m.cod_motivo = :P625_MOTIVO_SOLICITUD;',
'',
'    IF :P625_TIPO_SOLICITUD = ''V'' THEN',
'        :P625_CARGAR_HORARIO := ''N'';',
'    END IF;',
'END;'))
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(379428104204767425)
,p_name=>'P625_CARGAR_HORARIO'
,p_event_sequence=>70
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P625_CARGAR_HORARIO'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(379428269852767426)
,p_event_id=>wwv_flow_imp.id(379428104204767425)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P625_HORA_INICIO,P625_HORA_FIN,P625_CANT_HORAS'
,p_client_condition_type=>'NOT_EQUALS'
,p_client_condition_element=>'P625_CARGAR_HORARIO'
,p_client_condition_expression=>'S'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(379428336003767427)
,p_event_id=>wwv_flow_imp.id(379428104204767425)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P625_HORA_INICIO,P625_HORA_FIN,P625_CANT_HORAS'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P625_CARGAR_HORARIO'
,p_client_condition_expression=>'S'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(379428451598767428)
,p_name=>'DA_SELEC_PERIODO'
,p_event_sequence=>80
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P625_PERIODO_VACACION'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(379428536741767429)
,p_event_id=>wwv_flow_imp.id(379428451598767428)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select nvl(max(dias_disponibles),0) into :P625_DISPONIBLES',
'from rh_reg_vacaciones v ',
'where v.cod_empresa = :P_COD_EMPRESA and v.cod_empleado = :P625_COD_EMPLEADO',
'and v.dias_disponibles > 0 and v.periodo = :P625_PERIODO_VACACION;'))
,p_attribute_02=>'P625_COD_EMPLEADO,P625_PERIODO_VACACION'
,p_attribute_03=>'P625_DISPONIBLES'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(379428619399767430)
,p_name=>'DA_FECHA_INICIO'
,p_event_sequence=>90
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P625_FECHA_INICIO'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(379428729309767431)
,p_event_id=>wwv_flow_imp.id(379428619399767430)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'CANTIDAD NUMBER := 0;',
'FECHA DATE;',
'DIAS NUMBER;',
'begin',
'',
':P582_FECHA_FIN := NULL;',
':P582_HORA_INICIO := NULL;',
':P582_HORA_FIN := NULL;',
'/*if :P582_FECHA_INICIO is not null and :P582_FECHA_FIN is not null then',
'    FECHA := :P582_FECHA_INICIO;',
'    DIAS := to_date(:P582_FECHA_FIN,''dd/mm/yyyy'') - ',
'        to_date(:P582_FECHA_INICIO,''dd/mm/yyyy'') + 1;',
'',
'    FOR I IN 1..DIAS LOOP',
'        IF TO_CHAR (FECHA, ''DY'', ''NLS_DATE_LANGUAGE=ENGLISH'') IN (''SUN'') THEN',
'        CANTIDAD := CANTIDAD + 1;',
'        END IF;',
unistr('        --Valida los d\00EDas feriados que se tengan entre las fechas'),
'        FOR F IN (select feriado from feriados) LOOP',
'            IF F.feriado = FECHA then',
'                CANTIDAD := CANTIDAD +1;',
'            END IF;',
'        END LOOP;',
'        FECHA := FECHA + 1;',
'    END LOOP;',
'',
'    :P582_DECONTAR_DIAS := DIAS - CANTIDAD;',
'else',
'    :P582_DECONTAR_DIAS := null;',
'end if;*/',
'',
'end;'))
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(379428899363767432)
,p_name=>'DA_FECHA_FIN'
,p_event_sequence=>100
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P625_FECHA_FIN'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(379428903313767433)
,p_event_id=>wwv_flow_imp.id(379428899363767432)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'CANTIDAD NUMBER := 0;',
'FECHA DATE;',
'DIAS NUMBER;',
'begin',
'',
':P625_HORA_INICIO := NULL;',
':P625_HORA_FIN := NULL;',
'',
'if :P625_FECHA_INICIO is not null and :P625_FECHA_FIN is not null then',
'    IF :P625_FECHA_INICIO = :P625_FECHA_FIN ',
'            AND :P625_TIPO_SOLICITUD NOT IN (''V'',''L'') THEN',
'        :P625_CARGAR_HORARIO := ''S'';',
'    ELSE',
'        :P625_CARGAR_HORARIO := ''N'';',
'    END IF;',
'    FECHA := :P625_FECHA_INICIO;',
'    DIAS := to_date(:P625_FECHA_FIN,''dd/mm/yyyy'') - ',
'        to_date(:P625_FECHA_INICIO,''dd/mm/yyyy'') + 1;',
'',
'    FOR I IN 1..DIAS LOOP',
unistr('        --Valida los d\00EDas que son domingos'),
'        IF TO_CHAR (FECHA, ''DY'', ''NLS_DATE_LANGUAGE=ENGLISH'') IN (''SUN'') THEN',
'            CANTIDAD := CANTIDAD + 1;',
'        END IF;',
unistr('        --Valida los d\00EDas feriados que se tengan entre las fechas'),
'        FOR F IN (select feriado from feriados) LOOP',
'            IF F.feriado = FECHA then',
'                CANTIDAD := CANTIDAD +1;',
'            END IF;',
'        END LOOP;',
'        FECHA := FECHA + 1;',
'    END LOOP;',
'',
'    :P625_DECONTAR_DIAS := DIAS - CANTIDAD;',
'else',
'    :P625_DECONTAR_DIAS := null;',
'end if;',
'end;'))
,p_attribute_02=>'P625_FECHA_INICIO,P625_FECHA_FIN'
,p_attribute_03=>'P625_DECONTAR_DIAS,P625_HORA_INICIO,P625_HORA_FIN,P625_CARGAR_HORARIO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(379429097151767434)
,p_name=>'DA_HORA_INICIO'
,p_event_sequence=>110
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P625_HORA_INICIO'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(379429183528767435)
,p_event_id=>wwv_flow_imp.id(379429097151767434)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P582_HORA_FIN is not null and :P625_HORA_INICIO is not null then',
'    select round((',
'            to_date(''15/09/2023 ''||:P625_HORA_FIN, ''dd/mm/yyyy HH:MIam'') - ',
'            to_date(''15/09/2023 ''||:P625_HORA_INICIO, ''dd/mm/yyyy HH:MIam'') ',
'        ) * (60 * 24),2) / 60 into :P625_CANT_HORAS',
'    from dual;',
'else',
'    :P625_CANT_HORAS := null;',
'end if;',
'',
'IF NVL(:P625_CANT_HORAS,0) > 0 THEN',
'    :P625_DECONTAR_DIAS := 0;',
'END IF;'))
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(260843866088980912)
,p_name=>'DA_MOV_SELECCIONADO'
,p_event_sequence=>120
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P625_NRO_SOLICITUD'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(260843986356980913)
,p_event_id=>wwv_flow_imp.id(260843866088980912)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'--v_periodo_vacacion varchar2(5);',
'--v_descuento varchar2(5);',
'begin',
'    if :P625_NRO_SOLICITUD is not null then',
'        select ',
'        ind_tipo, fec_inicial,',
'        to_char(hora_inicial,''HH:MIam''), observacion, periodo,',
'        case when rel_autorizacion is null and rel_rechazo is null',
'        then ''N'' else ''S'' end, cod_motivo, estado',
'        into',
'        :P625_TIPO_SOLICITUD, :P625_FECHA_INICIO,',
'        :P625_HORA_INICIO, :P625_OBSERVACION, :P625_PERIODO_VACACION,',
'        :P625_NRO_SOL_AUTORIZADO,:P625_MOTIVO_SOLICITUD,:P625_ESTADO',
'        from rh_mov_permisos ',
'        where nro_movimiento = :P625_NRO_SOLICITUD;',
'    end if;',
'',
'',
'    /*select NVL(MAX(deducir),''S'') INTO v_descuento',
'        from rh_motivos where cod_empresa = :P_COD_EMPRESA',
'            and cod_motivo = :P582_MOTIVO_SOLICITUD;',
'    if :P582_TIPO_SOLICITUD = ''V'' then',
'        v_periodo_vacacion := :P582_PERIODO_VACACION;',
'    else v_periodo_vacacion := '''';',
'    end if;',
'    insert into rh_mov_permisos (cod_empresa, nro_movimiento, cod_empleado, ind_tipo, cod_motivo,',
'    fec_inicial, fec_final, cant_dias, hora_inicial, hora_final, cant_horas,',
'    observacion, ind_descuento, estado, ind_exc_almuerzo, periodo,',
'    cod_usr_ins, fec_hor_ins)',
'    values (:P_COD_EMPRESA, seq_mov_permisos.nextval, :P582_COD_EMPLEADO, :P582_TIPO_SOLICITUD, :P582_MOTIVO_SOLICITUD,',
'    :P582_FECHA_INICIO, :P582_FECHA_FIN, :P582_DECONTAR_DIAS, '''', '''','''',',
'    :P582_OBSERVACION,v_descuento,''P'',''S'',v_periodo_vacacion,:P_COD_USUARIO,SYSDATE);*/',
'',
'end;'))
,p_attribute_02=>'P625_NRO_SOLICITUD'
,p_attribute_03=>'P625_TIPO_SOLICITUD,P625_FECHA_INICIO,P625_HORA_INICIO,P625_OBSERVACION,P625_PERIODO_VACACION,,P625_NRO_SOL_AUTORIZADO,P625_MOTIVO_SOLICITUD,P625_ESTADO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(260846446475980938)
,p_event_id=>wwv_flow_imp.id(260843866088980912)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(260845888503980932)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(260846529305980939)
,p_event_id=>wwv_flow_imp.id(260843866088980912)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(238780470229197380)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(260846616034980940)
,p_event_id=>wwv_flow_imp.id(260843866088980912)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(428798342755073777)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(260846766165980941)
,p_event_id=>wwv_flow_imp.id(260843866088980912)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'    if :P625_NRO_SOLICITUD is not null then',
'        select  cod_motivo, fec_final, to_char(hora_final,''HH:MIam'')',
'        into',
'         :P625_MOTIVO_SOLICITUD, :P625_FECHA_FIN, :P625_HORA_FIN',
'        from rh_mov_permisos ',
'        where nro_movimiento = :P625_NRO_SOLICITUD and rownum=1;',
'    end if;',
'end;'))
,p_attribute_02=>'P625_NRO_SOLICITUD'
,p_attribute_03=>'P625_FECHA_FIN,P625_HORA_FIN,P625_FECHA_INICIO,P625_HORA_INICIO,P625_TIPO_SOLICITUD,P625_MOTIVO_SOLICITUD'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(463290512441385926)
,p_event_id=>wwv_flow_imp.id(260843866088980912)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(260845888503980932)
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P625_NRO_SOLICITUD'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(463290609979385927)
,p_event_id=>wwv_flow_imp.id(260843866088980912)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(260845888503980932)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P625_ESTADO'
,p_client_condition_expression=>'P'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(463290385538385924)
,p_event_id=>wwv_flow_imp.id(260843866088980912)
,p_event_result=>'TRUE'
,p_action_sequence=>80
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(260845888503980932)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P625_ESTADO'
,p_client_condition_expression=>'A'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(463290426163385925)
,p_event_id=>wwv_flow_imp.id(260843866088980912)
,p_event_result=>'TRUE'
,p_action_sequence=>90
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(260845888503980932)
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P625_NRO_SOLICITUD'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(268598164615706502)
,p_name=>'DA_ANULAR_d'
,p_event_sequence=>130
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(260845888503980932)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(268598229584706503)
,p_event_id=>wwv_flow_imp.id(268598164615706502)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P625_ESTADO'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P625_ESTADO'
,p_client_condition_expression=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(266137420892443730)
,p_name=>'DA_ABRE_MODAL'
,p_event_sequence=>140
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P625_ABRE_MODAL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(266137594600443731)
,p_event_id=>wwv_flow_imp.id(266137420892443730)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(428798342755073777)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(269013328087120302)
,p_name=>'DA_ANULA'
,p_event_sequence=>150
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P625_NRO_ANULAR'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(269013431262120303)
,p_event_id=>wwv_flow_imp.id(269013328087120302)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    UPDATE RH_MOV_PERMISOS c',
'    SET c.estado = ''N'' ',
'    WHERE c.nro_movimiento = :P625_NRO_ANULAR;',
'EXCEPTION',
'    WHEN OTHERS THEN ',
'        RAISE_APPLICATION_ERROR(-20001, SQLERRM);',
'END;',
''))
,p_attribute_02=>'P625_NRO_ANULAR'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(269014230461120311)
,p_event_id=>wwv_flow_imp.id(269013328087120302)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'Solicitud Anulada!'
,p_attribute_03=>'information'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(269013533542120304)
,p_event_id=>wwv_flow_imp.id(269013328087120302)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(332531748744929200)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(269014045245120309)
,p_name=>'Edit Report - Dialogo Closed'
,p_event_sequence=>160
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(332531748744929200)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(269014115935120310)
,p_event_id=>wwv_flow_imp.id(269014045245120309)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(332531748744929200)
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(238784879392197386)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_GUARDA_SOLICITUD'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'v_periodo_vacacion varchar2(5);',
'V_DIAS date;',
'V_HORAS varchar(8);',
'v_dias_fin date;',
'v_horas_fin varchar2(10);',
'V_can_h number;',
'v_hora_can_ini date;',
'v_hora_can_fin date;',
'begin',
'    if :P625_TIPO_SOLICITUD = ''V'' then',
'        v_periodo_vacacion := :P625_PERIODO_VACACION;',
'    else ',
'        v_periodo_vacacion := '''';',
'    end if;',
'    :P625_NRO_SOLICITUD := seq_mov_permisos.nextval;',
'    --v_dias := :P625_FECHA_INICIO; ',
'    --v_horas := TO_CHAR(:P625_HORA_INICIO, ''HH24:MI''); --hora inicio',
'    --v_dias_fin := :P625_FECHA_FIN;',
'    --v_horas_fin := TO_CHAR(:P625_HORA_FIN, ''HH24:MI''); --hora fin',
'    v_hora_can_ini := TO_DATE(:P625_FECHA_INICIO||'' ''||:P625_HORA_INICIO,''DD/MM/YYYY HH24:MI'');',
'    v_hora_can_fin := TO_DATE(:P625_FECHA_FIN||'' ''||:P625_HORA_FIN,''DD/MM/YYYY HH24:MI'');',
'   v_can_h := to_number((v_hora_can_fin - v_hora_can_ini)*24); --cantidad en horas',
'    insert into rh_mov_permisos (cod_empresa, nro_movimiento, cod_empleado, ind_tipo, cod_motivo,',
'    fec_inicial, fec_final, cant_dias, hora_inicial, hora_final, cant_horas,',
'    observacion, ind_descuento, estado, ind_exc_almuerzo, periodo,',
'    cod_usr_ins, fec_hor_ins)',
'    values (:P_COD_EMPRESA, :P625_NRO_SOLICITUD, :P625_COD_EMPLEADO, :P625_TIPO_SOLICITUD, :P625_MOTIVO_SOLICITUD,',
'    :P625_FECHA_INICIO, :P625_FECHA_FIN ,:P625_DECONTAR_DIAS, /*v_horas, v_horas_fin,*/',
'    TO_DATE(:P625_FECHA_INICIO||'' ''||:P625_HORA_INICIO,''DD/MM/YYYY HH24:MI''),TO_DATE(:P625_FECHA_FIN||'' ''||:P625_HORA_FIN,''DD/MM/YYYY HH24:MI''),v_can_h,',
'    :P625_OBSERVACION,:P625_DESCUENTO,''P'',''S'',v_periodo_vacacion,:P_COD_USUARIO,SYSDATE);',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_ERROR.ADD_ERROR(',
'            p_message => ''Error: '' || SQLERRM,',
'            p_display_location => APEX_ERROR.C_INLINE_IN_NOTIFICATION',
'        );',
'END;',
''))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'No se pudo registrar la solicitud'
,p_process_when_button_id=>wwv_flow_imp.id(238780470229197380)
,p_process_success_message=>'Fue registrada la solicitud nro. &P625_NRO_SOLICITUD.'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(238784494632197385)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'CARGA_INICIAL'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
unistr('    -------Obtener c\00F3digo de empleado del usuario que inicio sesi\00F3n-------'),
'   -- if :P_COD_EMPLEADO is null then',
'        select e.cod_empleado, p.nombre into :P625_COD_EMPLEADO, :P625_DESC_EMPLEADO  from ASP$USUA0100 u',
'        inner join personas p on p.cod_persona = u.cod_persona and u.usrn = :P_COD_USUARIO',
'        inner join rh_empleados e on e.cod_persona = p.cod_persona  and e.cod_empresa = :P_COD_EMPRESA and nvl(E.ACTIVO,''N'') =''S'';',
'   -- end if;',
'    ---------//FIN//-----------',
'',
'    -------Obtener el autorizador nivel 1 (Jefe directo)------------',
'    select pj.nombre into :P625_AUTORIZADOR_NV1 from INV.ASP$USUA0100 u',
'      inner join personas p on p.cod_persona = u.cod_persona and u.usrn = :P_COD_USUARIO',
'      inner join rh_empleados e on e.cod_persona = p.cod_persona and e.cod_empresa = :P_COD_EMPRESA',
'      inner join rh_empleados j on j.cod_empleado = e.cod_superior and e.cod_empresa = j.cod_empresa',
'      inner join personas pj on pj.cod_persona = j.cod_persona',
'      WHERE nvl(E.ACTIVO,''N'') =''S'';',
'    ---------//FIN//-----------',
'exception',
' when others then',
'   :P625_COD_EMPLEADO := null;',
'end;'))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_imp.component_end;
end;
/
