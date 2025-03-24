prompt --application/pages/page_00475
begin
--   Manifest
--     PAGE: 00475
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
 p_id=>475
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>unistr('Ubicaciones de Art\00EDculos en Dep\00F3sito')
,p_alias=>'STUBIART'
,p_step_title=>unistr('Ubicaciones de Art\00EDculos en Dep\00F3sito	')
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
' .t-Body-content, #ADDEDIT  {',
'   background-color:  #d0e0f783!important;}',
'',
'',
'.t-Form-label  {',
'  color: darkblue  !important;',
'  border-color: #003a85 !important;',
'}',
'',
'',
'.display_only, .apex-item-display-only ',
'{',
'    font-weight: bold !important;',
'    border-style: solid !important;',
'    background-color: white  !important;',
'',
'}',
'',
'',
'.apex-item-select:focus, .apex-item-text:focus, .apex-item-textarea:focus {',
'   background-color: #faffbf !important;',
'   border-color: #8f0000 !important;',
'}',
'',
'.apex-item-select,  .apex-item-text , .apex-item-textarea , .apex-item-group, .display_only {',
'  border-color: #b4c6dd !important;',
'  background-color: #f9f9ef !important;',
'}',
'',
'  .tabla_color   td.t-Report-cell  {',
'  color: #FFED00  !important;',
'  border-color: #003a85 !important;',
'}',
'',
'  th.t-Report-colHead,  th.t-Report-colHead a{',
'  background-color:  #003a85  !important;',
'  color: #FFED00  !important;',
'  border-color: #487ab8;',
'}',
'',
' .a-IRR-header{',
'      background-color: #003a85  !important;',
'	  font-weight: bold !important;',
'      border:0.5px solid #16488a !important;',
'   }',
'',
'  .a-IRR-headerLink{',
'    background-color: #003a85  !important;',
'	  color:#FFED00  !important;    }',
'   ',
'.a-IRR-table tr td { ',
'        color: black !important;',
'   }',
' ',
'.a-IRR-table td {',
'    border: 1px solid #003a85b7 !important;',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_last_updated_by=>'JUANSA'
,p_last_upd_yyyymmddhh24miss=>'20240823133819'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(141307614485930330)
,p_plug_name=>unistr('Ubicaciones de Art\00EDculos en Dep\00F3sito	')
,p_region_template_options=>'#DEFAULT#:t-Region--accent1:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>990
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(141307786805930331)
,p_plug_name=>'Reporte'
,p_parent_plug_id=>wwv_flow_imp.id(141307614485930330)
,p_region_template_options=>'#DEFAULT#:t-IRR-region--noBorders'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT COD_SUCURSAL,',
'       a.COD_ARTICULO ARTICULO,',
'       a.COD_ARTICULO,   	',
'       COD_POSICION,	',
'       COD_BLOQUE,	',
'       COD_SUB_BLOQUE,	',
'       COD_ESTANTE,	',
'       COD_CUERPO,	',
'       COD_NIVEL,',
'       FEC_ENTRADA,',
'       a.COD_USUARIO,',
'       NULL EDITAR,',
'       NULL ELIMINAR,s.cod_rubro,',
'       a.ROWID',
'FROM ST_UBIC_ARTICULOS a, st_articulos s',
'WHERE a.cod_empresa = :p_cod_empresa ',
'and cod_posicion is not null',
'and a.cod_empresa=s.cod_empresa ',
'and a.cod_articulo=s.cod_Articulo;',
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
 p_id=>wwv_flow_imp.id(141309090952930344)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_finder_drop_down=>'N'
,p_report_list_mode=>'NONE'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'AIBANEZ'
,p_internal_uid=>141309090952930344
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(141309177033930345)
,p_db_column_name=>'COD_SUCURSAL'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Cod Sucursal'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_rpt_named_lov=>wwv_flow_imp.id(41127354264101747)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(141309373857930347)
,p_db_column_name=>'COD_POSICION'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>unistr('Posici\00F3n')
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(141309431910930348)
,p_db_column_name=>'COD_BLOQUE'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Zona'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(141309503215930349)
,p_db_column_name=>'COD_SUB_BLOQUE'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Sub Zona'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(141309617781930350)
,p_db_column_name=>'COD_ESTANTE'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>' Estante'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(141429063029138801)
,p_db_column_name=>'COD_CUERPO'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Cuerpo'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(141429197317138802)
,p_db_column_name=>'COD_NIVEL'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Nivel'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(141429222845138803)
,p_db_column_name=>'FEC_ENTRADA'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Fec Entrada'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(141429365305138804)
,p_db_column_name=>'COD_USUARIO'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Cod Usuario'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(141429498728138805)
,p_db_column_name=>'EDITAR'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Editar'
,p_column_link=>'javascript:$s(''P475_EDITAR'',''#ROWID#'');'
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
'                                                         pdm_boto     => 1); --1 guardar, 2 editar, 3 eliminar',
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
 p_id=>wwv_flow_imp.id(141429574315138806)
,p_db_column_name=>'ELIMINAR'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Eliminar'
,p_column_link=>'javascript:$s(''P475_ELIMINAR'',''#ROWID#'');'
,p_column_linktext=>'<span class="fa fa-trash-o" aria-hidden="true"></span>'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_rpt_show_filter_lov=>'N'
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
'        RETURN false;',
'    ELSE',
'        RETURN true;',
'    END IF;',
'END;'))
,p_display_condition2=>'PLSQL'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(141429690562138807)
,p_db_column_name=>'ROWID'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Rowid'
,p_column_type=>'OTHER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(141431729058138828)
,p_db_column_name=>'ARTICULO'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>'Articulo'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(141770117715025439)
,p_db_column_name=>'COD_ARTICULO'
,p_display_order=>150
,p_column_identifier=>'P'
,p_column_label=>unistr('Art\00EDculo')
,p_column_link=>'javascript:$s(''P475_DETALLE'',''#ROWID#''),$s(''P475_AUX_COD_ARTICULO'',''#ARTICULO#'');'
,p_column_linktext=>'#COD_ARTICULO#'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_column_alignment=>'CENTER'
,p_rpt_named_lov=>wwv_flow_imp.id(141506720623982494)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(76101715430162843)
,p_db_column_name=>'COD_RUBRO'
,p_display_order=>160
,p_column_identifier=>'Q'
,p_column_label=>'Cod Rubro'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(141440706109132479)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1414408'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>10
,p_report_columns=>'COD_RUBRO:ARTICULO:COD_ARTICULO:COD_SUCURSAL:COD_POSICION:COD_BLOQUE:COD_SUB_BLOQUE:COD_ESTANTE:COD_CUERPO:COD_NIVEL:ELIMINAR:'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(141307924064930333)
,p_plug_name=>'Info'
,p_parent_plug_id=>wwv_flow_imp.id(141307614485930330)
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
 p_id=>wwv_flow_imp.id(141308244905930336)
,p_plug_name=>'Items Sucursal'
,p_parent_plug_id=>wwv_flow_imp.id(141307924064930333)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--removeHeader js-removeLandmark:t-Region--noBorder:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>10
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(141308382125930337)
,p_plug_name=>'Items Usuario'
,p_parent_plug_id=>wwv_flow_imp.id(141307924064930333)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--removeHeader js-removeLandmark:t-Region--noBorder:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>30
,p_plug_new_grid_row=>false
,p_plug_grid_column_span=>4
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(141429933923138810)
,p_plug_name=>'Agregar/Editar'
,p_region_name=>'ADDEDIT'
,p_parent_plug_id=>wwv_flow_imp.id(141307924064930333)
,p_region_template_options=>'#DEFAULT#:js-dialog-size600x400'
,p_plug_template=>wwv_flow_imp.id(40117728043263659)
,p_plug_display_sequence=>90
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(141308592130930339)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(141308244905930336)
,p_button_name=>'BT_IMPRESION'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Impresion Masiva'
,p_warn_on_unsaved_changes=>null
,p_button_cattributes=>'style="margin-top:15px;"'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
,p_grid_column_span=>5
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(141430141429138812)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(141429933923138810)
,p_button_name=>'BT_CANCELAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Cancelar'
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'u-color-45-bg'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(141430067892138811)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(141429933923138810)
,p_button_name=>'BT_GUARDAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Guardar'
,p_button_position=>'CREATE'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'u-color-21-text'
,p_icon_css_classes=>'fa-save-as'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(141766504892025403)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(141307786805930331)
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
,p_button_css_classes=>'u-color-21-text'
,p_icon_css_classes=>'fa-file-new'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(141308077446930334)
,p_name=>'P475_DESC_SUCURSAL'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(141308244905930336)
,p_prompt=>'Descripcion'
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
 p_id=>wwv_flow_imp.id(141308497233930338)
,p_name=>'P475_IMPRIMIR'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(141308244905930336)
,p_prompt=>'Imprimir'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(141308705690930341)
,p_name=>'P475_COD_USUARIO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(141308382125930337)
,p_prompt=>'Usuario'
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
 p_id=>wwv_flow_imp.id(141308832632930342)
,p_name=>'P475_FEC_ENTRADA'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(141308382125930337)
,p_prompt=>'Fecha Entrada'
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
 p_id=>wwv_flow_imp.id(141429730056138808)
,p_name=>'P475_EDITAR'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(141307924064930333)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(141429849695138809)
,p_name=>'P475_ELIMINAR'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(141307924064930333)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(141431062248138821)
,p_name=>'P475_DETALLE'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(141307924064930333)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(141431613772138827)
,p_name=>'P475_AUX_COD_ARTICULO'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(141307924064930333)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(141766905295025407)
,p_name=>'P475_COD_ARTICULO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(141429933923138810)
,p_prompt=>unistr('Art\00EDculo')
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select distinct a.cod_articulo || '' - '' || a.descripcion D,',
'       a.cod_articulo R',
'from st_articulos a',
'--, ST_UBIC_ARTICULOS u',
'where a.cod_empresa = :p_cod_empresa',
'--and  a.cod_articulo = u.cod_articulo',
';'))
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
 p_id=>wwv_flow_imp.id(141767002922025408)
,p_name=>'P475_COD_POSICION'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(141429933923138810)
,p_prompt=>unistr('Posici\00F3n')
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select a.cod_posicion',
'from st_posiciones a',
'where cod_empresa=:p_cod_empresa',
'and (a.cod_sucursal=:P475_NEW_COD_SUCURSAl);',
''))
,p_lov_cascade_parent_items=>'P475_NEW_COD_SUCURSAL'
,p_ajax_items_to_submit=>'P475_NEW_COD_SUCURSAL'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>5
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
 p_id=>wwv_flow_imp.id(141767194681025409)
,p_name=>'P475_COD_BLOQUE'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(141429933923138810)
,p_prompt=>'Zona'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(141767263815025410)
,p_name=>'P475_COD_SUB_BLOQUE'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(141429933923138810)
,p_prompt=>'Sub Zona'
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
 p_id=>wwv_flow_imp.id(141767341859025411)
,p_name=>'P475_COD_ESTANTE'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(141429933923138810)
,p_prompt=>'Estante'
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
 p_id=>wwv_flow_imp.id(141767413788025412)
,p_name=>'P475_COD_CUERPO'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(141429933923138810)
,p_prompt=>'Cuerpo'
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
 p_id=>wwv_flow_imp.id(141767527679025413)
,p_name=>'P475_COD_NIVEL'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(141429933923138810)
,p_prompt=>' Nivel'
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
 p_id=>wwv_flow_imp.id(141767628910025414)
,p_name=>'P475_NEW_COD_SUCURSAL'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(141429933923138810)
,p_prompt=>'Sucursal'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select cod_sucursal||'' - ''||descripcion D,',
'       cod_sucursal R',
'from sucursales ',
'where cod_empresa = :p_cod_empresa;'))
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
 p_id=>wwv_flow_imp.id(141768091803025418)
,p_name=>'P475_COD_MODULO'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(141307924064930333)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(141768154093025419)
,p_name=>'P475_COD_FORMA'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(141307924064930333)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(141768254410025420)
,p_name=>'P475_NOM_FORMA'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(141307924064930333)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(141768356178025421)
,p_name=>'P475_NOM_MODULO'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(141307924064930333)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(141768769192025425)
,p_name=>'P475_COD_SUCURSAL'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(141308244905930336)
,p_prompt=>'Sucursal'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readOnly'
,p_colspan=>3
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(141769555707025433)
,p_name=>'P475_MESSAGE'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(141307924064930333)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(277124048801416425)
,p_name=>'P475_GARANTIA'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(141429933923138810)
,p_prompt=>'Buscar por Garantia...'
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
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(141430265827138813)
,p_name=>'DA_CANCELAR'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(141430141429138812)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(141430387369138814)
,p_event_id=>wwv_flow_imp.id(141430265827138813)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(141429933923138810)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(141430474396138815)
,p_name=>'DA_EDITAR'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P475_EDITAR'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(141766835826025406)
,p_event_id=>wwv_flow_imp.id(141430474396138815)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    SELECT cod_articulo,',
'           cod_posicion,',
'           cod_sucursal,',
'           cod_bloque,',
'           cod_sub_bloque,',
'           cod_estante,',
'           cod_cuerpo,',
'           cod_nivel',
'    INTO :P475_COD_ARTICULO,',
'         :P475_COD_POSICION,',
'         :P475_NEW_COD_SUCURSAL,',
'         :P475_COD_BLOQUE,',
'         :P475_COD_SUB_BLOQUE,',
'         :P475_COD_ESTANTE,',
'         :P475_COD_CUERPO,',
'         :P475_COD_NIVEL',
'    FROM ST_UBIC_ARTICULOS',
'    WHERE ROWID = :P475_EDITAR;',
'',
'',
'    EXCEPTION',
'        when NO_DATA_FOUND then',
'               raise_application_error(-20000,''There is no data ''||sqlerrm);',
'        when others then',
'               raise_application_error(-20000,''Error en Editar ''||sqlerrm);',
'END;'))
,p_attribute_02=>'P475_EDITAR'
,p_attribute_03=>'P475_COD_ARTICULO,P475_NEW_COD_SUCURSAL,P475_COD_POSICION,P475_COD_BLOQUE,P475_COD_SUB_BLOQUE,P475_COD_ESTANTE,P475_COD_CUERPO,P475_COD_NIVEL'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(141430542975138816)
,p_event_id=>wwv_flow_imp.id(141430474396138815)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(141429933923138810)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(141430677769138817)
,p_name=>'DA_ELIMINAR'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P475_ELIMINAR'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(141430780661138818)
,p_event_id=>wwv_flow_imp.id(141430677769138817)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>unistr('\00BFDesea eliminar la ubicaci\00F3n seleccionada?')
,p_attribute_03=>'warning'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(141766346931025401)
,p_event_id=>wwv_flow_imp.id(141430677769138817)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    DELETE ST_UBIC_ARTICULOS',
'    WHERE ROWID = :P475_ELIMINAR;',
'',
'    EXCEPTION',
'           WHEN OTHERS THEN',
'                raise_application_error(-20000,''Error al eliminar ''||SQLERRM);',
'',
'END;'))
,p_attribute_02=>'P475_ELIMINAR'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(141766434896025402)
,p_event_id=>wwv_flow_imp.id(141430677769138817)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(141307786805930331)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(141431181096138822)
,p_name=>'DA_DETALLE'
,p_event_sequence=>40
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P475_DETALLE'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(141431313318138824)
,p_event_id=>wwv_flow_imp.id(141431181096138822)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'',
'    select UPPER(cod_usuario),',
'           fec_entrada,',
'           cod_sucursal',
'    into :P475_COD_USUARIO,',
'         :P475_FEC_ENTRADA,',
'         :P475_COD_SUCURSAL',
'    from ST_UBIC_ARTICULOS',
'    where rowid = :P475_DETALLE;',
'   ',
'   exception',
'           when others then',
'                 raise_application_error(-20000,''Error Detalle ''||sqlerrm);',
'end;'))
,p_attribute_02=>'P475_DETALLE,P475_AUX_COD_ARTICULO'
,p_attribute_03=>'P475_COD_USUARIO,P475_FEC_ENTRADA,P475_COD_SUCURSAL,P475_DESC_SUCURSAL'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(141431201597138823)
,p_event_id=>wwv_flow_imp.id(141431181096138822)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(141307924064930333)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(141766696226025404)
,p_name=>'DA_AGREGAR'
,p_event_sequence=>50
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(141766504892025403)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
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
 p_id=>wwv_flow_imp.id(141767735181025415)
,p_event_id=>wwv_flow_imp.id(141766696226025404)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P475_COD_ARTICULO,P475_COD_POSICION,P475_NEW_COD_SUCURSAL,P475_COD_BLOQUE,P475_COD_SUB_BLOQUE,P475_COD_ESTANTE,P475_COD_CUERPO,P475_COD_NIVEL,P475_GARANTIA'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(141766753799025405)
,p_event_id=>wwv_flow_imp.id(141766696226025404)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(141429933923138810)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(141768447582025422)
,p_name=>'DA_GUARDAR'
,p_event_sequence=>60
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(141430067892138811)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(141768632185025424)
,p_event_id=>wwv_flow_imp.id(141768447582025422)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'     ',
'   IF :P475_EDITAR is null then',
'        :P475_MESSAGE := null;',
'',
'        IF :P475_NEW_COD_SUCURSAL is not null ',
'        AND :P475_COD_ARTICULO is not null ',
'        AND :P475_COD_POSICION is not null then',
'            INSERT INTO ST_UBIC_ARTICULOS(',
'                COD_EMPRESA,',
'                COD_SUCURSAL,',
'                COD_ARTICULO,',
'                COD_POSICION,',
'                COD_BLOQUE,',
'                COD_SUB_BLOQUE,',
'                COD_ESTANTE,',
'                COD_CUERPO,',
'                COD_NIVEL,',
'                FEC_ENTRADA,',
'                COD_USUARIO',
'                )VALUES(',
'                    :P_COD_EMPRESA,',
'                    :P475_NEW_COD_SUCURSAL,',
'                    :P475_COD_ARTICULO,',
'                    :P475_COD_POSICION,',
'                    :P475_COD_BLOQUE,',
'                    :P475_COD_SUB_BLOQUE,',
'                    :P475_COD_ESTANTE,',
'                    :P475_COD_CUERPO,',
'                    :P475_COD_NIVEL,',
'                     SYSDATE,',
'                    :APP_USER',
'',
'                        );',
'         ELSE',
'                CASE ',
'',
'                      WHEN :P475_COD_ARTICULO is null then',
unistr('                                 :P475_MESSAGE := ''Seleccione un art\00EDculo.'';'),
'',
'                      WHEN :P475_NEW_COD_SUCURSAL is null then ',
'                                :P475_MESSAGE := ''Seleccione una sucursal.'';',
'                      ',
'                      WHEN:P475_COD_POSICION is null then',
unistr('                                :P475_MESSAGE := ''Seleccione una posici\00F3n.'';'),
'',
'                END CASE;',
'',
'         END IF;',
'',
'    ELSE',
'',
'            UPDATE ST_UBIC_ARTICULOS',
'            SET COD_SUCURSAL = :P475_NEW_COD_SUCURSAL,',
'                COD_EMPRESA = :P_COD_EMPRESA,',
'                COD_ARTICULO = :P475_COD_ARTICULO,',
'                COD_POSICION = :P475_COD_POSICION,',
'                COD_BLOQUE = :P475_COD_BLOQUE,',
'                COD_SUB_BLOQUE = :P475_COD_SUB_BLOQUE,',
'                COD_ESTANTE = :P475_COD_ESTANTE,',
'                COD_CUERPO = :P475_COD_CUERPO,',
'                COD_NIVEL = :P475_COD_NIVEL,',
'                FEC_ENTRADA = SYSDATE,',
'                COD_USUARIO = :APP_USER',
'            WHERE ROWID = :P475_EDITAR;',
'',
'',
'   END IF;',
'',
'    EXCEPTION',
'        when others then',
'             raise_application_error(-20000,''Error al guardar ''||sqlerrm);',
'END;'))
,p_attribute_02=>'P475_EDITAR,P475_COD_USUARIO,P475_COD_ARTICULO,P475_NEW_COD_SUCURSAL,P475_COD_POSICION,P475_COD_BLOQUE,P475_COD_SUB_BLOQUE,P475_COD_ESTANTE,P475_COD_CUERPO,P475_COD_NIVEL'
,p_attribute_03=>'P475_MESSAGE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(141769858013025436)
,p_event_id=>wwv_flow_imp.id(141768447582025422)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(141307786805930331)
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P475_MESSAGE'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(141768513381025423)
,p_event_id=>wwv_flow_imp.id(141768447582025422)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(141429933923138810)
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P475_MESSAGE'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(141769912518025437)
,p_event_id=>wwv_flow_imp.id(141768447582025422)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>unistr('\00A1Proceso realizado exitosamente!')
,p_attribute_03=>'success'
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P475_MESSAGE'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(141768889682025426)
,p_name=>'DA_SUCURSAL'
,p_event_sequence=>70
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P475_COD_SUCURSAL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(141768912538025427)
,p_event_id=>wwv_flow_imp.id(141768889682025426)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    select distinct s.cod_sucursal ||'' - ''||s.descripcion',
'    into :P475_DESC_SUCURSAL',
'    from sucursales s, ST_UBIC_ARTICULOS a',
'    where s.cod_empresa = :p_cod_empresa',
'    and s.cod_empresa = a.cod_empresa ',
'    and s.cod_sucursal = a.cod_sucursal',
'    and a.cod_articulo = :p475_aux_cod_articulo ',
'    and a.cod_sucursal = :P475_COD_SUCURSAL;',
'',
'       EXCEPTION',
'            when NO_DATA_FOUND then',
'                        :P475_DESC_SUCURSAL := null;',
'            when others then',
'                 raise_application_error(-20000,''Error Desc_sucursal''||sqlerrm);',
'END;'))
,p_attribute_02=>'P475_COD_SUCURSAL'
,p_attribute_03=>'P475_DESC_SUCURSAL'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(141769091061025428)
,p_event_id=>wwv_flow_imp.id(141768889682025426)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P475_DESC_SUCURSAL'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(141769130253025429)
,p_name=>'DA_POSICION'
,p_event_sequence=>80
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P475_COD_POSICION'
,p_condition_element=>'P475_COD_POSICION'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(141769296043025430)
,p_event_id=>wwv_flow_imp.id(141769130253025429)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
' BEGIN',
'    IF :P475_COD_POSICION is not null then',
'        select a.cod_bloque, ',
'               a.cod_sub_bloque,',
'               a.cod_estante, ',
'               a.cod_cuerpo, ',
'               a.cod_nivel ',
'        into :P475_COD_BLOQUE,',
'             :P475_COD_SUB_BLOQUE,',
'             :P475_COD_ESTANTE,',
'             :P475_COD_CUERPO,',
'             :P475_COD_NIVEL',
'        from st_posiciones a',
'        where a.cod_empresa= :p_cod_empresa',
'        and a.cod_sucursal = :P475_NEW_COD_SUCURSAL',
'      and a.cod_posicion = :P475_COD_POSICION;',
'    ',
'   END IF;',
'',
'    EXCEPTION',
'',
'            when no_data_found then',
'                 raise_application_error(-20000,''Sucursal: ''||:P475_NEW_COD_SUCURSAL||'' Posicion ''||:P475_COD_POSICION||',
'                    '' Articulo ''|| :P475_COD_ARTICULO||'' Zona ''||:P475_COD_BLOQUE||'' Sub Zona ''||:P475_COD_SUB_BLOQUE||',
'                    '' Estante ''||:P475_COD_ESTANTE||'' Cuerpo ''||:P475_COD_CUERPO||'' Nivel ''||:P475_COD_NIVEL);',
'           ',
'            when others then',
'                  raise_application_error(-20000,''Error al enviar datos del cod_posicion ''||sqlerrm);',
'',
' END;',
''))
,p_attribute_02=>'P475_NEW_COD_SUCURSAL,P475_COD_ARTICULO,P475_COD_POSICION,P475_COD_BLOQUE,P475_COD_SUB_BLOQUE,P475_COD_ESTANTE,P475_COD_CUERPO,P475_COD_NIVEL'
,p_attribute_03=>'P475_COD_BLOQUE,P475_COD_SUB_BLOQUE,P475_COD_ESTANTE,P475_COD_CUERPO,P475_COD_NIVEL'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(141769618506025434)
,p_name=>'DA_MESSAGE'
,p_event_sequence=>90
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P475_MESSAGE'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(141769752256025435)
,p_event_id=>wwv_flow_imp.id(141769618506025434)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'&P475_MESSAGE.'
,p_attribute_03=>'warning'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P475_MESSAGE'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(141770278594025440)
,p_name=>'DA_IMPRESION_M'
,p_event_sequence=>100
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(141308592130930339)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(141770307053025441)
,p_event_id=>wwv_flow_imp.id(141770278594025440)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(141308592130930339)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(277124115719416426)
,p_name=>'da_chg_garant'
,p_event_sequence=>110
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P475_GARANTIA'
,p_condition_element=>'P475_GARANTIA'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(277124272206416427)
,p_event_id=>wwv_flow_imp.id(277124115719416426)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'        select distinct cod_articulo',
'        INTO :P475_COD_ARTICULO',
'        from st_garantia_productos_det',
'        where cod_empresa= :P_COD_EMPRESA',
'        and   nro_garantia= :P475_GARANTIA',
'        ;',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        :P475_COD_ARTICULO:=NULL; ',
'        raise_application_error(-20000, sqlerrm );',
'END;'))
,p_attribute_02=>'P475_GARANTIA'
,p_attribute_03=>'P475_COD_ARTICULO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(141767808515025416)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'PR_CLEAR'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(141767983787025417)
,p_process_sequence=>20
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_INIT'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
':p475_cod_modulo := ''ST'';',
'',
'  /*Rutina_inicial(:P_COD_MODULO,',
'                 :p475_Cod_Forma,',
'                 :p475_Nom_Modulo,',
'                 :p475_Nom_Forma);*/'))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_imp.component_end;
end;
/
