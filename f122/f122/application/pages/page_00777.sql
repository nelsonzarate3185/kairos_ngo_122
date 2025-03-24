prompt --application/pages/page_00777
begin
--   Manifest
--     PAGE: 00777
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
 p_id=>777
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>unistr('Definici\00F3n de Armadores de Productos - STARMADO')
,p_alias=>'DEFINICION-DE-ARMADORES-DE-PRODUCTOS-STARMADO'
,p_step_title=>'Definicion de Armadores de Productos - STARMADO'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function soloNumeros(e){',
'  var key = e.charCode;',
'    //return key >= 48 && key <= 57;',
'    return ( (key >= 48 && key <= 57)||(key > 43 && key < 45));',
'}',
'',
'//////////////////////////////////////////////////////////',
'',
'function seleccionar(cb) {',
'    console.log(cb.value);',
'    console.log(cb.checked);',
'  if (cb.checked == true){',
'    console.log("block" + cb.value);',
'    $s(''P777_AUX_ACTIVO'', ''S'');',
'    $s(''P777_ROW_ID_CAMBIO_ACTIVO'', cb.value);      ',
'      ',
'  } else {',
'      $s(''P777_AUX_ACTIVO'', ''N'');',
'      $s(''P777_ROW_ID_CAMBIO_ACTIVO'', cb.value);       ',
'  }',
'}',
'',
'/////////////////////////////////////////////////////////',
'function validarNoNulo(){',
'    var item_1 = apex.item("P777_COD_ARMADOR_CR_ED").getValue();',
'    var item_2 = apex.item("P777_COD_PERSONA_CR_ED").getValue();',
'    var item_3 = apex.item("P777_PORC_COMISION_CR_ED").getValue();',
'',
'    apex.message.clearErrors();',
'',
'    apex.item("P777_ERROR").setValue(''0'');    ',
'',
'    if (item_1 == ''''){',
'        apex.message.showErrors([{',
'                                type: apex.message.TYPE.ERROR,',
'                                location: "inline",',
'                                pageItem: "P777_COD_ARMADOR_CR_ED",',
unistr('                                message: "Debe ingresar un c\00F3digo de armador."'),
'                                }]); ',
'        apex.item("P777_ERROR").setValue(''1'');                            ',
'    }',
'',
'    /////////////////// ',
'',
'    if (item_2 == ''''){',
'        apex.message.showErrors([{',
'                                type: apex.message.TYPE.ERROR,',
'                                location: "inline",',
'                                pageItem: "P777_COD_PERSONA_CR_ED",',
unistr('                                message: "Debe ingresar un c\00F3digo de persona."'),
'                                }]);',
'        apex.item("P777_ERROR").setValue(''1'');                                                            ',
'    }',
'',
'    ///////////////////',
'',
'    if (item_3 == ''''){',
'        apex.message.showErrors([{',
'                                type: apex.message.TYPE.ERROR,',
'                                location: "inline",',
'                                pageItem: "P777_PORC_COMISION_CR_ED",',
unistr('                                message: "Debe ingresar un porcentaje de comisi\00F3n."'),
'                                }]);',
'        apex.item("P777_ERROR").setValue(''1'');                                                            ',
'    }',
'',
'    ',
'} '))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_last_updated_by=>'EMILIANOP'
,p_last_upd_yyyymmddhh24miss=>'20240904111638'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(392491582158288501)
,p_plug_name=>'Main'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>940
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(392491898289288504)
,p_plug_name=>'B_BLOQUE'
,p_parent_plug_id=>wwv_flow_imp.id(392491582158288501)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT COD_EMPRESA,',
'       COD_ARMADOR,',
'       FEC_INGRESO,',
'       COD_PERSONA,',
'       /*(SELECT pers.nombre',
'          FROM personas pers',
'         WHERE pers.cod_persona = COD_PERSONA',
'         AND   ROWNUM = 1) NOMBRE,*/',
'       ACTIVO, ',
'       PORC_COMISION,',
'       ROWID ROW_ID,',
'       APEX_ITEM.CHECKBOX (p_idx         => 1 ,',
'                           p_value       => ROWID,',
'                           p_attributes  => (case ACTIVO',
'                                                 when ''S'' then ''checked ''',
'                                             else null',
'                                                 end )||''onclick="seleccionar(this)"'' ) CHK_ACTIVO,',
'       NULL EDITAR,',
'       NULL ELIMINAR                                          ',
'  FROM RP_ARMADORES',
' WHERE cod_empresa = :P_COD_EMPRESA',
'ORDER BY cod_ARMADOR'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'B_BLOQUE'
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
 p_id=>wwv_flow_imp.id(392491982160288505)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'EMILIANOP'
,p_internal_uid=>392491982160288505
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(392492037198288506)
,p_db_column_name=>'COD_EMPRESA'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Cod Empresa'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(392492190556288507)
,p_db_column_name=>'COD_ARMADOR'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>unistr('C\00F3digo')
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(392492231629288508)
,p_db_column_name=>'FEC_INGRESO'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Fec Ingreso'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(392492350760288509)
,p_db_column_name=>'COD_PERSONA'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>unistr('C\00F3digo Persona')
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_column_alignment=>'CENTER'
,p_rpt_named_lov=>wwv_flow_imp.id(25345769790214481)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(392492892926288514)
,p_db_column_name=>'EDITAR'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Editar'
,p_column_link=>'javascript: $s(''P777_ROW_ID_EDITAR'',''#ROW_ID#'');'
,p_column_linktext=>'<span aria-hidden="true" class="fa fa-edit"></span>'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(392492966159288515)
,p_db_column_name=>'ELIMINAR'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Eliminar'
,p_column_link=>'javascript: $s(''P777_ROW_ID_ELIMINAR'',''#ROW_ID#'');'
,p_column_linktext=>'<span class="fa fa-trash" aria-hidden="true"></span>'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(392496205980288548)
,p_db_column_name=>'ACTIVO'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Activo'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(392496338477288549)
,p_db_column_name=>'PORC_COMISION'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>unistr('Porc. Comisi\00F3n')
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(392496440136288550)
,p_db_column_name=>'ROW_ID'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Row Id'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_column_type=>'OTHER'
,p_column_alignment=>'CENTER'
,p_rpt_show_filter_lov=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(392627689254835701)
,p_db_column_name=>'CHK_ACTIVO'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>unistr('\00BFActivo?')
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(392502572313313969)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'3925026'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>10
,p_report_columns=>'COD_ARMADOR:COD_PERSONA:PORC_COMISION:CHK_ACTIVO:EDITAR:ELIMINAR:'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(392493469673288520)
,p_plug_name=>'Agregar / Editar Armador'
,p_parent_plug_id=>wwv_flow_imp.id(392491898289288504)
,p_region_template_options=>'js-dialog-autoheight:js-modal:js-dialog-size600x400'
,p_plug_template=>wwv_flow_imp.id(40117728043263659)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(392494372525288529)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_imp.id(392493469673288520)
,p_button_name=>'BT_CERRAR_CR_ED_ARMADOR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_image_alt=>'Cerrar'
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(392494239874288528)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_imp.id(392493469673288520)
,p_button_name=>'BT_ACEPTAR_CR_ED_ARMADOR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Aceptar'
,p_button_position=>'CREATE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(392493274287288518)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(392491898289288504)
,p_button_name=>'BT_AGREGAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft:t-Button--padBottom'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Agregar'
,p_button_position=>'TOP'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-plus-square'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(392491634888288502)
,p_name=>'P777_COD_MODULO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(392491582158288501)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(392493376278288519)
,p_name=>'P777_IND_ACCION'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(392491582158288501)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(392493784735288523)
,p_name=>'P777_COD_ARMADOR_CR_ED'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(392493469673288520)
,p_prompt=>unistr('C\00F3digo Armador')
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
 p_id=>wwv_flow_imp.id(392493890926288524)
,p_name=>'P777_COD_PERSONA_CR_ED'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(392493469673288520)
,p_prompt=>unistr('C\00F3digo Persona')
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_PERSONAS'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select cod_persona || '' - '' || ltrim( rtrim( nvl( nombre, nomb_fantasia ) ) ) d, cod_persona r ',
'from personas',
'order by 1;'))
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
 p_id=>wwv_flow_imp.id(392494085193288526)
,p_name=>'P777_PORC_COMISION_CR_ED'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(392493469673288520)
,p_prompt=>unistr('Porcentaje de Comisi\00F3n')
,p_post_element_text=>'%'
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
 p_id=>wwv_flow_imp.id(392494147773288527)
,p_name=>'P777_ACTIVO_CR_ED'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(392493469673288520)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(392494676198288532)
,p_name=>'P777_COD_EMPRESA_CR_ED'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(392493469673288520)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(392495132763288537)
,p_name=>'P777_ERROR'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(392491582158288501)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(392495788110288543)
,p_name=>'P777_MSG'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(392491582158288501)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(392627762943835702)
,p_name=>'P777_ROW_ID_ELIMINAR'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(392491582158288501)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(392628276354835707)
,p_name=>'P777_ROW_ID_EDITAR'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(392491582158288501)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(392628614503835711)
,p_name=>'P777_ROW_ID_CAMBIO_ACTIVO'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(392491582158288501)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(392628745238835712)
,p_name=>'P777_AUX_ACTIVO'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(392491582158288501)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(392493571223288521)
,p_name=>'DA_ABRIR_AGREGAR_ARMADOR'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(392493274287288518)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(392494726137288533)
,p_event_id=>wwv_flow_imp.id(392493571223288521)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P777_COD_EMPRESA_CR_ED,P777_COD_ARMADOR_CR_ED,P777_COD_PERSONA_CR_ED,P777_PORC_COMISION_CR_ED,P777_ACTIVO_CR_ED'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(392629331658835718)
,p_event_id=>wwv_flow_imp.id(392493571223288521)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.message.clearErrors();'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(392494832286288534)
,p_event_id=>wwv_flow_imp.id(392493571223288521)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    :P777_IND_ACCION := 1;',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR (''Error en DA_ABRIR_AGREGAR_ARMADOR - 01. '' || SQLERRM);',
'END;'))
,p_attribute_03=>'P777_IND_ACCION'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(392493638877288522)
,p_event_id=>wwv_flow_imp.id(392493571223288521)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(392493469673288520)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(392494487217288530)
,p_name=>'DA_CERRAR_CR_ED_ARMADOR'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(392494372525288529)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(392494527054288531)
,p_event_id=>wwv_flow_imp.id(392494487217288530)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(392493469673288520)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(392494961636288535)
,p_name=>'DA_VALIDAR_DECIMAL'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P777_PORC_COMISION_CR_ED'
,p_bind_type=>'bind'
,p_bind_event_type=>'keypress'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(392495016804288536)
,p_event_id=>wwv_flow_imp.id(392494961636288535)
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
 p_id=>wwv_flow_imp.id(392495217725288538)
,p_name=>'DA_VALIDAR_NO_NULOS'
,p_event_sequence=>40
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(392494239874288528)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(392495386908288539)
,p_event_id=>wwv_flow_imp.id(392495217725288538)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'validarNoNulo();'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(392495469515288540)
,p_name=>'DA_GUARDAR_ARMADOR_CR_ED'
,p_event_sequence=>50
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(392494239874288528)
,p_condition_element=>'P777_ERROR'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'0'
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(392495544221288541)
,p_event_id=>wwv_flow_imp.id(392495469515288540)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>unistr('\00BFGuardar cambios?')
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(392495677199288542)
,p_event_id=>wwv_flow_imp.id(392495469515288540)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    IF :P777_IND_ACCION = 1 THEN',
'',
'        STARMADO.PR_GUARDAR_ARMADOR (PI_COD_EMPRESA    => :P_COD_EMPRESA,',
'                                     PI_COD_ARMADOR    => :P777_COD_ARMADOR_CR_ED,',
'                                     PI_FEC_INGRESO    => SYSDATE,',
'                                     PI_COD_PERSONA    => :P777_COD_PERSONA_CR_ED,',
'                                     PI_PORC_COMISION  => :P777_PORC_COMISION_CR_ED,',
'                                     ------------------------------',
'                                     PO_MSG            => :P777_MSG);',
'',
'    ELSIF :P777_IND_ACCION = 0 THEN',
'',
'        STARMADO.PR_EDITAR_ARMADOR (PI_ROW_ID         => :P777_ROW_ID_EDITAR,',
'                                    PI_COD_ARMADOR    => :P777_COD_ARMADOR_CR_ED,',
'                                    PI_COD_PERSONA    => :P777_COD_PERSONA_CR_ED,',
'                                    PI_PORC_COMISION  => :P777_PORC_COMISION_CR_ED,',
'                                    ------------------------------',
'                                    PO_MSG            => :P777_MSG);',
'',
'    END IF; ',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR (''Error en DA_GUARDAR_ARMADOR_CR_ED - 01. '' || SQLERRM);',
'END;',
'',
'',
''))
,p_attribute_02=>'P777_ROW_ID_EDITAR,P777_IND_ACCION,P777_COD_ARMADOR_CR_ED,P777_COD_PERSONA_CR_ED,P777_PORC_COMISION_CR_ED'
,p_attribute_03=>'P777_MSG'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(392496092616288546)
,p_event_id=>wwv_flow_imp.id(392495469515288540)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(392491898289288504)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(392496140133288547)
,p_event_id=>wwv_flow_imp.id(392495469515288540)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(392493469673288520)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(392495818164288544)
,p_name=>'DA_MSG'
,p_event_sequence=>60
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P777_MSG'
,p_condition_element=>'P777_MSG'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(392495939768288545)
,p_event_id=>wwv_flow_imp.id(392495818164288544)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'&P777_MSG.'
,p_attribute_03=>'information'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(392627890819835703)
,p_name=>'DA_ELIMINAR_ARMADOR'
,p_event_sequence=>70
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P777_ROW_ID_ELIMINAR'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(392627982761835704)
,p_event_id=>wwv_flow_imp.id(392627890819835703)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>unistr('\00BFDesea eliminar el registro?')
,p_attribute_03=>'warning'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(392628005878835705)
,p_event_id=>wwv_flow_imp.id(392627890819835703)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    STARMADO.PR_ELIMINAR_ARMADOR (PI_ROW_ID   => :P777_ROW_ID_ELIMINAR,',
'                                  ------------------------------',
'                                  PO_MSG      => :P777_MSG);',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR (''Error en DA_ELIMINAR_ARMADOR - 01. '' || SQLERRM);',
'END;'))
,p_attribute_02=>'P777_ROW_ID_ELIMINAR'
,p_attribute_03=>'P777_MSG'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(392628151297835706)
,p_event_id=>wwv_flow_imp.id(392627890819835703)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(392491898289288504)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(392628390724835708)
,p_name=>'DA_EDITAR_ARMADOR'
,p_event_sequence=>80
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P777_ROW_ID_EDITAR'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(392629214337835717)
,p_event_id=>wwv_flow_imp.id(392628390724835708)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.message.clearErrors();'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(392628570161835710)
,p_event_id=>wwv_flow_imp.id(392628390724835708)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    STARMADO.PR_BUSCAR_ARMADOR (PI_ROW_ID         => :P777_ROW_ID_EDITAR,',
'                                ------------------------------',
'                                PO_COD_ARMADOR    => :P777_COD_ARMADOR_CR_ED, ',
'                                PO_COD_PERSONA    => :P777_COD_PERSONA_CR_ED, ',
'                                PO_PORC_COMISION  => :P777_PORC_COMISION_CR_ED);',
'',
'    :P777_IND_ACCION := 0;',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR (''Error en DA_ABRIR_AGREGAR_ARMADOR - 01. '' || SQLERRM);',
'END;',
'',
''))
,p_attribute_02=>'P777_ROW_ID_EDITAR'
,p_attribute_03=>'P777_IND_ACCION,P777_COD_ARMADOR_CR_ED,P777_COD_PERSONA_CR_ED,P777_PORC_COMISION_CR_ED'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(392628475264835709)
,p_event_id=>wwv_flow_imp.id(392628390724835708)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(392493469673288520)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(392628878733835713)
,p_name=>'DA_CAMBIAR_ACTIVO'
,p_event_sequence=>90
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P777_ROW_ID_CAMBIO_ACTIVO'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(392629049826835715)
,p_event_id=>wwv_flow_imp.id(392628878733835713)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    STARMADO.PR_CAMBIAR_ACTIVO_ARMADOR (PI_ROW_ID         => :P777_ROW_ID_CAMBIO_ACTIVO,',
'                                        PI_ACTIVO         => :P777_AUX_ACTIVO);',
'                                        ',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR (''Error en DA_CAMBIAR_ACTIVO - 01. '' || SQLERRM);',
'END;'))
,p_attribute_02=>'P777_ROW_ID_CAMBIO_ACTIVO,P777_AUX_ACTIVO'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(392629102541835716)
,p_event_id=>wwv_flow_imp.id(392628878733835713)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(392491898289288504)
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(392491755106288503)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_INIT'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    :P777_COD_MODULO := ''ST'';',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR (''Error en PR_INIT - 01. '' || SQLERRM);',
'END;'))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_imp.component_end;
end;
/
