prompt --application/pages/page_00772
begin
--   Manifest
--     PAGE: 00772
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
 p_id=>772
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'Bloques por sucursales - STBLOSUC'
,p_alias=>'STBLOSUC'
,p_step_title=>'Bloques por sucursales - STBLOSUC'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function validarNoNulo(){',
'    var item_1 = apex.item("P772_COD_BLOQUE_CR_ED").getValue();',
'    var item_2 = apex.item("P772_DESC_BLOQUE_CR_ED").getValue();',
'    var item_3 = apex.item("P772_COD_SUCURSAL_CR_ED").getValue();',
'    //var item_4 = apex.item("P772_COD_RESPONSABLE_CR_ED").getValue();',
'    apex.message.clearErrors();',
'',
'    apex.item("P772_ERROR").setValue(''0'');    ',
'',
'    if (item_1 == ''''){',
'        apex.message.showErrors([{',
'                                type: apex.message.TYPE.ERROR,',
'                                location: "inline",',
'                                pageItem: "P772_COD_BLOQUE_CR_ED",',
unistr('                                message: "Debe ingresar un c\00F3digo de bloque."'),
'                                }]); ',
'        apex.item("P772_ERROR").setValue(''1'');                            ',
'    } ',
'',
'    if (item_2 == ''''){',
'        apex.message.showErrors([{',
'                                type: apex.message.TYPE.ERROR,',
'                                location: "inline",',
'                                pageItem: "P772_DESC_BLOQUE_CR_ED",',
unistr('                                message: "Debe ingresar una descripci\00F3n de bloque."'),
'                                }]);',
'        apex.item("P772_ERROR").setValue(''1'');                                                            ',
'    }',
'',
'        if (item_3 == ''''){',
'        apex.message.showErrors([{',
'                                type: apex.message.TYPE.ERROR,',
'                                location: "inline",',
'                                pageItem: "P772_COD_SUCURSAL_CR_ED",',
'                                message: "Debe ingresar una sucursal."',
'                                }]);',
'        apex.item("P772_ERROR").setValue(''1'');                                                            ',
'    }',
'',
'    /*if (item_4 == ''''){',
'        apex.message.showErrors([{',
'                                type: apex.message.TYPE.ERROR,',
'                                location: "inline",',
'                                pageItem: "P772_COD_RESPONSABLE_CR_ED",',
'                                message: "Debe ingresar un responsable."',
'                                }]);',
'        apex.item("P772_ERROR").setValue(''1'');                                                            ',
'    }*/',
'',
'',
'',
'} ',
'',
'',
'',
'',
'',
'',
''))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_last_updated_by=>'PBOGADO'
,p_last_upd_yyyymmddhh24miss=>'20241008080422'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(378486625241801403)
,p_plug_name=>'Bloques por sucursales - STBLOSUC'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>940
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(378487037734801407)
,p_plug_name=>'Reporte Bloques'
,p_parent_plug_id=>wwv_flow_imp.id(378486625241801403)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT  BLOQUES.COD_BLOQUE,',
'        BLOQUES.DESC_BLOQUE,',
'        BLOQUES.COD_EMPRESA,',
'        BLOQUES.COD_SUCURSAL,',
'        (SELECT DESCRIPCION ',
'         FROM SUCURSALES ',
'         WHERE COD_SUCURSAL = BLOQUES.COD_SUCURSAL ',
'         AND COD_EMPRESA = :P_COD_EMPRESA) AS DESC_SUCURSAL,',
'        BLOQUES.UBICACION,',
'        BLOQUES.COD_SUB_BLOQUE,',
'        BLOQUES.DESC_SUB_BLOQUE,',
'        BLOQUES.FECHA_ALTA,',
'        BLOQUES.IND_MIGRADO_OS,',
'        BLOQUES.COD_RESPONSABLE,',
'        (SELECT p.nombre D',
'           FROM rh_empleados e, personas p',
'          WHERE e.cod_empresa = :P_COD_EMPRESA',
'            AND e.cod_persona = p.cod_persona',
'            AND e.activo = ''S''',
'            AND e.cod_empleado = BLOQUES.COD_RESPONSABLE) AS NOMB_RESPONSABLE,',
'        ROWID ROW_ID,',
'        NULL EDITAR,',
'        NULL ELIMINAR',
'  FROM  ST_BLOQUES BLOQUES',
' WHERE  BLOQUES.COD_EMPRESA = :P_COD_EMPRESA',
' ORDER BY BLOQUES.COD_SUCURSAL ASC, BLOQUES.COD_BLOQUE ASC'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Reporte Bloques'
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
 p_id=>wwv_flow_imp.id(378487180209801408)
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
,p_internal_uid=>378487180209801408
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(378487233302801409)
,p_db_column_name=>'COD_BLOQUE'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Bloque'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(378487364255801410)
,p_db_column_name=>'DESC_BLOQUE'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>unistr('Descripci\00F3n del bloque (zona)')
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(378487463027801411)
,p_db_column_name=>'COD_EMPRESA'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Cod Empresa'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(378487551504801412)
,p_db_column_name=>'COD_SUCURSAL'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Sucursal'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(378487652055801413)
,p_db_column_name=>'UBICACION'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Ubicacion'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(378487764699801414)
,p_db_column_name=>'COD_SUB_BLOQUE'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Cod Sub Bloque'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(378487891827801415)
,p_db_column_name=>'DESC_SUB_BLOQUE'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Desc Sub Bloque'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(378487937362801416)
,p_db_column_name=>'FECHA_ALTA'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Fecha Alta'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(378488003867801417)
,p_db_column_name=>'IND_MIGRADO_OS'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Ind Migrado Os'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(378488198479801418)
,p_db_column_name=>'COD_RESPONSABLE'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Responsable'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_column_alignment=>'CENTER'
,p_rpt_named_lov=>wwv_flow_imp.id(15848516104307703)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(378488377223801420)
,p_db_column_name=>'DESC_SUCURSAL'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>unistr('Descripci\00F3n de la  sucursal (d\00E9posito)')
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(378488408991801421)
,p_db_column_name=>'EDITAR'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Editar'
,p_column_link=>'javascript: $s(''P772_ROW_ID_EDITAR'', ''#ROW_ID#'');'
,p_column_linktext=>'<span class="fa fa-edit" aria-hidden="true"></span>'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(378488541282801422)
,p_db_column_name=>'ELIMINAR'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Eliminar'
,p_column_link=>'javascript: $s(''P772_ROW_ID_ELIMINAR'', ''#ROW_ID#'');'
,p_column_linktext=>'<span aria-hidden="true" class="fa fa-trash"></span>'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(378552787274635005)
,p_db_column_name=>'ROW_ID'
,p_display_order=>140
,p_column_identifier=>'N'
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
,p_rpt_show_filter_lov=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(378553628905635014)
,p_db_column_name=>'NOMB_RESPONSABLE'
,p_display_order=>150
,p_column_identifier=>'O'
,p_column_label=>'Nombre Responsable'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(378516816097262983)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'3785169'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>10
,p_report_columns=>'COD_SUCURSAL:DESC_SUCURSAL:COD_BLOQUE:DESC_BLOQUE:COD_RESPONSABLE:NOMB_RESPONSABLE:EDITAR:ELIMINAR:'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(378488790492801424)
,p_plug_name=>'Crear / Editar Bloque'
,p_parent_plug_id=>wwv_flow_imp.id(378487037734801407)
,p_region_template_options=>'js-dialog-autoheight:js-modal:js-dialog-size600x400'
,p_plug_template=>wwv_flow_imp.id(40117728043263659)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(378489733335801434)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(378488790492801424)
,p_button_name=>'BT_ACEPTAR_CR_ED_BLOQUE'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Aceptar'
,p_button_position=>'CREATE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(378489387809801430)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(378488790492801424)
,p_button_name=>'BT_CERRAR_CR_ED_BLOQUE'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_image_alt=>'Cerrar'
,p_button_position=>'DELETE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(378488896194801425)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(378487037734801407)
,p_button_name=>'BT_AGREGAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft:t-Button--padBottom'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Agregar'
,p_button_position=>'TOP'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-plus-square-o'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(378486760030801404)
,p_name=>'P772_COD_MODULO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(378486625241801403)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(378489177725801428)
,p_name=>'P772_COD_BLOQUE_CR_ED'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(378488790492801424)
,p_prompt=>unistr('C\00F3digo Bloque')
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
 p_id=>wwv_flow_imp.id(378489217048801429)
,p_name=>'P772_DESC_BLOQUE_CR_ED'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(378488790492801424)
,p_prompt=>unistr('Descripci\00F3n')
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
 p_id=>wwv_flow_imp.id(378489896982801435)
,p_name=>'P772_COD_SUCURSAL_CR_ED'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(378488790492801424)
,p_prompt=>'Sucursal'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LOV_SUCURSALES_VTPEDIDO'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select cod_sucursal||'' - ''||descripcion descripcion, cod_sucursal ',
'from sucursales ',
'where cod_empresa = :P_COD_EMPRESA'))
,p_lov_display_null=>'YES'
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
 p_id=>wwv_flow_imp.id(378489971455801436)
,p_name=>'P772_COD_RESPONSABLE_CR_ED'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(378488790492801424)
,p_prompt=>'Responsable'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select e.cod_empleado || '' - '' || p.nombre D,',
'       e.cod_empleado R ',
'from rh_empleados e, personas p',
'where e.cod_empresa = :P_COD_EMPRESA',
'and e.cod_persona = p.cod_persona',
'and e.activo = ''S''',
'order by p.nombre asc'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_begin_on_new_line=>'N'
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
 p_id=>wwv_flow_imp.id(378490065250801437)
,p_name=>'P772_IND_ACCION'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(378488790492801424)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(378490388387801440)
,p_name=>'P772_ERROR'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(378486625241801403)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(378491136180801448)
,p_name=>'P772_MSG'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(378486625241801403)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(378552376360635001)
,p_name=>'P772_ROW_ID_EDITAR'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(378486625241801403)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(378552442097635002)
,p_name=>'P772_ROW_ID_ELIMINAR'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(378486625241801403)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(378488957783801426)
,p_name=>'DA_ABRIR_CREAR_BLOQUE'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(378488896194801425)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(378490483105801441)
,p_event_id=>wwv_flow_imp.id(378488957783801426)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.message.clearErrors();'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(378490140360801438)
,p_event_id=>wwv_flow_imp.id(378488957783801426)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P772_COD_BLOQUE_CR_ED,P772_DESC_BLOQUE_CR_ED,P772_COD_SUCURSAL_CR_ED,P772_COD_RESPONSABLE_CR_ED,P772_IND_ACCION'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(378490202258801439)
,p_event_id=>wwv_flow_imp.id(378488957783801426)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    :P772_IND_ACCION := 1;',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR (''Error en DA_ABRIR_CREAR_BLOQUE - 01. '' || SQLERRM);',
'END;'))
,p_attribute_03=>'P772_IND_ACCION'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(378489002987801427)
,p_event_id=>wwv_flow_imp.id(378488957783801426)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(378488790492801424)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(378489402949801431)
,p_name=>'DA_CERRAR_CR_ED_BLOQUE'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(378489387809801430)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(378489590104801432)
,p_event_id=>wwv_flow_imp.id(378489402949801431)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(378488790492801424)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(378490544460801442)
,p_name=>'DA_VALIDAR_NO_NULOS'
,p_event_sequence=>30
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(378489733335801434)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(378490672698801443)
,p_event_id=>wwv_flow_imp.id(378490544460801442)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'JAVASCRIPT_EXPRESSION'
,p_affected_elements=>'validarNoNulo();'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(378490755121801444)
,p_name=>'DA_GUARDAR_BLOQUE'
,p_event_sequence=>40
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(378489733335801434)
,p_condition_element=>'P772_ERROR'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'0'
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(378491046856801447)
,p_event_id=>wwv_flow_imp.id(378490755121801444)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    IF :P772_IND_ACCION = 0 THEN',
'',
'        STBLOSUC.PR_EDITAR_BLOQUE (PI_ROW_ID                => :P772_ROW_ID_EDITAR,',
'                                   PI_COD_BLOQUE            => :P772_COD_BLOQUE_CR_ED,',
'                                   PI_DESC_BLOQUE           => :P772_DESC_BLOQUE_CR_ED,',
'                                   PI_COD_SUCURSAL          => :P772_COD_SUCURSAL_CR_ED,',
'                                   PI_COD_RESPONSABLE       => :P772_COD_RESPONSABLE_CR_ED,',
'                                   PI_COD_EMPRESA           => :P_COD_EMPRESA,',
'                                   PO_MSG                   => :P772_MSG);',
'',
'    ELSIF :P772_IND_ACCION = 1 THEN',
'',
'        STBLOSUC.PR_CREAR_BLOQUE (PI_COD_BLOQUE            => :P772_COD_BLOQUE_CR_ED,',
'                                  PI_DESC_BLOQUE           => :P772_DESC_BLOQUE_CR_ED,',
'                                  PI_COD_SUCURSAL          => :P772_COD_SUCURSAL_CR_ED,',
'                                  PI_COD_RESPONSABLE       => :P772_COD_RESPONSABLE_CR_ED,',
'                                  PI_COD_EMPRESA           => :P_COD_EMPRESA,',
'                                  PO_MSG                   => :P772_MSG);',
'    END IF;',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR (''Error en DA_GUARDAR_BLOQUE - 01. '' || SQLERRM);',
'END;',
'',
'',
'',
''))
,p_attribute_02=>'P772_IND_ACCION,P772_ROW_ID_EDITAR,P772_COD_BLOQUE_CR_ED,P772_DESC_BLOQUE_CR_ED,P772_COD_SUCURSAL_CR_ED,P772_COD_RESPONSABLE_CR_ED'
,p_attribute_03=>'P772_MSG'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(378490894825801445)
,p_event_id=>wwv_flow_imp.id(378490755121801444)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(378488790492801424)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(378490967646801446)
,p_event_id=>wwv_flow_imp.id(378490755121801444)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(378487037734801407)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(378491276274801449)
,p_name=>'DA_MSG'
,p_event_sequence=>50
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P772_MSG'
,p_condition_element=>'P772_MSG'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(378491374587801450)
,p_event_id=>wwv_flow_imp.id(378491276274801449)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'&P772_MSG.'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(378552576624635003)
,p_name=>'DA_ABRIR_EDITAR_BLOQUE'
,p_event_sequence=>60
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P772_ROW_ID_EDITAR'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(378553122139635009)
,p_event_id=>wwv_flow_imp.id(378552576624635003)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.message.clearErrors();'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(378552646667635004)
,p_event_id=>wwv_flow_imp.id(378552576624635003)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    SELECT  COD_BLOQUE,',
'            DESC_BLOQUE,',
'            COD_SUCURSAL,',
'            COD_RESPONSABLE',
'',
'    INTO    :P772_COD_BLOQUE_CR_ED,',
'            :P772_DESC_BLOQUE_CR_ED,',
'            :P772_COD_SUCURSAL_CR_ED,',
'            :P772_COD_RESPONSABLE_CR_ED',
'',
'    FROM    ST_BLOQUES',
'    WHERE   ROWID = :P772_ROW_ID_EDITAR; ',
'',
'    :P772_IND_ACCION := 0;           ',
'',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR (''Error en DA_ABRIR_EDITAR_BLOQUE - 01. '' || SQLERRM);',
'END;',
'',
''))
,p_attribute_02=>'P772_ROW_ID_EDITAR'
,p_attribute_03=>'P772_IND_ACCION,P772_COD_BLOQUE_CR_ED,P772_DESC_BLOQUE_CR_ED,P772_COD_SUCURSAL_CR_ED,P772_COD_RESPONSABLE_CR_ED'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(378553049033635008)
,p_event_id=>wwv_flow_imp.id(378552576624635003)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(378488790492801424)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(378553270908635010)
,p_name=>'DA_ELIMINAR_BLOQUE'
,p_event_sequence=>70
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P772_ROW_ID_ELIMINAR'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(378553338614635011)
,p_event_id=>wwv_flow_imp.id(378553270908635010)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>unistr('\00BFDesea borrar el registro?')
,p_attribute_03=>'warning'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(378553412363635012)
,p_event_id=>wwv_flow_imp.id(378553270908635010)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    STBLOSUC.PR_ELIMINAR_BLOQUE (PI_ROW_ID   => :P772_ROW_ID_ELIMINAR,',
'                                 PO_MSG      => :P772_MSG);',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR (''Error en DA_ELIMINAR_BLOQUE - 01. '' || SQLERRM);',
'END;'))
,p_attribute_02=>'P772_ROW_ID_ELIMINAR'
,p_attribute_03=>'P772_MSG'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(378553564765635013)
,p_event_id=>wwv_flow_imp.id(378553270908635010)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(378487037734801407)
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(378486935469801406)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_INIT'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    :P772_COD_MODULO := ''ST'';',
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
