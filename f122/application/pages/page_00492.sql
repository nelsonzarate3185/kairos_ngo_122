prompt --application/pages/page_00492
begin
--   Manifest
--     PAGE: 00492
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
 p_id=>492
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>unistr('Mantenimiento de Equivalencia entre Art\00EDculos - STEQUART')
,p_alias=>unistr('MANTENIMIENTO-DE-EQUIVALENCIA-ENTRE-ART\00CDCULOS-STEQUART')
,p_step_title=>unistr('Mantenimiento de Equivalencia entre Art\00EDculos - STEQUART')
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function soloNumeros(e){',
'  var key = e.charCode;',
'    return key >= 48 && key <= 57 || key == 44;',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_last_updated_by=>'INV'
,p_last_upd_yyyymmddhh24miss=>'20230510090849'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(145832213357186010)
,p_plug_name=>'Main'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>1110
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(145832380219186011)
,p_plug_name=>'Report'
,p_parent_plug_id=>wwv_flow_imp.id(145832213357186010)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT COD_ARTICULO,',
'       COD_ARTICULO_EQUI,',
'       NRO_PARTE,',
'       VALOR,',
'       FEC_INGRESO,',
'       APEX_ITEM.CHECKBOX (p_idx  => 1 ,',
'                    p_value       => ROWID,',
'                    p_attributes  => (case ES_MUTUO',
'                                       when ''S'' then ''checked ''',
'                                      else null',
'                                       end ) ||'' disabled'' )as ES_MUTUO,',
'       ROWID,',
'       NULL EDITAR,',
'       NULL ELIMINAR',
'FROM ST_EQUIVALENCIA_ART',
'WHERE cod_empresa= :P492_COD_EMPRESA ;',
''))
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
 p_id=>wwv_flow_imp.id(145834428688186032)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_finder_drop_down=>'N'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'AIBANEZ'
,p_internal_uid=>145834428688186032
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(145834554260186033)
,p_db_column_name=>'COD_ARTICULO'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Producto'
,p_column_link=>'javascript:$s(''P492_DETALLE'',''#ROWID#'');'
,p_column_linktext=>'#COD_ARTICULO#'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(145834695418186034)
,p_db_column_name=>'COD_ARTICULO_EQUI'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Repuesto'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(145834736858186035)
,p_db_column_name=>'NRO_PARTE'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>unistr('N\00FAmero en Parte')
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(145834821986186036)
,p_db_column_name=>'VALOR'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Porcentaje en Prod/Rep'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(145834907163186037)
,p_db_column_name=>'FEC_INGRESO'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Ingreso'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(145835021366186038)
,p_db_column_name=>'ES_MUTUO'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Mutuo'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(145835137301186039)
,p_db_column_name=>'ROWID'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Rowid'
,p_column_type=>'OTHER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(145835293159186040)
,p_db_column_name=>'EDITAR'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'&nbsp'
,p_column_link=>'javascript:$s(''P492_EDITAR'',''#ROWID#'');'
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
 p_id=>wwv_flow_imp.id(145835383573186041)
,p_db_column_name=>'ELIMINAR'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'&nbsp'
,p_column_link=>'javascript:$s(''P492_ELIMINAR'',''#ROWID#'');'
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
 p_id=>wwv_flow_imp.id(145965292153019276)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1459653'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>10
,p_report_columns=>'EDITAR:COD_ARTICULO:COD_ARTICULO_EQUI:NRO_PARTE:VALOR:FEC_INGRESO:ES_MUTUO:ELIMINAR:'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(145832565863186013)
,p_plug_name=>'Info Desc'
,p_parent_plug_id=>wwv_flow_imp.id(145832213357186010)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--noBorder:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>20
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(145833076030186018)
,p_plug_name=>'Info Stock'
,p_parent_plug_id=>wwv_flow_imp.id(145832213357186010)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--noBorder:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>40
,p_plug_new_grid_row=>false
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(146009548938647805)
,p_plug_name=>'Editar/Agregar'
,p_region_template_options=>'#DEFAULT#:js-dialog-size600x400'
,p_plug_template=>wwv_flow_imp.id(40117728043263659)
,p_plug_display_sequence=>1120
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(146009772310647807)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(146009548938647805)
,p_button_name=>'BT_CANCELAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_image_alt=>'Cancelar'
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(146009604265647806)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(146009548938647805)
,p_button_name=>'BT_GUARDAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>' Guardar'
,p_button_position=>'CREATE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(146009218594647802)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(145832380219186011)
,p_button_name=>'BT_AGREGAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--iconRight:t-Button--hoverIconPush'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>' Agregar'
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
 p_id=>wwv_flow_imp.id(145831506026186003)
,p_name=>'P492_COD_USUARIO'
,p_item_sequence=>990
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(145831676851186004)
,p_name=>'P492_COD_EMPRESA'
,p_item_sequence=>1000
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(145831734525186005)
,p_name=>'P492_NOM_EMPRESA'
,p_item_sequence=>1010
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(145831831909186006)
,p_name=>'P492_COD_SUCURSAL'
,p_item_sequence=>1020
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(145831910543186007)
,p_name=>'P492_NOM_SUCURSAL'
,p_item_sequence=>1030
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(145832060053186008)
,p_name=>'P492_COD_MODULO'
,p_item_sequence=>1040
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(145832689956186014)
,p_name=>'P492_DESC_ARTICULO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(145832565863186013)
,p_prompt=>unistr('Art\00EDculo Original')
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
 p_id=>wwv_flow_imp.id(145832786323186015)
,p_name=>'P492_DESC_ARTICULO_EQUI'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(145832565863186013)
,p_prompt=>unistr('Art\00EDculo Equivalente')
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
 p_id=>wwv_flow_imp.id(145832896254186016)
,p_name=>'P492_IND_DISCONTINUADO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(145833076030186018)
,p_prompt=>'Stock'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_read_only_when_type=>'ALWAYS'
,p_field_template=>wwv_flow_imp.id(40186463825263678)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--xlarge:margin-top-md'
,p_attribute_01=>'N'
,p_attribute_02=>'S'
,p_attribute_03=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(145832996897186017)
,p_name=>'P492_IND_DISCONTINUADO_EQUI'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(145833076030186018)
,p_prompt=>'Stock'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_read_only_when_type=>'ALWAYS'
,p_field_template=>wwv_flow_imp.id(40186463825263678)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--xlarge:margin-top-sm:margin-bottom-sm'
,p_attribute_01=>'N'
,p_attribute_02=>'S'
,p_attribute_03=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(145833219749186020)
,p_name=>'P492_COD_USUARIO_INFO'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(145833076030186018)
,p_prompt=>' Usuario'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_begin_on_new_line=>'N'
,p_begin_on_new_field=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(145835586763186043)
,p_name=>'P492_EDITAR'
,p_item_sequence=>1070
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(145835687253186044)
,p_name=>'P492_DETALLE'
,p_item_sequence=>1090
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(145835734007186045)
,p_name=>'P492_ELIMINAR'
,p_item_sequence=>1100
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(145836037279186048)
,p_name=>'P492_AUX_COD_ARTICULO'
,p_item_sequence=>1050
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(145836116267186049)
,p_name=>'P492_AUX_COD_ARTICULO_EQUI'
,p_item_sequence=>1060
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(146010011821647810)
,p_name=>'P492_COD_ARTICULO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(146009548938647805)
,p_prompt=>'Producto'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select cod_articulo||'' - ''||descripcion D,',
'       cod_articulo R',
'from st_articulos ',
'where cod_empresa = :p492_cod_empresa ',
'order by descripcion'))
,p_lov_display_null=>'YES'
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
 p_id=>wwv_flow_imp.id(146010122560647811)
,p_name=>'P492_NRO_PARTE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(146009548938647805)
,p_prompt=>'Numero en Parte'
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
 p_id=>wwv_flow_imp.id(146010232067647812)
,p_name=>'P492_COD_ARTICULO_EQUI'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(146009548938647805)
,p_prompt=>'Repuesto'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select cod_articulo ||'' - ''||descripcion D,',
'       cod_articulo R',
'from st_articulos ',
'where cod_empresa = :p492_cod_empresa ',
'order by descripcion'))
,p_lov_display_null=>'YES'
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
 p_id=>wwv_flow_imp.id(146010375500647813)
,p_name=>'P492_VALOR'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(146009548938647805)
,p_prompt=>'Porcentaje en Prod/Rep'
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
 p_id=>wwv_flow_imp.id(146012187249647831)
,p_name=>'P492_ERR'
,p_item_sequence=>1080
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(145835863136186046)
,p_name=>'DA_DETALLE'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P492_DETALLE'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(145836269234186050)
,p_event_id=>wwv_flow_imp.id(145835863136186046)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    SELECT COD_ARTICULO,',
'           COD_ARTICULO_EQUI',
'    INTO :P492_AUX_COD_ARTICULO,',
'         :P492_AUX_COD_ARTICULO_EQUI',
'    FROM ST_EQUIVALENCIA_ART ',
'    WHERE ROWID = :P492_DETALLE;',
'',
'',
'    EXCEPTION',
'        WHEN OTHERS THEN',
'           APEX_DEBUG.ERROR(''Error Auxiliares: ''||sqlerrm);',
'END;'))
,p_attribute_02=>'P492_DETALLE'
,p_attribute_03=>'P492_AUX_COD_ARTICULO,P492_AUX_COD_ARTICULO_EQUI'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(145835967084186047)
,p_event_id=>wwv_flow_imp.id(145835863136186046)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    IF :P492_AUX_COD_ARTICULO is not null',
'    AND :P492_AUX_COD_ARTICULO_EQUI is not null then',
'',
'        select descripcion, NVL(IND_DISCONTINUADO,''N'')',
'        into :P492_DESC_ARTICULO, :P492_IND_DISCONTINUADO',
'        from st_articulos',
'        where cod_empresa = :P492_COD_EMPRESA',
'        and cod_articulo = :P492_AUX_COD_ARTICULO;',
'',
'        select descripcion, NVL(IND_DISCONTINUADO,''N'')',
'        into :P492_DESC_ARTICULO_EQUI,  ',
'             :P492_IND_DISCONTINUADO_EQUI',
'        from st_articulos',
'        where cod_empresa = :P492_COD_EMPRESA',
'        and cod_articulo = :P492_AUX_COD_ARTICULO_EQUI;',
'',
'        select cod_usuario ',
'        into :P492_COD_USUARIO_INFO',
'        from ST_EQUIVALENCIA_ART ',
'        where cod_empresa = :P492_COD_EMPRESA',
'        and rowid = :P492_DETALLE;',
'    ELSE',
'       NULL;',
'    END IF;',
'',
'    EXCEPTION',
'        WHEN OTHERS THEN',
'                APEX_DEBUG.ERROR(''Error en el detalle: ''||sqlerrm);',
'END;'))
,p_attribute_02=>'P492_DETALLE,P492_AUX_COD_ARTICULO,P492_AUX_COD_ARTICULO_EQUI'
,p_attribute_03=>'P492_DESC_ARTICULO,P492_DESC_ARTICULO_EQUI,P492_IND_DISCONTINUADO,P492_IND_DISCONTINUADO_EQUI,P492_COD_USUARIO_INFO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(146009176906647801)
,p_event_id=>wwv_flow_imp.id(145835863136186046)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(145832380219186011)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(146009371682647803)
,p_name=>'DA_ELIMINAR'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P492_ELIMINAR'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(146009467932647804)
,p_event_id=>wwv_flow_imp.id(146009371682647803)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>unistr('\00BFDesea eliminar la equivalencia?')
,p_attribute_03=>'warning'
,p_attribute_04=>'fa-trash-o'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(146011247908647822)
,p_event_id=>wwv_flow_imp.id(146009371682647803)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    DELETE ST_EQUIVALENCIA_ART',
'    WHERE ROWID = :P492_ELIMINAR;',
'',
'',
'    EXCEPTION',
'        WHEN OTHERS THEN',
'            apex_debug.error(''No se pudo eliminar ''||sqlerrm);',
'END;'))
,p_attribute_02=>'P492_ELIMINAR'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(146011300868647823)
,p_event_id=>wwv_flow_imp.id(146009371682647803)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(145832380219186011)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(146009867270647808)
,p_name=>'DA_CERRAR'
,p_event_sequence=>30
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(146009772310647807)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(146009970646647809)
,p_event_id=>wwv_flow_imp.id(146009867270647808)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CLOSE'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(146010457232647814)
,p_name=>'DA_EDITAR'
,p_event_sequence=>40
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P492_EDITAR'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(146011065875647820)
,p_event_id=>wwv_flow_imp.id(146010457232647814)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'       ',
'     SELECT COD_ARTICULO,',
'            COD_ARTICULO_EQUI,',
'            NRO_PARTE, ',
'            VALOR',
'     INTO :P492_COD_ARTICULO,',
'          :P492_COD_ARTICULO_EQUI,',
'          :P492_NRO_PARTE,',
'          :P492_VALOR',
'     FROM ST_EQUIVALENCIA_ART',
'     WHERE ROWID = :P492_EDITAR;',
'',
'    EXCEPTION',
'        WHEN OTHERS THEN',
'                apex_debug.error(sqlerrm);',
'END;'))
,p_attribute_02=>'P492_EDITAR'
,p_attribute_03=>'P492_COD_ARTICULO,P492_COD_ARTICULO_EQUI,P492_NRO_PARTE,P492_VALOR'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(146010598896647815)
,p_event_id=>wwv_flow_imp.id(146010457232647814)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(146009548938647805)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(146010691031647816)
,p_name=>'DA_AGREGAR'
,p_event_sequence=>50
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(146009218594647802)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(146011162982647821)
,p_event_id=>wwv_flow_imp.id(146010691031647816)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P492_COD_ARTICULO,P492_COD_ARTICULO_EQUI,P492_NRO_PARTE,P492_VALOR,P492_EDITAR'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(146010730428647817)
,p_event_id=>wwv_flow_imp.id(146010691031647816)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(146009548938647805)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(146011468195647824)
,p_name=>'DA_SOLO_NUMEROS'
,p_event_sequence=>60
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P492_VALOR'
,p_bind_type=>'bind'
,p_bind_event_type=>'keypress'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(146011567303647825)
,p_event_id=>wwv_flow_imp.id(146011468195647824)
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
 p_id=>wwv_flow_imp.id(146011768952647827)
,p_name=>'DA_GUARDAR'
,p_event_sequence=>70
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(146009604265647806)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(146011619795647826)
,p_event_id=>wwv_flow_imp.id(146011768952647827)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE ',
'',
'VMUTUO VARCHAR2(1);',
'BEGIN',
'        VMUTUO := ''N'';',
'        :P492_ERR := NULL;',
'    IF :P492_EDITAR is null then',
'           INSERT INTO ST_EQUIVALENCIA_ART(',
'                        COD_EMPRESA,',
'                        COD_ARTICULO,',
'                        COD_ARTICULO_EQUI,	',
'                        FEC_INGRESO,	',
'                        ES_MUTUO,',
'                        COD_USUARIO,',
'                        VALOR,	',
'                        NRO_PARTE	',
'           ) VALUES ( ',
'                   :P492_COD_EMPRESA, ',
'                   :P492_COD_ARTICULO,',
'                   :P492_COD_ARTICULO_EQUI,',
'                    SYSDATE,',
'                    VMUTUO,',
'                   :APP_USER,',
'                   :P492_VALOR,',
'                   :P492_NRO_PARTE',
'            );',
'',
'    ELSE ',
'       ',
'       UPDATE ST_EQUIVALENCIA_ART',
'       SET COD_EMPRESA = :P492_COD_EMPRESA ,',
'           COD_ARTICULO = :P492_COD_ARTICULO ,',
'           COD_ARTICULO_EQUI = :P492_COD_ARTICULO_EQUI ,	',
'           ES_MUTUO = VMUTUO,',
'           COD_USUARIO = :APP_USER,',
'           VALOR = :P492_VALOR ,	',
'           NRO_PARTE = :P492_NRO_PARTE',
'        WHERE ROWID = :P492_EDITAR; 	',
'',
'    END IF;',
'    CASE',
'        WHEN :P492_COD_ARTICULO is null then :P492_ERR := ''Seleccione un producto'';',
'        WHEN :P492_COD_ARTICULO_EQUI is null then :P492_ERR := ''Seleccione un repuesto'';',
'        ELSE NULL;',
'    END CASE;',
'    EXCEPTION',
'        WHEN OTHERS THEN',
'                ',
'                apex_debug.error(''Error al guardar ''||sqlerrm);',
'END;'))
,p_attribute_02=>'P492_EDITAR,P492_COD_ARTICULO,P492_COD_ARTICULO_EQUI,P492_NRO_PARTE,P492_COD_USUARIO,P492_VALOR'
,p_attribute_03=>'P492_ERR,P492_COD_ARTICULO,P492_COD_ARTICULO_EQUI,P492_NRO_PARTE,P492_COD_USUARIO,P492_VALOR'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(146011916480647829)
,p_event_id=>wwv_flow_imp.id(146011768952647827)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(145832380219186011)
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P492_ERR'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(146011835805647828)
,p_event_id=>wwv_flow_imp.id(146011768952647827)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(146009548938647805)
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P492_ERR'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(146012217587647832)
,p_name=>'DA_ERROR'
,p_event_sequence=>80
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P492_ERR'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(146012305541647833)
,p_event_id=>wwv_flow_imp.id(146012217587647832)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'&P492_ERR.'
,p_attribute_03=>'information'
,p_attribute_04=>'fa-info-square-o'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P492_ERR'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(146850830983971101)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'PR_CLEAR'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(145831425199186002)
,p_process_sequence=>20
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_INIT'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P492_Cod_Usuario  := :P_Cod_Usuario;',
':P492_Cod_Empresa  := :P_Cod_Empresa;',
':P492_Nom_Empresa  := :P_Nom_Empresa;',
':P492_Cod_Sucursal := :P_Cod_Sucursal;',
':P492_Nom_Sucursal := :P_Nom_Sucursal;',
':P492_Cod_Modulo   := :P_Cod_Modulo;'))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_imp.component_end;
end;
/
