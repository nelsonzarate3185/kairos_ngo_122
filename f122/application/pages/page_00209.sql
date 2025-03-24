prompt --application/pages/page_00209
begin
--   Manifest
--     PAGE: 00209
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
 p_id=>209
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'VTPARCON'
,p_alias=>'VTPARCON'
,p_step_title=>'Parametros para Ventas para Contabilidad'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function removeParam(key, sourceURL) {',
'    var rtn = sourceURL.split("?")[0],',
'        param,',
'        params_arr = [],',
'        queryString = (sourceURL.indexOf("?") !== -1) ? sourceURL.split("?")[1] : "";',
'    if (queryString !== "") {',
'        params_arr = queryString.split("&");',
'        for (var i = params_arr.length - 1; i >= 0; i -= 1) {',
'            param = params_arr[i].split("=")[0];',
'            if (param === key) {',
'                params_arr.splice(i, 1);',
'            }',
'        }',
'        rtn = rtn + "?" + params_arr.join("&");',
'    }',
'    return rtn;',
'}'))
,p_javascript_code_onload=>'window.history.pushState("object or string", "Title", removeParam("success_msg", window.location.href));'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_last_updated_by=>'INV'
,p_last_upd_yyyymmddhh24miss=>'20230204103204'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(44076080715498517)
,p_plug_name=>'Parametros para Ventas para Contabilidad'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(44076171939498518)
,p_plug_name=>'REPORTE'
,p_parent_plug_id=>wwv_flow_imp.id(44076080715498517)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT SEQ_ID,',
'       C001 COD_SUCURSAL,',
'       C002 vdesc_sucursal,',
'       C003 COD_CUENTA_CON,',
'       C004 vdesc_cuenta_con,',
'       C005 COD_CUENTA_DEU,',
'       C006 vdesc_cuenta_deu,',
'       C007 COD_CUENTA_BON,',
'       C008 vdesc_cuenta_bon,',
'       C009 COD_CUENTA_IVA,',
'       C010 vdesc_cuenta_iva,',
'       C011 COD_CUENTA_DEU_ME,',
'       C012 vdesc_cuenta_deu_me,',
'       C013 COD_SECTOR,',
'       C014 vdesc_sector,',
'       null editar,',
'       null eliminar,',
'       null ver',
'  FROM APEX_COLLECTIONS',
' WHERE COLLECTION_NAME = ''DETALLE_VTPARCON''',
'   AND (C016 IS NULL OR C016 IN (''I'', ''U''));                                       '))
,p_plug_source_type=>'NATIVE_IR'
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
 p_id=>wwv_flow_imp.id(44079020138498547)
,p_max_row_count=>'1000000'
,p_no_data_found_message=>'No se han encontrado datos.'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'MARIANABLA'
,p_internal_uid=>44079020138498547
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(44079139767498548)
,p_db_column_name=>'COD_SUCURSAL'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Sucursal'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(44079270879498549)
,p_db_column_name=>'VDESC_SUCURSAL'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Vdesc Sucursal'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(44079332472498550)
,p_db_column_name=>'COD_CUENTA_CON'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Cuenta Contado'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(44822629851895801)
,p_db_column_name=>'VDESC_CUENTA_CON'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Vdesc Cuenta Con'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(44822731742895802)
,p_db_column_name=>'COD_CUENTA_DEU'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>unistr('Cuenta Cr\00E9dito')
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(44822862553895803)
,p_db_column_name=>'VDESC_CUENTA_DEU'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Vdesc Cuenta Deu'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(44822984683895804)
,p_db_column_name=>'COD_CUENTA_BON'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Cuenta Bonos'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(44823052077895805)
,p_db_column_name=>'VDESC_CUENTA_BON'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Vdesc Cuenta Bon'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(44823156797895806)
,p_db_column_name=>'COD_CUENTA_IVA'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Cuenta Iva'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(44823288770895807)
,p_db_column_name=>'VDESC_CUENTA_IVA'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Vdesc Cuenta Iva'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(44823362195895808)
,p_db_column_name=>'COD_CUENTA_DEU_ME'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>unistr('Cuenta Cr\00E9dito Me')
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(44823427959895809)
,p_db_column_name=>'VDESC_CUENTA_DEU_ME'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Vdesc Cuenta Deu Me'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(44823556066895810)
,p_db_column_name=>'COD_SECTOR'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Sector'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(44823661638895811)
,p_db_column_name=>'VDESC_SECTOR'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>'&nbsp'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(44823756044895812)
,p_db_column_name=>'EDITAR'
,p_display_order=>150
,p_column_identifier=>'O'
,p_column_label=>'Editar'
,p_column_link=>'javascript:$s(''P209_ABRE_EDITAR'',''#SEQ_ID#'')'
,p_column_linktext=>'<span class="fa fa-edit" aria-hidden="true"></span>'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_display_condition_type=>'FUNCTION_BODY'
,p_display_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'VCONTROL NUMBER;',
'BEGIN',
'    VCONTROL := SEGURIDAD_GRANULAR.RETORNA_PERMISO_BOTON(ppage_id     => :APP_PAGE_ID,',
'                                                         papli0100_id => :P_APLI0100_ID,',
'                                                         pcod_empresa => :P_COD_EMPRESA,',
'                                                         pusua0100_id => :P_USUA0100_ID,',
'                                                         pdm_boto     => 2); ',
'',
'    IF VCONTROL = 0 THEN',
'        RETURN FALSE;',
'    ELSE',
'        RETURN TRUE;',
'    END IF;                                                     ',
'END;'))
,p_display_condition2=>'PLSQL'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(44823839890895813)
,p_db_column_name=>'ELIMINAR'
,p_display_order=>160
,p_column_identifier=>'P'
,p_column_label=>'Eliminar'
,p_column_link=>'javascript:$s(''P209_AUX_ELIMINAR'',''#SEQ_ID#'');'
,p_column_linktext=>'<span aria-hidden="true" class="fa fa-trash"></span>'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_display_condition_type=>'FUNCTION_BODY'
,p_display_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'VCONTROL NUMBER;',
'BEGIN',
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
'END;'))
,p_display_condition2=>'PLSQL'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(44824198610895816)
,p_db_column_name=>'SEQ_ID'
,p_display_order=>170
,p_column_identifier=>'Q'
,p_column_label=>'Seq Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(44826412461895839)
,p_db_column_name=>'VER'
,p_display_order=>180
,p_column_identifier=>'R'
,p_column_label=>'Ver'
,p_column_link=>'javascript:$s(''P209_AUX_VER'',''#SEQ_ID#'');'
,p_column_linktext=>'<span aria-hidden="true" class="fa fa-eye"></span>'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(44838050181898609)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'448381'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>15
,p_report_columns=>'COD_SUCURSAL:COD_SECTOR:VDESC_SECTOR:COD_CUENTA_CON:COD_CUENTA_DEU:COD_CUENTA_DEU_ME:COD_CUENTA_BON:COD_CUENTA_IVA:VER:EDITAR:ELIMINAR:'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(44077493020498531)
,p_plug_name=>'AGREGAR/EDITAR'
,p_parent_plug_id=>wwv_flow_imp.id(44076080715498517)
,p_region_template_options=>'#DEFAULT#:js-dialog-autoheight:js-dialog-size720x480'
,p_plug_template=>wwv_flow_imp.id(40120082745263659)
,p_plug_display_sequence=>30
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(44825710937895832)
,p_plug_name=>unistr('Par\00E1metros')
,p_parent_plug_id=>wwv_flow_imp.id(44077493020498531)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(44077511317498532)
,p_plug_name=>'PIE'
,p_parent_plug_id=>wwv_flow_imp.id(44076080715498517)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(44078232384498539)
,p_plug_name=>'VARIABLES'
,p_parent_plug_id=>wwv_flow_imp.id(44076080715498517)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>40
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(44824431269895819)
,p_button_sequence=>140
,p_button_plug_id=>wwv_flow_imp.id(44825710937895832)
,p_button_name=>'CANCELAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_image_alt=>'Cancelar'
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(44824729207895822)
,p_button_sequence=>140
,p_button_plug_id=>wwv_flow_imp.id(44825710937895832)
,p_button_name=>'GUARDAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Guardar'
,p_button_position=>'CREATE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(44825036094895825)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(44076080715498517)
,p_button_name=>'AGREGAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Agregar'
,p_button_position=>'EDIT'
,p_warn_on_unsaved_changes=>null
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'VCONTROL NUMBER;',
'BEGIN',
'    VCONTROL := SEGURIDAD_GRANULAR.RETORNA_PERMISO_BOTON(ppage_id     => :APP_PAGE_ID,',
'                                                         papli0100_id => :P_APLI0100_ID,',
'                                                         pcod_empresa => :P_COD_EMPRESA,',
'                                                         pusua0100_id => :P_USUA0100_ID,',
'                                                         pdm_boto     => 1); ',
'',
'    IF VCONTROL = 0 THEN',
'        RETURN FALSE;',
'    ELSE',
'        RETURN TRUE;',
'    END IF;                                                     ',
'END;'))
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'FUNCTION_BODY'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(44825524724895830)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(44076080715498517)
,p_button_name=>'CONFIRMAR_CAMBIOS'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Confirmar Cambios'
,p_button_position=>'EDIT'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    RETURN SEGURIDAD_GRANULAR.FC_MOSTRAR_CONFIRMAR (pusua0100_id => :P_USUA0100_ID,',
'                                                    ppage_id => :APP_PAGE_ID,',
'                                                    papli0100_id => :P_APLI0100_ID);',
'END;'))
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'FUNCTION_BODY'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(44076453158498521)
,p_name=>'P209_COD_SUCURSAL'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(44825710937895832)
,p_prompt=>'Sucursal'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_SUCURSALES'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  SELECT cod_sucursal||'' - ''||descripcion L, ',
'         cod_sucursal V',
'    FROM sucursales ',
'   WHERE cod_empresa = :P_COD_EMPRESA',
'ORDER BY descripcion'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--Seleccionar--'
,p_cSize=>30
,p_cMaxlength=>5
,p_field_template=>wwv_flow_imp.id(40186576483263678)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--large'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(44076581222498522)
,p_name=>'P209_COD_CUENTA_CON'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(44825710937895832)
,p_prompt=>'Cuenta Contado'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_CUENTA_CON_VTPARCON'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select cod_cuenta||'' - ''||nombre_cuenta D, cod_cuenta R',
'  from co_plan_cuentas ',
' where cod_empresa = :P_COD_EMPRESA ',
'   and asentable = ''S''',
'   and cod_ejercicio = :P209_COD_EJERCICIO_VAR'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--Seleccionar--'
,p_cSize=>30
,p_cMaxlength=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186576483263678)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--large'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(44076639683498523)
,p_name=>'P209_COD_CUENTA_DEU'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(44825710937895832)
,p_prompt=>unistr('Cuenta Cr\00E9dito')
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_CUENTA_DEU_VTPARCON'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select cod_cuenta||'' - ''||nombre_cuenta D, cod_cuenta R ',
'  from co_plan_cuentas ',
' where cod_empresa = :P_COD_EMPRESA ',
'   and asentable = ''S''',
'   and cod_ejercicio   = :P209_COD_EJERCICIO_VAR'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--Seleccionar--'
,p_cSize=>30
,p_cMaxlength=>30
,p_field_template=>wwv_flow_imp.id(40186576483263678)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--large'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(44076718116498524)
,p_name=>'P209_COD_CUENTA_BON'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(44825710937895832)
,p_prompt=>'Cuenta Bonos'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_CUENTA_BON_VTPARCON'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select cod_cuenta||'' - ''||nombre_cuenta D, cod_cuenta R',
'from co_plan_cuentas ',
'where cod_empresa = :P_COD_EMPRESA',
'and asentable = ''S''',
'and cod_ejercicio   = :P209_COD_EJERCICIO_VAR'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--Seleccionar--'
,p_cSize=>30
,p_cMaxlength=>30
,p_field_template=>wwv_flow_imp.id(40186576483263678)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--large'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(44077021152498527)
,p_name=>'P209_COD_CUENTA_IVA'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(44825710937895832)
,p_prompt=>'Cuenta Iva'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_CUENTA_IVA_VTPARCON'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select cod_cuenta||'' - ''||nombre_cuenta D, cod_cuenta  R',
'from co_plan_cuentas ',
'where cod_empresa = :P_COD_EMPRESA',
'and asentable = ''S'' ',
'and cod_ejercicio   = :P209_COD_EJERCICIO_VAR'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--Seleccionar--'
,p_cSize=>30
,p_cMaxlength=>12
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186576483263678)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--large'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(44077110467498528)
,p_name=>'P209_COD_CUENTA_DEU_ME'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(44825710937895832)
,p_prompt=>unistr('Cuenta Cr\00E9dito ME')
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_CUENTA_DEU_ME_VTPARCON'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select cod_cuenta||'' - ''||nombre_cuenta D, cod_cuenta R',
'from co_plan_cuentas ',
'where cod_empresa = :P_COD_EMPRESA ',
'and asentable = ''S'' ',
'and cod_ejercicio   = :P209_COD_EJERCICIO_VAR'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--Seleccionar--'
,p_cSize=>30
,p_cMaxlength=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186576483263678)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--large'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(44077204396498529)
,p_name=>'P209_COD_SECTOR'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(44825710937895832)
,p_prompt=>'Sector'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LVSECTORES'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  SELECT cod_sector||'' - ''||descripcion D, ',
'         cod_sector R',
'    FROM sectores ',
'   WHERE cod_empresa = :P_COD_EMPRESA ',
'ORDER BY descripcion;'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--Seleccionar--'
,p_cSize=>30
,p_cMaxlength=>5
,p_field_template=>wwv_flow_imp.id(40186576483263678)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--large'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(44077628456498533)
,p_name=>'P209_DESC_SUCURSAL'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(44077511317498532)
,p_prompt=>'Nombre Sucursal'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>5
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(44077772315498534)
,p_name=>'P209_DESC_CUENTA_CON'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(44077511317498532)
,p_prompt=>'Nombre Cuenta Contado'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(44077858875498535)
,p_name=>'P209_DESC_CUENTA_DEU'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(44077511317498532)
,p_prompt=>unistr('Nombre Cuenta Cr\00E9dito')
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(44077964958498536)
,p_name=>'P209_DESC_CUENTA_DEU_ME'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(44077511317498532)
,p_prompt=>unistr('Nombre Cuenta Cr\00E9dito ME')
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>12
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(44078046713498537)
,p_name=>'P209_DESC_CUENTA_IVA'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(44077511317498532)
,p_prompt=>'Nombre Cuenta Venta Obs.'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(44078130514498538)
,p_name=>'P209_DESC_CUENTA_BON'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(44077511317498532)
,p_prompt=>'Nombre Cuenta Stock Obs.'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(44078361346498540)
,p_name=>'P209_COD_EMPRESA'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(44078232384498539)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(44078446813498541)
,p_name=>'P209_COD_MODULO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(44078232384498539)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(44078569705498542)
,p_name=>'P209_COD_SUCURSAL_VAR'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(44078232384498539)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(44078635414498543)
,p_name=>'P209_COD_USUARIO'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(44078232384498539)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(44078945191498546)
,p_name=>'P209_COD_EJERCICIO_VAR'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(44078232384498539)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(44823964352895814)
,p_name=>'P209_ABRE_EDITAR'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(44077493020498531)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(44824032562895815)
,p_name=>'P209_AUX_ELIMINAR'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(44078232384498539)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(44826594914895840)
,p_name=>'P209_AUX_VER'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(44078232384498539)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(44827506666895850)
,p_name=>'P209_AUX_MSJ'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(44077493020498531)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(45864176782644403)
,p_name=>'P209_ROW_ID'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(44825710937895832)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(44824224414895817)
,p_name=>'DA_ABRE_EDITAR'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P209_ABRE_EDITAR'
,p_condition_element=>'P209_ABRE_EDITAR'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(44825696750895831)
,p_event_id=>wwv_flow_imp.id(44824224414895817)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    SELECT C001, -- CC.COD_SUCURSAL,',
'           C002, ',
'           C003, -- CC.COD_CUENTA_CON,',
'           C004,',
'           C005, -- CC.COD_CUENTA_DEU,',
'           C006,',
'           C007, -- CC.COD_CUENTA_BON,',
'           C008,',
'           C009, -- CC.COD_CUENTA_IVA,',
'           C010,',
'           C011, -- CC.COD_CUENTA_DEU_ME,',
'           C012,',
'           C013, -- CC.COD_SECTOR',
'           C017  -- ROW_ID',
'      INTO :P209_COD_SUCURSAL,',
'           :P209_DESC_SUCURSAL,',
'           :P209_COD_CUENTA_CON,',
'           :P209_DESC_CUENTA_CON,',
'           :P209_COD_CUENTA_DEU,',
'           :P209_DESC_CUENTA_DEU,',
'           :P209_COD_CUENTA_BON,',
'           :P209_DESC_CUENTA_BON,',
'           :P209_COD_CUENTA_IVA,',
'           :P209_DESC_CUENTA_IVA,',
'           :P209_COD_CUENTA_DEU_ME,',
'           :P209_DESC_CUENTA_DEU_ME,',
'           :P209_COD_SECTOR,',
'           :P209_ROW_ID     ',
'      FROM APEX_COLLECTIONS',
'     WHERE COLLECTION_NAME = ''DETALLE_VTPARCON''',
'       AND SEQ_ID = :P209_ABRE_EDITAR;     ',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        NULL;',
'END;           ',
' '))
,p_attribute_02=>'P209_ABRE_EDITAR'
,p_attribute_03=>'P209_ROW_ID,P209_COD_SUCURSAL,P209_COD_CUENTA_CON,P209_COD_CUENTA_DEU,P209_COD_CUENTA_BON,P209_COD_CUENTA_IVA,P209_COD_CUENTA_DEU_ME,P209_COD_SECTOR'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(44824335862895818)
,p_event_id=>wwv_flow_imp.id(44824224414895817)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(44077493020498531)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(44824552191895820)
,p_name=>'DA_VOLVER'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(44824431269895819)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(44824631146895821)
,p_event_id=>wwv_flow_imp.id(44824552191895820)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(44077493020498531)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(44824847988895823)
,p_name=>'DA_GUARDAR'
,p_event_sequence=>30
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(44824729207895822)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(44825847070895833)
,p_event_id=>wwv_flow_imp.id(44824847988895823)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>unistr('\00BFDesea guardar los datos?')
,p_attribute_06=>'Aceptar'
,p_attribute_07=>'Cancelar'
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
 p_id=>wwv_flow_imp.id(44825497772895829)
,p_event_id=>wwv_flow_imp.id(44824847988895823)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P209_AUX_MSJ := NULL;',
'IF :P209_COD_SECTOR IS NOT NULL THEN',
'    VTPARCON.agrega_registro(PI_COD_EMPRESA        => :P209_COD_EMPRESA, ',
'                             PI_COD_EJERCICIO      => :P209_COD_EJERCICIO_VAR,',
'                             PI_COD_SUCURSAL       => :P209_COD_SUCURSAL,',
'                             PI_COD_CUENTA_CON     => :P209_COD_CUENTA_CON,',
'                             PI_COD_CUENTA_DEU     => :P209_COD_CUENTA_DEU,',
'                             PI_COD_CUENTA_DEU_ME  => :P209_COD_CUENTA_DEU_ME,',
'                             PI_COD_CUENTA_BON     => :P209_COD_CUENTA_BON,',
'                             PI_COD_CUENTA_IVA     => :P209_COD_CUENTA_IVA,',
'                             PI_COD_SECTOR         => :P209_COD_SECTOR,',
'                             PI_SEQ_ID             => :P209_ABRE_EDITAR,',
'                             PI_ROW_ID             => :P209_ROW_ID);',
'ELSE',
'    :P209_AUX_MSJ := ''Debe seleccionar un sector.'';',
'END IF;                                     ',
'',
''))
,p_attribute_02=>'P209_ROW_ID,P209_ABRE_EDITAR,P209_COD_EMPRESA,P209_COD_EJERCICIO_VAR,P209_COD_SUCURSAL,P209_COD_CUENTA_CON,P209_COD_CUENTA_DEU,P209_COD_CUENTA_DEU_ME, P209_COD_CUENTA_BON,P209_COD_CUENTA_IVA,P209_COD_SECTOR'
,p_attribute_03=>'P209_AUX_MSJ'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(45863943591644401)
,p_event_id=>wwv_flow_imp.id(44824847988895823)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'&P209_AUX_MSJ.'
,p_attribute_02=>'Error'
,p_attribute_03=>'warning'
,p_attribute_04=>'fa-warning'
,p_attribute_06=>'Aceptar'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P209_AUX_MSJ'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(44824942098895824)
,p_event_id=>wwv_flow_imp.id(44824847988895823)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(44077493020498531)
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P209_AUX_MSJ'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(44826219327895837)
,p_event_id=>wwv_flow_imp.id(44824847988895823)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(44076171939498518)
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P209_AUX_MSJ'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(44825111376895826)
,p_name=>'DA_AGREGAR'
,p_event_sequence=>40
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(44825036094895825)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(44825271169895827)
,p_event_id=>wwv_flow_imp.id(44825111376895826)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P209_ROW_ID,P209_COD_SUCURSAL,P209_COD_SECTOR,P209_COD_CUENTA_CON,P209_COD_CUENTA_DEU,P209_COD_CUENTA_DEU_ME,P209_COD_CUENTA_BON,P209_COD_CUENTA_IVA,P209_ABRE_EDITAR'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(44825346287895828)
,p_event_id=>wwv_flow_imp.id(44825111376895826)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(44077493020498531)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(44825991832895834)
,p_name=>'DA_ELIMINAR'
,p_event_sequence=>50
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P209_AUX_ELIMINAR'
,p_condition_element=>'P209_AUX_ELIMINAR'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(44826190522895836)
,p_event_id=>wwv_flow_imp.id(44825991832895834)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>unistr('\00BFDesea eliminar el registro?')
,p_attribute_06=>'Aceptar'
,p_attribute_07=>'Cancelar'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(44826084955895835)
,p_event_id=>wwv_flow_imp.id(44825991832895834)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    vtparcon.borra_registro (PI_SEQ_ID => :P209_AUX_ELIMINAR);',
'END;',
''))
,p_attribute_02=>'P209_AUX_ELIMINAR'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(44826393277895838)
,p_event_id=>wwv_flow_imp.id(44825991832895834)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(44076171939498518)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(44826688885895841)
,p_name=>'DA_VER'
,p_event_sequence=>60
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P209_AUX_VER'
,p_condition_element=>'P209_AUX_VER'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(44826737100895842)
,p_event_id=>wwv_flow_imp.id(44826688885895841)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    SELECT C002, ',
'           C004,',
'           C006,',
'           C008,',
'           C010,',
'           C012',
'      INTO :P209_DESC_SUCURSAL,',
'           :P209_DESC_CUENTA_CON,           ',
'           :P209_DESC_CUENTA_DEU,           ',
'           :P209_DESC_CUENTA_BON,           ',
'           :P209_DESC_CUENTA_IVA,           ',
'           :P209_DESC_CUENTA_DEU_ME               ',
'      FROM APEX_COLLECTIONS',
'     WHERE COLLECTION_NAME = ''DETALLE_VTPARCON''',
'       AND SEQ_ID = :P209_AUX_VER;     ',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        NULL;',
'END;           ',
' '))
,p_attribute_02=>'P209_AUX_VER'
,p_attribute_03=>'P209_DESC_SUCURSAL,P209_DESC_CUENTA_CON,P209_DESC_CUENTA_DEU,P209_DESC_CUENTA_BON,P209_DESC_CUENTA_IVA,P209_DESC_CUENTA_DEU_ME'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(44078757895498544)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_INIT'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P_COD_MODULO := ''VT'';',
'',
':P209_COD_USUARIO := NVL(:P_COD_USUARIO, :APP_USER);',
':P209_COD_EMPRESA := NVL(:P_COD_EMPRESA, ''1'');',
':P209_COD_SUCURSAL_VAR := NVL(:P_COD_SUCURSAL, ''01'');',
':P209_COD_MODULO := :P_COD_MODULO;',
':P209_COD_EJERCICIO_VAR := ''2014'';',
'',
'VTPARCON.carga_coleccion(PI_COD_EMPRESA => :P209_COD_EMPRESA, ',
'                         PI_COD_EJERCICIO => :P209_COD_EJERCICIO_VAR);'))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(44826809015895843)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'GUARDAR'
,p_process_sql_clob=>'VTPARCON.CONFIRMA_DATOS;'
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'Ha ocurrido un error.'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Los cambios se han guardado correctamente.'
);
wwv_flow_imp.component_end;
end;
/
