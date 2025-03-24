prompt --application/pages/page_00636
begin
--   Manifest
--     PAGE: 00636
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
 p_id=>636
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>unistr('Definici\00F3n de Posiciones')
,p_alias=>'STPOSICI'
,p_step_title=>unistr('Definici\00F3n de Posiciones')
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function mostrar(accion){',
'    if (accion == 1){',
'       $("#CREAR").show();',
'       $("#GUARDAR").hide();',
'       $("#P636_COD_POSICION_AUX").hide();',
'    }',
'    if (accion == 2){',
'       $("#CREAR").hide();',
'       $("#GUARDAR").show();',
'       $("#P636_COD_POSICION_AUX").show();',
'    }',
'}',
'',
'function imprimirEtiqueta(p_cod_estante,p_cod_sub_bloque,p_cod_sucursal,p_cod_nivel,p_cuerpo,p_cod_bloque){',
'',
'        var vURL = ''http://ngosaeca.com.py/reportes/rest_v2/reports/reports/IMPRIMIR_ET_NUEVA.pdf?''',
'',
'            +''P_COD_ESTANTE=''+p_cod_estante',
'            +''&P_COD_SUB_BLOQUE=''+p_cod_sub_bloque',
'            +''&P_COD_SUCURSAL=''+p_cod_sucursal',
'            +''&P_COD_NIVEL=''+p_cod_nivel',
'            +''&P_CUERPO=''+p_cuerpo',
'            +''&P_COD_BLOQUE=''+p_cod_bloque             ',
'            +''&j_username=jasperadmin&j_password=jasperadmin'';',
'',
'    console.log(vURL);',
'    window.open(unescape(vURL.replace(/&amp;/g,''g'')),''_blank'');',
'}',
'',
'',
'function validarNoNulo(){',
'    var deposito = apex.item("P636_COD_SUCURSAL_AUX").getValue();',
'    var bloque = apex.item("P636_COD_BLOQUE_AUX").getValue();',
'    var sub_bloque = apex.item("P636_COD_SUB_BLOQUE_AUX").getValue();',
'    var estante = apex.item("P636_COD_ESTANTE_AUX").getValue();',
'    var cuerpo = apex.item("P636_COD_CUERPO_AUX").getValue();',
'    var nivel = apex.item("P636_COD_NIVEL_AUX").getValue();',
'  /*',
'  var responsable = apex.item("P636_COD_RESPONSABLE_AUX").getValue(); ',
' */',
'',
'    apex.message.clearErrors();',
'    apex.item("P636_ERROR").setValue(''0'');    ',
'',
'    if (deposito == ''''){',
'        apex.message.showErrors([{',
'                                type: apex.message.TYPE.ERROR,',
'                                location: "inline",',
'                                pageItem: "P636_COD_SUCURSAL_AUX",',
unistr('                                message: "Debe seleccionar un D\00E9posito."'),
'                                }]); ',
'        apex.item("P636_ERROR").setValue(''1'');                            ',
'    }',
'',
'    if (bloque == ''''){',
'        apex.message.showErrors([{',
'                                type: apex.message.TYPE.ERROR,',
'                                location: "inline",',
'                                pageItem: "P636_COD_BLOQUE_AUX",',
'                                message: "Debe seleccionar un Bloque."',
'                                }]);',
'        apex.item("P636_ERROR").setValue(''1'');                                                            ',
'    }',
'',
'    if (sub_bloque == ''''){',
'        apex.message.showErrors([{',
'                                type: apex.message.TYPE.ERROR,',
'                                location: "inline",',
'                                pageItem: "P636_COD_SUB_BLOQUE_AUX",',
'                                message: "Debe seleccionar un sub-bloque."',
'                                }]); ',
'        apex.item("P636_ERROR").setValue(''1'');                            ',
'    }',
'    if (estante == ''''){',
'        apex.message.showErrors([{',
'                                type: apex.message.TYPE.ERROR,',
'                                location: "inline",',
'                                pageItem: "P636_COD_ESTANTE_AUX",',
'                                message: "Debe ingresar un estante."',
'                                }]); ',
'        apex.item("P636_ERROR").setValue(''1'');                            ',
'    }',
'    if (cuerpo == ''''){',
'        apex.message.showErrors([{',
'                                type: apex.message.TYPE.ERROR,',
'                                location: "inline",',
'                                pageItem: "P636_COD_CUERPO_AUX",',
'                                message: "Debe ingresar un cuerpo."',
'                                }]); ',
'        apex.item("P636_ERROR").setValue(''1'');                            ',
'    }',
'    if (nivel == ''''){',
'        apex.message.showErrors([{',
'                                type: apex.message.TYPE.ERROR,',
'                                location: "inline",',
'                                pageItem: "P636_COD_NIVEL_AUX",',
'                                message: "Debe ingresar un nivel."',
'                                }]); ',
'        apex.item("P636_ERROR").setValue(''1'');                            ',
'    }',
'}',
'function validarNoNuloEditar(){',
'    var deposito = apex.item("P636_COD_SUCURSAL_EDITAR").getValue();',
'    var bloque = apex.item("P636_COD_BLOQUE_EDITAR").getValue();',
'    var sub_bloque = apex.item("P636_COD_SUB_BLOQUE_EDITAR").getValue();',
'    var estante = apex.item("P636_COD_ESTANTE_EDITAR").getValue();',
'    var cuerpo = apex.item("P636_COD_CUERPO_EDITAR").getValue();',
'    var nivel = apex.item("P636_COD_NIVEL_EDITAR").getValue();',
'  /*',
'  var responsable = apex.item("P636_COD_RESPONSABLE_AUX").getValue(); ',
' */',
'',
'    apex.message.clearErrors();',
'    apex.item("P636_ERROR").setValue(''0'');    ',
'',
'    if (deposito == ''''){',
'        apex.message.showErrors([{',
'                                type: apex.message.TYPE.ERROR,',
'                                location: "inline",',
'                                pageItem: "P636_COD_SUCURSAL_EDITAR",',
unistr('                                message: "Debe seleccionar un D\00E9posito."'),
'                                }]); ',
'        apex.item("P636_ERROR").setValue(''1'');                            ',
'    }',
'',
'    if (bloque == ''''){',
'        apex.message.showErrors([{',
'                                type: apex.message.TYPE.ERROR,',
'                                location: "inline",',
'                                pageItem: "P636_COD_BLOQUE_EDITAR",',
'                                message: "Debe seleccionar un Bloque."',
'                                }]);',
'        apex.item("P636_ERROR").setValue(''1'');                                                            ',
'    }',
'',
'    if (sub_bloque == ''''){',
'        apex.message.showErrors([{',
'                                type: apex.message.TYPE.ERROR,',
'                                location: "inline",',
'                                pageItem: "P636_COD_SUB_BLOQUE_EDITAR",',
'                                message: "Debe seleccionar un sub-bloque."',
'                                }]); ',
'        apex.item("P636_ERROR").setValue(''1'');                            ',
'    }',
'    if (estante == ''''){',
'        apex.message.showErrors([{',
'                                type: apex.message.TYPE.ERROR,',
'                                location: "inline",',
'                                pageItem: "P636_COD_ESTANTE_EDITAR",',
'                                message: "Debe ingresar un estante."',
'                                }]); ',
'        apex.item("P636_ERROR").setValue(''1'');                            ',
'    }',
'    if (cuerpo == ''''){',
'        apex.message.showErrors([{',
'                                type: apex.message.TYPE.ERROR,',
'                                location: "inline",',
'                                pageItem: "P636_COD_CUERPO_EDITAR",',
'                                message: "Debe ingresar un cuerpo."',
'                                }]); ',
'        apex.item("P636_ERROR").setValue(''1'');                            ',
'    }',
'    if (nivel == ''''){',
'        apex.message.showErrors([{',
'                                type: apex.message.TYPE.ERROR,',
'                                location: "inline",',
'                                pageItem: "P636_COD_NIVEL_EDITAR",',
'                                message: "Debe ingresar un nivel."',
'                                }]); ',
'        apex.item("P636_ERROR").setValue(''1'');                            ',
'    }',
'}',
'',
' ',
'function seleccionar(cb) {',
'    console.log(cb.value);',
'    console.log(cb.checked);',
'    if (cb.checked == true){',
'        console.log("block" + cb.value);',
'        $s(''P636_ROW_ID_CAMBIO_ESTADO'', cb.value);  ',
'        $s(''P636_AUX_CHECK_BOX'', ''S'');',
'    } else {',
'       $s(''P636_ROW_ID_CAMBIO_ESTADO'', cb.value);  ',
'        $s(''P636_AUX_CHECK_BOX'', ''N'');',
'    }',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_last_updated_by=>'NZARATE'
,p_last_upd_yyyymmddhh24miss=>'20241220144610'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(217080615205856420)
,p_plug_name=>'Definiciones de Posiciones'
,p_region_css_classes=>'u-color-17-border'
,p_region_template_options=>'#DEFAULT#:is-expanded:t-Region--accent1:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40108275410263656)
,p_plug_display_sequence=>940
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(217082072947856434)
,p_plug_name=>'AUXILIARES - R1'
,p_parent_plug_id=>wwv_flow_imp.id(217080615205856420)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(218549910080660942)
,p_plug_name=>'Reporte - Coleccion - R2'
,p_region_template_options=>'#DEFAULT#:is-expanded:t-Region--accent1:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40108275410263656)
,p_plug_display_sequence=>960
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ',
'       SEQ_ID,',
'       C001 cod_sucursal,',
'       C002 cod_bloque,',
'       C003 cod_sub_bloque,',
'       C004 cod_estante,',
'       C005 cod_cuerpo,',
'       C006 cod_nivel,',
'       C007 cod_posicion,',
'       C008 alto_mts,',
'       C009 ancho_mts,',
'       C010 largo_mts,',
'       C011 peso_kg,',
'       C012 fecha_alta,',
'       C013 fecha_baja,',
'       C014 cod_usuario_alta,',
'       C015 estado,',
'       C016 cod_usuario_baja,',
'       C017 ind_migrado_os,',
'       C018 reg_id_orden,',
'       C019 ind_celda,',
'       C020 cod_responsable,',
'       C021 r_id,',
'       C035 cod_empresa,',
'       ',
'       -- QUERY CHECKBOX----',
'       APEX_ITEM.CHECKBOX (p_idx         => 1 ,',
'                           p_value       => C021, --SE CAMBIO SEQ_ID POR ROWID 22/08/2024',
'                           p_attributes  => (case C015',
'                                                 when ''S'' then ''checked ''',
'                                             else null',
'                                                 end ) ||''onclick="seleccionar(this)"'' ) as checkbox,',
'       APEX_ITEM.CHECKBOX (p_idx         => 1 ,',
'                           p_value       => SEQ_ID,',
'                           p_attributes  => (case C018',
'                                                 when ''S'' then ''checked ''',
'                                             else null',
'                                                 end ) ) as checkbox2,',
'',
'       seq_id seq_id_reporte,',
'       NULL editar,',
'       null eliminar,',
'       null imp_etiqueta ,',
'       null ver',
'       ',
'',
'FROM   APEX_COLLECTIONS',
'',
'WHERE  COLLECTION_NAME = ''ST_BLOQUES''',
'AND NVL(C050,''X'') <> ''D'' ',
'-- AND :P636_AUX = 1;'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P636_AUX'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Reporte - Coleccion - R2'
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
 p_id=>wwv_flow_imp.id(218550098851660943)
,p_max_row_count=>'1000000'
,p_no_data_found_message=>'No se encontraron registros.'
,p_pagination_type=>'ROWS_X_TO_Y'
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
,p_owner=>'JANDERSON'
,p_internal_uid=>218550098851660943
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(218550144305660944)
,p_db_column_name=>'COD_SUCURSAL'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>unistr('Dep\00F3sito')
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(218550296591660945)
,p_db_column_name=>'COD_BLOQUE'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Bloque'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(218550353689660946)
,p_db_column_name=>'COD_SUB_BLOQUE'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Sub - Bloque'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(218550454203660947)
,p_db_column_name=>'COD_ESTANTE'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Estante'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(218550533783660948)
,p_db_column_name=>'COD_CUERPO'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Cuerpo'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(218550625534660949)
,p_db_column_name=>'COD_NIVEL'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Nivel'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(218550764183660950)
,p_db_column_name=>'COD_POSICION'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>unistr('ID Posici\00F3n')
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(219744220595610201)
,p_db_column_name=>'ALTO_MTS'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Alto Mts'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(219744378837610202)
,p_db_column_name=>'ANCHO_MTS'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Ancho Mts'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(219744493431610203)
,p_db_column_name=>'LARGO_MTS'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Largo Mts'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(219744598588610204)
,p_db_column_name=>'PESO_KG'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Peso Kg'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(219744623512610205)
,p_db_column_name=>'FECHA_ALTA'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Datos Alta'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(219744722530610206)
,p_db_column_name=>'FECHA_BAJA'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Datos Baja'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(219744821402610207)
,p_db_column_name=>'COD_USUARIO_ALTA'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>'Cod Usuario Alta'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(219744900226610208)
,p_db_column_name=>'ESTADO'
,p_display_order=>150
,p_column_identifier=>'O'
,p_column_label=>'Estado'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(219745001965610209)
,p_db_column_name=>'COD_USUARIO_BAJA'
,p_display_order=>160
,p_column_identifier=>'P'
,p_column_label=>'Cod Usuario Baja'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(219745149288610210)
,p_db_column_name=>'IND_MIGRADO_OS'
,p_display_order=>170
,p_column_identifier=>'Q'
,p_column_label=>'Ind Migrado Os'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(219745230294610211)
,p_db_column_name=>'REG_ID_ORDEN'
,p_display_order=>180
,p_column_identifier=>'R'
,p_column_label=>'Reg Id Orden'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(219745334298610212)
,p_db_column_name=>'IND_CELDA'
,p_display_order=>190
,p_column_identifier=>'S'
,p_column_label=>'Ind Celda'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(219745465343610213)
,p_db_column_name=>'COD_RESPONSABLE'
,p_display_order=>200
,p_column_identifier=>'T'
,p_column_label=>'Cod Responsable'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(219745559243610214)
,p_db_column_name=>'SEQ_ID_REPORTE'
,p_display_order=>210
,p_column_identifier=>'U'
,p_column_label=>'Seq Id Reporte'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(219746618973610225)
,p_db_column_name=>'CHECKBOX'
,p_display_order=>220
,p_column_identifier=>'V'
,p_column_label=>'Estado'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(219746728465610226)
,p_db_column_name=>'CHECKBOX2'
,p_display_order=>230
,p_column_identifier=>'W'
,p_column_label=>'Autorizar'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(219746890373610227)
,p_db_column_name=>'EDITAR'
,p_display_order=>240
,p_column_identifier=>'X'
,p_column_label=>'Editar'
,p_column_link=>'javascript:$s(''P636_EDITAR'',''#SEQ_ID#'');'
,p_column_linktext=>'<span class="fa fa-edit" aria-hidden="true"></span>'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_display_condition_type=>'FUNCTION_BODY'
,p_display_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'VCONTROL NUMBER;',
'BEGIN',
'',
'    VCONTROL := SEGURIDAD_GRANULAR.RETORNA_PERMISO_BOTON(ppage_id     => :APP_PAGE_ID,',
'                                                         papli0100_id => :P_APLI0100_ID,',
'                                                         pcod_empresa => :P_COD_EMPRESA,',
'                                                         pusua0100_id => :P_USUA0100_ID,',
'                                                         pdm_boto     => 2); --1 guardar, 2 editar, 3 eliminar',
'',
'    IF VCONTROL = 0 THEN',
'        RETURN FALSE;',
'    ELSE',
'        RETURN TRUE;',
'    END IF;',
'END;'))
,p_display_condition2=>'PLSQL'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(219746966351610228)
,p_db_column_name=>'ELIMINAR'
,p_display_order=>250
,p_column_identifier=>'Y'
,p_column_label=>'Eliminar'
,p_column_link=>'javascript:$s(''P636_ELIMINAR'',''#SEQ_ID#'');'
,p_column_linktext=>'<span aria-hidden="true" class="fa fa-trash-o"></span>'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_display_condition_type=>'FUNCTION_BODY'
,p_display_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'VCONTROL NUMBER;',
'BEGIN',
'',
'    VCONTROL := SEGURIDAD_GRANULAR.RETORNA_PERMISO_BOTON(ppage_id     => :APP_PAGE_ID,',
'                                                         papli0100_id => :P_APLI0100_ID,',
'                                                         pcod_empresa => :P_COD_EMPRESA,',
'                                                         pusua0100_id => :P_USUA0100_ID,',
'                                                         pdm_boto     => 3); --1 guardar, 2 editar, 3 eliminar',
'',
'    IF VCONTROL = 0 THEN',
'        RETURN FALSE;',
'    ELSE',
'        RETURN TRUE;',
'    END IF;',
'END;'))
,p_display_condition2=>'PLSQL'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(221288331784777012)
,p_db_column_name=>'R_ID'
,p_display_order=>260
,p_column_identifier=>'Z'
,p_column_label=>'R Id'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(221289654969777025)
,p_db_column_name=>'SEQ_ID'
,p_display_order=>270
,p_column_identifier=>'AA'
,p_column_label=>'Seq Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(221290096109777029)
,p_db_column_name=>'COD_EMPRESA'
,p_display_order=>280
,p_column_identifier=>'AB'
,p_column_label=>'Cod Empresa'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(224289242923155447)
,p_db_column_name=>'IMP_ETIQUETA'
,p_display_order=>290
,p_column_identifier=>'AC'
,p_column_label=>'Imp. Nueva Etiqueta'
,p_column_link=>'javascript:$s(''P636_AUX_IMP_ETIQUETA'', ''#SEQ_ID#'');'
,p_column_linktext=>'<span class="fa fa-ticket" aria-hidden="true"></span>'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(377005746413867301)
,p_db_column_name=>'VER'
,p_display_order=>300
,p_column_identifier=>'AD'
,p_column_label=>'Ver'
,p_column_link=>'javascript:$s(''P636_SEQ_ID_VER'',''#SEQ_ID#'');'
,p_column_linktext=>'<span aria-hidden="true" class="fa fa-eye"></span>'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(219764530005625704)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'2197646'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>15
,p_report_columns=>'EDITAR:COD_SUCURSAL:COD_BLOQUE:COD_SUB_BLOQUE:COD_ESTANTE:COD_CUERPO:COD_NIVEL:FECHA_ALTA:COD_POSICION:CHECKBOX:CHECKBOX2:IMP_ETIQUETA:ELIMINAR:VER:'
,p_sort_column_1=>'SEQ_ID'
,p_sort_direction_1=>'DESC'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(220284315412379704)
,p_plug_name=>'Crear '
,p_parent_plug_id=>wwv_flow_imp.id(218549910080660942)
,p_region_template_options=>'#DEFAULT#:js-dialog-size720x480'
,p_plug_template=>wwv_flow_imp.id(40117728043263659)
,p_plug_display_sequence=>30
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(377006647129867310)
,p_plug_name=>'Editar'
,p_parent_plug_id=>wwv_flow_imp.id(218549910080660942)
,p_region_template_options=>'#DEFAULT#:js-dialog-size720x480'
,p_plug_template=>wwv_flow_imp.id(40117728043263659)
,p_plug_display_sequence=>40
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(220284130728379702)
,p_plug_name=>'ITEMS-REPORTE-R2'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>970
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(378667550316118321)
,p_plug_name=>'Datos Alta'
,p_parent_plug_id=>wwv_flow_imp.id(220284130728379702)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(378667671933118322)
,p_plug_name=>'Datos Baja'
,p_parent_plug_id=>wwv_flow_imp.id(220284130728379702)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>20
,p_plug_new_grid_row=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(377832104346331842)
,p_plug_name=>'variables'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>980
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(220284727586379708)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(220284315412379704)
,p_button_name=>'BT_CANCELAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--simple:t-Button--iconRight:t-Button--hoverIconPush'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_image_alt=>'Cancelar'
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(377008224921867326)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(377006647129867310)
,p_button_name=>'BT_CANCELAR_EDITAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--simple:t-Button--iconRight:t-Button--hoverIconPush'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_image_alt=>'Cancelar'
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(220284591990379706)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(220284315412379704)
,p_button_name=>'BT_ACEPTAR_CREAR'
,p_button_static_id=>'CREAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--simple:t-Button--iconRight:t-Button--hoverIconPush'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Aceptar'
,p_button_position=>'CREATE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(377008442616867328)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(377006647129867310)
,p_button_name=>'BT_GUARDAR_EDITAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--simple:t-Button--iconRight:t-Button--hoverIconPush'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Guardar'
,p_button_position=>'CREATE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(217081682387856430)
,p_button_sequence=>100
,p_button_plug_id=>wwv_flow_imp.id(217080615205856420)
,p_button_name=>'BT_CONSULTAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--simple:t-Button--iconRight:t-Button--hoverIconPush'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Consultar'
,p_button_position=>'CREATE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(217081759371856431)
,p_button_sequence=>110
,p_button_plug_id=>wwv_flow_imp.id(217080615205856420)
,p_button_name=>'BT_ASIGNAR_RESPONSABLE'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--simple:t-Button--iconRight:t-Button--hoverIconPush'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Asignar Responsable'
,p_button_position=>'CREATE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(217081977844856433)
,p_button_sequence=>120
,p_button_plug_id=>wwv_flow_imp.id(217080615205856420)
,p_button_name=>'BT_REVOCAR_RESPONSABLE'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--simple:t-Button--iconRight:t-Button--hoverIconPush'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Revocar Responsable'
,p_button_position=>'CREATE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(218549391869660936)
,p_button_sequence=>130
,p_button_plug_id=>wwv_flow_imp.id(217080615205856420)
,p_button_name=>'BT_LIMPIAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--simple:t-Button--iconRight:t-Button--hoverIconPush'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Limpiar'
,p_button_position=>'CREATE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(220286747113379728)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(218549910080660942)
,p_button_name=>'BT_AGREGAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--simple:t-Button--iconRight:t-Button--hoverIconPush'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Agregar'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_warn_on_unsaved_changes=>null
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
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(219746055688610219)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(218549910080660942)
,p_button_name=>'BT_IMPRIMIR_ETIQUETA'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--simple:t-Button--iconRight:t-Button--hoverIconPush'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Imp. Nueva Etiqueta'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_warn_on_unsaved_changes=>null
,p_button_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(217080765210856421)
,p_name=>'P636_TIPO'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(217080615205856420)
,p_prompt=>'Tipo'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:Responsable por Bloque;1,Responsable por sub-bloque;2,Responsable por estante;3'
,p_lov_display_null=>'YES'
,p_lov_null_text=>'-- Seleccionar -- '
,p_cHeight=>1
,p_colspan=>4
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(217080839881856422)
,p_name=>'P636_COD_SUC_DEPOSITO'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(217080615205856420)
,p_prompt=>unistr('Dep\00F3sito ')
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_SUCURSALES_STPOSICI'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select s.descripcion, s.cod_sucursal',
'        from sucursales s, st_sub_bloques sb',
'     where s.cod_empresa = :P_COD_EMPRESA',
'     and s.cod_empresa=sb.cod_empresa',
'     and s.cod_sucursal=sb.cod_sucursal',
'     group by  s.descripcion, s.cod_sucursal',
'       order by 1'))
,p_cSize=>30
,p_colspan=>4
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(217080908434856423)
,p_name=>'P636_DESC_SUC_DEPOSITO'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(217080615205856420)
,p_prompt=>unistr('Descripci\00F3n Dep\00F3sito')
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
 p_id=>wwv_flow_imp.id(217081063966856424)
,p_name=>'P636_COD_BLOQUE'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(217080615205856420)
,p_prompt=>'Bloque'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_BLOQUES_STPOSICI'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select desc_bloque, cod_bloque',
'      from st_bloques',
'     where cod_empresa  = :P_COD_EMPRESA',
'     and cod_sucursal = :P636_cod_suc_deposito ',
''))
,p_lov_cascade_parent_items=>'P636_COD_SUC_DEPOSITO'
,p_ajax_items_to_submit=>'P636_COD_SUC_DEPOSITO'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>30
,p_colspan=>4
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(217081110560856425)
,p_name=>'P636_DESC_BLOQUE'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(217080615205856420)
,p_prompt=>unistr('Descripci\00F3n Bloque')
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
 p_id=>wwv_flow_imp.id(217081224071856426)
,p_name=>'P636_COD_SUB_BLOQUE'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(217080615205856420)
,p_prompt=>'Sub-Bloque'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_SUBLOQUES_STPOSICI'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select desc_SUB_bloque, COD_SUB_BLOQUE      ',
'',
'      from st_sub_bloques',
'     where cod_empresa  = :P_COD_EMPRESA',
'       and cod_sucursal = :p636_cod_sucursal',
'       and cod_bloque = :p636_cod_bloque',
'',
' '))
,p_lov_cascade_parent_items=>'P636_COD_BLOQUE'
,p_ajax_items_to_submit=>'P636_COD_BLOQUE'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>30
,p_colspan=>4
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(217081314691856427)
,p_name=>'P636_DESC_SUB_BLOQUE'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(217080615205856420)
,p_prompt=>unistr('Descripci\00F3n Sub-Bloque')
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
 p_id=>wwv_flow_imp.id(217081451162856428)
,p_name=>'P636_COD_RESPONSABLE'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(217080615205856420)
,p_prompt=>'Responsable'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_EMPLEADOS_STPOSICI'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select p.nombre, e.cod_empleado, decode(e.activo, ''S'', ''Activo'', ''Inactivo'') estado',
'from rh_empleados e, personas p',
'where e.cod_empresa = :P_COD_EMPRESA',
'and e.cod_persona = p.cod_persona',
'order by p.nombre asc'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_colspan=>4
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(217081552240856429)
,p_name=>'P636_DESC_RESPONSABLE'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(217080615205856420)
,p_prompt=>unistr('Descripci\00F3n Responsable')
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
 p_id=>wwv_flow_imp.id(217082163493856435)
,p_name=>'P636_ERR'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(217082072947856434)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(217082263108856436)
,p_name=>'P636_MSG'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(217082072947856434)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(217083063119856444)
,p_name=>'P636_COD_ESTANTE'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(217080615205856420)
,p_prompt=>'Estante'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_ESTANTES_STPOSICI'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select desc_Estante, cod_estante',
' ',
'      from st_estantes',
'     where cod_empresa  = :P_COD_EMPRESA',
'       '))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_colspan=>4
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(217083176472856445)
,p_name=>'P636_DESC_ESTANTE'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(217080615205856420)
,p_prompt=>unistr('Descripci\00F3n Estante')
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
 p_id=>wwv_flow_imp.id(218548186296660924)
,p_name=>'P636_AUX'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(217082072947856434)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(218548797646660930)
,p_name=>'P636_DESC_SUCURSAL'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(220284130728379702)
,p_prompt=>unistr('Descripci\00F3n Sucursal')
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
 p_id=>wwv_flow_imp.id(218548865517660931)
,p_name=>'P636_DESC_RESP_BLOQUE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(220284130728379702)
,p_prompt=>'Responsable Bloque'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_named_lov=>'LV_STPOSICI_COD_BLOQUE_EDITAR'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'     select cod_bloque||''-''||desc_bloque desc_bloque, cod_bloque',
'     from st_bloques',
'     where cod_empresa  = :P_COD_EMPRESA',
'     and cod_sucursal = :p636_cod_sucursal_EDITAR ',
''))
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(218548924981660932)
,p_name=>'P636_DESC_RESP_SUB_BLOQUE'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(220284130728379702)
,p_prompt=>'Responsable Sub - Bloque'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(218549028139660933)
,p_name=>'P636_DESC_RESP_ESTANTE'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(220284130728379702)
,p_prompt=>'Responsable Estante'
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
 p_id=>wwv_flow_imp.id(218549128372660934)
,p_name=>'P636_DESC_CUERPO'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(220284130728379702)
,p_prompt=>'Cuerpo'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(218549255733660935)
,p_name=>'P636_DESC_NIVEL'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(220284130728379702)
,p_prompt=>'Nivel'
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
 p_id=>wwv_flow_imp.id(218549881680660941)
,p_name=>'P636_COD_EMPRESA'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(217080615205856420)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(219747044542610229)
,p_name=>'P636_EDITAR'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(217082072947856434)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(219747165891610230)
,p_name=>'P636_ELIMINAR'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(217082072947856434)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(219749154998610250)
,p_name=>'P636_COD_SUCURSAL'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(217080615205856420)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(220285712706379718)
,p_name=>'P636_COD_CUERPO'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(220284130728379702)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(220285875050379719)
,p_name=>'P636_COD_NIVEL'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(220284130728379702)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(220286810911379729)
,p_name=>'P636_COD_SUCURSAL_AUX'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(220284315412379704)
,p_prompt=>unistr('Dep\00F3sito')
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_SUCURSALES_STPOSICI'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select s.descripcion, s.cod_sucursal',
'        from sucursales s, st_sub_bloques sb',
'     where s.cod_empresa = :P_COD_EMPRESA',
'     and s.cod_empresa=sb.cod_empresa',
'     and s.cod_sucursal=sb.cod_sucursal',
'     group by  s.descripcion, s.cod_sucursal',
'       order by 1'))
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(220286998623379730)
,p_name=>'P636_COD_BLOQUE_AUX'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(220284315412379704)
,p_prompt=>'Bloque'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_BLOQUES_AUX_STPOSICI'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select desc_bloque, cod_bloque',
'      from st_bloques',
'     where cod_empresa  = :P_COD_EMPRESA',
'     and cod_sucursal = :P636_cod_sucursal_aux '))
,p_lov_cascade_parent_items=>'P636_COD_SUCURSAL_AUX'
,p_ajax_items_to_submit=>'P636_COD_SUCURSAL_AUX'
,p_ajax_optimize_refresh=>'Y'
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
 p_id=>wwv_flow_imp.id(220287000283379731)
,p_name=>'P636_COD_SUB_BLOQUE_AUX'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(220284315412379704)
,p_prompt=>'Sub - Bloque'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_SUBLOQUES_AUX_STPOSICI'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select desc_SUB_bloque, COD_SUB_BLOQUE      ',
'',
'      from st_sub_bloques',
'     where cod_empresa  = :P_COD_EMPRESA',
'       and cod_sucursal = :p636_cod_sucursal_aux',
'       and cod_bloque = :p636_cod_bloque_aux'))
,p_lov_cascade_parent_items=>'P636_COD_BLOQUE_AUX'
,p_ajax_items_to_submit=>'P636_COD_BLOQUE_AUX'
,p_ajax_optimize_refresh=>'Y'
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
 p_id=>wwv_flow_imp.id(220287171474379732)
,p_name=>'P636_COD_ESTANTE_AUX'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(220284315412379704)
,p_prompt=>'Estante'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_ESTANTES_STPOSICI'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select desc_Estante, cod_estante',
' ',
'      from st_estantes',
'     where cod_empresa  = :P_COD_EMPRESA',
'       '))
,p_lov_display_null=>'YES'
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
 p_id=>wwv_flow_imp.id(220287210257379733)
,p_name=>'P636_COD_CUERPO_AUX'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(220284315412379704)
,p_prompt=>'Cuerpo'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select desc_cuerpo d,cod_cuerpo r ',
'from st_cuerpo',
'where cod_empresa  = :P_COD_EMPRESA     ',
'and cod_estante  = :P636_COD_ESTANTE_AUX     '))
,p_lov_cascade_parent_items=>'P636_COD_ESTANTE_AUX'
,p_ajax_items_to_submit=>'P636_COD_ESTANTE_AUX'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>30
,p_cMaxlength=>10
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(220287340846379734)
,p_name=>'P636_COD_NIVEL_AUX'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_imp.id(220284315412379704)
,p_prompt=>'Nivel'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select desc_nivel , COD_NIVEL',
'from st_niveles',
'where cod_empresa  = :P_COD_EMPRESA',
'and cod_estante   = :P636_COD_ESTANTE_AUX',
'and cod_cuerpo   = :P636_COD_CUERPO_AUX',
''))
,p_lov_cascade_parent_items=>'P636_COD_CUERPO_AUX'
,p_ajax_items_to_submit=>'P636_COD_CUERPO_AUX'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>30
,p_cMaxlength=>10
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
 p_id=>wwv_flow_imp.id(220287408585379735)
,p_name=>'P636_FECHA_ALTA_AUX'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_imp.id(220284315412379704)
,p_prompt=>'Datos Alta'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(220287573916379736)
,p_name=>'P636_COD_POSICION_AUX'
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_imp.id(220284315412379704)
,p_prompt=>unistr('ID Posici\00F3n')
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
 p_id=>wwv_flow_imp.id(221287292273777001)
,p_name=>'P636_EDITAR_AUX'
,p_item_sequence=>290
,p_item_plug_id=>wwv_flow_imp.id(220284315412379704)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(221289457283777023)
,p_name=>'P636_CHECKBOX_ESTADO'
,p_item_sequence=>250
,p_item_plug_id=>wwv_flow_imp.id(220284315412379704)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(221289516239777024)
,p_name=>'P636_CHECKBOX_AUTORIZAR'
,p_item_sequence=>270
,p_item_plug_id=>wwv_flow_imp.id(220284315412379704)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(221290599990777034)
,p_name=>'P636_COD_RESPONSABLE_AUX'
,p_item_sequence=>230
,p_item_plug_id=>wwv_flow_imp.id(220284315412379704)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(224284970003155404)
,p_name=>'P636_LARGO_MTS'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(217080615205856420)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(224285083902155405)
,p_name=>'P636_ANCHO_MTS'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_imp.id(217080615205856420)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(224285191488155406)
,p_name=>'P636_ALTO_MTS'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_imp.id(217080615205856420)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(224285226743155407)
,p_name=>'P636_PESO_KG'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_imp.id(217080615205856420)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(224285397128155408)
,p_name=>'P636_COD_USUARIO_ALTA'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_imp.id(217080615205856420)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(224285494909155409)
,p_name=>'P636_COD_USUARIO_BAJA'
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_imp.id(217080615205856420)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(224285561460155410)
,p_name=>'P636_FECHA_BAJA'
,p_item_sequence=>220
,p_item_plug_id=>wwv_flow_imp.id(217080615205856420)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(224285674171155411)
,p_name=>'P636_IND_MIGRADO_OS'
,p_item_sequence=>230
,p_item_plug_id=>wwv_flow_imp.id(217080615205856420)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(224285786207155412)
,p_name=>'P636_REG_ID_ORDEN'
,p_item_sequence=>240
,p_item_plug_id=>wwv_flow_imp.id(217080615205856420)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(224285829957155413)
,p_name=>'P636_IND_CELDA'
,p_item_sequence=>250
,p_item_plug_id=>wwv_flow_imp.id(217080615205856420)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(224288786965155442)
,p_name=>'P636_COD_CUERPO1'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(217080615205856420)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(224288804394155443)
,p_name=>'P636_COD_NIVEL1'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(217080615205856420)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(224289323335155448)
,p_name=>'P636_AUX_IMP_ETIQUETA'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(217082072947856434)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(225746683259182801)
,p_name=>'P636_AUX_COD_CUERPO'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(217082072947856434)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(225746701262182802)
,p_name=>'P636_AUX_COD_NIVEL'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(217082072947856434)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(234735823585433046)
,p_name=>'P636_DESC_SUCURSAL_AUX'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(220284315412379704)
,p_prompt=>unistr('Descripci\00F3n Sucursal')
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
 p_id=>wwv_flow_imp.id(234736115502433049)
,p_name=>'P636_DESC_BLOQUE_AUX'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(220284315412379704)
,p_prompt=>unistr('Descripci\00F3n Bloque')
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
 p_id=>wwv_flow_imp.id(234736294542433050)
,p_name=>'P636_DESC_SUB_BLOQUE_AUX'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(220284315412379704)
,p_prompt=>unistr('Descripci\00F3n Sub - Bloque')
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
 p_id=>wwv_flow_imp.id(377006745025867311)
,p_name=>'P636_COD_SUCURSAL_EDITAR'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(377006647129867310)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(377006848306867312)
,p_name=>'P636_DESC_SUCURSAL_EDITAR'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(377006647129867310)
,p_prompt=>unistr('Descripci\00F3n Sucursal')
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
 p_id=>wwv_flow_imp.id(377006924850867313)
,p_name=>'P636_COD_BLOQUE_EDITAR'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(377006647129867310)
,p_prompt=>'Bloque'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_BLOQUES_STPOSICI'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select desc_bloque, cod_bloque',
'      from st_bloques',
'     where cod_empresa  = :P_COD_EMPRESA',
'     and cod_sucursal = :P636_cod_suc_deposito ',
''))
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(377007075482867314)
,p_name=>'P636_DESC_BLOQUE_EDITAR'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(377006647129867310)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(377007180885867315)
,p_name=>'P636_COD_SUB_BLOQUE_EDITAR'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(377006647129867310)
,p_prompt=>'Sub - Bloque'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_SUBLOQUES_STPOSICI'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select desc_SUB_bloque, COD_SUB_BLOQUE      ',
'',
'      from st_sub_bloques',
'     where cod_empresa  = :P_COD_EMPRESA',
'       and cod_sucursal = :p636_cod_sucursal',
'       and cod_bloque = :p636_cod_bloque',
'',
' '))
,p_lov_cascade_parent_items=>'P636_COD_BLOQUE_EDITAR'
,p_ajax_items_to_submit=>'P636_COD_BLOQUE_EDITAR'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(377007292785867316)
,p_name=>'P636_DESC_SUB_BLOQUE_EDITAR'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(377006647129867310)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(377007378920867317)
,p_name=>'P636_COD_ESTANTE_EDITAR'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(377006647129867310)
,p_prompt=>'Estante'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_ESTANTES_STPOSICI'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select desc_Estante, cod_estante',
' ',
'      from st_estantes',
'     where cod_empresa  = :P_COD_EMPRESA',
'       '))
,p_lov_display_null=>'YES'
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
 p_id=>wwv_flow_imp.id(377007468485867318)
,p_name=>'P636_COD_CUERPO_EDITAR'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(377006647129867310)
,p_prompt=>'Cuerpo'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select desc_cuerpo d,cod_cuerpo r ',
'from st_cuerpo',
'where cod_empresa  = :P_COD_EMPRESA     ',
'and cod_estante  = :P636_COD_ESTANTE_EDITAR     '))
,p_lov_cascade_parent_items=>'P636_COD_ESTANTE_EDITAR'
,p_ajax_items_to_submit=>'P636_COD_ESTANTE_EDITAR'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>30
,p_cMaxlength=>10
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
 p_id=>wwv_flow_imp.id(377007524252867319)
,p_name=>'P636_COD_NIVEL_EDITAR'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(377006647129867310)
,p_prompt=>'Nivel'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select desc_nivel , COD_NIVEL',
'from st_niveles',
'where cod_empresa  = :P_COD_EMPRESA',
'and cod_estante   = :P636_COD_ESTANTE_EDITAR',
'and cod_cuerpo   = :P636_COD_CUERPO_EDITAR',
''))
,p_lov_cascade_parent_items=>'P636_COD_CUERPO_EDITAR'
,p_ajax_items_to_submit=>'P636_COD_CUERPO_EDITAR'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>30
,p_cMaxlength=>10
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(377007661288867320)
,p_name=>'P636_DATOS_ALTA_EDITAR'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(377006647129867310)
,p_prompt=>'Datos Alta'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(377007704225867321)
,p_name=>'P636_COD_POSICION_EDITAR'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(377006647129867310)
,p_prompt=>unistr('ID Posici\00F3n')
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
 p_id=>wwv_flow_imp.id(377007885537867322)
,p_name=>'P636_COD_RESPONSABLE_EDITAR'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(377006647129867310)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(377007915809867323)
,p_name=>'P636_CHECKBOX_ESTADO_EDITAR'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(377006647129867310)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(377008005760867324)
,p_name=>'P636_CHECKBOX_AUTORIZAR_EDITAR'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(377006647129867310)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(377008154875867325)
,p_name=>'P636_EDITAR_AUX_EDITAR'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(377006647129867310)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(377009659861867340)
,p_name=>'P636_SEQ_ID_VER'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(217082072947856434)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(377832287779331843)
,p_name=>'P636_ERROR'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(377832104346331842)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(378666475869118310)
,p_name=>'P636_AUX_CHECK_BOX'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(217082072947856434)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(378666853713118314)
,p_name=>'P636_ROW_ID_CAMBIO_ESTADO'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(217082072947856434)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(378667746008118323)
,p_name=>'P636_DESC_COD_USUARIO_ALTA'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(378667550316118321)
,p_pre_element_text=>'DATOS ALTA'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--preTextBlock'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(378667886787118324)
,p_name=>'P636_DESC_FECHA_ALTA'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(378667550316118321)
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_named_lov=>'LV_STPOSICI_COD_BLOQUE_EDITAR'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'     select cod_bloque||''-''||desc_bloque desc_bloque, cod_bloque',
'     from st_bloques',
'     where cod_empresa  = :P_COD_EMPRESA',
'     and cod_sucursal = :p636_cod_sucursal_EDITAR ',
''))
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(378667984379118325)
,p_name=>'P636_DESC_COD_USUARIO_BAJA'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(378667671933118322)
,p_pre_element_text=>'DATOS BAJA'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--preTextBlock'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(378668050733118326)
,p_name=>'P636_DESC_FECHA_BAJA'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(378667671933118322)
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_named_lov=>'LV_STPOSICI_COD_BLOQUE_EDITAR'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'     select cod_bloque||''-''||desc_bloque desc_bloque, cod_bloque',
'     from st_bloques',
'     where cod_empresa  = :P_COD_EMPRESA',
'     and cod_sucursal = :p636_cod_sucursal_EDITAR ',
''))
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(217082351019856437)
,p_name=>'DA_SUC_DEPOSITO'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P636_COD_SUC_DEPOSITO'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(217082426708856438)
,p_event_id=>wwv_flow_imp.id(217082351019856437)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF :P636_COD_SUC_DEPOSITO is not null THEN',
'		BEGIN',
'        :P636_ERR := null;',
'				select descripcion',
'				  into :P636_DESC_SUC_DEPOSITO',
'				  from sucursales',
'				 where cod_empresa  = :P_COD_EMPRESA',
'				   and cod_sucursal = :P636_COD_SUC_DEPOSITO;',
'		EXCEPTION',
'				when no_data_found then',
'						:P636_COD_SUC_DEPOSITO := NULL;',
unistr('						:P636_ERR := ''No se encuentra la sucursal. Favor verificar el c\00F3digo ingresado.'';'),
'				when others then',
'						:P636_COD_SUC_DEPOSITO := NULL;',
'						APEX_DEBUG.ERROR(''Error al consultar la sucursal. ''||sqlerrm);',
'		END;	',
'END IF;'))
,p_attribute_02=>'P636_COD_SUC_DEPOSITO'
,p_attribute_03=>'P636_DESC_SUC_DEPOSITO,P636_ERR'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(217082533726856439)
,p_name=>'DA_COD_BLOQUE_AUX'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P636_COD_BLOQUE_AUX'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(235975791747647301)
,p_event_id=>wwv_flow_imp.id(217082533726856439)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P636_ERR := null;',
'IF :P636_COD_SUCURSAL_AUX IS NULL THEN',
'    SELECT C001',
'    INTO :P636_COD_SUCURSAL_AUX',
'    FROM APEX_COLLECTIONS',
'    WHERE COLLECTION_NAME = ''ST_BLOQUES''',
'    AND SEQ_ID = :P636_EDITAR;',
'END IF;',
'if :P636_COD_BLOQUE_AUX is not null AND :P636_COD_SUCURSAL_AUX IS NOT NULL then',
'	  DECLARE',
'	  	  vcod_responsable  varchar2(15);',
'	  	  vdesc_responsable personas.nombre%type;',
'	  	  i                 NUMBER;',
'',
'	  BEGIN',
'',
'				BEGIN',
'                   select desc_bloque,',
'							     cod_responsable',
'						  into :P636_DESC_BLOQUE_AUX,',
'						  	   vcod_responsable',
'						  from st_bloques',
'						 where cod_empresa  = :P_COD_EMPRESA',
'						   and cod_sucursal = :P636_COD_SUCURSAL_AUX',
'						   and cod_bloque   = :P636_COD_BLOQUE_AUX; ',
'                EXCEPTION     ',
'					  when no_data_found then',
'					      :P636_DESC_BLOQUE_AUX := null;',
unistr('						  :P636_ERR := ''No se encuentra el bloque. Favor verificar el c\00F3digo ingresado.  '';'),
'								',
'						when others then',
'						    :P636_DESC_BLOQUE_AUX := null;',
'								APEX_DEBUG.ERROR (''Error al consultar el bloque. ''||sqlerrm);',
'									',
'				END;',
'				',
'				if vcod_responsable is not null and :P636_TIPO = ''1'' then',
'						begin',
'						    select p.nombre',
'						      into vdesc_responsable',
'						      from rh_empleados e,',
'						           personas p',
'						     where e.cod_empresa  = :P_COD_EMPRESA',
'						       and e.cod_empleado = vcod_responsable',
'						       and e.cod_persona  = p.cod_persona;',
'						exception',
'						    when others then',
'						        vdesc_responsable := null;',
'						end;',
'',
'				end if;',
'		END;',
'end if;'))
,p_attribute_02=>'P636_COD_SUCURSAL_AUX,P636_COD_BLOQUE_AUX,P636_EDITAR'
,p_attribute_03=>'P636_DESC_BLOQUE_AUX,P636_ERR'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P636_COD_BLOQUE_AUX'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(217082803069856442)
,p_name=>'DA_SUB_BLOQUE'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P636_COD_SUB_BLOQUE'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(217082901444856443)
,p_event_id=>wwv_flow_imp.id(217082803069856442)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P636_COD_SUB_BLOQUE is not null then',
'	  if :P636_COD_SUC_DEPOSITO is null then',
unistr('	  	  :P636_ERR := ''ERROR 1-El c\00F3digo de dep\00F3sito no puede ser nulo. Favor ingrese el dato. '';'),
'	  end if;',
'	  ',
'	  if :P636_COD_BLOQUE is null then',
unistr('	  	  :P636_ERR := ''El c\00F3digo de bloque no puede ser nulo. Favor ingrese el dato. '';'),
'	  end if;',
'	  ',
'	  DECLARE',
'	  	  vcod_responsable  varchar2(15);',
'	  	  vdesc_responsable personas.nombre%type;',
'	  	  i                 NUMBER;',
'	  BEGIN',
'      :P636_ERR := null;',
'	    		BEGIN',
'						select desc_sub_bloque,',
'								   cod_responsable',
'						  into :P636_DESC_SUB_BLOQUE,',
'						       vcod_responsable',
'						  from st_sub_bloques',
'						 where cod_empresa    = :P_COD_EMPRESA',
'						   and cod_sucursal   = :P636_COD_SUC_DEPOSITO',
'						   and cod_bloque     = :P636_COD_BLOQUE',
'						   and cod_sub_bloque = :P636_COD_SUB_BLOQUE;       ',
'				EXCEPTION ',
'						when no_data_found then',
'								:P636_DESC_SUB_BLOQUE := null;',
unistr('								:P636_ERR := ''No se encuentra el sub-bloque. Favor verificar el c\00F3digo ingresado. '';'),
'						when others then',
'								:P636_DESC_SUB_BLOQUE := null;',
'								APEX_DEBUG.ERROR(''Error al consultar el sub-bloque. ''||sqlerrm);',
'',
'				END;',
'				',
'				if vcod_responsable is not null and :P636_TIPO = ''2'' then',
'						begin',
'						    select p.nombre',
'						      into vdesc_responsable',
'						      from rh_empleados e,',
'						           personas p',
'						     where e.cod_empresa  = :P_COD_EMPRESA',
'						       and e.cod_empleado = vcod_responsable',
'						       and e.cod_persona  = p.cod_persona;',
'						exception',
'						    when others then',
'						        vdesc_responsable := null;',
'						end;',
'						',
'					/*	valerta := find_alert( ''INFORMACION'' );',
'					  SET_ALERT_BUTTON_PROPERTY( valerta, ALERT_BUTTON1, LABEL, ''Aceptar'' );',
'					  SET_ALERT_BUTTON_PROPERTY( valerta, ALERT_BUTTON2, LABEL, ''Cancelar'' );',
'					  alerta( ''El sub-bloque ''||:P636_COD_SUB_BLOQUE||'' ya tiene asignado como responsable a ''||vdesc_responsable||',
unistr('					          ''\00BFDesea continuar?'',''Responsables de posiciones'',1, i);'),
'					  SET_ALERT_BUTTON_PROPERTY( valerta, ALERT_BUTTON1, LABEL, ''Aceptar'' );',
'					  SET_ALERT_BUTTON_PROPERTY( valerta, ALERT_BUTTON2, LABEL, '''' );',
'					  ',
'					  if i = ALERT_BUTTON2 THEN',
'								:P636_COD_SUB_BLOQUE  := null;',
'								:P636_DESC_SUB_BLOQUE := null;',
'					  end if; */',
'				end if;',
'		END;',
'end if;'))
,p_attribute_02=>'P636_COD_SUB_BLOQUE,P636_COD_SUC_DEPOSITO,P636_COD_BLOQUE,P636_TIPO'
,p_attribute_03=>'P636_DESC_SUB_BLOQUE,P636_ERR'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(220285546914379716)
,p_event_id=>wwv_flow_imp.id(217082803069856442)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'-- POST QUERY --- ',
'if :P636_COD_SUB_BLOQUE is not null then',
'	  DECLARE',
'	  	  vcod_resp_subbloque varchar2(15);',
'	  BEGIN',
'				BEGIN',
'						select desc_sub_bloque,',
'									 cod_responsable',
'						  into :P636_DESC_SUB_BLOQUE,',
'						  		 vcod_resp_subbloque',
'						  from st_sub_bloques',
'						 where cod_empresa    = :P_COD_EMPRESA',
'						   and cod_sucursal   = :P636_COD_SUCURSAL',
'						   and cod_bloque     = :P636_COD_BLOQUE',
'						   and cod_sub_bloque = :P636_COD_SUB_BLOQUE;       ',
'				EXCEPTION ',
'						when no_data_found then',
'								:P636_DESC_SUB_BLOQUE := null;',
'								vcod_resp_subbloque   := null;',
'						when others then',
'								:P636_DESC_SUB_BLOQUE := null;',
'								vcod_resp_subbloque   := null;',
'				END;',
'				',
'				if vcod_resp_subbloque is not null then',
'				    begin',
'								select p.nombre',
'								  into :P636_DESC_RESP_SUB_BLOQUE',
'								  from rh_empleados e,',
'								  	   personas p',
'								 where e.cod_empresa = :P_COD_EMPRESA',
'								   and e.cod_Empleado= vcod_resp_subbloque',
'								   and e.cod_persona = p.cod_persona;',
'						exception',
'						    when no_data_found then',
'						        :P636_DESC_RESP_SUB_BLOQUE := null;',
'						    when others then',
'						        :P636_DESC_RESP_SUB_BLOQUE := null;',
'						end;',
'				else',
'					  :P636_DESC_RESP_SUB_BLOQUE := ''DEFINIDO EN BLOQUE O ESTANTE'';',
'				end if;',
'		END;',
'end if;'))
,p_attribute_03=>'P636_DESC_SUB_BLOQUE,P636_DESC_RESP_SUB_BLOQUE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(217083231646856446)
,p_name=>'DA_ESTANTE'
,p_event_sequence=>40
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P636_COD_ESTANTE'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(217083395197856447)
,p_event_id=>wwv_flow_imp.id(217083231646856446)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P636_COD_ESTANTE is not null then',
'	  if :P636_COD_SUC_DEPOSITO is null then',
unistr('	  	  :P636_ERR := ''ERROR 2-El c\00F3digo de dep\00F3sito no puede ser nulo. Favor ingrese el dato. '';'),
'',
'	  end if;',
'	  ',
'	  if :P636_COD_BLOQUE is null then',
unistr('	  	  :P636_ERR := ''El c\00F3digo de bloque no puede ser nulo. Favor ingrese el dato. '';'),
'',
'	  end if;',
'	  ',
'	  if :P636_COD_SUB_BLOQUE is null then',
unistr('	  	  :P636_ERR := ''El c\00F3digo de sub-bloque no puede ser nulo. Favor ingrese el dato. '';'),
'',
'	  end if;',
'	  ',
'	  DECLARE',
'	  	  vcod_responsable  varchar2(15);',
'	  	  vdesc_responsable personas.nombre%type;',
'	  	  i                 NUMBER;',
'	  BEGIN',
'      :P636_ERR := null;				',
'				BEGIN',
'						select e.desc_estante,',
'						       p.cod_responsable',
'						  into :P636_DESC_ESTANTE,',
'						       vcod_responsable',
'						  from st_posiciones p,',
'						  	   st_estantes e',
'					   where p.cod_empresa    = :P_COD_EMPRESA',
'					     and p.cod_sucursal   = :P636_COD_SUC_DEPOSITO',
'					     and p.cod_bloque     = :P636_COD_BLOQUE',
'					     and p.cod_sub_bloque = :P636_COD_SUB_BLOQUE',
'						   and p.cod_estante    = :P636_COD_ESTANTE',
'						   ',
'						   and p.cod_empresa    = e.cod_empresa',
'						   and p.cod_estante    = e.cod_estante',
'						   and rownum			      = 1;       ',
'				EXCEPTION ',
'						when no_Data_found then',
'								:P636_DESC_ESTANTE := null;',
unistr('								--:P636_ERR := ''No se encuentra el estante. Favor verificar el c\00F3digo ingresado.  '';'),
'',
'						when others then',
'								:P636_DESC_ESTANTE := null;',
'								APEX_DEBUG.ERROR(''Error al consultar el estante. ''||sqlerrm);',
'',
'				END;',
'				',
'				if vcod_responsable is not null and :P636_TIPO = ''3'' then',
'						begin',
'						    select p.nombre',
'						      into vdesc_responsable',
'						      from rh_empleados e,',
'						           personas p',
'						     where e.cod_empresa  = :P_COD_EMPRESA',
'						       and e.cod_empleado = vcod_responsable',
'						       and e.cod_persona  = p.cod_persona;',
'						exception',
'						    when others then',
'						        vdesc_responsable := null;',
'						end;',
'						',
'					/*	valerta := find_alert( ''INFORMACION'' );',
'					  SET_ALERT_BUTTON_PROPERTY( valerta, ALERT_BUTTON1, LABEL, ''Aceptar'' );',
'					  SET_ALERT_BUTTON_PROPERTY( valerta, ALERT_BUTTON2, LABEL, ''Cancelar'' );',
'					  alerta( ''El estante ''||:variables.cod_estante||'' ya tiene asignado como responsable a ''||vdesc_responsable||',
unistr('					          ''\00BFDesea continuar?'',''Responsables de posiciones'',1, i);'),
'					  SET_ALERT_BUTTON_PROPERTY( valerta, ALERT_BUTTON1, LABEL, ''Aceptar'' );',
'					  SET_ALERT_BUTTON_PROPERTY( valerta, ALERT_BUTTON2, LABEL, '''' );',
'					  ',
'					  if i = ALERT_BUTTON2 THEN',
'								:variables.cod_sub_bloque  := null;',
'								:variables.desc_sub_bloque := null;',
'					  end if; */',
'				end if;',
'		END;',
'end if;'))
,p_attribute_02=>'P636_COD_ESTANTE,P636_COD_SUC_DEPOSITO,P636_COD_BLOQUE_AUX,P636_COD_SUB_BLOQUE'
,p_attribute_03=>'P636_DESC_ESTANTE,P636_ERR'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(220285698338379717)
,p_event_id=>wwv_flow_imp.id(217083231646856446)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P636_COD_ESTANTE is not null then',
'		BEGIN',
'				select desc_Estante',
'				  into :P636_DESC_ESTANTE',
'				  from st_estantes',
'			   where cod_empresa  = :P_COD_EMPRESA',
'				   and cod_estante  = :P636_COD_ESTANTE;       ',
'		EXCEPTION ',
'				when no_Data_found then',
'						:P636_DESC_ESTANTE := null;',
'				when others then',
'						:P636_DESC_ESTANTE := null;',
'		END;',
'end if;'))
,p_attribute_02=>'P636_COD_ESTANTE'
,p_attribute_03=>'P636_DESC_ESTANTE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(218548270679660925)
,p_name=>'DA_CONSULTAR'
,p_event_sequence=>60
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(217081682387856430)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(218548306347660926)
,p_event_id=>wwv_flow_imp.id(218548270679660925)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    STPOSICI.PR_CARGAR_DATOS(PI_TIPO => :P636_TIPO,',
'                             PI_COD_EMPRESA => :P_COD_EMPRESA,',
'                             PI_COD_SUC_DEPOSITO => :P636_COD_SUC_DEPOSITO ,',
'                             PI_COD_BLOQUE => :P636_COD_BLOQUE ,',
'                             PI_COD_SUB_BLOQUE => :P636_COD_SUB_BLOQUE ,',
'                             PI_COD_ESTANTE => :P636_COD_ESTANTE ,',
'                             PI_COD_RESPONSABLE => :P636_COD_RESPONSABLE,',
'                             PO_DESC_SUCURSAL => :P636_DESC_SUCURSAL,',
'                             PO_DESC_RESP_BLOQUE => :P636_DESC_RESP_BLOQUE,',
'                             PO_DESC_RESP_SUB_BLOQUE => :P636_DESC_RESP_SUB_BLOQUE,',
'                             PO_DESC_RESP_ESTANTE => :P636_DESC_RESP_ESTANTE,',
'                             PO_DESC_CUERPO => :P636_DESC_CUERPO,',
'                             PO_DESC_NIVEL => :P636_DESC_NIVEL);',
'',
'',
'',
':P636_AUX := 1;                             ',
'EXCEPTION',
'    when others then ',
'        APEX_DEBUG.ERROR(''Error al cargar datos. '' || SQLERRM);',
'',
'END;'))
,p_attribute_02=>'P636_COD_RESPONSABLE,P636_TIPO,P636_COD_EMPRESA,P636_COD_SUC_DEPOSITO,P636_COD_BLOQUE,P636_COD_SUB_BLOQUE,P636_COD_ESTANTE'
,p_attribute_03=>'P636_DESC_SUCURSAL,P636_DESC_RESP_BLOQUE,P636_DESC_RESP_SUB_BLOQUE,P636_DESC_RESP_ESTANTE,P636_DESC_CUERPO,P636_DESC_NIVEL,P636_AUX'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(218548429978660927)
,p_event_id=>wwv_flow_imp.id(218548270679660925)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(218549910080660942)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P636_AUX'
,p_client_condition_expression=>'1'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(220286537140379726)
,p_event_id=>wwv_flow_imp.id(218548270679660925)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(220284130728379702)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(218548566851660928)
,p_event_id=>wwv_flow_imp.id(218548270679660925)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(218549910080660942)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(220286650205379727)
,p_event_id=>wwv_flow_imp.id(218548270679660925)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(220284130728379702)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(218549425247660937)
,p_name=>'DA_LIMPIAR'
,p_event_sequence=>70
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(218549391869660936)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(218549518546660938)
,p_event_id=>wwv_flow_imp.id(218549425247660937)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>unistr('\00BFSeguro/a que desea limpiar los datos ingresados?')
,p_attribute_03=>'information'
,p_attribute_04=>'fa-eraser'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(218549630802660939)
,p_event_id=>wwv_flow_imp.id(218549425247660937)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P636_TIPO := null;',
':P636_COD_SUC_DEPOSITO := null;',
':P636_DESC_SUC_DEPOSITO := null;',
':P636_COD_BLOQUE := null;',
':P636_DESC_BLOQUE := null;',
':P636_COD_SUB_BLOQUE := null;',
':P636_DESC_SUB_BLOQUE := null;',
':P636_COD_ESTANTE := null;',
':P636_DESC_ESTANTE := null;',
':P636_COD_RESPONSABLE := null;',
':P636_DESC_RESPONSABLE := null;',
':P636_DESC_SUCURSAL := null;',
':P636_DESC_RESP_BLOQUE := null;',
':P636_DESC_RESP_SUB_BLOQUE := null;',
':P636_DESC_RESP_ESTANTE := null;',
':P636_DESC_CUERPO := null;',
':P636_DESC_NIVEL := null;',
':P636_ERR := NULL;',
''))
,p_attribute_03=>'P636_COD_BLOQUE,P636_TIPO,P636_COD_SUC_DEPOSITO,P636_DESC_SUC_DEPOSITO,P636_COD_BLOQUE_AUX,P636_DESC_BLOQUE,P636_COD_SUB_BLOQUE,P636_DESC_SUB_BLOQUE,P636_COD_ESTANTE,P636_DESC_ESTANTE,P636_DESC_RESPONSABLE,P636_DESC_SUCURSAL,P636_DESC_RESP_BLOQUE,P63'
||'6_DESC_RESP_SUB_BLOQUE,P636_DESC_RESP_ESTANTE,P636_DESC_CUERPO,P636_DESC_NIVEL,P636_COD_RESPONSABLE,P636_ERR'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(219746519914610224)
,p_event_id=>wwv_flow_imp.id(218549425247660937)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(218549910080660942)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(220288739904379748)
,p_event_id=>wwv_flow_imp.id(218549425247660937)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(220284130728379702)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(219746179519610220)
,p_event_id=>wwv_flow_imp.id(218549425247660937)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(218549910080660942)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(219748262654610241)
,p_name=>'DA_EDITAR'
,p_event_sequence=>100
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P636_EDITAR'
,p_condition_element=>'P636_EDITAR'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(219748375968610242)
,p_event_id=>wwv_flow_imp.id(219748262654610241)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'mostrar(2);'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(221288231047777011)
,p_event_id=>wwv_flow_imp.id(219748262654610241)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select      C001 COD_SUCURSAL,',
'            (select descripcion			   ',
'			  from sucursales',
'			 where cod_empresa  = :P_COD_EMPRESA',
'			   and cod_sucursal = C001) DESC_SUCURSAL,',
'            c002 COD_BLOQUE,',
'            c003 COD_SUB_BLOQUE,',
'            c004 COD_ESTANTE,',
'            c005 COD_CUERPO,',
'            c006 COD_NIVEL,',
'            c007 COD_POSICION,',
'            c012 FECHA_ALTA          ',
'into',
'            :P636_COD_SUCURSAL_EDITAR,',
'            :P636_DESC_SUCURSAL_EDITAR,',
'            :P636_COD_BLOQUE_EDITAR,',
'            :P636_COD_SUB_BLOQUE_EDITAR,',
'            :P636_COD_ESTANTE_EDITAR,',
'            :P636_COD_CUERPO_EDITAR,',
'            :P636_COD_NIVEL_EDITAR,',
'            :P636_COD_POSICION_EDITAR,',
'            :P636_DATOS_ALTA_EDITAR',
'FROM APEX_COLLECTIONS',
'where collection_name = ''ST_BLOQUES''',
'and seq_id = :P636_EDITAR ;'))
,p_attribute_02=>'P636_EDITAR'
,p_attribute_03=>'P636_DESC_SUCURSAL_EDITAR,P636_COD_BLOQUE_EDITAR,P636_COD_SUB_BLOQUE_EDITAR,P636_COD_ESTANTE_EDITAR,P636_COD_CUERPO_EDITAR,P636_COD_NIVEL_EDITAR,P636_COD_POSICION_EDITAR,P636_DATOS_ALTA_EDITAR,P636_COD_SUCURSAL_EDITAR'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(220287678580379737)
,p_event_id=>wwv_flow_imp.id(219748262654610241)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(377006647129867310)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(221290365099777032)
,p_event_id=>wwv_flow_imp.id(219748262654610241)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P636_COD_SUCURSAL_AUX'
,p_server_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(219748723245610246)
,p_name=>'DA_ELIMINAR'
,p_event_sequence=>110
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P636_ELIMINAR'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(219748867452610247)
,p_event_id=>wwv_flow_imp.id(219748723245610246)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>unistr('\00BFEsta seguro que desea eliminar?')
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(219748953375610248)
,p_event_id=>wwv_flow_imp.id(219748723245610246)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE ',
'v_row_id varchar2(50);',
'BEGIN',
':P636_MSG := null;',
'    begin',
'        select c021',
'        into v_row_id ',
'        from apex_collections',
'        where collection_name = ''ST_BLOQUES''',
'        and seq_id = :P636_ELIMINAR;',
'    exception',
'        when others then    ',
'           apex_debug.error(sqlerrm);',
'    end;        ',
'',
'    if v_row_id is null then ',
unistr('        -- Elimina el registro de la colecci\00F3n'),
'        APEX_COLLECTION.DELETE_MEMBER(',
'        p_collection_name => ''ST_BLOQUES'',',
'        p_seq            => :P636_ELIMINAR',
'        );',
'    else ',
'        BEGIN',
'            DELETE ST_POSICIONES WHERE ROWID = v_row_id;',
'            :P636_ERR:= ''Registro eliminado exitosamente'';',
'        EXCEPTION',
'            WHEN OTHERS THEN',
'                :P636_ERR :=''OCURRIO UN ERROR''||SQLERRM; ',
'        END;',
'    end if;      ',
'',
' ',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;'))
,p_attribute_02=>'P636_ELIMINAR'
,p_attribute_03=>'P636_ERR'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(378666135952118307)
,p_event_id=>wwv_flow_imp.id(219748723245610246)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    STPOSICI.PR_CARGAR_DATOS(PI_TIPO => :P636_TIPO,',
'                             PI_COD_EMPRESA => :P_COD_EMPRESA,',
'                             PI_COD_SUC_DEPOSITO => :P636_COD_SUC_DEPOSITO ,',
'                             PI_COD_BLOQUE => :P636_COD_BLOQUE ,',
'                             PI_COD_SUB_BLOQUE => :P636_COD_SUB_BLOQUE ,',
'                             PI_COD_ESTANTE => :P636_COD_ESTANTE ,',
'                             PI_COD_RESPONSABLE => :P636_COD_RESPONSABLE,',
'                             PO_DESC_SUCURSAL => :P636_DESC_SUCURSAL,',
'                             PO_DESC_RESP_BLOQUE => :P636_DESC_RESP_BLOQUE,',
'                             PO_DESC_RESP_SUB_BLOQUE => :P636_DESC_RESP_SUB_BLOQUE,',
'                             PO_DESC_RESP_ESTANTE => :P636_DESC_RESP_ESTANTE,',
'                             PO_DESC_CUERPO => :P636_DESC_CUERPO,',
'                             PO_DESC_NIVEL => :P636_DESC_NIVEL);',
'',
'',
'',
':P636_AUX := 1;                             ',
'EXCEPTION',
'    when others then ',
'        APEX_DEBUG.ERROR(''Error al cargar datos. '' || SQLERRM);',
'',
'END;'))
,p_attribute_02=>'P636_COD_RESPONSABLE,P636_TIPO,P636_COD_EMPRESA,P636_COD_SUC_DEPOSITO,P636_COD_BLOQUE,P636_COD_SUB_BLOQUE,P636_COD_ESTANTE'
,p_attribute_03=>'P636_DESC_SUCURSAL,P636_DESC_RESP_BLOQUE,P636_DESC_RESP_SUB_BLOQUE,P636_DESC_RESP_ESTANTE,P636_DESC_CUERPO,P636_DESC_NIVEL,P636_AUX'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(219749048784610249)
,p_event_id=>wwv_flow_imp.id(219748723245610246)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(218549910080660942)
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
 p_id=>wwv_flow_imp.id(220284841407379709)
,p_name=>'DA_ASIGNAR'
,p_event_sequence=>120
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(217081759371856431)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(220284931788379710)
,p_event_id=>wwv_flow_imp.id(220284841407379709)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P636_ERR := null;',
':P636_MSG := null;',
unistr(' --Asignaci\00F3n de responsable por ZONA/BLOQUE'),
'if :P636_TIPO = ''1'' then',
'    if :P636_COD_SUC_DEPOSITO is null then',
unistr('	  	  :P636_ERR := ''ERROR 3-El c\00F3digo de dep\00F3sito no puede ser nulo. Favor ingrese el dato. '';'),
'    elsif :P636_COD_BLOQUE is null then',
unistr('	  	  :P636_ERR := ''El c\00F3digo de bloque no puede ser nulo. Favor ingrese el dato. '';'),
'',
'	ELSE',
'		begin',
'		    update st_bloques',
'		       set cod_responsable = :P636_COD_RESPONSABLE',
'		     where cod_empresa  = :P_COD_EMPRESA',
'		       and cod_sucursal = :P636_COD_SUC_DEPOSITO',
'		       and cod_bloque   = :P636_COD_BLOQUE;',
'              :P636_MSG := ''Responsable asignado correctamente para el bloque '' || :P636_COD_BLOQUE;',
'		exception',
'		    when others then',
'		        :P636_ERR := ''Error al actualizar el responsable del bloque ''||:P636_COD_BLOQUE||''. '';',
'',
'		end;',
'    end if;',
'		',
'	',
unistr('--Asignaci\00F3n de responsable por SUB ZONA/SUB BLOQUE'),
'elsif :P636_TIPO = ''2'' then',
'		if :P636_COD_SUC_DEPOSITO is null then',
unistr('	  	  :P636_ERR := ''ERROR 4-El c\00F3digo de dep\00F3sito no puede ser nulo. Favor ingrese el dato. '';'),
'',
'	  ',
'	  elsif :P636_COD_BLOQUE is null then',
unistr('	  	  :P636_ERR := ''El c\00F3digo de bloque no puede ser nulo. Favor ingrese el dato. '';'),
'',
'	  ',
'	  elsif :P636_COD_SUB_BLOQUE is null then',
unistr('	  	  :P636_ERR := ''El c\00F3digo de sub-bloque no puede ser nulo. Favor ingrese el dato.'';'),
'',
'',
'	else',
'		begin',
'		    update st_sub_bloques',
'		       set cod_responsable = :P636_COD_RESPONSABLE',
'		     where cod_empresa  = :P_COD_EMPRESA',
'		       and cod_sucursal = :P636_COD_SUC_DEPOSITO',
'		       and cod_bloque   = :P636_COD_BLOQUE',
'		       and cod_sub_bloque = :P636_COD_SUB_BLOQUE;',
'              :P636_MSG := ''Responsable asignado correctamente para el sub-bloque '' || :P636_COD_SUB_BLOQUE;',
'		exception',
'		    when others then',
'		        :P636_ERR := ''Error al actualizar el responsable del sub-bloque ''||:P636_COD_SUB_BLOQUE||''. '';',
'',
'		end;',
'	end if;',
'	',
'',
unistr('--Asignaci\00F3n de responsable por ESTANTE	'),
'else ',
'		if :P636_COD_SUC_DEPOSITO is null then',
unistr('	  	  :P636_ERR := ''ERROR 5-El c\00F3digo de dep\00F3sito no puede ser nulo. Favor ingrese el dato. '';'),
'',
'	  ',
'	  ',
'	  elsif :P636_COD_BLOQUE is null then',
unistr('	  	  :P636_ERR := ''El c\00F3digo de bloque no puede ser nulo. Favor ingrese el dato. '';'),
'',
'	  ',
'	  ',
'	  elsif :P636_COD_SUB_BLOQUE is null then',
unistr('	  	  :P636_ERR := ''El c\00F3digo de sub-bloque no puede ser nulo. Favor ingrese el dato.'';'),
'',
'	 ',
'',
'      elsif :P636_COD_ESTANTE is null then',
unistr('	  	  :P636_ERR := ''El c\00F3digo de estante no puede ser nulo. Favor ingrese el dato. '';'),
'',
'	 ',
'	  ',
'	  ',
'	  begin',
'		    update st_posiciones',
'		       set cod_responsable = :P636_COD_RESPONSABLE',
'		     where cod_empresa  = :P_COD_EMPRESA',
'		       and cod_sucursal = :P636_COD_SUC_DEPOSITO',
'		       and cod_bloque   = :P636_COD_BLOQUE',
'		       and cod_sub_bloque = :P636_COD_SUB_BLOQUE',
'		       and cod_estante    = :P636_COD_ESTANTE;',
'              :P636_MSG := ''Responsable removido correctamente para el estante '' || :P636_COD_ESTANTE;',
'		exception',
'		    when others then',
'		        :P636_ERR := ''Error al actualizar el responsable del sub-bloque ''||:P636_COD_SUB_BLOQUE||''. '';',
'',
'		end;',
'		',
'end if;',
'end if;'))
,p_attribute_02=>'P636_COD_SUC_DEPOSITO,P636_COD_BLOQUE_AUX,P636_COD_SUB_BLOQUE,P636_COD_ESTANTE,P636_COD_RESPONSABLE'
,p_attribute_03=>'P636_ERR,P636_MSG'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(225747109762182806)
,p_event_id=>wwv_flow_imp.id(220284841407379709)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P636_TIPO = ''2'' then',
'    if :P636_COD_SUC_DEPOSITO is null then',
unistr('        :P636_ERR := ''ERROR 6-El c\00F3digo de dep\00F3sito no puede ser nulo. Favor ingrese el dato.'';'),
'    ',
'    else ',
'        if  :P636_COD_BLOQUE is null then',
unistr('            :P636_ERR := ''El c\00F3digo de bloque no puede ser nulo. Favor ingrese el dato.'';'),
'        ',
'        else',
'            if :P636_COD_SUB_BLOQUE is null then',
unistr('               :P636_ERR := ''El c\00F3digo de sub-bloque no puede ser nulo. Favor ingrese el dato.'';'),
'        ',
'            else',
'                if :P636_COD_RESPONSABLE is null then',
unistr('                   :P636_ERR := ''El c\00F3digo de responsable no puede ser nulo. Favor ingrese el dato.'';'),
'                end if;',
'            end if;',
'        end if;',
'    end if;',
'        ',
'    else',
'        begin',
'            update st_sub_bloques',
'            set cod_responsable = :P636_COD_RESPONSABLE',
'            where cod_empresa  = :P_COD_EMPRESA',
'            and cod_sucursal = :P636_COD_SUC_DEPOSITO',
'            and cod_bloque   = :P636_COD_BLOQUE',
'            and cod_sub_bloque = :P636_COD_SUB_BLOQUE;',
'            :P636_MSG := ''Responsable asignado correctamente para el sub-bloque '' || :P636_COD_SUB_BLOQUE;',
'        exception',
'            when others then',
'                :P636_ERR := ''Error al actualizar el responsable del sub-bloque '' || :P636_COD_SUB_BLOQUE || ''.'';',
'        end;',
'    end if;'))
,p_attribute_02=>'P636_COD_SUC_DEPOSITO,P636_COD_BLOQUE_AUX,P636_COD_SUB_BLOQUE,P636_COD_ESTANTE,P636_COD_RESPONSABLE'
,p_attribute_03=>'P636_ERR'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_server_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(220285095166379711)
,p_name=>'DA_REVOCAR'
,p_event_sequence=>130
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(217081977844856433)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(220285192400379712)
,p_event_id=>wwv_flow_imp.id(220285095166379711)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P636_ERR := null;',
':P636_MSG := null;',
'',
unistr('-- Asignaci\00F3n de responsable por ZONA/BLOQUE'),
'if :P636_TIPO = ''1'' then',
'    if :P636_COD_SUC_DEPOSITO is null then',
unistr('        :P636_ERR := ''ERROR 7-El c\00F3digo de dep\00F3sito no puede ser nulo. Favor ingrese el dato. '';'),
'    elsif :P636_COD_BLOQUE is null then',
unistr('        :P636_ERR := ''El c\00F3digo de bloque no puede ser nulo. Favor ingrese el dato. '';'),
'    else',
'        begin',
'            update st_bloques',
'            set cod_responsable = null',
'            where cod_empresa  = :P_COD_EMPRESA',
'            and cod_sucursal = :P636_COD_SUC_DEPOSITO',
'            and cod_bloque   = :P636_COD_BLOQUE;',
'            :P636_MSG := ''Responsable removido correctamente para el bloque '' || :P636_COD_BLOQUE;',
'        exception',
'            when others then',
'                :P636_ERR := ''Error al actualizar el responsable del bloque '' || :P636_COD_BLOQUE || ''. '';',
'        end;',
'    end if;',
unistr('-- Asignaci\00F3n de responsable por SUB ZONA/SUB BLOQUE'),
'elsif :P636_TIPO = ''2'' then',
'    if :P636_COD_SUC_DEPOSITO is null then',
unistr('        :P636_ERR := ''ERROR 8-El c\00F3digo de dep\00F3sito no puede ser nulo. Favor ingrese el dato. '';'),
'    elsif :P636_COD_BLOQUE is null then',
unistr('        :P636_ERR := ''El c\00F3digo de bloque no puede ser nulo. Favor ingrese el dato. '';'),
'    elsif :P636_COD_SUB_BLOQUE is null then',
unistr('        :P636_ERR := ''El c\00F3digo de sub-bloque no puede ser nulo. Favor ingrese el dato.'';'),
'    else',
'        begin',
'            update st_sub_bloques',
'            set cod_responsable = null',
'            where cod_empresa  = :P_COD_EMPRESA',
'            and cod_sucursal = :P636_COD_SUC_DEPOSITO',
'            and cod_bloque   = :P636_COD_BLOQUE',
'            and cod_sub_bloque = :P636_COD_SUB_BLOQUE;',
'            :P636_MSG := ''Responsable removido correctamente para el sub-bloque '' || :P636_COD_SUB_BLOQUE;',
'        exception',
'            when others then',
'                :P636_ERR := ''Error al actualizar el responsable del sub-bloque '' || :P636_COD_SUB_BLOQUE || ''. '';',
'        end;',
'    end if;',
'',
unistr('-- Asignaci\00F3n de responsable por ESTANTE'),
'else',
'    if :P636_COD_SUC_DEPOSITO is null then',
unistr('        :P636_ERR := ''ERROR 9-El c\00F3digo de dep\00F3sito no puede ser nulo. Favor ingrese el dato. '';'),
'    elsif :P636_COD_BLOQUE is null then',
unistr('        :P636_ERR := ''El c\00F3digo de bloque no puede ser nulo. Favor ingrese el dato. '';'),
'    elsif :P636_COD_SUB_BLOQUE is null then',
unistr('        :P636_ERR := ''El c\00F3digo de sub-bloque no puede ser nulo. Favor ingrese el dato.'';'),
'    elsif :P636_COD_ESTANTE is null then',
unistr('        :P636_ERR := ''El c\00F3digo de estante no puede ser nulo. Favor ingrese el dato. '';'),
'    else',
'        begin',
'            update st_posiciones',
'            set cod_responsable = null',
'            where cod_empresa  = :P_COD_EMPRESA',
'            and cod_sucursal = :P636_COD_SUC_DEPOSITO',
'            and cod_bloque   = :P636_COD_BLOQUE',
'            and cod_sub_bloque = :P636_COD_SUB_BLOQUE',
'            and cod_estante    = :P636_COD_ESTANTE;',
'            :P636_MSG := ''Responsable removido correctamente para el estante '' || :P636_COD_ESTANTE;',
'        exception',
'            when others then',
'                :P636_ERR := ''Error al actualizar el responsable del estante '' || :P636_COD_ESTANTE || ''. '';',
'        end;',
'    end if;',
'end if;',
''))
,p_attribute_02=>'P636_COD_SUC_DEPOSITO,P636_COD_BLOQUE_AUX,P636_COD_SUB_BLOQUE,P636_COD_ESTANTE'
,p_attribute_03=>'P636_ERR,P636_MSG'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(220285235905379713)
,p_name=>'DA_SUCURSAL'
,p_event_sequence=>140
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P636_COD_SUCURSAL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(220285369631379714)
,p_event_id=>wwv_flow_imp.id(220285235905379713)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF :P636_COD_SUCURSAL is not null THEN',
'		BEGIN',
'				select descripcion',
'				  into :P636_DESC_SUCURSAL',
'				  from sucursales',
'				 where cod_empresa  = :P_COD_EMPRESA',
'				   and cod_sucursal = :P636_COD_SUCURSAL;',
'		EXCEPTION',
'				when no_data_found then',
'						:P636_DESC_SUCURSAL := NULL;',
'				when others then',
'						:P636_DESC_SUCURSAL := NULL;',
'		END;	',
'END IF;'))
,p_attribute_02=>'P636_COD_SUCURSAL'
,p_attribute_03=>'P636_DESC_SUCURSAL'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(220286022136379721)
,p_name=>'DA_CUERPO'
,p_event_sequence=>150
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P636_COD_CUERPO'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(220286134151379722)
,p_event_id=>wwv_flow_imp.id(220286022136379721)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P636_COD_CUERPO is not null then',
'		BEGIN',
'				select desc_cuerpo',
'				  into :P636_DESC_CUERPO',
'				  from st_cuerpo',
'				 where cod_empresa  = :P_COD_EMPRESA    ',
'			  	 and cod_estante  = :P636_COD_ESTANTE',
'				   and cod_cuerpo   = :P636_COD_CUERPO;       ',
'		EXCEPTION     ',
'			  when no_data_found then',
'						:P636_DESC_CUERPO := null;',
'				when others then',
'						:P636_DESC_CUERPO := null;',
'		END;',
'end if;',
''))
,p_attribute_02=>'P636_COD_CUERPO,P636_COD_ESTANTE'
,p_attribute_03=>'P636_DESC_CUERPO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(220286278432379723)
,p_name=>'DA_COD_NIVEL'
,p_event_sequence=>160
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P636_COD_NIVEL1'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(220286351813379724)
,p_event_id=>wwv_flow_imp.id(220286278432379723)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P636_COD_NIVEL is not null then',
'		BEGIN',
'				select desc_nivel',
'				  into :P636_DESC_NIVEL',
'				  from st_niveles',
'				 where cod_empresa  = :P_COD_EMPRESA     ',
'			  	 and cod_estante  = :P636_COD_ESTANTE',
'				   and cod_cuerpo   = :P636_COD_CUERPO',
'				   and cod_nivel		= :P636_COD_NIVEL;       ',
'		EXCEPTION     ',
'			  when no_data_found then',
'						:P636_DESC_NIVEL := null;',
'				when others then',
'						:P636_DESC_NIVEL := null;',
'		END;',
'end if;'))
,p_attribute_02=>'P636_COD_CUERPO,P636_COD_ESTANTE,P636_COD_NIVEL1'
,p_attribute_03=>'P636_DESC_NIVEL'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(220287781895379738)
,p_name=>'DA_BLOQUE'
,p_event_sequence=>170
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P636_COD_BLOQUE'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(220287857259379739)
,p_event_id=>wwv_flow_imp.id(220287781895379738)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P636_COD_BLOQUE is not null then',
'	',
'	  DECLARE',
'	  	  vcod_responsable  varchar2(15);',
'	  	  vdesc_responsable personas.nombre%type;',
'	  	  i                 NUMBER;',
'',
'	  BEGIN',
'      :P636_ERR := null;',
'				BEGIN',
'						select desc_bloque,',
'							     cod_responsable',
'						  into :P636_DESC_BLOQUE,',
'						  	   vcod_responsable',
'						  from st_bloques',
'						 where cod_empresa  = :P_COD_EMPRESA',
'						   and cod_sucursal = :P636_COD_SUC_DEPOSITO',
'						   and cod_bloque   = :P636_COD_BLOQUE;       ',
'				EXCEPTION     ',
'					  when no_data_found then',
'					      :P636_DESC_BLOQUE := null;',
unistr('						  :P636_ERR := ''No se encuentra el bloque. Favor verificar el c\00F3digo ingresado.  '';'),
'								',
'						when others then',
'						    :P636_DESC_BLOQUE := null;',
'								APEX_DEBUG.ERROR (''Error al consultar el bloque. ''||sqlerrm);',
'									',
'				END;',
'				',
'				if vcod_responsable is not null and :P636_TIPO = ''1'' then',
'						begin',
'						    select p.nombre',
'						      into vdesc_responsable',
'						      from rh_empleados e,',
'						           personas p',
'						     where e.cod_empresa  = :P_COD_EMPRESA',
'						       and e.cod_empleado = vcod_responsable',
'						       and e.cod_persona  = p.cod_persona;',
'						exception',
'						    when others then',
'						        vdesc_responsable := null;',
'						end;',
'						',
'					/*	valerta := find_alert( ''INFORMACION'' );',
'					  SET_ALERT_BUTTON_PROPERTY( valerta, ALERT_BUTTON1, LABEL, ''Aceptar'' );',
'					  SET_ALERT_BUTTON_PROPERTY( valerta, ALERT_BUTTON2, LABEL, ''Cancelar'' );',
'					  alerta( ''El bloque ''||:P636_COD_BLOQUE||'' ya tiene asignado como responsable a ''||vdesc_responsable||',
unistr('					          ''\00BFDesea continuar?'',''Responsables de posiciones'',1, i);'),
'					  SET_ALERT_BUTTON_PROPERTY( valerta, ALERT_BUTTON1, LABEL, ''Aceptar'' );',
'					  SET_ALERT_BUTTON_PROPERTY( valerta, ALERT_BUTTON2, LABEL, '''' );',
'					  ',
'					  if i = ALERT_BUTTON2 THEN',
'								:P636_COD_BLOQUE  := null;',
'								:P636_DESC_BLOQUE := null;',
'					  end if; */',
'				end if;',
'		END;',
'end if;'))
,p_attribute_02=>'P636_COD_BLOQUE'
,p_attribute_03=>'P636_DESC_BLOQUE,P636_ERR'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(220287985401379740)
,p_name=>'DA_ERR'
,p_event_sequence=>180
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P636_ERR'
,p_condition_element=>'P636_ERR'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(220288037927379741)
,p_event_id=>wwv_flow_imp.id(220287985401379740)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'&P636_ERR.'
,p_attribute_03=>'information'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P636_ERR'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(220288180881379742)
,p_name=>'DA_AGREGAR'
,p_event_sequence=>190
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(220286747113379728)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(220288210024379743)
,p_event_id=>wwv_flow_imp.id(220288180881379742)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'mostrar(1);'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(221287656091777005)
,p_event_id=>wwv_flow_imp.id(220288180881379742)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P636_EDITAR := null;',
':P636_COD_SUCURSAL_AUX := null;',
':P636_DESC_SUCURSAL_AUX := NULL;',
':P636_COD_BLOQUE_AUX := NULL;',
':P636_DESC_BLOQUE_AUX := null;',
':P636_COD_SUB_BLOQUE_AUX := null;',
':P636_DESC_SUB_BLOQUE_AUX := NULL;',
':P636_COD_ESTANTE_AUX := null;',
':P636_COD_CUERPO_AUX := null;',
':P636_COD_NIVEL_AUX := null;',
':P636_FECHA_ALTA_AUX := sysdate;',
':P636_COD_POSICION_AUX := null;',
':P636_ERR := null;'))
,p_attribute_03=>'P636_FECHA_ALTA_AUX,P636_EDITAR,P636_COD_SUCURSAL_AUX,P636_COD_BLOQUE_AUX,P636_COD_SUB_BLOQUE_AUX,P636_COD_ESTANTE_AUX,P636_COD_CUERPO_AUX,P636_COD_NIVEL_AUX,P636_FECHA_ALTA_AUX,P636_COD_POSICION_AUX,P636_ERR,P636_DESC_SUCURSAL_AUX,P636_DESC_BLOQUE_A'
||'UX,P636_DESC_SUB_BLOQUE_AUX'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(377832720407331848)
,p_event_id=>wwv_flow_imp.id(220288180881379742)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.message.clearErrors();'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(220288340392379744)
,p_event_id=>wwv_flow_imp.id(220288180881379742)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(220284315412379704)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(221289842442777027)
,p_event_id=>wwv_flow_imp.id(220288180881379742)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P636_COD_SUCURSAL_AUX'
,p_server_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(220288588505379746)
,p_name=>'DA_CANCELAR'
,p_event_sequence=>200
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(220284727586379708)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(220288660939379747)
,p_event_id=>wwv_flow_imp.id(220288588505379746)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(220284315412379704)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(221287716963777006)
,p_name=>'DA_EDITAR_AUX'
,p_event_sequence=>220
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P636_EDITAR_AUX'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
,p_display_when_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(221287973834777008)
,p_event_id=>wwv_flow_imp.id(221287716963777006)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'mostrar(2);'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(221287866964777007)
,p_event_id=>wwv_flow_imp.id(221287716963777006)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select',
'            c013 COD_EMPRESA,',
'            c001 COD_SUCURSAL,',
'            c002 COD_BLOQUE,',
'            c003 COD_SUB_BLOQUE,',
'            c004 COD_ESTANTE,',
'            c005 COD_CUERPO,',
'            c006 COD_NIVEL,',
'            c012 FECHA_ALTA,',
'            c007 COD_POSICION',
'',
'into',
'            :P636_COD_EMPRESA,',
'            :P636_COD_SUCURSAL_AUX,',
'            :P636_COD_BLOQUE_AUX,',
'            :P636_COD_SUB_BLOQUE_AUX,',
'            :P636_COD_ESTANTE_AUX,',
'            :P636_COD_CUERPO_AUX,',
'            :P636_COD_NIVEL_AUX,',
'            :P636_FECHA_ALTA_AUX,',
'            :P636_COD_POSICION_AUX',
'',
'',
'FROM APEX_COLLECTIONS',
'where collection_name = ''ST_BLOQUES''',
'and seq_id = :P636_EDITAR_AUX;'))
,p_attribute_02=>'P636_EDITAR'
,p_attribute_03=>'P636_FECHA_ALTA_AUX,P636_COD_SUCURSAL_AUX,P636_COD_BLOQUE_AUX,P636_COD_SUB_BLOQUE_AUX,P636_COD_ESTANTE_AUX,P636_COD_CUERPO_AUX,P636_COD_NIVEL_AUX,P636_FECHA_ALTA_AUX,P636_COD_POSICION_AUX,P636_COD_EMPRESA'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(221288015105777009)
,p_event_id=>wwv_flow_imp.id(221287716963777006)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(220284315412379704)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(221288472335777013)
,p_name=>'DA_INSERTAR'
,p_event_sequence=>230
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(220284591990379706)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(377832469857331845)
,p_event_id=>wwv_flow_imp.id(221288472335777013)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.message.clearErrors();'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(377832644269331847)
,p_event_id=>wwv_flow_imp.id(221288472335777013)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'null;'
,p_attribute_02=>'P636_ERROR'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_server_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(377832327806331844)
,p_event_id=>wwv_flow_imp.id(221288472335777013)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'validarNoNulo();'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(214010068831750345)
,p_event_id=>wwv_flow_imp.id(221288472335777013)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    V_CODIGO VARCHAR2(500); ',
'BEGIN',
'    V_CODIGO := :P636_COD_SUCURSAL_AUX||''-''||:P636_COD_BLOQUE_AUX||''-''|| :P636_COD_SUB_BLOQUE_AUX ||''-''|| :P636_COD_ESTANTE_AUX ||''-''||',
'            :P636_COD_CUERPO_AUX ||''-''|| :P636_COD_NIVEL_AUX;',
'    ',
'    apex_collection.add_member(p_collection_name => ''ST_BLOQUES'',',
'       P_C001 => :P636_COD_SUCURSAL_AUX,',
'       P_C002 => :P636_COD_BLOQUE_AUX,',
'       P_C003 => :P636_COD_SUB_BLOQUE_AUX,',
'       P_C004 => :P636_COD_ESTANTE_AUX,',
'       P_C005 => :P636_COD_CUERPO_AUX,',
'       P_C006 => :P636_COD_NIVEL_AUX,',
'       P_C007 => V_CODIGO,',
'       P_C008 => null,',
'       P_C009 => null,',
'       P_C010 => null,',
'       P_C011 => null,',
'       P_C012 => :P636_FECHA_ALTA_AUX,',
'       P_C013 => null,',
'       P_C014 => :P_COD_USUARIO,',
'       P_C015 => ''S'',',
'       P_C016 =>  null,',
'       P_C017 => ''N'',',
'       P_C018 =>  null,',
'       P_C019 => ''N'',',
'       P_C020 => :P636_COD_RESPONSABLE_AUX,',
'       P_C035 => :P636_COD_EMPRESA,',
'       P_c050 => ''I''); --  V_CODIGO como P_C036',
'',
'    BEGIN',
'        STPOSICI.PR_GUARDAR_DATOS(PO_MSJ => :P636_ERR);',
'        EXCEPTION',
'            WHEN OTHERS THEN',
'                APEX_DEBUG.ERROR(''ERROR EN DA_ACEPTAR_CREAR: ''||SQLERRM);',
'    END;',
'',
'   ',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(sqlerrm);',
'END;',
''))
,p_attribute_02=>'P636_COD_EMPRESA,P636_COD_SUCURSAL_AUX,P636_COD_BLOQUE_AUX,P636_COD_SUB_BLOQUE_AUX,P636_COD_ESTANTE_AUX,P636_COD_CUERPO_AUX,P636_COD_NIVEL_AUX,P636_COD_POSICION_AUX,P636_ALTO_MTS,P636_ANCHO_MTS,P636_LARGO_MTS,P636_PESO_KG,P636_FECHA_ALTA_AUX,P636_CHE'
||'CKBOX_ESTADO,P636_DESC_COD_USUARIO_BAJA,P636_IND_MIGRADO_OS,P636_REG_ID_ORDEN,P636_IND_CELDA,P636_COD_RESPONSABLE_AUX'
,p_attribute_03=>'P636_ERR'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P636_ERROR'
,p_client_condition_expression=>'0'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(378665590325118301)
,p_event_id=>wwv_flow_imp.id(221288472335777013)
,p_event_result=>'TRUE'
,p_action_sequence=>80
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    STPOSICI.PR_CARGAR_DATOS(PI_TIPO => :P636_TIPO,',
'                             PI_COD_EMPRESA => :P_COD_EMPRESA,',
'                             PI_COD_SUC_DEPOSITO => :P636_COD_SUC_DEPOSITO ,',
'                             PI_COD_BLOQUE => :P636_COD_BLOQUE ,',
'                             PI_COD_SUB_BLOQUE => :P636_COD_SUB_BLOQUE ,',
'                             PI_COD_ESTANTE => :P636_COD_ESTANTE ,',
'                             PI_COD_RESPONSABLE => :P636_COD_RESPONSABLE,',
'                             PO_DESC_SUCURSAL => :P636_DESC_SUCURSAL,',
'                             PO_DESC_RESP_BLOQUE => :P636_DESC_RESP_BLOQUE,',
'                             PO_DESC_RESP_SUB_BLOQUE => :P636_DESC_RESP_SUB_BLOQUE,',
'                             PO_DESC_RESP_ESTANTE => :P636_DESC_RESP_ESTANTE,',
'                             PO_DESC_CUERPO => :P636_DESC_CUERPO,',
'                             PO_DESC_NIVEL => :P636_DESC_NIVEL);',
'',
'',
'',
':P636_AUX := 1;                             ',
'EXCEPTION',
'    when others then ',
'        APEX_DEBUG.ERROR(''Error al cargar datos. '' || SQLERRM);',
'',
'END;'))
,p_attribute_02=>'P636_COD_RESPONSABLE,P636_TIPO,P636_COD_EMPRESA,P636_COD_SUC_DEPOSITO,P636_COD_BLOQUE,P636_COD_SUB_BLOQUE,P636_COD_ESTANTE'
,p_attribute_03=>'P636_DESC_SUCURSAL,P636_DESC_RESP_BLOQUE,P636_DESC_RESP_SUB_BLOQUE,P636_DESC_RESP_ESTANTE,P636_DESC_CUERPO,P636_DESC_NIVEL,P636_AUX'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(378665647183118302)
,p_event_id=>wwv_flow_imp.id(221288472335777013)
,p_event_result=>'TRUE'
,p_action_sequence=>90
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(218549910080660942)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P636_AUX'
,p_client_condition_expression=>'1'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(378665781412118303)
,p_event_id=>wwv_flow_imp.id(221288472335777013)
,p_event_result=>'TRUE'
,p_action_sequence=>100
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(220284130728379702)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(378665879466118304)
,p_event_id=>wwv_flow_imp.id(221288472335777013)
,p_event_result=>'TRUE'
,p_action_sequence=>110
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(218549910080660942)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(378665901158118305)
,p_event_id=>wwv_flow_imp.id(221288472335777013)
,p_event_result=>'TRUE'
,p_action_sequence=>120
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(220284130728379702)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(221288669521777015)
,p_event_id=>wwv_flow_imp.id(221288472335777013)
,p_event_result=>'TRUE'
,p_action_sequence=>130
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(218549910080660942)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P636_ERROR'
,p_client_condition_expression=>'0'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(221290290397777031)
,p_event_id=>wwv_flow_imp.id(221288472335777013)
,p_event_result=>'TRUE'
,p_action_sequence=>140
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(220284315412379704)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P636_ERROR'
,p_client_condition_expression=>'0'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(221290642587777035)
,p_name=>'DA_COD_RESPONSABLE'
,p_event_sequence=>240
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P636_COD_RESPONSABLE'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(221290787021777036)
,p_event_id=>wwv_flow_imp.id(221290642587777035)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P636_COD_RESPONSABLE is not null then',
'	  declare',
'				vactivo varchar2(1);	  ',
'	  begin',
'      :P636_ERR := null;',
'				begin',
'						select p.nombre,',
'								   e.activo',
'						  into :P636_DESC_RESPONSABLE,',
'						       vactivo',
'						  from rh_empleados e,',
'						  	   personas p',
'						 where e.cod_empresa = :P_COD_EMPRESA',
'						   and e.cod_Empleado= :P636_COD_RESPONSABLE',
'						   and e.cod_persona = p.cod_persona;',
'                           ',
'				exception',
'				    when no_data_found then',
'				        :P636_DESC_RESPONSABLE := null;',
unistr('						    :P636_ERR := ''No se encuentra el empleado responsable. Favor verificar el c\00F3digo ingresado. '';'),
'',
'				    when others then',
'				    		:P636_DESC_RESPONSABLE := null;',
'						    APEX_DEBUG.ERROR(''Error al consultar el empleado responsable. ''||sqlerrm);',
'',
'				end;',
'',
'                if nvl(vactivo, ''N'') = ''N'' then',
'				 :P636_DESC_RESPONSABLE := null;  ',
'				 :P636_ERR := ''El empleado ingresado se encuentra inactivo. '';',
'				',
'			  END IF;',
'			',
'		end;',
'else',
'		:P636_DESC_RESPONSABLE := null;',
'end if;'))
,p_attribute_02=>'P636_COD_RESPONSABLE'
,p_attribute_03=>'P636_DESC_RESPONSABLE,P636_ERR'
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
 p_id=>wwv_flow_imp.id(220285909179379720)
,p_event_id=>wwv_flow_imp.id(221290642587777035)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P636_COD_RESPONSABLE is not null then',
'	  begin',
'				select p.nombre',
'				  into :P636_DESC_RESP_ESTANTE',
'				  from rh_empleados e,',
'				  	   personas p',
'				 where e.cod_empresa = :P_COD_EMPRESA',
'				   and e.cod_Empleado= :P636_COD_RESPONSABLE ',
'				   and e.cod_persona = p.cod_persona;',
'		exception',
'		    when no_data_found then',
'		        :P636_DESC_RESP_ESTANTE := null;',
'		    when others then',
'		    		:P636_DESC_RESP_ESTANTE := null;',
'		end;',
'ELSE',
'		:P636_DESC_RESP_ESTANTE := ''DEFINIDO EN BLOQUE O SUB-BLOQUE'';		',
'end if;',
''))
,p_attribute_02=>'P636_COD_RESPONSABLE'
,p_attribute_03=>'P636_DESC_RESP_ESTANTE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(224288334375155438)
,p_name=>'DA_IMPRIMIR_ETIQUETA'
,p_event_sequence=>250
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(219746055688610219)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(224288463023155439)
,p_event_id=>wwv_flow_imp.id(224288334375155438)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'imprimirEtiqueta(       apex.item(''P636_COD_ESTANTE'').getValue(),',
'                        apex.item(''P636_COD_SUB_BLOQUE'').getValue(),',
'                        apex.item(''P636_COD_SUCURSAL'').getValue(),',
'                        apex.item(''P636_COD_NIVEL_AUX'').getValue(),',
'                        apex.item(''P636_COD_CUERPO_AUX'').getValue(),',
'                        apex.item(''P636_COD_BLOQUE'').getValue());'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(224289496144155449)
,p_name=>'DA_IMP_ETIQUETA'
,p_event_sequence=>260
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P636_AUX_IMP_ETIQUETA'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(224289560799155450)
,p_event_id=>wwv_flow_imp.id(224289496144155449)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    select C005, -- cod_cuerpo',
'           C006 -- cod_nivel',
'',
'    into :P636_AUX_COD_CUERPO,',
'         :P636_AUX_COD_NIVEL',
'',
'    FROM   APEX_COLLECTIONS',
'',
'    WHERE  COLLECTION_NAME = ''ST_BLOQUES''',
'    AND SEQ_ID = :P636_AUX_IMP_ETIQUETA;',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR (''Error en DA_IMP_ETIQUETA - 01.'' || SQLERRM);',
'END;'))
,p_attribute_02=>'P636_AUX_IMP_ETIQUETA'
,p_attribute_03=>'P636_AUX_COD_CUERPO,P636_AUX_COD_NIVEL'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(225746834939182803)
,p_event_id=>wwv_flow_imp.id(224289496144155449)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'imprimirEtiqueta(       apex.item(''P636_COD_ESTANTE'').getValue(),',
'                        apex.item(''P636_COD_SUB_BLOQUE'').getValue(),',
'                        apex.item(''P636_COD_SUCURSAL'').getValue(),',
'                        apex.item(''P636_AUX_COD_CUERPO'').getValue(),',
'                        apex.item(''P636_AUX_COD_NIVEL'').getValue(),',
'                        apex.item(''P636_COD_BLOQUE'').getValue());'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(225746988755182804)
,p_name=>'DA_MSG'
,p_event_sequence=>270
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P636_MSG'
,p_condition_element=>'P636_MSG'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(225747066217182805)
,p_event_id=>wwv_flow_imp.id(225746988755182804)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'&P636_MSG.'
,p_attribute_03=>'success'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(234735967123433047)
,p_name=>'DA_COD_SUCURSAL_AUX'
,p_event_sequence=>280
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P636_COD_SUCURSAL_AUX'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(234736010920433048)
,p_event_id=>wwv_flow_imp.id(234735967123433047)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
' :P636_ERR := null;',
' IF :P636_COD_SUCURSAL_AUX is not null THEN',
'		BEGIN     ',
'				select descripcion',
'				  into :P636_DESC_SUCURSAL_AUX',
'				  from sucursales',
'				 where cod_empresa  = :P_COD_EMPRESA',
'				   and cod_sucursal = :P636_COD_SUCURSAL_AUX;',
'		EXCEPTION',
'				when no_data_found then',
'						:P636_COD_SUCURSAL_AUX := NULL;',
unistr('						:P636_ERR := ''No se encuentra la sucursal. Favor verificar el c\00F3digo ingresado.'';'),
'				when others then',
'						:P636_COD_SUCURSAL_AUX := NULL;',
'						APEX_DEBUG.ERROR(''Error al consultar la sucursal. ''||sqlerrm);',
'		END;	',
'  ',
'    ',
'END IF;'))
,p_attribute_02=>'P636_COD_SUCURSAL_AUX'
,p_attribute_03=>'P636_DESC_SUCURSAL_AUX,P636_ERR'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(235975810423647302)
,p_name=>'DA_SUB_BLOQUE_AUX'
,p_event_sequence=>290
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P636_COD_SUB_BLOQUE_AUX'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(235975946365647303)
,p_event_id=>wwv_flow_imp.id(235975810423647302)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P636_ERR := null;',
'',
'IF :P636_COD_SUCURSAL_AUX IS NULL THEN',
'    SELECT C001',
'    INTO :P636_COD_SUCURSAL_AUX',
'    FROM APEX_COLLECTIONS',
'    WHERE COLLECTION_NAME = ''ST_BLOQUES''',
'    AND SEQ_ID = :P636_EDITAR;',
'END IF;',
'if :P636_COD_SUB_BLOQUE_AUX is NOT null then',
'	  if :P636_COD_SUCURSAL_AUX is null then',
unistr('	  	  :P636_ERR := ''ERROR 10-El c\00F3digo de dep\00F3sito no puede ser nulo. Favor ingrese el dato. '';'),
'	  eLSif  :P636_COD_BLOQUE_AUX is null then',
unistr('	  	  :P636_ERR := ''El c\00F3digo de bloque no puede ser nulo. Favor ingrese el dato. '';'),
'	  ELSE	  ',
'        	  DECLARE',
'        	  	  vcod_responsable  varchar2(15);',
'        	  	  vdesc_responsable personas.nombre%type;',
'        	  	  i                 NUMBER;',
'        	  BEGIN',
'        	    		BEGIN',
'        						select desc_sub_bloque,',
'        								   cod_responsable',
'        						  into :P636_DESC_SUB_BLOQUE_AUX,',
'        						       vcod_responsable',
'        						  from st_sub_bloques',
'        						 where cod_empresa    = :P_COD_EMPRESA',
'        						   and cod_sucursal   = :P636_COD_SUCURSAL_AUX',
'        						   and cod_bloque     = :P636_COD_BLOQUE_AUX',
'        						   and cod_sub_bloque = :P636_COD_SUB_BLOQUE_AUX;       ',
'        				EXCEPTION ',
'        						when no_data_found then',
'        								:P636_DESC_SUB_BLOQUE_AUX := null;',
unistr('        								:P636_ERR := ''No se encuentra el sub-bloque. Favor verificar el c\00F3digo ingresado. '';'),
'        						when others then',
'        								:P636_DESC_SUB_BLOQUE_AUX := null;',
'        								APEX_DEBUG.ERROR(''Error al consultar el sub-bloque. ''||sqlerrm);',
'',
'        				END;',
'        				',
'        				if vcod_responsable is not null and :P636_TIPO = ''2'' then',
'        						begin',
'        						    select p.nombre',
'        						      into vdesc_responsable',
'        						      from rh_empleados e,',
'        						           personas p',
'        						     where e.cod_empresa  = :P_COD_EMPRESA',
'        						       and e.cod_empleado = vcod_responsable',
'        						       and e.cod_persona  = p.cod_persona;',
'        						exception',
'        						    when others then',
'        						        vdesc_responsable := null;',
'        						end;',
'        					',
'        		 		end if;',
'        		 END;',
'        END IF;',
'end if;'))
,p_attribute_02=>'P636_COD_BLOQUE_AUX,P636_COD_SUB_BLOQUE_AUX,P636_COD_SUCURSAL_AUX,P636_EDITAR'
,p_attribute_03=>'P636_DESC_SUB_BLOQUE_AUX,P636_ERR'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P636_COD_BLOQUE_AUX'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(377008714048867331)
,p_name=>'DA_GUARDAR_EDITAR'
,p_event_sequence=>300
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(377008442616867328)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(378666347456118309)
,p_event_id=>wwv_flow_imp.id(377008714048867331)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.message.clearErrors();'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(378666250389118308)
,p_event_id=>wwv_flow_imp.id(377008714048867331)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'validarNoNuloEditar();'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(377009020968867334)
,p_event_id=>wwv_flow_imp.id(377008714048867331)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    V_CODIGO VARCHAR2(500); ',
'BEGIN',
'   :P636_ERR := null;   ',
'    IF :P636_COD_BLOQUE_EDITAR is not null and :P636_COD_SUB_BLOQUE_EDITAR is not null',
'        and :P636_COD_ESTANTE_EDITAR is not null and :P636_COD_CUERPO_EDITAR is not null and :P636_COD_NIVEL_EDITAR is not null ',
'        and :P636_DATOS_ALTA_EDITAR is not null then',
'',
'            V_CODIGO := :P636_COD_SUCURSAL_EDITAR||''-''||:P636_COD_BLOQUE_EDITAR||''-''|| :P636_COD_SUB_BLOQUE_EDITAR ||''-''|| :P636_COD_ESTANTE_EDITAR ||''-''||',
'            :P636_COD_CUERPO_EDITAR ||''-''|| :P636_COD_NIVEL_EDITAR;',
'            ',
'            STPOSICI.PR_UPDATE_DETALLE(',
'                       PI_SEQ => :P636_EDITAR,   ',
'                       PI_COD_BLOQUE => :P636_COD_BLOQUE_EDITAR,',
'                       PI_COD_SUB_BLOQUE => :P636_COD_SUB_BLOQUE_EDITAR,',
'                       PI_COD_ESTANTE => :P636_COD_ESTANTE_EDITAR,',
'                       PI_COD_CUERPO => :P636_COD_CUERPO_EDITAR,',
'                       PI_COD_NIVEL => :P636_COD_NIVEL_EDITAR,',
'                       PI_FECHA_ALTA => :P636_DATOS_ALTA_EDITAR,',
'                       PI_COD_POSICION => V_CODIGO);',
'            BEGIN',
'                STPOSICI.PR_GUARDAR_DATOS(PO_MSJ => :P636_ERR);',
'            EXCEPTION',
'                WHEN OTHERS THEN',
'                APEX_DEBUG.ERROR(''ERROR EN DA_ACEPTAR_CREAR: ''||SQLERRM);',
'            END;',
'    ELSE',
'        :P636_ERR:=''Por favor complete los campos obligatorios'';',
'end if;',
'    ',
'    EXCEPTION',
'        WHEN OTHERS THEN',
'            APEX_DEBUG.ERROR(SQLERRM);',
'',
'',
'END;'))
,p_attribute_02=>'P636_EDITAR,P636_COD_BLOQUE_EDITAR,P636_COD_SUB_BLOQUE_EDITAR,P636_COD_ESTANTE_EDITAR,P636_COD_CUERPO_EDITAR,P636_COD_NIVEL_EDITAR,P636_DATOS_ALTA_EDITAR,P636_COD_SUCURSAL_EDITAR'
,p_attribute_03=>'P636_ERR'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P636_ERROR'
,p_client_condition_expression=>'0'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(378666056769118306)
,p_event_id=>wwv_flow_imp.id(377008714048867331)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    STPOSICI.PR_CARGAR_DATOS(PI_TIPO => :P636_TIPO,',
'                             PI_COD_EMPRESA => :P_COD_EMPRESA,',
'                             PI_COD_SUC_DEPOSITO => :P636_COD_SUC_DEPOSITO ,',
'                             PI_COD_BLOQUE => :P636_COD_BLOQUE ,',
'                             PI_COD_SUB_BLOQUE => :P636_COD_SUB_BLOQUE ,',
'                             PI_COD_ESTANTE => :P636_COD_ESTANTE ,',
'                             PI_COD_RESPONSABLE => :P636_COD_RESPONSABLE,',
'                             PO_DESC_SUCURSAL => :P636_DESC_SUCURSAL,',
'                             PO_DESC_RESP_BLOQUE => :P636_DESC_RESP_BLOQUE,',
'                             PO_DESC_RESP_SUB_BLOQUE => :P636_DESC_RESP_SUB_BLOQUE,',
'                             PO_DESC_RESP_ESTANTE => :P636_DESC_RESP_ESTANTE,',
'                             PO_DESC_CUERPO => :P636_DESC_CUERPO,',
'                             PO_DESC_NIVEL => :P636_DESC_NIVEL);',
'',
'',
'',
':P636_AUX := 1;                             ',
'EXCEPTION',
'    when others then ',
'        APEX_DEBUG.ERROR(''Error al cargar datos. '' || SQLERRM);',
'',
'END;'))
,p_attribute_02=>'P636_COD_RESPONSABLE,P636_TIPO,P636_COD_EMPRESA,P636_COD_SUC_DEPOSITO,P636_COD_BLOQUE,P636_COD_SUB_BLOQUE,P636_COD_ESTANTE'
,p_attribute_03=>'P636_DESC_SUCURSAL,P636_DESC_RESP_BLOQUE,P636_DESC_RESP_SUB_BLOQUE,P636_DESC_RESP_ESTANTE,P636_DESC_CUERPO,P636_DESC_NIVEL,P636_AUX'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P636_ERROR'
,p_client_condition_expression=>'0'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(377009297764867336)
,p_event_id=>wwv_flow_imp.id(377008714048867331)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(218549910080660942)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P636_ERROR'
,p_client_condition_expression=>'0'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(377009162917867335)
,p_event_id=>wwv_flow_imp.id(377008714048867331)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(377006647129867310)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P636_ERROR'
,p_client_condition_expression=>'0'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(377009449711867338)
,p_name=>'DA_CANCELAR_EDITAR'
,p_event_sequence=>310
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(377008224921867326)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(377009515744867339)
,p_event_id=>wwv_flow_imp.id(377009449711867338)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(377006647129867310)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(377009799049867341)
,p_name=>'DA_SEQ_ID_VER'
,p_event_sequence=>320
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P636_SEQ_ID_VER'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(377009982311867343)
,p_event_id=>wwv_flow_imp.id(377009799049867341)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select    ',
'            (select descripcion			   ',
'			  from sucursales',
'			 where cod_empresa  = :P_COD_EMPRESA',
'			   and cod_sucursal = C001) DESC_SUCURSAL,',
'            ( 	select p.nombre			 ',
'				  from rh_empleados e,',
'				  	   personas p',
'				 where e.cod_empresa = c035 ',
'				   and e.cod_Empleado= C020 --cod_responsable bloque',
'				   and e.cod_persona = p.cod_persona)DESC_RESP_BLOQUE ,            ',
'            (	select p.nombre',
'				  from rh_empleados e,',
'				  	   personas p',
'				 where e.cod_empresa = :P_COD_EMPRESA',
'				   and e.cod_Empleado= c030 --cod_responsable sub.bloque',
'				   and e.cod_persona = p.cod_persona) DESC_RESP_SUB_BLOQUE,',
'         ',
'     ',
'            c004 COD_ESTANTE,',
'            c005 COD_CUERPO,',
'            c006 COD_NIVEL,',
'            C012 fecha_alta,',
'            C013 fecha_baja,',
'            C014 cod_usuario_alta,',
'            C016 cod_usuario_baja   ',
'into',
'            :P636_DESC_SUCURSAL,',
'            :P636_DESC_RESP_BLOQUE,',
'            :P636_DESC_RESP_SUB_BLOQUE,',
'            :P636_DESC_RESP_ESTANTE,',
'            :P636_DESC_CUERPO,',
'            :P636_DESC_NIVEL,',
'            :P636_DESC_FECHA_ALTA,',
'            :P636_DESC_FECHA_BAJA,',
'            :P636_DESC_COD_USUARIO_ALTA,',
'            :P636_DESC_COD_USUARIO_BAJA',
'         ',
'FROM APEX_COLLECTIONS',
'where collection_name = ''ST_BLOQUES''',
'and seq_id = :P636_SEQ_ID_VER ;',
'',
'',
'          '))
,p_attribute_02=>'P636_SEQ_ID_VER'
,p_attribute_03=>'P636_DESC_FECHA_ALTA,P636_DESC_FECHA_BAJA,P636_DESC_COD_USUARIO_ALTA,P636_DESC_COD_USUARIO_BAJA,P636_DESC_SUCURSAL,P636_DESC_RESP_BLOQUE,P636_DESC_RESP_SUB_BLOQUE,P636_DESC_RESP_ESTANTE,P636_DESC_CUERPO,P636_DESC_NIVEL'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(378666594167118311)
,p_name=>'DA_GUARDAR_ESTADO_CHK_BX'
,p_event_sequence=>330
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P636_AUX_CHECK_BOX'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(378666705983118313)
,p_event_id=>wwv_flow_imp.id(378666594167118311)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF :P636_AUX_CHECK_BOX = ''S'' THEN',
'',
'    UPDATE ST_POSICIONES',
'    SET    ESTADO           = :P636_AUX_CHECK_BOX,',
'           COD_USUARIO_BAJA = NULL,',
'           FECHA_BAJA       = NULL    ',
'    WHERE  ROWID  = :P636_ROW_ID_CAMBIO_ESTADO;',
'',
'ELSIF :P636_AUX_CHECK_BOX = ''N'' THEN',
'    ',
'    UPDATE ST_POSICIONES',
'    SET    ESTADO           = :P636_AUX_CHECK_BOX,',
'           COD_USUARIO_BAJA = :P_COD_USUARIO,',
'           FECHA_BAJA       = SYSDATE   ',
'    WHERE  ROWID  = :P636_ROW_ID_CAMBIO_ESTADO;',
'    ',
'END IF;',
'',
''))
,p_attribute_02=>'P636_ROW_ID_CAMBIO_ESTADO,P636_AUX_CHECK_BOX'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(219746336370610222)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'PR_LIMPIAR'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(219746429823610223)
,p_process_sequence=>20
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_INIT'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P636_COD_EMPRESA := :P_COD_EMPRESA;',
':P636_COD_SUCURSAL := ''01'';',
':P636_AUX := 0;',
':P636_FECHA_ALTA_AUX := SYSDATE;',
'',
'--INICIO DATOS TEST BORRAR--',
'/*',
':P636_TIPO:= 1;',
':P636_COD_SUC_DEPOSITO:=''01'';',
':P636_COD_BLOQUE:= ''A'';',
':P636_COD_SUB_BLOQUE:= ''006'';',
'*/',
'----FIN DATOS TEST BORRAR--'))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_imp.component_end;
end;
/
