prompt --application/pages/page_00364
begin
--   Manifest
--     PAGE: 00364
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
 p_id=>364
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'Seguimiento de  Solicitud Carneo'
,p_alias=>'SEGUIMIENTO-DE-SOLICITUD-CARNEO'
,p_step_title=>'Seguimiento de  Solicitud Carneo'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#parametros{',
'    background: #487ab8!important;',
'}',
'',
' .t-Form-label{',
'    color:  darkblue !important;     ',
'    } ',
'',
'     ',
' .a-IRR-header  a  {color: yellow; }',
' .a-IRR-header { background: #003a85!important;}',
'',
' .t-Report-colHead {color: yellow !important;',
'                    background: #003a85!important;',
'  }'))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_last_updated_by=>'JUANSA'
,p_last_upd_yyyymmddhh24miss=>'20230817142937'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(105203608732701815)
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
 p_id=>wwv_flow_imp.id(105203717761701816)
,p_plug_name=>'SOLICITUDES DE CARNEO'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>1000
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT  C001 NRO',
'       ,C002 FECHA',
'       ,C003 ESTADO  ',
'       ,C004 OPERACION   ',
'       ,C005 COD_ARTICULO  ',
'       ,C005 COD_ART ',
'       ,C007 NRO_GARANTIA  ',
'       ,C008 NRO_FICHA  ',
'       ,C009 ORT  ',
'       ,C010 SOLICITA ',
'       ,C011 AUTORIZA  ',
'       ,C012 NUM_ENT_SAL ',
'       ,C013 SERIE ',
'       , NULL VER',
'       ,SEQ_ID ',
'FROM APEX_COLLECTIONS  ',
'WHERE COLLECTION_NAME = ''STPEDCAR''  ',
' ',
'',
' /*',
'P_C001 => REG.NRO,',
'                                 P_C002 => REG.FECHA,',
'                                 P_C003 => REG.ESTADO,',
'                                 P_C004 => REG.OPERACION,',
'                                 P_C005 => REG.COD_ARTICULO,',
'                                 P_C006 => REG.COD_ART_CORTO,',
'                                 P_C007 => REG.NRO_GARANTIA,',
'                                 P_C008 => REG.NRO_FICHA ,',
'                                 P_C009 => REG.ORT,',
'                                 P_C010 => REG.CREA_USER,',
'                                 P_C011 => REG.AUTORIZA_USER,',
'                                 P_C012 => REG.NUM_ENT_SAL,',
'                                 P_C013 => REG.SERIE',
' */'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'SOLICITUDES DE CARNEO'
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
 p_id=>wwv_flow_imp.id(192588706666827021)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_show_rows_per_page=>'N'
,p_show_flashback=>'N'
,p_show_reset=>'N'
,p_show_help=>'N'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:365:&SESSION.::&DEBUG.::P365_P_NRO:#NRO#'
,p_detail_link_text=>'<span aria-label="Edit"><span class="fa fa-edit" aria-hidden="true" title="Edit"></span></span>'
,p_owner=>'JUANSA'
,p_internal_uid=>192588706666827021
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(192588830687827022)
,p_db_column_name=>'NRO'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>unistr('N\00BA Solicitud')
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(192588949622827023)
,p_db_column_name=>'FECHA'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Fecha'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(192589062461827024)
,p_db_column_name=>'ESTADO'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Estado'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(192589174379827025)
,p_db_column_name=>'OPERACION'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Operacion'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(192589274683827026)
,p_db_column_name=>'COD_ARTICULO'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>unistr('C\00F3digo Articulo')
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(192589344766827027)
,p_db_column_name=>'COD_ART'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>unistr('Descripci\00F3n del Articulo')
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_rpt_named_lov=>wwv_flow_imp.id(49491417719552990)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(192589438895827028)
,p_db_column_name=>'NRO_GARANTIA'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Garantia'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(192589549127827029)
,p_db_column_name=>'NRO_FICHA'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>unistr('N\00BA Ficha')
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(192589606695827030)
,p_db_column_name=>'ORT'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Orden de Trabajo'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(192589786752827031)
,p_db_column_name=>'SOLICITA'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'User Solicita'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(192589866662827032)
,p_db_column_name=>'AUTORIZA'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'User Autoriza'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(192589954982827033)
,p_db_column_name=>'NUM_ENT_SAL'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>unistr('N\00BA Ajuste')
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(192590098067827034)
,p_db_column_name=>'SERIE'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Serie'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(192590128433827035)
,p_db_column_name=>'VER'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>'Ver'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(192590298018827036)
,p_db_column_name=>'SEQ_ID'
,p_display_order=>150
,p_column_identifier=>'O'
,p_column_label=>'Seq Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(192608600531936663)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1926087'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'NRO:FECHA:ESTADO:OPERACION:COD_ARTICULO:COD_ART:NRO_GARANTIA:ORT:SOLICITA:AUTORIZA:NUM_ENT_SAL:SERIE:NRO_FICHA:'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(105203863467701817)
,p_button_sequence=>110
,p_button_plug_id=>wwv_flow_imp.id(105203608732701815)
,p_button_name=>'FILTRAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight:t-Button--stretch:t-Button--gapTop'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Filtrar'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'u-color-21-bg u-color-43-text'
,p_icon_css_classes=>'fa-search'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(105204073754701819)
,p_name=>'P364_FECHA_INI'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(105203608732701815)
,p_prompt=>'Fecha desde'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_colspan=>2
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(105204136919701820)
,p_name=>'P364_FECHA_FIN'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(105203608732701815)
,p_prompt=>'Fecha Hasta'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_colspan=>2
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(105204262055701821)
,p_name=>'P364_ESTADO'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(105203608732701815)
,p_prompt=>'Estado'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select DISTINCT ESTADO NOM, ESTADO',
'from ST_PEDIDO_CARNEO',
'WHERE COD_EMPRESA= :P_COD_EMPRESA ;',
''))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'-TODOS-'
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
 p_id=>wwv_flow_imp.id(105204387521701822)
,p_name=>'P364_DESTINO'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(105203608732701815)
,p_prompt=>unistr('Operaci\00F3n')
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select DISTINCT OPERACION NOM, OPERACION',
'from ST_PEDIDO_CARNEO',
'WHERE COD_EMPRESA= :P_COD_EMPRESA',
''))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'-TODOS-'
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
 p_id=>wwv_flow_imp.id(105204457300701823)
,p_name=>'P364_GARANTIA'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(105203608732701815)
,p_prompt=>'Garantia'
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
 p_id=>wwv_flow_imp.id(105204567366701824)
,p_name=>'P364_ARTICULO'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(105203608732701815)
,p_prompt=>'Articulo'
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
 p_id=>wwv_flow_imp.id(105204613709701825)
,p_name=>'P364_SOLICITA'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(105203608732701815)
,p_prompt=>'Solicitado por'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select DISTINCT CREA_USER NOM, CREA_USER',
'from ST_PEDIDO_CARNEO',
'WHERE COD_EMPRESA= :P_COD_EMPRESA',
''))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'-TODOS-'
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
 p_id=>wwv_flow_imp.id(105204704877701826)
,p_name=>'P364_NRO_OT'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(105203608732701815)
,p_prompt=>unistr('N\00BA Orden de Trabajo')
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
 p_id=>wwv_flow_imp.id(105206447839701843)
,p_name=>'P364_FICHA'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(105203608732701815)
,p_prompt=>unistr('N\00BA Ficha T\00E9cnica')
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
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(106975829117363830)
,p_name=>'DA_FILTRAR'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(105203863467701817)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(106975933563363831)
,p_event_id=>wwv_flow_imp.id(106975829117363830)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  inv.stpedcar.trae_datos(p_cod_empresa => :p_cod_empresa,',
'                          p_estado => :P364_ESTADO,',
'                          p_destino => :P364_DESTINO,',
'                          p_ficha => :P364_FICHA,',
'                          p_nro_ort => :P364_NRO_OT,',
'                          p_articulo => :P364_ARTICULO,',
'                          p_garantia => :P364_GARANTIA,',
'                          p_fecha_ini => :P364_FECHA_INI,',
'                          p_fecha_fin => :P364_FECHA_FIN,',
'                          P_SOLICITA => :P364_SOLICITA);'))
,p_attribute_02=>'P364_FECHA_INI,P364_ESTADO,P364_DESTINO,P364_ARTICULO,P364_FECHA_FIN,P364_GARANTIA,P364_SOLICITA,P364_NRO_OT,P364_FICHA'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(106976064052363832)
,p_event_id=>wwv_flow_imp.id(106975829117363830)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(105203717761701816)
);
wwv_flow_imp.component_end;
end;
/
