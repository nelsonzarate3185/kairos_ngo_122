prompt --application/pages/page_00782
begin
--   Manifest
--     PAGE: 00782
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
 p_id=>782
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'Detalle de planilla recepcion de Pedidos-CMRECPED'
,p_alias=>'DETALLE-DE-PLANILLA-RECEPCION-DE-PEDIDOS-CMRECPED'
,p_step_title=>'Detalle de planilla recepcion de Pedidos-CMRECPED'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function soloNumeros(e){',
'  var key = e.charCode;',
'    return key >= 48 && key <= 57;',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_last_updated_by=>'JUANASIS'
,p_last_upd_yyyymmddhh24miss=>'20240906083952'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(392743497304843033)
,p_plug_name=>'PARAMETROS'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>960
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(392744554147843044)
,p_plug_name=>'Cabecera'
,p_region_template_options=>'#DEFAULT#:t-Region--accent1:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>930
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(392745094817843049)
,p_plug_name=>'Detalle'
,p_region_template_options=>'#DEFAULT#:t-Region--accent3:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>940
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(392741783548843016)
,p_plug_name=>'CM_REC_PEDIDO_DET'
,p_parent_plug_id=>wwv_flow_imp.id(392745094817843049)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>950
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT SEQ_ID,',
'    C001 cod_articulo,                             ',
'    C002 cantidad,										       ',
'    C003 cod_origen,',
'    C004 cod_alterno,',
'    C005 desc_articulo,',
'    C006 cod_origen_art ,',
'    c007 CANTIDAD_RECIIBIDA,',
'    c008 CANTIDAD_FALTANTE,',
'    c009 Cantidad_sobrante,',
'    APEX_ITEM.CHECKBOX (p_idx  => 1 ,',
'                    p_value       => seq_id,',
'                    p_attributes  => (case c010',
'                                       when ''S'' then ''checked ''',
'                                      else null',
'                                     end ) )as  trasladado,   ',
'     ',
'    null editar',
'FROM  APEX_COLLECTIONS',
'WHERE COLLECTION_NAME = ''COL_CM_REC_PEDIDO_DET'''))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'CM_REC_PEDIDO_DET'
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
 p_id=>wwv_flow_imp.id(392741871529843017)
,p_max_row_count=>'1000000'
,p_no_data_found_message=>unistr('No existen art\00EDculos en el detalle.')
,p_pagination_type=>'ROWS_X_TO_Y_OF_Z'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'JUANASIS'
,p_internal_uid=>392741871529843017
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(392742310689843022)
,p_db_column_name=>'COD_ARTICULO'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Articulo'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(392743224854843031)
,p_db_column_name=>'COD_ORIGEN'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>'Cod Origen'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(392743323488843032)
,p_db_column_name=>'COD_ALTERNO'
,p_display_order=>150
,p_column_identifier=>'O'
,p_column_label=>'Alterno'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(393045796064806617)
,p_db_column_name=>'SEQ_ID'
,p_display_order=>160
,p_column_identifier=>'P'
,p_column_label=>'Seq Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(393045855742806618)
,p_db_column_name=>'CANTIDAD'
,p_display_order=>170
,p_column_identifier=>'Q'
,p_column_label=>'Cantidad Facturada'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(393045900208806619)
,p_db_column_name=>'DESC_ARTICULO'
,p_display_order=>180
,p_column_identifier=>'R'
,p_column_label=>unistr('Descripci\00F3n')
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(393046080891806620)
,p_db_column_name=>'COD_ORIGEN_ART'
,p_display_order=>190
,p_column_identifier=>'S'
,p_column_label=>'Cod Origen Art'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(393046161516806621)
,p_db_column_name=>'CANTIDAD_RECIIBIDA'
,p_display_order=>200
,p_column_identifier=>'T'
,p_column_label=>'Cantidad Reciibida'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(393046210138806622)
,p_db_column_name=>'CANTIDAD_FALTANTE'
,p_display_order=>210
,p_column_identifier=>'U'
,p_column_label=>'Cantidad Faltante'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(393046327912806623)
,p_db_column_name=>'CANTIDAD_SOBRANTE'
,p_display_order=>220
,p_column_identifier=>'V'
,p_column_label=>'Cantidad Sobrante'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(393046410493806624)
,p_db_column_name=>'TRASLADADO'
,p_display_order=>230
,p_column_identifier=>'W'
,p_column_label=>'Trasladado'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(393046582256806625)
,p_db_column_name=>'EDITAR'
,p_display_order=>240
,p_column_identifier=>'X'
,p_column_label=>'Editar'
,p_column_link=>'javascript:$s(''P782_SEQ_ID_EDITAR'',''#SEQ_ID#'');'
,p_column_linktext=>'<span aria-hidden="true" class="fa fa-edit"></span>'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(392988856015296285)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'3929889'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>10
,p_report_columns=>'COD_ORIGEN:COD_ARTICULO:COD_ALTERNO:DESC_ARTICULO:CANTIDAD:CANTIDAD_FALTANTE:CANTIDAD_RECIIBIDA:CANTIDAD_SOBRANTE:TRASLADADO:EDITAR:'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(392745157673843050)
,p_plug_name=>'Editar'
,p_region_template_options=>'#DEFAULT#:js-dialog-autoheight:js-dialog-size600x400'
,p_plug_template=>wwv_flow_imp.id(40117728043263659)
,p_plug_display_sequence=>950
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(393046630907806626)
,p_plug_name=>'VARIABLES'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>970
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(393045219635806612)
,p_button_sequence=>100
,p_button_plug_id=>wwv_flow_imp.id(392745157673843050)
,p_button_name=>'BT_CANCELAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_image_alt=>'Cancelar'
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(393045124120806611)
,p_button_sequence=>90
,p_button_plug_id=>wwv_flow_imp.id(392745157673843050)
,p_button_name=>'BT_ACEPTAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Aceptar'
,p_button_position=>'CREATE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(392744040021843039)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(392744554147843044)
,p_button_name=>'bt_volver'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_image_alt=>'Volver'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:776:&SESSION.::&DEBUG.:::'
,p_icon_css_classes=>'fa-arrow-left'
,p_button_cattributes=>'style="margin-right:5px;"'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(393048919723806649)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(392744554147843044)
,p_button_name=>'BT_CONFIRMAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Guardar'
,p_button_position=>'EDIT'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-save'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(393708382840494321)
,p_branch_name=>'GO_TO_PAG_779'
,p_branch_action=>'f?p=&APP_ID.:779:&SESSION.::&DEBUG.::P779_P_NRO_COMPROBANTE:&P782_NRO_COMPROBANTE.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(392743540362843034)
,p_name=>'P782_P_NRO_COMPROBANTE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(392743497304843033)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(392743624579843035)
,p_name=>'P782_P_SER_COMPROBANTE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(392743497304843033)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(392743736121843036)
,p_name=>'P782_P_TIP_COMPROBANTE'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(392743497304843033)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(392744633514843045)
,p_name=>'P782_NRO_COMPROBANTE'
,p_item_sequence=>940
,p_item_plug_id=>wwv_flow_imp.id(392744554147843044)
,p_prompt=>'Nro. Comprobante'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cattributes_element=>'readonly'
,p_tag_attributes=>'readonly'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(392744756958843046)
,p_name=>'P782_SER_COMPROBANTE'
,p_item_sequence=>950
,p_item_plug_id=>wwv_flow_imp.id(392744554147843044)
,p_prompt=>'Ser Comprobante'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cattributes_element=>'readonly'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(392744876598843047)
,p_name=>'P782_TIP_COMPROBANTE'
,p_item_sequence=>960
,p_item_plug_id=>wwv_flow_imp.id(392744554147843044)
,p_prompt=>'Tip Comprobante'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cattributes_element=>'readonly'
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
 p_id=>wwv_flow_imp.id(393044116733806601)
,p_name=>'P782_COD_ORIGEN'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(392745157673843050)
,p_prompt=>'Cod Origen'
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
 p_id=>wwv_flow_imp.id(393044285476806602)
,p_name=>'P782_COD_ARTICULO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(392745157673843050)
,p_prompt=>'Articulo'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select descripcion,cod_articulo',
'from st_articulos ',
'where cod_empresa = :P_cod_empresa ',
'and (estado is null or estado <> ''A'' ) ',
'order by descripcion'))
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'Y'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(393044304215806603)
,p_name=>'P782_COD_ALTERNO'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(392745157673843050)
,p_prompt=>'Alterno'
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
 p_id=>wwv_flow_imp.id(393044462502806604)
,p_name=>'P782_CANTIDAD'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(392745157673843050)
,p_prompt=>'Cantidad Facturada'
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
 p_id=>wwv_flow_imp.id(393044521407806605)
,p_name=>'P782_CANTIDAD_RECIBIDA'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(392745157673843050)
,p_prompt=>'Cantidad Recibida'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_cMaxlength=>6
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(393044630783806606)
,p_name=>'P782_CANTIDAD_FALTA'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(392745157673843050)
,p_prompt=>'Cantidad Faltante'
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
 p_id=>wwv_flow_imp.id(393044784885806607)
,p_name=>'P782_CANTIDAD_SOBRA'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(392745157673843050)
,p_prompt=>'Cantidad Sobrante'
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
 p_id=>wwv_flow_imp.id(393044895348806608)
,p_name=>'P782_TRASLADADO'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(392745157673843050)
,p_prompt=>'Trasladado'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'S'
,p_attribute_03=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(393045612232806616)
,p_name=>'P782_P_CARGA_PEDIDO'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(392743497304843033)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(393046711053806627)
,p_name=>'P782_SEQ_ID_EDITAR'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(393046630907806626)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(393048313467806643)
,p_name=>'P782_MSJ'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(393046630907806626)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(393047911913806639)
,p_name=>'DA_SOLO_NUMEROS'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P782_CANTIDAD_RECIBIDA'
,p_bind_type=>'bind'
,p_bind_event_type=>'keypress'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(393048028446806640)
,p_event_id=>wwv_flow_imp.id(393047911913806639)
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
 p_id=>wwv_flow_imp.id(393045374046806613)
,p_name=>'DA_CANCELAR'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(393045219635806612)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(393045483633806614)
,p_event_id=>wwv_flow_imp.id(393045374046806613)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(392745157673843050)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(393046824426806628)
,p_name=>'DA_EDITAR'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P782_SEQ_ID_EDITAR'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(393708463779494322)
,p_event_id=>wwv_flow_imp.id(393046824426806628)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P782_COD_ARTICULO'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(393047817077806638)
,p_event_id=>wwv_flow_imp.id(393046824426806628)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P782_CANTIDAD,P782_CANTIDAD_RECIBIDA,P782_CANTIDAD_FALTA,P782_CANTIDAD_SOBRA'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(393706734513494305)
,p_event_id=>wwv_flow_imp.id(393046824426806628)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>':P782_CANTIDAD_RECIBIDA :=0;'
,p_attribute_03=>'P782_CANTIDAD_RECIBIDA'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(393047017494806630)
,p_event_id=>wwv_flow_imp.id(393046824426806628)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'    SELECT',
'        C001 cod_articulo,                             ',
'        C002 cantidad,										       ',
'        C003 cod_origen,',
'        C004 cod_alterno,',
'        c007 CANTIDAD_RECIIBIDA',
'         ',
'    into ',
'        :P782_COD_ARTICULO,',
'        :P782_CANTIDAD,',
'        :P782_COD_ORIGEN,',
'        :P782_COD_ALTERNO,',
'        :P782_CANTIDAD_RECIBIDA',
'            ',
'    FROM  APEX_COLLECTIONS',
'    WHERE COLLECTION_NAME = ''COL_CM_REC_PEDIDO_DET''',
'    and  SEQ_ID = :P782_SEQ_ID_EDITAR;',
'exception',
'    when others then',
'       :P782_COD_ARTICULO := null;',
'        :P782_CANTIDAD := null;',
'        :P782_COD_ORIGEN := null;',
'        :P782_COD_ALTERNO := null;',
'end;',
''))
,p_attribute_02=>'P782_SEQ_ID_EDITAR'
,p_attribute_03=>'P782_COD_ARTICULO,P782_CANTIDAD,P782_COD_ORIGEN,P782_COD_ALTERNO,P782_CANTIDAD_RECIBIDA'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(393046931942806629)
,p_event_id=>wwv_flow_imp.id(393046824426806628)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(392745157673843050)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(393047561554806635)
,p_name=>'DA_CANTIDAD_RECIBIDA'
,p_event_sequence=>40
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P782_CANTIDAD_RECIBIDA'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(393047627701806636)
,p_event_id=>wwv_flow_imp.id(393047561554806635)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'  CASE',
'    WHEN NVL(:P782_CANTIDAD,0)>  NVL(to_number(:P782_CANTIDAD_RECIBIDA),0) THEN ',
'        :P782_CANTIDAD_FALTA:= NVL(:P782_CANTIDAD,0)-NVL(:P782_CANTIDAD_RECIBIDA,0) ;',
'	    :P782_CANTIDAD_SOBRA:=0;',
'    WHEN NVL(:P782_CANTIDAD,0)< NVL(to_number(:P782_CANTIDAD_RECIBIDA),0) THEN ',
'        :P782_CANTIDAD_SOBRA:= NVL(:P782_CANTIDAD_RECIBIDA,0)-NVL(:P782_CANTIDAD,0) ;',
'	    :P782_CANTIDAD_FALTA:=0;',
'    ELSE ',
'        :P782_CANTIDAD_FALTA:= 0 ;',
'	    :P782_CANTIDAD_SOBRA:=0;',
'  END CASE;',
'END; '))
,p_attribute_02=>'P782_CANTIDAD,P782_CANTIDAD_RECIBIDA'
,p_attribute_03=>'P782_CANTIDAD_FALTA,P782_CANTIDAD_SOBRA'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(393048179005806641)
,p_name=>'DA_ACEPTAR'
,p_event_sequence=>50
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(393045124120806611)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(393048242909806642)
,p_event_id=>wwv_flow_imp.id(393048179005806641)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'CMRECPED.PR_EDITAR_DETALLE(PI_SEQ_ID => :P782_SEQ_ID_EDITAR,',
'                PI_CANTIDAD_RECIBIDA => :P782_CANTIDAD_RECIBIDA,',
'                PI_CANTIDAD_FALTA => :P782_CANTIDAD_FALTA,',
'                PI_CANTIDAD_SOBRA => :P782_CANTIDAD_SOBRA,',
'                PI_TRASLADADO => :P782_TRASLADADO,',
'                PO_MSJ => :P782_MSJ);'))
,p_attribute_02=>'P782_CANTIDAD_RECIBIDA,P782_CANTIDAD_FALTA,P782_CANTIDAD_SOBRA,P782_TRASLADADO,P782_SEQ_ID_EDITAR'
,p_attribute_03=>'P782_MSJ'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(393048663036806646)
,p_event_id=>wwv_flow_imp.id(393048179005806641)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(392741783548843016)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(393048760310806647)
,p_event_id=>wwv_flow_imp.id(393048179005806641)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(392745157673843050)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(393048417454806644)
,p_name=>'DA_MSJ'
,p_event_sequence=>60
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P782_MSJ'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(393048577382806645)
,p_event_id=>wwv_flow_imp.id(393048417454806644)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'&P782_MSJ.'
,p_attribute_03=>'information'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(393706457248494302)
,p_name=>'DA_CONFIRMAR'
,p_event_sequence=>70
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(393048919723806649)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(393706506253494303)
,p_event_id=>wwv_flow_imp.id(393706457248494302)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>unistr('\00BFDesea guardar los cambios?')
,p_attribute_03=>'information'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(393706606176494304)
,p_event_id=>wwv_flow_imp.id(393706457248494302)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_01=>'CONFIRMAR'
,p_attribute_02=>'Y'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(393048847706806648)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_CONFIRMAR_DATOS'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'CMRECPED.PR_CONFIRMAR_CAMBIOS(PI_COD_EMPRESA => :P_COD_EMPRESA,',
'                            PI_TIP_COMPROBANTE => :P782_TIP_COMPROBANTE,',
'                            PI_SER_COMPROBANTE => :P782_SER_COMPROBANTE,',
'                            PI_NRO_COMPROBANTE => :P782_NRO_COMPROBANTE,',
'                            PO_MSJ => :P782_MSJ); '))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'&P782_MSJ.'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CONFIRMAR'
,p_process_when_type=>'REQUEST_EQUALS_CONDITION'
,p_process_success_message=>'&P782_MSJ.'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(392744969982843048)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_INIT'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P782_NRO_COMPROBANTE :=  :P782_P_NRO_COMPROBANTE;',
':P782_SER_COMPROBANTE := :P782_P_SER_COMPROBANTE;',
':P782_TIP_COMPROBANTE := :P782_P_TIP_COMPROBANTE;',
':P782_P_CARGA_PEDIDO := ''S'';',
'',
'APEX_COLLECTION.CREATE_OR_TRUNCATE_COLLECTION(P_COLLECTION_NAME => ''COL_CM_REC_PEDIDO_DET'');',
''))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(393045565615806615)
,p_process_sequence=>20
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'WHEN-NEW-BLOCK-INSTANCE'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF :P782_P_CARGA_PEDIDO= ''S'' THEN',
'  IF :P782_P_TIP_COMPROBANTE  IN( ''FAC'',''FAJ'') THEN',
'    DECLARE ',
'      v_cod_origen_art VARCHAR2(100);',
'      v_desc_articulo  VARCHAR2(100);',
'      CURSOR pedidos',
'          is select c.tip_comprobante, c.ser_comprobante, c.nro_comprobante, c.cod_moneda,',
'                   d.cod_articulo, d.cod_unidad_medida, nvl( d.cantidad, 0 ) cantidad,',
'                   nvl( d.precio_unitario, 0 ) precio_unitario, nvl( d.monto_total, 0 ) monto_total, ',
'                   a.cod_origen_art cod_origen, a.cod_alterno                   ',
'              from cm_compras_cabecera c, cm_compras_detalle d, st_articulos a',
'             where c.cod_empresa = :P_cod_empresa',
'               and c.cod_empresa = d.cod_empresa               ',
'               and c.tip_comprobante = :P782_P_tip_comprobante ',
'               and c.ser_comprobante = :P782_P_ser_comprobante ',
'               and c.nro_comprobante = :P782_P_nro_comprobante ',
'               and c.tip_comprobante = d.tip_comprobante',
'               and c.ser_comprobante = d.ser_comprobante',
'               and c.nro_comprobante = d.nro_comprobante',
'               and d.cod_empresa=a.cod_empresa',
'               and d.cod_articulo=a.cod_articulo               ',
'             order by lpad( d.cod_articulo, 20, '' '' );',
'    BEGIN ',
'      FOR det_ped IN pedidos LOOP',
'        BEGIN',
'          select descripcion, cod_origen_art',
'            into v_desc_articulo, v_cod_origen_art',
'            from st_articulos',
'           where cod_empresa = :p_cod_empresa',
'             and cod_articulo = det_ped.cod_articulo; ',
'        EXCEPTION',
'          when others then',
'            v_desc_articulo := NULL;',
'            v_cod_origen_art := NULL;',
'        END;',
'        APEX_COLLECTION.ADD_MEMBER (P_COLLECTION_NAME => ''COL_CM_REC_PEDIDO_DET'',',
'                            P_C001 => det_ped.cod_articulo,                             ',
'                            P_C002 => det_ped.cantidad,										       ',
'                            P_C003 => det_ped.cod_origen,',
'                            P_C004 => det_ped.cod_alterno,',
'                            P_C005 => v_desc_articulo,',
'                            P_C006 => v_cod_origen_art );          ',
'        ',
'      END LOOP;',
'     ',
'    END;',
'    ',
'  ELSIF :P782_P_tip_comprobante = ''EMB'' THEN',
'    DECLARE',
'      vinicio VARCHAR2(1);',
'      CURSOR embarques',
'          is select c.tip_comprobante, c.ser_comprobante, c.nro_comprobante, c.cod_moneda,',
'                   d.cod_articulo, d.cod_unidad_medida, nvl( d.cantidad, 0 ) cantidad,',
'                   nvl( d.precio_unitario, 0 ) precio_unitario, nvl( d.monto_total, 0 ) monto_total,',
'                    s.cod_origen_art cod_origen, s.cod_alterno',
'              from cm_compras_cabecera c, cm_compras_detalle d, st_articulos s',
'             where c.cod_empresa = :P_cod_empresa',
'               and c.cod_empresa = d.cod_empresa               ',
'               and c.tip_comprobante = :P782_P_tip_comprobante ',
'               and c.ser_comprobante = :P782_P_ser_comprobante ',
'               and c.nro_comprobante = :P782_P_nro_comprobante ',
'               and c.tip_comprobante = d.tip_comprobante',
'               and c.ser_comprobante = d.ser_comprobante',
'               and c.nro_comprobante = d.nro_comprobante',
'               and s.cod_empresa=d.cod_empresa',
'               and s.cod_articulo=d.cod_articulo',
'               ',
'             order by lpad( d.cod_articulo, 20, '' '' );',
'    BEGIN ',
'      FOR det_emb IN embarques LOOP',
'        APEX_COLLECTION.ADD_MEMBER (P_COLLECTION_NAME => ''COL_CM_REC_PEDIDO_DET'',',
'                            P_C001 => det_emb.cod_articulo,                             ',
'                            P_C002 => det_emb.cantidad,										       ',
'                            P_C003 => det_emb.cod_origen,',
'                            P_C004 => det_emb.cod_alterno,',
'                            P_C005 => null,',
'                            P_C006 => null );  ',
'  ',
'      END LOOP;',
'    EXCEPTION',
'      when others then',
'        APEX_DEBUG.ERROR(''Error en el cursor ''||sqlerrm);',
'    END; ',
'  END IF;',
'END IF;',
':P782_P_CARGA_PEDIDO := ''N'';'))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_imp.component_end;
end;
/
