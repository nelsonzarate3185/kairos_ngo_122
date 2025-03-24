prompt --application/pages/page_00770
begin
--   Manifest
--     PAGE: 00770
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
 p_id=>770
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'Sub - Bloques- Sucursal STBLOSUB'
,p_alias=>'STBLOSUB'
,p_step_title=>'Sub - Bloques- Sucursal STBLOSUB'
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
'      //$s(''P770_AUX_CHECK_BOX'', cb.value, false);',
'      $s(''P770_ROW_ID_CAMBIO_ESTADO'', cb.value);      ',
'      $s(''P770_AUX_CHECK_BOX'', ''S'');',
'  } else {',
'      //$s(''P770_AUX_CHECK_BOX'', cb.value, false);',
'      $s(''P770_ROW_ID_CAMBIO_ESTADO'', cb.value); ',
'      $s(''P770_AUX_CHECK_BOX'', ''N'');',
'  }',
'}',
'',
'/////////////////////////////////////////////////////////',
'function validarNoNulo(){',
'    var item_1 = apex.item("P770_COD_SUCURSAL_CR_ED").getValue();',
'    var item_2 = apex.item("P770_COD_BLOQUE_CR_ED").getValue();',
'    var item_3 = apex.item("P770_COD_SUB_BLOQUE_CR_ED").getValue();',
'    var item_4 = apex.item("P770_DESC_SUB_BLOQUE_CR_ED").getValue();',
'    var item_5 = apex.item("P770_LARGO_CR_ED").getValue();',
'    var item_6 = apex.item("P770_ANCHO_CR_ED").getValue();',
'    var item_7 = apex.item("P770_ALTO_CR_ED").getValue();',
'    var item_8 = apex.item("P770_PESO_CR_ED").getValue();',
'    //var item_9 = apex.item("P770_COD_RESPONSABLE_CR_ED").getValue();',
'',
'    apex.message.clearErrors();',
'',
'    apex.item("P770_ERROR").setValue(''0'');    ',
'',
'    if (item_1 == ''''){',
'        apex.message.showErrors([{',
'                                type: apex.message.TYPE.ERROR,',
'                                location: "inline",',
'                                pageItem: "P770_COD_SUCURSAL_CR_ED",',
unistr('                                message: "Debe ingresar un c\00F3digo de sucursal."'),
'                                }]); ',
'        apex.item("P770_ERROR").setValue(''1'');                            ',
'    }',
'',
'    /////////////////// ',
'',
'    if (item_2 == ''''){',
'        apex.message.showErrors([{',
'                                type: apex.message.TYPE.ERROR,',
'                                location: "inline",',
'                                pageItem: "P770_COD_BLOQUE_CR_ED",',
unistr('                                message: "Debe ingresar un c\00F3digo de bloque."'),
'                                }]);',
'        apex.item("P770_ERROR").setValue(''1'');                                                            ',
'    }',
'',
'    ///////////////////',
'',
'    if (item_3 == ''''){',
'        apex.message.showErrors([{',
'                                type: apex.message.TYPE.ERROR,',
'                                location: "inline",',
'                                pageItem: "P770_COD_SUB_BLOQUE_CR_ED",',
unistr('                                message: "Debe ingresar un c\00F3digo de sub-bloque."'),
'                                }]);',
'        apex.item("P770_ERROR").setValue(''1'');                                                            ',
'    }',
'',
'    ///////////////////',
'',
'    if (item_4 == ''''){',
'        apex.message.showErrors([{',
'                                type: apex.message.TYPE.ERROR,',
'                                location: "inline",',
'                                pageItem: "P770_DESC_SUB_BLOQUE_CR_ED",',
unistr('                                message: "Debe ingresar una descripci\00F3n de sub-bloque."'),
'                                }]);',
'        apex.item("P770_ERROR").setValue(''1'');                                                            ',
'    }',
'',
'    ///////////////////',
'',
'    if (item_5 == ''''){',
'        apex.message.showErrors([{',
'                                type: apex.message.TYPE.ERROR,',
'                                location: "inline",',
'                                pageItem: "P770_LARGO_CR_ED",',
'                                message: "Debe ingresar la altura."',
'                                }]);',
'        apex.item("P770_ERROR").setValue(''1'');                                                            ',
'    }',
'',
'    ///////////////////',
'',
'    if (item_6 == ''''){',
'        apex.message.showErrors([{',
'                                type: apex.message.TYPE.ERROR,',
'                                location: "inline",',
'                                pageItem: "P770_ANCHO_CR_ED",',
'                                message: "Debe ingresar el ancho."',
'                                }]);',
'        apex.item("P770_ERROR").setValue(''1'');                                                            ',
'    }',
'',
'    ///////////////////',
'',
'    if (item_7 == ''''){',
'        apex.message.showErrors([{',
'                                type: apex.message.TYPE.ERROR,',
'                                location: "inline",',
'                                pageItem: "P770_ALTO_CR_ED",',
'                                message: "Debe ingresar una altura."',
'                                }]);',
'        apex.item("P770_ERROR").setValue(''1'');                                                            ',
'    }',
'',
'    ///////////////////',
'',
'    if (item_8 == ''''){',
'        apex.message.showErrors([{',
'                                type: apex.message.TYPE.ERROR,',
'                                location: "inline",',
'                                pageItem: "P770_PESO_CR_ED",',
'                                message: "Debe ingresar un peso."',
'                                }]);',
'        apex.item("P770_ERROR").setValue(''1'');                                                            ',
'    }',
'',
'    ///////////////////',
'',
'    /*if (item_9 == ''''){',
'        apex.message.showErrors([{',
'                                type: apex.message.TYPE.ERROR,',
'                                location: "inline",',
'                                pageItem: "P770_COD_RESPONSABLE_CR_ED",',
'                                message: "Debe ingresar un peso."',
'                                }]);',
'        apex.item("P770_ERROR").setValue(''1'');                                                            ',
'    }*/',
'',
'    ///////////////////',
'} ',
'',
'$(".allow-decimal").keypress(function (e) {',
'    if(e.which == 46){',
'        if($(this).val().indexOf(''.'') != -1) {',
'            return false;',
'        }',
'    }',
'',
'    if (e.which != 8 && e.which != 0 && e.which != 46 && (e.which < 48 || e.which > 57)) {',
'        return false;',
'    }',
'});',
'',
'$(''.decimales'').on(''input'', function () {',
'  this.value = this.value.replace(/[^0-9,.]/g, '''').replace(/,/g, ''.'');',
'});',
'',
'',
'$(".solo_decimales").on("input",function(){',
'	var valor = $(this).val();',
'	var ex = /^\d+(\.\d{1,2})?$/;',
'	if (ex.test(valor)==false){',
'		valor = valor.substring(0,valor.lenght - 1);',
'		return valor;',
'	}',
'});',
'',
''))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_last_updated_by=>'EMILIANOP'
,p_last_upd_yyyymmddhh24miss=>'20240827151727'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(378599909120468529)
,p_plug_name=>'Sub - Bloques- Sucursal STBLOSUB'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>940
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(378600098390468530)
,p_plug_name=>'Reporte Bloques'
,p_parent_plug_id=>wwv_flow_imp.id(378599909120468529)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT  COD_BLOQUE,',
'        COD_EMPRESA,',
'        COD_SUCURSAL,',
'        UBICACION,',
'        COD_SUB_BLOQUE,',
'        DESC_SUB_BLOQUE,',
'        LARGO_MTS,',
'        ANCHO_MTS,',
'        ALTO_MTS,',
'        PESO_KG,',
'        COD_USUARIO_ALTA,',
'        COD_USUARIO_BAJA,',
'        FECHA_ALTA,',
'        FECHA_BAJA,',
'        ESTADO,',
'        COD_RESPONSABLE,',
'        APEX_ITEM.CHECKBOX (p_idx         => 1 ,',
'                           p_value       => ROWID,',
'                           p_attributes  => (case ESTADO',
'                                                 when ''S'' then ''checked ''',
'                                             else null',
'                                                 end )||''onclick="seleccionar(this)"'' ) CHK_ESTADO,',
'        ROWID ROW_ID,',
'        NULL DETALLES,',
'        NULL EDITAR,',
'        NULL ELIMINAR',
'  FROM  ST_SUB_BLOQUES',
'  WHERE COD_EMPRESA = :P_COD_EMPRESA',
'  ORDER BY COD_SUCURSAL ASC, COD_BLOQUE ASC, COD_SUB_BLOQUE ASC'))
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
 p_id=>wwv_flow_imp.id(378600100654468531)
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
,p_internal_uid=>378600100654468531
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(378600217339468532)
,p_db_column_name=>'COD_BLOQUE'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Bloque'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(378600358329468533)
,p_db_column_name=>'COD_EMPRESA'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Cod Empresa'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(378600476375468534)
,p_db_column_name=>'COD_SUCURSAL'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Sucursal'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(378600589804468535)
,p_db_column_name=>'UBICACION'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Ubicacion'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(378600615450468536)
,p_db_column_name=>'COD_SUB_BLOQUE'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Sub-Bloque'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(378600731012468537)
,p_db_column_name=>'DESC_SUB_BLOQUE'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>unistr('Descripci\00F3n del Sub-Bloque')
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(378600849059468538)
,p_db_column_name=>'LARGO_MTS'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'*Largo'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(378600965725468539)
,p_db_column_name=>'ANCHO_MTS'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'*Ancho'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(378601035753468540)
,p_db_column_name=>'ALTO_MTS'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'*Alto'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(378601163956468541)
,p_db_column_name=>'PESO_KG'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'**Peso'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(378601250962468542)
,p_db_column_name=>'COD_USUARIO_ALTA'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Cod Usuario Alta'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(378601348541468543)
,p_db_column_name=>'COD_USUARIO_BAJA'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Cod Usuario Baja'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(378601431729468544)
,p_db_column_name=>'FECHA_ALTA'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Fecha Alta'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(378601520440468545)
,p_db_column_name=>'FECHA_BAJA'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>'Fecha Baja'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(378601672873468546)
,p_db_column_name=>'ESTADO'
,p_display_order=>150
,p_column_identifier=>'O'
,p_column_label=>'Estado'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(378601776026468547)
,p_db_column_name=>'COD_RESPONSABLE'
,p_display_order=>160
,p_column_identifier=>'P'
,p_column_label=>'Responsable'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(378691895548552309)
,p_db_column_name=>'DETALLES'
,p_display_order=>170
,p_column_identifier=>'Q'
,p_column_label=>'Detalles'
,p_column_link=>'javascript:$s(''P770_ROW_ID_DETALLES'',''#ROW_ID#'');'
,p_column_linktext=>'<span class="fa fa-eye" aria-hidden="true"></span>'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(378692063245552311)
,p_db_column_name=>'CHK_ESTADO'
,p_display_order=>180
,p_column_identifier=>'R'
,p_column_label=>'Estado'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(378692105403552312)
,p_db_column_name=>'EDITAR'
,p_display_order=>190
,p_column_identifier=>'S'
,p_column_label=>'Editar'
,p_column_link=>'javascript:$s(''P770_ROW_ID_EDITAR'',''#ROW_ID#'');'
,p_column_linktext=>'<span aria-hidden="true" class="fa fa-edit"></span>'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(378692239286552313)
,p_db_column_name=>'ELIMINAR'
,p_display_order=>200
,p_column_identifier=>'T'
,p_column_label=>'Eliminar'
,p_column_link=>'javascript:$s(''P770_ROW_ID_ELIMINAR'',''#ROW_ID#'');'
,p_column_linktext=>'<span aria-hidden="true" class="fa fa-trash"></span>'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(378692508229552316)
,p_db_column_name=>'ROW_ID'
,p_display_order=>210
,p_column_identifier=>'U'
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
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(378685356992432970)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'3786854'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>10
,p_report_columns=>'COD_SUCURSAL:COD_BLOQUE:COD_SUB_BLOQUE:DESC_SUB_BLOQUE:LARGO_MTS:ANCHO_MTS:ALTO_MTS:PESO_KG:COD_RESPONSABLE:CHK_ESTADO:DETALLES:EDITAR:ELIMINAR:'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(379235276864438201)
,p_plug_name=>'Agregar / Editar Sub-Bloque'
,p_parent_plug_id=>wwv_flow_imp.id(378600098390468530)
,p_region_template_options=>'js-dialog-autoheight:js-modal:js-dialog-size600x400'
,p_plug_template=>wwv_flow_imp.id(40117728043263659)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(378602024452468550)
,p_plug_name=>'Detalles'
,p_parent_plug_id=>wwv_flow_imp.id(378599909120468529)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(379238493121438233)
,p_button_sequence=>110
,p_button_plug_id=>wwv_flow_imp.id(379235276864438201)
,p_button_name=>'BT_ACEPTAR_CR_ED_SUB_BLOQUE'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Aceptar'
,p_button_position=>'NEXT'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(379238109509438230)
,p_button_sequence=>110
,p_button_plug_id=>wwv_flow_imp.id(379235276864438201)
,p_button_name=>'BT_CERRAR_CR_ED_SUB_BLOQUE'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_image_alt=>'Cerrar'
,p_button_position=>'PREVIOUS'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(378691720414552308)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(378600098390468530)
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
 p_id=>wwv_flow_imp.id(378601819764468548)
,p_name=>'P770_COD_MODULO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(378599909120468529)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(378691081692552301)
,p_name=>'P770_DESC_SUCURSAL'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(378602024452468550)
,p_prompt=>'Desc. Sucursal'
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
 p_id=>wwv_flow_imp.id(378691175493552302)
,p_name=>'P770_COD_USUARIO_ALTA'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(378602024452468550)
,p_pre_element_text=>unistr('Datos activaci\00F3n: ')
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
 p_id=>wwv_flow_imp.id(378691269981552303)
,p_name=>'P770_DESC_BLOQUE'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(378602024452468550)
,p_prompt=>'Desc. Bloque'
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
 p_id=>wwv_flow_imp.id(378691331972552304)
,p_name=>'P770_COD_USUARIO_BAJA'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(378602024452468550)
,p_pre_element_text=>unistr('Datos Inactivaci\00F3n:')
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
 p_id=>wwv_flow_imp.id(378691464159552305)
,p_name=>'P770_FECHA_ALTA'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(378602024452468550)
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
 p_id=>wwv_flow_imp.id(378691505755552306)
,p_name=>'P770_FECHA_BAJA'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(378602024452468550)
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
 p_id=>wwv_flow_imp.id(378691625688552307)
,p_name=>'P770_NOMB_RESPONSABLE'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(378602024452468550)
,p_prompt=>'Nombre Resp:'
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
 p_id=>wwv_flow_imp.id(378691984687552310)
,p_name=>'P770_ROW_ID_DETALLES'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(378599909120468529)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(379235502656438204)
,p_name=>'P770_NOMB_REGION'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(378599909120468529)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(379235665147438205)
,p_name=>'P770_COD_SUCURSAL_CR_ED'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(379235276864438201)
,p_prompt=>'Sucursal'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_SUCURSAL_CAENTSAL'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select cod_sucursal R, ',
'       cod_sucursal||'' - ''||descripcion D',
'  from sucursales ',
' where cod_empresa = :P_COD_EMPRESA',
''))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186937130263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(379235824643438207)
,p_name=>'P770_IND_ACCION'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(378599909120468529)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(379235973898438208)
,p_name=>'P770_ROW_ID_EDITAR'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(378599909120468529)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(379236430018438213)
,p_name=>'P770_ROW_ID_ELIMINAR'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(378599909120468529)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(379236871265438217)
,p_name=>'P770_MSG'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(378599909120468529)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(379237233580438221)
,p_name=>'P770_COD_BLOQUE_CR_ED'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(379235276864438201)
,p_prompt=>'Bloque'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select  cod_bloque || '' - ''|| desc_bloque D, ',
'        cod_bloque R',
'       ',
'from   st_bloques',
'where  cod_empresa   = :P_COD_EMPRESA',
'and    cod_sucursal  = :P770_COD_SUCURSAL_CR_ED;'))
,p_lov_display_null=>'YES'
,p_lov_cascade_parent_items=>'P770_COD_SUCURSAL_CR_ED'
,p_ajax_items_to_submit=>'P770_COD_SUCURSAL_CR_ED'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186937130263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(379237346199438222)
,p_name=>'P770_COD_SUB_BLOQUE_CR_ED'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(379235276864438201)
,p_prompt=>unistr('C\00F3digo Sub. Bloque')
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>70
,p_field_template=>wwv_flow_imp.id(40186937130263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(379237429372438223)
,p_name=>'P770_DESC_SUB_BLOQUE_CR_ED'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(379235276864438201)
,p_prompt=>unistr('Descripci\00F3n Sub. Bloque')
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>70
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186937130263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(379237546775438224)
,p_name=>'P770_LARGO_CR_ED'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(379235276864438201)
,p_prompt=>'Largo'
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
 p_id=>wwv_flow_imp.id(379237648383438225)
,p_name=>'P770_ALTO_CR_ED'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(379235276864438201)
,p_prompt=>'Alto'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186937130263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(379237720186438226)
,p_name=>'P770_ANCHO_CR_ED'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(379235276864438201)
,p_prompt=>'Ancho'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186937130263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(379237883000438227)
,p_name=>'P770_PESO_CR_ED'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(379235276864438201)
,p_prompt=>'Peso'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186937130263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(379237985400438228)
,p_name=>'P770_COD_RESPONSABLE_CR_ED'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(379235276864438201)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(379238013641438229)
,p_name=>'P770_ESTADO_CR_ED'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(379235276864438201)
,p_prompt=>'Estado'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#:margin-top-sm'
,p_attribute_01=>'N'
,p_attribute_02=>'S'
,p_attribute_03=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(379239221012438241)
,p_name=>'P770_AUX_CHECK_BOX'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(378599909120468529)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(379239708588438246)
,p_name=>'P770_ROW_ID_CAMBIO_ESTADO'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(378599909120468529)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(379239864454438247)
,p_name=>'P770_ERROR'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(378599909120468529)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(378692308806552314)
,p_name=>'DA_VER_DETALLES'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P770_ROW_ID_DETALLES'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(378692420780552315)
,p_event_id=>wwv_flow_imp.id(378692308806552314)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    SELECT  (SELECT descripcion			   ',
'			   FROM sucursales',
'			  WHERE cod_empresa  = :P_COD_EMPRESA',
'			    AND cod_sucursal = ST_SUB_BLOQUES.COD_SUCURSAL) AS DESC_SUCURSAL,',
'            ST_SUB_BLOQUES.COD_USUARIO_ALTA,',
'            ST_SUB_BLOQUES.FECHA_ALTA,',
'            (SELECT desc_bloque			   ',
'			   FROM ST_BLOQUES',
'			  WHERE cod_empresa  = :P_COD_EMPRESA',
'			    AND cod_sucursal = ST_SUB_BLOQUES.COD_SUCURSAL',
'			    AND cod_bloque	 = ST_SUB_BLOQUES.COD_BLOQUE) AS DESC_BLOQUE,',
'            ST_SUB_BLOQUES.COD_USUARIO_BAJA,',
'            ST_SUB_BLOQUES.FECHA_BAJA,',
'            (SELECT p.nombre',
'			   FROM rh_empleados e,',
'			  	    personas p',
'			  WHERE e.cod_empresa  = :P_COD_EMPRESA',
'			    AND e.cod_Empleado = ST_SUB_BLOQUES.cod_responsable ',
'			    AND e.cod_persona  = p.cod_persona) AS NOMB_RESPONSABLE',
'',
'    INTO    :P770_DESC_SUCURSAL,',
'            :P770_COD_USUARIO_ALTA,',
'            :P770_FECHA_ALTA,',
'            :P770_DESC_BLOQUE,',
'            :P770_COD_USUARIO_BAJA,',
'            :P770_FECHA_BAJA,',
'            :P770_NOMB_RESPONSABLE',
'',
'    FROM    ST_SUB_BLOQUES ST_SUB_BLOQUES',
'    WHERE   ROWID = :P770_ROW_ID_DETALLES;',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR (''Error en DA_VER_DETALLES - 01. '' || SQLERRM);',
'END;',
'',
'',
''))
,p_attribute_02=>'P770_ROW_ID_DETALLES'
,p_attribute_03=>'P770_DESC_SUCURSAL,P770_COD_USUARIO_ALTA,P770_FECHA_ALTA,P770_DESC_BLOQUE,P770_COD_USUARIO_BAJA,P770_FECHA_BAJA,P770_NOMB_RESPONSABLE'
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
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(379235371904438202)
,p_name=>'DA_ABRIR_AGREGAR_SUB_BLOQUE'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(378691720414552308)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(379316657141250904)
,p_event_id=>wwv_flow_imp.id(379235371904438202)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.message.clearErrors();'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(379238573909438234)
,p_event_id=>wwv_flow_imp.id(379235371904438202)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P770_COD_SUCURSAL_CR_ED,P770_COD_BLOQUE_CR_ED,P770_COD_SUB_BLOQUE_CR_ED,P770_DESC_SUB_BLOQUE_CR_ED,P770_LARGO_CR_ED,P770_ANCHO_CR_ED,P770_ALTO_CR_ED,P770_PESO_CR_ED,P770_COD_RESPONSABLE_CR_ED,P770_ESTADO_CR_ED'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(379238984856438238)
,p_event_id=>wwv_flow_imp.id(379235371904438202)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P770_ESTADO_CR_ED'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(379235774845438206)
,p_event_id=>wwv_flow_imp.id(379235371904438202)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    :P770_NOMB_REGION := ''Agregar Sub-bloque'';',
'    :P770_IND_ACCION  := 1;',
'',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR (''Error en DA_ABRIR_AGREGAR_SUB_BLOQUE - 01. '' || SQLERRM);',
'END;'))
,p_attribute_03=>'P770_NOMB_REGION,P770_IND_ACCION'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(379239180418438240)
,p_event_id=>wwv_flow_imp.id(379235371904438202)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(379235276864438201)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(379235488468438203)
,p_event_id=>wwv_flow_imp.id(379235371904438202)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(379235276864438201)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(379236033226438209)
,p_name=>'DA_ABRIR_EDITAR_SUB_BLOQUE'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P770_ROW_ID_EDITAR'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(379316741197250905)
,p_event_id=>wwv_flow_imp.id(379236033226438209)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.message.clearErrors();'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(379236216536438211)
,p_event_id=>wwv_flow_imp.id(379236033226438209)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    SELECT  COD_BLOQUE,',
'            COD_SUCURSAL,',
'            COD_SUB_BLOQUE,',
'            DESC_SUB_BLOQUE,',
'            LARGO_MTS,',
'            ANCHO_MTS,',
'            ALTO_MTS,',
'            PESO_KG,',
'            COD_USUARIO_ALTA,',
'            COD_USUARIO_BAJA,',
'            FECHA_ALTA,',
'            FECHA_BAJA,',
'            ESTADO,',
'            COD_RESPONSABLE',
'',
'    INTO    :P770_COD_BLOQUE_CR_ED,',
'            :P770_COD_SUCURSAL_CR_ED,',
'            :P770_COD_SUB_BLOQUE_CR_ED,',
'            :P770_DESC_SUB_BLOQUE_CR_ED,',
'            :P770_LARGO_CR_ED,',
'            :P770_ANCHO_CR_ED,',
'            :P770_ALTO_CR_ED,',
'            :P770_PESO_CR_ED,',
'            :P770_COD_USUARIO_ALTA,',
'            :P770_COD_USUARIO_BAJA,',
'            :P770_FECHA_ALTA,            ',
'            :P770_FECHA_BAJA,',
'            :P770_ESTADO_CR_ED,',
'            :P770_COD_RESPONSABLE_CR_ED',
'',
'    FROM    ST_SUB_BLOQUES',
'    WHERE   ROWID = :P770_ROW_ID_EDITAR;',
'',
'    :P770_IND_ACCION := 0;',
'    :P770_NOMB_REGION := ''Editar Sub-bloque'';    ',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR (''Error en DA_VER_DETALLES - 01. '' || SQLERRM);',
'END;',
'',
'',
'',
'',
'',
'',
'',
''))
,p_attribute_02=>'P770_ROW_ID_EDITAR'
,p_attribute_03=>'P770_IND_ACCION,P770_NOMB_REGION,P770_COD_BLOQUE_CR_ED,P770_COD_SUCURSAL_CR_ED,P770_COD_SUB_BLOQUE_CR_ED,P770_DESC_SUB_BLOQUE_CR_ED,P770_LARGO_CR_ED,P770_ANCHO_CR_ED,P770_ALTO_CR_ED,P770_PESO_CR_ED,P770_COD_USUARIO_ALTA,P770_COD_USUARIO_BAJA,P770_FEC'
||'HA_ALTA,P770_FECHA_BAJA,P770_ESTADO_CR_ED,P770_COD_RESPONSABLE_CR_ED'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(379239028110438239)
,p_event_id=>wwv_flow_imp.id(379236033226438209)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(379235276864438201)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(379238894679438237)
,p_event_id=>wwv_flow_imp.id(379236033226438209)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P770_ESTADO_CR_ED'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(379236393693438212)
,p_event_id=>wwv_flow_imp.id(379236033226438209)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(379235276864438201)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(379236556114438214)
,p_name=>'DA_ELIMINAR_SUB_BLOQUE'
,p_event_sequence=>40
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P770_ROW_ID_ELIMINAR'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(379236648311438215)
,p_event_id=>wwv_flow_imp.id(379236556114438214)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>unistr('\00BFDesea eliminar el registro?')
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(379236773063438216)
,p_event_id=>wwv_flow_imp.id(379236556114438214)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    STBLOSUB.PR_ELIMINAR_SUB_BLOQUE (PI_ROW_ID => :P770_ROW_ID_ELIMINAR,',
'                                     PO_MSG    => :P770_MSG); ',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR (''Error en DA_ELIMINAR_SUB_BLOQUE - 01. '' || SQLERRM);',
'END;',
'',
'',
''))
,p_attribute_02=>'P770_ROW_ID_ELIMINAR'
,p_attribute_03=>'P770_MSG'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(379236902800438218)
,p_event_id=>wwv_flow_imp.id(379236556114438214)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(378600098390468530)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(379237055848438219)
,p_name=>'DA_MSG'
,p_event_sequence=>50
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P770_MSG'
,p_condition_element=>'P770_MSG'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(379237107676438220)
,p_event_id=>wwv_flow_imp.id(379237055848438219)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'&P770_MSG.'
,p_attribute_03=>'information'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(379238243229438231)
,p_name=>'DA_CERRAR_CR_ED_SUB_BLOQUE'
,p_event_sequence=>60
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(379238109509438230)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(379238351251438232)
,p_event_id=>wwv_flow_imp.id(379238243229438231)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(379235276864438201)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(379238682214438235)
,p_name=>'DA_SOLO_NUMERO'
,p_event_sequence=>70
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P770_LARGO_CR_ED,P770_ANCHO_CR_ED,P770_ALTO_CR_ED,P770_PESO_CR_ED'
,p_bind_type=>'bind'
,p_bind_event_type=>'keypress'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(379238784440438236)
,p_event_id=>wwv_flow_imp.id(379238682214438235)
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
 p_id=>wwv_flow_imp.id(379239322232438242)
,p_name=>'DA_GUARDAR_ESTADO_CHK_BX'
,p_event_sequence=>80
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P770_AUX_CHECK_BOX'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(379239525917438244)
,p_event_id=>wwv_flow_imp.id(379239322232438242)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF :P770_AUX_CHECK_BOX = ''S'' THEN',
'',
'    UPDATE ST_SUB_BLOQUES',
'    SET    ESTADO           = :P770_AUX_CHECK_BOX,',
'           COD_USUARIO_BAJA = NULL,',
'           FECHA_BAJA       = NULL    ',
'    WHERE  ROWID  = :P770_ROW_ID_CAMBIO_ESTADO;',
'',
'ELSIF :P770_AUX_CHECK_BOX = ''N'' THEN',
'    ',
'    UPDATE ST_SUB_BLOQUES',
'    SET    ESTADO           = :P770_AUX_CHECK_BOX,',
'           COD_USUARIO_BAJA = :P_COD_USUARIO,',
'           FECHA_BAJA       = SYSDATE   ',
'    WHERE  ROWID  = :P770_ROW_ID_CAMBIO_ESTADO;',
'    ',
'END IF;',
'',
''))
,p_attribute_02=>'P770_AUX_CHECK_BOX,P770_ROW_ID_CAMBIO_ESTADO'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(379239674468438245)
,p_event_id=>wwv_flow_imp.id(379239322232438242)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(378600098390468530)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(379239963791438248)
,p_name=>'DA_VALIDAR_NO_NULO'
,p_event_sequence=>90
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(379238493121438233)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(379240091880438249)
,p_event_id=>wwv_flow_imp.id(379239963791438248)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'validarNoNulo();'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(379240180754438250)
,p_name=>'DA_GUARDAR_SUB_BLOQUE'
,p_event_sequence=>100
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(379238493121438233)
,p_condition_element=>'P770_ERROR'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'0'
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(379316317279250901)
,p_event_id=>wwv_flow_imp.id(379240180754438250)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    IF :P770_IND_ACCION = 0 THEN',
'        STBLOSUB.PR_EDITAR_SUB_BLOQUE (PI_ROW_ID            => :P770_ROW_ID_EDITAR,',
'                                       PI_COD_EMPRESA       => :P_COD_EMPRESA,  ',
'                                       PI_COD_SUCURSAL      => :P770_COD_SUCURSAL_CR_ED,',
'                                       PI_COD_BLOQUE        => :P770_COD_BLOQUE_CR_ED,',
'                                       PI_COD_SUB_BLOQUE    => :P770_COD_SUB_BLOQUE_CR_ED,',
'                                       PI_DESC_SUB_BLOQUE   => :P770_DESC_SUB_BLOQUE_CR_ED,',
'                                       PI_LARGO_MTS         => :P770_LARGO_CR_ED,',
'                                       PI_ANCHO_MTS         => :P770_ANCHO_CR_ED,',
'                                       PI_ALTO_MTS          => :P770_ALTO_CR_ED,',
'                                       PI_PESO_KG           => :P770_PESO_CR_ED,',
'                                       PI_COD_RESPONSABLE   => :P770_COD_RESPONSABLE_CR_ED,',
'                                       PI_ESTADO            => :P770_ESTADO_CR_ED,',
'                                       PI_COD_USUARIO_ALTA  => :P770_COD_USUARIO_ALTA,  ',
'                                       PO_MSG               => :P770_MSG);',
'',
'    ELSIF :P770_IND_ACCION = 1 THEN',
'        STBLOSUB.PR_AGREGAR_SUB_BLOQUE (PI_COD_EMPRESA       => :P_COD_EMPRESA,  ',
'                                        PI_COD_SUCURSAL      => :P770_COD_SUCURSAL_CR_ED,',
'                                        PI_COD_BLOQUE        => :P770_COD_BLOQUE_CR_ED,',
'                                        PI_COD_SUB_BLOQUE    => :P770_COD_SUB_BLOQUE_CR_ED,',
'                                        PI_DESC_SUB_BLOQUE   => :P770_DESC_SUB_BLOQUE_CR_ED,',
'                                        PI_LARGO_MTS         => :P770_LARGO_CR_ED,',
'                                        PI_ANCHO_MTS         => :P770_ANCHO_CR_ED,',
'                                        PI_ALTO_MTS          => :P770_ALTO_CR_ED,',
'                                        PI_PESO_KG           => :P770_PESO_CR_ED,',
'                                        PI_COD_RESPONSABLE   => :P770_COD_RESPONSABLE_CR_ED,',
'                                        PI_ESTADO            => :P770_ESTADO_CR_ED,',
'                                        PI_COD_USUARIO_ALTA  => :P_COD_USUARIO, ',
'                                        PO_MSG               => :P770_MSG);',
'    END IF;',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR (''Error DA_GUARDAR_SUB_BLOQUE - 01. '' || SQLERRM);',
'END;',
'',
'',
''))
,p_attribute_02=>'P770_IND_ACCION,P770_COD_SUCURSAL_CR_ED,P770_COD_BLOQUE_CR_ED,P770_COD_SUB_BLOQUE_CR_ED,P770_DESC_SUB_BLOQUE_CR_ED,P770_LARGO_CR_ED,P770_ANCHO_CR_ED,P770_ALTO_CR_ED,P770_PESO_CR_ED,P770_COD_RESPONSABLE_CR_ED,P770_ESTADO_CR_ED,P770_COD_USUARIO_ALTA,P7'
||'70_ROW_ID_EDITAR'
,p_attribute_03=>'P770_MSG'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(379316431209250902)
,p_event_id=>wwv_flow_imp.id(379240180754438250)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(378600098390468530)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(379316535471250903)
,p_event_id=>wwv_flow_imp.id(379240180754438250)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(379235276864438201)
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(378601923216468549)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_INIT'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    :P770_COD_MODULO := ''ST'';',
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
