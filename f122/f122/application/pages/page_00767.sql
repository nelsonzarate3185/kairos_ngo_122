prompt --application/pages/page_00767
begin
--   Manifest
--     PAGE: 00767
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
 p_id=>767
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>unistr('Definici\00F3n de Niveles')
,p_alias=>unistr('DEFINICI\00D3N-DE-NIVELES')
,p_step_title=>unistr('Definici\00F3n de Niveles')
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function validarNoNulo(){',
'    var item_1 = apex.item("P767_COD_ESTANTE").getValue();',
'    var item_2 = apex.item("P767_COD_NIVEL").getValue();',
'    var item_3 = apex.item("P767_DESC_NIVEL").getValue();',
'    var item_4 = apex.item("P767_COD_CUERPO").getValue();',
'    apex.message.clearErrors();',
'',
'    apex.item("P767_ERROR").setValue(''0'');    ',
'',
'    if (item_1 == ''''){',
'        apex.message.showErrors([{',
'                                type: apex.message.TYPE.ERROR,',
'                                location: "inline",',
'                                pageItem: "P767_COD_ESTANTE",',
unistr('                                message: "Debe ingresar un c\00F3dig de estante."'),
'                                }]); ',
'        apex.item("P767_ERROR").setValue(''1'');                            ',
'    } ',
'',
'    if (item_2 == ''''){',
'        apex.message.showErrors([{',
'                                type: apex.message.TYPE.ERROR,',
'                                location: "inline",',
'                                pageItem: "P767_COD_NIVEL",',
'                                message: "Debe ingresar un nivel."',
'                                }]);',
'        apex.item("P767_ERROR").setValue(''1'');                                                            ',
'    }',
'    if (item_3 == ''''){',
'        apex.message.showErrors([{',
'                                type: apex.message.TYPE.ERROR,',
'                                location: "inline",',
'                                pageItem: "P767_DESC_NIVEL",',
unistr('                                message: "Debe ingresar una descripci\00F3n de nivel."'),
'                                }]);',
'        apex.item("P767_ERROR").setValue(''1'');                                                            ',
'    }',
'    if (item_4 == ''''){',
'        apex.message.showErrors([{',
'                                type: apex.message.TYPE.ERROR,',
'                                location: "inline",',
'                                pageItem: "P767_COD_CUERPO",',
'                                message: "Debe ingresar un cuerpo."',
'                                }]);',
'        apex.item("P767_ERROR").setValue(''1'');                                                            ',
'    }',
'',
'',
'',
'',
'} ',
'',
'function soloNumeros(e){',
'  var key = e.charCode;',
'    return ( (key >= 48 && key <= 57)||(key > 43 && key < 45));',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_last_updated_by=>'JUANASIS'
,p_last_upd_yyyymmddhh24miss=>'20240822150626'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(377010161717867345)
,p_plug_name=>unistr('Definici\00F3n de niveles')
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>940
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(377010204408867346)
,p_plug_name=>unistr('Reporte definici\00F3n de niveles')
,p_parent_plug_id=>wwv_flow_imp.id(377010161717867345)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select COD_EMPRESA,',
'       COD_ESTANTE,',
'       COD_CUERPO,',
'       COD_NIVEL,',
'       DESC_NIVEL,',
'       ALTO_MTS,',
'       ANCHO_MTS,',
'       LARGO_MTS,',
'       PESO_KG,',
'       FECHA_ALTA,',
'       FECHA_BAJA,',
'       COD_USUARIO_ALTA,',
'     --  ESTADO,',
'        -- QUERY CHECKBOX----',
'       APEX_ITEM.CHECKBOX (p_idx         => 1 ,',
'                           p_value       => rowid,',
'                           p_attributes  => (case ESTADO',
'                                                 when ''S'' then ''checked ''',
'                                             else null',
'                                                 end ) ||''onclick="seleccionar(this)"'' ) as ESTADO,',
'       ',
'       COD_USUARIO_BAJA,',
'       NULL editar,',
'       null eliminar,',
'       null ver,',
'       ROWID R_ID',
'  from ST_NIVELES',
'  where  COD_EMPRESA = :P_COD_EMPRESA',
'  order by cod_estante asc, cod_cuerpo asc, cod_nivel asc'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>unistr('Reporte definici\00F3n de niveles')
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
 p_id=>wwv_flow_imp.id(377010379447867347)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y_OF_Z'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_select_columns=>'N'
,p_show_rows_per_page=>'N'
,p_show_sort=>'N'
,p_show_control_break=>'N'
,p_show_highlight=>'N'
,p_show_computation=>'N'
,p_show_aggregate=>'N'
,p_show_chart=>'N'
,p_show_group_by=>'N'
,p_show_pivot=>'N'
,p_show_flashback=>'N'
,p_show_help=>'N'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'JUANASIS'
,p_internal_uid=>377010379447867347
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(377719828517128712)
,p_db_column_name=>'EDITAR'
,p_display_order=>5
,p_column_identifier=>'O'
,p_column_label=>'Editar'
,p_column_link=>'javascript:$s(''P767_EDITAR'',''#R_ID#'');'
,p_column_linktext=>'<span class="fa fa-edit" aria-hidden="true"></span>'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(377010433257867348)
,p_db_column_name=>'COD_EMPRESA'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Cod Empresa'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(377010547053867349)
,p_db_column_name=>'COD_ESTANTE'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Estante'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(377010613955867350)
,p_db_column_name=>'COD_CUERPO'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Cuerpo'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(377718749965128701)
,p_db_column_name=>'COD_NIVEL'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Nivel'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(377718836894128702)
,p_db_column_name=>'DESC_NIVEL'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>unistr('Descripci\00F3n Nivel')
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(377718984148128703)
,p_db_column_name=>'ALTO_MTS'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Alto'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(377719073650128704)
,p_db_column_name=>'ANCHO_MTS'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Ancho'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(377719136190128705)
,p_db_column_name=>'LARGO_MTS'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Largo'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(377719232451128706)
,p_db_column_name=>'PESO_KG'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Peso en Kg.'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(377719346184128707)
,p_db_column_name=>'FECHA_ALTA'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Fecha Alta'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(377719447321128708)
,p_db_column_name=>'FECHA_BAJA'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Fecha Baja'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(377719525067128709)
,p_db_column_name=>'COD_USUARIO_ALTA'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Cod Usuario Alta'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(377719670548128710)
,p_db_column_name=>'ESTADO'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Estado'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(377719769549128711)
,p_db_column_name=>'COD_USUARIO_BAJA'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>'Cod Usuario Baja'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(377719972548128713)
,p_db_column_name=>'ELIMINAR'
,p_display_order=>160
,p_column_identifier=>'P'
,p_column_label=>'Eliminar'
,p_column_link=>'javascript:$s(''P767_ELIMINAR'',''#R_ID#'');'
,p_column_linktext=>'<span aria-hidden="true" class="fa fa-trash-o"></span>'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(377720089140128714)
,p_db_column_name=>'VER'
,p_display_order=>170
,p_column_identifier=>'Q'
,p_column_label=>'Ver'
,p_column_link=>'javascript:$s(''P767_VER'',''#R_ID#'');'
,p_column_linktext=>'<span aria-hidden="true" class="fa fa-eye"></span>'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(377722660602128740)
,p_db_column_name=>'R_ID'
,p_display_order=>180
,p_column_identifier=>'R'
,p_column_label=>'R Id'
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
 p_id=>wwv_flow_imp.id(377728431484129172)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'3777285'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>10
,p_report_columns=>'EDITAR:COD_ESTANTE:COD_CUERPO:COD_NIVEL:DESC_NIVEL:LARGO_MTS:ANCHO_MTS:ALTO_MTS:PESO_KG:ESTADO:ELIMINAR:VER:'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(377722785582128741)
,p_plug_name=>'Detalle'
,p_parent_plug_id=>wwv_flow_imp.id(377010161717867345)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(377723479754128748)
,p_plug_name=>'Datos alta/baja'
,p_parent_plug_id=>wwv_flow_imp.id(377722785582128741)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--noBorder:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>80
,p_plug_new_grid_row=>false
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(377723526559128749)
,p_plug_name=>'Detalle fila'
,p_parent_plug_id=>wwv_flow_imp.id(377722785582128741)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--noBorder:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>70
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(377720164176128715)
,p_plug_name=>'VARIABLES'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(377720538701128719)
,p_plug_name=>'Editar/Crear'
,p_region_template_options=>'#DEFAULT#:js-dialog-size600x400'
,p_plug_template=>wwv_flow_imp.id(40117728043263659)
,p_plug_display_sequence=>960
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(377722118817128735)
,p_button_sequence=>130
,p_button_plug_id=>wwv_flow_imp.id(377720538701128719)
,p_button_name=>'BT_CANCELAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_image_alt=>'Cancelar'
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(377721937015128733)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(377720538701128719)
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
 p_id=>wwv_flow_imp.id(377828767449331808)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(377010204408867346)
,p_button_name=>'BT_CREAR_NUEVO'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Agregar'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(377720208253128716)
,p_name=>'P767_EDITAR'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(377720164176128715)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(377720312924128717)
,p_name=>'P767_ELIMINAR'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(377720164176128715)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(377720444715128718)
,p_name=>'P767_VER'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(377720164176128715)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(377720619582128720)
,p_name=>'P767_COD_ESTANTE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(377720538701128719)
,p_prompt=>'Cod Estante'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select desc_Estante, cod_estante',
'      from st_estantes',
'     where cod_empresa  = :P_cod_empresa',
'order by 1 asc',
'       '))
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'Y'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(377720869506128722)
,p_name=>'P767_COD_CUERPO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(377720538701128719)
,p_prompt=>'Cuerpo'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select desc_cuerpo, cod_cuerpo',
'from st_cuerpo',
'where cod_empresa  = :P_COD_EMPRESA      ',
'and cod_estante   = :P767_COD_ESTANTE',
'order by 1 asc'))
,p_lov_cascade_parent_items=>'P767_COD_ESTANTE'
,p_ajax_items_to_submit=>'P767_COD_ESTANTE'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'Y'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(377720983960128723)
,p_name=>'P767_COD_NIVEL'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(377720538701128719)
,p_prompt=>'Nivel'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>10
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(377721091306128724)
,p_name=>'P767_LARGO_MTS'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(377720538701128719)
,p_prompt=>'Largo'
,p_post_element_text=>'Metros.'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>8
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--postTextBlock'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(377721197931128725)
,p_name=>'P767_ANCHO_MTS'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(377720538701128719)
,p_prompt=>'Ancho'
,p_post_element_text=>'Metros.'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>8
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--postTextBlock'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(377721241529128726)
,p_name=>'P767_ALTO_MTS'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(377720538701128719)
,p_prompt=>'Alto'
,p_post_element_text=>'Metros.'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>8
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--postTextBlock'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(377721347006128727)
,p_name=>'P767_PESO_KG'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(377720538701128719)
,p_prompt=>'Peso'
,p_post_element_text=>'Kg.'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>8
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--postTextBlock'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(377721425224128728)
,p_name=>'P767_ESTADO'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(377720538701128719)
,p_prompt=>'Estado'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'S'
,p_attribute_03=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(377721554902128729)
,p_name=>'P767_COD_USUARIO_ALTA'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(377720538701128719)
,p_prompt=>'Cod Usuario Alta'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_tag_css_classes=>'           '
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(377721652671128730)
,p_name=>'P767_FECHA_ALTA'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(377720538701128719)
,p_prompt=>'Fecha Alta'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_tag_css_classes=>'           '
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(377721701622128731)
,p_name=>'P767_COD_USUARIO_BAJA'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(377720538701128719)
,p_prompt=>'Cod Usuario Baja'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_tag_css_classes=>'           '
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(377721845180128732)
,p_name=>'P767_FECHA_BAJA'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(377720538701128719)
,p_prompt=>'Fecha Baja'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_tag_css_classes=>'           '
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(377722877784128742)
,p_name=>'P767_DET_DESC_ESTANTE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(377723526559128749)
,p_prompt=>'Desc. Estante'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(377722905164128743)
,p_name=>'P767_DET_DESC_CUERPO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(377723526559128749)
,p_prompt=>'Desc. Cuerpo'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(377723065775128744)
,p_name=>'P767_DET_COD_USUARIO_ALTA'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(377723479754128748)
,p_prompt=>'Usuario Alta'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(377723129839128745)
,p_name=>'P767_DET_FECHA_ALTA'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(377723479754128748)
,p_prompt=>'Fecha Alta'
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
 p_id=>wwv_flow_imp.id(377723238521128746)
,p_name=>'P767_DET_COD_USUARIO_BAJA'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(377723479754128748)
,p_prompt=>'Usuario Baja'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(377723319264128747)
,p_name=>'P767_DET_FECHA_BAJA'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(377723479754128748)
,p_prompt=>'Fecha Baja'
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
 p_id=>wwv_flow_imp.id(377829352444331814)
,p_name=>'P767_IND_OPERACION'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(377720164176128715)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(377829643439331817)
,p_name=>'P767_MSG'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(377720164176128715)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(377830165458331822)
,p_name=>'P767_DESC_NIVEL'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(377720538701128719)
,p_prompt=>unistr('Descripci\00F3n del nivel')
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
 p_id=>wwv_flow_imp.id(377830483137331825)
,p_name=>'P767_ERROR'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(377720164176128715)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(377722254239128736)
,p_name=>'DA_CANCELAR'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(377722118817128735)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(377722321068128737)
,p_event_id=>wwv_flow_imp.id(377722254239128736)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(377720538701128719)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(377722495801128738)
,p_name=>'DA_OCULTAR_REGION'
,p_event_sequence=>20
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(377722512837128739)
,p_event_id=>wwv_flow_imp.id(377722495801128738)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(377720538701128719)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(377723689431128750)
,p_name=>'DA_VER'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P767_VER'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(377828088422331801)
,p_event_id=>wwv_flow_imp.id(377723689431128750)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    select (select desc_Estante ',
'        from st_estantes',
'        where cod_empresa  = :P_cod_empresa',
'        AND COD_ESTANTE =  ST.COD_ESTANTE  )  desc_Estante,',
'        (select desc_cuerpo ',
'        from st_cuerpo',
'        where cod_empresa  = :P_cod_empresa      ',
'        and cod_estante   = st.cod_estante',
'        AND COD_CUERPO = ST.COD_CUERPO) CUERPO,',
'        ST.COD_USUARIO_ALTA,',
'        ST.FECHA_ALTA,',
'        ST.COD_USUARIO_BAJA ,',
'        ST.FECHA_BAJA',
'    INTO ',
'       :P767_DET_DESC_ESTANTE,',
'       :P767_DET_DESC_CUERPO,',
'       :P767_DET_COD_USUARIO_ALTA,',
'       :P767_DET_FECHA_ALTA,',
'       :P767_DET_COD_USUARIO_BAJA,',
'       :P767_DET_FECHA_BAJA       ',
'    from ST_NIVELES ST',
'    where  ST.COD_EMPRESA = :P_COD_EMPRESA ',
'    AND ROWID = :P767_VER;',
'EXCEPTION',
'    WHEN NO_DATA_FOUND THEN',
'       :P767_DET_DESC_ESTANTE := NULL;',
'       :P767_DET_DESC_CUERPO := NULL;',
'       :P767_DET_COD_USUARIO_ALTA := NULL;',
'       :P767_DET_FECHA_ALTA := NULL;',
'       :P767_DET_COD_USUARIO_BAJA := NULL;',
'       :P767_DET_FECHA_BAJA  := NULL  ;',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(''OCURRIO UN ERROR DA_VER: ''||SQLERRM);',
'END;',
'',
'',
'       '))
,p_attribute_02=>'P767_VER'
,p_attribute_03=>'P767_DET_DESC_ESTANTE,P767_DET_DESC_CUERPO,P767_DET_COD_USUARIO_ALTA,P767_DET_FECHA_ALTA, P767_DET_COD_USUARIO_BAJA,P767_DET_FECHA_BAJA'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(377828108932331802)
,p_name=>'DA_EDITAR'
,p_event_sequence=>40
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P767_EDITAR'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(377828220713331803)
,p_event_id=>wwv_flow_imp.id(377828108932331802)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(377720538701128719)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(377829494707331815)
,p_event_id=>wwv_flow_imp.id(377828108932331802)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P767_COD_ESTANTE,P767_COD_CUERPO,P767_COD_NIVEL,P767_LARGO_MTS,P767_ANCHO_MTS,P767_ALTO_MTS,P767_PESO_KG,P767_ESTADO,P767_COD_USUARIO_ALTA,P767_FECHA_ALTA,P767_COD_USUARIO_BAJA,P767_FECHA_BAJA'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(377829552281331816)
,p_event_id=>wwv_flow_imp.id(377828108932331802)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    select  ',
'        ST.COD_ESTANTE,',
'        ST.COD_CUERPO,',
'        ST.COD_NIVEL,',
'        ST.DESC_NIVEL,',
'        ST.LARGO_MTS,',
'        ST.ANCHO_MTS,',
'        ST.ALTO_MTS,',
'        ST.PESO_KG,',
'        ST.ESTADO,',
'        ST.COD_USUARIO_ALTA,',
'        ST.FECHA_ALTA,',
'        ST.COD_USUARIO_BAJA ,',
'        ST.FECHA_BAJA',
'    INTO ',
'        :P767_COD_ESTANTE,',
'        :P767_COD_CUERPO,',
'        :P767_COD_NIVEL,',
'        :P767_DESC_NIVEL,',
'        :P767_LARGO_MTS,',
'        :P767_ANCHO_MTS,',
'        :P767_ALTO_MTS,',
'        :P767_PESO_KG,',
'        :P767_ESTADO,',
'        :P767_COD_USUARIO_ALTA,',
'        :P767_FECHA_ALTA,',
'        :P767_COD_USUARIO_BAJA,',
'        :P767_FECHA_BAJA',
'          ',
'    from ST_NIVELES ST',
'    where  ST.COD_EMPRESA = :P_COD_EMPRESA ',
'    AND ROWID = :P767_EDITAR;',
'',
'    :P767_IND_OPERACION := 0;  ',
'    ',
'EXCEPTION ',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(''OCURRIO UN ERROR DA_EDITAR: ''||SQLERRM);',
'END;',
'',
''))
,p_attribute_02=>'P767_EDITAR'
,p_attribute_03=>'P767_DESC_NIVEL,P767_COD_ESTANTE,P767_COD_CUERPO,P767_COD_NIVEL,P767_LARGO_MTS,P767_ANCHO_MTS,P767_ALTO_MTS,P767_PESO_KG,P767_ESTADO,P767_COD_USUARIO_ALTA,P767_FECHA_ALTA,P767_COD_USUARIO_BAJA,P767_FECHA_BAJA,P767_IND_OPERACION'
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
 p_id=>wwv_flow_imp.id(377830776296331828)
,p_event_id=>wwv_flow_imp.id(377828108932331802)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.message.clearErrors();'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(377832044077331841)
,p_event_id=>wwv_flow_imp.id(377828108932331802)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P767_ESTADO'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(377828562773331806)
,p_name=>'DA_ELIMINAR'
,p_event_sequence=>50
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P767_ELIMINAR'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(377828624995331807)
,p_event_id=>wwv_flow_imp.id(377828562773331806)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>'Presione para continuar.'
,p_attribute_02=>unistr('\00BFDese eliminar?')
,p_attribute_03=>'warning'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(377831192828331832)
,p_event_id=>wwv_flow_imp.id(377828562773331806)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    STNIVEL.PR_ELIMINAR_NIVEL (PI_ROW_ID => :P767_ELIMINAR,',
'                                   PO_MSG => :P767_MSG) ; ',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR (''Error en DA_ELIMINAR - 01. '' || SQLERRM);',
'END;',
''))
,p_attribute_02=>'P767_ELIMINAR'
,p_attribute_03=>'P767_MSG'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(377831254390331833)
,p_event_id=>wwv_flow_imp.id(377828562773331806)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(377010204408867346)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(377828883168331809)
,p_name=>'DA_CREAR'
,p_event_sequence=>60
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(377828767449331808)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(377829032596331811)
,p_event_id=>wwv_flow_imp.id(377828883168331809)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(377720538701128719)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(377831343871331834)
,p_event_id=>wwv_flow_imp.id(377828883168331809)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P767_DESC_NIVEL,P767_COD_ESTANTE,P767_COD_CUERPO,P767_COD_NIVEL,P767_LARGO_MTS,P767_ANCHO_MTS,P767_ALTO_MTS,P767_PESO_KG,P767_ESTADO,P767_COD_USUARIO_ALTA,P767_FECHA_ALTA,P767_COD_USUARIO_BAJA,P767_FECHA_BAJA,P767_DESC_NIVEL'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(377831491234331835)
,p_event_id=>wwv_flow_imp.id(377828883168331809)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    :P767_FECHA_ALTA    := SYSDATE;',
'    :P767_COD_USUARIO_ALTA  := :P_COD_USUARIO;',
'    :P767_IND_OPERACION := 1;  ',
'    :P767_ESTADO := ''S'';',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR (''Error en DA_CREAR - 01. '' || SQLERRM);',
'END;'))
,p_attribute_03=>'P767_IND_OPERACION,P767_COD_USUARIO_ALTA,P767_FECHA_ALTA,P767_ESTADO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(377831941442331840)
,p_event_id=>wwv_flow_imp.id(377828883168331809)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P767_ESTADO'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(377829704498331818)
,p_name=>'DA_MSG'
,p_event_sequence=>70
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P767_MSG'
,p_condition_element=>'P767_MSG'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(377829814697331819)
,p_event_id=>wwv_flow_imp.id(377829704498331818)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'&P767_MSG.'
,p_attribute_03=>'information'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(377830548736331826)
,p_name=>'DA_VALIDAR_CAMPOS_NULOS'
,p_event_sequence=>70
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(377721937015128733)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(377830638769331827)
,p_event_id=>wwv_flow_imp.id(377830548736331826)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'validarNoNulo();'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(377829900796331820)
,p_name=>'DA_ACEPTAR'
,p_event_sequence=>80
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(377721937015128733)
,p_condition_element=>'P767_ERROR'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'0'
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(377830085059331821)
,p_event_id=>wwv_flow_imp.id(377829900796331820)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    IF :P767_IND_OPERACION = 1 THEN',
'   ',
'        APEX_DEBUG.ERROR(''P767_DESC_NIVEL: ''  ||:P767_DESC_NIVEL);',
'       STNIVEL.PR_GUARDAR_NIVEL (                      ',
'                    PI_COD_EMPRESA => :P_COD_EMPRESA,',
'                    PI_COD_ESTANTE => :P767_COD_ESTANTE,',
'                    PI_COD_CUERPO => :P767_COD_CUERPO,',
'                    PI_COD_NIVEL => :P767_COD_NIVEL,',
'                    PI_DESC_NIVEL => :P767_DESC_NIVEL,',
'                    PI_LARGO_MTS => :P767_LARGO_MTS,',
'                    PI_ANCHO_MTS => :P767_ANCHO_MTS,',
'                    PI_ALTO_MTS => :P767_ALTO_MTS,',
'                    PI_PESO_KG => :P767_PESO_KG,',
'                    PI_ESTADO => :P767_ESTADO,',
'                    PI_COD_USUARIO_ALTA => :P767_COD_USUARIO_ALTA,',
'                    PI_FECHA_ALTA => :P767_FECHA_ALTA,',
'                    PI_COD_USUARIO_BAJA => :P767_COD_USUARIO_BAJA,',
'                    PI_FECHA_BAJA => :P767_FECHA_BAJA, ',
'                    PO_MSG => :P767_MSG);',
'',
'    ELSIF :P767_IND_OPERACION = 0 THEN',
'',
'        STNIVEL.PR_EDITAR_NIVEL(PI_ROW_ID => :P767_EDITAR,',
'                    PI_COD_EMPRESA => :P_COD_EMPRESA,',
'                    PI_COD_ESTANTE => :P767_COD_ESTANTE,',
'                    PI_COD_CUERPO => :P767_COD_CUERPO,',
'                    PI_COD_NIVEL => :P767_COD_NIVEL,',
'                    PI_DESC_NIVEL => :P767_DESC_NIVEL,',
'                    PI_LARGO_MTS => :P767_LARGO_MTS,',
'                    PI_ANCHO_MTS => :P767_ANCHO_MTS,',
'                    PI_ALTO_MTS => :P767_ALTO_MTS,',
'                    PI_PESO_KG => :P767_PESO_KG,',
'                    PI_ESTADO => :P767_ESTADO,',
'                    PI_COD_USUARIO_ALTA => :P767_COD_USUARIO_ALTA,',
'                    PI_FECHA_ALTA => :P767_FECHA_ALTA,',
'                    PI_COD_USUARIO_BAJA => :P767_COD_USUARIO_BAJA,',
'                    PI_FECHA_BAJA => :P767_FECHA_BAJA, ',
'                    PO_MSG => :P767_MSG);',
'    END IF;',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR (''Error en DA_GUARDAR_ESTANTE - 01. '' || SQLERRM);',
'END;',
''))
,p_attribute_02=>'P767_DESC_NIVEL,P767_COD_ESTANTE,P767_COD_CUERPO,P767_COD_NIVEL,P767_LARGO_MTS,P767_ANCHO_MTS,P767_ALTO_MTS,P767_PESO_KG,P767_ESTADO,P767_COD_USUARIO_ALTA,P767_FECHA_ALTA,P767_COD_USUARIO_BAJA,P767_FECHA_BAJA,P767_EDITAR,P767_IND_OPERACION'
,p_attribute_03=>'P767_MSG'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(377830213434331823)
,p_event_id=>wwv_flow_imp.id(377829900796331820)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(377010204408867346)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(377830343713331824)
,p_event_id=>wwv_flow_imp.id(377829900796331820)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(377720538701128719)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(377830866750331829)
,p_name=>'DA_ESTADO'
,p_event_sequence=>90
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P767_ESTADO'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(377831017833331831)
,p_event_id=>wwv_flow_imp.id(377830866750331829)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'null;'
,p_attribute_02=>'P767_ESTADO'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(377830912780331830)
,p_event_id=>wwv_flow_imp.id(377830866750331829)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if nvl(:P767_ESTADO, ''N'') = ''N'' THEN',
'		:P767_COD_USUARIO_BAJA := :P_COD_USUARIO;',
'		:P767_FECHA_BAJA      := sysdate;',
'ELSE ',
'	:P767_COD_USUARIO_BAJA := NULL;',
'		:P767_FECHA_BAJA   := NULL;',
'END IF;'))
,p_attribute_02=>'P767_ESTADO'
,p_attribute_03=>'P767_COD_USUARIO_BAJA,P767_FECHA_BAJA'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P767_IND_OPERACION'
,p_client_condition_expression=>'0'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(377831506499331836)
,p_name=>'DA_SOLO_NUMEROS'
,p_event_sequence=>100
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P767_LARGO_MTS,P767_ANCHO_MTS,P767_ALTO_MTS,P767_PESO_KG'
,p_bind_type=>'bind'
,p_bind_event_type=>'keypress'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(377831626987331837)
,p_event_id=>wwv_flow_imp.id(377831506499331836)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if (!soloNumeros(event)){',
'      event.preventDefault();',
'}'))
);
wwv_flow_imp.component_end;
end;
/
