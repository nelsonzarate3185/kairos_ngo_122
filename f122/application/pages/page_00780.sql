prompt --application/pages/page_00780
begin
--   Manifest
--     PAGE: 00780
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
 p_id=>780
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'Carga Resumida de Producto - STARTRES'
,p_alias=>'CARGA-RESUMIDA-DE-PRODUCTO-STARTRES'
,p_step_title=>'Carga Resumida de Producto - STARTRES'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
' function seleccionar(cb) {',
'    console.log(cb.value);',
'    console.log(cb.checked);',
'  if (cb.checked == true){',
'    console.log("block" + cb.value);',
'    $s(''P780_AUX_IND_VINCULAR'', ''S'');',
'    $s(''P780_SEQ_ID_VINCULAR_ARTICULO'', cb.value);      ',
'      ',
'  } else {',
'      $s(''P780_AUX_IND_VINCULAR'', ''N'');',
'      $s(''P780_SEQ_ID_VINCULAR_ARTICULO'', cb.value);       ',
'  }',
'}',
'',
'//////////////////////////////////////////////////////////////',
'function validarItemOpcional () {',
'',
'    var item_1 = apex.item("P780_COD_LINEA").getValue();',
'    var item_2 = apex.item("P780_COD_CATEGORIA").getValue();',
'    var item_3 = apex.item("P780_COD_FAMILIA").getValue();',
'    var item_4 = apex.item("P780_COD_DIVISION").getValue();',
'    var item_5 = apex.item("P780_COD_GRUPO").getValue();',
'',
'    apex.message.clearErrors();',
'',
'    apex.item("P780_ERROR").setValue(''0'');  ',
'',
'    if (item_1 == '''' && item_2 == ''''  && item_3 == '''' && item_4 == '''' && item_5 == '''') {',
'        apex.message.showErrors([',
'            {',
'                type:       "error",',
'                location:   "page",',
unistr('                message:    "Debe ingresar al menos uno de los siguientes campos: Linea, Categor\00EDa, Familia, Divisi\00F3n o Grupo de Articulo.",'),
'                unsafe:     false',
'            }',
'        ]);',
'',
'        apex.item("P780_ERROR").setValue(''1'');  ',
'    }',
'}    ',
'',
'//////////////////////////////////////////////////////////////',
'function soloNumeros(e){',
'  var key = e.charCode;',
'    return ( (key >= 48 && key <= 57)||(key > 43 && key < 45));',
'}',
'',
'//////////////////////////////////////////////////////////////',
'function validarArtVincular () {',
'',
'    var item_1 = apex.item("P780_COD_ARTICULO_VINCULAR").getValue();',
'',
'    apex.message.clearErrors();',
'',
'    apex.item("P780_ERROR").setValue(''0'');  ',
'',
'    if (item_1 == '''') {',
'        apex.message.showErrors([{',
'                                type: apex.message.TYPE.ERROR,',
'                                location: "inline",',
'                                pageItem: "P780_COD_ARTICULO_VINCULAR",',
'                                message: "Debe seleccionar un articulo."',
'                                }]); ',
'        apex.item("P780_ERROR").setValue(''1'');   ',
'    }',
'};',
'//////////////////////////////////////////////////////////////',
'function validarArtEquivalencia () {',
'',
'    var item_1 = apex.item("P780_COD_ARTICULO_EQUIVALENCIA").getValue();',
'',
'    apex.message.clearErrors();',
'',
'    apex.item("P780_ERROR").setValue(''0'');  ',
'',
'    if (item_1 == '''') {',
'        apex.message.showErrors([{',
'                                type: apex.message.TYPE.ERROR,',
'                                location: "inline",',
'                                pageItem: "P780_COD_ARTICULO_EQUIVALENCIA",',
'                                message: "Debe seleccionar un articulo."',
'                                }]); ',
'        apex.item("P780_ERROR").setValue(''1'');   ',
'    }',
'};',
'',
'//////////////////////////////////////////////////////////////',
'',
'function validarArtMadre () {',
'',
'    var item_1 = apex.item("P780_COD_ARTICULO").getValue();',
'    var item_2 = apex.item("P780_COD_MADRE").getValue();',
'',
'    apex.message.clearErrors();',
'',
'    apex.item("P780_ERROR").setValue(''0'');  ',
'',
'    if (item_1 === item_2) {',
'        apex.message.showErrors([{',
'                                type: apex.message.TYPE.ERROR,',
'                                location: "inline",',
'                                pageItem: "P780_COD_MADRE",',
'                                message: "El articulo hijo y codigo de articulo no pueden ser iguales."',
'                                }]); ',
'        ',
'        $s(''P780_COD_MADRE'', '''');',
'        apex.item("P780_ERROR").setValue(''1'');   ',
'    }',
'};',
'',
'//////////////////////////////////////////////////////////////',
'',
'function validarNoNulo(){',
'    var item_1 = apex.item("P780_COD_ARTICULO").getValue();',
'    var item_2 = apex.item("P780_COD_RUBRO").getValue();',
'    var item_3 = apex.item("P780_COD_GRUPO_ART").getValue();',
'    var item_4 = apex.item("P780_COD_MONEDA_COSTO").getValue();',
'    var item_5 = apex.item("P780_COD_MONEDA_BASE").getValue();',
'    var item_6 = apex.item("P780_COD_RELACION_UM").getValue();',
'',
'',
'    apex.message.clearErrors();',
'',
'    apex.item("P780_ERROR").setValue(''0'');    ',
'',
'    if (item_1 == ''''){',
'        apex.message.showErrors([{',
'                                type: apex.message.TYPE.ERROR,',
'                                location: "inline",',
'                                pageItem: "P780_COD_ARTICULO",',
'                                message: "Debe ingresar un articulo."',
'                                }]); ',
'        apex.item("P780_ERROR").setValue(''1'');                            ',
'    } ',
'',
'    if (item_2 == ''''){',
'        apex.message.showErrors([{',
'                                type: apex.message.TYPE.ERROR,',
'                                location: "inline",',
'                                pageItem: "P780_COD_RUBRO",',
'                                message: "Debe ingresar el rubro."',
'                                }]);',
'        apex.item("P780_ERROR").setValue(''1'');                                                            ',
'    }',
'',
'    if (item_3 == ''''){',
'        apex.message.showErrors([{',
'                                type: apex.message.TYPE.ERROR,',
'                                location: "inline",',
'                                pageItem: "P780_COD_GRUPO_ART",',
'                                message: "Debe ingresar grupo de precio."',
'                                }]);',
'        apex.item("P780_ERROR").setValue(''1'');                                                            ',
'    }',
'',
'    if (item_4 == ''''){',
'        apex.message.showErrors([{',
'                                type: apex.message.TYPE.ERROR,',
'                                location: "inline",',
'                                pageItem: "P780_COD_MONEDA_COSTO",',
'                                message: "Debe ingresar la moneda costo."',
'                                }]);',
'        apex.item("P780_ERROR").setValue(''1'');                                                            ',
'    }',
'',
'    if (item_5 == ''''){',
'        apex.message.showErrors([{',
'                                type: apex.message.TYPE.ERROR,',
'                                location: "inline",',
'                                pageItem: "P780_COD_MONEDA_BASE",',
'                                message: "Debe ingresar la moneda base."',
'                                }]);',
'        apex.item("P780_ERROR").setValue(''1'');                                                            ',
'    }',
'',
'    if (item_6 == ''''){',
'        apex.message.showErrors([{',
'                                type: apex.message.TYPE.ERROR,',
'                                location: "inline",',
'                                pageItem: "P780_COD_RELACION_UM",',
unistr('                                message: "Debe ingresar relaci\00F3n de unidad de medida."'),
'                                }]);',
'        apex.item("P780_ERROR").setValue(''1'');                                                            ',
'    }',
'',
'} '))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_last_updated_by=>'JUANSA'
,p_last_upd_yyyymmddhh24miss=>'20241121103757'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(392771405091863528)
,p_plug_name=>'Variables'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>940
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(392771694182863530)
,p_plug_name=>'Main'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>950
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(392772710211863541)
,p_plug_name=>'01 - Cabecera'
,p_parent_plug_id=>wwv_flow_imp.id(392771694182863530)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(392772926288863543)
,p_plug_name=>'02 - Detalles Cabecera'
,p_parent_plug_id=>wwv_flow_imp.id(392771694182863530)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(393020707213506406)
,p_plug_name=>'Cantidades'
,p_parent_plug_id=>wwv_flow_imp.id(392772926288863543)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(393020834498506407)
,p_plug_name=>'02.1'
,p_parent_plug_id=>wwv_flow_imp.id(392772926288863543)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>20
,p_plug_new_grid_row=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(393641188274009118)
,p_plug_name=>'02.1.2'
,p_parent_plug_id=>wwv_flow_imp.id(393020834498506407)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(393641203256009119)
,p_plug_name=>'Iva'
,p_parent_plug_id=>wwv_flow_imp.id(393020834498506407)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(393641461620009121)
,p_plug_name=>'B_ARTICU_PROV'
,p_parent_plug_id=>wwv_flow_imp.id(392772926288863543)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>30
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(392773056242863544)
,p_plug_name=>unistr('03 - Caracter\00EDsticas Articulo')
,p_parent_plug_id=>wwv_flow_imp.id(392771694182863530)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>30
,p_plug_new_grid_row=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(392967835221194829)
,p_plug_name=>'03.1'
,p_parent_plug_id=>wwv_flow_imp.id(392773056242863544)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(392967792214194828)
,p_plug_name=>'Indicadores'
,p_parent_plug_id=>wwv_flow_imp.id(392967835221194829)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>10
,p_plug_grid_column_span=>4
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(392969991457194850)
,p_plug_name=>'03.1.2'
,p_parent_plug_id=>wwv_flow_imp.id(392967835221194829)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>20
,p_plug_new_grid_row=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(393020205259506401)
,p_plug_name=>'Capacidad de Carga'
,p_parent_plug_id=>wwv_flow_imp.id(392969991457194850)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(393020307393506402)
,p_plug_name=>'Medidas'
,p_parent_plug_id=>wwv_flow_imp.id(392969991457194850)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(393020481710506403)
,p_plug_name=>'Costos'
,p_parent_plug_id=>wwv_flow_imp.id(392969991457194850)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>30
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(394286868462503714)
,p_plug_name=>'Carga de Productos Relacionados'
,p_region_template_options=>'js-dialog-autoheight:js-modal:js-dialog-size600x400'
,p_plug_template=>wwv_flow_imp.id(40117728043263659)
,p_plug_display_sequence=>960
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT  SEQ_ID  SEQ_ID_REPUESTO,',
'        C001    ARTICULO,',
'        C002    DESCRIPCION,',
'        C003    COD_ART_CORTO,',
'        C004    IND_VINCULAR,',
'        APEX_ITEM.CHECKBOX (p_idx         => 1,',
'                           p_value       => SEQ_ID,',
'                           p_attributes  => (case C004',
'                                                 when ''S'' then ''checked ''',
'                                             else null',
'                                                 end )||''onclick="seleccionar(this)"'' ) CHK_VINCULAR',
'FROM    APEX_COLLECTIONS',
'WHERE   COLLECTION_NAME = ''CA_REPUESTOS'';'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Carga de Productos Relacionados'
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
 p_id=>wwv_flow_imp.id(394287541049503721)
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
,p_internal_uid=>394287541049503721
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(394287627176503722)
,p_db_column_name=>'SEQ_ID_REPUESTO'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Seq Id Repuesto'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(394287795635503723)
,p_db_column_name=>'ARTICULO'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Cod. Articulo'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(394287831549503724)
,p_db_column_name=>'DESCRIPCION'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>unistr('Descripci\00F3n')
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(394287945513503725)
,p_db_column_name=>'COD_ART_CORTO'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Cod. Corto'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(394288055997503726)
,p_db_column_name=>'IND_VINCULAR'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Vincular'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(394288602764503732)
,p_db_column_name=>'CHK_VINCULAR'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Vincular'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(394338208636127650)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'3943383'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'COD_ART_CORTO:ARTICULO:DESCRIPCION:CHK_VINCULAR:'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(395897772796422619)
,p_plug_name=>'Vincular Articulo'
,p_parent_plug_id=>wwv_flow_imp.id(394286868462503714)
,p_region_template_options=>'#DEFAULT#:t-Region--accent1:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>30
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(394286962623503715)
,p_plug_name=>'Equivalencias de Repuestos'
,p_region_template_options=>'js-dialog-autoheight:js-modal:js-dialog-size600x400'
,p_plug_template=>wwv_flow_imp.id(40117728043263659)
,p_plug_display_sequence=>980
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT  SEQ_ID  SEQ_ID_EQUIVALENCIA,',
'        C001    ARTICULO,',
'        C002    DESCRIPCION,',
'        C003    COD_ART_CORTO,',
'        C004    IND_VINCULAR,',
'        APEX_ITEM.CHECKBOX (p_idx         => 1,',
'                           p_value       => SEQ_ID,',
'                           p_attributes  => (case C004',
'                                                 when ''S'' then ''checked ''',
'                                             else null',
'                                                 end )||''onclick="seleccionar(this)"'' ) CHK_VINCULAR',
'FROM    APEX_COLLECTIONS',
'WHERE   COLLECTION_NAME = ''CA_EQUIVALENCIAS'';'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Equivalencias de Repuestos'
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
 p_id=>wwv_flow_imp.id(394289267449503738)
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
,p_internal_uid=>394289267449503738
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(394289380020503739)
,p_db_column_name=>'SEQ_ID_EQUIVALENCIA'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Seq Id Equivalencia'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(394289473355503740)
,p_db_column_name=>'ARTICULO'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Cod. Articulo'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(394289517823503741)
,p_db_column_name=>'DESCRIPCION'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>unistr('Descripci\00F3n')
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(394289648587503742)
,p_db_column_name=>'COD_ART_CORTO'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Cod. Corto'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(394289702970503743)
,p_db_column_name=>'IND_VINCULAR'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Ind Vincular'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(394289810879503744)
,p_db_column_name=>'CHK_VINCULAR'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Si/No'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(394363004086700108)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'3943631'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'COD_ART_CORTO:ARTICULO:DESCRIPCION:CHK_VINCULAR:'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(395898387680422625)
,p_plug_name=>'Equivalencia Articulo'
,p_parent_plug_id=>wwv_flow_imp.id(394286962623503715)
,p_region_template_options=>'#DEFAULT#:t-Region--accent1:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>40
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(394288958958503735)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(394286868462503714)
,p_button_name=>'BT_CERRAR_VINCULAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_image_alt=>'Cerrar '
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(394290486879503750)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(394286962623503715)
,p_button_name=>'BT_CERRAR_EQUIVALENCIAS'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_image_alt=>'Cerrar '
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(395897542529422617)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(395897772796422619)
,p_button_name=>'BT_AGREGAR_ART_VINCULAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--small:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Agregar'
,p_button_position=>'CREATE'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-plus-square-o'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(395898563167422627)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(395898387680422625)
,p_button_name=>'BT_AGREGAR_ART_EQUIVALENCIA'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--small:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Agregar'
,p_button_position=>'CREATE'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-plus-square-o'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(393640355314009110)
,p_button_sequence=>100
,p_button_plug_id=>wwv_flow_imp.id(393020481710506403)
,p_button_name=>'BT_VINCULAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Vincular'
,p_button_position=>'CREATE'
,p_warn_on_unsaved_changes=>null
,p_button_condition=>'P780_ROW_ID_ST_ARTICULOS'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(393640465389009111)
,p_button_sequence=>110
,p_button_plug_id=>wwv_flow_imp.id(393020481710506403)
,p_button_name=>'BT_EQUIVALENTES'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Equivalentes'
,p_button_position=>'CREATE'
,p_warn_on_unsaved_changes=>null
,p_button_condition=>':P780_ROW_ID_ST_ARTICULOS IS NOT NULL AND :P780_COD_RUBRO = ''RE'''
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'EXPRESSION'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(392772586332863539)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(392771694182863530)
,p_button_name=>'BT_ELIMINAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft:t-Button--padRight:t-Button--padBottom'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Eliminar'
,p_button_position=>'TOP'
,p_warn_on_unsaved_changes=>null
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'--- GRANULARIDAD ELIMINAR ---',
'',
'DECLARE',
'VCONTROL NUMBER;',
'BEGIN',
'',
'    IF :P780_ROW_ID_ST_ARTICULOS IS NOT NULL THEN',
'        VCONTROL := SEGURIDAD_GRANULAR.RETORNA_PERMISO_BOTON(ppage_id     => :APP_PAGE_ID,',
'                                                             papli0100_id => :P_APLI0100_ID,',
'                                                             pcod_empresa => :P_COD_EMPRESA,',
'                                                             pusua0100_id => :P_USUA0100_ID,',
'                                                             pdm_boto     => 3); ',
'',
'        IF VCONTROL = 0 THEN',
'            RETURN FALSE;',
'        ELSE',
'            RETURN TRUE;',
'        END IF;',
'',
'        --RETURN TRUE;',
'',
'    ELSE',
'        RETURN FALSE;    ',
'    END IF;                                                         ',
'END;'))
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'FUNCTION_BODY'
,p_icon_css_classes=>'fa-trash'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(392772616665863540)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(392771694182863530)
,p_button_name=>'BT_GUARDAR_CAMBIOS'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft:t-Button--padRight:t-Button--padBottom'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Guardar '
,p_button_position=>'TOP'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-save'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(392771893083863532)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(392771694182863530)
,p_button_name=>'BT_VOLVER'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft:t-Button--padRight:t-Button--padBottom'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Volver'
,p_button_position=>'TOP'
,p_button_redirect_url=>'f?p=&APP_ID.:781:&SESSION.::&DEBUG.:781::'
,p_icon_css_classes=>'fa-arrow-circle-o-right'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(392771543195863529)
,p_name=>'P780_ROW_ID_ST_ARTICULOS'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(392771405091863528)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(392773181210863545)
,p_name=>'P780_COD_ART_CORTO'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(392772710211863541)
,p_prompt=>unistr('C\00F3digo Corto')
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
 p_id=>wwv_flow_imp.id(392773310268863547)
,p_name=>'P780_COD_EAN'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(392772710211863541)
,p_prompt=>unistr('C\00F3digo Ean')
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
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(392773418408863548)
,p_name=>'P780_COD_ARTICULO'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(392772710211863541)
,p_prompt=>'Articulo'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>29
,p_colspan=>4
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(392773593036863549)
,p_name=>'P780_DESCRIPCION'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(392772710211863541)
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
 p_id=>wwv_flow_imp.id(392773603687863550)
,p_name=>'P780_COD_ORIGEN_ART'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(392772710211863541)
,p_prompt=>unistr('C\00F3digo de Origen')
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
 p_id=>wwv_flow_imp.id(392965013139194801)
,p_name=>'P780_COD_MADRE'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(392772710211863541)
,p_prompt=>'Cod. Hijo'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select cod_articulo || '' - '' || trim(descripcion) D,  ',
'       cod_articulo R',
'from  st_articulos ',
'where cod_empresa = :p_cod_empresa ',
'order by cod_articulo'))
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
 p_id=>wwv_flow_imp.id(392965203083194803)
,p_name=>'P780_ART_DESC_PROVEEDOR'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(392772710211863541)
,p_prompt=>unistr('Descripci\00F3n Proveedor')
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
 p_id=>wwv_flow_imp.id(392965311396194804)
,p_name=>'P780_COD_PAIS_ORIGEN'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(392772710211863541)
,p_prompt=>unistr('Pa\00EDs de Origen')
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_PAISES'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Select descripcion',
'			, cod_pais',
'			    from paises'))
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
 p_id=>wwv_flow_imp.id(392965599653194806)
,p_name=>'P780_COD_ALTERNO'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(392772710211863541)
,p_prompt=>'Cod. Alterno'
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
 p_id=>wwv_flow_imp.id(392965623121194807)
,p_name=>'P780_MAX_COD'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(392772710211863541)
,p_prompt=>'Cod. Max.'
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
 p_id=>wwv_flow_imp.id(392965764336194808)
,p_name=>'P780_COD_PROVEEDOR_DFLT'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(392772926288863543)
,p_prompt=>'Proveedor'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select pr.cod_proveedor || '' - '' || ltrim(pe.nombre) D, ',
'       pr.cod_proveedor R ',
'from personas pe, cm_proveedores pr ',
'where pr.cod_empresa = :p_cod_empresa ',
'and pr.cod_persona = pe.cod_persona ',
'order by nombre'))
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
 p_id=>wwv_flow_imp.id(392965916524194810)
,p_name=>'P780_COD_RUBRO'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(392772926288863543)
,p_prompt=>'Rubro'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select cod_rubro || '' - '' || descripcion D,',
'       cod_rubro R ',
'from st_rubro ',
'where cod_empresa = :P_cod_empresa ',
'order by descripcion'))
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
 p_id=>wwv_flow_imp.id(392966153793194812)
,p_name=>'P780_COD_LINEA'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(392772926288863543)
,p_prompt=>'Linea'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select cod_linea || '' - '' || descripcion D,',
'       cod_linea R ',
'from st_linea ',
'where cod_empresa = :P_cod_empresa  ',
'and nvl(estado,''P'') NOT IN (''I'',''N'') ',
'order by descripcion'))
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
 p_id=>wwv_flow_imp.id(392966235063194813)
,p_name=>'P780_COD_CATEGORIA'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(392772926288863543)
,p_prompt=>unistr('Categor\00EDa')
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select cod_categoria || '' - '' || descripcion D, ',
'       cod_categoria R',
'  from st_categorias ',
' where cod_empresa = :P_cod_empresa ',
'  and  nvl(estado,''P'') NOT IN (''I'',''N'') ',
'order by 1 '))
,p_lov_display_null=>'YES'
,p_lov_cascade_parent_items=>'P780_COD_LINEA'
,p_ajax_items_to_submit=>'P780_COD_LINEA'
,p_ajax_optimize_refresh=>'Y'
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
 p_id=>wwv_flow_imp.id(392966373003194814)
,p_name=>'P780_COD_FAMILIA'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(392772926288863543)
,p_prompt=>'Familia'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_FAMILIAS_STARTRES'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select cod_familia || '' - '' || descripcion D, ',
'       cod_familia R',
'from st_familia ',
'where cod_empresa = :P_cod_empresa ',
' and nvl(estado,''P'') NOT IN (''I'',''N'')  ',
' order by descripcion'))
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
 p_id=>wwv_flow_imp.id(392966448232194815)
,p_name=>'P780_COD_DIVISION'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(392772926288863543)
,p_prompt=>unistr('Divisi\00F3n')
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_DIVISION_ARTICULOS_STARTRES'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select cod_division || '' - '' || desc_division D, cod_division R',
'    from st_division_articulos',
' where  nvl(estado,''P'') NOT IN (''I'',''N'') order by 1 asc'))
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
 p_id=>wwv_flow_imp.id(392966556551194816)
,p_name=>'P780_COD_GRUPO'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(392772926288863543)
,p_prompt=>'Grupo de Articulo'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select cod_grupo || '' - '' || descripcion D, ',
'       cod_grupo R ',
'from st_grupos ',
'where cod_empresa = :P_cod_empresa ',
'order by descripcion'))
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
 p_id=>wwv_flow_imp.id(392966663199194817)
,p_name=>'P780_COD_MARCA'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(392772926288863543)
,p_prompt=>'Marca'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select cod_marca || '' - '' || descripcion D,',
'       cod_marca R ',
'from st_marcas ',
'order by descripcion'))
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
 p_id=>wwv_flow_imp.id(392966859955194819)
,p_name=>'P780_COD_GRUPO_ART'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(392772926288863543)
,p_prompt=>'Grupo de Precio'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select cod_grupo_art || '' - '' || descripcion D,',
'       cod_grupo_art R ',
'from st_grupos_art ',
'order by descripcion'))
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
 p_id=>wwv_flow_imp.id(392966966700194820)
,p_name=>'P780_COD_GRUPO_COMISION'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(392772926288863543)
,p_prompt=>unistr('Grupo de Comisi\00F3n')
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select cod_grupo_comision || '' - '' || descripcion D, ',
'       cod_grupo_comision R',
'from st_grupos_comision ',
'order by descripcion'))
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
 p_id=>wwv_flow_imp.id(392967028794194821)
,p_name=>'P780_COD_ENVASE'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(392772926288863543)
,p_prompt=>'Envase'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select cod_envase || '' - '' || descripcion D,',
'       cod_envase R ',
'from st_envases ',
'order by descripcion'))
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
 p_id=>wwv_flow_imp.id(392967170140194822)
,p_name=>'P780_COD_UNIDAD_MEDIDA'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(392772926288863543)
,p_prompt=>'Unidad  de Medida'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select cod_unidad_medida || '' - '' || descripcion D,',
'       cod_unidad_medida R',
'from st_unidades_medida ',
'order by descripcion'))
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
 p_id=>wwv_flow_imp.id(392967292272194823)
,p_name=>'P780_COD_MONEDA_COSTO'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(392772926288863543)
,p_prompt=>'Moneda Costo'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select cod_moneda || '' - '' || descripcion D, ',
'       cod_moneda R ',
'from monedas ',
'order by descripcion'))
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
 p_id=>wwv_flow_imp.id(392967308453194824)
,p_name=>'P780_COD_MONEDA_BASE'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(392772926288863543)
,p_prompt=>'Moneda Base'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select cod_moneda || '' - '' || descripcion D, ',
'       cod_moneda R ',
'from monedas ',
'order by descripcion'))
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
 p_id=>wwv_flow_imp.id(392967467910194825)
,p_name=>'P780_COD_ARANCEL'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_imp.id(392772926288863543)
,p_prompt=>'Arancel'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select cod_arancel || '' - '' || descripcion D, ',
'       cod_arancel R ',
'from cm_aranceles ',
'order by descripcion'))
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
 p_id=>wwv_flow_imp.id(392967572811194826)
,p_name=>'P780_FEC_ULTIMA_COMPRA'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_imp.id(392772926288863543)
,p_prompt=>'Ultima Compra'
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
 p_id=>wwv_flow_imp.id(392967616242194827)
,p_name=>'P780_COD_ENCARGADO'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_imp.id(392772926288863543)
,p_prompt=>'Encargado'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_ENCARGADO_STARTRES'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select e.cod_empleado || '' - '' || ltrim( p.nombre) D, ',
'       e.cod_empleado R',
'from rh_empleados e, personas p ',
'where e.cod_empresa = :P_COD_EMPRESA ',
'and e.cod_persona = p.cod_persona ',
'order by 1'))
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
 p_id=>wwv_flow_imp.id(392968140989194832)
,p_name=>'P780_IND_MODIFICA_PRECIO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(392967792214194828)
,p_prompt=>'Modifica Precio'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'S'
,p_attribute_03=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(392968241596194833)
,p_name=>'P780_IND_MANEJA_STOCK'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(392967792214194828)
,p_prompt=>'Maneja Existencia'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'S'
,p_attribute_03=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(392968385415194834)
,p_name=>'P780_IND_NETO'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(392967792214194828)
,p_prompt=>'Precio'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'S'
,p_attribute_03=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(392968476362194835)
,p_name=>'P780_GARANTIA'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(392967792214194828)
,p_prompt=>unistr('Garant\00EDa')
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'S'
,p_attribute_03=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(392968541623194836)
,p_name=>'P780_IND_NO_CUBRE_GARANTIA'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(392967792214194828)
,p_prompt=>unistr('No Cubre Garant\00EDa')
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'S'
,p_attribute_03=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(392968605767194837)
,p_name=>'P780_ESTADO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(392967792214194828)
,p_prompt=>'Activo'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'A'
,p_attribute_03=>'I'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(392968724940194838)
,p_name=>'P780_IND_MANEJA_LOTES'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(392967792214194828)
,p_prompt=>'Maneja Lotes'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'S'
,p_attribute_03=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(392968870119194839)
,p_name=>'P780_SERIE_GARANTIA'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(392967792214194828)
,p_prompt=>unistr('Serie Garant\00EDa')
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'S'
,p_attribute_03=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(392968945895194840)
,p_name=>'P780_MANEJA_COSTO'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(392967792214194828)
,p_prompt=>'Maneja Costo'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'S'
,p_attribute_03=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(392969083583194841)
,p_name=>'P780_IND_DISCONTINUADO'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(392967792214194828)
,p_prompt=>'No Stock'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'S'
,p_attribute_03=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(392969142718194842)
,p_name=>'P780_EN_OFERTA_WEB'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(392967792214194828)
,p_prompt=>'En Oferta Web'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'S'
,p_attribute_03=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(392969290978194843)
,p_name=>'P780_SERIE'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(392967792214194828)
,p_prompt=>'Serie'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'S'
,p_attribute_03=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(392969331405194844)
,p_name=>'P780_IND_FUERA_LINEA'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(392967792214194828)
,p_prompt=>'Fuera de Linea '
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'S'
,p_attribute_03=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(392969483442194845)
,p_name=>'P780_IND_NO_DESCUENTO'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(392967792214194828)
,p_prompt=>'Sin Descuento'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'S'
,p_attribute_03=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(392969594660194846)
,p_name=>'P780_IND_MUESTRA_WEB'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(392967792214194828)
,p_prompt=>'Muestra WEB'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'S'
,p_attribute_03=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(392969610906194847)
,p_name=>'P780_CANTIDAD_MINIMA_COMPRA'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(392967792214194828)
,p_prompt=>'Cant. Min. Comp.'
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
 p_id=>wwv_flow_imp.id(392969798966194848)
,p_name=>'P780_PLAZO_ENTREGA'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_imp.id(392967792214194828)
,p_prompt=>'Plazo Entrega'
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
 p_id=>wwv_flow_imp.id(392969847312194849)
,p_name=>'P780_DURACION_GARANTIA'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_imp.id(392967792214194828)
,p_prompt=>'Dur. Gar. Meses'
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
 p_id=>wwv_flow_imp.id(393020522867506404)
,p_name=>'P780_CAP_20GP'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(393020205259506401)
,p_prompt=>'20 GP'
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
 p_id=>wwv_flow_imp.id(393020691188506405)
,p_name=>'P780_CAMION'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(393020205259506401)
,p_prompt=>unistr('Cami\00F3n')
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
 p_id=>wwv_flow_imp.id(393020913416506408)
,p_name=>'P780_CAP_40GP'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(393020205259506401)
,p_prompt=>'40 GP'
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
 p_id=>wwv_flow_imp.id(393021087773506409)
,p_name=>'P780_FURGON'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(393020205259506401)
,p_prompt=>unistr('Furg\00F3n  ')
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
 p_id=>wwv_flow_imp.id(393021170798506410)
,p_name=>'P780_CAP_40HQ'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(393020205259506401)
,p_prompt=>'40 HQ'
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
 p_id=>wwv_flow_imp.id(393021246308506411)
,p_name=>'P780_EMBARQUE_CONS'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(393020205259506401)
,p_prompt=>'Emba. Cons.'
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
 p_id=>wwv_flow_imp.id(393021300267506412)
,p_name=>'P780_ANCHO_CM'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(393020307393506402)
,p_prompt=>'Ancho'
,p_post_element_text=>'cm'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_colspan=>6
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(393021483989506413)
,p_name=>'P780_ALTO_CM'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(393020307393506402)
,p_prompt=>'Alto'
,p_post_element_text=>'cm'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_colspan=>6
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(393021539654506414)
,p_name=>'P780_PESO_GR'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(393020307393506402)
,p_prompt=>'Peso'
,p_post_element_text=>'gr'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_colspan=>6
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(393021628669506415)
,p_name=>'P780_ESTIBA_MAX'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(393020307393506402)
,p_prompt=>unistr('M\00E1x')
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>6
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(393021767151506416)
,p_name=>'P780_LARGO_CM'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(393020307393506402)
,p_prompt=>'Largo'
,p_post_element_text=>'cm'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>6
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(393021839707506417)
,p_name=>'P780_VOLUMEN'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(393020307393506402)
,p_prompt=>'Volumen m3'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'style="color: red;"'
,p_begin_on_new_line=>'N'
,p_colspan=>6
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(393639461579009101)
,p_name=>'P780_COSTO_PROFORMA_GS'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(393020481710506403)
,p_prompt=>'Costo Prof.'
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
 p_id=>wwv_flow_imp.id(393639599689009102)
,p_name=>'P780_COTIZACION_CP'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(393020481710506403)
,p_prompt=>unistr('Cotizaci\00F3n CP')
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
 p_id=>wwv_flow_imp.id(393639616046009103)
,p_name=>'P780_COSTO_PROM'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(393020481710506403)
,p_prompt=>'Promedio Gs'
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
 p_id=>wwv_flow_imp.id(393639714623009104)
,p_name=>'P780_COSTO_ULTIMO'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(393020481710506403)
,p_prompt=>unistr('\00DAltimo Gs')
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
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(393639874506009105)
,p_name=>'P780_COSTO_PROM_US'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(393020481710506403)
,p_prompt=>'Promedio U$'
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
 p_id=>wwv_flow_imp.id(393639911723009106)
,p_name=>'P780_COSTO_ULTIMO_US'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(393020481710506403)
,p_prompt=>unistr('\00DAltimo $U')
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
 p_id=>wwv_flow_imp.id(393640046491009107)
,p_name=>'P780_TIP_CAMBIO'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(393020481710506403)
,p_prompt=>unistr('Cotizaci\00F3n')
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
 p_id=>wwv_flow_imp.id(393640164541009108)
,p_name=>'P780_COSTO_FOB'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(393020481710506403)
,p_prompt=>'FOB'
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
 p_id=>wwv_flow_imp.id(393640261948009109)
,p_name=>'P780_PRECIO_BASE'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(393020481710506403)
,p_prompt=>'Precio Base'
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
 p_id=>wwv_flow_imp.id(393640565194009112)
,p_name=>'P780_COMENTARIO'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(393020481710506403)
,p_prompt=>'Obs'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>30
,p_cHeight=>5
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(393640631539009113)
,p_name=>'P780_AUTOAPILABLE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(393020707213506406)
,p_prompt=>'Autoapilable'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:SI;SI,NO;NO,N/A;N/A'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(393640775206009114)
,p_name=>'P780_CANT_X_PALLET'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(393020707213506406)
,p_prompt=>'Por Pallets'
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
 p_id=>wwv_flow_imp.id(393640817934009115)
,p_name=>'P780_COD_PACK'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(393020707213506406)
,p_prompt=>'Cod Packs'
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
 p_id=>wwv_flow_imp.id(393640952539009116)
,p_name=>'P780_CANT_X_PAQUETE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(393020707213506406)
,p_prompt=>'Por Paquete'
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
 p_id=>wwv_flow_imp.id(393641098568009117)
,p_name=>'P780_CANT_PEDIDO'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(393020707213506406)
,p_prompt=>'Pedidas'
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
 p_id=>wwv_flow_imp.id(393641593902009122)
,p_name=>'P780_FEC_ALTA'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(393641188274009118)
,p_prompt=>'Fec. Alta'
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
 p_id=>wwv_flow_imp.id(393641679809009123)
,p_name=>'P780_COD_USUARIO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(393641188274009118)
,p_prompt=>'Usuario'
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
 p_id=>wwv_flow_imp.id(393641798262009124)
,p_name=>'P780_COD_IVA'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(393641203256009119)
,p_prompt=>unistr('C\00F3digo')
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select cod_iva || '' - '' || porc_iva_compra || '' - '' || porc_iva_venta D,',
'       cod_iva R ',
'from st_iva ',
'order by cod_iva'))
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
 p_id=>wwv_flow_imp.id(393641802882009125)
,p_name=>'P780_DESC_IVA'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(393641203256009119)
,p_prompt=>'Porcentaje'
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
 p_id=>wwv_flow_imp.id(393641973334009126)
,p_name=>'P780_PORC_DESCUENTO'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(393641203256009119)
,p_prompt=>'Porc. Descuento'
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
 p_id=>wwv_flow_imp.id(393642018018009127)
,p_name=>'P780_PORC_DESCMAX'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(393641203256009119)
,p_prompt=>unistr('Porc. M\00E1ximo')
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
 p_id=>wwv_flow_imp.id(393642125263009128)
,p_name=>'P780_COD_PROVEEDOR'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(393641461620009121)
,p_prompt=>'Proveedor'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select pr.cod_proveedor || '' - '' || ltrim(pe.nombre) D, ',
'       pr.cod_proveedor R',
'from personas pe, cm_proveedores pr ',
'where pr.cod_empresa = :P_cod_empresa ',
'and pr.cod_persona = pe.cod_persona ',
'order by nombre'))
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
 p_id=>wwv_flow_imp.id(393642288295009129)
,p_name=>'P780_COD_ART_PROVEEDOR'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(393641461620009121)
,p_prompt=>'Cod. Art. Proveedor'
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
 p_id=>wwv_flow_imp.id(393698013474324634)
,p_name=>'P780_COD_EMPRESA'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(392772710211863541)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(393698517024324639)
,p_name=>'P780_COD_FORMA'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(392771405091863528)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(393698686104324640)
,p_name=>'P780_CAMBIA_PRECIO'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(392771405091863528)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(393698773246324641)
,p_name=>'P780_VE_AUD'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(392771405091863528)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(393698876690324642)
,p_name=>'P780_MODIFICA_ARTICULOS'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(392771405091863528)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(393733279358483306)
,p_name=>'P780_COD_COLOR'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(392772710211863541)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(393733385323483307)
,p_name=>'P780_COD_RELACION_UM'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_imp.id(392772926288863543)
,p_prompt=>'Rel. Unidad Medida'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_RELACIONES_STARTRES'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select cod_relacion_um || '' - '' || cod_unidad_rel || '' - '' || mult || '' - '' || div || '' - '' || por_defecto D,',
'       cod_relacion_um R ',
'from st_relaciones'))
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
 p_id=>wwv_flow_imp.id(393733690236483310)
,p_name=>'P780_COD_LINEA_ST'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(392772926288863543)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(394286624601503712)
,p_name=>'P780_MSG'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(392771405091863528)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(394288200100503728)
,p_name=>'P780_AUX_IND_VINCULAR'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(392771405091863528)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(394288340523503729)
,p_name=>'P780_SEQ_ID_VINCULAR_ARTICULO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(392771405091863528)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(394289908833503745)
,p_name=>'P780_IND_REPORTE_CHK_BOX'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(392771405091863528)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(395895962851422601)
,p_name=>'P780_ERROR'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(392771405091863528)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(395897419352422616)
,p_name=>'P780_COD_ARTICULO_VINCULAR'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(395897772796422619)
,p_prompt=>unistr('C\00F3digo Articulo')
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select COD_ART_CORTO || '' - '' || COD_ARTICULO || '' - '' || descripcion D, ',
'       COD_ARTICULO R',
'from st_articulos ',
'where cod_empresa = :P_cod_empresa ',
'order by descripcion'))
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
 p_id=>wwv_flow_imp.id(395898456430422626)
,p_name=>'P780_COD_ARTICULO_EQUIVALENCIA'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(395898387680422625)
,p_prompt=>unistr('C\00F3digo Articulo')
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select COD_ART_CORTO || '' - '' || COD_ARTICULO || '' - '' || descripcion D, ',
'       COD_ARTICULO R',
'from st_articulos ',
'where cod_empresa = :P_cod_empresa ',
'order by descripcion'))
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
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(395896083843422602)
,p_name=>'DA_VALIDAR_NO_NULOS'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(392772616665863540)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(395896140289422603)
,p_event_id=>wwv_flow_imp.id(395896083843422602)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'validarNoNulo();'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(395900472019422646)
,p_name=>'DA_VALIDAR_CAMPOS_OPCIONALES'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(392772616665863540)
,p_condition_element=>'P780_ERROR'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'0'
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(395900576765422647)
,p_event_id=>wwv_flow_imp.id(395900472019422646)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'validarItemOpcional();'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(395898163721422623)
,p_name=>'DA_VALIDAR_ART_NULO'
,p_event_sequence=>30
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(395897542529422617)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(395898260522422624)
,p_event_id=>wwv_flow_imp.id(395898163721422623)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'validarArtVincular();'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(393699167849324645)
,p_name=>'DA_HABILITAR_ITEMS_MODIFICA_ARTICULOS'
,p_event_sequence=>40
,p_condition_element=>'P780_MODIFICA_ARTICULOS'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'N'
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(891528949186316931)
,p_event_id=>wwv_flow_imp.id(393699167849324645)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'document.getElementById("P780_COD_ART_CORTO").readOnly=true;',
'document.getElementById("P780_COD_EAN").readOnly=true;',
'document.getElementById("P780_COD_ARTICULO").readOnly=true;',
'document.getElementById("P780_COD_RUBRO").readOnly=true;',
'document.getElementById("P780_COD_MARCA").readOnly=true;',
'document.getElementById("P780_COD_FAMILIA").readOnly=true;',
'document.getElementById("P780_COD_LINEA").readOnly=true;',
'document.getElementById("P780_COD_MONEDA_BASE").readOnly=true;',
'document.getElementById("P780_COD_PROVEEDOR_DFLT").readOnly=true;',
'document.getElementById("P780_COD_ARANCEL").readOnly=true;',
'document.getElementById("P780_COD_GRUPO").readOnly=true;',
'document.getElementById("P780_ESTADO").readOnly=true;',
'document.getElementById("P780_COD_GRUPO").readOnly=true;',
'document.getElementById("P780_COD_GRUPO_ART").readOnly=true;',
'document.getElementById("P780_COD_PAIS_ORIGEN").readOnly=true;',
'document.getElementById("P780_IND_MODIFICA_PRECIO").readOnly=true;',
'document.getElementById("P780_IND_MANEJA_STOCK").readOnly=true;'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(891529055258316932)
,p_event_id=>wwv_flow_imp.id(393699167849324645)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'document.getElementById("P780_COD_ART_CORTO").readOnly=false;',
'document.getElementById("P780_COD_EAN").readOnly=false;',
'document.getElementById("P780_COD_ARTICULO").readOnly=false;',
'document.getElementById("P780_COD_RUBRO").readOnly=false;',
'document.getElementById("P780_COD_MARCA").readOnly=false;',
'document.getElementById("P780_COD_FAMILIA").readOnly=false;',
'document.getElementById("P780_COD_LINEA").readOnly=false;',
'document.getElementById("P780_COD_MONEDA_BASE").readOnly=false;',
'document.getElementById("P780_COD_PROVEEDOR_DFLT").readOnly=false;',
'document.getElementById("P780_COD_ARANCEL").readOnly=false;',
'document.getElementById("P780_COD_GRUPO").readOnly=false;',
'document.getElementById("P780_ESTADO").readOnly=false;',
'document.getElementById("P780_COD_GRUPO").readOnly=false;',
'document.getElementById("P780_COD_GRUPO_ART").readOnly=false;',
'document.getElementById("P780_COD_PAIS_ORIGEN").readOnly=false;',
'document.getElementById("P780_IND_MODIFICA_PRECIO").readOnly=false;',
'document.getElementById("P780_IND_MANEJA_STOCK").readOnly=false;'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(393732839107483302)
,p_name=>'DA_HABILITAR_ITEMS_CAMBIA_PRECIO'
,p_event_sequence=>50
,p_condition_element=>'P780_CAMBIA_PRECIO'
,p_triggering_condition_type=>'NOT_EQUALS'
,p_triggering_expression=>'S'
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(891528844606316930)
,p_event_id=>wwv_flow_imp.id(393732839107483302)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'document.getElementById("P780_PRECIO_BASE").readOnly=false;'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(891528792200316929)
,p_event_id=>wwv_flow_imp.id(393732839107483302)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'document.getElementById("P780_PRECIO_BASE").readOnly=true;'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(393733480470483308)
,p_name=>'DA_SETEAR_COD_CATEGORIA'
,p_event_sequence=>60
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P780_COD_LINEA'
,p_condition_element=>'P780_COD_LINEA'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
,p_display_when_type=>'ITEM_IS_NULL'
,p_display_when_cond=>'P780_ROW_ID_ST_ARTICULOS'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(393733517727483309)
,p_event_id=>wwv_flow_imp.id(393733480470483308)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'  select cod_categoria',
'    into :P780_COD_CATEGORIA',
'    from st_linea',
'   where cod_linea = :P780_COD_LINEA',
'    and nvl(estado,''P'') NOT IN (''I'',''N'');',
'    ',
'   :P780_COD_LINEA_ST := :P780_COD_LINEA;',
'',
'EXCEPTION',
'    WHEN NO_DATA_FOUND THEN',
'        :P780_COD_CATEGORIA := NULL;',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR (''Error DA_SETEAR_COD_CATEGORIA - 01. '' || SQLERRM);',
'END;    '))
,p_attribute_02=>'P780_COD_LINEA'
,p_attribute_03=>'P780_COD_LINEA_ST,P780_COD_CATEGORIA'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(394285573317503701)
,p_name=>'DA_SETEAR_DESC_IVA'
,p_event_sequence=>70
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P780_COD_IVA'
,p_condition_element=>'P780_COD_IVA'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(394285661028503702)
,p_event_id=>wwv_flow_imp.id(394285573317503701)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'  select porc_iva_venta',
'    into :P780_DESC_IVA',
'    from st_iva',
'   where cod_iva = :P780_COD_IVA;',
'EXCEPTION',
'  WHEN OTHERS THEN',
'    APEX_DEBUG.ERROR (''Error en DA_SETEAR_DESC_IVA - 01. ''|| SQLERRM);',
'END;'))
,p_attribute_02=>'P780_COD_IVA'
,p_attribute_03=>'P780_DESC_IVA'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(394285793472503703)
,p_name=>'DA_GUARDAR_CAMBIOS'
,p_event_sequence=>80
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(392772616665863540)
,p_condition_element=>'P780_ERROR'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'0'
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(394285857761503704)
,p_event_id=>wwv_flow_imp.id(394285793472503703)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>unistr('\00BFDesea guardar los cambios?')
,p_attribute_03=>'information'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(395896950548422611)
,p_event_id=>wwv_flow_imp.id(394285793472503703)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P780_COD_ART_CORTO,P780_COD_EAN,P780_COD_ARTICULO,P780_COD_RUBRO,P780_COD_MARCA,P780_COD_FAMILIA,P780_COD_LINEA,P780_COD_MONEDA_BASE,P780_COD_PROVEEDOR_DFLT,P780_COD_ARANCEL,P780_COD_GRUPO,P780_ESTADO,P780_COD_GRUPO,P780_COD_GRUPO_ART,P780_COD_PAIS_O'
||'RIGEN,P780_IND_MODIFICA_PRECIO,P780_IND_MANEJA_STOCK'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(395897009920422612)
,p_event_id=>wwv_flow_imp.id(394285793472503703)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    IF :P780_IND_MODIFICA_PRECIO IS NULL THEN ',
'        :P780_IND_MODIFICA_PRECIO := ''N'';',
'    END IF;',
'',
'    IF :P780_ESTADO IS NULL THEN ',
'        :P780_ESTADO := ''A'';',
'    END IF;',
'',
'    IF :P780_EN_OFERTA_WEB IS NULL THEN ',
'        :P780_EN_OFERTA_WEB := ''N'';',
'    END IF;',
'',
'    IF :P780_IND_MANEJA_STOCK IS NULL THEN ',
'        :P780_IND_MANEJA_STOCK := ''N'';',
'    END IF;',
'',
'    IF :P780_IND_MANEJA_LOTES IS NULL THEN ',
'        :P780_IND_MANEJA_LOTES := ''N'';',
'    END IF;',
'',
'    IF :P780_SERIE IS NULL THEN ',
'        :P780_SERIE := ''N'';',
'    END IF;',
'',
'    IF :P780_IND_NETO IS NULL THEN ',
'        :P780_IND_NETO := ''N'';',
'    END IF;',
'',
'    IF :P780_SERIE_GARANTIA IS NULL THEN ',
'        :P780_SERIE_GARANTIA := ''N'';',
'    END IF;',
'',
'    IF :P780_IND_FUERA_LINEA IS NULL THEN ',
'        :P780_IND_FUERA_LINEA := ''N'';',
'    END IF;',
'',
'    IF :P780_GARANTIA IS NULL THEN ',
'        :P780_GARANTIA := ''N'';',
'    END IF;',
'',
'    IF :P780_MANEJA_COSTO IS NULL THEN ',
'        :P780_MANEJA_COSTO := ''N'';',
'    END IF;',
'',
'    IF :P780_IND_NO_DESCUENTO IS NULL THEN ',
'        :P780_IND_NO_DESCUENTO := ''N'';',
'    END IF;',
'',
'    IF :P780_IND_NO_CUBRE_GARANTIA IS NULL THEN ',
'        :P780_IND_NO_CUBRE_GARANTIA := ''N'';',
'    END IF;',
'',
'    IF :P780_IND_DISCONTINUADO IS NULL THEN ',
'        :P780_IND_DISCONTINUADO := ''N'';',
'    END IF;',
'',
'    IF :P780_IND_MUESTRA_WEB IS NULL THEN ',
'        :P780_IND_MUESTRA_WEB := ''N'';',
'    END IF;',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR (''Error DA_GUARDAR_CAMBIOS - 01. '' || SQLERRM);',
'END;        ',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
''))
,p_attribute_02=>'P780_IND_MODIFICA_PRECIO,P780_ESTADO,P780_EN_OFERTA_WEB,P780_IND_MANEJA_STOCK,P780_IND_MANEJA_LOTES,P780_SERIE,P780_IND_NETO,P780_SERIE_GARANTIA,P780_IND_FUERA_LINEA,P780_GARANTIA,P780_MANEJA_COSTO,P780_IND_NO_DESCUENTO,P780_IND_NO_CUBRE_GARANTIA,P78'
||'0_IND_DISCONTINUADO,P780_IND_MUESTRA_WEB'
,p_attribute_03=>'P780_IND_MODIFICA_PRECIO,P780_ESTADO,P780_EN_OFERTA_WEB,P780_IND_MANEJA_STOCK,P780_IND_MANEJA_LOTES,P780_SERIE,P780_IND_NETO,P780_SERIE_GARANTIA,P780_IND_FUERA_LINEA,P780_GARANTIA,P780_MANEJA_COSTO,P780_IND_NO_DESCUENTO,P780_IND_NO_CUBRE_GARANTIA,P78'
||'0_IND_DISCONTINUADO,P780_IND_MUESTRA_WEB'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(394285974398503705)
,p_event_id=>wwv_flow_imp.id(394285793472503703)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_01=>'GUARDAR'
,p_attribute_02=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(394286218894503708)
,p_name=>'DA_ELIMINAR_ARTICULO'
,p_event_sequence=>90
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(392772586332863539)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(394286361618503709)
,p_event_id=>wwv_flow_imp.id(394286218894503708)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>unistr('\00BFDesea eliminar el articulo?')
,p_attribute_03=>'danger'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(394286441935503710)
,p_event_id=>wwv_flow_imp.id(394286218894503708)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_01=>'ELIMINAR'
,p_attribute_02=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(394287044290503716)
,p_name=>'DA_ABRIR_VINCULAR'
,p_event_sequence=>100
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(393640355314009110)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(395900867313422650)
,p_event_id=>wwv_flow_imp.id(394287044290503716)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.message.clearErrors();'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(395900027037422642)
,p_event_id=>wwv_flow_imp.id(394287044290503716)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P780_COD_ARTICULO_VINCULAR'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(394290055755503746)
,p_event_id=>wwv_flow_imp.id(394287044290503716)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    :P780_IND_REPORTE_CHK_BOX := ''VINCULAR'';',
'',
'EXCEPTION   ',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR (''Error en DA_ABRIR_VINCULAR - 01. '' || SQLERRM);',
'END;'))
,p_attribute_03=>'P780_IND_REPORTE_CHK_BOX'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(394287172507503717)
,p_event_id=>wwv_flow_imp.id(394287044290503716)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(394286868462503714)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(394287273329503718)
,p_name=>'DA_ABRIR_EQUIVALENCIAS'
,p_event_sequence=>110
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(393640465389009111)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(396026283795255001)
,p_event_id=>wwv_flow_imp.id(394287273329503718)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.message.clearErrors();'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(395900177349422643)
,p_event_id=>wwv_flow_imp.id(394287273329503718)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P780_COD_ARTICULO_EQUIVALENCIA'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(394290106320503747)
,p_event_id=>wwv_flow_imp.id(394287273329503718)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    :P780_IND_REPORTE_CHK_BOX := ''EQUIVALENCIAS'';',
'',
'EXCEPTION   ',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR (''Error en DA_ABRIR_EQUIVALENCIAS - 01. '' || SQLERRM);',
'END;'))
,p_attribute_03=>'P780_IND_REPORTE_CHK_BOX'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(394287387899503719)
,p_event_id=>wwv_flow_imp.id(394287273329503718)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(394286962623503715)
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
 p_id=>wwv_flow_imp.id(394288450453503730)
,p_name=>'DA_VINCULAR_ARTICULO'
,p_event_sequence=>120
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P780_SEQ_ID_VINCULAR_ARTICULO'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(394288755442503733)
,p_event_id=>wwv_flow_imp.id(394288450453503730)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    IF :P780_IND_REPORTE_CHK_BOX = ''VINCULAR'' THEN',
'',
'        STARTRES.PR_VINCULAR_ART (PI_SEQ_ID            => :P780_SEQ_ID_VINCULAR_ARTICULO,',
'                                  PI_IND_VINCULAR      => :P780_AUX_IND_VINCULAR);',
'',
'    ELSIF :P780_IND_REPORTE_CHK_BOX = ''EQUIVALENCIAS'' THEN',
'',
'        STARTRES.PR_EQUIVALENCIA_ART (PI_SEQ_ID            => :P780_SEQ_ID_VINCULAR_ARTICULO,',
'                                      PI_IND_VINCULAR      => :P780_AUX_IND_VINCULAR);',
'    END IF;                              ',
'',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR (''Error en DA_VINCULAR_ARTICULO - 01. '' || SQLERRM);',
'END;'))
,p_attribute_02=>'P780_IND_REPORTE_CHK_BOX,P780_SEQ_ID_VINCULAR_ARTICULO,P780_AUX_IND_VINCULAR'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(394290223456503748)
,p_event_id=>wwv_flow_imp.id(394288450453503730)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(394286962623503715)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P780_IND_REPORTE_CHK_BOX'
,p_client_condition_expression=>'EQUIVALENCIAS'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(394290310738503749)
,p_event_id=>wwv_flow_imp.id(394288450453503730)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(394286868462503714)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P780_IND_REPORTE_CHK_BOX'
,p_client_condition_expression=>'VINCULAR'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(394289008293503736)
,p_name=>'DA_CERRAR_VINCULAR'
,p_event_sequence=>130
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(394288958958503735)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(394289115055503737)
,p_event_id=>wwv_flow_imp.id(394289008293503736)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(394286868462503714)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(394373912845847701)
,p_name=>'DA_CERRAR_EQUIVALENCIAS'
,p_event_sequence=>140
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(394290486879503750)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(394374078841847702)
,p_event_id=>wwv_flow_imp.id(394373912845847701)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(394286962623503715)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(395896206423422604)
,p_name=>'DA_SETEAR_FECHAS'
,p_event_sequence=>150
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P780_COD_ARTICULO'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(395896337965422605)
,p_event_id=>wwv_flow_imp.id(395896206423422604)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  valerta NUMBER;',
'BEGIN  ',
'    BEGIN',
'      select max( fec_comprobante )',
'        into :P780_FEC_ULTIMA_COMPRA',
'        from st_costos_art',
'       where cod_empresa  = :P780_COD_EMPRESA ',
'         and cod_articulo = :P780_COD_ARTICULO;',
'    EXCEPTION',
'      when no_data_found then',
'        :P780_FEC_ULTIMA_COMPRA := NULL ;',
'      when others then ',
'        :P780_FEC_ULTIMA_COMPRA := NULL ;',
'        APEX_DEBUG.ERROR (''Error en la tabla Rubros (st_rubro) '' || sqlerrm);',
'    END;',
'',
'    BEGIN',
'      select costo_ultimo',
'        into :P780_COSTO_ULTIMO',
'        from st_costos_art',
'       where cod_empresa  = :P780_COD_EMPRESA',
'         and cod_articulo = :P780_COD_ARTICULO',
'         and fec_comprobante    = :P780_FEC_ULTIMA_COMPRA;',
'    EXCEPTION',
'        when others then ',
'       :P780_FEC_ULTIMA_COMPRA := NULL ;',
'    END;',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR (''Error en DA_SETEAR_FECHAS - 01. '' || SQLERRM);',
'END;',
'',
'',
'',
'',
''))
,p_attribute_02=>'P780_COD_EMPRESA,P780_COD_ARTICULO'
,p_attribute_03=>'P780_FEC_ULTIMA_COMPRA,P780_COSTO_ULTIMO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(395896431481422606)
,p_name=>'DA_VALIDAR_COD_MADRE'
,p_event_sequence=>160
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P780_COD_MADRE,P780_COD_ARTICULO'
,p_condition_element=>'P780_COD_MADRE'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(395896562956422607)
,p_event_id=>wwv_flow_imp.id(395896431481422606)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>' validarArtMadre();'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(395896624082422608)
,p_name=>'DA_CALCULAR_VOLUMEN'
,p_event_sequence=>170
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P780_ANCHO_CM,P780_ALTO_CM,P780_LARGO_CM'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(395896751483422609)
,p_event_id=>wwv_flow_imp.id(395896624082422608)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    :P780_VOLUMEN := ( (NVL(:P780_LARGO_CM, 0) / 100) * ( NVL(:P780_ANCHO_CM, 0) / 100) * (NVL(:P780_ALTO_CM,0) / 100));',
'',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR (''Error en DA_CALCULAR_VOLUMEN - 01. '' || SQLERRM);',
'END;'))
,p_attribute_02=>'P780_LARGO_CM,P780_ANCHO_CM,P780_ALTO_CM'
,p_attribute_03=>'P780_VOLUMEN'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(395897842834422620)
,p_name=>'DA_AGREGAR_ART_VINCULAR'
,p_event_sequence=>180
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(395897542529422617)
,p_condition_element=>'P780_ERROR'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'0'
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(395897981824422621)
,p_event_id=>wwv_flow_imp.id(395897842834422620)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    STARTRES.PR_AGREGAR_VINCULAR_ART (PI_COD_ARTICULO      => :P780_COD_ARTICULO_VINCULAR,',
'                                      PI_COD_EMPRESA       => :P780_COD_EMPRESA);',
'',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR (''Error en DA_AGREGAR_ART_VINCULAR - 01. '' || SQLERRM);',
'END;',
'',
''))
,p_attribute_02=>'P780_COD_ARTICULO_VINCULAR,P780_COD_EMPRESA'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(395898066849422622)
,p_event_id=>wwv_flow_imp.id(395897842834422620)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(394286868462503714)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(395898633406422628)
,p_name=>'DA_VALIDAR_ART_EQUI_NULO'
,p_event_sequence=>190
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(395898563167422627)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(395898728200422629)
,p_event_id=>wwv_flow_imp.id(395898633406422628)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'validarArtEquivalencia();'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(395899606547422638)
,p_name=>'DA_AGREGAR_ART_EQUIVALENCIA'
,p_event_sequence=>200
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(395898563167422627)
,p_condition_element=>'P780_ERROR'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'0'
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(395899880890422640)
,p_event_id=>wwv_flow_imp.id(395899606547422638)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    STARTRES.PR_AGREGAR_EQUIVALENCIA_ART (PI_COD_ARTICULO      => :P780_COD_ARTICULO_EQUIVALENCIA,',
'                                          PI_COD_EMPRESA       => :P780_COD_EMPRESA);',
'',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR (''Error en PR_AGREGAR_EQUIVALENCIA_ART - 01. '' || SQLERRM);',
'END;',
'',
''))
,p_attribute_02=>'P780_COD_ARTICULO_EQUIVALENCIA,P780_COD_EMPRESA'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(395899955761422641)
,p_event_id=>wwv_flow_imp.id(395899606547422638)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(394286962623503715)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(395900250670422644)
,p_name=>'DA_VALIDAR_NRO_DECIMAL'
,p_event_sequence=>210
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P780_COSTO_PROM,P780_COSTO_ULTIMO,P780_COSTO_FOB,P780_CANT_X_PAQUETE,P780_CANT_PEDIDO,P780_PRECIO_BASE,P780_PORC_DESCUENTO,P780_ALTO_CM,P780_LARGO_CM,P780_ANCHO_CM,P780_PESO_GR,P780_COSTO_PROM_US,P780_COSTO_ULTIMO_US,P780_TIP_CAMBIO,P780_ESTIBA_MAX,P'
||'780_DURACION_GARANTIA,P780_VOLUMEN,P780_PORC_DESCMAX,P780_CAP_20GP,P780_CAP_40GP,P780_CAP_40HQ,P780_CAMION,P780_FURGON,P780_EMBARQUE_CONS,P780_CANT_X_PALLET,P780_CANTIDAD_MINIMA_COMPRA,P780_PLAZO_ENTREGA,P780_COTIZACION_CP,P780_COSTO_PROFORMA_GS'
,p_bind_type=>'bind'
,p_bind_event_type=>'keypress'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(395900390208422645)
,p_event_id=>wwv_flow_imp.id(395900250670422644)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if (!soloNumeros(event)){',
'      event.preventDefault();',
'}'))
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(394286794722503713)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'CLEAR_SESSION_STATE'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_process_when=>'P780_ROW_ID_ST_ARTICULOS'
,p_process_when_type=>'ITEM_IS_NULL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(393698978656324643)
,p_process_sequence=>20
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_PRE_FORM'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    :P780_COD_FORMA := ''STARTRES'';',
'',
'    :P780_CAMBIA_PRECIO := BUSCA_PERMISO (:P_COD_EMPRESA,',
'                                          :P780_COD_FORMA,',
'                                          :P_COD_USUARIO,',
'                                          ''CAMBIA_PRECIO'');',
'',
'    :P780_VE_AUD := BUSCA_PERMISO (:P_COD_EMPRESA,',
'                                   :P780_COD_FORMA,',
'                                   :P_COD_USUARIO,',
'                                   ''VER_AUDITORIA'');',
'                                             ',
'    :P780_MODIFICA_ARTICULOS := BUSCA_PERMISO (:P_COD_EMPRESA,',
'                                               :P780_COD_FORMA,',
'                                               :P_COD_USUARIO,',
'                                               ''MODIFICA_ARTICULOS''); ',
'',
'    --:P780_MODIFICA_ARTICULOS := ''S'';',
'    --:P780_CAMBIA_PRECIO := ''S'';',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR (''Error en PR_WHEN_NEW_FORM_INSTANCE - 01. '' || SQLERRM);',
'END;'))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(393733138663483305)
,p_process_sequence=>30
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_WHEN_CREATE_NEW_RECORD'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    :P780_IND_MANEJA_STOCK          := ''S'';',
'    :P780_IND_MANEJA_LOTES          := ''S'';',
'    :P780_IND_MODIFICA_PRECIO       := ''N'';',
'    :P780_COD_COLOR                 := BS_BUSCA_PARAMETRO ( ''ST'', ''COLOR_DEF'');',
'    :P780_FEC_ALTA                  := SYSDATE;',
'    :P780_GARANTIA                  := ''N'';',
'    :P780_SERIE                     := ''N'';',
'    :P780_EN_OFERTA_WEB             := ''N'';',
'    :P780_IND_NO_DESCUENTO          := ''N'';',
'    :P780_SERIE_GARANTIA            := ''N'';',
'    :P780_IND_DISCONTINUADO         := ''N'';',
'    :P780_IND_MUESTRA_WEB           := ''S'';',
'    :P780_COD_RUBRO                 := ''RE'';',
'    :P780_COD_UNIDAD_MEDIDA         := ''UN'';',
'    :P780_COD_RELACION_UM           := ''1'';',
'    :P780_COD_IVA                   := ''1'';',
'    :P780_COD_MONEDA_BASE           := ''1'';',
'    :P780_CANTIDAD_MINIMA_COMPRA    := ''1'';',
'    :P780_COD_USUARIO               := :P_COD_USUARIO;',
'    :P780_DURACION_GARANTIA         := 0;',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR (''Error en PR_WHEN_CREATE_NEW_RECORD - 01. '' || SQLERRM);',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_process_when=>'P780_ROW_ID_ST_ARTICULOS'
,p_process_when_type=>'ITEM_IS_NULL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(393698131015324635)
,p_process_sequence=>40
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_CARGAR_ARTICULO'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    STARTRES.PR_RECUPERAR_ARTICULO (PI_ROW_ID                  => :P780_ROW_ID_ST_ARTICULOS,',
'                                 ----------------------------------------------',
'                                    PO_COD_ARTICULO            => :P780_COD_ARTICULO,',
'                                    PO_DESCRIPCION             => :P780_DESCRIPCION,',
'                                    PO_COD_GRUPO_ART           => :P780_COD_GRUPO_ART,',
'                                    PO_COD_PAIS_ORIGEN         => :P780_COD_PAIS_ORIGEN,',
'                                    PO_COD_MARCA               => :P780_COD_MARCA,',
'                                    PO_COD_RUBRO               => :P780_COD_RUBRO,',
'                                    PO_COD_FAMILIA             => :P780_COD_FAMILIA,',
'                                    PO_COD_LINEA               => :P780_COD_LINEA,',
'                                    PO_COD_ENVASE              => :P780_COD_ENVASE,',
'                                    PO_COD_IVA                 => :P780_COD_IVA,',
'                                    PO_IND_MANEJA_STOCK        => :P780_IND_MANEJA_STOCK,',
'                                    PO_COD_UNIDAD_MEDIDA       => :P780_COD_UNIDAD_MEDIDA,                              ',
'                                    PO_COSTO_PROM              => :P780_COSTO_PROM, ',
'                                    PO_COSTO_ULTIMO            => :P780_COSTO_ULTIMO,     ',
'                                    PO_COSTO_FOB               => :P780_COSTO_FOB, ',
'                                    PO_COD_MONEDA_COSTO        => :P780_COD_MONEDA_COSTO, ',
'                                    PO_FEC_ULTIMA_COMP         => :P780_FEC_ULTIMA_COMPRA, ',
'                                    PO_CANT_X_PAQUETE          => :P780_CANT_X_PAQUETE, ',
'                                    PO_COD_PROVEEDOR_DFLT      => :P780_COD_PROVEEDOR_DFLT, ',
'                                    PO_CANT_PEDIDO             => :P780_CANT_PEDIDO, ',
'                                    PO_COD_ORIGEN_ART          => :P780_COD_ORIGEN_ART, ',
'                                    PO_COD_EMPRESA             => :P780_COD_EMPRESA, ',
'                                    PO_ESTADO                  => :P780_ESTADO, ',
'                                    PO_PRECIO_BASE             => :P780_PRECIO_BASE, ',
'                                    PO_COD_MONEDA_BASE         => :P780_COD_MONEDA_BASE, ',
'                                    PO_IND_MODIFICA_PRECIO     => :P780_IND_MODIFICA_PRECIO, ',
'                                    PO_PORC_DESCUENTO          => :P780_PORC_DESCUENTO, ',
'                                    PO_COD_GRUPO_COMISION      => :P780_COD_GRUPO_COMISION, ',
'                                    PO_COD_ARANCEL             => :P780_COD_ARANCEL, ',
'                                    PO_COMENTARIO              => :P780_COMENTARIO, ',
'                                    PO_COD_GRUPO               => :P780_COD_GRUPO, ',
'                                    PO_ALTO_CM                 => :P780_ALTO_CM, ',
'                                    PO_LARGO_CM                => :P780_LARGO_CM, ',
'                                    PO_ANCHO_CM                => :P780_ANCHO_CM, ',
'                                    PO_PESO_GR                 => :P780_PESO_GR, ',
'                                    PO_MANEJA_COSTO            => :P780_MANEJA_COSTO,     ',
'                                    PO_IND_MANEJA_LOTES        => :P780_IND_MANEJA_LOTES,     ',
'                                    PO_COSTO_PROM_US           => :P780_COSTO_PROM_US, ',
'                                    PO_COSTO_ULTIMO_US         => :P780_COSTO_ULTIMO_US, ',
'                                    PO_TIP_CAMBIO              => :P780_TIP_CAMBIO, ',
'                                    PO_COD_ALTERNO             => :P780_COD_ALTERNO, ',
'                                    PO_COD_ART_CORTO           => :P780_COD_ART_CORTO, ',
'                                    PO_ESTIBA_MAX              => :P780_ESTIBA_MAX, ',
'                                    PO_FEC_ALTA                => :P780_FEC_ALTA, ',
'                                    PO_SERIE                   => :P780_SERIE, ',
'                                    PO_GARANTIA                => :P780_GARANTIA, ',
'                                    PO_SERIE_GARANTIA          => :P780_SERIE_GARANTIA, ',
'                                    PO_DURACION_GARANTIA       => :P780_DURACION_GARANTIA,     ',
'                                    PO_COD_USUARIO             => :P780_COD_USUARIO, ',
'                                    PO_PORC_DESCMAX            => :P780_PORC_DESCMAX, ',
'                                    PO_COD_EAN                 => :P780_COD_EAN,        ',
'                                    PO_COD_CATEGORIA           => :P780_COD_CATEGORIA, ',
'                                    PO_ART_DESC_PROVEEDOR      => :P780_ART_DESC_PROVEEDOR, ',
'                                    PO_COD_DIVISION            => :P780_COD_DIVISION, ',
'                                    PO_EN_OFERTA_WEB           => :P780_EN_OFERTA_WEB, ',
'                                    PO_CAP_20GP                => :P780_CAP_20GP, ',
'                                    PO_CAP_40GP                => :P780_CAP_40GP, ',
'                                    PO_CAP_40HQ                => :P780_CAP_40HQ, ',
'                                    PO_CAMION                  => :P780_CAMION, ',
'                                    PO_FURGON                  => :P780_FURGON, ',
'                                    PO_EMBARQUE_CONS           => :P780_EMBARQUE_CONS,        ',
'                                    PO_IND_NETO                => :P780_IND_NETO, ',
'                                    PO_IND_FUERA_LINEA         => :P780_IND_FUERA_LINEA, ',
'                                    PO_COD_ENCARGADO           => :P780_COD_ENCARGADO, ',
'                                    PO_COD_MADRE               => :P780_COD_MADRE, ',
'                                    PO_IND_MUESTRA_WEB         => :P780_IND_MUESTRA_WEB, ',
'                                    PO_AUTOAPILABLE            => :P780_AUTOAPILABLE, ',
'                                    PO_CANT_X_PALLET           => :P780_CANT_X_PALLET, ',
'                                    PO_COD_PACK                => :P780_COD_PACK, ',
'                                    PO_IND_NO_CUBRE_GARANTIA   => :P780_IND_NO_CUBRE_GARANTIA, ',
'                                    PO_IND_DISCONTINUADO       => :P780_IND_DISCONTINUADO, ',
'                                    PO_CANTIDAD_MINIMA_COMPRA  => :P780_CANTIDAD_MINIMA_COMPRA, ',
'                                    PO_PLAZO_ENTREGA           => :P780_PLAZO_ENTREGA, ',
'                                    PO_COSTO_PROFORMA_GS       => :P780_COSTO_PROFORMA_GS, ',
'                                    PO_COTIZACION_CP           => :P780_COTIZACION_CP,',
'                                    PO_COD_RELACION_UM         => :P780_COD_RELACION_UM,',
'                                    PO_COD_COLOR               => :P780_COD_COLOR,',
'                                    PO_COD_LINEA_ST            => :P780_COD_LINEA_ST);',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR (''Error en PR_CARGAR_ARTICULO - 01. '' || SQLERRM);',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_process_when=>'P780_ROW_ID_ST_ARTICULOS'
,p_process_when_type=>'ITEM_IS_NOT_NULL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(394287404251503720)
,p_process_sequence=>50
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_CARGAR_COLLECTIONS'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    STARTRES.PR_CREAR_COL_RESPUESTOS (PI_COD_RUBRO         => :P780_COD_RUBRO,',
'                                      PI_COD_ARTICULO      => :P780_COD_ARTICULO,',
'                                      PI_COD_EMPRESA       => :P_COD_EMPRESA);',
'',
'    STARTRES.PR_CREAR_COL_EQUIVALENCIAS (PI_COD_ARTICULO      => :P780_COD_ARTICULO,',
'                                         PI_COD_EMPRESA       => :P_COD_EMPRESA);',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR (''Error en PR_CARGAR_COLLECTIONS - 01. '' || SQLERRM);',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_process_when=>'P780_ROW_ID_ST_ARTICULOS'
,p_process_when_type=>'ITEM_IS_NOT_NULL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(393698252202324636)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'PR_CLEAR_SESSION_STATE'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREAR'
,p_process_when_type=>'REQUEST_EQUALS_CONDITION'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(394286077741503706)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_GUARDAR_CAMBIOS'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'   ',
'    APEX_DEBUG.ERROR (''Entra PR_GUARDAR_ARTICULO'');',
'',
'    STARTRES.PR_GUARDAR_ARTICULO (PI_ROW_ID                  => :P780_ROW_ID_ST_ARTICULOS,',
'                                  PI_COD_ARTICULO            => :P780_COD_ARTICULO,',
'                                  PI_DESCRIPCION             => :P780_DESCRIPCION,',
'                                  PI_COD_GRUPO_ART           => :P780_COD_GRUPO_ART,',
'                                  PI_COD_PAIS_ORIGEN         => :P780_COD_PAIS_ORIGEN,',
'                                  PI_COD_MARCA               => :P780_COD_MARCA,',
'                                  PI_COD_RUBRO               => :P780_COD_RUBRO,',
'                                  PI_COD_FAMILIA             => :P780_COD_FAMILIA,',
'                                  PI_COD_LINEA               => :P780_COD_LINEA,',
'                                  PI_COD_ENVASE              => :P780_COD_ENVASE,',
'                                  PI_COD_IVA                 => :P780_COD_IVA,',
'                                  PI_IND_MANEJA_STOCK        => :P780_IND_MANEJA_STOCK,',
'                                  PI_COD_UNIDAD_MEDIDA       => :P780_COD_UNIDAD_MEDIDA,                              ',
'                                  PI_COSTO_PROM              => :P780_COSTO_PROM, ',
'                                  PI_COSTO_ULTIMO            => :P780_COSTO_ULTIMO,     ',
'                                  PI_COSTO_FOB               => :P780_COSTO_FOB, ',
'                                  PI_COD_MONEDA_COSTO        => :P780_COD_MONEDA_COSTO, ',
'                                  PI_FEC_ULTIMA_COMP         => :P780_FEC_ULTIMA_COMPRA, ',
'                                  PI_CANT_X_PAQUETE          => :P780_CANT_X_PAQUETE, ',
'                                  PI_COD_PROVEEDOR_DFLT      => :P780_COD_PROVEEDOR_DFLT, ',
'                                  PI_CANT_PEDIDO             => :P780_CANT_PEDIDO, ',
'                                  PI_COD_ORIGEN_ART          => :P780_COD_ORIGEN_ART, ',
'                                  PI_COD_EMPRESA             => NVL(:P780_COD_EMPRESA, :P_COD_EMPRESA), ',
'                                  PI_ESTADO                  => :P780_ESTADO, ',
'                                  PI_PRECIO_BASE             => :P780_PRECIO_BASE, ',
'                                  PI_COD_MONEDA_BASE         => :P780_COD_MONEDA_BASE, ',
'                                  PI_IND_MODIFICA_PRECIO     => :P780_IND_MODIFICA_PRECIO, ',
'                                  PI_PORC_DESCUENTO          => :P780_PORC_DESCUENTO, ',
'                                  PI_COD_GRUPO_COMISION      => :P780_COD_GRUPO_COMISION, ',
'                                  PI_COD_ARANCEL             => :P780_COD_ARANCEL, ',
'                                  PI_COMENTARIO              => :P780_COMENTARIO, ',
'                                  PI_COD_GRUPO               => :P780_COD_GRUPO, ',
'                                  PI_ALTO_CM                 => :P780_ALTO_CM, ',
'                                  PI_LARGO_CM                => :P780_LARGO_CM, ',
'                                  PI_ANCHO_CM                => :P780_ANCHO_CM, ',
'                                  PI_PESO_GR                 => :P780_PESO_GR, ',
'                                  PI_MANEJA_COSTO            => :P780_MANEJA_COSTO,     ',
'                                  PI_IND_MANEJA_LOTES        => :P780_IND_MANEJA_LOTES,     ',
'                                  PI_COSTO_PROM_US           => :P780_COSTO_PROM_US, ',
'                                  PI_COSTO_ULTIMO_US         => :P780_COSTO_ULTIMO_US, ',
'                                  PI_TIP_CAMBIO              => :P780_TIP_CAMBIO, ',
'                                  PI_COD_ALTERNO             => :P780_COD_ALTERNO, ',
'                                  PI_COD_ART_CORTO           => :P780_COD_ART_CORTO, ',
'                                  PI_ESTIBA_MAX              => :P780_ESTIBA_MAX, ',
'                                  PI_FEC_ALTA                => :P780_FEC_ALTA, ',
'                                  PI_SERIE                   => :P780_SERIE, ',
'                                  PI_GARANTIA                => :P780_GARANTIA, ',
'                                  PI_SERIE_GARANTIA          => :P780_SERIE_GARANTIA, ',
'                                  PI_DURACION_GARANTIA       => :P780_DURACION_GARANTIA,     ',
'                                  PI_COD_USUARIO             => :P780_COD_USUARIO, ',
'                                  PI_PORC_DESCMAX            => :P780_PORC_DESCMAX, ',
'                                  PI_COD_EAN                 => :P780_COD_EAN,        ',
'                                  PI_COD_CATEGORIA           => :P780_COD_CATEGORIA, ',
'                                  PI_ART_DESC_PROVEEDOR      => :P780_ART_DESC_PROVEEDOR, ',
'                                  PI_COD_DIVISION            => :P780_COD_DIVISION, ',
'                                  PI_EN_OFERTA_WEB           => :P780_EN_OFERTA_WEB, ',
'                                  PI_CAP_20GP                => :P780_CAP_20GP, ',
'                                  PI_CAP_40GP                => :P780_CAP_40GP, ',
'                                  PI_CAP_40HQ                => :P780_CAP_40HQ, ',
'                                  PI_CAMION                  => :P780_CAMION, ',
'                                  PI_FURGON                  => :P780_FURGON, ',
'                                  PI_EMBARQUE_CONS           => :P780_EMBARQUE_CONS,        ',
'                                  PI_IND_NETO                => :P780_IND_NETO, ',
'                                  PI_IND_FUERA_LINEA         => :P780_IND_FUERA_LINEA, ',
'                                  PI_COD_ENCARGADO           => :P780_COD_ENCARGADO, ',
'                                  PI_COD_MADRE               => :P780_COD_MADRE, ',
'                                  PI_IND_MUESTRA_WEB         => :P780_IND_MUESTRA_WEB, ',
'                                  PI_AUTOAPILABLE            => :P780_AUTOAPILABLE, ',
'                                  PI_CANT_X_PALLET           => :P780_CANT_X_PALLET, ',
'                                  PI_COD_PACK                => :P780_COD_PACK, ',
'                                  PI_IND_NO_CUBRE_GARANTIA   => :P780_IND_NO_CUBRE_GARANTIA, ',
'                                  PI_IND_DISCONTINUADO       => :P780_IND_DISCONTINUADO, ',
'                                  PI_CANTIDAD_MINIMA_COMPRA  => :P780_CANTIDAD_MINIMA_COMPRA, ',
'                                  PI_PLAZO_ENTREGA           => :P780_PLAZO_ENTREGA, ',
'                                  PI_COSTO_PROFORMA_GS       => :P780_COSTO_PROFORMA_GS, ',
'                                  PI_COTIZACION_CP           => :P780_COTIZACION_CP,',
'                                  PI_COD_RELACION_UM         => :P780_COD_RELACION_UM,',
'                                  PI_COD_COLOR               => :P780_COD_COLOR,',
'                                  PI_COD_LINEA_ST            => :P780_COD_LINEA_ST);',
'',
'    APEX_DEBUG.ERROR (''Sale PR_GUARDAR_ARTICULO'');',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR (''Error en PR_GUARDAR_CAMBIOS - 01. '' || SQLERRM);',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>unistr('Ocurri\00F3 un error al momento de guardar un articulo.')
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'GUARDAR'
,p_process_when_type=>'REQUEST_EQUALS_CONDITION'
,p_process_success_message=>unistr('El articulo se guard\00F3 exitosamente.')
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
 p_id=>wwv_flow_imp.id(395897124205422613)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_GUARDAR_EQUIVALENCIAS'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    STARTRES.PR_GUARDAR_EQUIVALENCIAS (PI_COD_EMPRESA   => :P780_COD_EMPRESA,',
'                                       PI_COD_ARTICULO  => :P780_COD_ARTICULO);  ',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR (''Error en PR_GUARDAR_EQUIVALENCIAS - 01. '' || SQLERRM);',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'P780_ROW_ID_ST_ARTICULOS'
,p_process_when_type=>'ITEM_IS_NOT_NULL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(395897288620422614)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_GUARDAR_VINCULAR'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    STARTRES.PR_GUARDAR_VINCULAR (PI_COD_EMPRESA   => :P780_COD_EMPRESA,',
'                                  PI_COD_RUBRO     => :P780_COD_RUBRO, ',
'                                  PI_COD_ARTICULO  => :P780_COD_ARTICULO);',
'                                  ',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR (''Error en PR_GUARDAR_EQUIVALENCIAS - 01. '' || SQLERRM);',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'P780_ROW_ID_ST_ARTICULOS'
,p_process_when_type=>'ITEM_IS_NOT_NULL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(394286532650503711)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_ELIMINAR'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    :P780_MSG := NULL;',
'',
'    STARTRES.PR_ELIMINAR_ARTICULO (PI_ROW_ID   => :P780_ROW_ID_ST_ARTICULOS,',
'                                   ------------------------',
'                                   PO_MSG      => :P780_MSG);',
'',
'    IF :P780_MSG IS NULL THEN',
'        :P780_ROW_ID_ST_ARTICULOS := NULL;',
'    END IF;',
'',
'END;                               '))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'&P780_MSG.'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'ELIMINAR'
,p_process_when_type=>'REQUEST_EQUALS_CONDITION'
,p_process_success_message=>unistr('El registro se elimin\00F3 exitosamente.')
);
wwv_flow_imp.component_end;
end;
/
