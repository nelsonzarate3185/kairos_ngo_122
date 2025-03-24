prompt --application/pages/page_00717
begin
--   Manifest
--     PAGE: 00717
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
 p_id=>717
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'Planilla de Retiro de Productos - CAPLARET'
,p_alias=>'PLANILLA-DE-RETIRO-DE-PRODUCTOS-CAPLARET'
,p_step_title=>'Planilla de Retiro de Productos - CAPLARET'
,p_allow_duplicate_submissions=>'N'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function soloNumerosEnterosMayoresOIgualesAUno(e) {',
'    var key = e.charCode;',
'    var inputValue = e.target.value + String.fromCharCode(key);',
'    var intValue = parseInt(inputValue);',
'',
'    return key >= 48 && key <= 57 && intValue >= 1;',
'}',
'',
'function soloNumeros1(e){',
'  var key = e.charCode;',
'    return key >= 48 && key <= 57 || key == 46 || key == 44;',
'}'))
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.faq-container {',
'    /* background: #F8AE45; */',
'    background: rgba(255, 255, 255, 0.8);',
'    padding: 10px;',
'    border-radius: 8px;',
'    margin-bottom: 20px;',
'    border: 2px solid #056AC8;',
'}',
'  .question {',
'    font-weight: bold;',
unistr('       font-size: 1.2em; /* Puedes ajustar el valor seg\00FAn sea necesario para el tama\00F1o deseado */'),
unistr('    text-align: left; /* Esto centrar\00E1 el texto */'),
unistr('    color: #333; /* Cambia el color del texto seg\00FAn tu preferencia */'),
'  }',
'    .question_usuario {',
unistr('   /* Puedes ajustar el valor seg\00FAn sea necesario para el tama\00F1o deseado */'),
unistr('    text-align: right; /* Cambia el color del texto seg\00FAn tu preferencia */'),
'  }',
'',
'  .answer {',
'    margin-top: 10px;',
unistr('     font-size: 1.2em; /* Puedes ajustar el tama\00F1o seg\00FAn sea necesario */'),
unistr('    text-align: center; /* Esto centrar\00E1 el texto de la respuesta */'),
'    color: #555;',
'  }',
'',
'  .url {',
'    color: #0066cc;',
'    text-decoration: underline;',
'  }',
'  ',
'  .faq-item {',
'    flex-basis: calc(50% - 10px); /* 50% del contenedor menos el espaciado */',
'  }',
'',
'    .separator {',
'    height: 1px;',
'    background-color: #ccc;',
unistr('    margin-bottom: 30px; /* Espaciado entre la l\00EDnea gris y la respuesta */'),
'  }',
'',
'  .not-bold {',
'  font-weight: normal; /* Esto quita la negrita solo para la palabra "Fecha" */',
'}',
'',
'/*------------------------------------------------------------------------',
'------------------------------------------------------------------------',
'------------------------------------------------------------------------',
'------------------------------------------------------------------------',
'------------------------------------------------------------------------',
'------------------------------------------------------------------------',
'------------------------------------------------------------------------*/',
'.faq-container2 {',
'    background: #d0ffa5;',
'    padding: 10px;',
'    border-radius: 8px;',
'    margin-bottom: 20px;',
'    display: flex;',
'    flex-wrap: wrap;',
'    gap: 20px; /* Espaciado entre las preguntas */',
'  }',
'',
'  .faq-item2 {',
'    flex-basis: calc(50% - 10px); /* 50% del contenedor menos el espaciado */',
'  }',
'',
'  .question2 {',
'    font-weight: bold;',
'    cursor: pointer;',
'    user-select: none;',
'  }',
'',
'  .answer2,',
'  .url2 {',
'    display: none;',
'    margin-top: 10px;',
'  }',
'',
'  .url2 {',
'    color: #0066cc;',
'    text-decoration: underline;',
'    cursor: pointer;',
'  }',
'',
'',
'  ',
'.apex-item-select:focus, .apex-item-text:focus, .apex-item-textarea:focus, .oj-inputdatetime-input-container:focus {',
'   background-color: #e9ffbf !important;',
'   border-color: #8f0000 !important;',
'}',
'',
'.apex-item-select,  .apex-item-text , .apex-item-textarea , .apex-item-group, .display_only , .oj-inputdatetime-input-container{',
'  border-color: #b4c6dd !important;',
'  background-color: #f8f6ea !important;',
'}',
'',
'',
'#PARAM, #FILTROS{    ',
'  background-color: #678dbb  !important;',
'}',
'',
'',
'.t-Body-content{',
'   background-color:  #d0e0f783!important;}',
'',
'',
'',
'  .tabla_color   td.t-Report-cell   {',
'  color: yellow  !important;',
'  border-color: #487ab8 !important;',
'}',
'',
'  th.t-Report-colHead,  th.t-Report-colHead a{',
'  background-color:  #003a85  !important;',
'  color: yellow  !important;',
'  border-color: #487ab8;',
'}',
'',
' .a-IRR-header{',
'      background-color: #003a85  !important;',
'	  font-weight: bold !important;',
'      border:0.5px solid #487ab8 !important;',
'   }',
'',
'  .a-IRR-headerLink{',
'    background-color: #003a85  !important;',
'	  color: yellow !important;    }',
'   ',
'.a-IRR-table tr td { ',
'        color: black !important;',
'   }',
' ',
'.a-IRR-table td {',
'    border: 1px solid #487ab8 !important;',
'}',
''))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_last_updated_by=>'JUANSA'
,p_last_upd_yyyymmddhh24miss=>'20240920162008'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(249620482591431031)
,p_plug_name=>'Planilla de Retiro de Productos'
,p_region_template_options=>'#DEFAULT#:t-TabsRegion-mod--simple'
,p_plug_template=>wwv_flow_imp.id(40132096801263663)
,p_plug_display_sequence=>940
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(249620568664431032)
,p_plug_name=>'Retiro'
,p_parent_plug_id=>wwv_flow_imp.id(249620482591431031)
,p_region_css_classes=>'u-color-1-border'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(249620790532431034)
,p_plug_name=>'CABECERA'
,p_parent_plug_id=>wwv_flow_imp.id(249620568664431032)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(271342323503211033)
,p_plug_name=>'C1'
,p_parent_plug_id=>wwv_flow_imp.id(249620790532431034)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(271342445460211034)
,p_plug_name=>'C2'
,p_parent_plug_id=>wwv_flow_imp.id(249620790532431034)
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
 p_id=>wwv_flow_imp.id(271342547854211035)
,p_plug_name=>'FOOTER'
,p_parent_plug_id=>wwv_flow_imp.id(249620568664431032)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>40
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(271813197385554704)
,p_plug_name=>'REPORT DETALLE'
,p_parent_plug_id=>wwv_flow_imp.id(249620568664431032)
,p_region_css_classes=>'u-color-1-border'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--noBorders'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select SEQ_ID,',
'    c001  COD_EMPRESA,',
'    c002  NRO_PLANILLA,',
'    c003  COD_ARTICULO,',
'    c004  SOLUCION,',
'    c005  GARANTIA,',
'    c006  SER_COMPROBANTE,',
'    c007  SERIE,',
'    c008  FACTURA,',
'    CASE ',
'     WHEN c011 is null then',
'       ''<span class="fa fa-edit" aria-hidden="true" style="color:grey;" title="Rechazado"></span>''',
'     ELSE ',
'       ''<a href="javascript:$s(''''P717_EDITAR_AUX'''',''''''||1||'''''');"><span class="fa fa-edit" ></span></a>''',
'    END NVO_EDITAR,',
'    c009  FEC_COMPRA,',
'    c010  CANTIDAD,',
'    c011  NRO_OT,',
'    c012  SER_OT,',
'    c013  TIP_OT,',
'    c014  COMENTARIO,',
'    c015  DESC_ARTICULO,',
'    c025  R_ID,',
'    CASE ',
'     WHEN c011 is null then',
'       ''<a href="javascript:$s(''''P717_OT'''',''''''||SEQ_ID||'''''');"><span class="fa fa-plus-square" ></span></a>'' ',
'     ELSE ',
'       ''<a href="javascript:$s(''''P717_OT'''',''''''||SEQ_ID||'''''');">''||c012||''-''||c011||''</a>''',
'    END ORDEN_TRABAJO,',
'       NULL EDITAR,',
'       NULL ELIMINAR,',
'       NULL DETALLE,',
'       NULL OT',
'  from APEX_COLLECTIONS',
'  WHERE COLLECTION_NAME = ''COL_DET_CAPLARET''',
'  AND NVL(C022,''X'')<>''D''',
'  '))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'REPORT DETALLE'
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
 p_id=>wwv_flow_imp.id(271813204448554705)
,p_max_row_count=>'1000000'
,p_no_data_found_message=>'No hay Registros'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_search_bar=>'N'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_enable_mail_download=>'Y'
,p_owner=>'FCARDOZO'
,p_internal_uid=>271813204448554705
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(271813322730554706)
,p_db_column_name=>'SEQ_ID'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Seq Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(271813447864554707)
,p_db_column_name=>'COD_EMPRESA'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Cod Empresa'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(271813538037554708)
,p_db_column_name=>'NRO_PLANILLA'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Nro Planilla'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(271813636520554709)
,p_db_column_name=>'COD_ARTICULO'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Producto'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(271813760309554710)
,p_db_column_name=>'SOLUCION'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Solucion'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(271813889612554711)
,p_db_column_name=>'GARANTIA'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Garantia'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(271813953495554712)
,p_db_column_name=>'SER_COMPROBANTE'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Ser Comprobante'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(271814013726554713)
,p_db_column_name=>'SERIE'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Serie'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(271814111785554714)
,p_db_column_name=>'FACTURA'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Factura'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(271814264677554715)
,p_db_column_name=>'FEC_COMPRA'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Fec. Compra'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(271814398982554716)
,p_db_column_name=>'CANTIDAD'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Cantidad'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(271814479026554717)
,p_db_column_name=>'NRO_OT'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Nro Ot'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(271814501012554718)
,p_db_column_name=>'SER_OT'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Ser Ot'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(271814680969554719)
,p_db_column_name=>'TIP_OT'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>'Tip Ot'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(271814772278554720)
,p_db_column_name=>'COMENTARIO'
,p_display_order=>150
,p_column_identifier=>'O'
,p_column_label=>'Comentario'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(271814869279554721)
,p_db_column_name=>'R_ID'
,p_display_order=>160
,p_column_identifier=>'P'
,p_column_label=>'R Id'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(271814927935554722)
,p_db_column_name=>'EDITAR'
,p_display_order=>170
,p_column_identifier=>'Q'
,p_column_label=>'&nbsp'
,p_column_link=>'javascript:$s(''P717_EDITAR_AUX'',''#SEQ_ID#'');'
,p_column_linktext=>'<span aria-hidden="true" class="fa fa-edit"></span>'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(271815069424554723)
,p_db_column_name=>'ELIMINAR'
,p_display_order=>180
,p_column_identifier=>'R'
,p_column_label=>'&nbsp'
,p_column_link=>'javascript:$s(''P717_ELIMINAR'',''#SEQ_ID#'');'
,p_column_linktext=>'<span class="fa fa-trash-o" aria-hidden="true"></span>'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(271815105747554724)
,p_db_column_name=>'DETALLE'
,p_display_order=>190
,p_column_identifier=>'S'
,p_column_label=>'&nbsp'
,p_column_link=>'javascript:$s(''P717_DETALLE'',''#SEQ_ID#'');'
,p_column_linktext=>'<span aria-hidden="true" class="fa fa-eye"></span>'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(271816193847554734)
,p_db_column_name=>'DESC_ARTICULO'
,p_display_order=>200
,p_column_identifier=>'T'
,p_column_label=>'&nbsp'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(272840854946187240)
,p_db_column_name=>'OT'
,p_display_order=>210
,p_column_identifier=>'U'
,p_column_label=>'OT'
,p_column_link=>'javascript:$s(''P717_OT'',''#SEQ_ID#'');'
,p_column_linktext=>'<span class="fa fa-chevron-circle-right" aria-hidden="true"></span>'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(305093673015685218)
,p_db_column_name=>'NVO_EDITAR'
,p_display_order=>220
,p_column_identifier=>'V'
,p_column_label=>'&nbsp'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(400995430992896207)
,p_db_column_name=>'ORDEN_TRABAJO'
,p_display_order=>230
,p_column_identifier=>'W'
,p_column_label=>'OT'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(271833704467647011)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'2718338'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>5
,p_report_columns=>'COD_ARTICULO:DESC_ARTICULO:FACTURA:GARANTIA:SERIE:FEC_COMPRA:SOLUCION:ORDEN_TRABAJO:ELIMINAR:'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(249620624049431033)
,p_name=>'Seguimiento'
,p_parent_plug_id=>wwv_flow_imp.id(249620482591431031)
,p_template=>wwv_flow_imp.id(40125238939263661)
,p_display_sequence=>30
,p_region_css_classes=>'u-color-1-border'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select cod_usuario, fecha, hora , d.comentario',
'         from RP_SEGUIMIENTO_RETIRO d',
'        where d.cod_empresa     = :P_cod_empresa',
'         and  d.NRO_COMPROBANTE     = :P717_NRO_PLANILLA',
'         ORDER BY fecha, hora  DESC'))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P717_NRO_PLANILLA'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(40147995650263667)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(400995541021896208)
,p_query_column_id=>1
,p_column_alias=>'COD_USUARIO'
,p_column_display_sequence=>10
,p_column_heading=>'Usuario'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(400995650004896209)
,p_query_column_id=>2
,p_column_alias=>'FECHA'
,p_column_display_sequence=>20
,p_column_heading=>'Fecha'
,p_use_as_row_header=>'N'
,p_column_format=>'DD/MM/YYYY'
,p_column_alignment=>'CENTER'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(400995790231896210)
,p_query_column_id=>3
,p_column_alias=>'HORA'
,p_column_display_sequence=>30
,p_column_heading=>'Hora'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(400995886867896211)
,p_query_column_id=>4
,p_column_alias=>'COMENTARIO'
,p_column_display_sequence=>40
,p_column_heading=>'Comentario'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(272838685748187218)
,p_plug_name=>'COMENTARIOS'
,p_parent_plug_id=>wwv_flow_imp.id(249620624049431033)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--noBorder:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>10
,p_plug_grid_column_span=>8
,p_plug_display_column=>3
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE ',
'cant number;',
'',
'begin',
'',
'',
'for c in (',
'            select  fecha, hora , d.comentario,cod_usuario',
'         from RP_SEGUIMIENTO_RETIRO d',
'        where d.cod_empresa     = :P_cod_empresa',
'         and  d.NRO_COMPROBANTE     = :P717_NRO_PLANILLA)',
'loop',
'',
'htp.p(''<div class="faq-container">'');',
'htp.p(''  <div class="question"> Fecha: <span class="not-bold"> '' || TO_CHAR(c.fecha,''DD/MM/YYYY'') ||'' ''||c.hora ||''  -------------------------------------------------  ''||''</span> Usuario: <span class="not-bold"> '' || c.cod_usuario ||''</span>'');',
'htp.p(''  </div>'');',
'htp.p(''  <br>'');',
'htp.p(''  <div class="question"> Comentario: </div>'');',
'htp.p(''  <p class="answer"> '' ||RPAD(NVL(INITCAP(c.COMENTARIO),'' - ''),2000,'' '') || ''</p>'');',
'htp.p(''  <div class="answer">'');',
'htp.p(''  </div>'');',
'htp.p(''</div>'');',
'end loop;',
'   ',
'end;',
'',
''))
,p_plug_source_type=>'NATIVE_PLSQL'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(249620849796431035)
,p_plug_name=>'DETALLE'
,p_parent_plug_id=>wwv_flow_imp.id(249620482591431031)
,p_region_css_classes=>'u-color-1-border'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'NEVER'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(271815786438554730)
,p_plug_name=>'FOOTER DETALLE'
,p_parent_plug_id=>wwv_flow_imp.id(249620849796431035)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(249621031291431037)
,p_plug_name=>'VARIABLES'
,p_region_template_options=>'#DEFAULT#:js-dialog-size600x400'
,p_plug_template=>wwv_flow_imp.id(40117728043263659)
,p_plug_display_sequence=>950
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(271452704114353829)
,p_plug_name=>'PRUEBAS'
,p_region_template_options=>'#DEFAULT#:js-dialog-size600x400'
,p_plug_template=>wwv_flow_imp.id(40117728043263659)
,p_plug_display_sequence=>960
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(271452820792353830)
,p_plug_name=>'prus'
,p_parent_plug_id=>wwv_flow_imp.id(271452704114353829)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select COD_EMPRESA,',
'       COD_SUCURSAL,',
'       NRO_PLANILLA,',
'       FEC_PLANILLA,',
'       FEC_RENDICION,',
'       FEC_RENDICION_ORIG,',
'       COD_REPARTIDOR,',
'       COD_VEHICULO,',
'       COD_USUARIO,',
'       ESTADO,',
'       EMAIL,',
'       COMENTARIO,',
'       ORIGEN,',
'       IND_RETIRADO_CLI,',
'       FEC_RETIRADO_CLI,',
'       IND_RECIBIDO_LOG,',
'       FEC_RECIBIDO_LOG,',
'       COD_VENDEDOR,',
'       COD_PAIS,',
'       COD_CIUDAD,',
'       COD_PROVINCIA,',
'       TELEFONO,',
'       DIRECCION,',
'       COD_PROVEEDOR,',
'       COD_ARTICULO,',
'       IND_ENVIADO_CLIENTE,',
'       FEC_ENVIADO_CLIENTE,',
'       SOLUCION,',
'       SER_COMPROBANTE,',
'       NOMBRE_CLIENTE,',
'       GARANTIA,',
'       SERIE,',
'       FACTURA,',
'       FEC_COMPRA,',
'       COD_DISTRIBUIDOR,',
'       TIPO,',
'       COD_CLIENTE,',
'       CORREO_LOGISTICA,',
'       FECHA_HORA,',
'       OBSERVACION,',
'       IND_ANULADO,',
'       FEC_ANULACION,',
'       RUC,',
'       TRANSPORTADORA,',
'       NRO_GUIA,',
'       COSTO_ENVIO,',
'       NRO_OT,',
'       SER_OT,',
'       FECHA_AGENDA,',
'       SER_PLANILLA,',
'       FEC_RETIRADO_TALLER,',
'       IND_RETIRADO_TALLER,',
'       FECHA_CREACION,',
'       COD_USUARIO_CREACION,',
'       TIP_COMPROBANTE,',
'       COD_MOTIVO_ANULA,',
'       COD_MOTIVO_RECHAZO,',
'       IND_RECHAZO,',
'       COMENTARIO_RECHAZO,',
'       ID_VISITA_SF,',
'       IND_RECIBIDO_LOG_CDE,',
'       FEC_RECIBIDO_LOG_CDE,',
'       FEC_RECIBIDO_LOG_OVIEDO,',
'       IND_RECIBIDO_LOG_OVIEDO',
'  from RP_RETIRO_CABECERA',
'  where cod_empresa = :P_COD_EMPRESA'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'prus'
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
 p_id=>wwv_flow_imp.id(271452910327353831)
,p_max_row_count=>'1000000'
,p_no_data_found_message=>'No hay Registros'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'FCARDOZO'
,p_internal_uid=>271452910327353831
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(271453041170353832)
,p_db_column_name=>'COD_EMPRESA'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Cod Empresa'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(271453106769353833)
,p_db_column_name=>'COD_SUCURSAL'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Cod Sucursal'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(271453224216353834)
,p_db_column_name=>'NRO_PLANILLA'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Nro Planilla'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(271453359722353835)
,p_db_column_name=>'FEC_PLANILLA'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Fec Planilla'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(271453466712353836)
,p_db_column_name=>'FEC_RENDICION'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Fec Rendicion'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(271453503945353837)
,p_db_column_name=>'FEC_RENDICION_ORIG'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Fec Rendicion Orig'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(271453680427353838)
,p_db_column_name=>'COD_REPARTIDOR'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Cod Repartidor'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(271453766306353839)
,p_db_column_name=>'COD_VEHICULO'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Cod Vehiculo'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(271453831253353840)
,p_db_column_name=>'COD_USUARIO'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Cod Usuario'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(271453970740353841)
,p_db_column_name=>'ESTADO'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Estado'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(271454052813353842)
,p_db_column_name=>'EMAIL'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Email'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(271454163731353843)
,p_db_column_name=>'COMENTARIO'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Comentario'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(271454284542353844)
,p_db_column_name=>'ORIGEN'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Origen'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(271454328905353845)
,p_db_column_name=>'IND_RETIRADO_CLI'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>'Ind Retirado Cli'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(271454439169353846)
,p_db_column_name=>'FEC_RETIRADO_CLI'
,p_display_order=>150
,p_column_identifier=>'O'
,p_column_label=>'Fec Retirado Cli'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(271454544702353847)
,p_db_column_name=>'IND_RECIBIDO_LOG'
,p_display_order=>160
,p_column_identifier=>'P'
,p_column_label=>'Ind Recibido Log'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
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
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(271454669386353848)
,p_db_column_name=>'FEC_RECIBIDO_LOG'
,p_display_order=>170
,p_column_identifier=>'Q'
,p_column_label=>'Fec Recibido Log'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(271454798679353849)
,p_db_column_name=>'COD_VENDEDOR'
,p_display_order=>180
,p_column_identifier=>'R'
,p_column_label=>'Cod Vendedor'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(271454879527353850)
,p_db_column_name=>'COD_PAIS'
,p_display_order=>190
,p_column_identifier=>'S'
,p_column_label=>'Cod Pais'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(271782141693379201)
,p_db_column_name=>'COD_CIUDAD'
,p_display_order=>200
,p_column_identifier=>'T'
,p_column_label=>'Cod Ciudad'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(271782268531379202)
,p_db_column_name=>'COD_PROVINCIA'
,p_display_order=>210
,p_column_identifier=>'U'
,p_column_label=>'Cod Provincia'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(271782307747379203)
,p_db_column_name=>'TELEFONO'
,p_display_order=>220
,p_column_identifier=>'V'
,p_column_label=>'Telefono'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(271782451022379204)
,p_db_column_name=>'DIRECCION'
,p_display_order=>230
,p_column_identifier=>'W'
,p_column_label=>'Direccion'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(271782553561379205)
,p_db_column_name=>'COD_PROVEEDOR'
,p_display_order=>240
,p_column_identifier=>'X'
,p_column_label=>'Cod Proveedor'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(271782627589379206)
,p_db_column_name=>'COD_ARTICULO'
,p_display_order=>250
,p_column_identifier=>'Y'
,p_column_label=>'Cod Articulo'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(271782794442379207)
,p_db_column_name=>'IND_ENVIADO_CLIENTE'
,p_display_order=>260
,p_column_identifier=>'Z'
,p_column_label=>'Ind Enviado Cliente'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(271782880259379208)
,p_db_column_name=>'FEC_ENVIADO_CLIENTE'
,p_display_order=>270
,p_column_identifier=>'AA'
,p_column_label=>'Fec Enviado Cliente'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(271782922865379209)
,p_db_column_name=>'SOLUCION'
,p_display_order=>280
,p_column_identifier=>'AB'
,p_column_label=>'Solucion'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(271783072347379210)
,p_db_column_name=>'SER_COMPROBANTE'
,p_display_order=>290
,p_column_identifier=>'AC'
,p_column_label=>'Ser Comprobante'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(271783136479379211)
,p_db_column_name=>'NOMBRE_CLIENTE'
,p_display_order=>300
,p_column_identifier=>'AD'
,p_column_label=>'Nombre Cliente'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(271783211793379212)
,p_db_column_name=>'GARANTIA'
,p_display_order=>310
,p_column_identifier=>'AE'
,p_column_label=>'Garantia'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(271783318452379213)
,p_db_column_name=>'SERIE'
,p_display_order=>320
,p_column_identifier=>'AF'
,p_column_label=>'Serie'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(271783450749379214)
,p_db_column_name=>'FACTURA'
,p_display_order=>330
,p_column_identifier=>'AG'
,p_column_label=>'Factura'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(271783528689379215)
,p_db_column_name=>'FEC_COMPRA'
,p_display_order=>340
,p_column_identifier=>'AH'
,p_column_label=>'Fec Compra'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(271783695155379216)
,p_db_column_name=>'COD_DISTRIBUIDOR'
,p_display_order=>350
,p_column_identifier=>'AI'
,p_column_label=>'Cod Distribuidor'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(271783719742379217)
,p_db_column_name=>'TIPO'
,p_display_order=>360
,p_column_identifier=>'AJ'
,p_column_label=>'Tipo'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(271783875179379218)
,p_db_column_name=>'COD_CLIENTE'
,p_display_order=>370
,p_column_identifier=>'AK'
,p_column_label=>'Cod Cliente'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(271783908528379219)
,p_db_column_name=>'CORREO_LOGISTICA'
,p_display_order=>380
,p_column_identifier=>'AL'
,p_column_label=>'Correo Logistica'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(271784040771379220)
,p_db_column_name=>'FECHA_HORA'
,p_display_order=>390
,p_column_identifier=>'AM'
,p_column_label=>'Fecha Hora'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(271784140651379221)
,p_db_column_name=>'OBSERVACION'
,p_display_order=>400
,p_column_identifier=>'AN'
,p_column_label=>'Observacion'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(271784286864379222)
,p_db_column_name=>'IND_ANULADO'
,p_display_order=>410
,p_column_identifier=>'AO'
,p_column_label=>'Ind Anulado'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(271784322491379223)
,p_db_column_name=>'FEC_ANULACION'
,p_display_order=>420
,p_column_identifier=>'AP'
,p_column_label=>'Fec Anulacion'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(271784471307379224)
,p_db_column_name=>'RUC'
,p_display_order=>430
,p_column_identifier=>'AQ'
,p_column_label=>'Ruc'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(271784564005379225)
,p_db_column_name=>'TRANSPORTADORA'
,p_display_order=>440
,p_column_identifier=>'AR'
,p_column_label=>'Transportadora'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(271784654563379226)
,p_db_column_name=>'NRO_GUIA'
,p_display_order=>450
,p_column_identifier=>'AS'
,p_column_label=>'Nro Guia'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(271784703290379227)
,p_db_column_name=>'COSTO_ENVIO'
,p_display_order=>460
,p_column_identifier=>'AT'
,p_column_label=>'Costo Envio'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(271784826251379228)
,p_db_column_name=>'NRO_OT'
,p_display_order=>470
,p_column_identifier=>'AU'
,p_column_label=>'Nro Ot'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(271784977936379229)
,p_db_column_name=>'SER_OT'
,p_display_order=>480
,p_column_identifier=>'AV'
,p_column_label=>'Ser Ot'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(271785012353379230)
,p_db_column_name=>'FECHA_AGENDA'
,p_display_order=>490
,p_column_identifier=>'AW'
,p_column_label=>'Fecha Agenda'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(271785181406379231)
,p_db_column_name=>'SER_PLANILLA'
,p_display_order=>500
,p_column_identifier=>'AX'
,p_column_label=>'Ser Planilla'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(271785206869379232)
,p_db_column_name=>'FEC_RETIRADO_TALLER'
,p_display_order=>510
,p_column_identifier=>'AY'
,p_column_label=>'Fec Retirado Taller'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(271785398182379233)
,p_db_column_name=>'IND_RETIRADO_TALLER'
,p_display_order=>520
,p_column_identifier=>'AZ'
,p_column_label=>'Ind Retirado Taller'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(271785425325379234)
,p_db_column_name=>'FECHA_CREACION'
,p_display_order=>530
,p_column_identifier=>'BA'
,p_column_label=>'Fecha Creacion'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(271785514563379235)
,p_db_column_name=>'COD_USUARIO_CREACION'
,p_display_order=>540
,p_column_identifier=>'BB'
,p_column_label=>'Cod Usuario Creacion'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(271785626416379236)
,p_db_column_name=>'TIP_COMPROBANTE'
,p_display_order=>550
,p_column_identifier=>'BC'
,p_column_label=>'Tip Comprobante'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(271785753314379237)
,p_db_column_name=>'COD_MOTIVO_ANULA'
,p_display_order=>560
,p_column_identifier=>'BD'
,p_column_label=>'Cod Motivo Anula'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(271785806332379238)
,p_db_column_name=>'COD_MOTIVO_RECHAZO'
,p_display_order=>570
,p_column_identifier=>'BE'
,p_column_label=>'Cod Motivo Rechazo'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(271785925212379239)
,p_db_column_name=>'IND_RECHAZO'
,p_display_order=>580
,p_column_identifier=>'BF'
,p_column_label=>'Ind Rechazo'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(271786011333379240)
,p_db_column_name=>'COMENTARIO_RECHAZO'
,p_display_order=>590
,p_column_identifier=>'BG'
,p_column_label=>'Comentario Rechazo'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(271786169439379241)
,p_db_column_name=>'ID_VISITA_SF'
,p_display_order=>600
,p_column_identifier=>'BH'
,p_column_label=>'Id Visita Sf'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(271786265605379242)
,p_db_column_name=>'IND_RECIBIDO_LOG_CDE'
,p_display_order=>610
,p_column_identifier=>'BI'
,p_column_label=>'Ind Recibido Log Cde'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(271786309244379243)
,p_db_column_name=>'FEC_RECIBIDO_LOG_CDE'
,p_display_order=>620
,p_column_identifier=>'BJ'
,p_column_label=>'Fec Recibido Log Cde'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(271786468546379244)
,p_db_column_name=>'FEC_RECIBIDO_LOG_OVIEDO'
,p_display_order=>630
,p_column_identifier=>'BK'
,p_column_label=>'Fec Recibido Log Oviedo'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(271786591295379245)
,p_db_column_name=>'IND_RECIBIDO_LOG_OVIEDO'
,p_display_order=>640
,p_column_identifier=>'BL'
,p_column_label=>'Ind Recibido Log Oviedo'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(271809953303448504)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'2718100'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'COD_EMPRESA:COD_SUCURSAL:NRO_PLANILLA:FEC_PLANILLA:FEC_RENDICION:FEC_RENDICION_ORIG:COD_REPARTIDOR:COD_VEHICULO:COD_USUARIO:ESTADO:EMAIL:COMENTARIO:ORIGEN:IND_RETIRADO_CLI:FEC_RETIRADO_CLI:IND_RECIBIDO_LOG:FEC_RECIBIDO_LOG:COD_VENDEDOR:COD_PAIS:COD_C'
||'IUDAD:COD_PROVINCIA:TELEFONO:DIRECCION:COD_PROVEEDOR:COD_ARTICULO:IND_ENVIADO_CLIENTE:FEC_ENVIADO_CLIENTE:SOLUCION:SER_COMPROBANTE:NOMBRE_CLIENTE:GARANTIA:SERIE:FACTURA:FEC_COMPRA:COD_DISTRIBUIDOR:TIPO:COD_CLIENTE:CORREO_LOGISTICA:FECHA_HORA:OBSERVAC'
||'ION:IND_ANULADO:FEC_ANULACION:RUC:TRANSPORTADORA:NRO_GUIA:COSTO_ENVIO:NRO_OT:SER_OT:FECHA_AGENDA:SER_PLANILLA:FEC_RETIRADO_TALLER:IND_RETIRADO_TALLER:FECHA_CREACION:COD_USUARIO_CREACION:TIP_COMPROBANTE:COD_MOTIVO_ANULA:COD_MOTIVO_RECHAZO:IND_RECHAZO:'
||'COMENTARIO_RECHAZO:ID_VISITA_SF:IND_RECIBIDO_LOG_CDE:FEC_RECIBIDO_LOG_CDE:FEC_RECIBIDO_LOG_OVIEDO:IND_RECIBIDO_LOG_OVIEDO'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(271817290728554745)
,p_plug_name=>'Agregar/Editar'
,p_region_template_options=>'#DEFAULT#:js-dialog-size600x400'
,p_plug_template=>wwv_flow_imp.id(40117728043263659)
,p_plug_display_sequence=>970
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(271950719673089314)
,p_plug_name=>'Agregar Seguimiento'
,p_region_template_options=>'#DEFAULT#:js-dialog-size480x320'
,p_plug_template=>wwv_flow_imp.id(40117728043263659)
,p_plug_display_sequence=>980
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(271452235885353824)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(249620482591431031)
,p_button_name=>'BT_VOLVER'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187078917263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Volver'
,p_button_redirect_url=>'f?p=&APP_ID.:720:&SESSION.::&DEBUG.:720::'
,p_icon_css_classes=>'fa-arrow-left'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(271342886197211038)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(271342547854211035)
,p_button_name=>'BT_INSERTA_SEGUIMIENTO'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight:t-Button--stretch:t-Button--gapTop'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Cargar Seguimiento'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'u-color-18-bg u-normal-text'
,p_icon_css_classes=>'fa-arrow-up'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
,p_grid_column_span=>2
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(271816230029554735)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(271342445460211034)
,p_button_name=>'BT_GUARDAR_PLANILLA'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--iconRight:t-Button--stretch:t-Button--gapTop'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Guardar '
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-save'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(272839113111187223)
,p_button_sequence=>70
,p_button_plug_id=>wwv_flow_imp.id(271342323503211033)
,p_button_name=>'BT_NUEVO_CLIENTE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--hoverIconSpin:t-Button--pill:t-Button--gapTop'
,p_button_template_id=>wwv_flow_imp.id(40187078917263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Nuevo Cliente'
,p_button_redirect_url=>'f?p=&APP_ID.:92:&SESSION.::&DEBUG.:92::'
,p_icon_css_classes=>'fa-plus'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
,p_grid_column_span=>1
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(271815379069554726)
,p_button_sequence=>150
,p_button_plug_id=>wwv_flow_imp.id(271342445460211034)
,p_button_name=>'BT_AGREGAR_DETALLE'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight:t-Button--stretch:t-Button--gapLeft:t-Button--gapRight:t-Button--gapTop'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Agregar Detalle'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'u-color-21-text'
,p_icon_css_classes=>'fa-clipboard-new'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(271951337329089320)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(271950719673089314)
,p_button_name=>'BT_CANCELAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_image_alt=>'Cancelar'
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(271949687091089303)
,p_button_sequence=>70
,p_button_plug_id=>wwv_flow_imp.id(271817290728554745)
,p_button_name=>'BT_CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_image_alt=>'Cancelar'
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(271949589209089302)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(271817290728554745)
,p_button_name=>'BT_GUARDAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Confirmar'
,p_button_position=>'CREATE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(271951147387089318)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(271950719673089314)
,p_button_name=>'BT_GUARDAR_SEG'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Guardar Seguimiento'
,p_button_position=>'CREATE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(354906659900081114)
,p_branch_name=>'ir_720'
,p_branch_action=>'f?p=&APP_ID.:720:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(271816230029554735)
,p_branch_sequence=>10
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(249621141331431038)
,p_name=>'P717_DESC_SUCURSAL'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(249620790532431034)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(249621268041431039)
,p_name=>'P717_TIPO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(271342323503211033)
,p_prompt=>'Tipo'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>'STATIC:Servicio Tecnico;STA,Deposito;DP'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186937130263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(249621304067431040)
,p_name=>'P717_COD_SUCURSAL'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(249620790532431034)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(249621430828431041)
,p_name=>'P717_SER_COMPROBANTE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(271342323503211033)
,p_prompt=>'Serie'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(249621590163431042)
,p_name=>'P717_NRO_PLANILLA'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(271342323503211033)
,p_prompt=>'Nro Planilla'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(249621603152431043)
,p_name=>'P717_FEC_PLANILLA'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(271342323503211033)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(249621780162431044)
,p_name=>'P717_RUC'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(271342323503211033)
,p_prompt=>'RUC/CI'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>4
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#:margin-left-lg'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(249621894329431045)
,p_name=>'P717_COD_CLIENTE'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(271342323503211033)
,p_prompt=>'Cliente'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select distinct (p.nombre||'' - ''||c.cod_cliente) nombre, ',
'c.cod_cliente ',
'from cc_clientes c, personas p ',
'where c.cod_empresa = :P_cod_empresa ',
'and c.cod_persona = p.cod_persona ',
'order by lpad( c.cod_cliente, 15, '' '' )'))
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
 p_id=>wwv_flow_imp.id(249621954434431046)
,p_name=>'P717_TELEFONO'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(271342323503211033)
,p_prompt=>'Telefono'
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
 p_id=>wwv_flow_imp.id(249622091917431047)
,p_name=>'P717_FECHA_AGENDA'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(271342323503211033)
,p_prompt=>'Fecha Agenda'
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
 p_id=>wwv_flow_imp.id(249622175315431048)
,p_name=>'P717_ORIGEN'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(271342323503211033)
,p_prompt=>'Horario'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>unistr('STATIC:Indefinido;1,Ma\00F1ana;2,Tarde;3')
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186937130263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(249622288247431049)
,p_name=>'P717_COD_VENDEDOR'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(249620790532431034)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(249622337919431050)
,p_name=>'P717_DIRECCION'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(271342323503211033)
,p_prompt=>unistr('Direcci\00F3n')
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
 p_id=>wwv_flow_imp.id(271339185848211001)
,p_name=>'P717_COD_CIUDAD'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(271342323503211033)
,p_prompt=>'Ciudad'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select descripcion, cod_ciudad',
'from ciudades ',
'where cod_pais = ''PAR'' ',
'and cod_provincia = :P717_cod_provincia ',
'order by descripcion'))
,p_lov_display_null=>'YES'
,p_lov_cascade_parent_items=>'P717_COD_PROVINCIA'
,p_ajax_items_to_submit=>'P717_COD_CIUDAD'
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
 p_id=>wwv_flow_imp.id(271339206496211002)
,p_name=>'P717_COD_PROVINCIA'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(271342323503211033)
,p_prompt=>'Provincia'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select descripcion, cod_provincia ',
'from provincias ',
'where cod_pais = ''PAR''',
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
 p_id=>wwv_flow_imp.id(271339396848211003)
,p_name=>'P717_COD_PAIS'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_imp.id(249620790532431034)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(271339409182211004)
,p_name=>'P717_NOMBRE_CLIENTE'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_imp.id(249620790532431034)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(271339555679211005)
,p_name=>'P717_COD_DISTRIBUIDOR'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_imp.id(271342323503211033)
,p_prompt=>unistr('C\00F3digo Distribuidor')
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ltrim( nvl( p.nombre, p.nomb_fantasia ) ) nombre, c.cod_cliente',
' from cc_clientes c, personas p ',
' where c.cod_empresa = :P_cod_empresa ',
' and c.cod_persona = p.cod_persona order by lpad( c.cod_cliente, 15, '' '' )'))
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
 p_id=>wwv_flow_imp.id(271339645707211006)
,p_name=>'P717_SOLUCION'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_imp.id(271342323503211033)
,p_prompt=>unistr('Soluci\00F3n')
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>unistr('STATIC:Nota de Credito;nota_credito,Cambio directo;cambio_directo,Reparaci\00F3n y posterior env\00EDo;Reparacion')
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(271339797260211007)
,p_name=>'P717_TRANSPORTADORA'
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_imp.id(271342323503211033)
,p_prompt=>'Transportadora'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>'STATIC:Serincar;1,Contact Courrier;2,MultiEnvios;3,San Ignacio;4,Central NGO;5'
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
 p_id=>wwv_flow_imp.id(271339833872211008)
,p_name=>'P717_COSTO_ENVIO'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(271342445460211034)
,p_prompt=>'Costo Envio'
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
 p_id=>wwv_flow_imp.id(271339969063211009)
,p_name=>'P717_NRO_GUIA'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(271342445460211034)
,p_prompt=>'Nro Guia'
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
 p_id=>wwv_flow_imp.id(271340022867211010)
,p_name=>'P717_FEC_RETIRADO_CLI'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(271342445460211034)
,p_prompt=>'Fecha Retirado Cli'
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
 p_id=>wwv_flow_imp.id(271340148984211011)
,p_name=>'P717_FEC_RENDICION_ORIG'
,p_item_sequence=>250
,p_item_plug_id=>wwv_flow_imp.id(249620790532431034)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(271340267033211012)
,p_name=>'P717_NOM_CLIENTE'
,p_item_sequence=>270
,p_item_plug_id=>wwv_flow_imp.id(271342323503211033)
,p_prompt=>'Nombre Cliente'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_display_when_type=>'NEVER'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(271340357302211013)
,p_name=>'P717_IND_RETIRADO_CLI'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(271342445460211034)
,p_prompt=>'Retirado Cliente'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--xlarge'
,p_attribute_01=>'N'
,p_attribute_02=>'S'
,p_attribute_03=>'N'
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
 p_id=>wwv_flow_imp.id(271340420865211014)
,p_name=>'P717_OBSERVACION'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(271342445460211034)
,p_prompt=>unistr('Observaci\00F3n')
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
 p_id=>wwv_flow_imp.id(271340596549211015)
,p_name=>'P717_COD_USUARIO'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(271813197385554704)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(271340698036211016)
,p_name=>'P717_TOT_GUARANIES'
,p_item_sequence=>300
,p_item_plug_id=>wwv_flow_imp.id(249620790532431034)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(271340765317211017)
,p_name=>'P717_TOT_DOLARES'
,p_item_sequence=>320
,p_item_plug_id=>wwv_flow_imp.id(249620790532431034)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(271340829556211018)
,p_name=>'P717_DESC_PAIS'
,p_item_sequence=>330
,p_item_plug_id=>wwv_flow_imp.id(249620790532431034)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(271340936545211019)
,p_name=>'P717_DESC_PROVINCIA'
,p_item_sequence=>250
,p_item_plug_id=>wwv_flow_imp.id(271342323503211033)
,p_prompt=>'Provincia'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_display_when_type=>'NEVER'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(271341005243211020)
,p_name=>'P717_DESC_CIUDAD'
,p_item_sequence=>260
,p_item_plug_id=>wwv_flow_imp.id(271342323503211033)
,p_prompt=>'Ciudad'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_display_when_type=>'NEVER'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(271341180304211021)
,p_name=>'P717_FEC_RECIBIDO_LOG'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(271342445460211034)
,p_prompt=>'Fecha Recibido Log'
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
 p_id=>wwv_flow_imp.id(271341297855211022)
,p_name=>'P717_IND_RECIBIDO_LOG'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(271342445460211034)
,p_prompt=>'Recibido NGO'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--xlarge'
,p_attribute_01=>'N'
,p_attribute_02=>'S'
,p_attribute_03=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(271341308437211023)
,p_name=>'P717_NOM_VENDEDOR'
,p_item_sequence=>340
,p_item_plug_id=>wwv_flow_imp.id(249620790532431034)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(271341409097211024)
,p_name=>'P717_FEC_ENVIADO_CLIENTE'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(271342445460211034)
,p_prompt=>'Fecha Enviado Cliente'
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
 p_id=>wwv_flow_imp.id(271341524756211025)
,p_name=>'P717_IND_ENVIADO_CLIENTE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(271342445460211034)
,p_prompt=>'Enviado Cliente'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--xlarge'
,p_attribute_01=>'N'
,p_attribute_02=>'S'
,p_attribute_03=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(271341662751211026)
,p_name=>'P717_NOM_DISTRIBUIDOR'
,p_item_sequence=>240
,p_item_plug_id=>wwv_flow_imp.id(271342323503211033)
,p_prompt=>'Nombre Distribuidor'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_display_when_type=>'NEVER'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(271341700050211027)
,p_name=>'P717_CORREO_LOGISTICA'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(271342445460211034)
,p_prompt=>'Correo Logistica'
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
 p_id=>wwv_flow_imp.id(271341870673211028)
,p_name=>'P717_FEC_ANULACION'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(271342445460211034)
,p_prompt=>'Fecha Anulacion'
,p_display_as=>'NATIVE_DATE_PICKER_JET'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>3
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
 p_id=>wwv_flow_imp.id(271341964144211029)
,p_name=>'P717_IND_ANULADO'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(271342445460211034)
,p_prompt=>'Anulado'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_css_classes=>'u-pullRight'
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--xlarge:margin-top-sm'
,p_attribute_01=>'N'
,p_attribute_02=>'S'
,p_attribute_03=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(271342010310211030)
,p_name=>'P717_COMENTARIO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(271342547854211035)
,p_prompt=>'Comentario'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>30
,p_cHeight=>2
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(271342131171211031)
,p_name=>'P717_SER_OT'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(271815786438554730)
,p_prompt=>'Serie OT'
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
 p_id=>wwv_flow_imp.id(271342242262211032)
,p_name=>'P717_NRO_OT'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(271815786438554730)
,p_prompt=>unistr('N\00FAmero OT')
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
 p_id=>wwv_flow_imp.id(271342717778211037)
,p_name=>'P717_SEGUIMIENTO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(271950719673089314)
,p_prompt=>'Seguimiento'
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
 p_id=>wwv_flow_imp.id(271441317598826101)
,p_name=>'P717_COD_EMPRESA'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(249621031291431037)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(271441484112826102)
,p_name=>'P717_COD_MODULO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(249621031291431037)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(271452163011353823)
,p_name=>'P717_ACCION_CONSULTA'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(249621031291431037)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(271815484523554727)
,p_name=>'P717_EDITAR_AUX'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(271813197385554704)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(271815523638554728)
,p_name=>'P717_DETALLE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(271813197385554704)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(271815623077554729)
,p_name=>'P717_ELIMINAR'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(271813197385554704)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(271815934382554732)
,p_name=>'P717_SOLUCION_AUX'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(271815786438554730)
,p_prompt=>unistr('Soluci\00F3n')
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(271816006481554733)
,p_name=>'P717_TIP_OT'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(271815786438554730)
,p_prompt=>'Tipo OT'
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
 p_id=>wwv_flow_imp.id(271817327931554746)
,p_name=>'P717_COD_ARTICULO'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(271817290728554745)
,p_prompt=>unistr('C\00F3digo Articulo')
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select descripcion, cod_articulo ',
'from st_articulos ',
'where cod_empresa = :P_cod_empresa ',
'and cod_RUBRO=''PR''',
'order by descripcion'))
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186937130263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(271817478647554747)
,p_name=>'P717_CANTIDAD'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(271817290728554745)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(271817519397554748)
,p_name=>'P717_FACTURA'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(271817290728554745)
,p_prompt=>'Factura'
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
 p_id=>wwv_flow_imp.id(271817622341554749)
,p_name=>'P717_GARANTIA'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(271817290728554745)
,p_prompt=>'Garantia'
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
 p_id=>wwv_flow_imp.id(271817765101554750)
,p_name=>'P717_SERIE'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(271817290728554745)
,p_prompt=>'Serie'
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
 p_id=>wwv_flow_imp.id(271949464729089301)
,p_name=>'P717_FEC_COMPRA'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(271817290728554745)
,p_prompt=>'Fecha Compra'
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
 p_id=>wwv_flow_imp.id(271950477539089311)
,p_name=>'P717_DESC_ARTICULO'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(271817290728554745)
,p_prompt=>unistr('Descripci\00F3n Articulo')
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
 p_id=>wwv_flow_imp.id(271951649244089323)
,p_name=>'P717_NRO_OT_AUX'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(271817290728554745)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(271951792047089324)
,p_name=>'P717_SER_OT_AUX'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(271817290728554745)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(271951892615089325)
,p_name=>'P717_TIP_OT_AUX'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(271817290728554745)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(271951908715089326)
,p_name=>'P717_SOLUCION_AUX2'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(271817290728554745)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(271952202085089329)
,p_name=>'P717_NRO_PLANILLA_AUX'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(271817290728554745)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(271952386242089330)
,p_name=>'P717_SER_COMPROBANTE_AUX'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(271817290728554745)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(271952806011089335)
,p_name=>'P717_ERR'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(249621031291431037)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(272838059746187212)
,p_name=>'P717_EDITAR'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(249621031291431037)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(272839537682187227)
,p_name=>'P717_CANT_DETALLE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(249621031291431037)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(272840959829187241)
,p_name=>'P717_OT'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(271813197385554704)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(272841320912187245)
,p_name=>'P717_URL'
,p_item_sequence=>310
,p_item_plug_id=>wwv_flow_imp.id(249620790532431034)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(272841666141187248)
,p_name=>'P717_COD_ARTICULO_AUX'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(271815786438554730)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(274083816530475201)
,p_name=>'P717_GARANTIA_AUX'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(271815786438554730)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(274086867452475231)
,p_name=>'P717_V_EXISTE'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(271813197385554704)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(274088553916475248)
,p_name=>'P717_P_COD_CLIENTE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(249621031291431037)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(305092270628685204)
,p_name=>'P717_EXISTE'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(249621031291431037)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(305093059514685212)
,p_name=>'P717_FEC_PLANILLA_1'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(271342323503211033)
,p_prompt=>'Fecha Planilla'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(305093369250685215)
,p_name=>'P717_COD_USUARIO_1'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(271342445460211034)
,p_prompt=>'Usuario'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_colspan=>4
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(271452361083353825)
,p_name=>'DA_SET_CONSULTA'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P717_ACCION_CONSULTA'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(271452467208353826)
,p_event_id=>wwv_flow_imp.id(271452361083353825)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_02=>'P717_ACCION_CONSULTA'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(271452584062353827)
,p_name=>'DA_ACCION_INSERT'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P717_ACCION_CONSULTA'
,p_condition_element=>'P717_ACCION_CONSULTA'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'3'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(271452631906353828)
,p_event_id=>wwv_flow_imp.id(271452584062353827)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P717_COD_EMPRESA:=:P_COD_EMPRESA;',
':P717_COD_SUCURSAL:=''01'';',
':P717_NRO_PLANILLA:=NULL;',
':P717_FEC_PLANILLA:=TO_DATE(SYSDATE,''dd/mm/yyyy'');',
':P717_FEC_RENDICION_ORIG:=NULL;',
':P717_COD_USUARIO:=:P_COD_USUARIO;',
':P717_COMENTARIO:=NULL;',
':P717_ORIGEN:=NULL;',
':P717_IND_RETIRADO_CLI:=NULL;',
':P717_FEC_RETIRADO_CLI:=NULL;',
':P717_IND_RECIBIDO_LOG:=NULL;',
':P717_FEC_RECIBIDO_LOG:=NULL;',
':P717_COD_VENDEDOR:=NULL;',
':P717_COD_PAIS:=NULL;',
':P717_COD_CIUDAD:=NULL;',
':P717_COD_PROVINCIA:=NULL;',
':P717_TELEFONO:=NULL;',
':P717_DIRECCION:=NULL;',
':P717_IND_ENVIADO_CLIENTE:=NULL;',
':P717_FEC_ENVIADO_CLIENTE:=NULL;',
':P717_SOLUCION:=''Reparacion'';',
':P717_SER_COMPROBANTE:=''A'';',
':P717_NOMBRE_CLIENTE:=NULL;',
':P717_COD_DISTRIBUIDOR:=NULL;',
':P717_TIPO:=''STA'';',
':P717_COD_CLIENTE:=NULL;',
':P717_CORREO_LOGISTICA:=''gestiones_st@ngosaeca.com.py;'';',
':P717_OBSERVACION:=NULL;',
':P717_IND_ANULADO:=''N'';',
':P717_FEC_ANULACION:=NULL;',
':P717_RUC:=NULL;',
':P717_TRANSPORTADORA:=''5'';',
':P717_NRO_GUIA:=NULL;',
':P717_COSTO_ENVIO:=NULL;',
':P717_NRO_OT:=NULL;',
':P717_SER_OT:=NULL;',
':P717_FECHA_AGENDA:=TO_DATE(SYSDATE,''dd/mm/yyyy'');',
':P717_CANT_DETALLE:=''0'';',
'apex_collection.create_or_truncate_collection(p_collection_name => ''COL_DET_CAPLARET'');'))
,p_attribute_03=>'P717_COD_EMPRESA,P717_COD_SUCURSAL,P717_NRO_PLANILLA,P717_FEC_PLANILLA,P717_FEC_RENDICION_ORIG,P717_COD_USUARIO,P717_COMENTARIO,P717_ORIGEN,P717_IND_RETIRADO_CLI,P717_FEC_RETIRADO_CLI,P717_IND_RECIBIDO_LOG,P717_FEC_RECIBIDO_LOG,P717_COD_VENDEDOR,P717'
||'_COD_PAIS,P717_COD_CIUDAD,P717_COD_PROVINCIA,P717_TELEFONO,P717_DIRECCION,P717_IND_ENVIADO_CLIENTE,P717_FEC_ENVIADO_CLIENTE,P717_SER_COMPROBANTE,P717_NOMBRE_CLIENTE,P717_COD_DISTRIBUIDOR,P717_TIPO,P717_COD_CLIENTE,P717_CORREO_LOGISTICA,P717_OBSERVACI'
||'ON,P717_IND_ANULADO,P717_FEC_ANULACION,P717_RUC,P717_TRANSPORTADORA,P717_NRO_GUIA,P717_COSTO_ENVIO,P717_NRO_OT,P717_SER_OT,P717_FECHA_AGENDA,P717_CANT_DETALLE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(271786713246379247)
,p_event_id=>wwv_flow_imp.id(271452584062353827)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(249620790532431034)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(274085946355475222)
,p_event_id=>wwv_flow_imp.id(271452584062353827)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(271813197385554704)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(271786806392379248)
,p_event_id=>wwv_flow_imp.id(271452584062353827)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(249620849796431035)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(271786976590379249)
,p_name=>'DA_ACCION_CONSULTA'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P717_ACCION_CONSULTA'
,p_condition_element=>'P717_ACCION_CONSULTA'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'1'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(271787039387379250)
,p_event_id=>wwv_flow_imp.id(271786976590379249)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'CAPLARET.PR_OBTENER_DETALLE(PI_COD_EMPRESA => :P_COD_EMPRESA,',
'                            PI_NRO_PLANILLA => :P717_NRO_PLANILLA,',
'                            PI_SER_COMPROBANTE => ''A'');',
'',
'begin',
'select COUNT(*)',
'INTO :P717_CANT_DETALLE',
'FROM APEX_COLLECTIONS ',
'WHERE COLLECTION_NAME= ''COL_DET_CAPLARET'';',
'',
' EXCEPTION',
'        when no_data_found then',
'            :P717_CANT_DETALLE:=0;',
'end;',
'                        ',
'select ',
'       COD_EMPRESA,',
'       COD_SUCURSAL,',
'       NRO_PLANILLA,',
'       FEC_PLANILLA,',
'       FEC_RENDICION_ORIG,',
'       COD_USUARIO,',
'       COMENTARIO,',
'       ORIGEN,',
'       IND_RETIRADO_CLI,',
'       FEC_RETIRADO_CLI,',
'       IND_RECIBIDO_LOG,',
'       FEC_RECIBIDO_LOG,',
'       COD_VENDEDOR,',
'       COD_PAIS,',
'       COD_CIUDAD,',
'       COD_PROVINCIA,',
'       TELEFONO,',
'       DIRECCION,',
'       IND_ENVIADO_CLIENTE,',
'       FEC_ENVIADO_CLIENTE,',
'       SOLUCION,',
'       SER_COMPROBANTE,',
'       NOMBRE_CLIENTE,',
'       COD_DISTRIBUIDOR,',
'       TIPO,',
'       COD_CLIENTE,',
'       CORREO_LOGISTICA,',
'       OBSERVACION,',
'       IND_ANULADO,',
'       FEC_ANULACION,',
'       RUC,',
'       TRANSPORTADORA,',
'       NRO_GUIA,',
'       COSTO_ENVIO,',
'       NRO_OT,',
'       SER_OT,',
'       FECHA_AGENDA',
'    INTO',
'       :P717_COD_EMPRESA,',
'       :P717_COD_SUCURSAL,',
'       :P717_NRO_PLANILLA,',
'       :P717_FEC_PLANILLA,',
'       :P717_FEC_RENDICION_ORIG,',
'       :P717_COD_USUARIO,',
'       :P717_COMENTARIO,',
'       :P717_ORIGEN,',
'       :P717_IND_RETIRADO_CLI,',
'       :P717_FEC_RETIRADO_CLI,',
'       :P717_IND_RECIBIDO_LOG,',
'       :P717_FEC_RECIBIDO_LOG,',
'       :P717_COD_VENDEDOR,',
'       :P717_COD_PAIS,',
'       :P717_COD_CIUDAD,',
'       :P717_COD_PROVINCIA,',
'       :P717_TELEFONO,',
'       :P717_DIRECCION,',
'       :P717_IND_ENVIADO_CLIENTE,',
'       :P717_FEC_ENVIADO_CLIENTE,',
'       :P717_SOLUCION,',
'       :P717_SER_COMPROBANTE,',
'       :P717_NOMBRE_CLIENTE,',
'       :P717_COD_DISTRIBUIDOR,',
'       :P717_TIPO,',
'       :P717_COD_CLIENTE,',
'       :P717_CORREO_LOGISTICA,',
'       :P717_OBSERVACION,',
'       :P717_IND_ANULADO,',
'       :P717_FEC_ANULACION,',
'       :P717_RUC,',
'       :P717_TRANSPORTADORA,',
'       :P717_NRO_GUIA,',
'       :P717_COSTO_ENVIO,',
'       :P717_NRO_OT,',
'       :P717_SER_OT,',
'       :P717_FECHA_AGENDA',
'       ',
'      from RP_RETIRO_CABECERA r',
'      where NRO_PLANILLA = :P717_NRO_PLANILLA',
'      and cod_empresa = :P717_COD_EMPRESA',
'      and ser_comprobante = ''A'';',
'',
'      begin',
'  IF :P717_RUC IS NULL THEN',
'            BEGIN',
'           --- apex_debug.error(''DESPUES DEL IF'' || :P717_COD_ClIENTE);',
'                select numero',
'                 into :P717_RUC',
'                 from  ident_personas pi, cc_clientes c, personas p',
'',
'                 where c.cod_persona = p.cod_persona',
'                 AND p.cod_persona = pi.cod_persona',
'                 and pi.cod_ident = ''CI''',
'                 and c.cod_cliente = :P717_cod_cliente',
'                 and c.cod_empresa = :P_COD_EMPRESA;',
'',
'                 exception',
'                    when no_data_found then',
'                        BEGIN',
'                        select numero',
'                         into :P717_RUC',
'                         from  ident_personas pi, cc_clientes c, personas p',
'',
'                         where c.cod_persona = p.cod_persona',
'                         AND p.cod_persona = pi.cod_persona',
'                         and pi.cod_ident = ''DNI''',
'                         and c.cod_cliente = :P717_cod_cliente',
'                         and c.cod_empresa = :P_COD_EMPRESA;',
'                        ',
'                 ',
'                         exception',
'                            when no_data_found then',
'                                :P717_RUC := NULL;',
'                            when others then',
'                                :P717_RUC := NULL;',
'                        END;',
'                    when others then',
'                        :P717_RUC := NULL;',
'',
'            END;',
'             ',
'            ',
'    END IF;',
'    end;',
'',
'   '))
,p_attribute_02=>'P717_COD_EMPRESA,P717_NRO_PLANILLA'
,p_attribute_03=>'P717_COD_SUCURSAL,P717_FEC_PLANILLA,P717_FEC_RENDICION_ORIG,P717_COD_USUARIO,P717_COMENTARIO,P717_ORIGEN,P717_IND_RETIRADO_CLI,P717_FEC_RETIRADO_CLI,P717_IND_RECIBIDO_LOG,P717_FEC_RECIBIDO_LOG,P717_COD_VENDEDOR,P717_COD_PAIS,P717_COD_CIUDAD,P717_COD_'
||'PROVINCIA,P717_TELEFONO,P717_DIRECCION,P717_IND_ENVIADO_CLIENTE,P717_FEC_ENVIADO_CLIENTE,P717_NOMBRE_CLIENTE,P717_COD_DISTRIBUIDOR,P717_TIPO,P717_COD_CLIENTE,P717_CORREO_LOGISTICA,P717_OBSERVACION,P717_IND_ANULADO,P717_FEC_ANULACION,P717_RUC,P717_TRA'
||'NSPORTADORA,P717_NRO_GUIA,P717_COSTO_ENVIO,P717_NRO_OT,P717_SER_OT,P717_FECHA_AGENDA,P717_CANT_DETALLE,P717_SER_COMPROBANTE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(274085888534475221)
,p_event_id=>wwv_flow_imp.id(271786976590379249)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'    IF :P717_IND_RECIBIDO_LOG=''S'' THEN',
'    	:P717_FEC_RECIBIDO_LOG:=TO_DATE(SYSDATE,''dd/mm/yyyy'');',
'    ELSIF 	:P717_IND_RECIBIDO_LOG=''N'' THEN',
'    	:P717_FEC_RECIBIDO_LOG:=NULL;',
'    	END IF;',
'',
'    IF :P717_IND_ENVIADO_CLIENTE=''S'' THEN',
'    	:P717_FEC_ENVIADO_CLIENTE:=TO_DATE(SYSDATE,''dd/mm/yyyy'');',
'    ELSIF 	:P717_IND_ENVIADO_CLIENTE=''N'' THEN',
'    	:P717_FEC_ENVIADO_CLIENTE:=NULL;',
'    	END IF;',
'',
'    IF :P717_IND_RETIRADO_CLI=''S'' THEN',
'    	:P717_FEC_RETIRADO_CLI:=TO_DATE(SYSDATE,''dd/mm/yyyy'');',
'    ELSIF 	:P717_IND_RETIRADO_CLI=''N'' THEN',
'    	:P717_FEC_RETIRADO_CLI:=NULL;',
'    	END IF;',
'',
'   IF :P717_IND_ANULADO=''S'' THEN',
'	:P717_FEC_ANULACION:=SYSDATE;',
'ELSIF 	:P717_IND_ANULADO=''N'' THEN',
'	:P717_FEC_ANULACION:=NULL;',
'	END IF;',
'end;'))
,p_attribute_02=>'P717_IND_ENVIADO_CLIENTE,P717_IND_RETIRADO_CLI,P717_IND_RECIBIDO_LOG,P717_IND_ANULADO'
,p_attribute_03=>'P717_FEC_RETIRADO_CLI,P717_FEC_RECIBIDO_LOG,P717_FEC_ENVIADO_CLIENTE,P717_FEC_ANULACION'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(271812861057554701)
,p_event_id=>wwv_flow_imp.id(271786976590379249)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(249620790532431034)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(271812910996554702)
,p_event_id=>wwv_flow_imp.id(271786976590379249)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(249620849796431035)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(271815210975554725)
,p_event_id=>wwv_flow_imp.id(271786976590379249)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(271813197385554704)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(274088615391475249)
,p_name=>'DA_ACCION_REDIRECCION'
,p_event_sequence=>40
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P717_ACCION_CONSULTA'
,p_condition_element=>'P717_ACCION_CONSULTA'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'4'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(274088739022475250)
,p_event_id=>wwv_flow_imp.id(274088615391475249)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'CAPLARET.PR_OBTENER_DETALLE(PI_COD_EMPRESA => :P_COD_EMPRESA,',
'                            PI_NRO_PLANILLA => :P717_NRO_PLANILLA,',
'                            PI_SER_COMPROBANTE => ''A'');',
'',
'begin',
'select COUNT(*)',
'INTO :P717_CANT_DETALLE',
'FROM APEX_COLLECTIONS ',
'WHERE COLLECTION_NAME= ''COL_DET_CAPLARET'';',
'',
' EXCEPTION',
'        when no_data_found then',
'            :P717_CANT_DETALLE:=0;',
'end;',
'                        ',
'select COD_EMPRESA,',
'       COD_SUCURSAL,',
'       NRO_PLANILLA,',
'       FEC_PLANILLA,',
'       FEC_RENDICION_ORIG,',
'       COD_USUARIO,',
'       COMENTARIO,',
'       ORIGEN,',
'       IND_RETIRADO_CLI,',
'       FEC_RETIRADO_CLI,',
'       IND_RECIBIDO_LOG,',
'       FEC_RECIBIDO_LOG,',
'       COD_VENDEDOR,',
'       COD_PAIS,',
'       COD_CIUDAD,',
'       COD_PROVINCIA,',
'       TELEFONO,',
'       DIRECCION,',
'       IND_ENVIADO_CLIENTE,',
'       FEC_ENVIADO_CLIENTE,',
'       SOLUCION,',
'       SER_COMPROBANTE,',
'       NOMBRE_CLIENTE,',
'       COD_DISTRIBUIDOR,',
'       TIPO,',
'       COD_CLIENTE,',
'       CORREO_LOGISTICA,',
'       OBSERVACION,',
'       IND_ANULADO,',
'       FEC_ANULACION,',
'       RUC,',
'       TRANSPORTADORA,',
'       NRO_GUIA,',
'       COSTO_ENVIO,',
'       NRO_OT,',
'       SER_OT,',
'       FECHA_AGENDA',
'    INTO',
'       :P717_COD_EMPRESA,',
'       :P717_COD_SUCURSAL,',
'       :P717_NRO_PLANILLA,',
'       :P717_FEC_PLANILLA,',
'       :P717_FEC_RENDICION_ORIG,',
'       :P717_COD_USUARIO,',
'       :P717_COMENTARIO,',
'       :P717_ORIGEN,',
'       :P717_IND_RETIRADO_CLI,',
'       :P717_FEC_RETIRADO_CLI,',
'       :P717_IND_RECIBIDO_LOG,',
'       :P717_FEC_RECIBIDO_LOG,',
'       :P717_COD_VENDEDOR,',
'       :P717_COD_PAIS,',
'       :P717_COD_CIUDAD,',
'       :P717_COD_PROVINCIA,',
'       :P717_TELEFONO,',
'       :P717_DIRECCION,',
'       :P717_IND_ENVIADO_CLIENTE,',
'       :P717_FEC_ENVIADO_CLIENTE,',
'       :P717_SOLUCION,',
'       :P717_SER_COMPROBANTE,',
'       :P717_NOMBRE_CLIENTE,',
'       :P717_COD_DISTRIBUIDOR,',
'       :P717_TIPO,',
'       :P717_COD_CLIENTE,',
'       :P717_CORREO_LOGISTICA,',
'       :P717_OBSERVACION,',
'       :P717_IND_ANULADO,',
'       :P717_FEC_ANULACION,',
'       :P717_RUC,',
'       :P717_TRANSPORTADORA,',
'       :P717_NRO_GUIA,',
'       :P717_COSTO_ENVIO,',
'       :P717_NRO_OT,',
'       :P717_SER_OT,',
'       :P717_FECHA_AGENDA',
'      from RP_RETIRO_CABECERA',
'      where NRO_PLANILLA = :P717_NRO_PLANILLA',
'      and cod_empresa = :P717_COD_EMPRESA',
'      and ser_comprobante = ''A'';'))
,p_attribute_02=>'P717_COD_EMPRESA,P717_NRO_PLANILLA,P717_SER_COMPROBANTE'
,p_attribute_03=>'P717_COD_SUCURSAL,P717_FEC_PLANILLA,P717_FEC_RENDICION_ORIG,P717_COD_USUARIO,P717_COMENTARIO,P717_ORIGEN,P717_IND_RETIRADO_CLI,P717_FEC_RETIRADO_CLI,P717_IND_RECIBIDO_LOG,P717_FEC_RECIBIDO_LOG,P717_COD_VENDEDOR,P717_COD_PAIS,P717_COD_CIUDAD,P717_COD_'
||'PROVINCIA,P717_TELEFONO,P717_DIRECCION,P717_IND_ENVIADO_CLIENTE,P717_FEC_ENVIADO_CLIENTE,P717_NOMBRE_CLIENTE,P717_COD_DISTRIBUIDOR,P717_TIPO,P717_COD_CLIENTE,P717_CORREO_LOGISTICA,P717_OBSERVACION,P717_IND_ANULADO,P717_FEC_ANULACION,P717_RUC,P717_TRA'
||'NSPORTADORA,P717_NRO_GUIA,P717_COSTO_ENVIO,P717_NRO_OT,P717_SER_OT,P717_FECHA_AGENDA,P717_CANT_DETALLE'
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
 p_id=>wwv_flow_imp.id(287635228994684801)
,p_event_id=>wwv_flow_imp.id(274088615391475249)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'    IF :P717_IND_RECIBIDO_LOG=''S'' THEN',
'    	:P717_FEC_RECIBIDO_LOG:=TO_DATE(SYSDATE,''dd/mm/yyyy'');',
'    ELSIF 	:P717_IND_RECIBIDO_LOG=''N'' THEN',
'    	:P717_FEC_RECIBIDO_LOG:=NULL;',
'    	END IF;',
'',
'    IF :P717_IND_ENVIADO_CLIENTE=''S'' THEN',
'    	:P717_FEC_ENVIADO_CLIENTE:=TO_DATE(SYSDATE,''dd/mm/yyyy'');',
'    ELSIF 	:P717_IND_ENVIADO_CLIENTE=''N'' THEN',
'    	:P717_FEC_ENVIADO_CLIENTE:=NULL;',
'    	END IF;',
'',
'    IF :P717_IND_RETIRADO_CLI=''S'' THEN',
'    	:P717_FEC_RETIRADO_CLI:=TO_DATE(SYSDATE,''dd/mm/yyyy'');',
'    ELSIF 	:P717_IND_RETIRADO_CLI=''N'' THEN',
'    	:P717_FEC_RETIRADO_CLI:=NULL;',
'    	END IF;',
'',
'   IF :P717_IND_ANULADO=''S'' THEN',
'	:P717_FEC_ANULACION:=SYSDATE;',
'ELSIF 	:P717_IND_ANULADO=''N'' THEN',
'	:P717_FEC_ANULACION:=NULL;',
'	END IF;',
'end;'))
,p_attribute_02=>'P717_IND_ENVIADO_CLIENTE,P717_IND_RETIRADO_CLI,P717_IND_RECIBIDO_LOG,P717_IND_ANULADO'
,p_attribute_03=>'P717_FEC_RETIRADO_CLI,P717_FEC_RECIBIDO_LOG,P717_FEC_ENVIADO_CLIENTE,P717_FEC_ANULACION'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(287635371394684802)
,p_event_id=>wwv_flow_imp.id(274088615391475249)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(249620790532431034)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(287635419515684803)
,p_event_id=>wwv_flow_imp.id(274088615391475249)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(249620849796431035)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(287635562948684804)
,p_event_id=>wwv_flow_imp.id(274088615391475249)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(271813197385554704)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(271816392741554736)
,p_name=>'DA_COD_PROVINCIA'
,p_event_sequence=>50
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P717_COD_PROVINCIA'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(271816427025554737)
,p_event_id=>wwv_flow_imp.id(271816392741554736)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    Select descripcion',
'      into :P717_desc_provincia',
'      from provincias',
'     where cod_provincia = :P717_cod_provincia;',
'  EXCEPTION',
'   ',
'    when others then',
'      :P717_desc_provincia := NULL;',
'  END;'))
,p_attribute_02=>'P717_COD_PROVINCIA'
,p_attribute_03=>'P717_DESC_PROVINCIA'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(271816593087554738)
,p_name=>'DA_COD_CIUDAD'
,p_event_sequence=>60
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P717_COD_CIUDAD'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(271816649334554739)
,p_event_id=>wwv_flow_imp.id(271816593087554738)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
' BEGIN',
'    Select descripcion',
'      into :P717_desc_ciudad',
'      from ciudades',
'     where  cod_provincia = :P717_cod_provincia',
'       and cod_ciudad = :P717_cod_ciudad;',
'  EXCEPTION',
'   ',
'     ',
'    when others then',
'      :P717_desc_ciudad := NULL;',
'     ',
'  END;',
'  '))
,p_attribute_02=>'P717_COD_CIUDAD'
,p_attribute_03=>'P717_DESC_CIUDAD'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(271816745804554740)
,p_name=>'DA_COD_CLIENTE'
,p_event_sequence=>70
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P717_COD_CLIENTE'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(271816807516554741)
,p_event_id=>wwv_flow_imp.id(271816745804554740)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
'',
'  if :p717_cod_cliente is not null then',
'',
'BEGIN',
'    Select ltrim( nvl( p.nombre, p.nomb_fantasia ) )',
'      into :P717_nom_CLIENTE',
'      from CC_CLIENTES c, personas p',
'     where c.cod_empresa = :P_cod_empresa',
'       and c.COD_CLIENTE = :P717_COD_CLIENTE',
'       and c.cod_persona = p.cod_persona;',
'  EXCEPTION',
'    ',
'    when others then',
'      :P717_nom_CLIENTE := NULL;',
'     ',
'  END;',
'',
'  BEGIN',
'    Select di.cod_pais, di.cod_provincia, di.cod_ciudad, di.detalle',
'      into :p717_cod_pais, :p717_cod_provincia, :p717_cod_ciudad, :p717_direccion',
'      from cc_clientes c, personas p, direc_personas di',
'     where c.cod_empresa = :P_cod_empresa',
'       and c.cod_cliente = :p717_cod_cliente',
'       and c.cod_persona = p.cod_persona',
'       and p.cod_persona = di.cod_persona',
'       and di.por_defecto=''S'';',
'  EXCEPTION',
'    when no_data_found then',
'      :p717_cod_pais:=null;',
'      :p717_cod_provincia:=null;',
'      :p717_cod_ciudad:=null;',
'      :p717_direccion := NULL;',
'      ',
'    when others then',
'      :p717_nom_cliente := NULL;',
'     ',
'  END;',
'',
'  ',
'  BEGIN',
'    Select di.codigo_area||'' ''||di.NUM_TELEFONO',
'      into :P717_telefono',
'      from cc_clientes c, personas p, telef_personas di',
'     where c.cod_empresa = :P_cod_empresa',
'       and c.cod_cliente = :P717_cod_cliente',
'       and c.cod_persona = p.cod_persona',
'       and p.cod_persona = di.cod_persona',
'       AND ROWNUM=1;',
'  EXCEPTION',
'    when no_data_found then',
'      :P717_telefono:=null;',
'      ',
'    when others then',
'      :P717_telefono := NULL;',
'     ',
'  END;',
'',
'  END IF;'))
,p_attribute_02=>'P717_COD_CLIENTE'
,p_attribute_03=>'P717_NOM_CLIENTE,P717_COD_PAIS,P717_COD_PROVINCIA,P717_COD_CIUDAD,P717_DIRECCION,P717_TELEFONO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(271816918926554742)
,p_name=>'DA_COD_DISRTRIBUIDOR'
,p_event_sequence=>80
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P717_COD_DISTRIBUIDOR'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(271817023724554743)
,p_event_id=>wwv_flow_imp.id(271816918926554742)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    Select ltrim( nvl( p.nombre, p.nomb_fantasia ) )',
'      into :P717_nom_distribuidor',
'      from cc_clientes c, personas p',
'     where c.cod_empresa = :P_cod_empresa',
'       and c.cod_cliente = :P717_cod_distribuidor',
'       and c.cod_persona = p.cod_persona;',
'  EXCEPTION',
'    ',
'    when others then',
'      :P717_nom_distribuidor := NULL;',
'    ',
'  END;'))
,p_attribute_02=>'P717_COD_DISTRIBUIDOR'
,p_attribute_03=>'P717_NOM_DISTRIBUIDOR'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(271949791340089304)
,p_name=>'DA_CANCEL'
,p_event_sequence=>90
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(271949687091089303)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(271949857700089305)
,p_event_id=>wwv_flow_imp.id(271949791340089304)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(271817290728554745)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(271949950123089306)
,p_name=>'DA_AGREGAR_DETALLE'
,p_event_sequence=>100
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(271815379069554726)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(271951449745089321)
,p_event_id=>wwv_flow_imp.id(271949950123089306)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P717_COD_ARTICULO:=NULL;',
':P717_DESC_ARTICULO:=NULL;',
':P717_CANTIDAD:=''1'';',
':P717_FACTURA:=NULL;',
':P717_GARANTIA:=NULL;',
':P717_SERIE:=NULL;',
':P717_FEC_COMPRA:=NULL;',
':P717_NRO_OT_AUX:=NULL;',
':P717_SER_OT_AUX:=NULL;',
':P717_TIP_OT_AUX:=NULL;',
':P717_SOLUCION_AUX2:=NULL;',
''))
,p_attribute_03=>'P717_COD_ARTICULO,P717_DESC_ARTICULO,P717_CANTIDAD,P717_FACTURA,P717_GARANTIA,P717_SERIE,P717_FEC_COMPRA,P717_NRO_OT_AUX,P717_SER_OT_AUX,P717_TIP_OT_AUX,P717_SOLUCION_AUX2'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(271952414288089331)
,p_event_id=>wwv_flow_imp.id(271949950123089306)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P717_NRO_PLANILLA_AUX:=:P717_NRO_PLANILLA;',
':P717_SER_COMPROBANTE_AUX:=:P717_SER_COMPROBANTE;'))
,p_attribute_02=>'P717_NRO_PLANILLA,P717_SER_COMPROBANTE'
,p_attribute_03=>'P717_NRO_PLANILLA_AUX,P717_SER_COMPROBANTE_AUX'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(271950013903089307)
,p_event_id=>wwv_flow_imp.id(271949950123089306)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(271817290728554745)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(271950209747089309)
,p_name=>'DA_EDITAR_AUX'
,p_event_sequence=>110
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P717_EDITAR_AUX'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(271953690267089343)
,p_event_id=>wwv_flow_imp.id(271950209747089309)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select  ',
'        c002,',
'        c003,',
'        c004,',
'        c005,',
'        c006,',
'        c007,',
'        c008,',
'        c009,',
'        c010,',
'        c011,',
'        c012,',
'        c013,',
'        c014,',
'        c015',
'',
'into    ',
'          :P717_NRO_PLANILLA_AUX,',
'            :P717_COD_ARTICULO,',
'            :P717_SOLUCION_AUX2,',
'            :P717_GARANTIA,',
'            :P717_SER_COMPROBANTE_AUX,',
'            :P717_SERIE,',
'            :P717_FACTURA,',
'            :P717_FEC_COMPRA,',
'            :P717_CANTIDAD,',
'            :P717_NRO_OT_AUX,',
'            :P717_SER_OT_AUX,',
'            :P717_TIP_OT_AUX,',
'            :P717_COMENTARIO,',
'            :P717_DESC_ARTICULO',
'',
'  from APEX_COLLECTIONS',
'  WHERE COLLECTION_NAME = ''COL_DET_CAPLARET'' ',
'  AND SEQ_ID = :P717_EDITAR_AUX ;',
'',
''))
,p_attribute_02=>'P717_EDITAR_AUX'
,p_attribute_03=>'P717_NRO_PLANILLA_AUX,P717_COD_ARTICULO,P717_SOLUCION_AUX2,P717_GARANTIA,P717_SER_COMPROBANTE_AUX,P717_SERIE,P717_FACTURA,P717_FEC_COMPRA,P717_CANTIDAD,P717_NRO_OT_AUX,P717_SER_OT_AUX,P717_TIP_OT_AUX,P717_COMENTARIO,P717_DESC_ARTICULO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(271950383872089310)
,p_event_id=>wwv_flow_imp.id(271950209747089309)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(271817290728554745)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(271950519826089312)
,p_name=>'DA_DETALLE'
,p_event_sequence=>120
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P717_DETALLE'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(271950643856089313)
,p_event_id=>wwv_flow_imp.id(271950519826089312)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    BEGIN ',
'                select c011, c012, c013, c004',
'                   into :P717_NRO_OT, :P717_SER_OT, :P717_TIP_OT, :P717_SOLUCION_AUX',
'                   from apex_collections',
'                   where seq_id = :P717_DETALLE',
'                     and COLLECTION_NAME = ''COL_DET_CAPLARET'';',
'    EXCEPTION',
'    	WHEN OTHERS THEN',
'    		NULL;',
'    END;',
'',
'END;'))
,p_attribute_02=>'P717_DETALLE'
,p_attribute_03=>'P717_NRO_OT,P717_SER_OT,P717_TIP_OT,P717_SOLUCION_AUX'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(271950811423089315)
,p_name=>'DA_INSERTA_SEG'
,p_event_sequence=>130
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(271342886197211038)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(271950953526089316)
,p_event_id=>wwv_flow_imp.id(271950811423089315)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(271950719673089314)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(271952553539089332)
,p_name=>'DA_GUARDAR_DETALLE'
,p_event_sequence=>140
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(271949589209089302)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(305092856232685210)
,p_event_id=>wwv_flow_imp.id(271952553539089332)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.message.clearErrors();'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(305092780782685209)
,p_event_id=>wwv_flow_imp.id(271952553539089332)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'  :P717_EXISTE := 2;',
'  select 1',
'    into :P717_EXISTE',
'    from APEX_COLLECTIONS',
'    where COLLECTION_NAME = ''COL_DET_CAPLARET''',
'    and (:P717_EDITAR_AUX is null or seq_id <> :P717_EDITAR_AUX)',
'    and c005 = :P717_GARANTIA',
'    and rownum = 1;',
'',
'   exception',
'         when no_data_found then',
'            :P717_EXISTE := 2;',
'         when others then',
'            :P717_EXISTE := 3;',
'         ',
'END;',
''))
,p_attribute_02=>'P717_GARANTIA,P717_EDITAR_AUX'
,p_attribute_03=>'P717_EXISTE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(305092939103685211)
,p_event_id=>wwv_flow_imp.id(271952553539089332)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.message.showErrors([{',
'                                type: apex.message.TYPE.ERROR,',
'                                location: "inline",',
'                                pageItem: "P717_GARANTIA",',
unistr('                                message: "La garant\00EDa ingresada ya existe."'),
'                                }]); ',
''))
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P717_EXISTE'
,p_client_condition_expression=>'1'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(271952698811089333)
,p_event_id=>wwv_flow_imp.id(271952553539089332)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    IF :P717_CANTIDAD=0 THEN ',
'        :P717_CANTIDAD:=1;',
'    END IF;',
'    :P717_ERR := null;',
'    IF :P717_ACCION_CONSULTA=''3'' THEN',
'        :P717_NRO_PLANILLA_aux:=CAPLARET.FN_NRO_PLANILLA();',
'    END IF;',
'    IF :P717_COD_ARTICULO is not null and :P717_CANTIDAD is not null then ',
'        if :P717_EDITAR_AUX is null then',
'                 ',
'                  CAPLARET.PR_AGREGAR_DETALLE(                              ',
'                        PI_COD_EMPRESA => :P717_COD_EMPRESA,    ',
'                        PI_NRO_PLANILLA => :P717_NRO_PLANILLA_AUX,',
'                        PI_COD_ARTICULO => :P717_COD_ARTICULO,',
'                        PI_SER_COMPROBANTE => :P717_SER_COMPROBANTE_AUX,',
'                        PI_CANTIDAD => :P717_CANTIDAD,',
'                        PI_FACTURA => :P717_FACTURA,',
'                        PI_GARANTIA => :P717_GARANTIA,',
'                        PI_SERIE => :P717_SERIE,',
'                        PI_FEC_COMPRA => :P717_FEC_COMPRA,',
'                        PI_SER_OT => :P717_SER_OT_AUX,',
'                        PI_NRO_OT => :P717_NRO_OT_AUX,',
'                        PI_TIP_OT => :P717_TIP_OT_AUX,',
'                        PI_SOLUCION => :P717_SOLUCION_AUX2);',
'                        :P717_CANT_DETALLE := nvl(:P717_CANT_DETALLE,0) + 1;',
'        else',
'                    CAPLARET.PR_UPDATE_DETALLE(',
'                             PI_SEQ => :P717_EDITAR_AUX,',
'                            PI_COD_ARTICULO => :P717_COD_ARTICULO,',
'                            PI_CANTIDAD => :P717_CANTIDAD,',
'                            PI_FACTURA => :P717_FACTURA,',
'                            PI_GARANTIA => :P717_GARANTIA,',
'                            PI_SERIE => :P717_SERIE,',
'                            PI_FEC_COMPRA => :P717_FEC_COMPRA,',
'                            PI_SER_OT => :P717_SER_OT_AUX,',
'                            PI_TIP_OT => :P717_TIP_OT_AUX,',
'                            PI_NRO_OT => :P717_NRO_OT_AUX,',
'                            PI_SOLUCION => :P717_SOLUCION_AUX2);',
'         end if;',
'         :P717_EDITAR_AUX := null;',
'    ELSE',
'        :P717_ERR:=''Por favor complete los campo obligatorios'';',
'        :P717_EXISTE := 1;',
'end if;',
'    ',
'    EXCEPTION',
'        WHEN OTHERS THEN',
'           raise_application_error(-20000, SQLERRM);',
'',
'',
'END;'))
,p_attribute_02=>'P717_COD_EMPRESA,P717_NRO_PLANILLA_AUX,P717_COD_ARTICULO,P717_SER_COMPROBANTE_AUX,P717_CANTIDAD,P717_FACTURA,P717_GARANTIA,P717_SERIE,P717_FEC_COMPRA,P717_SER_OT_AUX,P717_NRO_OT_AUX,P717_TIP_OT_AUX,P717_SOLUCION_AUX2,P717_ACCION_CONSULTA,P717_EDITAR_'
||'AUX'
,p_attribute_03=>'P717_ERR,P717_CANT_DETALLE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'NOT_EQUALS'
,p_client_condition_element=>'P717_EXISTE'
,p_client_condition_expression=>'1'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(271953310073089340)
,p_event_id=>wwv_flow_imp.id(271952553539089332)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(271817290728554745)
,p_client_condition_type=>'NOT_EQUALS'
,p_client_condition_element=>'P717_EXISTE'
,p_client_condition_expression=>'1'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(271953465099089341)
,p_event_id=>wwv_flow_imp.id(271952553539089332)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(271813197385554704)
,p_client_condition_type=>'NOT_EQUALS'
,p_client_condition_element=>'P717_EXISTE'
,p_client_condition_expression=>'1'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(271953506150089342)
,p_event_id=>wwv_flow_imp.id(271952553539089332)
,p_event_result=>'TRUE'
,p_action_sequence=>80
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(271815786438554730)
,p_client_condition_type=>'NOT_EQUALS'
,p_client_condition_element=>'P717_EXISTE'
,p_client_condition_expression=>'1'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(271952946909089336)
,p_name=>'DA_ERR'
,p_event_sequence=>150
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P717_ERR'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(271953015591089337)
,p_event_id=>wwv_flow_imp.id(271952946909089336)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'&P717_ERR.'
,p_attribute_03=>'warning'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P717_ERR'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(271953950506089346)
,p_name=>'DA_ELIMINAR'
,p_event_sequence=>160
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P717_ELIMINAR'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(271954053435089347)
,p_event_id=>wwv_flow_imp.id(271953950506089346)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>unistr('\00BFEsta seguro/a de borrar?')
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(271954179302089348)
,p_event_id=>wwv_flow_imp.id(271953950506089346)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN ',
'    CAPLARET.PR_ELIMINAR_REGISTRO(PI_SEQ_ID => :P717_ELIMINAR);   ',
'EXCEPTION',
'WHEN OTHERS THEN',
'    raise_application_error(-20000, SQLERRM);',
'END;',
'',
':P717_CANT_DETALLE := :P717_CANT_DETALLE - 1;'))
,p_attribute_02=>'P717_ELIMINAR'
,p_attribute_03=>'P717_CANT_DETALLE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(271954219856089349)
,p_event_id=>wwv_flow_imp.id(271953950506089346)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(271813197385554704)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(272837473626187206)
,p_name=>'DA_GUARDAR_PLANILLA'
,p_event_sequence=>170
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(271816230029554735)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(272839491078187226)
,p_event_id=>wwv_flow_imp.id(272837473626187206)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
':P717_ERR:=null;   ',
'    IF :P717_CANT_DETALLE = 0 THEN',
'         :P717_CANT_DETALLE:=NULL;',
'        :P717_ERR:=''No hay detalle'';',
'    END IF;',
'END;'))
,p_attribute_03=>'P717_CANT_DETALLE,P717_ERR'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(272837542535187207)
,p_event_id=>wwv_flow_imp.id(272837473626187206)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
':P717_ERR := null;',
'IF :P717_NRO_PLANILLA IS NULL THEN',
'    IF :P717_NRO_PLANILLA_AUX IS NULL THEN',
'        :P717_NRO_PLANILLA:=CAPLARET.FN_NRO_PLANILLA();',
'    ELSE',
'        :P717_NRO_PLANILLA:=:P717_NRO_PLANILLA_AUX;',
'    END IF;',
'END IF;',
'IF :P717_COD_EMPRESA is not null ',
'and :P717_NRO_PLANILLA is not null and :P717_COD_SUCURSAL is not null and :P717_SER_COMPROBANTE is not null and :P717_TIPO is not null and :P717_ORIGEN is not null then',
'        IF :P717_EDITAR IS NULL THEN',
'CAPLARET.PR_CONFIRMAR(PI_COD_EMPRESA => :P717_COD_EMPRESA,',
'PI_COD_SUCURSAL => :P717_COD_SUCURSAL,',
'PI_NRO_PLANILLA => :P717_NRO_PLANILLA,',
'PI_FEC_PLANILLA => :P717_FEC_PLANILLA,',
'PI_FEC_RENDICION_ORIG => :P717_FEC_RENDICION_ORIG,    ',
'PI_COD_USUARIO => :P717_COD_USUARIO,',
'PI_COMENTARIO => :P717_COMENTARIO,',
'PI_ORIGEN => :P717_ORIGEN,',
'PI_IND_RETIRADO_CLI => :P717_IND_RETIRADO_CLI,',
'PI_FEC_RETIRADO_CLI => :P717_FEC_RETIRADO_CLI,',
'PI_IND_RECIBIDO_LOG => :P717_IND_RECIBIDO_LOG,',
'PI_FEC_RECIBIDO_LOG => :P717_FEC_RECIBIDO_LOG,',
'PI_COD_VENDEDOR => :P717_COD_VENDEDOR,',
'PI_COD_PAIS => :P717_COD_PAIS,',
'PI_COD_CIUDAD => :P717_COD_CIUDAD,',
'PI_COD_PROVINCIA => :P717_COD_PROVINCIA,',
'PI_TELEFONO => :P717_TELEFONO,',
'PI_DIRECCION => :P717_DIRECCION,',
'PI_COD_ARTICULO => :P717_COD_ARTICULO,',
'PI_IND_ENVIADO_CLIENTE => :P717_IND_ENVIADO_CLIENTE,',
'PI_FEC_ENVIADO_CLIENTE => :P717_FEC_ENVIADO_CLIENTE,',
'PI_SOLUCION => :P717_SOLUCION,',
'PI_SER_COMPROBANTE => :P717_SER_COMPROBANTE,',
'PI_NOMBRE_CLIENTE => :P717_NOMBRE_CLIENTE,',
'PI_GARANTIA => :P717_GARANTIA,',
'PI_SERIE => :P717_SERIE,',
'PI_FACTURA => :P717_FACTURA,',
'PI_FEC_COMPRA => :P717_FEC_COMPRA,',
'PI_COD_DISTRIBUIDOR => :P717_COD_DISTRIBUIDOR,',
'PI_TIPO => :P717_TIPO,',
'PI_COD_CLIENTE => :P717_COD_CLIENTE,',
'PI_CORREO_LOGISTICA => :P717_CORREO_LOGISTICA,',
'PI_OBSERVACION => :P717_OBSERVACION,',
'PI_IND_ANULADO => :P717_IND_ANULADO,',
'PI_FEC_ANULACION => :P717_FEC_ANULACION,',
'PI_RUC => :P717_RUC,',
'PI_TRANSPORTADORA => :P717_TRANSPORTADORA,',
'PI_NRO_GUIA => :P717_NRO_GUIA,',
'PI_COSTO_ENVIO => :P717_COSTO_ENVIO,',
'PI_NRO_OT => :P717_NRO_OT,',
'PI_SER_OT => :P717_SER_OT,',
'PI_FECHA_AGENDA => :P717_FECHA_AGENDA,',
'PO_MENSAJE_ERROR => :P717_ERR);',
'       ELSE ',
'    UPDATE RP_RETIRO_CABECERA',
'               SET  ',
'COD_SUCURSAL = :P717_COD_SUCURSAL,',
'FEC_RENDICION_ORIG = :P717_FEC_RENDICION_ORIG,    ',
'COD_USUARIO = :P717_COD_USUARIO,',
'COMENTARIO = :P717_COMENTARIO,',
'ORIGEN = :P717_ORIGEN,',
'IND_RETIRADO_CLI = :P717_IND_RETIRADO_CLI,',
'FEC_RETIRADO_CLI = :P717_FEC_RETIRADO_CLI,',
'IND_RECIBIDO_LOG = :P717_IND_RECIBIDO_LOG,',
'FEC_RECIBIDO_LOG = :P717_FEC_RECIBIDO_LOG,',
'COD_VENDEDOR = :P717_COD_VENDEDOR,',
'COD_PAIS = :P717_COD_PAIS,',
'COD_CIUDAD = :P717_COD_CIUDAD,',
'COD_PROVINCIA = :P717_COD_PROVINCIA,',
'TELEFONO = :P717_TELEFONO,',
'DIRECCION = :P717_DIRECCION,',
'COD_ARTICULO = :P717_COD_ARTICULO,',
'IND_ENVIADO_CLIENTE = :P717_IND_ENVIADO_CLIENTE,',
'FEC_ENVIADO_CLIENTE = :P717_FEC_ENVIADO_CLIENTE,',
'SOLUCION = :P717_SOLUCION,',
'NOMBRE_CLIENTE = :P717_NOMBRE_CLIENTE,',
'GARANTIA = :P717_GARANTIA,',
'SERIE = :P717_SERIE,',
'FACTURA = :P717_FACTURA,',
'FEC_COMPRA = :P717_FEC_COMPRA,',
'COD_DISTRIBUIDOR = :P717_COD_DISTRIBUIDOR,',
'TIPO = :P717_TIPO,',
'COD_CLIENTE = :P717_COD_CLIENTE,',
'CORREO_LOGISTICA = :P717_CORREO_LOGISTICA,',
'OBSERVACION = :P717_OBSERVACION,',
'IND_ANULADO = :P717_IND_ANULADO,',
'FEC_ANULACION = :P717_FEC_ANULACION,',
'RUC = :P717_RUC,',
'TRANSPORTADORA = :P717_TRANSPORTADORA,',
'NRO_GUIA = :P717_NRO_GUIA,',
'COSTO_ENVIO = :P717_COSTO_ENVIO,',
'NRO_OT = :P717_NRO_OT,',
'SER_OT = :P717_SER_OT,',
'FECHA_AGENDA = :P717_FECHA_AGENDA',
'    WHERE COD_EMPRESA = :P717_COD_EMPRESA',
'        AND NRO_PLANILLA= :P717_NRO_PLANILLA',
'        AND COD_EMPRESA = :P717_COD_EMPRESA',
'        AND SER_COMPROBANTE = :P717_SER_COMPROBANTE;',
'    END IF;',
'ELSE',
'    :P717_ERR := ''Por favor: ingrese los campos obligatorios ''; ',
'END IF;',
'EXCEPTION',
'WHEN OTHERS THEN ',
'    :P717_ERR := ''Error al insertar datos en base, por favor : revise los datos a ingresar'';',
'    raise_application_error(-20000, SQLERRM);',
'END;'))
,p_attribute_02=>'P717_COD_EMPRESA,P717_COD_SUCURSAL,P717_FEC_PLANILLA,P717_FEC_RENDICION_ORIG,P717_COD_USUARIO,P717_COMENTARIO,P717_ORIGEN,P717_IND_RETIRADO_CLI,P717_FEC_RETIRADO_CLI,P717_IND_RECIBIDO_LOG,P717_FEC_RECIBIDO_LOG,P717_COD_VENDEDOR,P717_COD_PAIS,P717_COD'
||'_CIUDAD,P717_COD_PROVINCIA,P717_TELEFONO,P717_DIRECCION,P717_COD_ARTICULO,P717_IND_ENVIADO_CLIENTE,P717_FEC_ENVIADO_CLIENTE,P717_SOLUCION,P717_SER_COMPROBANTE,P717_NOMBRE_CLIENTE,P717_GARANTIA,P717_SERIE,P717_FACTURA,P717_FEC_COMPRA,P717_COD_DISTRIBU'
||'IDOR,P717_TIPO,P717_COD_CLIENTE,P717_CORREO_LOGISTICA,P717_OBSERVACION,P717_IND_ANULADO,P717_FEC_ANULACION,P717_RUC,P717_TRANSPORTADORA,P717_NRO_GUIA,P717_COSTO_ENVIO,P717_NRO_OT,P717_SER_OT,P717_FECHA_AGENDA'
,p_attribute_03=>'P717_ERR,P717_NRO_PLANILLA'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P717_CANT_DETALLE'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(272837780480187209)
,p_event_id=>wwv_flow_imp.id(272837473626187206)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(249620790532431034)
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P717_ERR'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(272837856439187210)
,p_event_id=>wwv_flow_imp.id(272837473626187206)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'Se guardaron los cambios correctamente'
,p_attribute_03=>'success'
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P717_ERR'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(354906768099081115)
,p_event_id=>wwv_flow_imp.id(272837473626187206)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_02=>'Y'
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P717_ERR'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(272838192161187213)
,p_name=>'DA_COD_ARTICULO'
,p_event_sequence=>180
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P717_COD_ARTICULO'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(272838252545187214)
,p_event_id=>wwv_flow_imp.id(272838192161187213)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P717_cod_articulo is not null then',
'BEGIN',
'  select descripcion',
'    into :P717_desc_articulo',
'    from st_articulos',
'   where cod_empresa = :P_cod_empresa',
'     and cod_articulo = :P717_cod_articulo;',
'',
'    EXCEPTION',
'        when others then',
'            :P717_desc_articulo:= null;',
'       ',
'        ',
'        ',
'END;',
'END IF;'))
,p_attribute_02=>'P717_COD_ARTICULO'
,p_attribute_03=>'P717_DESC_ARTICULO'
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
 p_id=>wwv_flow_imp.id(272838345076187215)
,p_name=>'DA_GUARDAR_SEG'
,p_event_sequence=>190
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(271951147387089318)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(272838486372187216)
,p_event_id=>wwv_flow_imp.id(272838345076187215)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P717_ERR:=NULL;',
'if :P717_NRO_PLANILLA is not null then  ',
' 	INSERTA_SEGUIMIENTO_RET(:P_cod_empresa,:P717_seguimiento,',
' 	:P_COD_USUARIO,',
'  to_char(:P717_NRO_PLANILLA));',
' -- busca_llamadas;',
' else',
' 	:P717_ERR:=(''La solicitud de Credito debe estar Grabada para agregarle un comentario '');',
' end if; ',
'  :P717_seguimiento:= null;'))
,p_attribute_02=>'P717_SEGUIMIENTO,P717_NRO_PLANILLA'
,p_attribute_03=>'P717_ERR'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(272838568208187217)
,p_event_id=>wwv_flow_imp.id(272838345076187215)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>unistr('Se guard\00F3 su comentario con exito')
,p_attribute_03=>'success'
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P717_ERR'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(272838721980187219)
,p_event_id=>wwv_flow_imp.id(272838345076187215)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(272838685748187218)
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P717_ERR'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(272838871590187220)
,p_event_id=>wwv_flow_imp.id(272838345076187215)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(249620624049431033)
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P717_ERR'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(272838938378187221)
,p_event_id=>wwv_flow_imp.id(272838345076187215)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(271950719673089314)
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P717_ERR'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(272839742288187229)
,p_event_id=>wwv_flow_imp.id(272838345076187215)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>unistr('\00BFDesea refrescar la pagina? ')
,p_attribute_03=>'information'
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P717_ERR'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(272839616235187228)
,p_event_id=>wwv_flow_imp.id(272838345076187215)
,p_event_result=>'TRUE'
,p_action_sequence=>80
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_02=>'Y'
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P717_ERR'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(272839284978187224)
,p_name=>'DA_CANTIDAD'
,p_event_sequence=>200
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P717_CANTIDAD'
,p_bind_type=>'bind'
,p_bind_event_type=>'keypress'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(272839339308187225)
,p_event_id=>wwv_flow_imp.id(272839284978187224)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if (!soloNumerosEnterosMayoresOIgualesAUno(event)){',
'      event.preventDefault();',
'}'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(272839813553187230)
,p_name=>'DA_RUC'
,p_event_sequence=>210
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P717_RUC'
,p_bind_type=>'bind'
,p_bind_event_type=>'focusout'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(272839920927187231)
,p_event_id=>wwv_flow_imp.id(272839813553187230)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'	select   cod_cliente',
'	      INTO     :P717_COD_CLIENTE',
'	  from cc_clientes c, personas p,  ident_personas pi',
'	 where c.cod_empresa = :P_cod_empresa',
'	   and c.cod_persona = p.cod_persona',
'	   and p.cod_persona = pi.cod_persona',
'	   AND COD_IDENT IN (''CI'',''RUC'')',
'	   AND NUMERO=:P717_RUC',
'	  -- and :P717_COD_CLIENTE is null; ',
'      and rownum = 1;',
'	EXCEPTION ',
'		WHEN OTHERS THEN ',
'		    :P717_COD_CLIENTE:= null;',
'   ',
'END;'))
,p_attribute_02=>'P717_RUC'
,p_attribute_03=>'P717_COD_CLIENTE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(272841092728187242)
,p_name=>'DA_LLAMADA_A_CAORDTRA'
,p_event_sequence=>220
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P717_OT'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(272841210575187244)
,p_event_id=>wwv_flow_imp.id(272841092728187242)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'v_existe number; ',
'BEGIN',
'',
':P717_ERR := null;',
' BEGIN ',
'                select c011, c012, c013, c004, c003 , c005, c002',
'                   into :P717_NRO_OT, :P717_SER_OT, :P717_TIP_OT, :P717_SOLUCION_AUX, :P717_COD_ARTICULO_AUX, :P717_GARANTIA_AUX, :P717_NRO_PLANILLA_AUX',
'                   from apex_collections',
'                   where seq_id = :P717_OT',
'                     and COLLECTION_NAME = ''COL_DET_CAPLARET'';',
'    EXCEPTION',
'    	WHEN OTHERS THEN',
'    		NULL;',
'    END;',
'',
'     BEGIN',
'           select 1',
'           into v_existe',
'           from  RP_Retiro_CABECERA',
'           where cod_empresa = :P_COD_EMPRESA ',
'           and nro_planilla = :P717_NRO_PLANILLA_AUX;',
'     ',
'',
'        EXCEPTION WHEN NO_DATA_FOUND THEN ',
'            :P717_ERR := ''Por favor debe guardar la planilla antes de continuar.'';  ',
'       end;',
'END;'))
,p_attribute_02=>'P717_OT'
,p_attribute_03=>'P717_NRO_OT,P717_SER_OT,P717_TIP_OT,P717_SOLUCION_AUX,P717_COD_ARTICULO_AUX,P717_GARANTIA_AUX,P717_ERR'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(272841127078187243)
,p_event_id=>wwv_flow_imp.id(272841092728187242)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
':P717_URL:=null;',
'IF :P717_NRO_OT IS NOT NULL AND :P717_SER_OT IS NOT NULL THEN',
'   SELECT APEX_PAGE.GET_URL (  p_page   => 588,',
'                            p_items  => ''P588_SER_COMPROBANTE,P588_NRO_COMPROBANTE'',',
'                            p_values => (:P717_SER_OT||'',''||:P717_NRO_OT)) f_url_1',
'    INTO :P717_URL',
'     FROM DUAL;',
'',
'ELSE ',
'   SELECT APEX_PAGE.GET_URL (  p_page   => 730, ',
'                            p_items  => ''P730_COD_CLIENTE,P730_NRO_COMPROBANTE,P730_COD_ARTICULO_OT,P730_NRO_GARANTIA,P730_COD_DISTRIBUIDOR,P730_COD_ORIGEN'',',
'                            p_values => (''''||:P717_COD_CLIENTE||'',''||:P717_NRO_PLANILLA||'',''||:P717_COD_ARTICULO_AUX||'',''||:P717_GARANTIA_AUX||'',''||:P717_COD_DISTRIBUIDOR||'',''||''42''||'''')) f_url_1',
'    INTO :P717_URL',
'     FROM DUAL;',
'',
'END IF;',
'END;',
' '))
,p_attribute_02=>'P717_NRO_OT,P717_SER_OT,P717_TIP_OT,P717_COD_ARTICULO_AUX,P717_GARANTIA_AUX,P717_COD_CLIENTE,P717_NRO_PLANILLA,P717_COD_DISTRIBUIDOR'
,p_attribute_03=>'P717_URL'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P717_ERR'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(272841426120187246)
,p_event_id=>wwv_flow_imp.id(272841092728187242)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var url = apex.item("P717_URL").getValue();',
'',
'apex.navigation.redirect(url);',
'//window.open(url,''_blank'');',
''))
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P717_URL'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(274084137097475204)
,p_name=>'DA_SOLO_NUMEROS'
,p_event_sequence=>230
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P717_COSTO_ENVIO'
,p_bind_type=>'bind'
,p_bind_event_type=>'keypress'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(274084258921475205)
,p_event_id=>wwv_flow_imp.id(274084137097475204)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if (!soloNumeros1(event)){',
'      event.preventDefault();',
'}'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(274084358623475206)
,p_name=>'DA_CANCELAR'
,p_event_sequence=>240
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(271951337329089320)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(274084424395475207)
,p_event_id=>wwv_flow_imp.id(274084358623475206)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(271950719673089314)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(274086062257475223)
,p_name=>'DA_RETIRADO'
,p_event_sequence=>250
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P717_IND_RETIRADO_CLI'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(274086123231475224)
,p_event_id=>wwv_flow_imp.id(274086062257475223)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'    IF :P717_IND_RETIRADO_CLI=''S'' THEN',
'      :P717_FEC_RETIRADO_CLI:=TO_DATE(SYSDATE,''dd/mm/yyyy'');',
'    ELSIF   :P717_IND_RETIRADO_CLI=''N'' THEN',
'      :P717_FEC_RETIRADO_CLI:=NULL;',
'      END IF;'))
,p_attribute_02=>'P717_IND_RETIRADO_CLI'
,p_attribute_03=>'P717_FEC_RETIRADO_CLI'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(274086219119475225)
,p_name=>'DA_RETIRADO_1'
,p_event_sequence=>260
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P717_IND_RECIBIDO_LOG'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(274086302772475226)
,p_event_id=>wwv_flow_imp.id(274086219119475225)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'    IF :P717_IND_RECIBIDO_LOG=''S'' THEN',
'      :P717_FEC_RECIBIDO_LOG:=TO_DATE(SYSDATE,''dd/mm/yyyy'');',
'    ELSIF   :P717_IND_RECIBIDO_LOG=''N'' THEN',
'      :P717_FEC_RECIBIDO_LOG:=NULL;',
'      END IF;'))
,p_attribute_02=>'P717_IND_RECIBIDO_LOG'
,p_attribute_03=>'P717_FEC_RECIBIDO_LOG'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(274086450484475227)
,p_name=>'DA_ENVIADO'
,p_event_sequence=>270
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P717_IND_ENVIADO_CLIENTE'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(274086569180475228)
,p_event_id=>wwv_flow_imp.id(274086450484475227)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'    IF :P717_IND_ENVIADO_CLIENTE=''S'' THEN',
'      :P717_FEC_ENVIADO_CLIENTE:=TO_DATE(SYSDATE,''dd/mm/yyyy'');',
'    ELSIF   :P717_IND_ENVIADO_CLIENTE=''N'' THEN',
'      :P717_FEC_ENVIADO_CLIENTE:=NULL;',
'      END IF;'))
,p_attribute_02=>'P717_IND_ENVIADO_CLIENTE'
,p_attribute_03=>'P717_FEC_ENVIADO_CLIENTE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(274086610178475229)
,p_name=>'DA_ANU'
,p_event_sequence=>280
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P717_IND_ANULADO'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(274086715845475230)
,p_event_id=>wwv_flow_imp.id(274086610178475229)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF :P717_IND_ANULADO=''S'' THEN',
':P717_FEC_ANULACION:=TO_DATE(SYSDATE,''dd/mm/yyyy'');',
'ELSIF    :P717_IND_ANULADO=''N'' THEN',
':P717_FEC_ANULACION:=NULL;',
'END IF;'))
,p_attribute_02=>'P717_IND_ANULADO'
,p_attribute_03=>'P717_FEC_ANULACION'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(305092330722685205)
,p_name=>'DA_GARANTIA'
,p_event_sequence=>290
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P717_GARANTIA'
,p_condition_element=>'P717_GARANTIA'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'focusout'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(305092587549685207)
,p_event_id=>wwv_flow_imp.id(305092330722685205)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.message.clearErrors();'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(305092158579685203)
,p_event_id=>wwv_flow_imp.id(305092330722685205)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'----APEX_DEBUG.ERROR(''Antes del Existe'');',
'  :P717_EXISTE := 2;',
'  select 1',
'    into :P717_EXISTE',
'    from APEX_COLLECTIONS',
'    where COLLECTION_NAME = ''COL_DET_CAPLARET''',
'    and (:P717_EDITAR_AUX is null or seq_id <> :P717_EDITAR_AUX)',
'    and c005 = :P717_GARANTIA',
'    and rownum = 1;',
'',
'--- APEX_DEBUG.ERROR(''despues del Existe'' || :P717_EXISTE);',
'   exception',
'         when no_data_found then',
'            :P717_EXISTE := 2;',
'         when others then',
'            :P717_EXISTE := 3;',
'            raise_application_error(-20000, ''Existe'' || SQLERRM);',
'         ',
'END;',
''))
,p_attribute_02=>'P717_GARANTIA,P717_EDITAR_AUX'
,p_attribute_03=>'P717_EXISTE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(305092664807685208)
,p_event_id=>wwv_flow_imp.id(305092330722685205)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.message.showErrors([{',
'                                type: apex.message.TYPE.ERROR,',
'                                location: "inline",',
'                                pageItem: "P717_GARANTIA",',
unistr('                                message: "La garant\00EDa ingresada ya existe."'),
'                                }]); ',
''))
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P717_EXISTE'
,p_client_condition_expression=>'1'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(305093187021685213)
,p_name=>'DA_FEC_PLANILLA'
,p_event_sequence=>300
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P717_FEC_PLANILLA'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(305093201718685214)
,p_event_id=>wwv_flow_imp.id(305093187021685213)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
':P717_FEC_PLANILLA_1 := :P717_FEC_PLANILLA;',
'END;'))
,p_attribute_02=>'P717_FEC_PLANILLA'
,p_attribute_03=>'P717_FEC_PLANILLA_1'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(305093495815685216)
,p_name=>'DA_COD_USUARIO'
,p_event_sequence=>310
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P717_COD_USUARIO'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(305093558018685217)
,p_event_id=>wwv_flow_imp.id(305093495815685216)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
':P717_COD_USUARIO_1 := :P717_COD_USUARIO;',
'END;'))
,p_attribute_02=>'P717_COD_USUARIO'
,p_attribute_03=>'P717_COD_USUARIO_1'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(271344059667211050)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_INIT'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P717_COD_USUARIO := NVL(:P_COD_USUARIO,:APP_USER) ;',
'',
':P717_COD_EMPRESA := NVL(:P_COD_EMPRESA,''1'') ;',
'',
':P717_COD_SUCURSAL := NVL(:P_COD_SUCURSAL,''01'') ;',
'',
':P717_COD_MODULO := NVL(:P_COD_MODULO,''RP'') ;',
'',
':P717_EDITAR_AUX:=NULL;'))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_imp.component_end;
end;
/
