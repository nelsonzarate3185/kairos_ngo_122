prompt --application/pages/page_00479
begin
--   Manifest
--     PAGE: 00479
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
 p_id=>479
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>unistr('Seguimiento para Reposici\00F3n de Productos - STSEREPR')
,p_alias=>'STSEREPR'
,p_step_title=>unistr('Seguimiento para Reposici\00F3n de Productos - STSEREPR')
,p_autocomplete_on_off=>'OFF'
,p_javascript_file_urls=>'#APP_FILES#util_generico#MIN#.js'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function seleccionar(cb, p_tipo) {',
'    console.log(cb.value);',
'    console.log(cb.checked);',
'',
'     if (p_tipo == ''repo''){',
'        if (cb.checked == true){',
'            console.log("block" + cb.value);       ',
'            $s(''P479_SEQ_ID_REPO_ANU'', cb.value,false);',
'            $s(''P479_VALOR_REPO_ANU'', ''S'');            ',
'            //console.log(apex.item( "P479_SEQ_ID_REPO_ANU").getValue());',
'            //console.log(apex.item( "P479_VALOR_REPO_ANU").getValue());   ',
'        } else {            ',
'            $s(''P479_SEQ_ID_REPO_ANU'', '''');',
'            $s(''P479_VALOR_REPO_ANU'', ''N''); ',
'            //console.log(apex.item( "P479_SEQ_ID_REPO_ANU").getValue());',
'            //console.log(apex.item( "P479_VALOR_REPO_ANU").getValue()); ',
'        }',
'    } ',
'',
'    if (p_tipo == ''anular''){',
'        if (cb.checked == true){',
'            console.log("block" + cb.value);    ',
'            $s(''P479_SEQ_ID_PED_ANULAR'', cb.value,false);',
'            $s(''P479_VALOR_PED_ANU'', ''S''); ',
'        } else {            ',
'            $s(''P479_SEQ_ID_PED_ANULAR'', '''');',
'            $s(''P479_VALOR_PED_ANU'', ''N''); ',
'        }',
'    } ',
'',
'    if (p_tipo == ''ok'') {',
'            if (cb.checked == true){',
'                console.log("block" + cb.value);       ',
'                $s(''P479_VALOR_OK'', ''S'');      ',
'                $s(''P479_SEQ_ID_PED_OK'', cb.value,false);',
'               //// $(''td[headers="editar"] a'')[cb.value-1].click();     ',
'                   ',
'                /// console.log(''P479_SEQ_ID_DET_PEDIDO''+apex.item( "P479_SEQ_ID_DET_PEDIDO" ).getValue());',
'                //console.log(apex.item( "P479_VALOR_OK" ).getValue());     ',
'            } else {            ',
'                $s(''P479_VALOR_OK'', ''N'');            ',
'                $s(''P479_SEQ_ID_PED_OK'', cb.value,false);                            ',
'            }',
'        }   ',
'}',
'  ;',
' ',
' '))
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
' ',
'.t-Body-mainContent  { ',
'                        background: #082b642f!important;',
'                    } ',
'  ',
'  .t-Form-label{',
'                color:  darkblue !important;     ',
'                font-weight: bold;',
'                } ',
'            ',
'',
'',
'    #reg_env, #reg_rep, #reg_dim, #reg_exi{ ',
'                        background: #80a5bb2f!important;',
'                    } ',
'     ',
'',
'  .t-Report-colHead, .a-IRR-headerLink {',
'      background: #003a85!important;',
'       color: yellow; ',
' }',
'',
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
,p_last_upd_yyyymmddhh24miss=>'20250207122854'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(140579693720633944)
,p_plug_name=>unistr('SEGUIMIENTO PARA REPOSICI\00D3N DE PRODUCTOS')
,p_region_template_options=>'#DEFAULT#:t-Region--accent1:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>1070
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(140579777087633945)
,p_plug_name=>'B_CABECERA'
,p_parent_plug_id=>wwv_flow_imp.id(140579693720633944)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(141774759738980202)
,p_plug_name=>'B_REPORTE'
,p_region_name=>'reg_reporte'
,p_parent_plug_id=>wwv_flow_imp.id(140579777087633945)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'    SEQ_ID SEQ_ID_PEDIDO,',
'    C001 suc_sal,',
'    C002 suc_ent,',
'    C003 cod_articulo,',
'    C004 cod_art_corto,',
'    C005 descripcion,',
'    C006 alto_cm,',
'    C007 largo_cm,',
'    C008 ancho_cm,',
'    C009 vol_unit,',
'    C010 volumen,',
'    C011 cant,',
'    APEX_ITEM.CHECKBOX (p_idx  => 1 ,',
'                        p_value       => seq_id,',
'                        p_attributes  => (case C012',
'                                         when ''S'' ',
'                                         then ''checked''',
'                                         else null',
'                                         end )|| decode(C014,''S'','' disabled '','''')||'' onclick="seleccionar(this,''''ok'''');"'') as OK,',
'    N001 CANT_ENV,     ',
'    NULL DETALLES,',
'    APEX_ITEM.CHECKBOX (p_idx  => 1 ,',
'                        p_value       => seq_id,',
'                        p_attributes  => (case C014',
'                                         when ''S'' ',
'                                         then '' checked disabled ''',
'                                         else null',
'                                         end ) ||'' onclick="seleccionar(this,''''anular'''')"'') as ANULAR,',
'    NULL EDITAR                                   ',
'',
'FROM APEX_COLLECTIONS',
'WHERE COLLECTION_NAME = ''PED_REP''',
'AND :P479_INDICADOR_REP_PEDIDOS = ''1'';'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P479_INDICADOR_REP_PEDIDOS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'B_REPORTE'
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
 p_id=>wwv_flow_imp.id(141775722297980212)
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
,p_internal_uid=>141775722297980212
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(141775860834980213)
,p_db_column_name=>'SUC_SAL'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Suc Sal'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(141775938396980214)
,p_db_column_name=>'SUC_ENT'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Suc Ent'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(141776009671980215)
,p_db_column_name=>'COD_ARTICULO'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Codigo Articulo'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_static_id=>'cod_art'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(141776164948980216)
,p_db_column_name=>'COD_ART_CORTO'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Codigo Corto'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(141776200709980217)
,p_db_column_name=>'DESCRIPCION'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Descripcion'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(141776382881980218)
,p_db_column_name=>'ALTO_CM'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Alto Cm'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(141776472174980219)
,p_db_column_name=>'LARGO_CM'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Largo Cm'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(141776500198980220)
,p_db_column_name=>'ANCHO_CM'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Ancho Cm'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(141776686623980221)
,p_db_column_name=>'VOL_UNIT'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Vol Unit'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(141776789070980222)
,p_db_column_name=>'VOLUMEN'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Volumen'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(141776867748980223)
,p_db_column_name=>'CANT'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Cant'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(141776904169980224)
,p_db_column_name=>'DETALLES'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Detalles'
,p_column_link=>'javascript:$s(''P479_SEQ_ID_DET_PEDIDO'',''#SEQ_ID_PEDIDO#'');'
,p_column_linktext=>'<span class="fa fa-eye" aria-hidden="true"></span>'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_static_id=>'detalle'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(141778036521980235)
,p_db_column_name=>'SEQ_ID_PEDIDO'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Item'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_static_id=>'SEQ_ID_PEDIDO'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(141778835209980243)
,p_db_column_name=>'ANULAR'
,p_display_order=>140
,p_column_identifier=>'O'
,p_column_label=>'Anular'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(141779270106980247)
,p_db_column_name=>'OK'
,p_display_order=>150
,p_column_identifier=>'P'
,p_column_label=>'Ok'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(143104364237008747)
,p_db_column_name=>'EDITAR'
,p_display_order=>170
,p_column_identifier=>'R'
,p_column_label=>'Editar'
,p_column_link=>'javascript:$s(''P479_SEQ_ID_PED_EDITAR'',''#SEQ_ID_PEDIDO#'');'
,p_column_linktext=>'<span aria-hidden="true" class="fa fa-edit"></span>'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_static_id=>'editar'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(143676014522956038)
,p_db_column_name=>'CANT_ENV'
,p_display_order=>180
,p_column_identifier=>'S'
,p_column_label=>'Cant Env'
,p_column_link=>'javascript:$s(''P479_SEQ_ID_PED_EDITAR'',''#SEQ_ID_PEDIDO#'');'
,p_column_linktext=>'#CANT_ENV#'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(141878690495950710)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1418787'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'SEQ_ID_PEDIDO:COD_ARTICULO:COD_ART_CORTO:DESCRIPCION:VOLUMEN:CANT:OK:CANT_ENV:ANULAR:'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(143100663639008710)
,p_plug_name=>'EDITAR CANTIDAD A ENVIAR'
,p_parent_plug_id=>wwv_flow_imp.id(141774759738980202)
,p_region_css_classes=>'js-dialog-size380x220'
,p_region_template_options=>'js-dialog-autoheight:js-modal:js-draggable:js-dialog-size480x320'
,p_plug_template=>wwv_flow_imp.id(40117728043263659)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(141774886606980203)
,p_plug_name=>'DER'
,p_parent_plug_id=>wwv_flow_imp.id(140579693720633944)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>50
,p_plug_new_grid_row=>false
,p_plug_grid_column_span=>4
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(141774980501980204)
,p_plug_name=>'Existencia'
,p_region_name=>'reg_exi'
,p_parent_plug_id=>wwv_flow_imp.id(141774886606980203)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--accent15:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>10
,p_plug_new_grid_row=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT C003 COD_SUCURSAL,',
'       C004 DESCRIPCION,',
'       N001 CANT_DISPON',
'       ',
'FROM APEX_COLLECTIONS',
'WHERE COLLECTION_NAME = ''SUCURSALES''',
'AND :P479_INDICADOR_REP_SUCURSAL = ''1'';',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P479_INDICADOR_REP_SUCURSAL'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Existencia'
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
 p_id=>wwv_flow_imp.id(143101425033008718)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_search_bar=>'N'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_enable_mail_download=>'Y'
,p_owner=>'EMILIANOP'
,p_internal_uid=>143101425033008718
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(143101520979008719)
,p_db_column_name=>'COD_SUCURSAL'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>unistr('C\00F3digo Suc.')
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(143101669116008720)
,p_db_column_name=>'DESCRIPCION'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>unistr('Descripci\00F3n SUCURSAL')
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(143101709051008721)
,p_db_column_name=>'CANT_DISPON'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Cant. Disponible'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(143271835680405200)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1432719'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'COD_SUCURSAL:DESCRIPCION:CANT_DISPON'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(141775061989980205)
,p_plug_name=>'Dimensiones'
,p_region_name=>'reg_dim'
,p_parent_plug_id=>wwv_flow_imp.id(141774886606980203)
,p_region_template_options=>'#DEFAULT#:t-Region--accent2:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>30
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(141775155731980206)
,p_plug_name=>unistr('Solicitud Reposici\00F3n')
,p_region_name=>'reg_rep'
,p_parent_plug_id=>wwv_flow_imp.id(141774886606980203)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--accent15:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>40
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT N001 nro_pedido,',
'       D001 fecha,',
'       C002 cod_sucursal_ent,',
'       C001 cod_sucursal_sal,',
'       N002 cant,',
'       N003 cant_conf,',
'       APEX_ITEM.CHECKBOX (p_idx  => 1 ,',
'                           p_value       => seq_id,',
'                           p_attributes  => (case C014',
'                                             when ''S'' ',
'                                             then ''checked''',
'                                             else null',
'                                             end ) ||''onclick="seleccionar(this,''''repo'''')"'') as ANULAR',
'',
'FROM APEX_COLLECTIONS',
'WHERE COLLECTION_NAME = ''REPOSICION''',
'AND :P479_INDICADOR_REP_REPO = ''1'';'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>unistr('Solicitud Reposici\00F3n')
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
 p_id=>wwv_flow_imp.id(143676885605956046)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_search_bar=>'N'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_enable_mail_download=>'Y'
,p_owner=>'EMILIANOP'
,p_internal_uid=>143676885605956046
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(143677087629956048)
,p_db_column_name=>'NRO_PEDIDO'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Nro Pedido'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(143677170495956049)
,p_db_column_name=>'FECHA'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Fecha'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(143677227724956050)
,p_db_column_name=>'COD_SUCURSAL_ENT'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Cod. Suc. Entrada'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(144609958733902301)
,p_db_column_name=>'COD_SUCURSAL_SAL'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Cod. Suc. Salida'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(144610098144902302)
,p_db_column_name=>'CANT'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Cant'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(144610146716902303)
,p_db_column_name=>'CANT_CONF'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Cant Conf'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(144610235976902304)
,p_db_column_name=>'ANULAR'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Anular'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(144620483104884365)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1446205'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'NRO_PEDIDO:FECHA:COD_SUCURSAL_ENT:COD_SUCURSAL_SAL:CANT:CANT_CONF:ANULAR'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(141775229842980207)
,p_plug_name=>unistr('Env\00EDo')
,p_region_name=>'reg_env'
,p_parent_plug_id=>wwv_flow_imp.id(141774886606980203)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>50
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(140580178302633949)
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
 p_id=>wwv_flow_imp.id(143102857516008732)
,p_plug_name=>unistr('\00BFEsta seguro de anular el art\00EDculo?')
,p_region_css_classes=>'js-dialog-size325x120'
,p_region_template_options=>'#DEFAULT#:js-dialog-size480x320'
,p_plug_template=>wwv_flow_imp.id(40117728043263659)
,p_plug_display_sequence=>1080
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(143104669339008750)
,p_plug_name=>'Editar Cantidad a enviar'
,p_region_css_classes=>'js-dialog-size325x120'
,p_region_template_options=>'#DEFAULT#:js-dialog-size480x320'
,p_plug_template=>wwv_flow_imp.id(40117728043263659)
,p_plug_display_sequence=>1100
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(144610909867902311)
,p_plug_name=>unistr('\00BFEsta seguro de anular la solicitud?')
,p_region_css_classes=>'js-dialog-size325x120'
,p_region_template_options=>'#DEFAULT#:js-dialog-size480x320'
,p_plug_template=>wwv_flow_imp.id(40117728043263659)
,p_plug_display_sequence=>1090
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(143102942923008733)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(143102857516008732)
,p_button_name=>'BTN_CONFIRMAR_ARTICULO'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Confirmar'
,p_warn_on_unsaved_changes=>null
,p_button_cattributes=>'style="margin-left:40px;"'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(144611095211902312)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(144610909867902311)
,p_button_name=>'BTN_CONFIRMAR_REPOSICION'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Confirmar'
,p_warn_on_unsaved_changes=>null
,p_button_cattributes=>'style="margin-left:40px;"'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(144611165348902313)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(144610909867902311)
,p_button_name=>'BTN_CANCELAR_REPOSICION'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Cancelar'
,p_warn_on_unsaved_changes=>null
,p_button_cattributes=>'style="margin-left:40px;"'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(140580076671633948)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(140579777087633945)
,p_button_name=>'BTN_ACTUALIZAR'
,p_button_static_id=>'actualizar'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--gapTop'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Actualizar'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'u-color-6-text'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(143103065842008734)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(143102857516008732)
,p_button_name=>'BTN_CANCELAR_ARTICULO'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Cancelar'
,p_warn_on_unsaved_changes=>null
,p_button_cattributes=>'style="margin-left:40px;"'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(143100004324008704)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(141775229842980207)
,p_button_name=>'BTN_GENERAR_ENVIO'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('Generar Env\00EDo')
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'u-color-21-text'
,p_button_cattributes=>'style=''width:150px;margin-top:15px;'''
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(143101060204008714)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(143100663639008710)
,p_button_name=>'BTN_CANTIDAD_ACEPTAR_ED'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Aceptar'
,p_button_position=>'BOTTOM'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(143101174902008715)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(143100663639008710)
,p_button_name=>'BTN_CANTIDAD_CERRAR_ED'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Cerrar'
,p_button_position=>'BOTTOM'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(140579867473633946)
,p_name=>'P479_SUC_SAL'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(140579777087633945)
,p_prompt=>'Salida'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT DISTINCT SUC_SAL D, SUC_SAL R',
'FROM INV.VW_PED_REPOSICION_DET',
'where cod_empresa = :P_COD_EMPRESA'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_colspan=>5
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
 p_id=>wwv_flow_imp.id(140579951701633947)
,p_name=>'P479_SUC_ENT'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(140579777087633945)
,p_prompt=>'Entrada'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT DISTINCT  SUC_ENT D, SUC_ENT R',
'FROM INV.VW_PED_REPOSICION_DET',
'where cod_empresa = :P_COD_EMPRESA',
''))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>5
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
 p_id=>wwv_flow_imp.id(140580268509633950)
,p_name=>'P479_COD_MODULO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(140580178302633949)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(141775614536980211)
,p_name=>'P479_INDICADOR_REP_PEDIDOS'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(140580178302633949)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(141777255666980227)
,p_name=>'P479_LARGO_CM'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(141775061989980205)
,p_prompt=>'Largo'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
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
 p_id=>wwv_flow_imp.id(141777328318980228)
,p_name=>'P479_ANCHO_CM'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(141775061989980205)
,p_prompt=>'Ancho'
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
 p_id=>wwv_flow_imp.id(141777432659980229)
,p_name=>'P479_ALTO_CM'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(141775061989980205)
,p_prompt=>'Alto'
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
 p_id=>wwv_flow_imp.id(141777521070980230)
,p_name=>'P479_VOL_UNIT'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(141775061989980205)
,p_prompt=>'Volumen'
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
 p_id=>wwv_flow_imp.id(141777745093980232)
,p_name=>'P479_SEQ_ID_DET_PEDIDO'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_imp.id(140580178302633949)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(141778776299980242)
,p_name=>'P479_ACCION'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(140580178302633949)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(141778978049980244)
,p_name=>'P479_SEQ_ID_PED_ANULAR'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_imp.id(140580178302633949)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(143099791585008701)
,p_name=>'P479_COD_SUCURSAL_SAL'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(141775229842980207)
,p_prompt=>'Enviar desde'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select s.cod_sucursal||'' - ''||descripcion Desuc, s.cod_sucursal ',
'  from sucursales s,',
'       sucursal_zona z',
' where s.cod_empresa = :P_COD_EMPRESA',
' and   s.cod_sucursal=z.cod_sucursal',
' and   z.zona_suc like ''%''||:P479_SUC_SAL||''%''',
''))
,p_lov_cascade_parent_items=>'P479_SUC_SAL'
,p_ajax_items_to_submit=>'P479_SUC_SAL'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
,p_attribute_08=>'400'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(143099896610008702)
,p_name=>'P479_COD_SUCURSAL_ENT'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(141775229842980207)
,p_prompt=>'Suc. Destino'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select s.cod_sucursal||'' - ''||descripcion Desuc, s.cod_sucursal ',
'  from sucursales s,',
'       sucursal_zona z',
' where s.cod_empresa = :P_COD_EMPRESA',
' and   s.cod_sucursal=z.cod_sucursal',
' and   z.zona_suc like ''%''||:P479_SUC_ent||''%''',
''))
,p_lov_cascade_parent_items=>'P479_SUC_ENT'
,p_ajax_items_to_submit=>'P479_SUC_ENT'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
,p_attribute_08=>'400'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(143099923383008703)
,p_name=>'P479_VOL_TOTAL'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(141775229842980207)
,p_prompt=>'Total Vol. M3'
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
 p_id=>wwv_flow_imp.id(143100494549008708)
,p_name=>'P479_ALERT'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(140580178302633949)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(143100793379008711)
,p_name=>'P479_CANTIDAD_A_ENVIAR'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(143100663639008710)
,p_prompt=>'Cantidad A Enviar'
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
 p_id=>wwv_flow_imp.id(143101977183008723)
,p_name=>'P479_P_TIPO_CHECK'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(140580178302633949)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(143103493200008738)
,p_name=>'P479_COD_ARTICULO_ANULAR'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(140580178302633949)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(143104234886008746)
,p_name=>'P479_SEQ_ID_PED_EDITAR'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_imp.id(140580178302633949)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(143672549915956003)
,p_name=>'P479_VALOR_OK'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(140580178302633949)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(143674258811956020)
,p_name=>'P479_SEQ_ID_PED_OK'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(140580178302633949)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(143674456200956022)
,p_name=>'P479_CARGA_CANT'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(143104669339008750)
,p_prompt=>'Carga Cant'
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
 p_id=>wwv_flow_imp.id(143674660559956024)
,p_name=>'P479_INDICADOR_OK'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(140580178302633949)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(143676561736956043)
,p_name=>'P479_INDICADOR_REP_SUCURSAL'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(140580178302633949)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(143676971076956047)
,p_name=>'P479_INDICADOR_REP_REPO'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(140580178302633949)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(144610446226902306)
,p_name=>'P479_SEQ_ID_REPO_ANU'
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_imp.id(140580178302633949)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(144610531385902307)
,p_name=>'P479_VALOR_REPO_ANU'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(140580178302633949)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(144612377468902325)
,p_name=>'P479_P_NRO_COMP_ENVIAR'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(140580178302633949)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(144612515082902327)
,p_name=>'P479_URL'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(140580178302633949)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(144612859917902330)
,p_name=>'P479_VALOR_PED_ANU'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(140580178302633949)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(144613040099902332)
,p_name=>'P479_INDICADOR_ALERT_VAL'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_imp.id(140580178302633949)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(141775327325980208)
,p_name=>'DA_CARGAR_REPORTE'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(140580076671633948)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(141775445076980209)
,p_event_id=>wwv_flow_imp.id(141775327325980208)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    APEX_COLLECTION.CREATE_OR_TRUNCATE_COLLECTION (P_COLLECTION_NAME => ''PED_REP''); ',
'',
'    APEX_COLLECTION.CREATE_OR_TRUNCATE_COLLECTION (P_COLLECTION_NAME => ''SUCURSALES'');',
'',
'    APEX_COLLECTION.CREATE_OR_TRUNCATE_COLLECTION (P_COLLECTION_NAME => ''REPOSICION'');',
'',
'',
'    STSEREPR.PR_CREAR_COL_PED_REP (PI_SUC_SAL => :P479_SUC_SAL, ',
'                                   PI_SUC_ENT => :P479_SUC_ENT);',
'    ',
'    :P479_INDICADOR_REP_PEDIDOS := ''1'';',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        raise_application_error(-20000,SQLERRM);',
'END;',
'',
''))
,p_attribute_02=>'P479_SUC_SAL,P479_SUC_ENT'
,p_attribute_03=>'P479_INDICADOR_REP_PEDIDOS'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(180069420927113247)
,p_event_id=>wwv_flow_imp.id(141775327325980208)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P479_LARGO_CM,P479_ANCHO_CM,P479_ALTO_CM,P479_VOL_UNIT,P479_COD_SUCURSAL_SAL,P479_COD_SUCURSAL_ENT,P479_VOL_TOTAL'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(141777068434980225)
,p_event_id=>wwv_flow_imp.id(141775327325980208)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(141774980501980204)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(180069740586113250)
,p_event_id=>wwv_flow_imp.id(141775327325980208)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(141775155731980206)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(180069637301113249)
,p_event_id=>wwv_flow_imp.id(141775327325980208)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(141774759738980202)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(141777874544980233)
,p_name=>'DA_MOSTRAR_DET_PEDIDO'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P479_SEQ_ID_DET_PEDIDO'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(141777960649980234)
,p_event_id=>wwv_flow_imp.id(141777874544980233)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    SELECT C006,',
'           C007,',
'           C008,',
'           C009',
'',
'    INTO',
'        :P479_LARGO_CM,',
'        :P479_ANCHO_CM,',
'        :P479_ALTO_CM,',
'        :P479_VOL_UNIT',
'',
'    FROM APEX_COLLECTIONS',
'    WHERE COLLECTION_NAME = ''PED_REP''',
'    AND SEQ_ID = :P479_SEQ_ID_DET_PEDIDO;',
'',
'',
'    APEX_COLLECTION.CREATE_OR_TRUNCATE_COLLECTION (P_COLLECTION_NAME => ''SUCURSALES'');',
'',
'    APEX_COLLECTION.CREATE_OR_TRUNCATE_COLLECTION (P_COLLECTION_NAME => ''REPOSICION'');',
'EXCEPTION',
'    when no_data_found then',
'        null;',
'    WHEN OTHERS THEN',
'       raise_application_error(-20000,SQLERRM);',
'END;'))
,p_attribute_02=>'P479_SEQ_ID_DET_PEDIDO'
,p_attribute_03=>'P479_LARGO_CM,P479_ANCHO_CM,P479_ALTO_CM,P479_VOL_UNIT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(143676452243956042)
,p_event_id=>wwv_flow_imp.id(141777874544980233)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    V_SUC_SAL VARCHAR2(50);',
'    V_COD_ARTICULO VARCHAR2(50);',
'BEGIN',
'    SELECT C001,',
'           C003',
'    INTO V_SUC_SAL,',
'         V_COD_ARTICULO',
'',
'    FROM APEX_COLLECTIONS',
'    WHERE COLLECTION_NAME = ''PED_REP''',
'    AND SEQ_ID = :P479_SEQ_ID_DET_PEDIDO;',
' ',
'',
'    -- CARGA SUCURSALES',
'    STSEREPR.PR_CARGAR_COL_SUCURSALES (PI_COD_ARTICULO => V_COD_ARTICULO,',
'                                       PI_SUC_SAL => V_SUC_SAL);',
'    -- CARGA REPOSICION                               ',
'    STSEREPR. PR_CARGAR_COL_REPOSICION (PI_COD_ARTICULO => V_COD_ARTICULO);',
' ',
'',
'    :P479_INDICADOR_REP_SUCURSAL := ''1'';',
'    :P479_INDICADOR_REP_REPO := ''1'';',
'',
'EXCEPTION',
'    WHEN NO_DATA_FOUND THEN',
'        NULL;',
'    WHEN OTHERS THEN',
'         raise_application_error(-20000,SQLERRM);',
'END;'))
,p_attribute_02=>'P479_SEQ_ID_DET_PEDIDO'
,p_attribute_03=>'P479_INDICADOR_REP_SUCURSAL,P479_INDICADOR_REP_REPO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(143676603566956044)
,p_event_id=>wwv_flow_imp.id(141777874544980233)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(141774980501980204)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(144610378222902305)
,p_event_id=>wwv_flow_imp.id(141777874544980233)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(141775155731980206)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(143100186156008705)
,p_name=>'DA_GENERAR_ENVIO'
,p_event_sequence=>30
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(143100004324008704)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(143100226926008706)
,p_event_id=>wwv_flow_imp.id(143100186156008705)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>unistr('\00BFDesea generar la Nota de Envio Pendiente?')
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(180886866546792606)
,p_event_id=>wwv_flow_imp.id(143100186156008705)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var spinner = apex.util.showSpinner();',
''))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(143100375604008707)
,p_event_id=>wwv_flow_imp.id(143100186156008705)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    IF :P479_COD_SUCURSAL_SAL IS NULL OR :P479_COD_SUCURSAL_ENT IS NULL THEN',
'        :P479_ALERT := ''Las sucursales de salida y destino no pueden ser nulas.'';',
'    ELSE',
'        :P479_ALERT := NULL;',
'        :P479_INDICADOR_ALERT_VAL := NULL;           ',
'    END IF;',
'    ',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        raise_application_error(-20000,SQLERRM);',
'END;',
'',
''))
,p_attribute_02=>'P479_COD_SUCURSAL_SAL,P479_COD_SUCURSAL_ENT'
,p_attribute_03=>'P479_ALERT,P479_INDICADOR_ALERT_VAL'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(144612955632902331)
,p_event_id=>wwv_flow_imp.id(143100186156008705)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'&P479_ALERT.'
,p_attribute_03=>'information'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P479_ALERT'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(143101245588008716)
,p_event_id=>wwv_flow_imp.id(143100186156008705)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    :P479_ALERT := NULL;',
'    :P479_INDICADOR_ALERT_VAL := ''1'';',
'    STSEREPR.CREA_NOTA_ENVIO (PI_SUCURSAL_SAL => :P479_COD_SUCURSAL_SAL, ',
'                              PI_SUCURSAL_ENT => :P479_COD_SUCURSAL_ENT,',
'                              PI_APP_USER => :APP_USER,',
'                              PO_ALERT => :P479_ALERT,',
'                              PO_NRO_COMPROBANTE => :P479_P_NRO_COMP_ENVIAR);',
'EXCEPTION',
'    WHEN OTHERS THEN',
'       :P479_INDICADOR_ALERT_VAL := ''1'';',
unistr('       :P479_ALERT := ''Ha ocurrido un error al momento de generar un env\00EDo.'';'),
'        raise_application_error(-20000,SQLERRM);',
'END;',
'',
''))
,p_attribute_02=>'P479_COD_SUCURSAL_SAL,P479_COD_SUCURSAL_ENT'
,p_attribute_03=>'P479_ALERT,P479_P_NRO_COMP_ENVIAR,P479_INDICADOR_ALERT_VAL'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P479_ALERT'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(143100543117008709)
,p_event_id=>wwv_flow_imp.id(143100186156008705)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'&P479_ALERT.'
,p_attribute_03=>'information'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P479_INDICADOR_ALERT_VAL'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(144612434192902326)
,p_event_id=>wwv_flow_imp.id(143100186156008705)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'	SELECT APEX_PAGE.GET_URL (  p_page   => 339,',
'            				    p_items  => ''P339_P_NRO_COMPROBANTE,P339_P_SER_COMPROBANTE'', ',
'            				    p_values =>  :P479_P_NRO_COMP_ENVIAR||'',A'') f_url_1',
'		INTO :P479_URL',
'		FROM DUAL;        ',
'	  ',
'EXCEPTION',
'    WHEN OTHERS THEN',
'       raise_application_error(-20000,SQLERRM);',
'END;'))
,p_attribute_02=>'P479_P_NRO_COMP_ENVIAR'
,p_attribute_03=>'P479_URL'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P479_INDICADOR_ALERT_VAL'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(144612655669902328)
,p_event_id=>wwv_flow_imp.id(143100186156008705)
,p_event_result=>'TRUE'
,p_action_sequence=>80
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var url = apex.item("P479_URL").getValue();',
'',
'apex.navigation.openInNewWindow(url, "_blank");'))
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P479_INDICADOR_ALERT_VAL'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(180886976510792607)
,p_event_id=>wwv_flow_imp.id(143100186156008705)
,p_event_result=>'TRUE'
,p_action_sequence=>90
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$("#apex_wait_overlay").remove();',
'$(".u-Processing").remove();',
'$("#actualizar").click();'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(143102015043008724)
,p_name=>'DA_ANULAR'
,p_event_sequence=>40
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P479_SEQ_ID_PED_ANULAR'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(143103319615008737)
,p_event_id=>wwv_flow_imp.id(143102015043008724)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    SELECT C003',
'    INTO :P479_COD_ARTICULO_ANULAR',
'    FROM APEX_COLLECTIONS',
'    WHERE COLLECTION_NAME = ''PED_REP''',
'    AND SEQ_ID = :P479_SEQ_ID_PED_ANULAR;',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'         raise_application_error(-20000,SQLERRM);',
'END;'))
,p_attribute_02=>'P479_SEQ_ID_PED_ANULAR'
,p_attribute_03=>'P479_COD_ARTICULO_ANULAR'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(143102286812008726)
,p_event_id=>wwv_flow_imp.id(143102015043008724)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(143102857516008732)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(143103125637008735)
,p_name=>'DA_CERRAR_ANULAR'
,p_event_sequence=>50
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(143103065842008734)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(143103505266008739)
,p_event_id=>wwv_flow_imp.id(143103125637008735)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    APEX_COLLECTION.UPDATE_MEMBER_ATTRIBUTE (P_COLLECTION_NAME => ''PED_REP'',',
'                                             P_SEQ             => :P479_SEQ_ID_PED_ANULAR ,',
'                                             P_ATTR_NUMBER     => 14,',
'                                             P_ATTR_VALUE      => ''N'');',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'         raise_application_error(-20000,SQLERRM);',
'END;'))
,p_attribute_02=>'P479_SEQ_ID_PED_ANULAR'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(143103630259008740)
,p_event_id=>wwv_flow_imp.id(143103125637008735)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(141774759738980202)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(143103253806008736)
,p_event_id=>wwv_flow_imp.id(143103125637008735)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(143102857516008732)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(143103701879008741)
,p_name=>'DA_ANULAR_ART'
,p_event_sequence=>60
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(143102942923008733)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(143675818982956036)
,p_event_id=>wwv_flow_imp.id(143103701879008741)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
' ',
'',
'    APEX_COLLECTION.UPDATE_MEMBER_ATTRIBUTE (P_COLLECTION_NAME => ''PED_REP'',',
'                                             P_SEQ             => :P479_SEQ_ID_PED_ANULAR ,',
'                                             P_ATTR_NUMBER     => 14,',
'                                             P_ATTR_VALUE      => :P479_VALOR_PED_ANU);',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'     raise_application_error(-20000, SQLERRM);',
'END;'))
,p_attribute_02=>'P479_SEQ_ID_PED_ANULAR,P479_VALOR_PED_ANU'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(143103875521008742)
,p_event_id=>wwv_flow_imp.id(143103701879008741)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    STSEREPR.PR_ANULAR_PEDIDO (PI_APP_USER => :APP_USER,',
'                               PI_COD_ARTICULO => :P479_COD_ARTICULO_ANULAR);',
'',
unistr('    :P479_ALERT := ''Art\00EDculo anulado.'';'),
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
unistr('        :P479_ALERT := ''SOcurrio un error al intentar anular el art\00EDculo.'';'),
'',
'        raise_application_error(-20000, SQLERRM);',
'END;'))
,p_attribute_02=>'P479_COD_ARTICULO_ANULAR'
,p_attribute_03=>'P479_ALERT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P479_VALOR_PED_ANU'
,p_client_condition_expression=>'S'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(180069146199113244)
,p_event_id=>wwv_flow_imp.id(143103701879008741)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(141774759738980202)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(143104078650008744)
,p_event_id=>wwv_flow_imp.id(143103701879008741)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(143102857516008732)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(144613109624902333)
,p_event_id=>wwv_flow_imp.id(143103701879008741)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'&P479_ALERT.'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P479_ALERT'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(143104473683008748)
,p_name=>'DA_EDITAR_CANTIDAD'
,p_event_sequence=>70
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P479_SEQ_ID_PED_EDITAR'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(143676385157956041)
,p_event_id=>wwv_flow_imp.id(143104473683008748)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
' ',
'DECLARE',
'    VANULADO VARCHAR2(1);',
'BEGIN',
'    SELECT NVL(C014,'''')',
'    INTO  VANULADO',
'    FROM APEX_COLLECTIONS',
'    WHERE COLLECTION_NAME = ''PED_REP''',
'    AND SEQ_ID = :P479_SEQ_ID_PED_EDITAR;  ',
'',
'    ',
'    IF VANULADO=''S'' THEN',
'         raise_application_error(-20000,''El intem se encuentra anulado.'');',
'    ELSE',
'            APEX_COLLECTION.UPDATE_MEMBER_ATTRIBUTE (P_COLLECTION_NAME => ''PED_REP'',',
'                                                     P_SEQ             => :P479_SEQ_ID_PED_EDITAR,',
'                                                     P_ATTR_NUMBER     => 12,',
'                                                     P_ATTR_VALUE      => ''S'');',
'            SELECT N001',
'            INTO :P479_CANTIDAD_A_ENVIAR',
'            FROM APEX_COLLECTIONS',
'            WHERE COLLECTION_NAME = ''PED_REP''',
'            AND SEQ_ID = :P479_SEQ_ID_PED_EDITAR;',
'        :P479_CARGA_CANT:=:P479_CANTIDAD_A_ENVIAR;',
'    END IF; ',
' ',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'         raise_application_error(-20000,SQLERRM);',
'END;'))
,p_attribute_02=>'P479_SEQ_ID_PED_EDITAR'
,p_attribute_03=>'P479_CANTIDAD_A_ENVIAR,P479_CARGA_CANT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P479_INDICADOR_OK'
,p_client_condition_expression=>'S'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(143674523402956023)
,p_event_id=>wwv_flow_imp.id(143104473683008748)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(143100663639008710)
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P479_SEQ_ID_PED_EDITAR'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(143673903542956017)
,p_name=>'DA_SETEAR_OK_COL'
,p_event_sequence=>90
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P479_VALOR_OK'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(143674182041956019)
,p_event_id=>wwv_flow_imp.id(143673903542956017)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'NULL;',
'/*',
':P479_INDICADOR_OK:=:P479_VALOR_OK;',
':P479_SEQ_ID_PED_EDITAR :=:P479_SEQ_ID_PED_OK;',
'',
'*/',
'---P479_INDICADOR_OK,P479_SEQ_ID_PED_EDITAR'))
,p_attribute_02=>'P479_SEQ_ID_PED_OK,P479_VALOR_OK'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(143672670272956004)
,p_event_id=>wwv_flow_imp.id(143673903542956017)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    VCANT NUMBER(15);',
'    V_CANT_ANT NUMBER(15);',
'    V_VOL_UNIT NUMBER(15,2);',
'BEGIN ',
'',
'    APEX_COLLECTION.UPDATE_MEMBER_ATTRIBUTE (P_COLLECTION_NAME => ''PED_REP'',',
'                                             P_SEQ             => :P479_SEQ_ID_PED_OK,',
'                                             P_ATTR_NUMBER     => 12,',
'                                             P_ATTR_VALUE      => :P479_VALOR_OK);',
'',
' ',
'     IF    :P479_VALOR_OK=''S'' THEN',
'                SELECT  TO_NUMBER(NVL(C011,''0''))  ',
'                INTO VCANT ',
'                FROM APEX_COLLECTIONS',
'                WHERE COLLECTION_NAME = ''PED_REP''',
'                AND SEQ_ID = :P479_SEQ_ID_PED_OK;',
'        ',
'        APEX_COLLECTION.UPDATE_MEMBER_ATTRIBUTE (P_COLLECTION_NAME => ''PED_REP'',',
'                                                 P_SEQ             => :P479_SEQ_ID_PED_OK,',
'                                                 P_ATTR_NUMBER     => 1,',
'                                                 p_number_value    => VCANT);',
'',
'    ELSE',
'        ',
'        APEX_COLLECTION.UPDATE_MEMBER_ATTRIBUTE (P_COLLECTION_NAME => ''PED_REP'',',
'                                                 P_SEQ             => :P479_SEQ_ID_PED_OK,',
'                                                 P_ATTR_NUMBER     => 1,',
'                                                 p_number_value    => 0);',
'      ',
'    END IF;',
'    ',
'              SELECT  SUM( NVL(N001,0)*TO_NUMBER(NVL(C009,''0'')))',
'                INTO :P479_VOL_TOTAL  ',
'                FROM APEX_COLLECTIONS',
'                WHERE COLLECTION_NAME = ''PED_REP''',
'                AND NVL(N001,0)>0',
'                ;',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'         raise_application_error(-20000,:P479_SEQ_ID_PED_OK||''.---''||SQLERRM);',
'END;',
'',
' '))
,p_attribute_02=>'P479_SEQ_ID_PED_OK,P479_VALOR_OK'
,p_attribute_03=>'P479_VOL_TOTAL'
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
 p_id=>wwv_flow_imp.id(180887473313792612)
,p_event_id=>wwv_flow_imp.id(143673903542956017)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(141774759738980202)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(143674719332956025)
,p_name=>'DA_CERRAR_EDITAR_CANTIDAD'
,p_event_sequence=>100
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(143101174902008715)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(143674849767956026)
,p_event_id=>wwv_flow_imp.id(143674719332956025)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(143100663639008710)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(143675374371956031)
,p_name=>'DA_MODIFICAR_CANT_ENV'
,p_event_sequence=>110
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(143101060204008714)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(143675580036956033)
,p_event_id=>wwv_flow_imp.id(143675374371956031)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    V_CANTIDAD VARCHAR2(50);',
'BEGIN',
'    SELECT C011',
'    INTO V_CANTIDAD',
'    FROM APEX_COLLECTIONS',
'    WHERE COLLECTION_NAME = ''PED_REP'' ',
'    AND SEQ_ID = :P479_SEQ_ID_PED_EDITAR;',
'',
'   /* IF to_number(:P479_CANTIDAD_A_ENVIAR) > to_number(V_CANTIDAD) THEN',
'        :P479_ALERT := ''La cantidad a enviar no puede ser mayor a la cantidad solicitada a ''||V_CANTIDAD;',
'    ELS*/IF to_number(:P479_CANTIDAD_A_ENVIAR) < 0 THEN',
'        :P479_ALERT := ''La cantidad a enviar no puede ser negativa.'';',
'    ELSE',
'        :P479_ALERT := NULL;',
'    END IF; ',
'    ',
'EXCEPTION',
'    WHEN OTHERS THEN',
'         raise_application_error(-20000,SQLERRM);',
'END;'))
,p_attribute_02=>'P479_SEQ_ID_PED_EDITAR,P479_CANTIDAD_A_ENVIAR'
,p_attribute_03=>'P479_ALERT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(143675755935956035)
,p_event_id=>wwv_flow_imp.id(143675374371956031)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'&P479_ALERT.'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P479_ALERT'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(143675983559956037)
,p_event_id=>wwv_flow_imp.id(143675374371956031)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    V_CANT_ANT NUMBER;',
'    V_VOL_UNIT VARCHAR2(50);',
'BEGIN',
'',
'    SELECT N002, C009 INTO V_CANT_ANT, V_VOL_UNIT',
'    FROM APEX_COLLECTIONS',
'    WHERE COLLECTION_NAME = ''PED_REP''',
'    AND SEQ_ID = :P479_SEQ_ID_PED_EDITAR;',
'',
'  ',
'    APEX_COLLECTION.UPDATE_MEMBER_ATTRIBUTE (P_COLLECTION_NAME => ''PED_REP'',',
'                                             P_SEQ             => :P479_SEQ_ID_PED_EDITAR ,',
'                                             P_ATTR_NUMBER     => 1,',
'                                             P_NUMBER_VALUE      => :P479_CANTIDAD_A_ENVIAR);',
'',
'    APEX_COLLECTION.UPDATE_MEMBER_ATTRIBUTE (P_COLLECTION_NAME => ''PED_REP'',',
'                                             P_SEQ             => :P479_SEQ_ID_PED_EDITAR ,',
'                                             P_ATTR_NUMBER     => 2,',
'                                             P_NUMBER_VALUE    => V_CANT_ANT);',
'',
'    APEX_COLLECTION.UPDATE_MEMBER_ATTRIBUTE (P_COLLECTION_NAME => ''PED_REP'',',
'                                             P_SEQ             => :P479_SEQ_ID_PED_EDITAR,',
'                                             P_ATTR_NUMBER     => 12,',
'                                             P_ATTR_VALUE      => ''S'');',
'',
'              SELECT  SUM( NVL(N001,0)*TO_NUMBER(NVL(C009,''0'')))',
'                INTO :P479_VOL_TOTAL  ',
'                FROM APEX_COLLECTIONS',
'                WHERE COLLECTION_NAME = ''PED_REP''',
'                AND NVL(N001,0)>0',
'                ;',
'EXCEPTION',
'    WHEN OTHERS THEN',
'         raise_application_error(-20000,SQLERRM);',
'END;'))
,p_attribute_02=>'P479_VOL_TOTAL,P479_SEQ_ID_PED_EDITAR,P479_CANTIDAD_A_ENVIAR'
,p_attribute_03=>'P479_VOL_TOTAL'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P479_ALERT'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(143675645169956034)
,p_event_id=>wwv_flow_imp.id(143675374371956031)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(143100663639008710)
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P479_ALERT'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(143676154554956039)
,p_event_id=>wwv_flow_imp.id(143675374371956031)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(141774759738980202)
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P479_ALERT'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(144610644159902308)
,p_name=>'DA_ANULAR_REPO'
,p_event_sequence=>120
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(144611095211902312)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(144610760564902309)
,p_event_id=>wwv_flow_imp.id(144610644159902308)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
' ',
'',
'    APEX_COLLECTION.UPDATE_MEMBER_ATTRIBUTE (P_COLLECTION_NAME => ''REPOSICION'',',
'                                             P_SEQ             => :P479_SEQ_ID_REPO_ANU,',
'                                             P_ATTR_NUMBER     => 14,',
'                                             P_ATTR_VALUE      => :P479_VALOR_REPO_ANU);',
'EXCEPTION',
'    WHEN OTHERS THEN',
'         raise_application_error(-20000,SQLERRM);',
'END;'))
,p_attribute_02=>'P479_SEQ_ID_REPO_ANU,P479_VALOR_REPO_ANU'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(144611759592902319)
,p_event_id=>wwv_flow_imp.id(144610644159902308)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    STSEREPR.PR_ANULAR_REPOSICION(:APP_USER, :P479_COD_ARTICULO_ANULAR);',
'    ',
unistr('    :P479_ALERT := ''Solicitud de reposici\00F3n anulada.'';'),
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'         raise_application_error(-20000,SQLERRM);',
'        :P479_ALERT := ''Ha ocurrido un error.'';',
'END;'))
,p_attribute_02=>'P479_COD_ARTICULO_ANULAR'
,p_attribute_03=>'P479_ALERT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(144611938551902321)
,p_event_id=>wwv_flow_imp.id(144610644159902308)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(144610909867902311)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(180886341363792601)
,p_event_id=>wwv_flow_imp.id(144610644159902308)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'$(''#actualizar'').click();'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(144612207981902324)
,p_event_id=>wwv_flow_imp.id(144610644159902308)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'&P479_ALERT.'
,p_attribute_03=>'information'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(144611232638902314)
,p_name=>'DA_ANU_REPOSICION'
,p_event_sequence=>130
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P479_SEQ_ID_REPO_ANU'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(144611449384902316)
,p_event_id=>wwv_flow_imp.id(144611232638902314)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>':P479_COD_ARTICULO_ANULAR := :P479_SEQ_ID_DET_PEDIDO;'
,p_attribute_02=>'P479_SEQ_ID_DET_PEDIDO'
,p_attribute_03=>'P479_COD_ARTICULO_ANULAR'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(144611371609902315)
,p_event_id=>wwv_flow_imp.id(144611232638902314)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(144610909867902311)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(144611578784902317)
,p_name=>'DA_CERRAR_ANU_REPO'
,p_event_sequence=>140
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(144611165348902313)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(144612054682902322)
,p_event_id=>wwv_flow_imp.id(144611578784902317)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
' ',
'',
'    APEX_COLLECTION.UPDATE_MEMBER_ATTRIBUTE (P_COLLECTION_NAME => ''REPOSICION'',',
'                                             P_SEQ             => :P479_SEQ_ID_REPO_ANU,',
'                                             P_ATTR_NUMBER     => 14,',
'                                             P_ATTR_VALUE      => ''N'');',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        raise_application_error(-20000,SQLERRM);',
'END;'))
,p_attribute_02=>'P479_SEQ_ID_REPO_ANU,P479_VALOR_REPO_ANU'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(144612119649902323)
,p_event_id=>wwv_flow_imp.id(144611578784902317)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(141775155731980206)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(144611622376902318)
,p_event_id=>wwv_flow_imp.id(144611578784902317)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(144610909867902311)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(180068970192113242)
,p_name=>'da_setea_id_pedido'
,p_event_sequence=>150
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'#reg_reporte table thead tr'
,p_bind_type=>'live'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(180069076141113243)
,p_event_id=>wwv_flow_imp.id(180068970192113242)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  // $(this.triggeringElement).closest(''tr'').find(''td a'').click();',
'',
'  // $(''td[headers="DESCARGAR"] a'')[0].click();',
'    ',
'      var pk = $(this.triggeringElement).closest(''tr'').find(''[headers="SEQ_ID_PEDIDO"]'').text(); ',
'      $s(''P479_SEQ_ID_DET_PEDIDO'',pk);',
' ',
'    ///  if  (pk!='''') {   $s(''P479_SEQ_ID_DET_PEDIDO'',pk);   }; ',
'    ',
'    ///$(this.triggeringElement).closest(''tr'').find(''a'').click();',
'    //$(''td[headers="DESCARGAR"] a'')[0].click();'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(891528354981316925)
,p_name=>'da_chng'
,p_event_sequence=>160
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P479_INDICADOR_ALERT_VAL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(891528424564316926)
,p_event_id=>wwv_flow_imp.id(891528354981316925)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$("#apex_wait_overlay").remove();',
'$(".u-Processing").remove();'))
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(141777137060980226)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'PR_LIMPIAR_CAMPOS'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(141774634370980201)
,p_process_sequence=>20
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_INIT'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    :P479_COD_MODULO := ''ST'';',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        raise_application_error(-20000,SQLERRM);',
'END;'))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_imp.component_end;
end;
/
