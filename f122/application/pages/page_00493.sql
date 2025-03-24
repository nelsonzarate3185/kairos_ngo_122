prompt --application/pages/page_00493
begin
--   Manifest
--     PAGE: 00493
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
 p_id=>493
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'Comision por Lineas Reparadas - CALINCOM'
,p_alias=>'COMISION-POR-LINEAS-REPARADAS-CALINCOM'
,p_step_title=>unistr('Comisi\00F3n por L\00EDneas Reparadas - CALINCOM')
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function soloNumeros(e){',
'  var key = e.charCode;',
'    return key >= 48 && key <= 57 ;',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_last_updated_by=>'PBOGADO'
,p_last_upd_yyyymmddhh24miss=>'20250127140413'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(146851655710971109)
,p_plug_name=>'Main'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>1090
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(146851764287971110)
,p_plug_name=>'Report'
,p_parent_plug_id=>wwv_flow_imp.id(146851655710971109)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT COD_EMPRESA,	',
'       COD_PROVEEDOR,	',
'       COD_LINEA,	',
'       FEC_ALTA,	',
'       COD_USUARIO,	',
'       IMPORTE_COMISION,	',
'       IMPORTE_ADICIONAL,	',
'       APEX_ITEM.CHECKBOX (p_idx         => 1 ,',
'                           p_value       => rowid,',
'                           p_attributes  => (case ESTADO',
'                                                 when ''S'' then ''checked ''',
'                                                 else null',
'                                                 end ) ||'' disabled'') as ESTADO,',
'       ROWID,',
'       NULL EDITAR,',
'       NULL ELIMINAR',
'FROM CA_COMISION_LINEAS;'))
,p_plug_source_type=>'NATIVE_IR'
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
 p_id=>wwv_flow_imp.id(146852253980971115)
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
,p_internal_uid=>146852253980971115
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(146852309704971116)
,p_db_column_name=>'COD_EMPRESA'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Cod Empresa'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(146852446393971117)
,p_db_column_name=>'COD_PROVEEDOR'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Proveedor'
,p_column_link=>'javascript:$s(''P493_DETALLE'',''#ROWID#'');'
,p_column_linktext=>'#COD_PROVEEDOR#'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_rpt_named_lov=>wwv_flow_imp.id(147153443958770478)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(146852607672971119)
,p_db_column_name=>'COD_LINEA'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>unistr('L\00EDnea')
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_rpt_named_lov=>wwv_flow_imp.id(147158110991752639)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(146852818826971121)
,p_db_column_name=>'FEC_ALTA'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Fec Alta'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(146852919359971122)
,p_db_column_name=>'COD_USUARIO'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Cod Usuario'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(146853080877971123)
,p_db_column_name=>'IMPORTE_COMISION'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>unistr('Comisi\00F3n')
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(146853101752971124)
,p_db_column_name=>'IMPORTE_ADICIONAL'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Adicional'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(146853206839971125)
,p_db_column_name=>'ESTADO'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Estado'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(146853357094971126)
,p_db_column_name=>'ROWID'
,p_display_order=>110
,p_column_identifier=>'K'
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
 p_id=>wwv_flow_imp.id(146853560750971128)
,p_db_column_name=>'EDITAR'
,p_display_order=>130
,p_column_identifier=>'L'
,p_column_label=>'&nbsp'
,p_column_link=>'javascript:$s(''P493_EDITAR'',''#ROWID#'');'
,p_column_linktext=>'<span class="fa fa-edit" aria-hidden="true"></span>'
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
 p_id=>wwv_flow_imp.id(146853697691971129)
,p_db_column_name=>'ELIMINAR'
,p_display_order=>140
,p_column_identifier=>'M'
,p_column_label=>'&nbsp'
,p_column_link=>'javascript:$s(''P493_ELIMINAR'',''#ROWID#'');'
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
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(147038880244849860)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1470389'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>10
,p_report_columns=>'EDITAR:COD_PROVEEDOR:COD_LINEA:IMPORTE_COMISION:IMPORTE_ADICIONAL:ESTADO:ELIMINAR:'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(146851875022971111)
,p_plug_name=>'Sub Report'
,p_parent_plug_id=>wwv_flow_imp.id(146851655710971109)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--noBorder:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>20
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(146854593776971138)
,p_plug_name=>'Editar/Agregar'
,p_parent_plug_id=>wwv_flow_imp.id(146851655710971109)
,p_region_template_options=>'#DEFAULT#:js-dialog-size600x400'
,p_plug_template=>wwv_flow_imp.id(40117728043263659)
,p_plug_display_sequence=>30
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(146851910077971112)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(146851875022971111)
,p_button_name=>'BT_EXCEL'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--iconRight:t-Button--hoverIconPush'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Exportar '
,p_icon_css_classes=>'fa-file-excel-o'
,p_button_cattributes=>'style="margin-top:15px;"'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(146854750829971140)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(146854593776971138)
,p_button_name=>'BT_CANCELAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_image_alt=>'Cancelar'
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(146854834559971141)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_imp.id(146854593776971138)
,p_button_name=>'BT_GUARDAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Guardar'
,p_button_position=>'CREATE'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-save-as'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(146854416940971137)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(146851764287971110)
,p_button_name=>'BT_AGREGAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Nuevo'
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
,p_icon_css_classes=>'fa-file-new'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(146851016883971103)
,p_name=>'P493_COD_USUARIO'
,p_item_sequence=>990
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(146851121726971104)
,p_name=>'P493_COD_EMPRESA'
,p_item_sequence=>1010
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(146851211960971105)
,p_name=>'P493_NOM_EMPRESA'
,p_item_sequence=>1030
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(146851309203971106)
,p_name=>'P493_COD_SUCURSAL'
,p_item_sequence=>1020
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(146851495839971107)
,p_name=>'P493_NOM_SUCURSAL'
,p_item_sequence=>1040
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(146851558883971108)
,p_name=>'P493_COD_MODULO'
,p_item_sequence=>1000
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(146852029034971113)
,p_name=>'P493_SHOW_COD_USUARIO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(146851875022971111)
,p_prompt=>'Usuario'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>4
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(146852102678971114)
,p_name=>'P493_FEC_ALTA'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(146851875022971111)
,p_prompt=>'Fecha de Alta'
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
 p_id=>wwv_flow_imp.id(146853796702971130)
,p_name=>'P493_EDITAR'
,p_item_sequence=>1050
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(146853862513971131)
,p_name=>'P493_DETALLE'
,p_item_sequence=>1060
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(146853934281971132)
,p_name=>'P493_ELIMINAR'
,p_item_sequence=>1070
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(146854612765971139)
,p_name=>'P493_PROVEEDOR'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(146854593776971138)
,p_prompt=>'Proveedor'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select c.cod_proveedor ||'' - '' ||ltrim(rtrim(nvl(p.nombre, p.nomb_fantasia))) D, ',
'       c.cod_proveedor R',
'from cm_proveedores c, personas p',
'where c.cod_empresa = :p493_cod_empresa',
'--and c.cod_rubro = ''88''',
'and c.cod_persona = p.cod_persona',
'AND NVL(C.ESTADO,''A'')NOT IN (''I'')',
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
 p_id=>wwv_flow_imp.id(146855485786971147)
,p_name=>'P493_LINEA'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(146854593776971138)
,p_prompt=>unistr('L\00EDnea')
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT COD_LINEA ||'' - '' ||DESCRIPCION D, ',
'       COD_LINEA R',
'FROM st_linea ',
'WHERE COD_EMPRESA=:P493_COD_EMPRESA',
''))
,p_cSize=>30
,p_begin_on_new_line=>'N'
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
 p_id=>wwv_flow_imp.id(146855525340971148)
,p_name=>'P493_COMISION'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(146854593776971138)
,p_prompt=>unistr('Comisi\00F3n')
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
 p_id=>wwv_flow_imp.id(146855659530971149)
,p_name=>'P493_ADICIONAL'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(146854593776971138)
,p_prompt=>'Adicional'
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
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(147185103406540709)
,p_name=>'P493_ERR'
,p_item_sequence=>1080
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(147185426960540712)
,p_name=>'P493_ESTADO'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(146854593776971138)
,p_prompt=>'Estado'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:SI;S,NO;N'
,p_cHeight=>1
,p_colspan=>2
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(146854004117971133)
,p_name=>'DA_DETALLE'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P493_DETALLE'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(146854152067971134)
,p_event_id=>wwv_flow_imp.id(146854004117971133)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    SELECT COD_USUARIO,',
'           FEC_ALTA',
'    INTO :P493_SHOW_COD_USUARIO,',
'         :P493_FEC_ALTA',
'    FROM CA_COMISION_LINEAS',
'    WHERE ROWID = :P493_DETALLE;',
'    EXCEPTION',
'         WHEN OTHERS THEN ',
'                APEX_DEBUG.ERROR(''Error detalle ''||SQLERRM);',
'END;'))
,p_attribute_02=>'P493_DETALLE'
,p_attribute_03=>'P493_SHOW_COD_USUARIO,P493_FEC_ALTA'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(146854224618971135)
,p_event_id=>wwv_flow_imp.id(146854004117971133)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P493_SHOW_COD_USUARIO,P493_FEC_ALTA'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(146854956438971142)
,p_name=>'DA_CANCELAR'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(146854750829971140)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(146855061402971143)
,p_event_id=>wwv_flow_imp.id(146854956438971142)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(146854593776971138)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(146855100502971144)
,p_name=>'DA_AGREGAR'
,p_event_sequence=>30
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(146854416940971137)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(146855374249971146)
,p_event_id=>wwv_flow_imp.id(146855100502971144)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P493_EDITAR := null;',
':P493_PROVEEDOR := null;',
':P493_LINEA :=null;',
':P493_COMISION := null;',
':P493_ADICIONAL := null;'))
,p_attribute_03=>'P493_EDITAR,P493_PROVEEDOR,P493_LINEA,P493_COMISION,P493_ADICIONAL'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(146855226971971145)
,p_event_id=>wwv_flow_imp.id(146855100502971144)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(146854593776971138)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(146855735906971150)
,p_name=>'DA_EDITAR'
,p_event_sequence=>40
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P493_EDITAR'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(147184859434540706)
,p_event_id=>wwv_flow_imp.id(146855735906971150)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    SELECT COD_PROVEEDOR,',
'           COD_LINEA,',
'           IMPORTE_COMISION,',
'           IMPORTE_ADICIONAL,',
'           ESTADO',
'    INTO :P493_PROVEEDOR,',
'         :P493_LINEA,',
'         :P493_COMISION,',
'         :P493_ADICIONAL,',
'         :P493_ESTADO',
'    FROM CA_COMISION_LINEAS',
'    WHERE ROWID = :P493_EDITAR;    ',
'',
'    EXCEPTION',
'         WHEN NO_DATA_FOUND THEN',
'                    null;',
'         WHEN OTHERS THEN',
'                APEX_DEBUG.ERROR(''Error editar ''||SQLERRM);',
'END;'))
,p_attribute_02=>'P493_EDITAR'
,p_attribute_03=>'P493_PROVEEDOR,P493_LINEA,P493_COMISION,P493_ADICIONAL,P493_ESTADO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(147184332613540701)
,p_event_id=>wwv_flow_imp.id(146855735906971150)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(146854593776971138)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(147184475089540702)
,p_name=>'DA_ELIMINAR'
,p_event_sequence=>50
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P493_ELIMINAR'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(147184557825540703)
,p_event_id=>wwv_flow_imp.id(147184475089540702)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>unistr('\00BFDesea eliminar la siguiente comisi\00F3n?')
,p_attribute_03=>'warning'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(147184679883540704)
,p_event_id=>wwv_flow_imp.id(147184475089540702)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    DELETE CA_COMISION_LINEAS',
'    WHERE ROWID = :P493_ELIMINAR;',
'',
'',
'    EXCEPTION',
'        WHEN OTHERS THEN',
'                APEX_DEBUG.ERROR(SQLERRM);',
'END;'))
,p_attribute_02=>'P493_ELIMINAR'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(147184794457540705)
,p_event_id=>wwv_flow_imp.id(147184475089540702)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(146851764287971110)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(147184997431540707)
,p_name=>'DA_GUARDAR'
,p_event_sequence=>60
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(146854834559971141)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(147185091158540708)
,p_event_id=>wwv_flow_imp.id(147184997431540707)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'',
'V_ESTADO VARCHAR2(1);',
'',
'BEGIN',
'    IF :P493_EDITAR is NULL then',
'       V_ESTADO := ''S'';',
'      INSERT INTO CA_COMISION_LINEAS( ',
'             COD_EMPRESA,',
'             COD_PROVEEDOR,',
'             COD_LINEA,',
'             IMPORTE_COMISION,',
'             IMPORTE_ADICIONAL,',
'             COD_USUARIO,',
'             FEC_ALTA,',
'             ESTADO',
'',
'      ) VALUES (',
'          :P493_COD_EMPRESA,',
'          :P493_PROVEEDOR,',
'          :P493_LINEA,',
'          :P493_COMISION,',
'          :P493_ADICIONAL,',
'          :P493_COD_USUARIO,',
'          SYSDATE,',
'          V_ESTADO',
'      );',
'    ELSE ',
'',
'        UPDATE CA_COMISION_LINEAS',
'        SET COD_PROVEEDOR = :P493_PROVEEDOR ,',
'             COD_LINEA = :P493_LINEA ,',
'             IMPORTE_COMISION = :P493_COMISION ,',
'             IMPORTE_ADICIONAL = :P493_ADICIONAL,',
'             COD_USUARIO = :P493_COD_USUARIO,',
'             FEC_ALTA = SYSDATE,',
'             ESTADO = :P493_ESTADO',
'        WHERE ROWID = :P493_EDITAR;',
'',
'    CASE',
'        WHEN :P493_PROVEEDOR is null then ',
'                :P493_ERR := ''Seleccione un proveedor'';',
'        WHEN :P493_LINEA is null then',
'                :P493_ERR := ''Seleccione una linea'';',
'    END CASE;',
'',
'    END IF;',
'    ',
'    EXCEPTION',
'        WHEN OTHERS THEN',
'                APEX_DEBUG.ERROR(''Error al guardar ''||SQLERRM);',
'END;'))
,p_attribute_02=>'P493_EDITAR,P493_PROVEEDOR,P493_LINEA,P493_COMISION,P493_ADICIONAL,P493_COD_USUARIO,P493_COD_EMPRESA,P493_ESTADO'
,p_attribute_03=>'P493_ERR'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(147185692694540714)
,p_event_id=>wwv_flow_imp.id(147184997431540707)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(146851764287971110)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(147185509607540713)
,p_event_id=>wwv_flow_imp.id(147184997431540707)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(146854593776971138)
,p_server_condition_type=>'ITEM_IS_NULL'
,p_server_condition_expr1=>'P493_ERR'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(147185270774540710)
,p_name=>'DA_ERR'
,p_event_sequence=>70
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P493_ERR'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(147185359552540711)
,p_event_id=>wwv_flow_imp.id(147185270774540710)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'&P493_ERR.'
,p_attribute_03=>'information'
,p_server_condition_type=>'ITEM_IS_NOT_NULL'
,p_server_condition_expr1=>'P493_ERR'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(147185940700540717)
,p_name=>'DA_SOLO_NUM'
,p_event_sequence=>80
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P493_ADICIONAL,P493_COMISION'
,p_bind_type=>'bind'
,p_bind_event_type=>'keypress'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(147186064816540718)
,p_event_id=>wwv_flow_imp.id(147185940700540717)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if (!soloNumeros(event)){',
'      event.preventDefault();',
'}'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(147186194816540719)
,p_name=>'DA_ESTADO'
,p_event_sequence=>90
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P493_ESTADO'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(147185881085540716)
,p_event_id=>wwv_flow_imp.id(147186194816540719)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P493_ESTADO'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P493_EDITAR'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(147185764519540715)
,p_event_id=>wwv_flow_imp.id(147186194816540719)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P493_ESTADO'
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P493_EDITAR'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(146854383309971136)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'PR_CLEAR'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(146850974673971102)
,p_process_sequence=>20
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_INIT'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P493_Cod_Usuario  := :P_Cod_Usuario;',
':P493_Cod_Empresa  := :P_Cod_Empresa;',
':P493_Nom_Empresa  := :P_Nom_Empresa;',
':P493_Cod_Sucursal := :P_Cod_Sucursal;',
':P493_Nom_Sucursal := :P_Nom_Sucursal;',
':P493_Cod_Modulo   := :P_Cod_Modulo;',
''))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(148446657567975301)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_GENERAR_EXCEL'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    c_name VARCHAR2(200);',
'    l_clob clob;',
'    l_blob blob;',
'    l_sql_delimiter varchar2(30);',
'    l_lang_context  integer := DBMS_LOB.DEFAULT_LANG_CTX;',
'    l_warning       integer := DBMS_LOB.WARN_INCONVERTIBLE_CHAR;',
'    l_dest_offset   integer := 1;',
'    l_source_offset integer := 1;',
'    v_linea varchar2(32000);',
'    v_linea2 varchar2(32000);',
'    vdm$coet number;',
'    vcont number :=0;',
'begin',
'    l_clob := null;',
'    dbms_lob.createtemporary(l_blob, true);',
'',
' ',
'    -- Generate your file content here in l_clob. ',
'    c_name := ''Comision_lineas.csv'';',
'     ',
'   ',
'  for cur_filas IN (select * ',
'                        from table(CALINCOM.IMPRIMIR_COMISION_LINEAS(pCOD_EMPRESA => :P_COD_EMPRESA)))                                                                                                                                                    '
||'      ',
'    loop      ',
'        v_linea :=  cur_filas.column_value;',
'        l_clob := l_clob||v_linea||Chr(13)||Chr(10);',
'        vcont:=vcont+1;',
'    end loop;',
'    vcont:= vcont-2;',
'',
'    sys.htp.init;',
'    sys.owa_util.mime_header( ''application/octet-stream'', FALSE,''UTF-8'' );',
'    sys.htp.p(''Content-length: '' || sys.dbms_lob.getlength( l_clob ));',
'    sys.htp.p(''Content-Disposition: inline; filename="''||c_name||''"'' );',
'    sys.owa_util.http_header_close;',
' ',
'    dbms_lob.converttoblob (',
'        dest_lob    => l_blob,',
'        src_clob    => l_clob,',
'        amount      => DBMS_LOB.LOBMAXSIZE,',
'        dest_offset => l_dest_offset,',
'        src_offset  => l_source_offset,',
'        blob_csid   => DBMS_LOB.DEFAULT_CSID,',
'        lang_context=> l_lang_context,',
'        warning     => l_warning',
'    );',
' ',
'    sys.wpg_docload.download_file(l_blob);',
'    apex_application.stop_apex_engine;',
'exception when others then',
'    sys.htp.prn(''error: ''||sqlerrm);',
'    apex_application.stop_apex_engine;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(146851910077971112)
);
wwv_flow_imp.component_end;
end;
/
