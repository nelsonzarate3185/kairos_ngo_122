prompt --application/pages/page_00345
begin
--   Manifest
--     PAGE: 00345
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
 p_id=>345
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'Ficha Tecnica Carneo'
,p_alias=>'FICHA-TECNICA-CARNEO'
,p_step_title=>'Ficha Tecnica Carneo'
,p_allow_duplicate_submissions=>'N'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_javascript_file_urls=>'#APP_FILES#util_generico#MIN#.js'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'///solo_numeros();',
'formatMiles(''P345_COSTO'');',
'',
'',
'function seleccionar(cb) {',
'    ////console.log(cb.value);     console.log(cb.checked);',
'  if (cb.checked == true){ ',
'      $s(''P345_VALOR_CHK'',''S'');',
'      $s(''P345_ID_CHK'', cb.value,false);',
'  } else {',
'      $s(''P345_VALOR_CHK'',''N'');',
'      $s(''P345_ID_CHK'', cb.value,false);',
'  }',
'  ',
'                            apex.region("P345_COSTO_REP").refresh();',
'}',
'',
' ',
'function selec_chk(cb) {',
'  if (cb.checked == true){        ',
'   ',
'       apex.server.process( ''Marcar_Todos'',',
'                { x01: ''S''',
'                },  ',
'                {',
'                    success: function (pData) {            ',
'                                                   ',
'                            $s(''P345_BANDERA'',''S'');     ',
'                            apex.region("Coleccion_B3").refresh(); ',
'                          ',
'                    },',
'                    error: function(e){',
'                        console.log("Error: ", e);',
'                    },',
'                    dataType: "json"      ',
'                }',
'            );',
'            ',
'                               ',
'',
'  } else {  ',
'      apex.server.process( ''Marcar_Todos'',',
'                { x01: "N"',
'                },  ',
'                {',
'                    success: function (pData) {        ',
'                            $s(''P345_BANDERA'',''N'');  ',
'                      apex.region("Coleccion_B3").refresh();   ',
'                    },',
'                    error: function(e){',
'                        console.log("Error: ", e);',
'                    },',
'                    dataType: "json"          ',
'                }',
'            ); ',
' ',
'    } ',
'',
'}',
' ',
' ',
'',
'            ',
'function  valor_css()',
'{',
'      $(''td[headers="PRECIO"]'').each(function() {            ',
'           ',
'                if ( parseInt($(this).text()) === 0 ||  $(this).text()==='''' ) { ',
'                    $(this).css({"background-color":"#DCDCDC"}); ',
'                }     ',
'                ',
'        });',
'     ',
'     ',
'     $(''td[headers="COSTO"]'').each(function() {            ',
'           ',
'                if ( parseInt($(this).text()) === 0 ||  $(this).text()==='''' ) { ',
'                    $(this).css({"background-color":"#F5F5F5"}); ',
'                }     ',
'                ',
'        });',
'        ',
'}'))
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
' ',
'  .a-IRR-header  a , #checktext {color: yellow; }',
' .a-IRR-header {    background: #003a85!important;}',
'',
'',
'.t-Body-mainContent  { ',
'    background: #082b642f!important;',
'} ',
'  ',
'  .t-Form-label{',
'    color:  darkblue  !important; ',
'    } ',
'',
'   .t-Form-fieldContainer:not(.js-show-label, .is-active ) .t-Form-labelContainer .t-Form-label {   ',
'    margin-top: -8px ;  ',
'    }',
'',
'    ',
'    .js-show-label .t-Form-labelContainer .t-Form-label {    ',
'    font-weight: bold;',
'    } ',
'    .cerrado{ background: lightgreen!important;}',
'    .creado{ background: #FFED00 !important;}',
'    .carneo{background: #48b8ad !important;}',
'    .despiece{background: #6486af !important;}',
'    .rechazado{background: #b75d5d !important;}',
'    .autorizado{background: #bfffb5 !important;}',
'',
''))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_last_updated_by=>'JUANSA'
,p_last_upd_yyyymmddhh24miss=>'20240725145314'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(93791242866437708)
,p_plug_name=>'FICHA TECNICA'
,p_region_name=>'gral'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--accent1:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>990
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(93791033367437706)
,p_plug_name=>'Cabecera'
,p_parent_plug_id=>wwv_flow_imp.id(93791242866437708)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--accent13:t-Region--scrollBody:margin-bottom-sm'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(93791195093437707)
,p_plug_name=>'Coleccion_B3'
,p_region_name=>'Coleccion_B3'
,p_parent_plug_id=>wwv_flow_imp.id(93791033367437706)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>170
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT  C001 NRO_FICHA',
'       ,C002 COD_ARTICULO',
'       ,C003 DESCRIPCION  ',
'       ,N001 COSTO   ',
'       ,N002 PRECIO  ',
'       ,C006 CANTIDAD  ',
'       ,C007 CANT_UTIL  ',
'       ,C008 NRO_SOLICITUD  ',
'       ,C009 FECHA_SOL  ',
'       ,C010 OT ',
'       ,C011 NRO_AJUSTE  ',
'       ,C012 IDREG ',
'       , APEX_ITEM.CHECKBOX(1,SEQ_ID,decode(C013,''S'',''CHECKED'',''UNCHECKED'' )|| DECODE(:P345_NRO,NULL,'' disabled'', DECODE(C008,NULL,'' onclick="seleccionar(this)"'','' disabled''))) AS CHK',
'       , NULL Transito',
'       ,SEQ_ID',
'       ,N003 Porcentaje',
'FROM APEX_COLLECTIONS  ',
'WHERE COLLECTION_NAME = ''STFICHATECDET'' ',
'AND C013<>''D'' ',
' ',
'UNION ALL ',
'SELECT NULL NRO_FICHA',
'       ,NULL COD_ARTICULO',
'       ,NULL DESCRIPCION  ',
'       ,NULL COSTO   ',
'       ,NULL PRECIO  ',
'       ,NULL CANTIDAD  ',
'       ,NULL CANT_UTIL  ',
'       ,NULL NRO_SOLICITUD  ',
'       ,NULL FECHA_SOL  ',
'       ,NULL OT ',
'       ,NULL NRO_AJUSTE  ',
'       ,NULL IDREG        ',
'       ,  APEX_ITEM.CHECKBOX (p_idx         => 1 ,',
'                           p_value       => null,',
'                           p_attributes  =>  ''disabled'')as  CHK',
'       , NULL Transito',
'       ,NULL SEQ_ID ',
'       ,null Porcentaje',
'FROM DUAL',
' '))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Coleccion_B3'
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
 p_id=>wwv_flow_imp.id(102983145175146240)
,p_alias=>'Coleccion_B3 '
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_search_textbox=>'N'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_rows_per_page=>'N'
,p_show_control_break=>'N'
,p_show_computation=>'N'
,p_show_aggregate=>'N'
,p_show_pivot=>'N'
,p_show_flashback=>'N'
,p_show_help=>'N'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'JUANSA'
,p_internal_uid=>102983145175146240
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(102983207400146241)
,p_db_column_name=>'NRO_FICHA'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Nro Ficha'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(105202544368701804)
,p_db_column_name=>'TRANSITO'
,p_display_order=>20
,p_column_identifier=>'N'
,p_column_label=>'Transito'
,p_column_link=>'javascript:$s(''P345_ART_TRANSITO'',''#COD_ARTICULO#'');'
,p_column_linktext=>'<span class="fa fa-battleship" aria-hidden="true"></span>'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_allow_hide=>'N'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(102983323402146242)
,p_db_column_name=>'COD_ARTICULO'
,p_display_order=>30
,p_column_identifier=>'B'
,p_column_label=>unistr('C\00F3digo')
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_allow_hide=>'N'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_static_id=>'COD_ARTICULO'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(102983457171146243)
,p_db_column_name=>'DESCRIPCION'
,p_display_order=>40
,p_column_identifier=>'C'
,p_column_label=>unistr('Descripci\00F3n de Repuesto')
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_allow_hide=>'N'
,p_column_type=>'STRING'
,p_static_id=>'DESCRIPCION'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(102983532636146244)
,p_db_column_name=>'COSTO'
,p_display_order=>50
,p_column_identifier=>'D'
,p_column_label=>'Costo'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_allow_hide=>'N'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G990'
,p_static_id=>'COSTO'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(102983656850146245)
,p_db_column_name=>'PRECIO'
,p_display_order=>60
,p_column_identifier=>'E'
,p_column_label=>'Precio'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_allow_hide=>'N'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G990'
,p_static_id=>'PRECIO'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(105202861727701807)
,p_db_column_name=>'PORCENTAJE'
,p_display_order=>70
,p_column_identifier=>'Q'
,p_column_label=>'% Costo/Producto'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_allow_hide=>'N'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_format_mask=>'990D90'
,p_static_id=>'PORCENTAJE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(102983731780146246)
,p_db_column_name=>'CANTIDAD'
,p_display_order=>80
,p_column_identifier=>'F'
,p_column_label=>'Cantidad'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_allow_hide=>'N'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_static_id=>'CANTIDAD'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(102983835263146247)
,p_db_column_name=>'CANT_UTIL'
,p_display_order=>90
,p_column_identifier=>'G'
,p_column_label=>'Cant Util'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_allow_hide=>'N'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(102983958060146248)
,p_db_column_name=>'NRO_SOLICITUD'
,p_display_order=>100
,p_column_identifier=>'H'
,p_column_label=>'Nro Solicitud'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_allow_hide=>'N'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_display_condition=>'P345_NRO'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(102984042878146249)
,p_db_column_name=>'FECHA_SOL'
,p_display_order=>110
,p_column_identifier=>'I'
,p_column_label=>'Fecha Sol'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_allow_hide=>'N'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_display_condition=>'P345_NRO'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(102984141391146250)
,p_db_column_name=>'OT'
,p_display_order=>120
,p_column_identifier=>'J'
,p_column_label=>'Ot'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_allow_hide=>'N'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_display_condition=>'P345_NRO'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(105202267444701801)
,p_db_column_name=>'NRO_AJUSTE'
,p_display_order=>130
,p_column_identifier=>'K'
,p_column_label=>'Nro Ajuste'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_allow_hide=>'N'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_display_condition=>'P345_NRO'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(105202380343701802)
,p_db_column_name=>'IDREG'
,p_display_order=>140
,p_column_identifier=>'L'
,p_column_label=>'Idreg'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(105202672506701805)
,p_db_column_name=>'SEQ_ID'
,p_display_order=>160
,p_column_identifier=>'O'
,p_column_label=>'Seq Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(105202973133701808)
,p_db_column_name=>'CHK'
,p_display_order=>180
,p_column_identifier=>'R'
,p_column_label=>'<form><div><label id="checktext" >Todos</label></div><div><input type="checkbox" id="selectall" onclick="selec_chk(this)" ></div></form>'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_allow_hide=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(105218421699705127)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1052185'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'TRANSITO:COD_ARTICULO:DESCRIPCION:COSTO:PRECIO:PORCENTAJE:CANTIDAD:NRO_SOLICITUD:FECHA_SOL:OT:NRO_AJUSTE:CANT_UTIL:CHK'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(93792844521437724)
,p_name=>'Seguimiento'
,p_template=>wwv_flow_imp.id(40117728043263659)
,p_display_sequence=>1020
,p_region_template_options=>'#DEFAULT#:js-dialog-size600x400'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
' SELECT D001 fecha',
'       ,C002 USUARIO',
'       ,C003 COMENTARIO',
'FROM APEX_COLLECTIONS  ',
'WHERE COLLECTION_NAME = ''STFICHATECSEG''  ',
' '))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(40147995650263667)
,p_query_num_rows=>3
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(98846701482748026)
,p_query_column_id=>1
,p_column_alias=>'FECHA'
,p_column_display_sequence=>10
,p_column_heading=>'Fecha'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(98846852403748027)
,p_query_column_id=>2
,p_column_alias=>'USUARIO'
,p_column_display_sequence=>20
,p_column_heading=>'Usuario'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(98846990448748028)
,p_query_column_id=>3
,p_column_alias=>'COMENTARIO'
,p_column_display_sequence=>30
,p_column_heading=>'Comentario'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(98847261873748031)
,p_plug_name=>'ADD'
,p_parent_plug_id=>wwv_flow_imp.id(93792844521437724)
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(98844747384748006)
,p_name=>'Proceso de Compra de Repuesto'
,p_template=>wwv_flow_imp.id(40117728043263659)
,p_display_sequence=>1030
,p_region_template_options=>'#DEFAULT#:js-dialog-size480x320'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT  C001 NRO_PEDIDO',
'       ,C002 CANTIDAD',
'       ,C003 FECHA_LLEGADA   ',
'FROM APEX_COLLECTIONS  ',
'WHERE COLLECTION_NAME = ''STFICHATECTRA''  ',
'',
''))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(40147995650263667)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'No se encontraron registros de Compra vinculados al Repuesto &P345_ART_TRANSITO.'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(98844860152748007)
,p_query_column_id=>1
,p_column_alias=>'NRO_PEDIDO'
,p_column_display_sequence=>10
,p_column_heading=>'Nro Pedido'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(98844992276748008)
,p_query_column_id=>2
,p_column_alias=>'CANTIDAD'
,p_column_display_sequence=>20
,p_column_heading=>'Cantidad'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(98845026944748009)
,p_query_column_id=>3
,p_column_alias=>'FECHA_LLEGADA'
,p_column_display_sequence=>30
,p_column_heading=>'Fecha Llegada'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(98848916712748048)
,p_plug_name=>'BUSCAR FICHA TECNICA'
,p_icon_css_classes=>'fa-table-search'
,p_region_template_options=>'#DEFAULT#:js-dialog-size720x480'
,p_plug_template=>wwv_flow_imp.id(40117728043263659)
,p_plug_display_sequence=>1040
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(102896899793843840)
,p_name=>'Resultado'
,p_parent_plug_id=>wwv_flow_imp.id(98848916712748048)
,p_template=>wwv_flow_imp.id(40097087111263653)
,p_display_sequence=>10
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT    C001  NRO_FICHA,',
'          C002  ESTADO,',
'          C003  COD_ARTICULO,',
'          C004  COSTO,',
'          C005  SER_ORT,',
'          C006  NRO_ORT,',
'          C007  NRO_GARANTIA,',
'          C008  NRO_SERIE ,',
'          C009  DESTINO,',
'          C010  NRO_ENVIO,',
'          C011  FECHA_ALTA ,',
'          C012  COD_USUARIO ,',
'          NULL VER',
'FROM APEX_COLLECTIONS  ',
'WHERE COLLECTION_NAME = ''STFICHATECBUS'' '))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(40147995650263667)
,p_query_num_rows=>3
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(102896927150843841)
,p_query_column_id=>1
,p_column_alias=>'NRO_FICHA'
,p_column_display_sequence=>20
,p_column_heading=>unistr('N\00BA Ficha')
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(102897085347843842)
,p_query_column_id=>2
,p_column_alias=>'ESTADO'
,p_column_display_sequence=>110
,p_column_heading=>'Estado'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_inline_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select DESCRIPCION  estado, cod_estado cod',
'from ST_FICHA_TECNICA_ESTADO t'))
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(102897139831843843)
,p_query_column_id=>3
,p_column_alias=>'COD_ARTICULO'
,p_column_display_sequence=>40
,p_column_heading=>'Articulo'
,p_use_as_row_header=>'N'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_inline_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'              SELECT S.COD_ARTICULO ||'' - ''||S.DESCRIPCION nom, S.COD_ARTICULO cod',
'                FROM ST_ARTICULOS S',
'               WHERE S.COD_EMPRESA = nvl(:P_COD_EMPRESA,''1'' );'))
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(102897296243843844)
,p_query_column_id=>4
,p_column_alias=>'COSTO'
,p_column_display_sequence=>50
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(102897378519843845)
,p_query_column_id=>5
,p_column_alias=>'SER_ORT'
,p_column_display_sequence=>60
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(102897429985843846)
,p_query_column_id=>6
,p_column_alias=>'NRO_ORT'
,p_column_display_sequence=>120
,p_column_heading=>unistr('N\00BA OT')
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(102897584773843847)
,p_query_column_id=>7
,p_column_alias=>'NRO_GARANTIA'
,p_column_display_sequence=>80
,p_column_heading=>'Garantia'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(102897664250843848)
,p_query_column_id=>8
,p_column_alias=>'NRO_SERIE'
,p_column_display_sequence=>90
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(102897701426843849)
,p_query_column_id=>9
,p_column_alias=>'DESTINO'
,p_column_display_sequence=>100
,p_column_heading=>'Destino'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(102897821714843850)
,p_query_column_id=>10
,p_column_alias=>'NRO_ENVIO'
,p_column_display_sequence=>130
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(102979295767146201)
,p_query_column_id=>11
,p_column_alias=>'FECHA_ALTA'
,p_column_display_sequence=>140
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(102979349506146202)
,p_query_column_id=>12
,p_column_alias=>'COD_USUARIO'
,p_column_display_sequence=>150
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(102979473134146203)
,p_query_column_id=>13
,p_column_alias=>'VER'
,p_column_display_sequence=>10
,p_column_heading=>'Ver'
,p_use_as_row_header=>'N'
,p_column_link=>'javascript:$s(''P345_NRO'',''#NRO_FICHA#'');'
,p_column_linktext=>'<span class="fa fa-search-plus" aria-hidden="true"></span> '
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(98847001114748029)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(98847261873748031)
,p_button_name=>'Agregar'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Agregar Comentario'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-window-plus'
,p_grid_new_row=>'Y'
,p_grid_column=>9
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(102895699294843828)
,p_button_sequence=>110
,p_button_plug_id=>wwv_flow_imp.id(98848916712748048)
,p_button_name=>'filtro'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Buscar'
,p_warn_on_unsaved_changes=>null
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(102983084489146239)
,p_button_sequence=>210
,p_button_plug_id=>wwv_flow_imp.id(93791033367437706)
,p_button_name=>'Generar'
,p_button_static_id=>'genera'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight:t-Button--stretch:t-Button--gapTop'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Generar'
,p_button_execute_validations=>'N'
,p_button_css_classes=>'u-color-21-text'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
,p_grid_column_span=>1
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(118927624325854101)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(93791242866437708)
,p_button_name=>'autoriza'
,p_button_static_id=>'autoriza'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Autorizar'
,p_button_position=>'EDIT'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'u-color-21-bg u-color-43-text'
,p_icon_css_classes=>'fa-check'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(118927765676854102)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(93791242866437708)
,p_button_name=>'rechaza'
,p_button_static_id=>'rechaza'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight:t-Button--padLeft:t-Button--gapRight'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Rechazar'
,p_button_position=>'EDIT'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'u-color-21-bg u-color-43-text'
,p_icon_css_classes=>'fa-thumbs-down'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(102979945734146208)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(93791242866437708)
,p_button_name=>'Nuevo'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight:t-Button--gapLeft:t-Button--padRight'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Nuevo'
,p_button_position=>'EDIT'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'u-color-21-bg u-color-43-text'
,p_icon_css_classes=>'fa-table-plus'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(93792598331437721)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(93791242866437708)
,p_button_name=>'GUARDAR'
,p_button_static_id=>'guardar1'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight:t-Button--padLeft:t-Button--padRight'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Guardar'
,p_button_position=>'EDIT'
,p_button_css_classes=>'u-color-21-bg u-color-43-text'
,p_icon_css_classes=>'fa-save'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(93792722952437723)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(93791195093437707)
,p_button_name=>'solicitar'
,p_button_static_id=>'solicita'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Solicitar'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_css_classes=>'u-color-21-text'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(98845949045748018)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(93791242866437708)
,p_button_name=>'buscar'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight:t-Button--gapLeft'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Buscar'
,p_button_position=>'RIGHT_OF_TITLE'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'u-color-21-bg u-color-43-text'
,p_icon_css_classes=>'fa-search'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(93792661765437722)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(93791242866437708)
,p_button_name=>'Seguimiento'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Seguimiento'
,p_button_position=>'RIGHT_OF_TITLE'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'u-color-21-bg u-color-43-text'
,p_icon_css_classes=>'fa-history'
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
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(136457799185824201)
,p_branch_name=>'Go To Page 365'
,p_branch_action=>'f?p=&APP_ID.:365:&SESSION.::&DEBUG.:365:P365_P_FICHA,P365_NRO:&P345_NRO.,&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'BEFORE_COMPUTATION'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(93792722952437723)
,p_branch_sequence=>10
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(152903602114462225)
,p_branch_name=>'Go To Page 339'
,p_branch_action=>'f?p=&APP_ID.:339:&SESSION.::&DEBUG.:345:P339_C_NRO_COMPROBANTE_REF,P339_C_SER_COMPROBANTE_REF,P339_C_TIP_COMPROBANTE_REF,P339_P_NRO_COMPROBANTE:&P345_NRO.,A,FTC,&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'BEFORE_COMPUTATION'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(102983084489146239)
,p_branch_sequence=>20
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(93791316819437709)
,p_name=>'P345_NRO'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(93791033367437706)
,p_prompt=>unistr('Ficha N\00BA')
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_colspan=>2
,p_grid_column=>1
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(93791457505437710)
,p_name=>'P345_COD_ARTICULO'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(93791033367437706)
,p_prompt=>unistr('C\00F3digo Articulo')
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_ARTICULO_STFICHATEC'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select descripcion ||'' '' ||cod_articulo ||'' '' ||cod_art_corto descripcion, cod_articulo,cod_art_corto ',
'from st_articulos ',
'where cod_empresa = :P_COD_EMPRESA',
'AND COD_RUBRO=''PR''',
'order by decode(nvl(estado,''A''),''A'',1,2), descripcion'))
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'Y'
,p_attribute_05=>'N'
,p_attribute_08=>'700'
,p_attribute_09=>'500'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(93791508335437711)
,p_name=>'P345_GARANTIA'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(93791033367437706)
,p_prompt=>'Nro Garantia'
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
 p_id=>wwv_flow_imp.id(93791648584437712)
,p_name=>'P345_SERIE'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(93791033367437706)
,p_prompt=>'Serie'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>1
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(93791733197437713)
,p_name=>'P345_COSTO'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(93791033367437706)
,p_prompt=>'Costo Producto'
,p_format_mask=>'999G999G990'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(93791865113437714)
,p_name=>'P345_DESTINO'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(93791033367437706)
,p_prompt=>'Destino'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:CARNEO;CARNEO,DESPIECE;DESPIECE'
,p_cHeight=>1
,p_colspan=>2
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(93791919940437715)
,p_name=>'P345_NRO_OT'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(93791033367437706)
,p_prompt=>unistr('N\00BA Orden de Trabajo')
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_css_classes=>'js-show-label'
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(93792091472437716)
,p_name=>'P345_NRO_ENVIO'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_imp.id(93791033367437706)
,p_prompt=>'Nro Envio'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>1
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(93792156154437717)
,p_name=>'P345_SER_OT'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(93791033367437706)
,p_prompt=>'Serie OT'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_css_classes=>'js-show-label'
,p_begin_on_new_line=>'N'
,p_colspan=>1
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
,p_attribute_06=>'UPPER'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(93792255676437718)
,p_name=>'P345_ESTADO'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(93791033367437706)
,p_prompt=>'Estado'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select DESCRIPCION  estado, cod_estado cod',
'from ST_FICHA_TECNICA_ESTADO t',
''))
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(93792372181437719)
,p_name=>'P345_USUARIO'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(93791033367437706)
,p_prompt=>'Creado por'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>1
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(93792410765437720)
,p_name=>'P345_FECHA'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(93791033367437706)
,p_prompt=>'Fecha Alta'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>1
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(93795390156437749)
,p_name=>'P345_ID_CHK'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(93791242866437708)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(98845103446748010)
,p_name=>'P345_ART_TRANSITO'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(93791242866437708)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(98847104113748030)
,p_name=>'P345_NUEVO_COMENTARIO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(98847261873748031)
,p_prompt=>'Comentario'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>500
,p_cHeight=>2
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#:margin-top-none:margin-bottom-none:margin-left-sm:margin-right-sm'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(102895541909843827)
,p_name=>'P345_ESTADO_BUS'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(98848916712748048)
,p_prompt=>'Estado'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select DESCRIPCION  estado, cod_estado cod',
'from ST_FICHA_TECNICA_ESTADO t'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'-TODOS-'
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(102895779595843829)
,p_name=>'P345_DESTINO_BUS'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(98848916712748048)
,p_prompt=>'Destino'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT DISTINCT DESTINO DESCRIP, DESTINO COD',
'FROM ST_FICHA_TECNICA',
'WHERE COD_EMPRESA = :P_COD_EMPRESA ;'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'-TODOS-'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(102895846920843830)
,p_name=>'P345_ARTICULO_BUS'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(98848916712748048)
,p_prompt=>'Articulo'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT DISTINCT AR.DESCRIPCION ||''-''||AR.COD_ARTICULO NN, AR.COD_ARTICULO COD',
'FROM ST_FICHA_TECNICA FT,',
'     ST_ARTICULOS AR',
'WHERE FT.COD_EMPRESA = :P_COD_EMPRESA ',
'AND   FT.COD_EMPRESA = AR.COD_EMPRESA ',
'AND   FT.COD_ARTICULO = AR.COD_ARTICULO',
'',
';'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'-TODOS-'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'NO_FETCH'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(102895913433843831)
,p_name=>'P345_GARANTIA_BUS'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(98848916712748048)
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
 p_id=>wwv_flow_imp.id(102896035210843832)
,p_name=>'P345_OT_BUS'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(98848916712748048)
,p_prompt=>'Orden Trabajo'
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
 p_id=>wwv_flow_imp.id(102896196980843833)
,p_name=>'P345_FECHA_INI'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(98848916712748048)
,p_prompt=>'Fecha Inicio'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_css_classes=>'allow_only_numbers'
,p_tag_attributes=>'onfocusout="this.value= isValidDate(this.value);" onkeyup = "setDateFormat(this);"'
,p_colspan=>2
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(102896200036843834)
,p_name=>'P345_FECHA_FIN'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(98848916712748048)
,p_prompt=>'Fecha Final'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_css_classes=>'allow_only_numbers'
,p_tag_attributes=>'onfocusout="this.value= isValidDate(this.value);" onkeyup = "setDateFormat(this);"'
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(105203180243701810)
,p_name=>'P345_VALOR_CHK'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(93791242866437708)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(105203377371701812)
,p_name=>'P345_DESCRIPCION'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(93791033367437706)
,p_prompt=>unistr('Descripci\00F3n del Art\00EDculo')
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
 p_id=>wwv_flow_imp.id(105203439093701813)
,p_name=>'P345_COD_CORTO'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(93791033367437706)
,p_prompt=>'Cod. Corto'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>1
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(105206590042701844)
,p_name=>'P345_NRO_OT_DESTINO'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_imp.id(93791033367437706)
,p_prompt=>'Nro Ot Destino'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(105206654437701845)
,p_name=>'P345_SER_OT_DESTINO'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_imp.id(93791033367437706)
,p_prompt=>'Ser Ot Destino'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>1
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(106973503714363807)
,p_name=>'P345_BANDERA'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(93791242866437708)
,p_item_default=>'N'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(116487426067190350)
,p_name=>'P345_SUCURSAL'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_imp.id(93791033367437706)
,p_prompt=>'Sucursal'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'    SELECT S.cod_sucursal ||'' - ''|| S.descripcion DESCRIPT, S.cod_sucursal ',
'    from sucursales S ',
'    where S.cod_empresa =   :P_cod_empresa ',
'    and S.cod_sucursal in (''01'',''02'',''03'',''04'',''05'',''07'',''09'',''103'',''105'',''118'',''13'',',
'														''148'',''190'',''190.1'',''209'',''262'',''264'',''274'',''30'',''30-A'',',
'														''30-T'',''33'',''34'',''72'',''74'',''96'',''279'',''278'') '))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_colspan=>2
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(118931671388854141)
,p_name=>'P345_APRUEBA_RECHAZA'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(93791242866437708)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(183085825477712035)
,p_name=>'P345_FICHA_TECNICA'
,p_item_sequence=>220
,p_item_plug_id=>wwv_flow_imp.id(93791033367437706)
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'          select id_registro',
'           from  inv.ca_control_calidad_ref',
'          where  cod_empresa = nvl(:P_COD_EMPRESA,''1'') ',
'          --and fecha_cierre is not null',
'          --and destino = ''DESPIECE''',
'          and tip_comprobante = ''FCD''',
'          and ser_comprobante = ''A''',
'          and nro_comprobante = nvl(:P345_NRO,:P345_PARAM_NRO)',
'          ;'))
,p_item_default_type=>'SQL_QUERY'
,p_prompt=>unistr('Ficha T\00E9cnica')
,p_format_mask=>'999G999G990'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>1
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(183086110712712038)
,p_name=>'P345_COSTO_REP'
,p_item_sequence=>230
,p_item_plug_id=>wwv_flow_imp.id(93791033367437706)
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT nvl(sum(N001),0)  ',
'FROM APEX_COLLECTIONS  ',
'WHERE COLLECTION_NAME = ''STFICHATECDET'' ',
'AND C013<>''D'' ',
'and C013=''S'''))
,p_item_default_type=>'SQL_QUERY'
,p_prompt=>'Costo Rep. Utilizado'
,p_format_mask=>'999G999G990'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(277123863059416423)
,p_name=>'P345_PARAM_NRO'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(93791242866437708)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(93793242295437728)
,p_name=>'DA_BLOQUEA_CAMPOS'
,p_event_sequence=>20
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(102982204562146231)
,p_event_id=>wwv_flow_imp.id(93793242295437728)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P345_SER_OT,P345_NRO_OT,P345_DESTINO,P345_ESTADO_BUS,P345_COD_ARTICULO,P345_COSTO,P345_FECHA,P345_GARANTIA,P345_SERIE,P345_NRO_ENVIO,P345_USUARIO,P345_DESCRIPCION,P345_COD_CORTO,P345_NRO,P345_APRUEBA_RECHAZA'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(93793351524437729)
,p_event_id=>wwv_flow_imp.id(93793242295437728)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'document.getElementById("P345_NRO").readOnly=true;',
'document.getElementById("P345_ESTADO").readOnly=true;',
'document.getElementById("P345_FECHA").readOnly=true;',
'document.getElementById("P345_USUARIO").readOnly=true;',
'document.getElementById("P345_COSTO").readOnly=true;',
'document.getElementById("P345_NRO_ENVIO").readOnly=true;',
'',
'',
'document.getElementById("P345_COD_CORTO").readOnly=true;',
'document.getElementById("P345_DESCRIPCION").readOnly=true;',
'document.getElementById("P345_SER_OT_DESTINO").readOnly=true;',
'document.getElementById("P345_NRO_OT_DESTINO").readOnly=true;',
'',
'',
'document.getElementById("P345_ESTADO").classList.add("creado");',
'',
'$(''#P345_ESTADO'').css(''pointer-events'',''none'');',
'',
'////document.getElementById("generar").disabled = true; ',
' ',
'$("#P345_COD_ARTICULO_lov_btn > span").removeClass( ''icon-popup-lov'' ); ',
'$("#P345_COD_ARTICULO_lov_btn > span").addClass( ''icon-search'' );',
'',
'document.getElementById("autoriza").disabled = true; ',
'document.getElementById("rechaza").disabled = true; ',
'document.getElementById("solicita").disabled = true; ',
'document.getElementById("genera").disabled = true; '))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(102982504681146234)
,p_event_id=>wwv_flow_imp.id(93793242295437728)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'      APEX_COLLECTION.CREATE_OR_TRUNCATE_COLLECTION(P_COLLECTION_NAME => ''STFICHATECDET'');',
'',
'      :P345_ESTADO:=''1'';',
'      :P345_FECHA:=sysdate;',
'      :P345_USUARIO:=:APP_USER;',
'',
'      :P345_APRUEBA_RECHAZA:= NVL(busca_permiso( :P_cod_empresa,''STPEDCAR'',:APP_USER,''APRUEBA_RECHAZA'' ),''N'') ;',
'',
'      :P345_NRO:= :P345_PARAM_NRO;',
'',
' '))
,p_attribute_02=>'P345_PARAM_NRO'
,p_attribute_03=>'P345_ESTADO,P345_USUARIO,P345_FECHA,P345_APRUEBA_RECHAZA,P345_NRO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(642181909334635238)
,p_event_id=>wwv_flow_imp.id(93793242295437728)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_03=>'P345_NRO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(102982447476146233)
,p_event_id=>wwv_flow_imp.id(93793242295437728)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(93791195093437707)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(93794707714437743)
,p_name=>'DA_CARGA_DETALLE'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P345_COD_ARTICULO'
,p_condition_element=>'P345_NRO'
,p_triggering_condition_type=>'NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(93795079177437746)
,p_event_id=>wwv_flow_imp.id(93794707714437743)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'var spinner = apex.util.showSpinner();'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(93794871983437744)
,p_event_id=>wwv_flow_imp.id(93794707714437743)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'        begin',
'         inv.stfichatec.carga_detalle(pi_cod_empresa => :P_cod_empresa,',
'                                       pi_nro_ficha => :P345_NRO,',
'                                       pi_co_articulo => :P345_COD_ARTICULO );',
'',
'',
'                    if :P345_COD_ARTICULO is not null then',
'                                BEGIN',
'                                   SELECT DESCRIPCION, COD_ART_CORTO, NVL(TRIM(TO_CHAR(COSTO_PROM,''999G999G999G990'')),0)',
'                                     INTO :P345_DESCRIPCION,:P345_COD_CORTO, :P345_COSTO',
'                                     FROM ST_ARTICULOS ',
'                                     WHERE COD_EMPRESA   =  :P_COD_EMPRESA',
'                                     AND  COD_ARTICULO = :P345_COD_ARTICULO;',
'                                EXCEPTION',
'                                    WHEN OTHERS THEN    ',
'                                        :P345_COSTO:=0;',
'                                END;',
'                    else',
'                        :P345_DESCRIPCION:=null;',
'                        :P345_COD_CORTO:=null;',
'                        :P345_COSTO:=0;',
'                    end if;',
'        exception',
'        when others then',
'            ',
'                RAISE_APPLICATION_ERROR(-20000,SQLERRM);',
'        end;'))
,p_attribute_02=>'P345_COD_ARTICULO,P345_NRO'
,p_attribute_03=>'P345_COSTO,P345_COD_CORTO,P345_DESCRIPCION'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(93795103195437747)
,p_event_id=>wwv_flow_imp.id(93794707714437743)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$("#apex_wait_overlay").remove();',
'$(".u-Processing").remove();'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(93794942913437745)
,p_event_id=>wwv_flow_imp.id(93794707714437743)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(93791195093437707)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(93795427238437750)
,p_name=>'da_chek_det'
,p_event_sequence=>40
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P345_ID_CHK'
,p_condition_element=>'P345_ID_CHK'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(98844471391748003)
,p_event_id=>wwv_flow_imp.id(93795427238437750)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_02=>'P345_ID_CHK,P345_VALOR_CHK'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(98844337360748002)
,p_event_id=>wwv_flow_imp.id(93795427238437750)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
'apex_collection.update_member_attribute(p_collection_name=>''STFICHATECDET'',',
'                                         p_seq => :P345_ID_CHK,',
'                                         p_attr_number => ''13'',',
'                                         p_attr_value=>:P345_VALOR_CHK);',
'',
'',
'BEGIN',
'    SELECT nvl(sum(N001),0)  ',
'    INTO :P345_COSTO_REP',
'    FROM APEX_COLLECTIONS  ',
'    WHERE COLLECTION_NAME = ''STFICHATECDET'' ',
'    AND C013<>''D'' ',
'    and C013=''S''',
'    ;',
'EXCEPTION',
'    WHEN OTHERS THEN ',
'    :P345_COSTO_REP:= NULL;',
'END;'))
,p_attribute_02=>'P345_ID_CHK'
,p_attribute_03=>'P345_COSTO_REP'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(98845204764748011)
,p_name=>'DA_CARGA_TRANSITO'
,p_event_sequence=>50
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P345_ART_TRANSITO'
,p_condition_element=>'P345_ART_TRANSITO'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(98845795620748016)
,p_event_id=>wwv_flow_imp.id(98845204764748011)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var spinner = apex.util.showSpinner();',
''))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(98845313036748012)
,p_event_id=>wwv_flow_imp.id(98845204764748011)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
'  inv.stfichatec.carga_transito(pi_cod_empresa => :p_cod_empresa,',
'                                pi_co_articulo => :P345_ART_TRANSITO);'))
,p_attribute_02=>'P345_ART_TRANSITO'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(98845405772748013)
,p_event_id=>wwv_flow_imp.id(98845204764748011)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(98844747384748006)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(98845892888748017)
,p_event_id=>wwv_flow_imp.id(98845204764748011)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$("#apex_wait_overlay").remove();',
'$(".u-Processing").remove();'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(98845586356748014)
,p_event_id=>wwv_flow_imp.id(98845204764748011)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(98844747384748006)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(98845648321748015)
,p_event_id=>wwv_flow_imp.id(98845204764748011)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P345_ART_TRANSITO'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(98846081001748019)
,p_name=>'da_trae_dato'
,p_event_sequence=>60
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P345_NRO_OT'
,p_condition_element=>'P345_NRO_OT'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(98846109409748020)
,p_event_id=>wwv_flow_imp.id(98846081001748019)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF :P345_NRO IS NULL AND :P345_NRO_OT IS NOT NULL AND :P345_SER_OT IS NOT NULL THEN',
'',
'  inv.stfichatec.trae_datos_ot(p_cod_empresa => :p_cod_empresa,',
'                               p_ser_ort => :P345_SER_OT ,',
'                               p_nro_ort => :P345_NRO_OT,',
'                               p_cod_articulo => :P345_cod_articulo,',
'                               p_garantia => :p345_garantia,',
'                               p_serie => :p345_serie,',
'                               p_costo => :p345_costo);',
'',
'ELSE',
'    :P345_COD_ARTICULO:=NULL;',
'    :P345_COSTO:=NULL;',
'    :P345_GARANTIA:=NULL;',
'    :P345_SERIE:=NULL;',
'END IF;'))
,p_attribute_02=>'P345_NRO,P345_SER_OT,P345_NRO_OT'
,p_attribute_03=>'P345_COD_ARTICULO,P345_COSTO,P345_GARANTIA,P345_SERIE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(98847994602748038)
,p_name=>'da_trae_dato_ser'
,p_event_sequence=>70
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P345_SER_OT'
,p_condition_element=>'P345_SER_OT'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(98848054199748039)
,p_event_id=>wwv_flow_imp.id(98847994602748038)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF :P345_NRO IS NULL AND :P345_NRO_OT IS NOT NULL AND :P345_SER_OT IS NOT NULL THEN',
'',
'  inv.stfichatec.trae_datos_ot(p_cod_empresa => :p_cod_empresa,',
'                               p_ser_ort => :P345_SER_OT ,',
'                               p_nro_ort => :P345_NRO_OT,',
'                               p_cod_articulo => :P345_cod_articulo,',
'                               p_garantia => :p345_garantia,',
'                               p_serie => :p345_serie,',
'                               p_costo => :p345_costo);',
'',
'ELSE',
'    :P345_COD_ARTICULO:=NULL;',
'    :P345_COSTO:=NULL;',
'    :P345_GARANTIA:=NULL;',
'    :P345_SERIE:=NULL;',
'END IF;'))
,p_attribute_02=>'P345_NRO,P345_SER_OT,P345_NRO_OT'
,p_attribute_03=>'P345_COD_ARTICULO,P345_COSTO,P345_GARANTIA,P345_SERIE'
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
 p_id=>wwv_flow_imp.id(98846598196748024)
,p_name=>'da_ver_seguimiento'
,p_event_sequence=>80
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(93792661765437722)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(98847862596748037)
,p_event_id=>wwv_flow_imp.id(98846598196748024)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN    ',
'      inv.stfichatec.carga_seguimiento(pi_cod_empresa => :p_cod_empresa,',
'                                       pi_ficha => :P345_NRO);',
'exception',
'    when others then',
'            	raise_application_error(-20000,  sqlerrm);',
'end;'))
,p_attribute_02=>'P345_NRO'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(102980399411146212)
,p_event_id=>wwv_flow_imp.id(98846598196748024)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(93792844521437724)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(98848197471748040)
,p_event_id=>wwv_flow_imp.id(98846598196748024)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P345_NUEVO_COMENTARIO'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(98846618879748025)
,p_event_id=>wwv_flow_imp.id(98846598196748024)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(93792844521437724)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(98847383531748032)
,p_name=>'da_guardar_comentario'
,p_event_sequence=>90
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(98847001114748029)
,p_condition_element=>'P345_NUEVO_COMENTARIO'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(98847410072748033)
,p_event_id=>wwv_flow_imp.id(98847383531748032)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'',
'    insert into inv.st_ficha_tecnica_seg',
'      (cod_empresa, nro_ficha, comentario, cod_usuario, fecha_alta)',
'    values',
'      (:p_cod_empresa, :P345_NRO, :P345_NUEVO_COMENTARIO, :APP_USER, SYSDATE);',
'',
'    COMMIT;',
'',
'      inv.stfichatec.carga_seguimiento(pi_cod_empresa => :p_cod_empresa,',
'                                       pi_ficha => :P345_NRO);',
'exception',
'    when others then',
'            	raise_application_error(-20000,  sqlerrm);',
'end;'))
,p_attribute_02=>'P345_NUEVO_COMENTARIO,P345_NRO'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(98847535100748034)
,p_event_id=>wwv_flow_imp.id(98847383531748032)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'Debe cargar un comentario.'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(98847628293748035)
,p_event_id=>wwv_flow_imp.id(98847383531748032)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(93792844521437724)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(98847771074748036)
,p_event_id=>wwv_flow_imp.id(98847383531748032)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P345_NUEVO_COMENTARIO'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(98848435645748043)
,p_name=>'da_recupera_ficha'
,p_event_sequence=>100
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P345_NRO'
,p_condition_element=>'P345_NRO'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(98848527531748044)
,p_event_id=>wwv_flow_imp.id(98848435645748043)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'',
'inv.stfichatec.busca_ficha(p_nro_ficha => :P345_NRO,',
'                             p_cod_articulo => :P345_COD_ARTICULO,',
'                             p_estado => :P345_ESTADO,',
'                             p_destino => :P345_DESTINO,',
'                             p_garantia => :P345_GARANTIA,',
'                             p_serie => :P345_SERIE,',
'                             p_costo => :P345_COSTO,',
'                             p_ser_ort => :P345_SER_OT,',
'                             p_nro_ort => :P345_NRO_OT,',
'                             p_nro_envio => :P345_NRO_ENVIO,',
'                             p_usuario => :P345_USUARIO,',
'                             p_fecha => :P345_FECHA,',
'                             p_ser_ort_ref => :P345_SER_OT_DESTINO,',
'                             p_nro_ort_ref => :P345_NRO_OT_DESTINO,',
'                             p_cod_corto => :p345_cod_corto,',
'                             p_desc_art => :P345_DESCRIPCION); ',
'',
':P345_BANDERA:=''N'';                             ',
'exception ',
'    when others then',
'             raise_application_error(-20000, sqlerrm );',
'end;'))
,p_attribute_02=>'P345_NRO'
,p_attribute_03=>'P345_SER_OT,P345_NRO_OT,P345_DESTINO,P345_ESTADO,P345_COD_ARTICULO,P345_COSTO,P345_FECHA,P345_GARANTIA,P345_SERIE,P345_NRO_ENVIO,P345_USUARIO,P345_NRO_OT_DESTINO,P345_SER_OT_DESTINO,P345_COD_CORTO,P345_DESCRIPCION,P345_BANDERA'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(98848789094748046)
,p_event_id=>wwv_flow_imp.id(98848435645748043)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P345_SER_OT,P345_NRO_OT,P345_DESTINO,P345_ESTADO_BUS,P345_COD_ARTICULO,P345_COSTO,P345_FECHA,P345_GARANTIA,P345_SERIE,P345_NRO_ENVIO,P345_USUARIO'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(98848827886748047)
,p_event_id=>wwv_flow_imp.id(98848435645748043)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(93791195093437707)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(102979808727146207)
,p_event_id=>wwv_flow_imp.id(98848435645748043)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(98848916712748048)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(102982066245146229)
,p_event_id=>wwv_flow_imp.id(98848435645748043)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var val = $v("P345_ESTADO"); ',
'var estado;',
'document.getElementById("P345_ESTADO").classList.remove("cerrado");',
'document.getElementById("P345_ESTADO").classList.remove("creado");',
'document.getElementById("P345_ESTADO").classList.remove("carneo");',
'document.getElementById("P345_ESTADO").classList.remove("despiece");',
'document.getElementById("P345_ESTADO").classList.remove("rechazado");',
'document.getElementById("P345_ESTADO").classList.remove("autorizado");',
'',
'',
'if (val==="1") {',
'            document.getElementById("guardar1").disabled = false;',
'            document.getElementById("P345_ESTADO").classList.add("creado"); ',
'            document.getElementById("solicita").disabled = true;',
'            document.getElementById("genera").disabled = true;',
'',
'        if (  $v("P345_APRUEBA_RECHAZA")==="S" )',
'        {',
'            document.getElementById("autoriza").disabled = false;',
'            document.getElementById("rechaza").disabled = false;',
'        } ',
'',
'}',
'else{',
'    ',
'            document.getElementById("guardar1").disabled = true;     ',
'            document.getElementById("autoriza").disabled = true;',
'            document.getElementById("rechaza").disabled = true;',
'            document.getElementById("genera").disabled = true;',
'',
'        switch (val) {',
'                case "2":',
'                        estado="carneo";',
'                        document.getElementById("solicita").disabled = false;',
'                        document.getElementById("genera").disabled = false;',
'                    break;',
'                case "3":',
'                        estado="despiece";',
'                        document.getElementById("solicita").disabled = false;',
'                        document.getElementById("genera").disabled = false;',
'                        break;',
'                case "4":',
'                        estado="cerrado";',
'                        break;',
'                case "5":',
'                        estado="cerrado";',
'                        break;',
'                case "6":',
'                        estado="autorizado";',
'                        document.getElementById("solicita").disabled = false;',
'                        break;',
'                default:',
'                        estado="rechazado";',
'                        break;',
'                }',
'            ',
'            document.getElementById("P345_ESTADO").classList.add(estado); ',
'    }',
'     ',
'  '))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(102893820402843810)
,p_name=>'DA_BUSCADOR'
,p_event_sequence=>110
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(98845949045748018)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(102979531580146204)
,p_event_id=>wwv_flow_imp.id(102893820402843810)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P345_ESTADO_BUS,P345_DESTINO_BUS,P345_OT_BUS,P345_GARANTIA_BUS,P345_ARTICULO_BUS,P345_FECHA_INI,P345_FECHA_FIN'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(102979781461146206)
,p_event_id=>wwv_flow_imp.id(102893820402843810)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
'    APEX_COLLECTION.CREATE_OR_TRUNCATE_COLLECTION(P_COLLECTION_NAME => ''STFICHATECBUS'');'))
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(102979673080146205)
,p_event_id=>wwv_flow_imp.id(102893820402843810)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(102896899793843840)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(102893956194843811)
,p_event_id=>wwv_flow_imp.id(102893820402843810)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(98848916712748048)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(102896394137843835)
,p_name=>'da_filtrar'
,p_event_sequence=>120
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(102895699294843828)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(102896555400843837)
,p_event_id=>wwv_flow_imp.id(102896394137843835)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'var spinner = apex.util.showSpinner();'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(102896401324843836)
,p_event_id=>wwv_flow_imp.id(102896394137843835)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'  inv.stfichatec.cargar_reporte(p_cod_empresa => nvl(:p_cod_empresa,''1''),',
'                                p_cod_articulo => :P345_ARTICULO_BUS,',
'                                p_garantia => :P345_GARANTIA_BUS,',
'                                p_serie => NULL,',
'                                p_estado => :P345_ESTADO_BUS,',
'                                p_destino => :P345_DESTINO_BUS,',
'                                p_nro_ot => :P345_OT_BUS,',
'                                p_usuario => NULL,',
'                                p_fecha_ini => :P345_FECHA_INI,',
'                                p_fecha_fin => :P345_FECHA_FIN);',
'                                ',
' --- P345_ESTADO_BUS,P345_DESTINO_BUS,P345_OT_BUS,P345_GARANTIA_BUS,P345_ARTICULO_BUS,P345_FECHA_INI,P345_FECHA_FIN',
'exception',
'    when others then',
'        raise_application_error(-20000,sqlerrm );',
'end;'))
,p_attribute_02=>'P345_ESTADO_BUS,P345_DESTINO_BUS,P345_OT_BUS,P345_GARANTIA_BUS,P345_ARTICULO_BUS,P345_FECHA_INI,P345_FECHA_FIN'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(102896735393843839)
,p_event_id=>wwv_flow_imp.id(102896394137843835)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(102896899793843840)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(102896658837843838)
,p_event_id=>wwv_flow_imp.id(102896394137843835)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$("#apex_wait_overlay").remove();',
'$(".u-Processing").remove();'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(102980000061146209)
,p_name=>'da_limpiar'
,p_event_sequence=>130
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(102979945734146208)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(102980219681146211)
,p_event_id=>wwv_flow_imp.id(102980000061146209)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P345_NRO,P345_SER_OT,P345_NRO_OT,P345_DESTINO,P345_ESTADO_BUS,P345_COD_ARTICULO,P345_COSTO,P345_FECHA,P345_GARANTIA,P345_SERIE,P345_NRO_ENVIO,P345_USUARIO,P345_COD_CORTO,P345_DESCRIPCION'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(102982663489146235)
,p_event_id=>wwv_flow_imp.id(102980000061146209)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P345_ESTADO:=''1'';',
':P345_USUARIO:=:APP_USER;',
':P345_FECHA:=SYSDATE;',
':P345_BANDERA:=''N'';'))
,p_attribute_03=>'P345_ESTADO,P345_USUARIO,P345_FECHA,P345_BANDERA'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(102982988019146238)
,p_event_id=>wwv_flow_imp.id(102980000061146209)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'document.getElementById("P345_ESTADO").classList.remove("cerrado");',
'document.getElementById("P345_ESTADO").classList.remove("creado");',
'document.getElementById("P345_ESTADO").classList.remove("carneo");',
'document.getElementById("P345_ESTADO").classList.remove("despiece");',
'document.getElementById("P345_ESTADO").classList.remove("finalizado");',
' ',
'     document.getElementById("P345_ESTADO").classList.add("creado");',
'',
'',
'    document.getElementById("selectall").checked = false;',
'',
'    ',
'    document.getElementById("autoriza").disabled = true;',
'    document.getElementById("rechaza").disabled = true;'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(102982736433146236)
,p_name=>'da_estado'
,p_event_sequence=>140
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P345_ESTADO'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(102982816903146237)
,p_event_id=>wwv_flow_imp.id(102982736433146236)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var val = $v("P345_ESTADO"); ',
'if (val==="1") {',
'    document.getElementById("guardar1").disabled = false;',
'',
' ',
'    //document.getElementById("P345_ESTADO").classList.add("cerrado");',
'  ////  alert(val + ''false'');',
'}',
'else{',
'    ',
'    //document.getElementById("P345_ESTADO").classList.add("carneo");',
'    document.getElementById("guardar1").disabled = true; ',
'   // alert(val + ''true''); ',
'',
'',
'    }',
'     '))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(106974354615363815)
,p_name=>'da_ar_reg'
,p_event_sequence=>180
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(93791195093437707)
,p_condition_element=>'P345_BANDERA'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'S'
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterrefresh'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(106974496651363816)
,p_event_id=>wwv_flow_imp.id(106974354615363815)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
'    document.getElementById("selectall").checked = true;'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(106974524008363817)
,p_event_id=>wwv_flow_imp.id(106974354615363815)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'    document.getElementById("selectall").checked = false;'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(118928397851854108)
,p_name=>'da_autoriza'
,p_event_sequence=>190
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(118927624325854101)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(118928430988854109)
,p_event_id=>wwv_flow_imp.id(118928397851854108)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>'Desea Autorizar el &P345_DESTINO. de &P345_DESCRIPCION.'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(118928853293854113)
,p_event_id=>wwv_flow_imp.id(118928397851854108)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
' begin',
'        update ST_FICHA_TECNICA',
'        set estado = 6,',
'            FECHA_ESTADO = SYSDATE,',
'            USER_ESTADO =:APP_USER',
'        where cod_empresa=''1''',
'        and   NRO_FICHA= :P345_NRO',
'    ;',
' exception ',
' when others then ',
'    raise_application_error(-20000, ''Error al intentar actualizar - '' || sqlerrm );',
'',
' end ;'))
,p_attribute_02=>'P345_NRO'
,p_attribute_03=>'P345_NRO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(118928542292854110)
,p_name=>'da_rechza'
,p_event_sequence=>200
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(118927765676854102)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(118928642101854111)
,p_event_id=>wwv_flow_imp.id(118928542292854110)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>unistr('Esta seguro que desea Rechazar la Ficha N\00BA &P345_NRO. ?')
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(118928741146854112)
,p_event_id=>wwv_flow_imp.id(118928542292854110)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
' begin',
'        update ST_FICHA_TECNICA',
'        set estado = 7,',
'            FECHA_ESTADO = SYSDATE,',
'            USER_ESTADO =:APP_USER',
'        where cod_empresa=''1''',
'        and   NRO_FICHA= :P345_NRO',
'    ;',
' exception ',
' when others then ',
'    raise_application_error(-20000, ''Error al intentar actualizar - '' || sqlerrm );',
'',
' end ;'))
,p_attribute_02=>'P345_NRO'
,p_attribute_03=>'P345_NRO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(118929747635854122)
,p_name=>'da_valor_costo'
,p_event_sequence=>210
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(93791195093437707)
,p_condition_element=>'P345_COD_ARTICULO'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterrefresh'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(118929818003854123)
,p_event_id=>wwv_flow_imp.id(118929747635854122)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'valor_css()'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(183086379480712040)
,p_event_id=>wwv_flow_imp.id(118929747635854122)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    SELECT nvl(sum(N001),0)  ',
'    INTO :P345_COSTO_REP',
'    FROM APEX_COLLECTIONS  ',
'    WHERE COLLECTION_NAME = ''STFICHATECDET'' ',
'    AND C013<>''D'' ',
'    and C013=''S''',
'    ;',
'EXCEPTION',
'    WHEN OTHERS THEN ',
'    :P345_COSTO_REP:= NULL;',
'END;'))
,p_attribute_03=>'P345_COSTO_REP'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(98848215514748041)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'GUARDAR_ACTUALIZAR'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/*',
'IF :P345_SER_OT IS NULL OR :P345_NRO_OT IS NULL THEN',
'        RAISE_APPLICATION_ERROR(-20000,''Debe cargar la Serie y Numero de la Orden de Trabajo.'');',
'',
'ELSE ',
'*/',
'    IF :P345_COD_ARTICULO IS NULL THEN',
'        RAISE_APPLICATION_ERROR(-20000,''Debe seleccionar un Producto'');',
'    ELSE ',
'    /*',
'        IF :P345_SERIE IS NULL AND :P345_GARANTIA IS NULL THEN',
'           RAISE_APPLICATION_ERROR(-20000,''Debe cargar la Garantia y/o Serie del Producto'');',
'        ELSE',
'    */',
'              inv.stfichatec.crea_actualiza_ficha(pi_cod_empresa => :p_cod_empresa,',
'                                                  pi_nro_ficha => :P345_NRO,',
'                                                  pi_cod_articulo => :P345_COD_ARTICULO,',
'                                                  pi_estado => :P345_ESTADO,',
'                                                  pi_destino => :P345_DESTINO,',
'                                                  pi_garantia => :P345_GARANTIA,',
'                                                  pi_serie => :P345_SERIE,',
'                                                  pi_costo => to_number(replace(:P345_COSTO,''.'')),',
'                                                  pi_ser_ort => :P345_SER_OT,',
'                                                  pi_nro_ort => :P345_NRO_OT, ',
'                                                  pi_usuario => :APP_USER,',
'                                                  po_nro_ficha => :P345_NRO);',
'             ',
'      --  END IF;',
'    END IF; '))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(93792598331437721)
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(105206895397701847)
,p_process_sequence=>10
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Marcar_Todos'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE  ',
'    v_accion    VARCHAR2(2);',
'    v_cant      NUMBER;',
'    v_where     VARCHAR2(4000);',
'CURSOR cur_filtros IS',
'SELECT   ircond.CONDITION_COLUMN_NAME,',
'        ircond.CONDITION_EXPRESSION,CONDITION_ENABLED',
'FROM   apex_application_page_ir ir',
'JOIN apex_application_page_ir_rpt irr',
'        ON ir.interactive_report_id = irr.interactive_report_id',
'JOIN apex_application_page_ir_cond ircond',
'        ON irr.report_id = ircond.report_id',
'JOIN apex_application_page_ir_col ircol',
'        ON ir.interactive_report_id = ircol.interactive_report_id',
'        AND ircond.condition_column_name = ircol.column_alias',
'WHERE       ir.application_id = TO_NUMBER (:app_id)',
'        AND ir.page_id = TO_NUMBER (:app_page_id)',
'        AND ir.region_name = ''Coleccion_B3''',
'        AND ircond.condition_type = ''Filter''',
'        and upper(trim(ircond.CONDITION_ENABLED))=''YES'' ',
'        AND irr.session_id = :app_session',
'        AND irr.base_report_id =',
'        (SELECT   apex_ir.get_last_viewed_report_id (',
'        TO_NUMBER (:app_page_id),',
'        ir.region_id)',
'        FROM   DUAL);  ',
'BEGIN',
'    BEGIN',
'        SELECT   count(*) cant',
'        into  v_cant',
'        FROM   apex_application_page_ir ir',
'        JOIN apex_application_page_ir_rpt irr',
'        ON ir.interactive_report_id = irr.interactive_report_id',
'        JOIN apex_application_page_ir_cond ircond',
'        ON irr.report_id = ircond.report_id',
'        JOIN apex_application_page_ir_col ircol',
'        ON ir.interactive_report_id = ircol.interactive_report_id',
'        AND ircond.condition_column_name = ircol.column_alias',
'        WHERE       ir.application_id = TO_NUMBER (:app_id)',
'        AND ir.page_id = TO_NUMBER (:app_page_id)',
'        AND ir.region_name = ''Coleccion_B3''',
'        AND ircond.condition_type = ''Filter''',
'        AND irr.session_id = :app_session',
'        AND irr.base_report_id =',
'        (SELECT   apex_ir.get_last_viewed_report_id (',
'        TO_NUMBER (:app_page_id),',
'        ir.region_id)',
'        FROM   DUAL);',
'    END;',
'',
'v_accion:=apex_application.g_x01;',
'    BEGIN',
'        IF NVL(v_cant,0) =0 THEN    ',
'         ',
'            STFICHATEC.pr_marcar_desmarcar_todos(v_accion);',
'        ELSE',
'            v_where:='''';',
'            FOR f IN cur_filtros LOOP ',
'                IF UPPER(TRIM(F.CONDITION_COLUMN_NAME))=''DESCRIPCION'' THEN',
'                  v_where:=v_where||'' AND ''||F.CONDITION_COLUMN_NAME||'' LIKE ''||''''''%''||'''' ||F.CONDITION_EXPRESSION||''''||''%'''''';',
'                  ---  v_where:=v_where||'' AND ''||F.CONDITION_COLUMN_NAME||'' LIKE ''||''''''%''||'''' ||F.CONDITION_EXPRESSION||''''||''%'''''';',
'                 ',
'                ELSE',
'                  v_where:=v_where||'' AND ''||F.CONDITION_COLUMN_NAME||'' = ''|| F.CONDITION_EXPRESSION;',
'                  --  v_where:=v_where||'' AND ''||F.CONDITION_COLUMN_NAME||'' = ''||F.CONDITION_EXPRESSION;',
'                END IF;',
'               ',
'            END LOOP;',
'           ',
'            STFICHATEC.pr_marcar_filtro(p_accion =>v_accion , P_WHERE =>v_where );',
'        END IF;    ',
'       ',
'    END;',
'',
'    apex_json.open_object;',
'    apex_json.write(''success'', true);',
'',
'    apex_json.close_object;',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        apex_json.open_object;',
'        apex_json.write(''success'', false);',
'        apex_json.write(''message'', sqlerrm);',
'        apex_json.close_object;',
'END;',
''))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_imp.component_end;
end;
/
