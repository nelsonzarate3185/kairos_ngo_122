prompt --application/pages/page_00329
begin
--   Manifest
--     PAGE: 00329
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
 p_id=>329
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'Agenda de Visita  - CAVISPRO'
,p_alias=>'CAVISPRO'
,p_step_title=>'CAVISPRO'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function soloNumeros(e){',
'  var key = e.charCode;',
'    return key >= 48 && key <= 57;',
'}',
''))
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.apex-item-select:focus, .apex-item-text:focus, .apex-item-textarea:focus {',
'   background-color: #e9ffbf !important;',
'   border-color: #8f0000 !important;',
'}',
'',
'.apex-item-select,  .apex-item-text , .apex-item-textarea , .apex-item-group, .display_only {',
'  border-color: #b4c6dd !important;',
'  background-color: #f8f6ea !important;',
'}',
'',
'',
'#PARAM{    ',
'  background-color: #487ab8  !important;',
'} ',
'',
'.t-Body-content{',
'   background-color:  #d0e0f783!important;}',
'',
'',
'',
'  .t-Form-label  {',
'  color: #003a85  !important;',
'  border-color: #003a85 !important;',
'}',
'',
'  .tabla_color   td.t-Report-cell ,  th.t-Report-colHead,  th.t-Report-colHead a{',
'  background-color:  #003a85  !important;',
'  color: yellow  !important;',
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
'	  color:yellow !important;    }',
'   ',
'.a-IRR-table tr td { ',
'        color: black !important;',
'   }',
' ',
'.a-IRR-table td {',
'    border: 1px solid #003a85b7 !important;',
'}',
''))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'03'
,p_last_updated_by=>'CHARBA'
,p_last_upd_yyyymmddhh24miss=>'20250110135527'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(79902535578686307)
,p_plug_name=>'VARIABLES'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>990
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(79902714953686309)
,p_plug_name=>'PARAMETROS'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>1000
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(79903092414686312)
,p_plug_name=>'Agenda de Visita'
,p_region_template_options=>'#DEFAULT#:t-Region--accent1:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>1020
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(79903127002686313)
,p_plug_name=>'IZQUIERDA'
,p_parent_plug_id=>wwv_flow_imp.id(79903092414686312)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(79903245969686314)
,p_plug_name=>'DERECHA'
,p_parent_plug_id=>wwv_flow_imp.id(79903092414686312)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>20
,p_plug_new_grid_row=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(79905849550686340)
,p_name=>'AGENDA DE VISITAS'
,p_parent_plug_id=>wwv_flow_imp.id(79903245969686314)
,p_template=>wwv_flow_imp.id(40125238939263661)
,p_display_sequence=>10
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--removeHeader js-removeLandmark:t-Region--accent1:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT  nro_movimiento, ',
'        FEC_VISITA, 		',
'	    TO_CHAR(fec_visita,''DAY'') DIA,',
'        CLIENTE_FINAL, ',
'        DIRECCION,',
'        HORA_VISITA, ',
'        OBSERVACION, ',
'        COORDENADAS,',
'        cod_cliente,',
'        COD_ARTICULO,',
'        ROWID ROW_ID,',
'        NULL UBICACION',
'  FROM  inv.CA_VISITA_PROMOTOR ',
' WHERE  cod_empresa = :P_COD_EMPRESA',
' and fec_visita is not null',
'  AND 	trunc(fec_visita) >= trunc(sysdate)',
'   AND 	nvl(estado,''P'') <> ''F''',
'   AND 	(COD_PROMOTOR = :P329_COD_PROMOTOR OR :P329_COD_PROMOTOR IS NULL)',
'   AND 	(trunc(fec_visita) = :P329_FEC_VISITA OR :P329_FEC_VISITA IS NULL)',
'   AND :P329_INDICADOR_REPORT_VISITA = ''1''		',
'   ORDER BY fec_visita,hora_visita ASC;',
''))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P_COD_EMPRESA,P329_COD_PROMOTOR,P329_FEC_VISITA,P329_INDICADOR_REPORT_VISITA'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(40147995650263667)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'Sin Registro de Visitas'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(399810957039424206)
,p_query_column_id=>1
,p_column_alias=>'NRO_MOVIMIENTO'
,p_column_display_sequence=>10
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(399811034938424207)
,p_query_column_id=>2
,p_column_alias=>'FEC_VISITA'
,p_column_display_sequence=>30
,p_column_heading=>'Fecha'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(399811154492424208)
,p_query_column_id=>3
,p_column_alias=>'DIA'
,p_column_display_sequence=>20
,p_column_heading=>'Dia'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(399811269216424209)
,p_query_column_id=>4
,p_column_alias=>'CLIENTE_FINAL'
,p_column_display_sequence=>50
,p_column_heading=>'Cliente Final'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(399811327557424210)
,p_query_column_id=>5
,p_column_alias=>'DIRECCION'
,p_column_display_sequence=>70
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(399811407216424211)
,p_query_column_id=>6
,p_column_alias=>'HORA_VISITA'
,p_column_display_sequence=>40
,p_column_heading=>'Hora'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(399811540035424212)
,p_query_column_id=>7
,p_column_alias=>'OBSERVACION'
,p_column_display_sequence=>80
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(399811634971424213)
,p_query_column_id=>8
,p_column_alias=>'COORDENADAS'
,p_column_display_sequence=>90
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(399811785910424214)
,p_query_column_id=>9
,p_column_alias=>'COD_CLIENTE'
,p_column_display_sequence=>100
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(399811888126424215)
,p_query_column_id=>10
,p_column_alias=>'COD_ARTICULO'
,p_column_display_sequence=>60
,p_column_heading=>'Articulo'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(399811981222424216)
,p_query_column_id=>11
,p_column_alias=>'ROW_ID'
,p_column_display_sequence=>120
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(399812016715424217)
,p_query_column_id=>12
,p_column_alias=>'UBICACION'
,p_column_display_sequence=>130
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(79906315031686345)
,p_plug_name=>'INDICADORES'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>1010
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(81222651076464316)
,p_plug_name=>unistr('BUSCAR UBICACI\00D3N')
,p_region_css_classes=>'js-dialog-size1200x580'
,p_region_template_options=>'#DEFAULT#:js-dialog-size720x480'
,p_plug_template=>wwv_flow_imp.id(40120082745263659)
,p_plug_display_sequence=>1050
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(101169402651670817)
,p_plug_name=>'MAPA'
,p_parent_plug_id=>wwv_flow_imp.id(81222651076464316)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>40
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_source_type=>'PLUGIN_COM.JK64.SIMPLE_GOOGLE_MAP'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'-25, -57'
,p_attribute_02=>'8'
,p_attribute_03=>'400'
,p_attribute_04=>'P329_COORDS'
,p_attribute_05=>'16'
,p_attribute_07=>'N'
,p_attribute_11=>'P329_ADRESS'
,p_attribute_12=>'N'
,p_attribute_17=>'auto'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(81224793998464337)
,p_plug_name=>'CARGAR DETALLE VISITA'
,p_region_template_options=>'#DEFAULT#:js-dialog-size600x400'
,p_plug_template=>wwv_flow_imp.id(40120082745263659)
,p_plug_display_sequence=>1060
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(81222507084464315)
,p_button_sequence=>70
,p_button_plug_id=>wwv_flow_imp.id(79903245969686314)
,p_button_name=>'P329_BTN_BUSCAR_COORD'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight:t-Button--gapTop'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('Buscar Ubicaci\00F3n')
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-search'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(79904707691686329)
,p_button_sequence=>100
,p_button_plug_id=>wwv_flow_imp.id(79903127002686313)
,p_button_name=>'P329_BTN_FINALIZA'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft:t-Button--stretch'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Finalizar'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-check'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(79904873134686330)
,p_button_sequence=>110
,p_button_plug_id=>wwv_flow_imp.id(79903127002686313)
,p_button_name=>'P329_BTN_CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft:t-Button--stretch'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Cancelar'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-times'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(79904943048686331)
,p_button_sequence=>120
,p_button_plug_id=>wwv_flow_imp.id(79903127002686313)
,p_button_name=>'P329_BTN_ENVIA_SMS'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft:t-Button--stretch'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('Env\00EDa SMS')
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-envelope-arrow-up'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(81224964657464339)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(81224793998464337)
,p_button_name=>'P329_BTN_ACEPTAR_RES_VIS_FIN'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Aceptar'
,p_button_position=>'BOTTOM'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(81226060983464350)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(81224793998464337)
,p_button_name=>'P329_BTN_ACEPTAR_RES_VIS_SMS'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Aceptar'
,p_button_position=>'BOTTOM'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(81605097208131029)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(101169402651670817)
,p_button_name=>'P329_BTN_ACEPTAR_MAPA'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--gapTop'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Aceptar'
,p_button_position=>'BOTTOM'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(81225010591464340)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(81224793998464337)
,p_button_name=>'P329_BTN_CANCELAR_RES_VIS'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Cerrar'
,p_button_position=>'BOTTOM'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(81604739686131026)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(101169402651670817)
,p_button_name=>'P329_BTN_CERRAR_MAPA'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--gapTop'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_image_alt=>'Cerrar'
,p_button_position=>'BOTTOM'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(80548049650746016)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(79903092414686312)
,p_button_name=>'P329_BTN_GUARDAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft:t-Button--gapRight'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Guardar'
,p_button_position=>'EDIT'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'u-color-21-bg u-color-43-text'
,p_icon_css_classes=>'fa-save'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(80549672230746032)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(79903092414686312)
,p_button_name=>'P329_BTN_LIMPIAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft:t-Button--gapLeft:t-Button--padRight'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Limpiar'
,p_button_position=>'EDIT'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'u-color-21-bg u-color-43-text'
,p_icon_css_classes=>'fa-rotate-left'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(79902695605686308)
,p_name=>'P329_COD_MODULO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(79902535578686307)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(79902897675686310)
,p_name=>'P329_P_NRO_MOVIMIENTO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(79902714953686309)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(79903322845686315)
,p_name=>'P329_NRO_MOVIMIENTO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(79903127002686313)
,p_prompt=>unistr('N\00FAmero')
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
 p_id=>wwv_flow_imp.id(79903499344686316)
,p_name=>'P329_ESTADO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(79903127002686313)
,p_prompt=>' Estado'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:PENDIENTE;P,FINALIZADO;F,CANCELADO;C,AGENDADO;A'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186937130263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(79903594153686317)
,p_name=>'P329_COD_CLIENTE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(79903127002686313)
,p_prompt=>'Distribuidor'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_CLIENTE_CAVISPRO'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT c.cod_cliente || '' - '' || ltrim(rtrim(nvl(p.nombre, p.nomb_fantasia))) D, ',
'       c.cod_cliente R, ',
'       I.NUMERO',
'  FROM cc_clientes c, personas p, ident_personas i',
' WHERE c.cod_empresa = :P_COD_EMPRESA',
'   AND c.cod_persona = p.cod_persona',
'   AND c.estado <> ''B''',
'   AND c.estado <> ''I''',
'   AND i.cod_persona(+) = p.cod_persona',
'   AND i.cod_ident(+)=''CI''',
' ORDER BY 1'))
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
 p_id=>wwv_flow_imp.id(79903671527686318)
,p_name=>'P329_COD_SUCURSAL'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(79903127002686313)
,p_prompt=>'Suc. Dist'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT P.cod_SUCURSAL || '' - '' || p.nombre D, ',
'       --p.direccion, ',
'       --p.telefono, ',
'       P.cod_SUCURSAL R',
'',
' FROM cc_clientes c, BS_SUCURSAL_CLIENTE p',
'WHERE c.cod_empresa = :P_COD_EMPRESA',
'  AND c.cod_cliente = :P329_COD_CLIENTE',
'  AND c.cod_persona = p.cod_persona'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_begin_on_new_line=>'N'
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
 p_id=>wwv_flow_imp.id(79903998931686321)
,p_name=>'P329_CLIENTE_FINAL'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(79903127002686313)
,p_prompt=>'Cliente Final'
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
 p_id=>wwv_flow_imp.id(79904046053686322)
,p_name=>'P329_COD_USUARIO'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(79903127002686313)
,p_prompt=>'Usuario'
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
 p_id=>wwv_flow_imp.id(79904105031686323)
,p_name=>'P329_MOTIVO'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(79903127002686313)
,p_prompt=>'Motivo'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>unistr('STATIC:WHIRLPOOL SET UP;WHIRLPOOL SET UP,ENSE\00D1ANZA DE USO;ENSE\00D1ANZA DE USO,PROYECTOS/CLIMATIZACI\00D3N;PROYECT/CLIMAT,PUESTA EN MARCHA;PUESTA_EN_MARCHA')
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(79904275182686324)
,p_name=>'P329_DIRECCION'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(79903127002686313)
,p_prompt=>unistr('Direcci\00F3n')
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
 p_id=>wwv_flow_imp.id(79905010446686332)
,p_name=>'P329_FEC_VISITA'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(79903245969686314)
,p_prompt=>'Fecha Visita'
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
 p_id=>wwv_flow_imp.id(79905123052686333)
,p_name=>'P329_HORA_VISITA'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(79903245969686314)
,p_prompt=>'Hora'
,p_format_mask=>'DD-MON-YYYY HH24:MI'
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
 p_id=>wwv_flow_imp.id(79905361129686335)
,p_name=>'P329_COD_PROMOTOR'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(79903245969686314)
,p_prompt=>'Responsable'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_PROMOTOR_CAVISPRO'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT DISTINCT p.cod_persona || ''- '' || nvl(p.nombre,p.nomb_fantasia) D,',
'                p.cod_persona R',
'FROM  vt_asignacion_promotora a,',
'      rh_empleados e,',
'      personas p',
'WHERE a.cod_empresa = :P_COD_EMPRESA',
'AND   nvl(a.estado,''S'') = ''S''',
'AND   a.cod_empleado = e.cod_empleado',
'AND   e.cod_persona = p.cod_persona',
'',
'UNION ALL',
'SELECT ''269932'',''SILVIO DAVID ALFONSO BAREIRO'' ',
'FROM dual',
'ORDER BY 2 DESC'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'...'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(79905440642686336)
,p_name=>'P329_COD_ARTICULO'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(79903245969686314)
,p_prompt=>'Producto'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_ARTICULO_CAVISPRO'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT cod_articulo || '' - '' || descripcion D, cod_articulo R ',
'FROM st_articulos ',
'WHERE cod_empresa = :P_COD_EMPRESA ',
'AND estado = ''A'' ',
'ORDER BY descripcion'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'...'
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
 p_id=>wwv_flow_imp.id(79905594967686337)
,p_name=>'P329_COORDENADAS'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(79903245969686314)
,p_prompt=>'Coordenada'
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
 p_id=>wwv_flow_imp.id(79905675859686338)
,p_name=>'P329_NRO_TELEF'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(79903245969686314)
,p_prompt=>'Telef'
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
 p_id=>wwv_flow_imp.id(79905792379686339)
,p_name=>'P329_OBSERVACION'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(79903127002686313)
,p_prompt=>'Observacion'
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
 p_id=>wwv_flow_imp.id(79906060457686342)
,p_name=>'P329_DIA'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(79903245969686314)
,p_prompt=>unistr('D\00EDa')
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
 p_id=>wwv_flow_imp.id(79906474522686346)
,p_name=>'P329_INDICADOR_BOTON'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(79906315031686345)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(80549228992746028)
,p_name=>'P329_INDICADOR_REPORT_VISITA'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(79906315031686345)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(80550643067746042)
,p_name=>'P329_INDICADOR_DATA_FOUND'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(79906315031686345)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(81224887418464338)
,p_name=>'P329_RESULTADO_VISITA'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(81224793998464337)
,p_prompt=>'Resultado Visita'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>30
,p_cHeight=>5
,p_field_template=>wwv_flow_imp.id(40186937130263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(81602749110131006)
,p_name=>'P329_INDICADOR_ALERT'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(79906315031686345)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(81603453860131013)
,p_name=>'P329_DIR_ARCHIVO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(81224793998464337)
,p_prompt=>unistr('Tel\00E9fono')
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186937130263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(81606101095131040)
,p_name=>'P329_VER_UBIC_ROW_ID'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(79906315031686345)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(101169546981670818)
,p_name=>'P329_COORDS'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(101169402651670817)
,p_prompt=>'Coordenadas'
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
 p_id=>wwv_flow_imp.id(101169669045670819)
,p_name=>'P329_ADRESS'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(101169402651670817)
,p_prompt=>unistr('Direcci\00F3n')
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
 p_id=>wwv_flow_imp.id(832975881222065723)
,p_name=>'P329_URL'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(79902535578686307)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(832975937548065724)
,p_name=>'P329_LON'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(79902535578686307)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(832976092589065725)
,p_name=>'P329_LAT'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(79902535578686307)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(832976141881065726)
,p_name=>'P329_BANDERA'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(79902535578686307)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(832976279092065727)
,p_name=>'P329_ACCION_CONSULTA'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(79902535578686307)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(832977058128065735)
,p_name=>'P329_P_COD_CLIENTE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(79902714953686309)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(80551289257746048)
,p_validation_name=>'VL_COD_PROMOTOR'
,p_validation_sequence=>10
,p_validation=>'P329_COD_PROMOTOR'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'El responsable no puede ser nulo.'
,p_validation_condition_type=>'NEVER'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(80551388053746049)
,p_validation_name=>'VL_COD_CLIENTE'
,p_validation_sequence=>20
,p_validation=>'P329_COD_CLIENTE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'El Distribuidor no puede ser nulo.'
,p_validation_condition_type=>'NEVER'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(80551472339746050)
,p_validation_name=>'VL_ESTADO'
,p_validation_sequence=>30
,p_validation=>'P329_ESTADO'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'El estado no puede ser nulo.'
,p_validation_condition=>'GUARDAR'
,p_validation_condition_type=>'REQUEST_EQUALS_CONDITION'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
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
 p_id=>wwv_flow_imp.id(79903708470686319)
,p_name=>'DA_SETEAR_CLIENTE'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P329_COD_CLIENTE'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(79903877020686320)
,p_event_id=>wwv_flow_imp.id(79903708470686319)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_02=>'P329_COD_CLIENTE'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(79904313902686325)
,p_name=>'DA_OCULTAR_SUCURSAL'
,p_event_sequence=>20
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(79904452806686326)
,p_event_id=>wwv_flow_imp.id(79904313902686325)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P329_COD_SUCURSAL'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(79904527711686327)
,p_name=>'DA_MOSTRAR_SUCURSAL'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P329_COD_CLIENTE'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(79904630126686328)
,p_event_id=>wwv_flow_imp.id(79904527711686327)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P329_COD_SUCURSAL'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P329_COD_CLIENTE'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(79906190600686343)
,p_name=>'DA_BOTON_ESTADO_C_F'
,p_event_sequence=>40
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P329_ESTADO'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(79906260845686344)
,p_event_id=>wwv_flow_imp.id(79906190600686343)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    IF :P329_ESTADO = ''C'' OR  :P329_ESTADO = ''F'' THEN          ',
'		:P329_INDICADOR_BOTON := ''1'';',
'    ELSE',
'        :P329_INDICADOR_BOTON := ''0'';',
'    END IF;',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        raise_application_error(-20000, SQLERRM);',
'END;'))
,p_attribute_02=>'P329_ESTADO'
,p_attribute_03=>'P329_INDICADOR_BOTON'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(79906548200686347)
,p_event_id=>wwv_flow_imp.id(79906190600686343)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(79904873134686330)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P329_INDICADOR_BOTON'
,p_client_condition_expression=>'1'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(79906674818686348)
,p_event_id=>wwv_flow_imp.id(79906190600686343)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(79904707691686329)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P329_INDICADOR_BOTON'
,p_client_condition_expression=>'1'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(79906714219686349)
,p_name=>'DA_BOTON_ESTADO_A'
,p_event_sequence=>60
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P329_ESTADO'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(79906897272686350)
,p_event_id=>wwv_flow_imp.id(79906714219686349)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    IF :P329_ESTADO = ''A'' THEN          ',
'		:P329_INDICADOR_BOTON := ''1'';',
'    ELSE',
'        :P329_INDICADOR_BOTON := ''0'';',
'    END IF;',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        raise_application_error(-20000, SQLERRM);',
'END;',
'',
''))
,p_attribute_02=>'P329_ESTADO'
,p_attribute_03=>'P329_INDICADOR_BOTON'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(80546524250746001)
,p_event_id=>wwv_flow_imp.id(79906714219686349)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(79904873134686330)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P329_INDICADOR_BOTON'
,p_client_condition_expression=>'1'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(80546635901746002)
,p_event_id=>wwv_flow_imp.id(79906714219686349)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(79904707691686329)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P329_INDICADOR_BOTON'
,p_client_condition_expression=>'1'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(80547599298746011)
,p_name=>'DA_BOTON_ESTADO_P'
,p_event_sequence=>70
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P329_ESTADO'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(80547605839746012)
,p_event_id=>wwv_flow_imp.id(80547599298746011)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    IF :P329_ESTADO = ''P'' THEN          ',
'		:P329_INDICADOR_BOTON := ''1'';',
'    ELSE',
'        :P329_INDICADOR_BOTON := ''0'';',
'    END IF;',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'         raise_application_error(-20000, SQLERRM);',
'END;',
'',
''))
,p_attribute_02=>'P329_ESTADO'
,p_attribute_03=>'P329_INDICADOR_BOTON'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(80547720199746013)
,p_event_id=>wwv_flow_imp.id(80547599298746011)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(79904873134686330)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P329_INDICADOR_BOTON'
,p_client_condition_expression=>'1'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(80547878814746014)
,p_event_id=>wwv_flow_imp.id(80547599298746011)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(79904707691686329)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P329_INDICADOR_BOTON'
,p_client_condition_expression=>'1'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(80549347852746029)
,p_name=>'DA_REFRESCAR_REPORTE'
,p_event_sequence=>80
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P329_FEC_VISITA,P329_COD_PROMOTOR'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(80549461338746030)
,p_event_id=>wwv_flow_imp.id(80549347852746029)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    :P329_INDICADOR_REPORT_VISITA := ''1'';',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'         raise_application_error(-20000, SQLERRM);',
'END;'))
,p_attribute_03=>'P329_INDICADOR_REPORT_VISITA'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(80549539022746031)
,p_event_id=>wwv_flow_imp.id(80549347852746029)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(79905849550686340)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(80549827802746034)
,p_name=>'DA_SETEAR_DIA'
,p_event_sequence=>90
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P329_FEC_VISITA'
,p_condition_element=>'P329_FEC_VISITA'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(80549906694746035)
,p_event_id=>wwv_flow_imp.id(80549827802746034)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    :P329_DIA := TO_CHAR(TO_DATE(:P329_FEC_VISITA), ''DAY'');',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        raise_application_error(-20000, SQLERRM);',
'END;'))
,p_attribute_02=>'P329_FEC_VISITA'
,p_attribute_03=>'P329_DIA'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(80550284702746038)
,p_name=>'DA_BUSCAR_MOVIMIENTO'
,p_event_sequence=>100
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P329_NRO_MOVIMIENTO'
,p_condition_element=>'P329_NRO_MOVIMIENTO'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(80550324383746039)
,p_event_id=>wwv_flow_imp.id(80550284702746038)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'        SELECT  nro_movimiento,',
'                ESTADO,',
'                COD_CLIENTE,',
'                SUCURSAL,',
'                CLIENTE_FINAL,',
'                DIRECCION,',
'                MOTIVO,',
'                COD_USUARIO,',
'                FEC_VISITA,',
'                TO_CHAR(HORA_VISITA, ''HH24:MI''),                	',
'    	        TO_CHAR(fec_visita,''DAY''),                ',
'                COD_PROMOTOR,',
'                COD_ARTICULO,',
'                COORDENADAS,',
'                NRO_TELEF,',
'                OBSERVACION',
'          ',
'          INTO  :P329_NRO_MOVIMIENTO,',
'                :P329_ESTADO,',
'                :P329_COD_CLIENTE,',
'                :P329_COD_SUCURSAL,',
'                :P329_CLIENTE_FINAL,',
'                :P329_DIRECCION,',
'                :P329_MOTIVO,',
'                :P329_COD_USUARIO,',
'                :P329_FEC_VISITA,',
'                :P329_HORA_VISITA,',
'                :P329_DIA,',
'                :P329_COD_PROMOTOR,',
'                :P329_COD_ARTICULO,',
'                :P329_COORDENADAS,',
'                :P329_NRO_TELEF,',
'                :P329_OBSERVACION',
'',
'',
'          FROM  inv.CA_VISITA_PROMOTOR ',
'         WHERE  cod_empresa = :P_COD_EMPRESA',
'           AND  nro_movimiento = :P329_NRO_MOVIMIENTO;',
'',
'        :P329_INDICADOR_REPORT_VISITA := ''1'';',
'',
'',
'',
'EXCEPTION',
'',
'    WHEN NO_DATA_FOUND THEN',
'',
'        :P329_ESTADO := NULL;',
'        :P329_COD_CLIENTE := NULL;',
'        :P329_COD_SUCURSAL := NULL;',
'        :P329_CLIENTE_FINAL := NULL;',
'        :P329_DIRECCION := NULL;',
'        :P329_MOTIVO:= NULL;',
'        :P329_COD_USUARIO := :APP_USER;',
'        :P329_FEC_VISITA := NULL;',
'        :P329_HORA_VISITA := NULL;',
'        :P329_DIA := NULL;',
'        :P329_COD_PROMOTOR := NULL;',
'        :P329_COD_ARTICULO := NULL;',
'        :P329_COORDENADAS := NULL;',
'        :P329_NRO_TELEF := NULL;',
'        :P329_OBSERVACION := NULL;',
'        :P329_INDICADOR_REPORT_VISITA := ''0'';',
'',
'    WHEN OTHERS THEN',
'        raise_application_error(-20000, SQLERRM);',
'END;',
'',
'',
'    ',
''))
,p_attribute_02=>'P_COD_EMPRESA,P329_NRO_MOVIMIENTO'
,p_attribute_03=>'P329_ESTADO,P329_COD_CLIENTE,P329_COD_SUCURSAL,P329_CLIENTE_FINAL,P329_DIRECCION,P329_MOTIVO,P329_COD_USUARIO,P329_INDICADOR_REPORT_VISITA,P329_FEC_VISITA,P329_HORA_VISITA,P329_DIA,P329_COD_PROMOTOR,P329_COD_ARTICULO,P329_COORDENADAS,P329_NRO_TELEF,P'
||'329_OBSERVACION,P329_FEC_VISITA,P329_HORA_VISITA,P329_DIA,P329_COD_PROMOTOR,P329_COD_ARTICULO,P329_COORDENADAS,P329_NRO_TELEF,P329_OBSERVACION,P329_INDICADOR_REPORT_VISITA'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(80550404507746040)
,p_event_id=>wwv_flow_imp.id(80550284702746038)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(79905849550686340)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(80551012039746046)
,p_name=>'DA_LIMPIAR_CAMPOS'
,p_event_sequence=>110
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(80549672230746032)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(80551189620746047)
,p_event_id=>wwv_flow_imp.id(80551012039746046)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_01=>'LIMPIAR'
,p_attribute_02=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(81221136914464301)
,p_name=>'DA_GUARDAR_DATOS'
,p_event_sequence=>120
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(80548049650746016)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(81221321374464303)
,p_event_id=>wwv_flow_imp.id(81221136914464301)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_01=>'GUARDAR'
,p_attribute_02=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(81221897186464308)
,p_name=>'DA_SETEAR_HORA'
,p_event_sequence=>130
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P329_HORA_VISITA'
,p_condition_element=>'P329_HORA_VISITA'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
,p_display_when_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(81221995506464309)
,p_event_id=>wwv_flow_imp.id(81221897186464308)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    :P329_HORA_VISITA :=  to_char(:P329_HORA_VISITA,''HH24:MI'');',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        raise_application_error(-20000, SQLERRM);',
'END;'))
,p_attribute_02=>'P329_HORA_VISITA'
,p_attribute_03=>'P329_HORA_VISITA'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(81222154846464311)
,p_name=>'DA_BOTON_CANCELAR'
,p_event_sequence=>140
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(79904873134686330)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(81222278066464312)
,p_event_id=>wwv_flow_imp.id(81222154846464311)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>unistr('\00BFDesea grabar los datos?')
,p_attribute_02=>unistr('\00BFDesea grabar los datos?')
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(81222398345464313)
,p_event_id=>wwv_flow_imp.id(81222154846464311)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    :P329_OBSERVACION := ''Cancelacion de Visita.''||chr(10)||:APP_USER||chr(10)||sysdate; ',
'	:P329_ESTADO := ''C'';',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        raise_application_error(-20000, SQLERRM);',
'END;',
'',
'',
''))
,p_attribute_03=>'P329_OBSERVACION,P329_ESTADO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(81222411870464314)
,p_event_id=>wwv_flow_imp.id(81222154846464311)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_01=>'GUARDAR'
,p_attribute_02=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(81222780192464317)
,p_name=>'DA_ABRIR_BUSCAR_COORD'
,p_event_sequence=>150
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(81222507084464315)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(101169949857670822)
,p_event_id=>wwv_flow_imp.id(81222780192464317)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    IF :P329_COORDENADAS IS NOT NULL THEN',
'        :P329_COORDS := :P329_COORDENADAS;',
'        :P329_ADRESS := :P329_DIRECCION;',
'    END IF;',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'         raise_application_error(-20000, SQLERRM);',
'END;'))
,p_attribute_02=>'P329_COORDENADAS,P329_DIRECCION'
,p_attribute_03=>'P329_COORDS,P329_ADRESS'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(81222818674464318)
,p_event_id=>wwv_flow_imp.id(81222780192464317)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(81222651076464316)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(81225100090464341)
,p_name=>'DA_CERRAR_RES_VIS'
,p_event_sequence=>160
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(81225010591464340)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(81225263105464342)
,p_event_id=>wwv_flow_imp.id(81225100090464341)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(81224793998464337)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(81225378651464343)
,p_name=>'DA_ABRIR_RES_VIS'
,p_event_sequence=>170
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(79904707691686329)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(81602216888131001)
,p_event_id=>wwv_flow_imp.id(81225378651464343)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(81224964657464339)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(81602337547131002)
,p_event_id=>wwv_flow_imp.id(81225378651464343)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(81226060983464350)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(81603599781131014)
,p_event_id=>wwv_flow_imp.id(81225378651464343)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P329_DIR_ARCHIVO'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(81225512374464345)
,p_event_id=>wwv_flow_imp.id(81225378651464343)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P329_RESULTADO_VISITA'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(81225431357464344)
,p_event_id=>wwv_flow_imp.id(81225378651464343)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(81224793998464337)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(81225643799464346)
,p_name=>'DA_ABRIR_RES_VIS_SMS'
,p_event_sequence=>180
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(79904943048686331)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(81225990824464349)
,p_event_id=>wwv_flow_imp.id(81225643799464346)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    :P329_RESULTADO_VISITA :=''AGEND.PROMOCIONES.''||chr(10)||',
'		''Cliente:''||:P329_CLIENTE_FINAL||chr(10)||',
'		''Producto:''||:P329_COD_ARTICULO ||''-''||''Direccion:''||:P329_DIRECCION ||chr(10)||',
'		''Fecha:''|| :P329_FEC_VISITA ',
'        ||''   ''||''Hora:''|| :P329_HORA_VISITA;',
'',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        raise_application_error(-20000, SQLERRM);',
'END;',
'',
''))
,p_attribute_02=>'P329_CLIENTE_FINAL,P329_COD_ARTICULO,P329_DIRECCION,P329_FEC_VISITA,P329_HORA_VISITA'
,p_attribute_03=>'P329_RESULTADO_VISITA'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(81603748332131016)
,p_event_id=>wwv_flow_imp.id(81225643799464346)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P329_DIR_ARCHIVO'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(81604260628131021)
,p_event_id=>wwv_flow_imp.id(81225643799464346)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(81226060983464350)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(81604380874131022)
,p_event_id=>wwv_flow_imp.id(81225643799464346)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(81224964657464339)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(81225869429464348)
,p_event_id=>wwv_flow_imp.id(81225643799464346)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(81224793998464337)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(81602493847131003)
,p_name=>'DA_GUARDAR_FINALIZAR'
,p_event_sequence=>190
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(81224964657464339)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(81602570159131004)
,p_event_id=>wwv_flow_imp.id(81602493847131003)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    IF :P329_RESULTADO_VISITA IS NULL THEN',
'        :P329_INDICADOR_ALERT := ''1'';',
'    ELSE',
'        :P329_INDICADOR_ALERT := ''0'';',
'        :P329_ESTADO := ''F'';',
'        :P329_OBSERVACION := :P329_OBSERVACION ||'' - ''|| :P329_RESULTADO_VISITA ||chr(10)||''Confirmacion de Visita.   ''||:APP_USER||''  ''||sysdate;',
'    END IF;',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'         raise_application_error(-20000, SQLERRM);',
'END;'))
,p_attribute_02=>'P329_RESULTADO_VISITA,P329_OBSERVACION'
,p_attribute_03=>'P329_ESTADO,P329_INDICADOR_ALERT,P329_OBSERVACION'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(81602861406131007)
,p_event_id=>wwv_flow_imp.id(81602493847131003)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>unistr('Compruebe que los datos obligatorios no est\00E9n vac\00EDos.')
,p_attribute_02=>'DATOS OBLIGATORIOS VACIOS'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P329_INDICADOR_ALERT'
,p_client_condition_expression=>'1'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(81602618994131005)
,p_event_id=>wwv_flow_imp.id(81602493847131003)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_01=>'GUARDAR'
,p_attribute_02=>'Y'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P329_INDICADOR_ALERT'
,p_client_condition_expression=>'0'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(81604023145131019)
,p_name=>'DA_ENVIAR_SMS'
,p_event_sequence=>210
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(81226060983464350)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(81604148319131020)
,p_event_id=>wwv_flow_imp.id(81604023145131019)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    DECLARE',
'	varea varchar2(30);',
'	vtelefono varchar2(30); ',
'	VTELEF2 VARCHAR2(60);',
'	VNUMERO VARCHAR2(60);',
'	VCOORD	VARCHAR2(200);',
'',
'	BEGIN',
'',
'        --APEX_DEBUG.ERROR(''DIRE:'' || :P329_DIR_ARCHIVO);',
'',
'        VNUMERO := :P329_DIR_ARCHIVO;',
'',
'        IF :P329_DIR_ARCHIVO IS NOT NULL THEN',
'            varea:= SUBSTR(:P329_DIR_ARCHIVO,1,3);',
'            VTELEFONO:=SUBSTR(:P329_DIR_ARCHIVO,4);',
'        IF varea=''098'' THEN ',
'        	varea:=''59598''; ',
'        ELSIF varea=''097'' THEN ',
'        	varea:=''59597''; ',
'        END IF;	',
'',
'',
'        --APEX_DEBUG.ERROR(''VAREA:'' || varea);',
'        --APEX_DEBUG.ERROR(''VAREA2:'' || VTELEF2);',
'        --APEX_DEBUG.ERROR(''TELF:'' || VTELEFONO);',
'',
'        VTELEF2:=VNUMERO;   	',
'    	varea:= SUBSTR(VTELEF2	,1,3);',
'        VTELEFONO:=SUBSTR(VTELEF2	,4);',
'',
'        --APEX_DEBUG.ERROR(''VAREA:'' || varea);',
'        --APEX_DEBUG.ERROR(''VAREA2:'' || VTELEF2);',
'        --APEX_DEBUG.ERROR(''TELF:'' || VTELEFONO);',
'',
'        IF varea=''098'' THEN ',
'        	varea:=''59598''; ',
'        ELSIF varea=''097'' THEN ',
'        	varea:=''59597''; ',
'        END IF;	',
'	',
'        --APEX_DEBUG.ERROR(varea);',
'        --APEX_DEBUG.ERROR(VTELEF2);',
'        --APEX_DEBUG.ERROR(VTELEFONO);',
'',
'',
'        IF VAREA IS NOT NULL THEN',
'	  ',
'        	IF :P329_COORDENADAS IS NOT NULL THEN',
'        		VCOORD:=''https://www.google.com.py/maps/search/''||REPLACE(:P329_COORDENADAS,'' '','''');',
'        	END IF;',
'	 ',
'    	envia_sms (''1'',''PERSONAL'',VAREA||VTELEFONO, :P329_RESULTADO_VISITA||chr(10)||',
'    							VCOORD||chr(10)||''''	,''VISITA'',:P329_NRO_MOVIMIENTO  );',
'                                ',
'    	envia_sms (''1'' ,''TIGO''  ,VAREA||VTELEFONO , :P329_RESULTADO_VISITA||chr(10)||',
'    							VCOORD||chr(10)||''''	,''VISITA'',:P329_NRO_MOVIMIENTO  );',
'',
'        END IF;',
'      END IF;',
'',
'    EXCEPTION',
'    	WHEN OTHERS THEN',
'    	    raise_application_error(-20000, SQLERRM);',
'    END; ',
'',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'         raise_application_error(-20000, SQLERRM);',
'END;',
'',
''))
,p_attribute_02=>'P329_DIR_ARCHIVO,P329_COORDENADAS,P329_RESULTADO_VISITA,P329_NRO_MOVIMIENTO'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(81604410735131023)
,p_event_id=>wwv_flow_imp.id(81604023145131019)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(81224793998464337)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(81607144867131050)
,p_event_id=>wwv_flow_imp.id(81604023145131019)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>unistr('Sms env\00EDado')
,p_attribute_02=>'SMS ENVIADO'
,p_attribute_03=>'success'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(81604822833131027)
,p_name=>'DA_CERRAR_MAPA'
,p_event_sequence=>220
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(81604739686131026)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(81604936277131028)
,p_event_id=>wwv_flow_imp.id(81604822833131027)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(81222651076464316)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(81605125504131030)
,p_name=>'DA_ACEPTAR_COORDS'
,p_event_sequence=>230
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(81605097208131029)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(101169825831670821)
,p_event_id=>wwv_flow_imp.id(81605125504131030)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    :P329_COORDENADAS := :P329_COORDS;',
'    :P329_DIRECCION := :P329_ADRESS;',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'         raise_application_error(-20000, SQLERRM);',
'END;',
''))
,p_attribute_02=>'P329_COORDS,P329_ADRESS'
,p_attribute_03=>'P329_COORDENADAS,P329_DIRECCION'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(81605359553131032)
,p_event_id=>wwv_flow_imp.id(81605125504131030)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(81222651076464316)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(81605653517131035)
,p_name=>'DA_SOLO_NROS'
,p_event_sequence=>240
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P329_DIR_ARCHIVO'
,p_bind_type=>'bind'
,p_bind_event_type=>'keypress'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(81605765478131036)
,p_event_id=>wwv_flow_imp.id(81605653517131035)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if (!soloNumeros(event)){',
'  	event.preventDefault();',
'}'))
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
 p_id=>wwv_flow_imp.id(81606218720131041)
,p_name=>'DA_VER_UBICACION'
,p_event_sequence=>250
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P329_VER_UBIC_ROW_ID'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(81606397698131042)
,p_event_id=>wwv_flow_imp.id(81606218720131041)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    V_COORDENADA VARCHAR2(100);',
'    V_POSICION NUMBER;',
'',
'BEGIN',
'    ',
'    SELECT  ',
'            COORDENADAS',
'      INTO  V_COORDENADA      ',
'      FROM  inv.CA_VISITA_PROMOTOR      ',
'      WHERE ROWID = :P329_VER_UBIC_ROW_ID;',
'      --APEX_DEBUG.ERROR(V_COORDENADA);',
'',
'      V_POSICION := INSTR(V_COORDENADA,'',''); ',
'      --APEX_DEBUG.ERROR(V_POSICION);',
'',
'      :P329_LAT := substr(V_COORDENADA,1,V_POSICION-1);',
'      :P329_LON := substr(V_COORDENADA,V_POSICION+1);',
'',
'',
'      --APEX_DEBUG.ERROR(:P329_LAT);',
'      --APEX_DEBUG.ERROR(:P329_LON);',
'      ',
'',
'',
'      APEX_COLLECTION.CREATE_OR_TRUNCATE_COLLECTION (p_collection_name => ''MARKERS'');',
'      APEX_COLLECTION.ADD_MEMBER(p_collection_name => ''MARKERS'' ,',
'            p_C001 => :P329_LON,',
'            p_C002 => :P329_LAT);',
'',
'EXCEPTION  ',
'    WHEN OTHERS THEN',
'        raise_application_error(-20000, SQLERRM);',
'END;',
'',
'--substr(''www.oracle.com'',1,10)'))
,p_attribute_02=>'P329_COORDENADAS,P329_VER_UBIC_ROW_ID'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(81606495247131043)
,p_event_id=>wwv_flow_imp.id(81606218720131041)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(81222651076464316)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(81606929287131048)
,p_name=>'DA_SETEAR_DATOS_CLIENTE'
,p_event_sequence=>260
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P329_COD_SUCURSAL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
,p_display_when_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(81607093860131049)
,p_event_id=>wwv_flow_imp.id(81606929287131048)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'	SELECT p.direccion, p.telefono',
'	 INTO :P329_DIRECCION, :P329_NRO_TELEF',
'	FROM cc_clientes c, BS_SUCURSAL_CLIENTE p',
'	WHERE c.cod_empresa = :P_COD_EMPRESA',
'	AND c.cod_cliente = :P329_COD_CLIENTE',
'	AND c.cod_persona = p.cod_persona',
'	AND p.cod_sucursal = :P329_COD_SUCURSAL;',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'	    :P329_DIRECCION := null;',
'	    :P329_NRO_TELEF := null;     ',
'         raise_application_error(-20000, SQLERRM);',
'END;',
'',
''))
,p_attribute_02=>'P_COD_EMPRESA,P329_COD_CLIENTE,P329_COD_SUCURSAL'
,p_attribute_03=>'P329_DIRECCION,P329_NRO_TELEF'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(832977168543065736)
,p_name=>'da_consulta_load'
,p_event_sequence=>300
,p_condition_element=>'P329_P_NRO_MOVIMIENTO'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(832976603872065731)
,p_event_id=>wwv_flow_imp.id(832977168543065736)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>':P329_NRO_MOVIMIENTO:=:P329_P_NRO_MOVIMIENTO ;'
,p_attribute_02=>'P329_P_NRO_MOVIMIENTO'
,p_attribute_03=>'P329_NRO_MOVIMIENTO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(832976990431065734)
,p_event_id=>wwv_flow_imp.id(832977168543065736)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P329_FEC_VISITA:=NULL;                  ',
':P329_HORA_VISITA:=NULL;                     ',
':P329_COD_CLIENTE:=NULL;    ',
':P329_CLIENTE_FINAL:=NULL;',
':P329_NRO_TELEF:=NULL;  ',
':P329_DIRECCION:=NULL;',
':P329_COORDENADAS:=NULL; ',
':P329_COD_ARTICULO:=NULL;  ',
':P329_COD_PROMOTOR:=NULL;  ',
':P329_OBSERVACION:=NULL;              ',
':P329_MOTIVO:=NULL;  ',
':P329_COD_SUCURSAL:=NULL;   ',
':P329_COD_USUARIO := :APP_USER;',
':P329_INDICADOR_REPORT_VISITA :=NULL;'))
,p_attribute_03=>'P329_FEC_VISITA,P329_HORA_VISITA,P329_COD_CLIENTE,P329_CLIENTE_FINAL,P329_NRO_TELEF,P329_DIRECCION,P329_COORDENADAS,P329_COD_ARTICULO,P329_COD_PROMOTOR,P329_OBSERVACION,P329_MOTIVO,P329_COD_SUCURSAL,P329_COD_USUARIO,P329_INDICADOR_REPORT_VISITA'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(832976790122065732)
,p_event_id=>wwv_flow_imp.id(832977168543065736)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'',
'        SELECT  nro_movimiento,',
'                ESTADO,',
'                COD_CLIENTE,',
'                SUCURSAL,',
'                CLIENTE_FINAL,',
'                DIRECCION,',
'                MOTIVO,',
'                COD_USUARIO,',
'                FEC_VISITA,',
'                TO_CHAR(HORA_VISITA, ''HH24:MI''),                	',
'    	        TO_CHAR(fec_visita,''DAY''),                ',
'                COD_PROMOTOR,',
'                COD_ARTICULO,',
'                COORDENADAS,',
'                NRO_TELEF,',
'                OBSERVACION',
'          ',
'          INTO  :P329_NRO_MOVIMIENTO,',
'                :P329_ESTADO,',
'                :P329_COD_CLIENTE,',
'                :P329_COD_SUCURSAL,',
'                :P329_CLIENTE_FINAL,',
'                :P329_DIRECCION,',
'                :P329_MOTIVO,',
'                :P329_COD_USUARIO,',
'                :P329_FEC_VISITA,',
'                :P329_HORA_VISITA,',
'                :P329_DIA,',
'                :P329_COD_PROMOTOR,',
'                :P329_COD_ARTICULO,',
'                :P329_COORDENADAS,',
'                :P329_NRO_TELEF,',
'                :P329_OBSERVACION',
'',
'',
'          FROM  inv.CA_VISITA_PROMOTOR ',
'         WHERE  cod_empresa = :P_COD_EMPRESA',
'           AND  nro_movimiento = :P329_NRO_MOVIMIENTO;',
'',
'        :P329_INDICADOR_REPORT_VISITA := ''1'';',
'',
'      EXCEPTION',
'        when others then',
'          raise_application_error(-20000, ''error coleccion''||sqlerrm);',
'end;'))
,p_attribute_02=>'P329_P_NRO_MOVIMIENTO,P329_NRO_MOVIMIENTO'
,p_attribute_03=>'P329_ESTADO,P329_COD_CLIENTE,P329_COD_SUCURSAL,P329_CLIENTE_FINAL,P329_DIRECCION,P329_MOTIVO,P329_COD_USUARIO,P329_INDICADOR_REPORT_VISITA,P329_FEC_VISITA,P329_HORA_VISITA,P329_DIA,P329_COD_PROMOTOR,P329_COD_ARTICULO,P329_COORDENADAS,P329_NRO_TELEF,P'
||'329_OBSERVACION,P329_FEC_VISITA,P329_HORA_VISITA,P329_DIA,P329_COD_PROMOTOR,P329_COD_ARTICULO,P329_COORDENADAS,P329_NRO_TELEF,P329_OBSERVACION,P329_INDICADOR_REPORT_VISITA'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(832977324559065738)
,p_event_id=>wwv_flow_imp.id(832977168543065736)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(79905849550686340)
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(79902485884686306)
,p_process_sequence=>20
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_INIT'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'      :P329_COD_MODULO := ''CA'';',
'      :P329_INDICADOR_REPORT_VISITA := ''0'';',
'      :P329_ESTADO := ''A'';',
'',
'    -- PRE INSERT CABECERA --',
'      :P329_COD_USUARIO := :APP_USER;',
'IF :P329_ACCION_CONSULTA=''1'' THEN',
'    :P329_NRO_MOVIMIENTO:=:P329_P_NRO_MOVIMIENTO;',
'ELSE ',
'    DECLARE',
'    vnumero NUMBER(8);',
'    BEGIN',
'      SELECT max( nro_movimiento )',
'        INTO vnumero',
'        FROM CA_VISITA_PROMOTOR',
'       WHERE cod_empresa = :P_COD_EMPRESA;',
'',
'       vnumero := nvl( vnumero, 0 ) + 1;',
'       :P329_NRO_MOVIMIENTO := vnumero;',
'',
'    EXCEPTION',
'        WHEN NO_DATA_FOUND THEN  ',
'            vnumero := 1;',
'            :P329_NRO_MOVIMIENTO := vnumero ; ',
'  ',
'        WHEN OTHERS THEN',
'             raise_application_error(-20000, SQLERRM);',
'    END; ',
'',
'END IF; ',
'    IF :P329_P_COD_CLIENTE IS NOT NULL THEN',
'            :P329_COD_CLIENTE := :P329_P_COD_CLIENTE;',
'    END IF;',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        raise_application_error(-20000, SQLERRM);',
'END;'))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(81603323007131012)
,p_process_sequence=>30
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_CREAR_COL_MARKERS'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    APEX_COLLECTION.CREATE_OR_TRUNCATE_COLLECTION(''MARKERS'');',
'    ',
'    APEX_COLLECTION.ADD_MEMBER(p_collection_name => ''MARKERS'',            ',
'            p_C001 => :P329_LON,',
'            p_C002 => :P329_LAT);',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'         raise_application_error(-20000, SQLERRM);',
'END;'))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(80550959551746045)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_GUARDAD_BD'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'  ',
'    ',
'    CAVISPRO.PR_GUARDAR_MOVIMIENTO_BD ( PI_COD_EMPRESA => :P_COD_EMPRESA,',
'                                        PI_NRO_MOVIMIENTO => :P329_NRO_MOVIMIENTO,',
'                                        PI_ESTADO => :P329_ESTADO,',
'                                        PI_COD_CLIENTE => :P329_COD_CLIENTE,',
'                                        PI_COD_SUCURSAL => :P329_COD_SUCURSAL,',
'                                        PI_CLIENTE_FINAL => :P329_CLIENTE_FINAL,',
'                                        PI_DIRECCION => :P329_DIRECCION,',
'                                        PI_COD_MOTIVO => :P329_MOTIVO,',
'                                        PI_COD_USUARIO => :P329_COD_USUARIO,',
'                                        PI_FEC_VISITA => :P329_FEC_VISITA,',
'                                        PI_HORA_VISITA => ',
'                                        CASE ',
'                                            WHEN :P329_FEC_VISITA IS NOT NULL THEN ',
'                                                TO_DATE(:P329_FEC_VISITA || '' '' || :P329_HORA_VISITA, ''DD/MM/YYYY HH24:MI'')',
'                                            ELSE ',
'                                                NULL',
'                                        END,          	',
'                                        PI_COD_PROMOTOR => :P329_COD_PROMOTOR,',
'                                        PI_COD_ARTICULO => :P329_COD_ARTICULO,',
'                                        PI_COORDENADAS => :P329_COORDENADAS,',
'                                        PI_NRO_TELEF => :P329_NRO_TELEF,',
'                                        PI_OBSERVACION => :P329_OBSERVACION); ',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        raise_application_error(-20000, SQLERRM);',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>unistr('\00A1Ocurri\00F3 un error!')
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'GUARDAR'
,p_process_when_type=>'REQUEST_EQUALS_CONDITION'
,p_process_success_message=>unistr('\00A1Datos guardados exitosamente!')
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(80549782078746033)
,p_process_sequence=>10
,p_process_point=>'ON_SUBMIT_BEFORE_COMPUTATION'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'PR_LIMPIAR'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'LIMPIAR'
,p_process_when_type=>'REQUEST_EQUALS_CONDITION'
);
wwv_flow_imp.component_end;
end;
/
