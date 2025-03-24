prompt --application/pages/page_00273
begin
--   Manifest
--     PAGE: 00273
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
 p_id=>273
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'SMSTKOBR'
,p_alias=>'SMSTKOBR'
,p_step_title=>'SMSTKOBR'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_last_updated_by=>'JUANASIS'
,p_last_upd_yyyymmddhh24miss=>'20230105153235'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(66731795758990018)
,p_plug_name=>'VARIABLES'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>1000
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(66732400103990025)
,p_plug_name=>'RETIRO DE MATERIALES PARA OBRAS'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>990
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(66734369199990044)
,p_plug_name=>'DETALLE'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>1010
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(67726053171728805)
,p_plug_name=>'DETALLE ARTICULOS'
,p_parent_plug_id=>wwv_flow_imp.id(66734369199990044)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'    seq_id p_id,',
'    c001 COD_ARTICULO,',
'    c002 DESC_ARTICULO,',
'    c003 CANTIDAD,',
'    c004 CANTIDAD_REMITIDA,',
'    c005 CANTIDAD_DISPONIBLE,     ',
'    C021 RID,',
'    null editar,',
'    null eliminar ',
'from apex_collections',
'     ',
'where collection_name = ''COL_DETALLE''',
'AND nvl(c030, ''O'') <> ''B'' ',
'ORDER BY 1;'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'DETALLE ARTICULOS'
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
 p_id=>wwv_flow_imp.id(67726755718728812)
,p_max_row_count=>'1000000'
,p_no_data_found_message=>'NO SE ENCONTRARON REGISTROS'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_actions_menu=>'N'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_enable_mail_download=>'Y'
,p_owner=>'JUANASIS'
,p_internal_uid=>67726755718728812
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(67726835190728813)
,p_db_column_name=>'P_ID'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'P Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(67726913701728814)
,p_db_column_name=>'COD_ARTICULO'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Cod Articulo'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(67727676819728821)
,p_db_column_name=>'RID'
,p_display_order=>90
,p_column_identifier=>'C'
,p_column_label=>'Rid'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(67727836298728823)
,p_db_column_name=>'EDITAR'
,p_display_order=>110
,p_column_identifier=>'D'
,p_column_label=>'Editar'
,p_column_link=>'javascript:$s(''P273_SEQ_ID_EDITAR'',''#P_ID#'');'
,p_column_linktext=>'<span aria-hidden="true" class="fa fa-edit"></span>'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(67727945344728824)
,p_db_column_name=>'ELIMINAR'
,p_display_order=>120
,p_column_identifier=>'E'
,p_column_label=>'Eliminar'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(67728056815728825)
,p_db_column_name=>'DESC_ARTICULO'
,p_display_order=>130
,p_column_identifier=>'F'
,p_column_label=>'Desc Articulo'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(67728179407728826)
,p_db_column_name=>'CANTIDAD'
,p_display_order=>140
,p_column_identifier=>'G'
,p_column_label=>'Cantidad'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(67728261263728827)
,p_db_column_name=>'CANTIDAD_REMITIDA'
,p_display_order=>150
,p_column_identifier=>'H'
,p_column_label=>'Cantidad Remitida'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(67728329245728828)
,p_db_column_name=>'CANTIDAD_DISPONIBLE'
,p_display_order=>160
,p_column_identifier=>'I'
,p_column_label=>'Cantidad Disponible'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(67802267475231484)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'678023'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'COD_ARTICULO:DESC_ARTICULO:CANTIDAD:CANTIDAD_REMITIDA:CANTIDAD_DISPONIBLE:'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(66734434528990045)
,p_plug_name=>'AGREGAR/EDITAR DETALLE'
,p_region_template_options=>'#DEFAULT#:js-dialog-autoheight:js-dialog-size600x400'
,p_plug_template=>wwv_flow_imp.id(40117728043263659)
,p_plug_display_sequence=>1020
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(67726648244728811)
,p_button_sequence=>70
,p_button_plug_id=>wwv_flow_imp.id(66734434528990045)
,p_button_name=>'BT_CANCELAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_image_alt=>'Cancelar'
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(66734079320990041)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(66732400103990025)
,p_button_name=>'BT_NOT'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_image_alt=>'CANCELADO'
,p_button_position=>'CREATE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(66733969122990040)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(66732400103990025)
,p_button_name=>'BT_LISTO'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'PREPARADO'
,p_button_position=>'CREATE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(66733858777990039)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(66732400103990025)
,p_button_name=>'BT_OK'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'RETIRADO'
,p_button_position=>'CREATE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(67726525811728810)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_imp.id(66734434528990045)
,p_button_name=>'BT_ACEPTAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>' Aceptar'
,p_button_position=>'CREATE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(68589792722044130)
,p_button_sequence=>70
,p_button_plug_id=>wwv_flow_imp.id(66734434528990045)
,p_button_name=>'BT_ACEPTAR_EDITAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>' Aceptar'
,p_button_position=>'CREATE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(67726124135728806)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(66734369199990044)
,p_button_name=>'BT_AGREGAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Agregar'
,p_button_position=>'EDIT'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(66734116293990042)
,p_button_sequence=>180
,p_button_plug_id=>wwv_flow_imp.id(66732400103990025)
,p_button_name=>'BT_IMPRIMIR'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Imprimir'
,p_button_position=>'EDIT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(66734271292990043)
,p_button_sequence=>180
,p_button_plug_id=>wwv_flow_imp.id(66732400103990025)
,p_button_name=>'BT_CONFIRMAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Confirmar'
,p_button_position=>'EDIT'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(66731820546990019)
,p_name=>'P273_COD_USUARIO'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(66732400103990025)
,p_prompt=>'SOLICITA'
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
 p_id=>wwv_flow_imp.id(66731979122990020)
,p_name=>'P273_COD_EMPRESA'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(66731795758990018)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(66732008279990021)
,p_name=>'P273_NOM_EMPRESA'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(66731795758990018)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(66732151235990022)
,p_name=>'P273_COD_SUCURSAL'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(66732400103990025)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(66732211671990023)
,p_name=>'P273_NOM_SUCURSAL'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(66731795758990018)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(66732335421990024)
,p_name=>'P273_COD_MODULO'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(66731795758990018)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(66732504363990026)
,p_name=>'P273_TIP_COMPROBANTE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(66732400103990025)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(66732609600990027)
,p_name=>'P273_SER_COMPROBANTE'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_imp.id(66732400103990025)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(66732756638990028)
,p_name=>'P273_NRO_COMPROBANTE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(66732400103990025)
,p_prompt=>'NRO. CONTROL'
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
 p_id=>wwv_flow_imp.id(66732834921990029)
,p_name=>'P273_FEC_COMPROBANTE'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(66732400103990025)
,p_prompt=>'FECHA'
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
 p_id=>wwv_flow_imp.id(66732997168990030)
,p_name=>'P273_TIP_COMPROBANTE_REF'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(66732400103990025)
,p_prompt=>'TIPO OBRA'
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
 p_id=>wwv_flow_imp.id(66733009369990031)
,p_name=>'P273_SER_COMPROBANTE_REF'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(66732400103990025)
,p_prompt=>'SER. OBRA'
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
 p_id=>wwv_flow_imp.id(66733112550990032)
,p_name=>'P273_NRO_COMPROBANTE_REF'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(66732400103990025)
,p_prompt=>'NRO. OBRA'
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
 p_id=>wwv_flow_imp.id(66733254904990033)
,p_name=>'P273_ENCARGADO_RETIRA'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(66732400103990025)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(66733339121990034)
,p_name=>'P273_COD_TECNICO'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(66732400103990025)
,p_prompt=>unistr('T\00C9CNICO RETIRA')
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_TECNICOS_SMSTKOBR'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ltrim(rtrim(nvl(p.nombre, p.nomb_fantasia))) nombre, c.cod_proveedor',
'  from cm_proveedores c, personas p',
' where c.cod_empresa = :P_COD_EMPRESA',
'   and c.cod_persona = p.cod_persona',
'AND NVL(C.ESTADO,''A'')NOT IN (''I'')'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(66733463763990035)
,p_name=>'P273_OBSERVACION'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(66732400103990025)
,p_prompt=>unistr('OBSERVACI\00D3N')
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
 p_id=>wwv_flow_imp.id(66733523791990036)
,p_name=>'P273_DESC_SUCURSAL'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(66732400103990025)
,p_prompt=>'SUCURSAL'
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
 p_id=>wwv_flow_imp.id(66733618088990037)
,p_name=>'P273_ESTADO'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(66732400103990025)
,p_prompt=>'ESTADO'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:PENDIENTE;P,RETIRADO;R,CANCELADO;C,PREPARADO;L'
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- seleccione -'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(66733796060990038)
,p_name=>'P273_USUARIO_CONFIRMA'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(66732400103990025)
,p_prompt=>'CONFIRMA'
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
 p_id=>wwv_flow_imp.id(66734596600990046)
,p_name=>'P273_COD_ARTICULO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(66734434528990045)
,p_prompt=>'Articulo'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_ARTICULOS_SMSTKOBR'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select descripcion, ',
'         cod_articulo,',
'         cod_art_corto ',
' from st_articulos',
'where cod_empresa = :P_COD_EMPRESA;',
'   '))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(66734685204990047)
,p_name=>'P273_DESC_ARTICULO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(66734434528990045)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(66734731396990048)
,p_name=>'P273_CANTIDAD'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(66734434528990045)
,p_prompt=>'Cantidad'
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
 p_id=>wwv_flow_imp.id(66734827626990049)
,p_name=>'P273_CANTIDAD_REMTIDA'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(66734434528990045)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(66734958127990050)
,p_name=>'P273_CANTIDAD_DISPONIBLE'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(66734434528990045)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(67725817013728803)
,p_name=>'P273_MENSAJE'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(66731795758990018)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(67728916004728834)
,p_name=>'P273_AUX_MSJ_CONTROL'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(66731795758990018)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(68589474791044127)
,p_name=>'P273_SEQ_ID_EDITAR'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(66734434528990045)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(67725666547728801)
,p_name=>'DA_OK'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(66733858777990039)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(67725786828728802)
,p_event_id=>wwv_flow_imp.id(67725666547728801)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF SMSTKOBR.VALIDA_CANT_ART(PI_COD_EMPRESA => :P273_COD_EMPRESA,',
'                        PI_TIP_COMPROBANTE_REF => :P273_TIP_COMPROBANTE_REF,',
'                        PI_SER_COMPROBANTE_REF => :P273_SER_COMPROBANTE_REF,',
'                        PI_NRO_COMPROBANTE_REF => :P273_NRO_COMPROBANTE_REF) THEN',
'     :P273_ESTADO := ''R'';',
'     :P273_USUARIO_CONFIRMA:=USER;',
'     COMMIT;',
'ELSE',
'	:P273_MENSAJE := ''Las cantidades solicitada no corresponden a la cantidad existente'' ;',
' ',
'END IF;'))
,p_attribute_02=>'P273_COD_EMPRESA,P273_TIP_COMPROBANTE_REF,P273_SER_COMPROBANTE_REF,P273_NRO_COMPROBANTE_REF'
,p_attribute_03=>'P273_ESTADO,P273_USUARIO_CONFIRMA,P273_MENSAJE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(68587640897044109)
,p_event_id=>wwv_flow_imp.id(67725666547728801)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(67726053171728805)
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P273_MENSAJE'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(68588213378044115)
,p_event_id=>wwv_flow_imp.id(67725666547728801)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'&P273_MENSAJE.'
,p_attribute_02=>'Mensaje'
,p_attribute_03=>'warning'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P273_MENSAJE'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(68588964759044122)
,p_event_id=>wwv_flow_imp.id(67725666547728801)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(66734271292990043)
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P273_MENSAJE'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(68589037692044123)
,p_event_id=>wwv_flow_imp.id(67725666547728801)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(66734271292990043)
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P273_MENSAJE'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(67726203174728807)
,p_name=>'DA_ABRIR_REGION'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(67726124135728806)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(67728697726728831)
,p_event_id=>wwv_flow_imp.id(67726203174728807)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P273_COD_ARTICULO,P273_CANTIDAD'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(67726330551728808)
,p_event_id=>wwv_flow_imp.id(67726203174728807)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(66734434528990045)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(68590279917044135)
,p_event_id=>wwv_flow_imp.id(67726203174728807)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(68589792722044130)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(68590198929044134)
,p_event_id=>wwv_flow_imp.id(67726203174728807)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(67726525811728810)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(67728751543728832)
,p_name=>'DA_GUARDAR'
,p_event_sequence=>30
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(67726525811728810)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(67728804604728833)
,p_event_id=>wwv_flow_imp.id(67728751543728832)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF :P273_COD_ARTICULO IS NULL THEN',
'    ',
unistr('    :P273_AUX_MSJ_CONTROL := ''Debe ingresar el Art\00EDculo.'';'),
'       ELSIF :P273_CANTIDAD IS NULL THEN',
'        :P273_AUX_MSJ_CONTROL := ''INGRESE LA CANTIDAD'';',
'        ELSE ',
'           BEGIN',
'                 SMSTKOBR.pr_agregar_detalle( ',
'                 PI_COD_ARTICULO  => :P273_COD_ARTICULO,',
'                 PI_CANTIDAD  => :P273_CANTIDAD,',
'                 PI_COD_EMPRESA  => :P273_COD_EMPRESA,',
'                 PI_TIP_COMPROBANTE_REF => :P273_TIP_COMPROBANTE_REF,',
'                 PI_SER_COMPROBANTE_REF  => :P273_SER_COMPROBANTE_REF,',
'                 PI_NRO_COMPROBANTE_REF  => :P273_NRO_COMPROBANTE_REF  );',
'                 ',
'             EXCEPTION',
'',
'                WHEN OTHERS THEN',
'                  apex_debug.error(sqlerrm);',
'            END;',
'END IF;'))
,p_attribute_02=>'P273_TIP_COMPROBANTE_REF,P273_SER_COMPROBANTE_REF,P273_NRO_COMPROBANTE_REF,P273_COD_ARTICULO,P273_COD_EMPRESA,P273_AUX_MSJ_CONTROL,P273_CANTIDAD'
,p_attribute_03=>'P273_AUX_MSJ_CONTROL'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(67729270810728837)
,p_event_id=>wwv_flow_imp.id(67728751543728832)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'&P273_AUX_MSJ_CONTROL.'
,p_attribute_02=>'ERROR'
,p_attribute_03=>'warning'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P273_AUX_MSJ_CONTROL'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(67729379961728838)
,p_event_id=>wwv_flow_imp.id(67728751543728832)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(67726053171728805)
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P273_AUX_MSJ_CONTROL'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(67729483693728839)
,p_event_id=>wwv_flow_imp.id(67728751543728832)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(66734434528990045)
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P273_AUX_MSJ_CONTROL'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(68587556309044108)
,p_event_id=>wwv_flow_imp.id(67728751543728832)
,p_event_result=>'TRUE'
,p_action_sequence=>80
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'NUEVO REGISTRO AGREGADO'
,p_attribute_02=>unistr('\00C9XITO')
,p_attribute_03=>'success'
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P273_AUX_MSJ_CONTROL'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(67729003386728835)
,p_name=>'DA_CANCELAR'
,p_event_sequence=>40
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(67726648244728811)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(67729164722728836)
,p_event_id=>wwv_flow_imp.id(67729003386728835)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(66734434528990045)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(68587783750044110)
,p_name=>'DA_CANCEL'
,p_event_sequence=>50
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(66734079320990041)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(68587867918044111)
,p_event_id=>wwv_flow_imp.id(68587783750044110)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>':P273_ESTADO := ''C'';'
,p_attribute_03=>'P273_ESTADO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(68588632653044119)
,p_event_id=>wwv_flow_imp.id(68587783750044110)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(66734271292990043)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(68587916760044112)
,p_name=>'DA_LISTO'
,p_event_sequence=>60
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(66733969122990040)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(68588097755044113)
,p_event_id=>wwv_flow_imp.id(68587916760044112)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P273_MENSAJE := null;',
'IF SMSTKOBR.VALIDA_CANT_ART(PI_COD_EMPRESA => :P273_COD_EMPRESA,',
'                        PI_TIP_COMPROBANTE_REF => :P273_TIP_COMPROBANTE_REF,',
'                        PI_SER_COMPROBANTE_REF => :P273_SER_COMPROBANTE_REF,',
'                        PI_NRO_COMPROBANTE_REF => :P273_NRO_COMPROBANTE_REF) THEN',
' :P273_ESTADO := ''L''; ',
' COMMIT;',
'ELSE',
'	:P273_MENSAJE := ''Las cantidades solicitada no corresponden a la cantidad existente'' ;',
'    ',
' ',
'END IF;'))
,p_attribute_02=>'P273_COD_EMPRESA,P273_TIP_COMPROBANTE_REF,P273_SER_COMPROBANTE_REF,P273_NRO_COMPROBANTE_REF'
,p_attribute_03=>'P273_ESTADO,P273_MENSAJE'
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
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(68588195655044114)
,p_event_id=>wwv_flow_imp.id(68587916760044112)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(67726053171728805)
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P273_MENSAJE'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(67725964726728804)
,p_event_id=>wwv_flow_imp.id(68587916760044112)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'&P273_MENSAJE.'
,p_attribute_02=>'Mensaje'
,p_attribute_03=>'warning'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P273_MENSAJE'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(68588508879044118)
,p_event_id=>wwv_flow_imp.id(68587916760044112)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(66734271292990043)
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P273_MENSAJE'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(68588861833044121)
,p_event_id=>wwv_flow_imp.id(68587916760044112)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(66734271292990043)
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P273_MENSAJE'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(68589101964044124)
,p_name=>'DA_DESHABILITAR_CONF'
,p_event_sequence=>70
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
,p_display_when_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(68589295784044125)
,p_event_id=>wwv_flow_imp.id(68589101964044124)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(66734271292990043)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(68589567098044128)
,p_name=>'DA_EDITAR'
,p_event_sequence=>80
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P273_SEQ_ID_EDITAR'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(68590070679044133)
,p_event_id=>wwv_flow_imp.id(68589567098044128)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    SELECT ',
'        C001 COD_ARTICULO,',
'        C003 CANTIDAD',
'    INTO',
'        :P273_COD_ARTICULO,',
'        :P273_CANTIDAD',
'    FROM APEX_COLLECTIONS',
'    WHERE COLLECTION_NAME = ''COL_DETALLE''',
'    AND SEQ_ID = :P273_SEQ_ID_EDITAR;',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(''ERROR EN EDITAR ARTICULO ''||SQLERRM );',
'END;'))
,p_attribute_02=>'P273_SEQ_ID_EDITAR'
,p_attribute_03=>'P273_COD_ARTICULO,P273_CANTIDAD'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(68589648181044129)
,p_event_id=>wwv_flow_imp.id(68589567098044128)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(68589792722044130)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(68589844558044131)
,p_event_id=>wwv_flow_imp.id(68589567098044128)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(67726525811728810)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(68589965722044132)
,p_event_id=>wwv_flow_imp.id(68589567098044128)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(66734434528990045)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(68590350101044136)
,p_name=>'DA_GUARDAR_EDITAR'
,p_event_sequence=>90
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(68589792722044130)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(68590409524044137)
,p_event_id=>wwv_flow_imp.id(68590350101044136)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF :P273_COD_ARTICULO IS NULL THEN',
'    ',
unistr('    :P273_AUX_MSJ_CONTROL := ''Debe ingresar el Art\00EDculo.'';'),
'    ELSIF :P273_CANTIDAD IS NULL THEN',
'        :P273_AUX_MSJ_CONTROL := ''INGRESE LA CANTIDAD'';',
'        ELSE ',
'             BEGIN',
'             SMSTKOBR.pr_modificar_miembro(     PI_COD_EMPRESA => :P273_COD_EMPRESA,',
'                                    PI_TIP_COMPROBANTE_REF => :P273_TIP_COMPROBANTE_REF,',
'                                    PI_SER_COMPROBANTE_REF => :P273_SER_COMPROBANTE_REF,',
'                                    PI_NRO_COMPROBANTE_REF => :P273_NRO_COMPROBANTE_REF,',
'                                    PI_SEQ_ID_EDITAR => :P273_SEQ_ID_EDITAR,',
'                                    PI_COD_ARTICULO => :P273_COD_ARTICULO,',
'                                    PI_CANTIDAD => :P273_CANTIDAD  );',
'             EXCEPTION',
'             WHEN OTHERS THEN',
'                APEX_DEBUG.ERROR(''ERROR EN EDITAR MIEMBRO ''||SQLERRM);',
'            END;',
'END IF;'))
,p_attribute_02=>'P273_SEQ_ID_EDITAR,P273_COD_EMPRESA,P273_TIP_COMPROBANTE_REF,P273_SER_COMPROBANTE_REF,P273_NRO_COMPROBANTE_REF,P273_COD_ARTICULO,P273_CANTIDAD'
,p_attribute_03=>'P273_AUX_MSJ_CONTROL'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(68590534722044138)
,p_event_id=>wwv_flow_imp.id(68590350101044136)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'&P273_AUX_MSJ_CONTROL.'
,p_attribute_02=>'ERROR'
,p_attribute_03=>'warning'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P273_AUX_MSJ_CONTROL'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(68590661758044139)
,p_event_id=>wwv_flow_imp.id(68590350101044136)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(67726053171728805)
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P273_AUX_MSJ_CONTROL'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(68590739114044140)
,p_event_id=>wwv_flow_imp.id(68590350101044136)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(66734434528990045)
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P273_AUX_MSJ_CONTROL'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(68590884097044141)
,p_event_id=>wwv_flow_imp.id(68590350101044136)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'REGISTRO EDITADO'
,p_attribute_02=>unistr('\00C9XITO')
,p_attribute_03=>'success'
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P273_AUX_MSJ_CONTROL'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(68590913823044142)
,p_name=>'DA_CONFIRMAR_DATOS'
,p_event_sequence=>100
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(66734271292990043)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(68591052497044143)
,p_event_id=>wwv_flow_imp.id(68590913823044142)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>unistr('\00BFDesea continuar?')
,p_attribute_02=>'CONFIRMAR'
,p_attribute_03=>'success'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(68591118305044144)
,p_event_id=>wwv_flow_imp.id(68590913823044142)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_01=>'CONFIRMAR'
,p_attribute_02=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(68591338238044146)
,p_event_id=>wwv_flow_imp.id(68590913823044142)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P273_TIP_COMPROBANTE_REF,P273_SER_COMPROBANTE_REF,P273_NRO_COMPROBANTE_REF,P273_OBSERVACION,P273_USUARIO_CONFIRMA'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(68591222732044145)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_CONFIRMAR_DATOS'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN ',
'     ',
'    SMSTKOBR.pr_confirmar_accion( PI_COD_EMPRESA => :P273_COD_EMPRESA,',
'        PI_TIP_COMPROBANTE => :P273_TIP_COMPROBANTE,',
'        PI_SER_COMPROBANTE => :P273_SER_COMPROBANTE,',
'        PI_NRO_COMPROBANTE => :P273_NRO_COMPROBANTE, ',
'        PI_COD_SUCURSAL => :P273_COD_SUCURSAL,',
'        PI_FEC_COMPROBANTE => :P273_FEC_COMPROBANTE ,',
'        PI_TIP_COMPROBANTE_REF => :P273_TIP_COMPROBANTE_REF,',
'        PI_SER_COMPROBANTE_REF => :P273_SER_COMPROBANTE_REF,',
'        PI_NRO_COMPROBANTE_REF => :P273_NRO_COMPROBANTE_REF,',
'        PI_COD_USUARIO => :P273_COD_USUARIO,',
'        PI_ENCARGADO_RETIRA => :P273_ENCARGADO_RETIRA,',
'        PI_OBSERVACION => :P273_OBSERVACION,',
'        PI_ESTADO => :P273_ESTADO,',
'        PI_USUARIO_CONFIRMA => :P273_USUARIO_CONFIRMA,',
'        PI_COD_TECNICO => :P273_COD_TECNICO);',
'    EXCEPTION',
'            WHEN OTHERS THEN',
'                APEX_DEBUG.ERROR(''Error en procedimiento confirmar accion'');',
'                APEX_DEBUG.ERROR(sqlerrm);',
'',
'',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CONFIRMAR'
,p_process_when_type=>'REQUEST_EQUALS_CONDITION'
,p_process_success_message=>'Los datos se guardaron exitosamente'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(66731611623990017)
,p_process_sequence=>20
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_INIT'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    :P273_COD_USUARIO := NVL(:P_COD_USUARIO, USER);',
'    :P273_COD_EMPRESA := NVL(:P_COD_EMPRESA,''1'');',
'    :P273_NOM_EMPRESA := NVL(:P_NOM_EMPRESA, NULL);',
'    :P273_COD_SUCURSAL := NVL(:P_COD_SUCURSAL,NULL);',
'    :P273_NOM_SUCURSAL := NVL(:P_NOM_SUCURSAL,NULL);',
'    :P273_COD_MODULO := NVL(:P_COD_MODULO, ''SM'');',
'    :P273_MENSAJE := null;',
'    :P273_AUX_MSJ_CONTROL := null;',
'    apex_collection.create_or_truncate_collection( p_collection_name => ''COL_DETALLE'');',
'',
'    --WHEN CREATED RECORD- bloque cabecera',
'        ',
'   :P273_COD_SUCURSAL := nvl(:P_COD_SUCURSAL,''01'');',
'   :P273_COD_EMPRESA  := nvl(:P_COD_EMPRESA,''1''); ',
'   :P273_COD_USUARIO := nvl(:P_COD_USUARIO,user);',
'',
'   SMSTKOBR.pr_crear_nuevo_retiro (',
'       PI_COD_EMPRESA => :P273_COD_EMPRESA,       ',
'       PO_TIP_COMPROBANTE => :P273_TIP_COMPROBANTE,',
'       PO_SER_COMPROBANTE => :P273_SER_COMPROBANTE,',
'       PO_NRO_COMPROBANTE => :P273_NRO_COMPROBANTE,',
'       PO_FEC_COMPROBANTE => :P273_FEC_COMPROBANTE,',
'       PO_ESTADO => :P273_ESTADO',
'   );',
'',
'   --when validate item cod COD_EMPRESA',
'     IF :P273_COD_SUCURSAL IS NOT NULL THEN',
'      ',
'      BEGIN',
'        select descripcion',
'          into :P273_DESC_SUCURSAL',
'          from sucursales',
'         where cod_empresa = :P273_COD_EMPRESA',
'           and cod_sucursal = :P273_COD_SUCURSAL;',
'      EXCEPTION',
'        when no_data_found then',
'          :P273_DESC_SUCURSAL := NULL;',
unistr('          raise_application_error(-20201,''No se encuentra el c\00F3digo de sucursal.'');'),
'        when others then',
'          :P273_DESC_SUCURSAL := NULL;',
'          raise_application_error(-20201,''Error en tabla sucursales.'');',
'      END;',
'    END IF;',
'',
' EXCEPTION',
'  WHEN OTHERS THEN',
'  APEX_DEBUG.ERROR(''ERROR EN PR_INIT'');',
'END;'))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_imp.component_end;
end;
/
