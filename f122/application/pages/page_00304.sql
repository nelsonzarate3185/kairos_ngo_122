prompt --application/pages/page_00304
begin
--   Manifest
--     PAGE: 00304
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
 p_id=>304
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>unistr('Escala de Comisi\00F3n Servicio T\00E9cnico  - CAESCCOM')
,p_alias=>'CAESCCOM'
,p_step_title=>unistr('Escala de Comisi\00F3n Servicio T\00E9cnico ')
,p_warn_on_unsaved_changes=>'N'
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
'}',
'',
'',
'function soloNumeros(e){',
'  var key = e.charCode;',
'    return key >= 48 && key <= 57;',
'}',
''))
,p_javascript_code_onload=>'window.history.pushState("object or string", "Title", removeParam("success_msg", window.location.href));'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_last_updated_by=>'MARIANABLA'
,p_last_upd_yyyymmddhh24miss=>'20230105123621'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(75673104862717233)
,p_plug_name=>unistr('Escala de Comisi\00F3n Servicio T\00E9cnico ')
,p_region_template_options=>'#DEFAULT#:t-Region--accent1:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>990
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(75673830732717240)
,p_plug_name=>'REPORTE'
,p_parent_plug_id=>wwv_flow_imp.id(75673104862717233)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ROWID,',
'       COD_EMPRESA,',
'       ORIGEN,',
'       CONDICION,',
'       DIA_INICIAL,',
'       DIA_FINAL,',
'       PORCENTAJE,',
'       FECHA_VIGENCIA,',
'       COD_USUARIO,',
'       FECHA_ALTA,',
'       NULL EDITAR,',
'       NULL ELIMINAR       ',
'  FROM CA_ESCALA_COMISION',
'ORDER BY ORIGEN, CONDICION, DIA_INICIAL, DIA_FINAL;',
''))
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
 p_id=>wwv_flow_imp.id(75673916482717241)
,p_max_row_count=>'1000000'
,p_allow_report_saving=>'N'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_select_columns=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'MARIANABLA'
,p_internal_uid=>75673916482717241
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(75674004711717242)
,p_db_column_name=>'COD_EMPRESA'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Cod Empresa'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(75674104491717243)
,p_db_column_name=>'ORIGEN'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Origen'
,p_column_link=>'javascript:$s(''P304_VER_DATOS'',''#ROWID#'');'
,p_column_linktext=>'#ORIGEN#'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(75674202683717244)
,p_db_column_name=>'CONDICION'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Condicion'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(75674336565717245)
,p_db_column_name=>'DIA_INICIAL'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Dia Inicial'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(75674493044717246)
,p_db_column_name=>'DIA_FINAL'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Dia Final'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(75674526215717247)
,p_db_column_name=>'PORCENTAJE'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Porcentaje'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(75674607743717248)
,p_db_column_name=>'FECHA_VIGENCIA'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Fecha Vigencia'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(75674798663717249)
,p_db_column_name=>'COD_USUARIO'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Cod Usuario'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(75674811698717250)
,p_db_column_name=>'FECHA_ALTA'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Fecha Alta'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(76486570083626904)
,p_db_column_name=>'EDITAR'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Editar'
,p_column_link=>'javascript:$s(''P304_ABRE_EDITAR'',''#ROWID#'');'
,p_column_linktext=>'<span aria-hidden="true" class="fa fa-edit"></span>'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'CENTER'
,p_display_condition_type=>'FUNCTION_BODY'
,p_display_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    VCONTROL NUMBER;',
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
 p_id=>wwv_flow_imp.id(76486697030626905)
,p_db_column_name=>'ELIMINAR'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Eliminar'
,p_column_link=>'javascript:$s(''P304_ELIMINAR'',''#ROWID#'');'
,p_column_linktext=>'<span class="fa fa-trash" aria-hidden="true"></span>'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'CENTER'
,p_display_condition_type=>'FUNCTION_BODY'
,p_display_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    VCONTROL NUMBER;',
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
 p_id=>wwv_flow_imp.id(76486957867626908)
,p_db_column_name=>'ROWID'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Rowid'
,p_column_type=>'OTHER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(76485660725612422)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'764857'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>15
,p_report_columns=>'ORIGEN:CONDICION:DIA_INICIAL:DIA_FINAL:PORCENTAJE:FECHA_VIGENCIA:EDITAR:ELIMINAR:'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(76486288089626901)
,p_plug_name=>'PIE'
,p_parent_plug_id=>wwv_flow_imp.id(75673104862717233)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(75673291196717234)
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
 p_id=>wwv_flow_imp.id(76487319830626912)
,p_plug_name=>'Crear/Editar '
,p_region_template_options=>'#DEFAULT#:js-dialog-autoheight:js-dialog-size600x400'
,p_plug_template=>wwv_flow_imp.id(40117728043263659)
,p_plug_display_sequence=>1010
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(76488479943626923)
,p_button_sequence=>70
,p_button_plug_id=>wwv_flow_imp.id(76487319830626912)
,p_button_name=>'CANCELAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_image_alt=>'Cancelar'
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(76488769776626926)
,p_button_sequence=>70
,p_button_plug_id=>wwv_flow_imp.id(76487319830626912)
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
 p_id=>wwv_flow_imp.id(76488055263626919)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(75673104862717233)
,p_button_name=>'CREAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Crear'
,p_button_position=>'EDIT'
,p_warn_on_unsaved_changes=>null
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    VCONTROL NUMBER;',
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
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(75673359439717235)
,p_name=>'P304_COD_EMPRESA'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(75673291196717234)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(75673412625717236)
,p_name=>'P304_COD_MODULO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(75673291196717234)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(75673512279717237)
,p_name=>'P304_COD_USUARIO'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(75673291196717234)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(75673649621717238)
,p_name=>'P304_COD_SUCURSAL'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(75673291196717234)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(76486369257626902)
,p_name=>'P304_COD_USUARIO_1'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(76486288089626901)
,p_prompt=>'Usuario'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(76486405220626903)
,p_name=>'P304_FECHA_ALTA'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(76486288089626901)
,p_prompt=>'Fecha'
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
 p_id=>wwv_flow_imp.id(76486727924626906)
,p_name=>'P304_ABRE_EDITAR'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(75673830732717240)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(76486814660626907)
,p_name=>'P304_ELIMINAR'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(75673830732717240)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(76487076705626909)
,p_name=>'P304_VER_DATOS'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(75673830732717240)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(76487460602626913)
,p_name=>'P304_ORIGEN'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(76487319830626912)
,p_prompt=>'Origen'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:STNGO;STNGO,STA;STA'
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(76487593423626914)
,p_name=>'P304_CONDICION'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(76487319830626912)
,p_prompt=>unistr('Condici\00F3n')
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>unistr('STATIC:GARANT\00CDA;GARANTIA,PARTICULAR;PARTICULAR')
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(76487634945626915)
,p_name=>'P304_DIA_INICIAL'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(76487319830626912)
,p_prompt=>'Dia Inicial'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_cMaxlength=>60
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(76487795945626916)
,p_name=>'P304_DIA_FINAL'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(76487319830626912)
,p_prompt=>'Dia Final'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_cMaxlength=>60
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(76487817417626917)
,p_name=>'P304_PORCENTAJE'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(76487319830626912)
,p_prompt=>'Porcentaje'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_cMaxlength=>60
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(76487910695626918)
,p_name=>'P304_FECHA_VIGENCIA'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(76487319830626912)
,p_prompt=>'Fecha Vigencia'
,p_display_as=>'NATIVE_DATE_PICKER_JET'
,p_cSize=>30
,p_begin_on_new_line=>'N'
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
 p_id=>wwv_flow_imp.id(76490152267626940)
,p_name=>'P304_AUX_MSJ'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(75673291196717234)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(76487119197626910)
,p_name=>'DA_VER_DATOS'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P304_VER_DATOS'
,p_condition_element=>'P304_VER_DATOS'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(76487289505626911)
,p_event_id=>wwv_flow_imp.id(76487119197626910)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    SELECT COD_USUARIO,',
'           FECHA_ALTA',
'      INTO :P304_COD_USUARIO_1, ',
'           :P304_FECHA_ALTA           ',
'      FROM CA_ESCALA_COMISION',
'     WHERE ROWID = :P304_VER_DATOS; ',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(''Error al ver datos: ''||SQLERRM);     ',
'END;        '))
,p_attribute_02=>'P304_VER_DATOS'
,p_attribute_03=>'P304_COD_USUARIO_1,P304_FECHA_ALTA'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(76488159190626920)
,p_name=>'DA_CREAR'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(76488055263626919)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(76488272506626921)
,p_event_id=>wwv_flow_imp.id(76488159190626920)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P304_ABRE_EDITAR,P304_ORIGEN,P304_FECHA_ALTA,P304_CONDICION,P304_DIA_INICIAL,P304_DIA_FINAL,P304_PORCENTAJE,P304_FECHA_VIGENCIA,P304_COD_USUARIO_1'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(76488325692626922)
,p_event_id=>wwv_flow_imp.id(76488159190626920)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(76487319830626912)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(76488584031626924)
,p_name=>'DA_CANCELAR'
,p_event_sequence=>30
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(76488479943626923)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(76488664154626925)
,p_event_id=>wwv_flow_imp.id(76488584031626924)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(76487319830626912)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(76488876276626927)
,p_name=>'DA_GUARDAR'
,p_event_sequence=>40
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(76488769776626926)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(76489592004626934)
,p_event_id=>wwv_flow_imp.id(76488876276626927)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'    :P304_AUX_MSJ := NULL;  ',
'IF :P304_ORIGEN IS NULL ',
'   OR :P304_CONDICION IS NULL ',
'   OR :P304_DIA_INICIAL IS NULL ',
'   OR :P304_DIA_FINAL IS NULL ',
'   OR :P304_PORCENTAJE IS NULL ',
'   OR :P304_FECHA_VIGENCIA IS NULL THEN',
'    :P304_AUX_MSJ := ''Debe completar todos los datos para ingresar el registro.'';',
'ELSE    ',
'    IF TO_NUMBER(:P304_DIA_FINAL) > TO_NUMBER(:P304_DIA_INICIAL) THEN',
'        CAESCCOM.PR_INSERTAR(PI_COD_EMPRESA      => :P304_COD_EMPRESA,',
'                             PI_COD_USUARIO      => :P304_COD_USUARIO,    ',
'                             PI_ORIGEN           => :P304_ORIGEN,',
'                             PI_CONDICION        => :P304_CONDICION,',
'                             PI_DIA_INICIAL      => TO_NUMBER(:P304_DIA_INICIAL),',
'                             PI_DIA_FINAL        => TO_NUMBER(:P304_DIA_FINAL),',
'                             PI_PORCENTAJE       => TO_NUMBER(:P304_PORCENTAJE),',
'                             PI_FECHA_VIGENCIA   => :P304_FECHA_VIGENCIA);',
'    ELSE',
unistr('        :P304_AUX_MSJ := ''El d\00EDa inicial debe ser menor que el d\00EDa final.'';'),
'    END IF;                   ',
'END IF;                         ',
''))
,p_attribute_02=>'P304_COD_EMPRESA,P304_COD_USUARIO,P304_ORIGEN,P304_CONDICION,P304_DIA_INICIAL,P304_DIA_FINAL,P304_PORCENTAJE,P304_FECHA_VIGENCIA'
,p_attribute_03=>'P304_AUX_MSJ'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P304_ABRE_EDITAR'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(76489611653626935)
,p_event_id=>wwv_flow_imp.id(76488876276626927)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P304_AUX_MSJ := NULL;',
'IF :P304_ORIGEN IS NULL ',
'   OR :P304_CONDICION IS NULL ',
'   OR :P304_DIA_INICIAL IS NULL ',
'   OR :P304_DIA_FINAL IS NULL ',
'   OR :P304_PORCENTAJE IS NULL ',
'   OR :P304_FECHA_VIGENCIA IS NULL THEN',
'    :P304_AUX_MSJ := ''Debe completar todos los datos para ingresar el registro.'';',
'ELSE  ',
'    IF TO_NUMBER(:P304_DIA_FINAL) > TO_NUMBER(:P304_DIA_INICIAL) THEN',
'        CAESCCOM.PR_ACTUALIZAR(PI_ROWID            => :P304_ABRE_EDITAR,',
'                               PI_COD_USUARIO      => :P304_COD_USUARIO,    ',
'                               PI_ORIGEN           => :P304_ORIGEN,',
'                               PI_CONDICION        => :P304_CONDICION,',
'                               PI_DIA_INICIAL      => TO_NUMBER(:P304_DIA_INICIAL),',
'                               PI_DIA_FINAL        => TO_NUMBER(:P304_DIA_FINAL),',
'                               PI_PORCENTAJE       => TO_NUMBER(:P304_PORCENTAJE),',
'                               PI_FECHA_VIGENCIA   => :P304_FECHA_VIGENCIA);',
'    ELSE',
unistr('        :P304_AUX_MSJ := ''El d\00EDa inicial debe ser menor que el d\00EDa final.'';'),
'    END IF;                        ',
'END IF;                           ',
'    ',
'     '))
,p_attribute_02=>'P304_ABRE_EDITAR,P304_COD_USUARIO,P304_ORIGEN,P304_CONDICION,P304_DIA_INICIAL,P304_DIA_FINAL,P304_PORCENTAJE,P304_FECHA_VIGENCIA'
,p_attribute_03=>'P304_AUX_MSJ'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P304_ABRE_EDITAR'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(76490251112626941)
,p_event_id=>wwv_flow_imp.id(76488876276626927)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'&P304_AUX_MSJ.'
,p_attribute_02=>unistr('Atenci\00F3n')
,p_attribute_03=>'information'
,p_attribute_06=>'Aceptar'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P304_AUX_MSJ'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(76489749766626936)
,p_event_id=>wwv_flow_imp.id(76488876276626927)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>unistr('apex.message.showPageSuccess(''El registro se guard\00F3 correctamente.'');')
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P304_AUX_MSJ'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(76488944262626928)
,p_event_id=>wwv_flow_imp.id(76488876276626927)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(76487319830626912)
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P304_AUX_MSJ'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(76490344691626942)
,p_event_id=>wwv_flow_imp.id(76488876276626927)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(75673830732717240)
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P304_AUX_MSJ'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(76489016170626929)
,p_name=>'DA_EDITAR'
,p_event_sequence=>50
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P304_ABRE_EDITAR'
,p_condition_element=>'P304_ABRE_EDITAR'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(76489435402626933)
,p_event_id=>wwv_flow_imp.id(76489016170626929)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'CAESCCOM.PR_RECUPERA_DATOS(PI_ROWID            => :P304_ABRE_EDITAR,',
'                           PO_ORIGEN           => :P304_ORIGEN,',
'                           PO_CONDICION        => :P304_CONDICION,',
'                           PO_DIA_INICIAL      => :P304_DIA_INICIAL,',
'                           PO_DIA_FINAL        => :P304_DIA_FINAL,',
'                           PO_PORCENTAJE       => :P304_PORCENTAJE,',
'                           PO_FECHA_VIGENCIA   => :P304_FECHA_VIGENCIA);'))
,p_attribute_02=>'P304_ABRE_EDITAR'
,p_attribute_03=>'P304_ORIGEN,P304_CONDICION,P304_DIA_INICIAL,P304_DIA_FINAL,P304_PORCENTAJE,P304_FECHA_VIGENCIA'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(76489129925626930)
,p_event_id=>wwv_flow_imp.id(76489016170626929)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(76487319830626912)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(76489205119626931)
,p_name=>'DA_SOLO_NUM'
,p_event_sequence=>60
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P304_DIA_INICIAL,P304_DIA_FINAL,P304_PORCENTAJE'
,p_bind_type=>'bind'
,p_bind_event_type=>'keypress'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(76489344519626932)
,p_event_id=>wwv_flow_imp.id(76489205119626931)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if (!soloNumeros(event)){',
'      event.preventDefault();',
'}',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(76489863736626937)
,p_name=>'DA_ELIMINAR'
,p_event_sequence=>70
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P304_ELIMINAR'
,p_condition_element=>'P304_ELIMINAR'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(76489917793626938)
,p_event_id=>wwv_flow_imp.id(76489863736626937)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>unistr('\00BFDesea eliminar el registro?')
,p_attribute_02=>unistr('Atenci\00F3n')
,p_attribute_03=>'warning'
,p_attribute_06=>'Aceptar'
,p_attribute_07=>'Cancelar'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(76490006648626939)
,p_event_id=>wwv_flow_imp.id(76489863736626937)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'CAESCCOM.PR_ELIMINAR(PI_ROWID => :P304_ELIMINAR);'
,p_attribute_02=>'P304_ELIMINAR'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(76490478633626943)
,p_event_id=>wwv_flow_imp.id(76489863736626937)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(75673830732717240)
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(75673704431717239)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_INIT'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P304_COD_MODULO := ''CA'';',
':P304_COD_EMPRESA := NVL(:P304_COD_EMPRESA,''1'');',
':P304_COD_USUARIO := NVL(:P_COD_USUARIO,:APP_USER);',
':P304_COD_SUCURSAL := :P_COD_SUCURSAL;'))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_imp.component_end;
end;
/
