prompt --application/pages/page_00405
begin
--   Manifest
--     PAGE: 00405
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
 p_id=>405
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'BTL(MODAL)'
,p_alias=>'BTL-MODAL'
,p_page_mode=>'MODAL'
,p_step_title=>'Crear Registro'
,p_autocomplete_on_off=>'OFF'
,p_javascript_file_urls=>'#APP_FILES#util_generico#MIN#.js'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_width=>'1500'
,p_dialog_chained=>'N'
,p_protection_level=>'C'
,p_page_component_map=>'02'
,p_last_updated_by=>'NZARATE'
,p_last_upd_yyyymmddhh24miss=>'20240918172609'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(115109339201235724)
,p_plug_name=>'BTL'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--textContent:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ROWID,',
'       ID,',
'       COD_EMPRESA,',
'       COD_CLIENTE,',
'       COD_SUC_CLIENTE,',
'       FECHA,',
'       COD_EMPL_ENC,',
'       ID_ASUNTO_BTL,',
'       COMENTARIO,',
'       COD_MARCA,',
'       COD_CATEGORIA,',
'       COD_ARTICULO,',
'       CREA_USER,',
'       CREA_FECHA,  horario_Activacion  ,horario_degustacion , costo_envio , costo_traslado , costo_montaje , costo_insumo , costo_total ',
'  from FV_BTL'))
,p_is_editable=>false
,p_plug_source_type=>'NATIVE_FORM'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(115110766207235738)
,p_plug_name=>'botones'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40097820288263654)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(116059048621387834)
,p_plug_name=>'Asuntos'
,p_region_name=>'ASUNTO'
,p_region_template_options=>'js-dialog-autoheight:js-modal:js-dialog-size720x480'
,p_plug_template=>wwv_flow_imp.id(40117728043263659)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(116059147955387835)
,p_plug_name=>'Asuntos'
,p_parent_plug_id=>wwv_flow_imp.id(116059048621387834)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ROWID,',
'       COD_EMPRESA,',
'       ID_ASUNTO,',
'       DESCRIPCION',
'  from FV_ASUNTOS_BTL'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Asuntos'
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
 p_id=>wwv_flow_imp.id(116059265511387836)
,p_max_row_count=>'1000000'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:406:&SESSION.::&DEBUG.::P406_ROWID:#ROWID#'
,p_detail_link_text=>'<span aria-label="Editar"  width="25" height="25"><span class="fa fa-edit" aria-hidden="true" title="Editar"></span></span>'
,p_owner=>'ETRINIDAD'
,p_internal_uid=>116059265511387836
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(116059398474387837)
,p_db_column_name=>'COD_EMPRESA'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Cod Empresa'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(116059450675387838)
,p_db_column_name=>'ID_ASUNTO'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'ID Asunto'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(116059548623387839)
,p_db_column_name=>'DESCRIPCION'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Descripcion'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(116059785357387841)
,p_db_column_name=>'ROWID'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Rowid'
,p_column_type=>'OTHER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(118904740963625078)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1189048'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'COD_EMPRESA:ID_ASUNTO:DESCRIPCION:ROWID'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(116058640507387830)
,p_button_sequence=>90
,p_button_plug_id=>wwv_flow_imp.id(115109339201235724)
,p_button_name=>'AGREGAR_ASUNTO'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#:t-Button--simple:t-Button--iconRight:t-Button--stretch:t-Button--padTop'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Agregar Asunto'
,p_button_redirect_url=>'javascript:openModal(''ASUNTO'');'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(115111188832235742)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(115110766207235738)
,p_button_name=>'CERRAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--simple:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Cerrar'
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(115110911397235740)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(115110766207235738)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--mobileHideLabel:t-Button--simple:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Crear'
,p_button_position=>'CREATE'
,p_button_condition=>'P405_ROWID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(115110849021235739)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(115110766207235738)
,p_button_name=>'BORRAR'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Borrar'
,p_button_position=>'DELETE'
,p_confirm_message=>'Desea eliminar este Registro?'
,p_confirm_style=>'warning'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF :P405_ROWID IS NOT NULL THEN ',
' DECLARE',
'VCONTROL NUMBER;',
'BEGIN',
'',
'    VCONTROL := SEGURIDAD_GRANULAR.RETORNA_PERMISO_BOTON(ppage_id     => :APP_PAGE_ID,',
'                                                         papli0100_id => :P_APLI0100_ID,',
'                                                         pcod_empresa => :P_COD_EMPRESA,',
'                                                         pusua0100_id => :P_USUA0100_ID,',
'                                                         pdm_boto     => 3); ',
'',
'    IF VCONTROL = 0 THEN',
'        RETURN FALSE;',
'    ELSE',
'        RETURN TRUE;',
'    END IF;                                                     ',
'END;',
'ELSE',
'RETURN FALSE;',
'END IF;'))
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'FUNCTION_BODY'
,p_database_action=>'DELETE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(115111092240235741)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(115110766207235738)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Aplicar Cambios'
,p_button_position=>'EDIT'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF :P405_ROWID IS NOT NULL THEN ',
' DECLARE',
'VCONTROL NUMBER;',
'BEGIN',
'',
'    VCONTROL := SEGURIDAD_GRANULAR.RETORNA_PERMISO_BOTON(ppage_id     => :APP_PAGE_ID,',
'                                                         papli0100_id => :P_APLI0100_ID,',
'                                                         pcod_empresa => :P_COD_EMPRESA,',
'                                                         pusua0100_id => :P_USUA0100_ID,',
'                                                         pdm_boto     => 3); ',
'',
'    IF VCONTROL = 0 THEN',
'        RETURN FALSE;',
'    ELSE',
'        RETURN TRUE;',
'    END IF;                                                     ',
'END;',
'ELSE',
'RETURN FALSE;',
'END IF;'))
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'FUNCTION_BODY'
,p_database_action=>'UPDATE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(118952666202105312)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(116059048621387834)
,p_button_name=>'CERRAR_REGION'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Cerrar Region'
,p_button_position=>'PREVIOUS'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(118952344163105309)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(116059147955387835)
,p_button_name=>'NUEVO_REG'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--simple:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Nuevo Registro'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:406:&SESSION.::&DEBUG.:::'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(115109523995235726)
,p_name=>'P405_ID'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(115109339201235724)
,p_item_source_plug_id=>wwv_flow_imp.id(115109339201235724)
,p_source=>'ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(115109607177235727)
,p_name=>'P405_COD_EMPRESA'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(115109339201235724)
,p_item_source_plug_id=>wwv_flow_imp.id(115109339201235724)
,p_item_default=>'P_COD_EMPRESA'
,p_item_default_type=>'ITEM'
,p_source=>'COD_EMPRESA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(115109751681235728)
,p_name=>'P405_COD_CLIENTE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(115109339201235724)
,p_item_source_plug_id=>wwv_flow_imp.id(115109339201235724)
,p_prompt=>'Cliente'
,p_source=>'COD_CLIENTE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT C.COD_CLIENTE||'' - ''||NVL(P.NOMBRE,P.NOMB_FANTASIA) D,',
'       C.COD_CLIENTE R',
'  FROM CC_CLIENTES C,',
'       PERSONAS P',
' WHERE P.COD_PERSONA = C.COD_PERSONA',
'   AND C.COD_EMPRESA = 1--:P_COD_EMPRESA',
' ORDER BY TO_NUMBER(C.COD_CLIENTE) '))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'Seleccione Cliente'
,p_lov_cascade_parent_items=>'P_COD_EMPRESA'
,p_ajax_items_to_submit=>'P_COD_EMPRESA'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>30
,p_cMaxlength=>10
,p_colspan=>5
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
,p_attribute_08=>'600'
,p_attribute_09=>'400'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(115109820188235729)
,p_name=>'P405_COD_SUC_CLIENTE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(115109339201235724)
,p_item_source_plug_id=>wwv_flow_imp.id(115109339201235724)
,p_prompt=>'Suc. Cliente'
,p_source=>'COD_SUC_CLIENTE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT B.COD_SUCURSAL||''-''||B.NOMBRE D,',
'       B.COD_SUCURSAL R ',
'  FROM Bs_Sucursal_Cliente B ',
' WHERE B.COD_EMPRESA = :P_COD_EMPRESA',
'   AND B.COD_CLIENTE = :P405_COD_CLIENTE',
'   order by to_number (B.COD_SUCURSAL)'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'Seleccione Sucursal'
,p_lov_cascade_parent_items=>'P_COD_EMPRESA,P405_COD_CLIENTE'
,p_ajax_items_to_submit=>'P_COD_EMPRESA,P405_COD_CLIENTE'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>30
,p_cMaxlength=>5
,p_begin_on_new_line=>'N'
,p_colspan=>5
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
,p_attribute_08=>'600'
,p_attribute_09=>'400'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(115109904037235730)
,p_name=>'P405_FECHA'
,p_source_data_type=>'DATE'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(115109339201235724)
,p_item_source_plug_id=>wwv_flow_imp.id(115109339201235724)
,p_prompt=>'Fecha'
,p_format_mask=>'DD/MM/YYYY'
,p_source=>'FECHA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_css_classes=>'allow_only_numbers'
,p_tag_attributes=>'onfocusout="this.value= isValidDate(this.value);" onkeyup = "setDateFormat(this);"'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(115110031969235731)
,p_name=>'P405_COD_EMPL_ENC'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(115109339201235724)
,p_item_source_plug_id=>wwv_flow_imp.id(115109339201235724)
,p_prompt=>'Empl. Encargado'
,p_source=>'COD_EMPL_ENC'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_EMPLEADOS'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT P.NOMBRE, E.COD_EMPLEADO',
'FROM RH_EMPLEADOS E, PERSONAS P',
'WHERE E.COD_EMPRESA=''1''',
'AND E.COD_PERSONA=P.COD_PERSONA',
'AND E.ACTIVO=''S''',
'order by 1'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'Seleccione Encargado'
,p_cSize=>30
,p_cMaxlength=>10
,p_colspan=>5
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
,p_attribute_08=>'600'
,p_attribute_09=>'400'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(115110190373235732)
,p_name=>'P405_ID_ASUNTO_BTL'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(115109339201235724)
,p_item_source_plug_id=>wwv_flow_imp.id(115109339201235724)
,p_prompt=>'Asunto'
,p_source=>'ID_ASUNTO_BTL'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LOV_ASUNTOS_BTL'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ID_ASUNTO||''-''||DESCRIPCION D,',
'       ID_ASUNTO R',
'  FROM FV_ASUNTOS_BTL',
' WHERE COD_EMPRESA = ''1'''))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'Seleccionar Asuntos'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>5
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
,p_attribute_08=>'600'
,p_attribute_09=>'400'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(115110221782235733)
,p_name=>'P405_COMENTARIO'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_imp.id(115109339201235724)
,p_item_source_plug_id=>wwv_flow_imp.id(115109339201235724)
,p_prompt=>'Comentario'
,p_source=>'COMENTARIO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>30
,p_cMaxlength=>250
,p_cHeight=>5
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(115110366826235734)
,p_name=>'P405_COD_MARCA'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_imp.id(115109339201235724)
,p_item_source_plug_id=>wwv_flow_imp.id(115109339201235724)
,p_prompt=>'Marca'
,p_source=>'COD_MARCA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_MARCAS'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select cod_marca||'' - ''||descripcion D, cod_marca R',
'from st_marcas',
'order by descripcion;'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'Seleccione Marca'
,p_cSize=>30
,p_cMaxlength=>10
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
,p_attribute_08=>'600'
,p_attribute_09=>'400'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(115110411944235735)
,p_name=>'P405_COD_CATEGORIA'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_imp.id(115109339201235724)
,p_item_source_plug_id=>wwv_flow_imp.id(115109339201235724)
,p_prompt=>'Cod Categoria'
,p_source=>'COD_CATEGORIA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_CATEGORIAS'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  SELECT cod_categoria||'' - '' ||descripcion D, ',
'         cod_categoria R',
'    FROM st_categorias',
'  ',
'  WHERE COD_EMPRESA=:P_COD_EMPRESA',
'  AND ESTADO IN(''S'',''A'');',
' '))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'Seleccione Categoria'
,p_cSize=>30
,p_cMaxlength=>5
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
,p_attribute_08=>'600'
,p_attribute_09=>'400'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(115110555854235736)
,p_name=>'P405_COD_ARTICULO'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_imp.id(115109339201235724)
,p_item_source_plug_id=>wwv_flow_imp.id(115109339201235724)
,p_prompt=>'Articulo'
,p_source=>'COD_ARTICULO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_ARTICULOS'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  SELECT cod_articulo||'' - ''||descripcion descripcion, ',
'         cod_articulo codigo, cod_art_corto, cod_origen_art, cod_ean',
'    FROM st_articulos ',
'   WHERE cod_empresa = :p_cod_empresa ',
'     AND ( estado is null or estado <> ''I'' )',
'    ORDER BY descripcion'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_cMaxlength=>100
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
,p_attribute_08=>'600'
,p_attribute_09=>'400'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(115110615110235737)
,p_name=>'P405_ROWID'
,p_source_data_type=>'ROWID'
,p_is_primary_key=>true
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_imp.id(115109339201235724)
,p_item_source_plug_id=>wwv_flow_imp.id(115109339201235724)
,p_source=>'ROWID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(116057354153387817)
,p_name=>'P405_CREA_USER'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>220
,p_item_plug_id=>wwv_flow_imp.id(115109339201235724)
,p_item_source_plug_id=>wwv_flow_imp.id(115109339201235724)
,p_source=>'CREA_USER'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(116057477672387818)
,p_name=>'P405_CREA_FECHA'
,p_source_data_type=>'DATE'
,p_item_sequence=>230
,p_item_plug_id=>wwv_flow_imp.id(115109339201235724)
,p_item_source_plug_id=>wwv_flow_imp.id(115109339201235724)
,p_format_mask=>'DD/MM/YYYY HH24:MI:SS'
,p_source=>'CREA_FECHA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(181626254214034602)
,p_name=>'P405_HORARIO_ACTIVACION'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(115109339201235724)
,p_item_source_plug_id=>wwv_flow_imp.id(115109339201235724)
,p_prompt=>'Horario Activacion'
,p_source=>'HORARIO_ACTIVACION'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>20
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(181626456397034604)
,p_name=>'P405_HORARIO_DEGUSTACION'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(115109339201235724)
,p_item_source_plug_id=>wwv_flow_imp.id(115109339201235724)
,p_prompt=>'Horario Degustacion'
,p_source=>'HORARIO_DEGUSTACION'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>20
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(181626568130034605)
,p_name=>'P405_COSTO_ENVIO'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(115109339201235724)
,p_item_source_plug_id=>wwv_flow_imp.id(115109339201235724)
,p_prompt=>'Costo Envio'
,p_source=>'COSTO_ENVIO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(181626693038034606)
,p_name=>'P405_COSTO_TRASLADO'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(115109339201235724)
,p_item_source_plug_id=>wwv_flow_imp.id(115109339201235724)
,p_prompt=>'Costo Traslado'
,p_source=>'COSTO_TRASLADO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(181626731719034607)
,p_name=>'P405_COSTO_MONTAJE'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(115109339201235724)
,p_item_source_plug_id=>wwv_flow_imp.id(115109339201235724)
,p_prompt=>'Costo Montaje'
,p_source=>'COSTO_MONTAJE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(181626898653034608)
,p_name=>'P405_COSTO_INSUMOS'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(115109339201235724)
,p_item_source_plug_id=>wwv_flow_imp.id(115109339201235724)
,p_prompt=>'Costo Insumo'
,p_source=>'COSTO_INSUMO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(181626921656034609)
,p_name=>'P405_COSTO_TOTAL'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(115109339201235724)
,p_item_source_plug_id=>wwv_flow_imp.id(115109339201235724)
,p_prompt=>'Costo Total'
,p_source=>'COSTO_TOTAL'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(118952421892105310)
,p_name=>'Cerrar_Dialogo'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(116059147955387835)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(118952567984105311)
,p_event_id=>wwv_flow_imp.id(118952421892105310)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(116059147955387835)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(118952724700105313)
,p_name=>'Clic_cerrar region'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(118952666202105312)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(118952840858105314)
,p_event_id=>wwv_flow_imp.id(118952724700105313)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P405_ID_ASUNTO_BTL'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(118952919662105315)
,p_event_id=>wwv_flow_imp.id(118952724700105313)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(116059048621387834)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(118953114440105317)
,p_name=>'Clic_Cerrar'
,p_event_sequence=>30
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(115111188832235742)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(118953211169105318)
,p_event_id=>wwv_flow_imp.id(118953114440105317)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(181627788022034617)
,p_name=>'da_suma'
,p_event_sequence=>40
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P405_COSTO_INSUMOS,P405_COSTO_TRASLADO,P405_COSTO_MONTAJE,P405_COSTO_ENVIO'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(181627894548034618)
,p_event_id=>wwv_flow_imp.id(181627788022034617)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P405_COSTO_TOTAL:= NVL(:P405_COSTO_ENVIO,0)+',
'NVL(:P405_COSTO_INSUMOS,0)+',
'NVL(:P405_COSTO_MONTAJE,0)+',
'NVL(:P405_COSTO_TRASLADO,0) ;'))
,p_attribute_02=>'P405_COSTO_ENVIO,P405_COSTO_TRASLADO,P405_COSTO_MONTAJE,P405_COSTO_INSUMOS'
,p_attribute_03=>'P405_COSTO_TOTAL'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(115111330509235744)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Otorgar Claves'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P405_ROWID IS NULL THEN ',
'    :P405_COD_EMPRESA := :P_COD_EMPRESA;',
'    SELECT NVL(MAX(F.ID),0) + 1',
'      INTO :P405_ID',
'      FROM FV_BTL F',
'     WHERE F.COD_EMPRESA = :P_COD_EMPRESA;',
'    :P405_CREA_USER := :APP_USER;',
'    :P405_CREA_FECHA := to_Date(TO_CHAR(SYSDATE,''DD/MM/YYYY HH24:MI:SS''),''DD/MM/YYYY HH24:MI:SS'');',
'END IF;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(115111450204235745)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(115109339201235724)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Procesar Pantalla'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'SAVE,BORRAR,CREATE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(115111556138235746)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'CERRAR_PANTALLA'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'SAVE,BORRAR,CREATE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
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
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(115109493225235725)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(115109339201235724)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form BTL(MODAL)'
);
null;
wwv_flow_imp.component_end;
end;
/
