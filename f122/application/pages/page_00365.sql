prompt --application/pages/page_00365
begin
--   Manifest
--     PAGE: 00365
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
 p_id=>365
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'Solicitud de Carneo'
,p_alias=>'SOLICITUD-DE-CARNEO'
,p_step_title=>'Solicitud de Carneo'
,p_allow_duplicate_submissions=>'N'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_javascript_file_urls=>'#APP_FILES#util_generico#MIN#.js'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'///solo_numeros();',
'///formatMiles(''P345_COSTO'');',
'',
'',
'function seleccionar(cb) {',
'    ////console.log(cb.value);     console.log(cb.checked);',
'',
'',
'  if (cb.checked == true){',
'    console.log("block" + cb.value);',
'      $s(''P345_VALOR_CHK'',''S'');',
'      $s(''P345_ID_CHK'', cb.value,false);',
'  } else {',
'      $s(''P345_VALOR_CHK'',''N'');',
'      $s(''P345_ID_CHK'', cb.value,false);',
'  }',
'}',
'',
' ',
'  function  estado_css()',
'{',
'      $(''td[headers="porcentaje"]'').each(function() {            ',
'           ',
'                if ( parseInt($(this).text()) >= 20 ) { ',
'                    $(this).css({"background-color":"	#FF8C00","color":"red","font-weight":"bold"}); ',
'                }     ',
'                ',
'        });',
'        ',
'}'))
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
' ',
'  .a-IRR-header  a , .a-IRR-headerLabel{color: yellow; }',
' .a-IRR-header {    background: #003a85!important;}',
'',
'',
'.t-Body-mainContent  { ',
'    background: #082b642f!important;',
'} ',
'  ',
'  .t-Form-label{',
'    color:  darkblue !important;     ',
'    } ',
'',
'   .t-Form-fieldContainer:not(.js-show-label, .is-active ) .t-Form-labelContainer .t-Form-label {   ',
'    margin-top: -8px ;  ',
'    }',
'',
'    ',
'    .js-show-label .t-Form-labelContainer .t-Form-label {    ',
'    font-weight: bold;',
'    } ',
'    .rechazado{background: #e28585 !important;}     ',
'    .creado{ background: #fffab3 !important;}',
'    .carneo{background: #48b8ad !important;}',
'    .autorizado{ background: #bfffb5!important;}    ',
'    .finalizado{background: #b3d5ff !important;}',
' '))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_last_updated_by=>'JUANSA'
,p_last_upd_yyyymmddhh24miss=>'20240729103916'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(108425967249087822)
,p_plug_name=>'Agregar Repuesto al Detalle'
,p_region_template_options=>'#DEFAULT#:js-dialog-size600x400'
,p_plug_template=>wwv_flow_imp.id(40117728043263659)
,p_plug_display_sequence=>1010
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(200038351005910027)
,p_plug_name=>'Solicitud de Carneo'
,p_region_name=>'gral'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--accent1:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>990
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(200038141506910025)
,p_plug_name=>'Cabecera'
,p_parent_plug_id=>wwv_flow_imp.id(200038351005910027)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--accent13:t-Region--scrollBody:margin-bottom-sm'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(200038303232910026)
,p_plug_name=>'detalle'
,p_parent_plug_id=>wwv_flow_imp.id(200038141506910025)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>170
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT  C001 COD_ARTICULO',
'       ,C002 DESCRIPCION  ',
'       ,N001 CANTIDAD   ',
'       ,N002 COSTO   ',
'       ,N003 PRECIO   ',
'       ,N004 PORCENTAJE  ',
'       , NULL ELIMINAR',
'       ,SEQ_ID ',
'FROM APEX_COLLECTIONS  ',
'WHERE COLLECTION_NAME = ''STPEDCARDET''  ',
' ',
'UNION ALL ',
'SELECT NULL COD_ARTICULO ',
'       ,NULL DESCRIPCION  ',
'       ,NULL CANTIDAD  ',
'       ,NULL COSTO   ',
'       ,NULL PRECIO  ',
'       ,NULL PORCENTAJE',
'       ,null ELIMINAR',
'       ,NULL SEQ_ID ',
'FROM DUAL '))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'detalle'
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
 p_id=>wwv_flow_imp.id(209230253314618559)
,p_max_row_count=>'1000000'
,p_no_data_found_message=>'SIN DETALLES'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_search_textbox=>'N'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_rows_per_page=>'N'
,p_show_control_break=>'N'
,p_show_computation=>'N'
,p_show_aggregate=>'N'
,p_show_pivot=>'N'
,p_show_flashback=>'N'
,p_show_reset=>'N'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'JUANSA'
,p_internal_uid=>209230253314618559
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(106259073518472337)
,p_db_column_name=>'COD_ARTICULO'
,p_display_order=>30
,p_column_identifier=>'B'
,p_column_label=>unistr('C\00F3digo')
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_allow_hide=>'N'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(106259494120472337)
,p_db_column_name=>'DESCRIPCION'
,p_display_order=>40
,p_column_identifier=>'C'
,p_column_label=>unistr('Descripci\00F3n de Repuesto')
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_allow_hide=>'N'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(106259803079472338)
,p_db_column_name=>'COSTO'
,p_display_order=>50
,p_column_identifier=>'D'
,p_column_label=>'Costo'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_allow_hide=>'N'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(106260237985472338)
,p_db_column_name=>'PRECIO'
,p_display_order=>60
,p_column_identifier=>'E'
,p_column_label=>'Precio'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_allow_hide=>'N'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(106264505475472340)
,p_db_column_name=>'PORCENTAJE'
,p_display_order=>70
,p_column_identifier=>'Q'
,p_column_label=>'% Costo/Producto'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_allow_hide=>'N'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_format_mask=>'990D90'
,p_static_id=>'porcentaje'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(106264127457472340)
,p_db_column_name=>'SEQ_ID'
,p_display_order=>160
,p_column_identifier=>'O'
,p_column_label=>'Seq Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(106976783450363839)
,p_db_column_name=>'CANTIDAD'
,p_display_order=>170
,p_column_identifier=>'S'
,p_column_label=>'Cantidad'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(106976862532363840)
,p_db_column_name=>'ELIMINAR'
,p_display_order=>180
,p_column_identifier=>'T'
,p_column_label=>'Eliminar'
,p_column_link=>'javascript:$s(''P365_COD_ELIMINAR'',''#SEQ_ID#'');'
,p_column_linktext=>'<span class="fa fa-trash" aria-hidden="true"></span>'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_allow_hide=>'N'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_display_condition_type=>'FUNCTION_BODY'
,p_display_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  IF :P365_NRO IS NOT NULL THEN',
'  ',
'            declare',
'                dummy varchar2(3);',
'            begin',
'                select distinct ''1''',
'                into dummy ',
'                from st_pedido_carneo',
'                where cod_empresa= :P_COD_EMPRESA',
'                  and nro_comprobante= :P365_NRO',
'                  and ser_comprobante=''A''',
'                  and tip_comprobante=''PCA''',
'                  and estado in (''CREADO'');',
'',
'                RETURN TRUE;',
'            exception',
'                when otherS then',
'                    return false;',
'            end;',
'ELSE',
'    RETURN TRUE;',
'END IF;'))
,p_display_condition2=>'PLSQL'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(211465529839177446)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1052185'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'COD_ARTICULO:DESCRIPCION:COSTO:PRECIO:PORCENTAJE:CANTIDAD:ELIMINAR:'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(108426275433087825)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(108425967249087822)
,p_button_name=>'agregar_all'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_image_alt=>'Agregar Todos'
,p_button_position=>'BELOW_BOX'
,p_button_alignment=>'LEFT'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(108426143321087824)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(108425967249087822)
,p_button_name=>'Agregar'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_image_alt=>'Agregar'
,p_button_position=>'BELOW_BOX'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(106977289838363844)
,p_button_sequence=>100
,p_button_plug_id=>wwv_flow_imp.id(200038141506910025)
,p_button_name=>'RECHAZAR'
,p_button_static_id=>'rechazar'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight:t-Button--padLeft:t-Button--gapTop'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Rechazar'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'u-color-18-bg u-color-43-text'
,p_icon_css_classes=>'fa-thumbs-down'
,p_grid_new_row=>'N'
,p_grid_column=>10
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(106977127279363843)
,p_button_sequence=>110
,p_button_plug_id=>wwv_flow_imp.id(200038141506910025)
,p_button_name=>'AUTORIZAR'
,p_button_static_id=>'autorizar'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight:t-Button--gapTop'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Autorizar'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'u-color-17-bg u-color-43-text'
,p_icon_css_classes=>'fa-thumbs-up'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(106265674006472342)
,p_button_sequence=>120
,p_button_plug_id=>wwv_flow_imp.id(200038141506910025)
,p_button_name=>'PROCESAR'
,p_button_static_id=>'generar'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight:t-Button--gapTop'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'PROCESAR'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'u-color-21-text'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(106250428680472329)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(200038351005910027)
,p_button_name=>'Nuevo'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight:t-Button--padLeft:t-Button--padRight'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Nuevo'
,p_button_position=>'EDIT'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'u-color-21-bg u-color-43-text'
,p_icon_css_classes=>'fa-table-plus'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(106249237142472328)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(200038351005910027)
,p_button_name=>'GUARDAR'
,p_button_static_id=>'guardar'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight:t-Button--padLeft:t-Button--padRight'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Guardar'
,p_button_position=>'EDIT'
,p_button_css_classes=>'u-color-21-bg u-color-43-text'
,p_icon_css_classes=>'fa-save'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(106250077431472329)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(200038351005910027)
,p_button_name=>'buscar'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--hoverIconPush:t-Button--gapRight'
,p_button_template_id=>wwv_flow_imp.id(40187078917263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Buscar'
,p_button_position=>'LEFT_OF_TITLE'
,p_button_redirect_url=>'f?p=&APP_ID.:364:&SESSION.::&DEBUG.:CR,364::'
,p_button_css_classes=>'u-info-bg'
,p_icon_css_classes=>'fa-search'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(108425566439087818)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(200038303232910026)
,p_button_name=>'add_repuestos'
,p_button_static_id=>'add_rep'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_image_alt=>'Agregar Repuestos'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'u-color-21-bg'
,p_icon_css_classes=>'fa-plus-circle-o'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(136457857503824202)
,p_branch_name=>'Go To Page 365'
,p_branch_action=>'f?p=&APP_ID.:365:&SESSION.::&DEBUG.:CR,365:P365_P_NRO:&P365_P_NRO.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(106249237142472328)
,p_branch_sequence=>10
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(106251246061472331)
,p_name=>'P365_P_NRO'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(200038351005910027)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(106251641545472331)
,p_name=>'P365_COD_ELIMINAR'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(200038351005910027)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(106252793776472332)
,p_name=>'P365_NRO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(200038141506910025)
,p_prompt=>unistr('N\00BA Solicitud')
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_colspan=>1
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(106253106577472332)
,p_name=>'P365_COD_ARTICULO'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(200038141506910025)
,p_prompt=>unistr('C\00F3digo Articulo')
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_ARTICULO_STFICHATEC'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select descripcion ||'' '' ||cod_articulo ||'' '' ||cod_art_corto descripcion, cod_articulo,cod_art_corto ',
'from st_articulos ',
'where cod_empresa = :P_COD_EMPRESA',
'AND COD_RUBRO=''PR''',
'order by decode(nvl(estado,''A''),''A'',1,2), descripcion'))
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'Y'
,p_attribute_05=>'N'
,p_attribute_08=>'700'
,p_attribute_09=>'500'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(106253513472472333)
,p_name=>'P365_COD_CORTO'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(200038141506910025)
,p_prompt=>'Cod. Corto'
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
 p_id=>wwv_flow_imp.id(106253991486472333)
,p_name=>'P365_DESCRIPCION'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(200038141506910025)
,p_prompt=>unistr('Descripci\00F3n del Art\00EDculo')
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
 p_id=>wwv_flow_imp.id(106254340123472333)
,p_name=>'P365_ESTADO'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(200038141506910025)
,p_prompt=>'Estado'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:CREADO;CREADO,AUTORIZADO;AUTORIZADO,RECHAZADO;RECHAZADO,CARNEADO;CARNEADO,FINALIZADO;FINALIZADO'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(106254716851472333)
,p_name=>'P365_DESTINO'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(200038141506910025)
,p_prompt=>'Operacion'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:CARNEO;CARNEO,DESPIECE;DESPIECE'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(106255133407472333)
,p_name=>'P365_GARANTIA'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(200038141506910025)
,p_prompt=>'Nro Garantia'
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
 p_id=>wwv_flow_imp.id(106255542479472333)
,p_name=>'P365_SERIE'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(200038141506910025)
,p_prompt=>'Serie'
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
 p_id=>wwv_flow_imp.id(106255945007472333)
,p_name=>'P365_FICHA'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(200038141506910025)
,p_prompt=>unistr('N\00BA Ficha T\00E9cnica')
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_ART_FICHATEC'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select f.nro_ficha,',
'       f.destino,',
'       f.cod_articulo,',
'       a.descripcion,',
'       f.nro_garantia',
'from st_ficha_tecnica f,',
'     st_articulos a',
'where f.estado in (''6'',''2'',''3'')',
'and   f.cod_empresa=:p_cod_empresa',
'and   f.cod_empresa=a.cod_empresa',
'and   f.cod_articulo=a.cod_articulo',
';'))
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'Y'
,p_attribute_05=>'N'
,p_attribute_08=>'700'
,p_attribute_09=>'500'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(106256311262472334)
,p_name=>'P365_FECHA'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_imp.id(200038141506910025)
,p_prompt=>'Fecha Solicita'
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
 p_id=>wwv_flow_imp.id(106256759036472334)
,p_name=>'P365_NRO_ENVIO'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_imp.id(200038141506910025)
,p_prompt=>'Nro Envio'
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
 p_id=>wwv_flow_imp.id(106257147119472334)
,p_name=>'P365_SER_OT'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_imp.id(200038141506910025)
,p_prompt=>'Serie OT'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>2
,p_tag_css_classes=>'js-show-label'
,p_colspan=>1
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
,p_attribute_06=>'UPPER'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(106257520857472334)
,p_name=>'P365_NRO_OT'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_imp.id(200038141506910025)
,p_prompt=>unistr('N\00BA Orden de Trabajo')
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>15
,p_tag_css_classes=>'js-show-label'
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
 p_id=>wwv_flow_imp.id(106257999391472334)
,p_name=>'P365_USUARIO'
,p_item_sequence=>220
,p_item_plug_id=>wwv_flow_imp.id(200038141506910025)
,p_prompt=>'Solicitado por'
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
 p_id=>wwv_flow_imp.id(106976434359363836)
,p_name=>'P365_AUTORIZA'
,p_item_sequence=>230
,p_item_plug_id=>wwv_flow_imp.id(200038141506910025)
,p_prompt=>'Autorizado por'
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
 p_id=>wwv_flow_imp.id(106976511199363837)
,p_name=>'P365_FECHA_AUTORIZA'
,p_item_sequence=>240
,p_item_plug_id=>wwv_flow_imp.id(200038141506910025)
,p_prompt=>'Fecha Autoriza'
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
 p_id=>wwv_flow_imp.id(106976690122363838)
,p_name=>'P365_FECHA_FINALIZA'
,p_item_sequence=>250
,p_item_plug_id=>wwv_flow_imp.id(200038141506910025)
,p_prompt=>'Fecha Finaliza'
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
 p_id=>wwv_flow_imp.id(108426012849087823)
,p_name=>'P365_COD_REPUESTO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(108425967249087822)
,p_prompt=>'Codigo Repuesto'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  SELECT A.COD_ARTICULO||'' - ''|| A.DESCRIPCION nom,A.COD_ARTICULO',
'    FROM st_ficha_tecnica_DET D,',
'         ST_ARTICULOS A',
'   WHERE D.COD_EMPRESA = :P_COD_EMPRESA',
'     AND D.nro_ficha = :P365_FICHA',
'     AND D.COD_EMPRESA=A.COD_EMPRESA',
'     AND D.COD_ARTICULO=A.COD_ARTICULO',
'     ;'))
,p_lov_cascade_parent_items=>'P365_FICHA'
,p_ajax_items_to_submit=>'P365_FICHA'
,p_ajax_optimize_refresh=>'N'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#:margin-left-sm'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(108428599231087848)
,p_name=>'P365_P_FICHA'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(200038351005910027)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(118931714750854142)
,p_name=>'P365_APRUEBA_RECHAZA'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(200038351005910027)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(118931826703854143)
,p_name=>'P365_PERMISO_INS'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(200038351005910027)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(118931939837854144)
,p_name=>'P365_PERMISO_MOD'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(200038351005910027)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(118932185506854146)
,p_name=>'P365_SUC_SAL_CAR'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(200038351005910027)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(118932205745854147)
,p_name=>'P365_SUC_SAL_DES'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(200038351005910027)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(106302332217472364)
,p_name=>'DA_BLOQUEA_CAMPOS'
,p_event_sequence=>20
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(106302833585472364)
,p_event_id=>wwv_flow_imp.id(106302332217472364)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P365_NRO,P365_FICHA,P365_COD_ARTICULO,P365_DESTINO,P365_ESTADO,P365_COD_CORTO,P365_DESCRIPCION,P365_GARANTIA,P365_SERIE,P365_SER_OT,P365_NRO_OT,P365_NRO_ENVIO,P365_FECHA,P365_USUARIO,P365_AUTORIZA,P365_FECHA_FINALIZA,P365_FECHA_AUTORIZA'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(108428061403087843)
,p_event_id=>wwv_flow_imp.id(106302332217472364)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'      :P365_ESTADO:=''CREADO'';',
'if :P365_P_FICHA is null then      ',
'      APEX_COLLECTION.CREATE_OR_TRUNCATE_COLLECTION(P_COLLECTION_NAME => ''STPEDCARDET'');',
'end if;',
' ',
'',
' :P365_APRUEBA_RECHAZA := NVL(busca_permiso( :p_cod_empresa,''STPEDCAR'',:APP_USER,''APRUEBA_RECHAZA'' ),''N'') ;',
' ',
' :P365_SUC_SAL_CAR:=BS_busca_parametro(''STPEDCAR'', ''SUC_SAL_CARNEO'' );',
' :P365_SUC_SAL_DES:=BS_busca_parametro(''STPEDCAR'', ''SUC_SAL_DESPIECE'' );',
' ',
'',
'',
'',
'  :P365_PERMISO_INS   := SEGURIDAD_GRANULAR.RETORNA_PERMISO_BOTON(ppage_id     => :APP_PAGE_ID,',
'                                                         papli0100_id => :P_APLI0100_ID,',
'                                                         pcod_empresa => :P_COD_EMPRESA,',
'                                                         pusua0100_id => :P_USUA0100_ID,',
'                                                         pdm_boto     => 1); ',
'',
'',
' :P365_PERMISO_MOD  := SEGURIDAD_GRANULAR.RETORNA_PERMISO_BOTON(ppage_id     => :APP_PAGE_ID,',
'                                                         papli0100_id => :P_APLI0100_ID,',
'                                                         pcod_empresa => :P_COD_EMPRESA,',
'                                                         pusua0100_id => :P_USUA0100_ID,',
'                                                         pdm_boto     => 2); '))
,p_attribute_02=>'P365_P_FICHA,P365_ESTADO,P365_SUC_SAL_CAR,P365_SUC_SAL_DES'
,p_attribute_03=>'P365_ESTADO,P365_APRUEBA_RECHAZA,P365_SUC_SAL_CAR,P365_SUC_SAL_DES,P365_PERMISO_INS,P365_PERMISO_MOD'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(106304332480472365)
,p_event_id=>wwv_flow_imp.id(106302332217472364)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'document.getElementById("P365_NRO").readOnly=true;',
'document.getElementById("P365_ESTADO").readOnly=true;',
'document.getElementById("P365_FECHA").readOnly=true;',
'document.getElementById("P365_USUARIO").readOnly=true;',
'document.getElementById("P365_AUTORIZA").readOnly=true;',
'document.getElementById("P365_NRO_ENVIO").readOnly=true;',
'document.getElementById("P365_COD_CORTO").readOnly=true;',
'document.getElementById("P365_DESCRIPCION").readOnly=true;',
'',
'document.getElementById("P365_DESTINO").readOnly=true;',
'$(''#P365_DESTINO'').css(''pointer-events'',''none'');',
'',
'',
'document.getElementById("P365_FECHA_AUTORIZA").readOnly=false;',
'document.getElementById("P365_FECHA_FINALIZA").readOnly=false;',
'',
'document.getElementById("P365_ESTADO").classList.add("creado");',
'$(''#P365_ESTADO'').css(''pointer-events'',''none'');',
'',
' ',
'$("#P365_COD_ARTICULO_lov_btn > span").removeClass( ''icon-popup-lov'' ); ',
'$("#P365_COD_ARTICULO_lov_btn > span").addClass( ''icon-search'' );',
'',
'',
'$("#P365_FICHA_lov_btn > span").removeClass( ''icon-popup-lov'' ); ',
'$("#P365_FICHA_lov_btn > span").addClass( ''icon-search'' );',
'',
'',
'',
'document.getElementById("rechazar").disabled = true; ',
'document.getElementById("autorizar").disabled = true; ',
'document.getElementById("generar").disabled = true; ',
'document.getElementById("guardar").disabled = true; ',
'',
'',
'',
'',
'',
'',
'',
'',
'if (apex.item("P365_PERMISO_INS").getValue()==="1" || apex.item("P365_PERMISO_MOD").getValue()==="1" )',
'    { document.getElementById("guardar").disabled = false;}',
'       ',
'        '))
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
 p_id=>wwv_flow_imp.id(106303366655472364)
,p_event_id=>wwv_flow_imp.id(106302332217472364)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(200038303232910026)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(106289579381472358)
,p_name=>'da_chek_det'
,p_event_sequence=>40
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P365_ID_CHK'
,p_condition_element=>'P365_ID_CHK'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(106290550506472359)
,p_event_id=>wwv_flow_imp.id(106289579381472358)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_02=>'P365_ID_CHK,P365_P_NRO'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(106290014836472359)
,p_event_id=>wwv_flow_imp.id(106289579381472358)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
' ',
'',
'',
'apex_collection.update_member_attribute(p_collection_name=>''STFICHATECDET'',',
'                                         p_seq => :P365_ID_CHK,',
'                                         p_attr_number => ''13'',',
'                                         p_attr_value=>:P365_VALOR_CHK);'))
,p_attribute_02=>'P365_ID_CHK'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(106278930259472353)
,p_name=>'DA_CARGA_TRANSITO'
,p_event_sequence=>50
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P365_COD_ELIMINAR'
,p_condition_element=>'P365_COD_ELIMINAR'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(106280459178472353)
,p_event_id=>wwv_flow_imp.id(106278930259472353)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'Esta seguro que desea eliminar el registro?'
,p_attribute_02=>'Eliminar '
,p_attribute_04=>'fa-question'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(106280945670472354)
,p_event_id=>wwv_flow_imp.id(106278930259472353)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    vcod varchar2(30);',
'Begin',
'',
'    if :P365_NRO is not null then',
'        begin',
'                select distinct c001',
'                into vcod',
'                FROM apex_collections',
'                   WHERE collection_name = ''STPEDCARDET'' ',
'                   and   seq_id= :P365_COD_ELIMINAR',
'                         ;',
'        exception ',
'        when others then',
'               vcod:= null;',
'        end; ',
'        delete from st_pedido_carneo_det',
'        where  cod_empresa = :P_cod_empresa',
'        and     tip_comprobante = ''PCA''',
'        and     ser_comprobante =  ''A''',
'        and     nro_comprobante = :P365_NRO',
'        and     COD_ARTICULO = vcod',
'        and     vcod is not null',
'        ;',
'        ',
'        commit;',
' ',
'    end if;',
'',
'    APEX_COLLECTION.DELETE_MEMBER(p_collection_name => ''STPEDCARDET'', p_seq => :P365_COD_ELIMINAR);',
'',
'exception',
'    when others then',
'         raise_application_error(-20000, sqlerrm );',
'End;'))
,p_attribute_02=>'P365_COD_ELIMINAR,P365_NRO'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(106279437236472353)
,p_event_id=>wwv_flow_imp.id(106278930259472353)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(200038303232910026)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(106291859410472359)
,p_name=>'da_recupera_ficha'
,p_event_sequence=>100
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P365_NRO'
,p_condition_element=>'P365_NRO'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(106285240805472356)
,p_event_id=>wwv_flow_imp.id(106291859410472359)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'var spinner = apex.util.showSpinner();'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(108425772800087820)
,p_event_id=>wwv_flow_imp.id(106291859410472359)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P365_DESTINO,P365_ESTADO,P365_COD_ARTICULO,P365_FECHA,P365_GARANTIA,P365_SERIE,P365_NRO_ENVIO,P365_USUARIO,P365_COD_CORTO,P365_DESCRIPCION,P365_SER_OT,P365_NRO_OT'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(106293375947472360)
,p_event_id=>wwv_flow_imp.id(106291859410472359)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
' ',
'begin',
'',
'inv.stpedcar.recupera_solicitud(pi_solicitud => :P365_NRO,',
'                                  pi_cod_empresa => :p_cod_empresa,',
'                                  po_ficha => :P365_ficha,',
'                                  po_cod_articulo => :P365_cod_articulo,',
'                                  po_estado => :P365_estado,',
'                                  po_destino => :P365_destino,',
'                                  po_garantia => :P365_garantia,',
'                                  po_serie => :P365_serie,',
'                                  po_cod_corto => :P365_COD_CORTO,',
'                                  po_desc_art => :P365_DESCRIPCION,',
'                                  po_ser_ort => :P365_SER_OT,',
'                                  po_nro_ort => :P365_NRO_OT,',
'                                  po_nro_envio => :P365_NRO_ENVIO,',
'                                  po_usuario => :P365_USUARIO,',
'                                  po_fecha => :P365_FECHA,',
'                                  po_autoriza => :P365_AUTORIZA,',
'                                  po_fec_autoriza => :P365_FECHA_AUTORIZA,',
'                                  po_finaliza => :P365_FECHA_FINALIZA);',
'',
'exception ',
'    when others then',
'             raise_application_error(-20000, sqlerrm );',
'end;'))
,p_attribute_02=>'P365_NRO'
,p_attribute_03=>'P365_DESTINO,P365_ESTADO,P365_COD_ARTICULO,P365_FICHA,P365_FECHA,P365_GARANTIA,P365_SERIE,P365_NRO_ENVIO,P365_USUARIO,P365_COD_CORTO,P365_DESCRIPCION,P365_SER_OT,P365_NRO_OT,P365_FECHA_FINALIZA,P365_AUTORIZA,P365_FECHA_AUTORIZA'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(110800286007589421)
,p_event_id=>wwv_flow_imp.id(106291859410472359)
,p_event_result=>'FALSE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'        apex.item("P365_ESTADO").setValue("CREADO");',
'',
'    if (apex.item("P365_PERMISO_INS").getValue()==="1" || apex.item("P365_PERMISO_MOD").getValue()==="1" )',
'    { document.getElementById("guardar").disabled = false;}',
'       ',
'        '))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(106285741839472356)
,p_event_id=>wwv_flow_imp.id(106291859410472359)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$("#apex_wait_overlay").remove();',
'$(".u-Processing").remove();'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(106292385845472360)
,p_event_id=>wwv_flow_imp.id(106291859410472359)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(200038303232910026)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(106293828439472361)
,p_event_id=>wwv_flow_imp.id(106291859410472359)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
' ',
'document.getElementById("P365_ESTADO").classList.remove("cerrado");',
'document.getElementById("P365_ESTADO").classList.remove("creado");',
'document.getElementById("P365_ESTADO").classList.remove("carneo");',
'document.getElementById("P365_ESTADO").classList.remove("despiece");',
'document.getElementById("P365_ESTADO").classList.remove("finalizado");',
'',
'',
'    document.getElementById("P365_COD_ARTICULO").readOnly = true;    ',
'    document.getElementById("P365_GARANTIA").disabled = true;    ',
'    document.getElementById("P365_SERIE").disabled = true; ',
'    document.getElementById("P365_COD_ARTICULO_lov_btn").disabled = true;',
'    ',
'    document.getElementById("add_rep").disabled = true;',
'',
' ',
' ',
'',
'',
' if (apex.item("P365_NRO").getValue()!=='''')',
'{',
'    if (apex.item("P365_ESTADO").getValue()===''CREADO'')',
'    {',
'      //// document.getElementById("guardar").disabled = false;',
'        document.getElementById("P365_ESTADO").classList.add("creado");',
'        document.getElementById("add_rep").disabled = false;',
'',
'    if (apex.item("P365_PERMISO_MOD").getValue()==="1" )',
'    { document.getElementById("guardar").disabled = false;}',
'       ',
'       ',
'',
'',
'        if (apex.item("P365_APRUEBA_RECHAZA").getValue()===''S'') ',
'        {',
'            document.getElementById("rechazar").disabled = false; ',
'            document.getElementById("autorizar").disabled = false; ',
'        }',
'',
'',
'',
'    }',
'    else',
'    {        ',
'        document.getElementById("P365_FICHA").disabled = true;    ',
'        document.getElementById("P365_FICHA_lov_btn").disabled = true;',
'',
'        if (apex.item("P365_ESTADO").getValue()===''AUTORIZADO'')',
'        {',
'            document.getElementById("generar").disabled = false; ',
'            document.getElementById("P365_ESTADO").classList.add("autorizado");',
'        }',
'        else',
'        {',
'               if (apex.item("P365_ESTADO").getValue()===''RECHAZADO'')',
'                {',
'                     document.getElementById("P365_ESTADO").classList.add("rechazado");',
'                }',
'                else',
'                {',
'                     if (apex.item("P365_ESTADO").getValue()===''FINALIZADO'')',
'                        {',
'                            document.getElementById("P365_ESTADO").classList.add("finalizado");',
'                        }',
'                        else',
'                        {',
'                            document.getElementById("P365_ESTADO").classList.add("carneado");',
'                        }',
'                }',
'',
'        }',
'    }',
'} '))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(106294763246472361)
,p_name=>'da_limpiar'
,p_event_sequence=>130
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(106250428680472329)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(106295284901472362)
,p_event_id=>wwv_flow_imp.id(106294763246472361)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P365_ESTADO:=''CREADO'';',
':P365_USUARIO:=:APP_USER;',
':P365_FECHA:=SYSDATE;',
':P365_P_NRO :=null;',
':P365_P_FICHA:=null;',
':P365_NRO:=null;',
':P365_SER_OT:=null;',
':P365_NRO_OT:=null;',
':P365_DESTINO:=null;',
':P365_COD_ARTICULO:=null;',
':P365_FICHA:=null;',
':P365_FECHA:=null;',
':P365_GARANTIA:=null;',
':P365_SERIE:=null;',
':P365_NRO_ENVIO:=null;',
':P365_USUARIO:=null;',
':P365_FECHA_AUTORIZA:=null;',
':P365_FECHA_FINALIZA:=null;',
':P365_AUTORIZA:=null;',
'',
'APEX_COLLECTION.CREATE_OR_TRUNCATE_COLLECTION(P_COLLECTION_NAME => ''STPEDCARDET'');',
'APEX_COLLECTION.CREATE_OR_TRUNCATE_COLLECTION(P_COLLECTION_NAME => ''STFICHATECDET'');',
'',
'',
'',
'',
' '))
,p_attribute_02=>'P365_NRO,P365_SER_OT,P365_NRO_OT,P365_DESTINO,P365_COD_ARTICULO,P365_FICHA,P365_FECHA,P365_GARANTIA,P365_SERIE,P365_NRO_ENVIO,P365_USUARIO,P365_P_NRO,P365_P_FICHA,P365_FECHA_AUTORIZA,P365_FECHA_FINALIZA,P365_AUTORIZA'
,p_attribute_03=>'P365_ESTADO,P365_USUARIO,P365_FECHA,P365_P_NRO,P365_P_FICHA'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(106296200180472362)
,p_event_id=>wwv_flow_imp.id(106294763246472361)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'document.getElementById("P365_ESTADO").classList.remove("autorizado");',
'document.getElementById("P365_ESTADO").classList.remove("creado");',
'document.getElementById("P365_ESTADO").classList.remove("carneo");',
'document.getElementById("P365_ESTADO").classList.remove("rechazado");',
'document.getElementById("P365_ESTADO").classList.remove("finalizado");',
'',
' ',
'document.getElementById("P365_ESTADO").classList.add("creado");',
'document.getElementById("P365_FICHA").disabled = false;    ',
'document.getElementById("P365_FICHA_lov_btn").disabled = false;  ',
'document.getElementById("add_rep").disabled = false;    ',
'',
'',
'        document.getElementById("rechazar").disabled = true; ',
'        document.getElementById("autorizar").disabled = true;'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(108424293977087805)
,p_event_id=>wwv_flow_imp.id(106294763246472361)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(200038303232910026)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(106977556210363847)
,p_name=>'DA_DATOS_FICHA'
,p_event_sequence=>150
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P365_FICHA'
,p_condition_element=>'P365_FICHA'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(108425802042087821)
,p_event_id=>wwv_flow_imp.id(106977556210363847)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P365_COD_CORTO,P365_COD_ARTICULO,P365_DESCRIPCION,P365_GARANTIA,P365_SERIE,P365_SER_OT,P365_NRO_OT,P365_FECHA,P365_USUARIO'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(106977665038363848)
,p_event_id=>wwv_flow_imp.id(106977556210363847)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'        VCOSTO NUMBER;',
'BEGIN',
'     :P365_COD_CORTO:=NULL;',
'     :P365_DESCRIPCION:=NULL;     ',
'     :P365_COD_ARTICULO:=NULL;',
'     :P365_GARANTIA:=NULL;',
'     :P365_SERIE:=NULL;  ',
'    --- :P365_SER_OT:=NULL;',
'     ---:P365_NRO_OT:=NULL;  ',
'     ',
'   ',
'',
'    select cod_articulo,nro_garantia,NRO_SERIE,DESTINO , decode(nvl(COSTO,0),0,1,COSTO)',
'    INTO   :P365_COD_ARTICULO, :P365_GARANTIA, :P365_SERIE, :P365_DESTINO, VCOSTO',
'    from st_ficha_tecnica ',
'    where estado in (''6'',''2'',''3'')',
'    and   cod_empresa=:p_cod_empresa ',
'    AND   nro_ficha = :P365_FICHA',
'    ;',
'',
'      SELECT DESCRIPCION, COD_ART_CORTO ',
'     INTO :P365_DESCRIPCION,:P365_COD_CORTO ',
'     FROM ST_ARTICULOS ',
'     WHERE COD_EMPRESA   =  :P_COD_EMPRESA',
'     AND  COD_ARTICULO = :P365_COD_ARTICULO;',
'',
'     IF :P365_DESTINO=''DESPIECE''  THEN       ',
'     ',
'           inv.stpedcar.carga_detalle(pi_cod_empresa => :p_cod_empresa,',
'                                     pi_nro_ficha => :p365_ficha,',
'                                     pi_co_articulo => NULL,',
'                                     pi_nro_solicitud => NULL);',
'    ELSE',
'    ',
'      APEX_COLLECTION.CREATE_OR_TRUNCATE_COLLECTION(P_COLLECTION_NAME => ''STPEDCARDET'');',
'    END IF;',
' ',
'    inv.stfichatec.cargar_detalle_solicitud(pi_costo => VCOSTO,',
'                                              pi_cod_empresa => :p_cod_empresa);',
'EXCEPTION',
'WHEN OTHERS THEN',
'    raise_application_error(-20000, ''Error:'' || sqlerrm );',
'',
'END ;'))
,p_attribute_02=>'P365_FICHA,P365_COD_ARTICULO,P365_COD_CORTO,P365_DESCRIPCION,P365_GARANTIA,P365_SERIE,P365_DESTINO'
,p_attribute_03=>'P365_COD_ARTICULO,P365_COD_CORTO,P365_DESCRIPCION,P365_GARANTIA,P365_SERIE,P365_DESTINO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(108428670615087849)
,p_event_id=>wwv_flow_imp.id(106977556210363847)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(200038303232910026)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(106284727229472356)
,p_name=>'DA_CARGA_DETALLE'
,p_event_sequence=>160
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P365_COD_ARTICULO'
,p_condition_element=>'P365_NRO'
,p_triggering_condition_type=>'NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
,p_display_when_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(106286291364472357)
,p_event_id=>wwv_flow_imp.id(106284727229472356)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin ',
'    ',
'     :P365_COD_CORTO:=NULL;',
'     :P365_DESCRIPCION:=NULL;      ',
'     :P365_GARANTIA:=NULL;',
'     :P365_SERIE:=NULL;   ',
'      APEX_COLLECTION.CREATE_OR_TRUNCATE_COLLECTION(P_COLLECTION_NAME => ''STPEDCARDET'');',
'',
'    IF :P365_COD_ARTICULO IS NOT NULL THEN',
'            BEGIN',
'               SELECT DESCRIPCION, COD_ART_CORTO ',
'                 INTO :P365_DESCRIPCION,:P365_COD_CORTO ',
'                 FROM ST_ARTICULOS ',
'                 WHERE COD_EMPRESA   =  :P_COD_EMPRESA',
'                 AND  COD_ARTICULO = :P365_COD_ARTICULO;',
'            EXCEPTION',
'                WHEN OTHERS THEN    ',
'                    :P365_DESCRIPCION :=null;',
'                    :P365_COD_CORTO :=null;     ',
'                       ',
'            END;',
'    ',
'    END IF;',
'exception',
'when others then',
'    ',
'        RAISE_APPLICATION_ERROR(-20000,SQLERRM);',
'end;'))
,p_attribute_02=>'P365_COD_ARTICULO,P365_FICHA'
,p_attribute_03=>'P365_COD_CORTO,P365_DESCRIPCION'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(106286784852472357)
,p_event_id=>wwv_flow_imp.id(106284727229472356)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(200038303232910026)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(108423849293087801)
,p_name=>'da_rechazar'
,p_event_sequence=>160
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(106977289838363844)
,p_condition_element=>'P365_NRO'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(108423942936087802)
,p_event_id=>wwv_flow_imp.id(108423849293087801)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
' BEGIN',
'     update inv.st_pedido_carneo',
'        set  estado = ''RECHAZADO'', ',
'            rechaza_user = :APP_USER,',
'            fecha_rechazo = SYSDATE ',
'      where cod_empresa = :P_cod_empresa',
'        and tip_comprobante = ''PCA''',
'        and ser_comprobante = ''A''',
'        and nro_comprobante = :P365_NRO',
'        and estado=''CREADO'' ;',
'EXCEPTION',
'    WHEN OTHERS THEN',
'     raise_application_error(-20000, sqlerrm );',
'END;'))
,p_attribute_02=>'P365_NRO'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(108427620825087839)
,p_event_id=>wwv_flow_imp.id(108423849293087801)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_02=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(108424095486087803)
,p_name=>'DA_AUTORIZA'
,p_event_sequence=>170
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(106977127279363843)
,p_condition_element=>'P365_NRO'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(108424150325087804)
,p_event_id=>wwv_flow_imp.id(108424095486087803)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
' BEGIN',
'      inv.stpedcar.valida_detalle(pi_cod_empresa => :p_cod_empresa,',
'                                    pi_nro_ficha => :P365_FICHA);',
'',
'     update inv.st_pedido_carneo',
'        set  estado = ''AUTORIZADO'', ',
'            autoriza_user = :APP_USER,',
'            fecha_autoriza = SYSDATE ',
'      where cod_empresa = :P_cod_empresa',
'        and tip_comprobante = ''PCA''',
'        and ser_comprobante = ''A''',
'        and nro_comprobante = :P365_NRO',
'        and estado=''CREADO'' ;',
'        commit;',
'EXCEPTION',
'    WHEN OTHERS THEN',
'     raise_application_error(-20000, sqlerrm );',
'END;'))
,p_attribute_02=>'P365_NRO,P365_FICHA'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(108427730348087840)
,p_event_id=>wwv_flow_imp.id(108424095486087803)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_02=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(108426577125087828)
,p_name=>'DA_LLAMA_REG'
,p_event_sequence=>180
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(108425566439087818)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(108426669178087829)
,p_event_id=>wwv_flow_imp.id(108426577125087828)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(108425967249087822)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(108426757659087830)
,p_name=>'da_btn_add_det'
,p_event_sequence=>190
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(108426143321087824)
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>'apex.item("P365_COD_REPUESTO").getValue()!=='''' && apex.item("P365_FICHA").getValue()!=='''''
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(110798833132589407)
,p_event_id=>wwv_flow_imp.id(108426757659087830)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'Debe seleccionar un repuesto.'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(108426870334087831)
,p_event_id=>wwv_flow_imp.id(108426757659087830)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
' ',
'',
'      inv.stpedcar.agrega_detalle(pi_cod_empresa => :p_cod_empresa,',
'                                  pi_nro_ficha => :P365_FICHA,',
'                                  pi_cod_repuesto => :P365_COD_REPUESTO);',
' '))
,p_attribute_02=>'P365_COD_REPUESTO,P365_FICHA'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(108426994907087832)
,p_event_id=>wwv_flow_imp.id(108426757659087830)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(200038303232910026)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(108427517431087838)
,p_event_id=>wwv_flow_imp.id(108426757659087830)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(108425967249087822)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(108427159464087834)
,p_name=>'DA_ADD_ALL_DET'
,p_event_sequence=>200
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(108426275433087825)
,p_condition_element=>'P365_FICHA'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(108427231318087835)
,p_event_id=>wwv_flow_imp.id(108427159464087834)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
'  inv.stpedcar.carga_detalle(pi_cod_empresa => :p_cod_empresa,',
'                             pi_nro_ficha => :P365_FICHA,',
'                             pi_co_articulo => null,',
'                             pi_nro_solicitud => null);'))
,p_attribute_02=>'P365_FICHA'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(110798961593589408)
,p_event_id=>wwv_flow_imp.id(108427159464087834)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'Debe vincular una Ficha a la solicitud.'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(108427336836087836)
,p_event_id=>wwv_flow_imp.id(108427159464087834)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(200038303232910026)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(108427480065087837)
,p_event_id=>wwv_flow_imp.id(108427159464087834)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(108425967249087822)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(108428113793087844)
,p_name=>'da_procesar_solicitud'
,p_event_sequence=>220
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(106265674006472342)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(118932093281854145)
,p_event_id=>wwv_flow_imp.id(108428113793087844)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF :P365_ESTADO=''CREADO'' THEN',
'	raise_application_error(-20000,''La Solicitud requiere Autorizacion.'' );',
'',
'ELSIF :P365_ESTADO=''AUTORIZADO'' THEN',
'',
'	DECLARE',
'	    dummy char(1);',
'        ',
'	BEGIN',
'    	select distinct ''1''',
'    	into dummy',
'    	from st_existencia_art ee',
'    	where cant_dispon>0',
'    	and (( ee.cod_sucursal= :P365_SUC_SAL_CAR  AND :P365_DESTINO = ''CARNEO'') OR ( (ee.cod_sucursal= :P365_SUC_SAL_DES or ee.cod_sucursal=''30'' ) AND :P365_DESTINO =''DESPIECE'') )',
'    	and ee.cod_empresa=  :P_cod_empresa',
'    	and ee.cod_articulo= :P365_COD_ARTICULO;',
'	',
'	EXCEPTION',
'		WHEN NO_DATA_FOUND THEN',
unistr('            raise_application_error(-20000, ''El Art\00EDculo no tiene existencia en el Deposito de ''||:P365_DESTINO ); '),
'		WHEN OTHERS THEN',
'			raise_application_error(-20000,''Error en la tabla de Existencia ''||:P365_DESTINO );',
'	END ;',
'',
'ELSE',
'	raise_application_error(-20000,''La Solicitud ya se encuentra ''||:P365_ESTADO );',
'END IF;'))
,p_attribute_02=>'P365_SUC_SAL_CAR,P365_SUC_SAL_DES,P365_COD_ARTICULO,P365_DESTINO,P365_ESTADO'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(108428263946087845)
,p_event_id=>wwv_flow_imp.id(108428113793087844)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>unistr('\00BFDesea Generar el &P365_DESTINO. de &P365_COD_ARTICULO. ?')
,p_attribute_06=>'SI'
,p_attribute_07=>'NO'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(118932385261854148)
,p_event_id=>wwv_flow_imp.id(108428113793087844)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin ',
'    if :P365_DESTINO = ''CARNEO'' then  ',
'        inv.stpedcar.genera_carneo(pi_solicitud => :P365_NRO,',
'                             pi_cod_empresa => :p_cod_empresa,',
'                             pi_nro_ficha => :P365_FICHA);',
'',
'    else',
'         inv.stpedcar.genera_despiece(pi_solicitud => :P365_NRO,',
'                                       pi_cod_empresa => :p_cod_empresa,',
'                                       pi_nro_ficha => :P365_FICHA);',
'    end if;',
'',
'exception',
'    when others then',
'     raise_application_error(-20000,  sqlerrm );',
'end;'))
,p_attribute_02=>'P365_NRO,P365_P_NRO,P365_P_FICHA,P365_FICHA,P365_DESTINO'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(118932498057854149)
,p_event_id=>wwv_flow_imp.id(108428113793087844)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_02=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(110798572872589404)
,p_name=>'da_setea_nro'
,p_event_sequence=>230
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P365_P_NRO'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(110798686885589405)
,p_event_id=>wwv_flow_imp.id(110798572872589404)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>':P365_NRO:=:P365_P_NRO;'
,p_attribute_02=>'P365_P_NRO'
,p_attribute_03=>'P365_NRO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
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
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(110799619617589415)
,p_name=>'da_ficha_act'
,p_event_sequence=>240
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P365_P_FICHA'
,p_condition_element=>'P365_P_FICHA'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(110799736822589416)
,p_event_id=>wwv_flow_imp.id(110799619617589415)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P365_FICHA:=:P365_P_FICHA;',
' ',
'  '))
,p_attribute_02=>'P365_P_FICHA'
,p_attribute_03=>'P365_FICHA'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(110799965584589418)
,p_event_id=>wwv_flow_imp.id(110799619617589415)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(200038303232910026)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(118929317641854118)
,p_name=>'da_pintar_css'
,p_event_sequence=>250
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(200038303232910026)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterrefresh'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(118929427706854119)
,p_event_id=>wwv_flow_imp.id(118929317641854118)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'estado_css();'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(106277637386472351)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'GUARDAR_ACTUALIZAR'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
' ',
'IF (:P365_SER_OT IS NULL OR :P365_NRO_OT IS NULL) AND :P365_DESTINO=''CARNEO'' THEN',
'        RAISE_APPLICATION_ERROR(-20000,''Debe cargar la Serie y Numero de la Orden de Trabajo al cual ira destinado los repuestos'');',
'',
'ELSIF  :P365_FICHA IS NULL  THEN',
'        RAISE_APPLICATION_ERROR(-20000,''No existe vinculacion con una Ficha Tecnica.'');',
'ELSE ',
' ',
'    IF :P365_COD_ARTICULO IS NULL THEN',
'        RAISE_APPLICATION_ERROR(-20000,''Debe seleccionar un Producto'');',
'    ELSE ',
'              inv.stpedcar.crea_actualiza_solicitud(pi_cod_empresa => :p_cod_empresa,',
'                                                    pi_nro_solicitud => :P365_NRO,',
'                                                    pi_nro_ficha => :P365_FICHA,',
'                                                    pi_cod_articulo => :P365_COD_ARTICULO,',
'                                                    pi_cod_corto => :P365_COD_CORTO,',
'                                                    pi_estado => :P365_ESTADO,',
'                                                    pi_destino => :P365_DESTINO,',
'                                                    pi_garantia => :P365_GARANTIA,',
'                                                    pi_serie => :P365_SERIE,',
'                                                    pi_ser_ort => :P365_SER_OT,',
'                                                    pi_nro_ort => :P365_nro_ot,',
'                                                    pi_usuario => :APP_USER,',
'                                                    pi_observacion => NULL,',
'                                                    po_nro_solicitud => :P365_P_NRO);',
'    END IF;         ',
'END IF;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(106249237142472328)
);
wwv_flow_imp.component_end;
end;
/
