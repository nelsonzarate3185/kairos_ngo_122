prompt --application/pages/page_01200
begin
--   Manifest
--     PAGE: 01200
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
 p_id=>1200
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'prueba'
,p_alias=>'PRUEBA'
,p_step_title=>'prueba'
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
'function doDescarga(p_cod_empresa, p_ser_vale, p_nro_vale){',
'',
'   var vURL = ''https://ngosaeca.com.py/reportes/rest_v2/reports/reports/CPSVALE.pdf?''',
'            + ''P_COD_EMPRESA='' + p_cod_empresa + ''&P_NRO_VALE='' + p_nro_vale + ''&P_SER_VALE='' + p_ser_vale;',
'',
'    console.log(vURL);',
'    window.open(unescape(vURL.replace(/&amp;/g,''g'')),''_blank'');',
'}'))
,p_javascript_code_onload=>'window.history.pushState("object or string", "Title", removeParam("success_msg", window.location.href));'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_last_updated_by=>'MARIANABLA'
,p_last_upd_yyyymmddhh24miss=>'20220930100038'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(21834345662368133)
,p_plug_name=>unistr('Generaci\00F3n de Gift Card')
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(21834427587368134)
,p_plug_name=>'CABECERA'
,p_parent_plug_id=>wwv_flow_imp.id(21834345662368133)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(22534861318925191)
,p_plug_name=>'BUTTONS'
,p_parent_plug_id=>wwv_flow_imp.id(21834427587368134)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40097820288263654)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(21834479208368135)
,p_plug_name=>'VW_VALES_COMPROBANTES'
,p_parent_plug_id=>wwv_flow_imp.id(21834345662368133)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(22876264066455598)
,p_plug_name=>'Comprobantes Ref.'
,p_parent_plug_id=>wwv_flow_imp.id(21834479208368135)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT VW.TIP_FAC,',
'       VW.SER_FAC,',
'       VW.NRO_FAC,',
'       VW.FEC_COMPROBANTE,',
'       VW.COD_CLIENTE,',
'       --VW.NOMBRE,',
'       VW.TOT_COMPROBANTE',
'  FROM VW_VALES_COMPROBANTES VW',
' WHERE VW.SER_COMPROBANTE = :P1200_SER_COMPROBANTE ',
'   AND VW.NRO_COMPROBANTE = :P1200_NRO_COMPROBANTE',
'   AND VW.COD_EMPRESA = :P1200_COD_EMPRESA_CAB;',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P1200_COD_EMPRESA_CAB,P1200_NRO_COMPROBANTE,P1200_SER_COMPROBANTE'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Comprobantes Ref.'
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
 p_id=>wwv_flow_imp.id(22876439205455599)
,p_max_row_count=>'1000000'
,p_no_data_found_message=>'No se encontraron datos.'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'MARIANABLA'
,p_internal_uid=>22876439205455599
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(15573320944092907)
,p_db_column_name=>'TIP_FAC'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Comprobante'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(15573704009092908)
,p_db_column_name=>'SER_FAC'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'&nbsp'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(15574144264092909)
,p_db_column_name=>'NRO_FAC'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>unistr('N\00FAmero')
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(15574532818092909)
,p_db_column_name=>'FEC_COMPROBANTE'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Fecha'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(15574983293092910)
,p_db_column_name=>'COD_CLIENTE'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Cliente'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_column_alignment=>'CENTER'
,p_rpt_named_lov=>wwv_flow_imp.id(6969834837818791)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(15575356386092910)
,p_db_column_name=>'TOT_COMPROBANTE'
,p_display_order=>70
,p_column_identifier=>'F'
,p_column_label=>'Importe'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(22897071405664900)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'73328'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'TIP_FAC:SER_FAC:NRO_FAC:FEC_COMPROBANTE:COD_CLIENTE:TOT_COMPROBANTE'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(21834649347368136)
,p_plug_name=>'VARIABLES'
,p_parent_plug_id=>wwv_flow_imp.id(21834345662368133)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>30
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(22877311032455608)
,p_plug_name=>'PIE'
,p_parent_plug_id=>wwv_flow_imp.id(21834345662368133)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>40
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(15569992097092902)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(22534861318925191)
,p_button_name=>'CARGAR_VALE'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Cargar Vale'
,p_button_position=>'CREATE'
,p_warn_on_unsaved_changes=>null
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(15570318459092902)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(22534861318925191)
,p_button_name=>'BUSCAR_VALE'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Buscar Vale'
,p_button_position=>'CREATE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(15571935708092903)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(22534861318925191)
,p_button_name=>'IMPRIMIR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Imprimir'
,p_button_position=>'CREATE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(15570780157092902)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(22534861318925191)
,p_button_name=>'GENERAR_RECIBO'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Generar Recibo'
,p_button_position=>'CREATE'
,p_button_redirect_url=>'f?p=&APP_ID.:44:&SESSION.::&DEBUG.:44:P44_COD_CLIENTE:&P1200_COD_CLIENTE.'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(15571120581092903)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(22534861318925191)
,p_button_name=>'CARGA_PEDIDO'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Carga de Pedido'
,p_button_position=>'CREATE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(15571575601092903)
,p_button_sequence=>70
,p_button_plug_id=>wwv_flow_imp.id(22534861318925191)
,p_button_name=>'ELIMINAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_image_alt=>'Eliminar'
,p_button_position=>'DELETE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(15565260319092896)
,p_name=>'P1200_COD_EMPRESA_CAB'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(21834427587368134)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(15565622459092898)
,p_name=>'P1200_SER_COMPROBANTE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(21834427587368134)
,p_prompt=>unistr('N\00B0 Vale')
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
 p_id=>wwv_flow_imp.id(15566028435092899)
,p_name=>'P1200_NRO_COMPROBANTE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(21834427587368134)
,p_prompt=>'&nbsp'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(15566404865092899)
,p_name=>'P1200_TIP_COMPROBANTE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(21834427587368134)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(15566840317092899)
,p_name=>'P1200_MONTO'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(21834427587368134)
,p_prompt=>'Monto'
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
 p_id=>wwv_flow_imp.id(15567268915092899)
,p_name=>'P1200_COD_CLIENTE'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(21834427587368134)
,p_prompt=>'Cliente'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_CLIENTE'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  SELECT cod_cliente||'' - ''||nombre D, ',
'         cod_cliente R',
'    FROM cc_clientes c, personas p',
'   WHERE c.cod_empresa = :P_COD_EMPRESA ',
'     AND c.cod_persona = p.cod_persona ',
'     AND nvl(c.estado,''X'') = ''A'' ',
'ORDER BY nombre;'))
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(15567654049092900)
,p_name=>'P1200_PARA_OBS'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(21834427587368134)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(15568067613092900)
,p_name=>'P1200_DE_OBS'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(21834427587368134)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(15568422802092901)
,p_name=>'P1200_TIP_COMPROBANTE_REF'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(21834427587368134)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(15568824553092901)
,p_name=>'P1200_AUX_CARGAR_PEDIDO'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(21834427587368134)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(15569286855092901)
,p_name=>'P1200_AUX_GENERA_RECIBO'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(21834427587368134)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(15572335181092903)
,p_name=>'P1200_AUX_MSJ'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(22534861318925191)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(15576302316092913)
,p_name=>'P1200_MONTO_MINIMO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(21834649347368136)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(15576706512092914)
,p_name=>'P1200_COD_USUARIO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(21834649347368136)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(15577182909092914)
,p_name=>'P1200_COD_EMPRESA'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(21834649347368136)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(15577544267092914)
,p_name=>'P1200_NOM_EMPRESA'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(21834649347368136)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(15577977791092915)
,p_name=>'P1200_COD_SUCURSAL'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(21834649347368136)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(15578382504092915)
,p_name=>'P1200_NOM_SUCURSAL'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(21834649347368136)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(15578756037092915)
,p_name=>'P1200_COD_MODULO'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(21834649347368136)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(15579491600092917)
,p_name=>'P1200_SER_COMPROBANTE_REF'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(22877311032455608)
,p_prompt=>unistr('Pedido N\00B0')
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
 p_id=>wwv_flow_imp.id(15579848590092917)
,p_name=>'P1200_NRO_COMPROBANTE_REF'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(22877311032455608)
,p_prompt=>'&nbsp'
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
 p_id=>wwv_flow_imp.id(15580295403092917)
,p_name=>'P1200_COD_USUARIO_CAB'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(22877311032455608)
,p_prompt=>'Generado por'
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
 p_id=>wwv_flow_imp.id(15580693220092918)
,p_name=>'P1200_FECHA_ALTA_CAB'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(22877311032455608)
,p_prompt=>'Fecha Alta'
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
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(15581184085092922)
,p_validation_name=>'VA_MONTO1'
,p_validation_sequence=>10
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF TO_NUMBER(NVl(:P1200_MONTO_MINIMO,0)) > TO_NUMBER(NVL(:P1200_MONTO,0)) THEN',
'	RETURN FALSE;			   ',
'ELSE',
'    RETURN TRUE;',
'END IF;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'Debe ingresar un monto mayor a &P1200_MONTO_MINIMO..'
,p_associated_item=>wwv_flow_imp.id(15566840317092899)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(15581566626092922)
,p_validation_name=>'VA_SER_COMPROBANTE'
,p_validation_sequence=>20
,p_validation=>'P1200_SER_COMPROBANTE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Debe ingresar un valor.'
,p_associated_item=>wwv_flow_imp.id(15565622459092898)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(15581926835092922)
,p_validation_name=>'VA_NRO_COMPROBANTE'
,p_validation_sequence=>30
,p_validation=>'P1200_NRO_COMPROBANTE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>unistr('Debe ingresar un n\00FAmero de comprobante.')
,p_associated_item=>wwv_flow_imp.id(15566028435092899)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(15582303240092923)
,p_validation_name=>'VA_COD_CLIENTE'
,p_validation_sequence=>40
,p_validation=>'P1200_COD_CLIENTE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Debe seleccionar un cliente.'
,p_associated_item=>wwv_flow_imp.id(15567268915092899)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(15584239292092928)
,p_name=>'DA_CARGA_PEDIDO'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(15571120581092903)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(15584769569092929)
,p_event_id=>wwv_flow_imp.id(15584239292092928)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF :P1200_NRO_COMPROBANTE IS NOT NULL AND :P1200_NRO_COMPROBANTE_REF IS NOT NULL THEN  ',
unistr('	NULL; --LLAMA A FORM VTPEDIDO CON LOS PAR\00C1METROS:			           '),
'	             /*Add_Parameter( pl_id, ''P_NRO_COMPROBANTE'', TEXT_PARAMETER, :B_CABECERA.NRO_COMPROBANTE_REF) ;',
'	             Add_Parameter( pl_id, ''P_SER_COMPROBANTE'', TEXT_PARAMETER,:B_CABECERA.SER_COMPROBANTE_REF ) ;	',
'	             call_form( ''VTPEDIDO'', NO_HIDE, NO_REPLACE, NO_QUERY_ONLY, pl_id ) ;*/',
'ELSE',
unistr('	NULL; --LLAMA A FORM VTPEDIDO CON LOS PAR\00C1METROS:				           '),
'	            /* Add_Parameter( pl_id, ''P_NRO_VALE'', TEXT_PARAMETER, :B_CABECERA.NRO_COMPROBANTE ) ;',
'	             Add_Parameter( pl_id, ''P_SER_VALE'', TEXT_PARAMETER,:B_CABECERA.SER_COMPROBANTE ) ;											             ',
'		           Add_Parameter( pl_id, ''P_COD_CLIENTE'', TEXT_PARAMETER,:B_CABECERA.COD_CLIENTE ) ;					             ',
'	             call_form( ''VTPEDIDO'', NO_HIDE, NO_REPLACE, NO_QUERY_ONLY, pl_id ) ;*/',
'					             ',
'    -- VER ESTO',
'    -- SET_BLOCK_PROPERTY(''B_CABECERA'', DEFAULT_WHERE, ''NRO_COMPROBANTE= '''''' || :B_CABECERA.NRO_COMPROBANTE || '''''' AND SERR_COMPROBANTE=''''''|| :B_CABECERA.SER_COMPROBANTE || '''''''');',
'',
'END IF;'))
,p_attribute_02=>'P1200_NRO_COMPROBANTE,P1200_NRO_COMPROBANTE_REF'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(15585108957092929)
,p_name=>'DA_BUSCAR'
,p_event_sequence=>30
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(15570318459092902)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(15585661023092931)
,p_event_id=>wwv_flow_imp.id(15585108957092929)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(15571575601092903)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(15586198162092934)
,p_event_id=>wwv_flow_imp.id(15585108957092929)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF :P1200_SER_COMPROBANTE IS NOT NULL AND :P1200_NRO_COMPROBANTE IS NOT NULL THEN',
'    BEGIN',
'        SELECT COD_CLIENTE,',
'               MONTO,',
'               NRO_COMPROBANTE_REF,',
'               SER_COMPROBANTE_REF ',
'          INTO :P1200_COD_CLIENTE,',
'               :P1200_MONTO,',
'               :P1200_NRO_COMPROBANTE_REF,',
'               :P1200_SER_COMPROBANTE_REF',
'          FROM VT_VALES',
'         WHERE COD_EMPRESA = :P1200_COD_EMPRESA ',
'           AND NRO_COMPROBANTE = TO_NUMBER(:P1200_NRO_COMPROBANTE)',
'           AND SER_COMPROBANTE = :P1200_SER_COMPROBANTE;',
'    EXCEPTION',
'        WHEN NO_DATA_FOUND THEN',
unistr('            RAISE_APPLICATION_ERROR(-20000, ''No se han encontrado datos con ese n\00FAmero de vale.'');'),
'        WHEN OTHERS THEN',
'            RAISE_APPLICATION_ERROR(-20000, ''Ha ocurrido un error en la tabla de Vales. ''||sqlerrm);',
'    END;',
'    DECLARE ',
'    	DUMMY CHAR(1);',
'    BEGIN',
'    	SELECT DISTINCT ''1''',
'    	INTO DUMMY',
'    	FROM vw_vales_comprobantes',
'    	WHERE COD_EMPRESA= :P1200_COD_EMPRESA',
'    	AND SER_COMPROBANTE=:P1200_SER_COMPROBANTE',
'    	AND NRO_COMPROBANTE=:P1200_NRO_COMPROBANTE;',
'',
'        :P1200_AUX_CARGAR_PEDIDO := 1;',
'        :P1200_AUX_GENERA_RECIBO := 2;',
'        :P1200_AUX_MSJ := null;',
'    	--set_item_property(''B_CABECERA.REC'', ENABLED, PROPERTY_FALSE);	',
'        --set_item_property(''B_CABECERA.PEDIDO'', ENABLED, PROPERTY_TRUE);	',
'    /*',
'    	IF :b_cabecera.NRO_COMPROBANTE_REF is  null THEN',
'    			set_item_property(''B_CABECERA.PEDIDO'', ENABLED, PROPERTY_TRUE);				',
'    	end if;',
'    */ ',
'    EXCEPTION ',
'    	WHEN NO_DATA_FOUND THEN	',
'    	    :P1200_AUX_GENERA_RECIBO := 1; --set_item_property(''B_CABECERA.REC'', ENABLED, PROPERTY_TRUE);',
'        WHEN OTHERS THEN',
'            null;',
'    END;',
'ELSE ',
unistr('    :P1200_AUX_MSJ := ''Debe ingresar un n\00FAmero de vale para realizar la b\00FAsqueda.'';'),
'END IF;        ',
'',
''))
,p_attribute_02=>'P1200_COD_EMPRESA,P1200_NRO_COMPROBANTE,P1200_SER_COMPROBANTE'
,p_attribute_03=>'P1200_NRO_COMPROBANTE_REF,P1200_SER_COMPROBANTE_REF,P1200_COD_CLIENTE,P1200_MONTO,P1200_AUX_MSJ,P1200_AUX_CARGAR_PEDIDO,P1200_AUX_GENERA_RECIBO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(15586617638092934)
,p_event_id=>wwv_flow_imp.id(15585108957092929)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(22876264066455598)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(15587135543092940)
,p_event_id=>wwv_flow_imp.id(15585108957092929)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'&P1200_AUX_MSJ.'
,p_attribute_02=>'Error'
,p_attribute_03=>'warning'
,p_attribute_04=>'fa-warning'
,p_attribute_06=>'Aceptar'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P1200_AUX_MSJ'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(15587592763092940)
,p_name=>'DA_BOTON_CARGAR_PEDIDO'
,p_event_sequence=>40
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1200_AUX_CARGAR_PEDIDO'
,p_condition_element=>'P1200_AUX_CARGAR_PEDIDO'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'1'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(15588021879092940)
,p_event_id=>wwv_flow_imp.id(15587592763092940)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(15571120581092903)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(15588513050092941)
,p_event_id=>wwv_flow_imp.id(15587592763092940)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(15571120581092903)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(15588907864092941)
,p_name=>'DA_BOTON_GENERA_RECIBO'
,p_event_sequence=>50
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1200_AUX_GENERA_RECIBO'
,p_condition_element=>'P1200_AUX_GENERA_RECIBO'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'1'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(15589451679092941)
,p_event_id=>wwv_flow_imp.id(15588907864092941)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(15570780157092902)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(15589958997092941)
,p_event_id=>wwv_flow_imp.id(15588907864092941)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(15570780157092902)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(15591461199092948)
,p_event_id=>wwv_flow_imp.id(15588907864092941)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'APEX_COLLECTION.CREATE_OR_TRUNCATE_COLLECTION(P_COLLECTION_NAME => ''CC_DETALLE_RECIBOS'');',
'APEX_COLLECTION.ADD_MEMBER (P_COLLECTION_NAME => ''CC_DETALLE_RECIBOS'',    	',
'                                       P_C002 => :P1200_TIP_COMPROBANTE, ',
'                                       P_C003 => :P1200_SER_COMPROBANTE,',
'                                       P_C004 => :P1200_NRO_COMPROBANTE,',
'                                       P_C006 => :P1200_MONTO); ',
'',
''))
,p_attribute_02=>'P1200_TIP_COMPROBANTE,P1200_SER_COMPROBANTE,P1200_NRO_COMPROBANTE,P1200_MONTO'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(15590453929092942)
,p_event_id=>wwv_flow_imp.id(15588907864092941)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$(''#P1200_MONTO'').attr(''readonly'',true);',
'$(''#P1200_SER_COMPROBANTE'').attr(''readonly'',true);',
'$(''#P1200_NRO_COMPROBANTE'').attr(''readonly'',true);'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(15590945802092947)
,p_event_id=>wwv_flow_imp.id(15588907864092941)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P1200_COD_CLIENTE'
,p_server_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(15591881252092950)
,p_name=>'DA_BOTONES'
,p_event_sequence=>60
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(15592887853092950)
,p_event_id=>wwv_flow_imp.id(15591881252092950)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(15571120581092903)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(15593330254092950)
,p_event_id=>wwv_flow_imp.id(15591881252092950)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(15570780157092902)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(15593821543092951)
,p_event_id=>wwv_flow_imp.id(15591881252092950)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(15571575601092903)
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
 p_id=>wwv_flow_imp.id(15592301275092950)
,p_event_id=>wwv_flow_imp.id(15591881252092950)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P1200_COD_CLIENTE'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(15594256238092951)
,p_name=>'DA_CONTROL_MAESTRO'
,p_event_sequence=>70
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(15571575601092903)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(15594705026092951)
,p_event_id=>wwv_flow_imp.id(15594256238092951)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>unistr('\00BFQuiere eliminar definitivamente el vale?')
,p_attribute_02=>unistr('Atenci\00F3n')
,p_attribute_03=>'warning'
,p_attribute_04=>'fa-warning'
,p_attribute_06=>'Aceptar'
,p_attribute_07=>'Cancelar'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(15595245321092952)
,p_event_id=>wwv_flow_imp.id(15594256238092951)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  Dummy_Define CHAR(1);',
'  CURSOR VW_VALES_COMPROBANTES_cur IS      ',
'    SELECT 1 FROM vw_vales_comprobantes v     ',
'    WHERE v.SER_COMPROBANTE = :P1200_SER_COMPROBANTE',
'      and v.NRO_COMPROBANTE = :P1200_NRO_COMPROBANTE',
'      and v.COD_EMPRESA = :P1200_COD_EMPRESA_CAB;',
'BEGIN',
'',
'  OPEN VW_VALES_COMPROBANTES_cur;     ',
'  FETCH VW_VALES_COMPROBANTES_cur INTO Dummy_Define;     ',
'  IF ( VW_VALES_COMPROBANTES_cur%found ) THEN         ',
'    CLOSE VW_VALES_COMPROBANTES_cur;     ',
'    raise_application_error(-20000,''No puede borrar registro maestro cuando existen registros detalle coincidentes.'');    ',
'  END IF;',
'  CLOSE VW_VALES_COMPROBANTES_cur;',
'END;'))
,p_attribute_02=>'P1200_SER_COMPROBANTE,P1200_NRO_COMPROBANTE,P1200_COD_EMPRESA_CAB'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(15595718955092952)
,p_event_id=>wwv_flow_imp.id(15594256238092951)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_01=>'ELIMINAR'
,p_attribute_02=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(15596182205092954)
,p_name=>'DA_CARGAR_VALE'
,p_event_sequence=>80
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(15569992097092902)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(15596665303092954)
,p_event_id=>wwv_flow_imp.id(15596182205092954)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    VEXISTE EXCEPTION;',
'    VNROCOMP NUMBER;',
'BEGIN    ',
'    SELECT NRO_COMPROBANTE',
'      INTO VNROCOMP',
'      FROM VT_VALES',
'     WHERE NRO_COMPROBANTE = :P1200_NRO_COMPROBANTE',
'       AND COD_EMPRESA = :P1200_COD_EMPRESA_CAB',
'       AND SER_COMPROBANTE = :P1200_SER_COMPROBANTE;',
'    RAISE VEXISTE;',
'    apex_debug.error(''aca'');',
'EXCEPTION',
'    WHEN NO_DATA_FOUND THEN   ',
'        apex_debug.error(''insert'');  ',
'        NULL;',
'    WHEN VEXISTE THEN',
unistr('        RAISE_APPLICATION_ERROR(-20000,''Ya existe un vale con ese n\00FAmero.'');    '),
'    WHEN OTHERS THEN',
'        NULL;   ',
'END;    '))
,p_attribute_02=>'P1200_NRO_COMPROBANTE,P1200_COD_EMPRESA,P1200_SER_COMPROBANTE'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(15597126967092954)
,p_event_id=>wwv_flow_imp.id(15596182205092954)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_01=>'CARGAR_VALE'
,p_attribute_02=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(15597528987092954)
,p_name=>'DA_HABILITA_BOTONES'
,p_event_sequence=>90
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1200_NRO_COMPROBANTE_REF'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(15598030732092954)
,p_event_id=>wwv_flow_imp.id(15597528987092954)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(15569992097092902)
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P1200_SER_COMPROBANTE_REF'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(15598539971092955)
,p_event_id=>wwv_flow_imp.id(15597528987092954)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(15571575601092903)
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P1200_SER_COMPROBANTE_REF'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(15598932854092956)
,p_name=>'DA_IMPRIMIR'
,p_event_sequence=>100
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(15571935708092903)
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>'$v(''P1200_SER_COMPROBANTE'') !== "" && $v(''P1200_NRO_COMPROBANTE'') !== ""'
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(15599466239092957)
,p_event_id=>wwv_flow_imp.id(15598932854092956)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'doDescarga(apex.item(''P1200_COD_EMPRESA'').getValue(), apex.item(''P1200_SER_COMPROBANTE'').getValue(),apex.item(''P1200_NRO_COMPROBANTE'').getValue());'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(15599926716092958)
,p_event_id=>wwv_flow_imp.id(15598932854092956)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>unistr('Debe ingresar un n\00FAmero de comprobante completo para imprimir el vale.')
,p_attribute_02=>'Error'
,p_attribute_03=>'warning'
,p_attribute_04=>'fa-warning'
,p_attribute_06=>'Aceptar'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(15583009538092926)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'CLEAR SESSION'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(15582671718092923)
,p_process_sequence=>20
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_INIT'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'--PRE-FORM',
':P_COD_MODULO := ''VT'';',
'',
'--INICIALIZA GLOBALES',
':P1200_COD_USUARIO  := NVL(:P_COD_USUARIO, :APP_USER);',
':P1200_COD_EMPRESA  := NVL(:P_COD_EMPRESA,1);',
':P1200_NOM_EMPRESA  := NVL(:P_NOM_EMPRESA, NULL);',
':P1200_COD_SUCURSAL := NVL(:P_COD_SUCURSAL, ''01'');',
':P1200_NOM_SUCURSAL := NVL(:P_NOM_SUCURSAL, NULL);',
':P1200_COD_MODULO   := NVL(:P_COD_MODULO, NULL);',
'',
'--PRE-FORM',
':P1200_MONTO_MINIMO := NVL(bs_busca_parametro( :P1200_COD_MODULO, ''MONTO_MINIMO''),0);   ',
'',
'--WHEN-CREATE-RECORD BLOQUE CABECERA --> solo cuando ingrese el vendedor a crear un nievo gift card',
':P1200_COD_EMPRESA_CAB := :P1200_COD_EMPRESA;',
':P1200_SER_COMPROBANTE := ''G'';',
'',
'--PRE-INSERT BLOQUE CABECERA',
':P1200_FECHA_ALTA_CAB   := sysdate ;',
':P1200_COD_USUARIO_CAB  := :APP_USER;',
'',
'if :P1200_NRO_COMPROBANTE IS NULL then',
'  begin',
'	   Select nvl(max(NRO_COMPROBANTE),0)+1',
'	     into :P1200_NRO_COMPROBANTE',
'	     from VT_VALES',
'	    where cod_empresa     = :P1200_COD_EMPRESA',
'	      and ser_COMPROBANTE = :P1200_SER_COMPROBANTE;',
'   exception',
'     when others then',
'       :P1200_NRO_COMPROBANTE := 1; ',
'  end;',
'end if; ',
'',
':P1200_AUX_MSJ := null;',
'                                                ',
''))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(15583461407092926)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'CARGAR_VALE'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
':P1200_FECHA_ALTA_CAB := sysdate; ',
'',
'INSERT INTO VT_VALES(COD_EMPRESA,SER_COMPROBANTE,NRO_COMPROBANTE,COD_USUARIO,FECHA_ALTA,COD_CLIENTE,MONTO,TIP_COMPROBANTE_REF,SER_COMPROBANTE_REF,NRO_COMPROBANTE_REF,PARA_OBS,DE_OBS)',
'     VALUES(:P1200_COD_EMPRESA_CAB,:P1200_SER_COMPROBANTE,:P1200_NRO_COMPROBANTE,:P1200_COD_USUARIO_CAB,:P1200_FECHA_ALTA_CAB,:P1200_COD_CLIENTE,:P1200_MONTO,:P1200_TIP_COMPROBANTE_REF,:P1200_SER_COMPROBANTE_REF,:P1200_NRO_COMPROBANTE_REF,:P1200_PARA'
||'_OBS,:P1200_DE_OBS);    ',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'Ha ocurrido un error.'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(15569992097092902)
,p_process_success_message=>unistr('El Vale se carg\00F3 correctamente.')
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(15583870588092926)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'ELIMINAR_VALE'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    DELETE FROM VT_VALES',
'     WHERE NRO_COMPROBANTE = :P1200_NRO_COMPROBANTE',
'       AND SER_COMPROBANTE = :P1200_SER_COMPROBANTE',
'       AND COD_EMPRESA = :P1200_COD_EMPRESA_CAB;  ',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'Ha ocurrido un error.'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(15571575601092903)
,p_process_success_message=>'El vale se ha eliminado correctamente.'
);
wwv_flow_imp.component_end;
end;
/
