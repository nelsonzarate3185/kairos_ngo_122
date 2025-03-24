prompt --application/pages/page_00398
begin
--   Manifest
--     PAGE: 00398
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
 p_id=>398
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'Ruteo de Pedidos - RPRUTPED'
,p_alias=>'RPRUTPED'
,p_step_title=>'Ruteo de Pedidos - RPRUTPED'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function seleccionar(cb, p_collection, nro_planilla) {',
'    console.log(cb.value);',
'    console.log(cb.checked);',
'    console.log(nro_planilla);',
'    console.log(p_collection);',
'',
'    if (apex.item(''P398_ZONA_ENTREGA'').getValue() == ''''){',
'        cb.checked = false;',
'    }',
'    ',
'    /*',
'    if (nro_planilla > 0){',
'        cb.checked = false;',
'    }   */',
'        ',
'    //apex.item("P398_NRO_PLANILLA_SEQ_ID").setValue(nro_planilla);',
'    ',
'    if (cb.checked == true){',
'        console.log("block" + cb.value);',
'        $s(''P398_ACCION'',''AGREGAR'');',
'        $s(''P398_SEQ_ID_SELECCIONAR'', cb.value,false);',
'        $s(''P398_P_COLLECTION'', ''PEDIDOS_RUTEO'');',
'',
'        ',
'    } else {',
'        $s(''P398_ACCION'',''QUITAR'');',
'        $s(''P398_SEQ_ID_SELECCIONAR'', cb.value,false);',
'        $s(''P398_P_COLLECTION'', ''PEDIDOS_SELEC'');',
'    }',
'    }',
'',
'',
'',
'////////////////////////////////////////////////////////////////////',
'',
'function doDescarga(p_cod_empresa, p_nro_solicitud){',
'   var vURL = ''https://ngosaeca.com.py/reportes/rest_v2/reports/reports/RPORDSER/RPORDSER.pdf?''',
'            + ''&P_NRO_SOLICITUD='' + p_nro_solicitud +',
'              ''&P_COD_EMPRESA='' + p_cod_empresa   ',
'            + ''&j_username=jasperadmin&j_password=jasperadmin'';',
'',
'   console.log(vURL);',
'    window.open(unescape(vURL.replace(/&amp;/g,''g'')),''_blank'');',
'',
'}'))
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#ruteo {background-color: #edf2f4;}',
'',
'.t-Form-label{',
'    color:  #003A85  !important;',
'    font-weight: bold !important;',
'    }'))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_last_updated_by=>'INV'
,p_last_upd_yyyymmddhh24miss=>'20231013144816'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(117611450062947315)
,p_plug_name=>'New'
,p_region_template_options=>'#DEFAULT#:t-TabsRegion-mod--simple'
,p_plug_template=>wwv_flow_imp.id(40132096801263663)
,p_plug_display_sequence=>1040
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(117611550533947316)
,p_plug_name=>'Resumen'
,p_parent_plug_id=>wwv_flow_imp.id(117611450062947315)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT  SEQ_ID SEQ_ID_REPARTO,',
'        001 RUTA_ASIGNADA,',
'        N002 MONTO,',
'        C002 VOLUMEN,        ',
'        C003 PARADA,',
'        C004 CAMION,',
'        (select descripcion ',
'  from rp_vehiculos v',
' where cod_empresa = :p_cod_empresa',
'and cod_vehiculo= C004  ) DESC_CAMION,',
'        C006 CAPACIDAD,',
'        C007 FILL_RATE,',
'        N001 NRO_PLANILLA,',
'        NULL REPARTO,',
'        NULL IMPRIMIR,',
'        NULL CONFIRMAR,',
'        NULL PLA_PEDIDO,',
'        NULL ELIMINAR',
'        ',
'',
'FROM APEX_COLLECTIONS',
'WHERE COLLECTION_NAME = ''RESUMEN''',
'AND :P398_INDICADOR_REPORTE_RESUMEN = 1;',
'',
'                  '))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P398_INDICADOR_REPORTE_RESUMEN'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Resumen'
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
 p_id=>wwv_flow_imp.id(119770929373483243)
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
,p_internal_uid=>119770929373483243
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(119771223663483246)
,p_db_column_name=>'MONTO'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Monto'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(119771348170483247)
,p_db_column_name=>'VOLUMEN'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Volumen'
,p_column_type=>'STRING'
,p_format_mask=>'999G999G999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(119771468988483248)
,p_db_column_name=>'PARADA'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Parada'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(119771538253483249)
,p_db_column_name=>'CAMION'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Camion'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(119771633653483250)
,p_db_column_name=>'DESC_CAMION'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Desc Camion'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(121620333823550601)
,p_db_column_name=>'CAPACIDAD'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Capacidad'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(121620451489550602)
,p_db_column_name=>'FILL_RATE'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Fill Rate'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(121620581353550603)
,p_db_column_name=>'NRO_PLANILLA'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Nro Planilla'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(121622330729550621)
,p_db_column_name=>'REPARTO'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Reparto'
,p_column_link=>'javascript:$s(''P398_SEQ_ID_RESUMEN_REPARTO'',''#SEQ_ID_REPARTO#'');'
,p_column_linktext=>'<span class="fa fa-truck" aria-hidden="true"></span>'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(121622421600550622)
,p_db_column_name=>'IMPRIMIR'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Imprimir'
,p_column_link=>'javascript:$s(''P398_SEQ_ID_RESUMEN_IMPRIMIR'',''#SEQ_ID_REPARTO#'');'
,p_column_linktext=>'<span aria-hidden="true" class="fa fa-print"></span>'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(121622577968550623)
,p_db_column_name=>'CONFIRMAR'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Confirmar'
,p_column_link=>'javascript:$s(''P398_SEQ_ID_RESUMEN_CONFIRMAR'',''#SEQ_ID_REPARTO#'');'
,p_column_linktext=>'<span aria-hidden="true" class="fa fa-check-circle"></span>'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(121622684398550624)
,p_db_column_name=>'PLA_PEDIDO'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Pla Pedido'
,p_column_link=>'javascript:$s(''P398_SEQ_ID_RESUMEN_PLA_PEDIDO'',''#SEQ_ID_REPARTO#'');'
,p_column_linktext=>'<span aria-hidden="true" class="fa fa-archive"></span>'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(121622750062550625)
,p_db_column_name=>'ELIMINAR'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>'Eliminar'
,p_column_link=>'javascript:$s(''P398_SEQ_ID_RESUMEN_ELIMINAR'',''#SEQ_ID_REPARTO#'');'
,p_column_linktext=>'<span class="fa fa-trash" aria-hidden="true"></span>'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(121622866437550626)
,p_db_column_name=>'SEQ_ID_REPARTO'
,p_display_order=>150
,p_column_identifier=>'O'
,p_column_label=>'Seq Id Reparto'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(121622941445550627)
,p_db_column_name=>'RUTA_ASIGNADA'
,p_display_order=>160
,p_column_identifier=>'P'
,p_column_label=>'Ruta Asignada'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(121648200204033227)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1216483'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'RUTA_ASIGNADA:MONTO:VOLUMEN:PARADA:CAMION:DESC_CAMION:CAPACIDAD:FILL_RATE:NRO_PLANILLA:REPARTO:IMPRIMIR:CONFIRMAR:PLA_PEDIDO:ELIMINAR:'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(117611660083947317)
,p_plug_name=>'Ruteo'
,p_region_name=>'ruteo'
,p_parent_plug_id=>wwv_flow_imp.id(117611450062947315)
,p_region_template_options=>'#DEFAULT#:t-Region--accent1:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(118409727680727502)
,p_plug_name=>'B_VARIABLES'
,p_parent_plug_id=>wwv_flow_imp.id(117611660083947317)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(118410021696727505)
,p_plug_name=>'IZQ'
,p_parent_plug_id=>wwv_flow_imp.id(118409727680727502)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>20
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(118410250776727507)
,p_plug_name=>'DER'
,p_parent_plug_id=>wwv_flow_imp.id(118409727680727502)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>40
,p_plug_new_grid_row=>false
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(118411751881727522)
,p_plug_name=>'BTN'
,p_parent_plug_id=>wwv_flow_imp.id(118410250776727507)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40097820288263654)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(118411515189727520)
,p_plug_name=>'BTN'
,p_parent_plug_id=>wwv_flow_imp.id(118409727680727502)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40097820288263654)
,p_plug_display_sequence=>50
,p_plug_grid_column_span=>3
,p_plug_display_column=>6
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(118409898745727503)
,p_plug_name=>'B_PARAMETRO'
,p_parent_plug_id=>wwv_flow_imp.id(117611660083947317)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT SEQ_ID SEQ_ID_PEDIDO_RUTEO,       ',
'       C001 TIEMPO_PEDIDO,',
'       C002 COMPROBANTE,',
'       C013 RUTA_ENTREGA_ASIGNADA,',
'       C003 VOLUMEN,',
'       C004 PESO_KG,',
'       C005 DEPARTAMENTO,',
'       C006 CIUDAD,',
'       C007 BARRIO,',
'       C008 COD_CLIENTE,',
'       N001 IMPORTE,',
'       D001 FECHA_ENTREGA,',
'       C009 SITUACION,',
'       C010 PEDIDOS_PENDIENTES, ',
'       C015 PLANILLA,      ',
'       NULL DETALLES,',
'       APEX_ITEM.CHECKBOX (p_idx  => 1 ,',
'                           p_value       => seq_id,',
'                           p_attributes  => (case C011',
'                                             when ''S'' ',
'                                             then ''checked ''',
'                                             else null',
'                                             end ) ||''onclick="seleccionar(this, ''''PEDIDOS_RUTEO'''', ''||C015||'')"'') as INCLUIDO,',
'       NULL PED',
'       ',
'FROM APEX_COLLECTIONS',
'WHERE COLLECTION_NAME = ''PEDIDOS_RUTEO''',
'AND :P398_INDICADOR_REPORTE_PED_RUT = ''1''',
'AND C002 NOT IN (SELECT C002',
'                   FROM APEX_COLLECTIONS',
'                   WHERE COLLECTION_NAME = ''PEDIDOS_SELEC'')',
'',
'UNION ALL',
'       SELECT SEQ_ID SEQ_ID_PEDIDO_RUTEO,       ',
'       C001 TIEMPO_PEDIDO,',
'       C002 COMPROBANTE,',
'       C013 RUTA_ENTREGA_ASIGNADA,',
'       C003 VOLUMEN,',
'       C004 PESO_KG,',
'       C005 DEPARTAMENTO,',
'       C006 CIUDAD,',
'       C007 BARRIO,',
'       C008 COD_CLIENTE,',
'       N001 IMPORTE,',
'       D001 FECHA_ENTREGA,',
'       C009 SITUACION,',
'       C010 PEDIDOS_PENDIENTES,',
'       C015 PLANILLA,',
'       NULL DETALLES,',
'       APEX_ITEM.CHECKBOX (p_idx  => 1 ,',
'                           p_value       => seq_id,',
'                           p_attributes  => (case C011',
'                                             when ''S'' ',
'                                             then ''checked ''',
'                                             else null',
'                                             end ) ||''onclick="seleccionar(this, ''''PEDIDOS_SELEC'''', ''||C015||'')"'') as INCLUIDO, ',
'       NULL PED',
'',
'FROM APEX_COLLECTIONS',
'WHERE COLLECTION_NAME = ''PEDIDOS_SELEC''',
'AND :P398_INDICADOR_REPORTE_PED_RUT = ''1'';'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P398_INDICADOR_REPORTE_PED_RUT'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'B_PARAMETRO'
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
 p_id=>wwv_flow_imp.id(118413127292727536)
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
,p_internal_uid=>118413127292727536
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(118413430836727539)
,p_db_column_name=>'SEQ_ID_PEDIDO_RUTEO'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Seq Id Pedido Ruteo'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(118413516423727540)
,p_db_column_name=>'TIEMPO_PEDIDO'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Tiempo Pedido'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(118413607902727541)
,p_db_column_name=>'COMPROBANTE'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Comprobante'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(118413716359727542)
,p_db_column_name=>'VOLUMEN'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Volumen'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(118413862713727543)
,p_db_column_name=>'PESO_KG'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Peso Kg'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(118413975024727544)
,p_db_column_name=>'DEPARTAMENTO'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Departamento'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(118414092412727545)
,p_db_column_name=>'CIUDAD'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Ciudad'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(118414183671727546)
,p_db_column_name=>'BARRIO'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Barrio'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(118414225756727547)
,p_db_column_name=>'COD_CLIENTE'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Cod Cliente'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(118414391049727548)
,p_db_column_name=>'IMPORTE'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Importe'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(118414468827727549)
,p_db_column_name=>'FECHA_ENTREGA'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Fecha Entrega'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(118414594560727550)
,p_db_column_name=>'SITUACION'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Situacion'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(118503423893355201)
,p_db_column_name=>'PEDIDOS_PENDIENTES'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Pedidos Pendientes'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(118507782499355244)
,p_db_column_name=>'DETALLES'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>'Detalles'
,p_column_link=>'javascript:$s(''P398_SEQ_ID_PEDIDO_RUTEO_DET'',''#SEQ_ID_PEDIDO_RUTEO#'');'
,p_column_linktext=>'<span class="fa fa-search" aria-hidden="true"></span>'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(119118186933300219)
,p_db_column_name=>'PED'
,p_display_order=>160
,p_column_identifier=>'P'
,p_column_label=>'Ped'
,p_column_link=>'javascript:$s(''P398_SEQ_ID_PED_RUTEO_RPPLARET'',''#SEQ_ID_PEDIDO_RUTEO#'');'
,p_column_linktext=>'<span class="fa fa-file-o" aria-hidden="true"></span>'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(119768939659483223)
,p_db_column_name=>'RUTA_ENTREGA_ASIGNADA'
,p_display_order=>170
,p_column_identifier=>'Q'
,p_column_label=>'Ruta Entrega Asignada'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(119769082271483224)
,p_db_column_name=>'INCLUIDO'
,p_display_order=>180
,p_column_identifier=>'R'
,p_column_label=>'Incluido'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(120942886882636433)
,p_db_column_name=>'PLANILLA'
,p_display_order=>190
,p_column_identifier=>'S'
,p_column_label=>'Planilla'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(118515665001358648)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1185157'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'INCLUIDO:TIEMPO_PEDIDO:COMPROBANTE:RUTA_ENTREGA_ASIGNADA:VOLUMEN:PESO_KG:DEPARTAMENTO:CIUDAD:BARRIO:COD_CLIENTE:IMPORTE:FECHA_ENTREGA:SITUACION:PEDIDOS_PENDIENTES:DETALLES:PED:'
);
wwv_flow_imp_page.create_worksheet_condition(
 p_id=>wwv_flow_imp.id(191060551875721165)
,p_report_id=>wwv_flow_imp.id(118515665001358648)
,p_name=>'FACT PARCIAL'
,p_condition_type=>'HIGHLIGHT'
,p_allow_delete=>'Y'
,p_column_name=>'SITUACION'
,p_operator=>'='
,p_expr=>'FACT PARCIAL'
,p_condition_sql=>' (case when ("SITUACION" = #APXWS_EXPR#) then #APXWS_HL_ID# end) '
,p_condition_display=>'#APXWS_COL_NAME# = ''FACT PARCIAL''  '
,p_enabled=>'Y'
,p_highlight_sequence=>10
,p_row_bg_color=>'#ffffff'
,p_row_font_color=>'#e4032c'
);
wwv_flow_imp_page.create_worksheet_condition(
 p_id=>wwv_flow_imp.id(191060966740721164)
,p_report_id=>wwv_flow_imp.id(118515665001358648)
,p_name=>'SIN STOCK'
,p_condition_type=>'HIGHLIGHT'
,p_allow_delete=>'Y'
,p_column_name=>'SITUACION'
,p_operator=>'='
,p_expr=>'SIN STOCK'
,p_condition_sql=>' (case when ("SITUACION" = #APXWS_EXPR#) then #APXWS_HL_ID# end) '
,p_condition_display=>'#APXWS_COL_NAME# = ''SIN STOCK''  '
,p_enabled=>'Y'
,p_highlight_sequence=>10
,p_row_bg_color=>'#ffffff'
,p_row_font_color=>'#e4032c'
);
wwv_flow_imp_page.create_worksheet_condition(
 p_id=>wwv_flow_imp.id(191061383471721164)
,p_report_id=>wwv_flow_imp.id(118515665001358648)
,p_name=>'STOCK COMPLETO'
,p_condition_type=>'HIGHLIGHT'
,p_allow_delete=>'Y'
,p_column_name=>'SITUACION'
,p_operator=>'='
,p_expr=>'STOCK COMPLETO'
,p_condition_sql=>' (case when ("SITUACION" = #APXWS_EXPR#) then #APXWS_HL_ID# end) '
,p_condition_display=>'#APXWS_COL_NAME# = ''STOCK COMPLETO''  '
,p_enabled=>'Y'
,p_highlight_sequence=>10
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(118503530062355202)
,p_plug_name=>'B_PARAMETRO_DETALLE'
,p_parent_plug_id=>wwv_flow_imp.id(117611660083947317)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>30
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(118505259166355219)
,p_plug_name=>'IZQ'
,p_parent_plug_id=>wwv_flow_imp.id(118503530062355202)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(118505761387355224)
,p_plug_name=>'MEDIO'
,p_parent_plug_id=>wwv_flow_imp.id(118503530062355202)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40097820288263654)
,p_plug_display_sequence=>20
,p_plug_new_grid_row=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(118505852482355225)
,p_plug_name=>'DERECHA'
,p_parent_plug_id=>wwv_flow_imp.id(118503530062355202)
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
 p_id=>wwv_flow_imp.id(117611721444947318)
,p_plug_name=>'Planillas'
,p_parent_plug_id=>wwv_flow_imp.id(117611450062947315)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>40
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(118961668163144043)
,p_plug_name=>'Resumen de Planillas'
,p_parent_plug_id=>wwv_flow_imp.id(117611721444947318)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT D001 FEC_PLANILLA,',
'       N001 volumen,',
'       N002 CANTIDAD_PEDIDOS,',
'       N003 NRO_PLANILLA,',
'       C001 DESCRIPCION,',
'       N004 TOTAL,',
'       N005 capacidad,',
'       C002 PORTON,',
'       C003 HORA_ALTA,',
'       C004 TIPO_ENTREGA,',
'       C005 hora_factura,',
'       C006 fill_rate',
'',
'FROM APEX_COLLECTIONS',
'WHERE COLLECTION_NAME = ''PLANILLAS_RPRUTPED''',
'AND :P398_INDICADOR_REPORTE_RES_PLA = ''1''; '))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P398_INDICADOR_REPORTE_RES_PLA'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Resumen de Planillas'
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
,p_plug_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<style>',
'.estilo {',
'  height: 20em;',
'  line-height: 1em;',
'  overflow-x: hidden;',
'  overflow-y: scroll;',
'  width: 100%;',
'}',
'</style>',
'',
'<div class="container-fluid row">',
'  <div id="reporte" name="reporte" class="estilo">'))
,p_plug_footer=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</div>',
'</div>'))
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(118962179987144048)
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
,p_internal_uid=>118962179987144048
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(118962201171144049)
,p_db_column_name=>'FEC_PLANILLA'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Fecha'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(118962350794144050)
,p_db_column_name=>'VOLUMEN'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Volumen'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(119014612701594201)
,p_db_column_name=>'CANTIDAD_PEDIDOS'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Cantidad Pedidos'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(119014743628594202)
,p_db_column_name=>'NRO_PLANILLA'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Planilla'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(119014862795594203)
,p_db_column_name=>'DESCRIPCION'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>unistr('Cami\00F3n')
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(119014959649594204)
,p_db_column_name=>'TOTAL'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Monto'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(119015048244594205)
,p_db_column_name=>'CAPACIDAD'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Capacidad'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(119015175300594206)
,p_db_column_name=>'PORTON'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Porton'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
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
 p_id=>wwv_flow_imp.id(119015239550594207)
,p_db_column_name=>'HORA_ALTA'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Hora'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(119015384597594208)
,p_db_column_name=>'TIPO_ENTREGA'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Tipo Entrega'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(119015407007594209)
,p_db_column_name=>'HORA_FACTURA'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Hora Factura'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(119015525547594210)
,p_db_column_name=>'FILL_RATE'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Fill Rate'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(119024253976596069)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1190243'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>100000
,p_report_columns=>'FEC_PLANILLA:HORA_ALTA:NRO_PLANILLA:TOTAL:VOLUMEN:CANTIDAD_PEDIDOS:DESCRIPCION:CAPACIDAD:FILL_RATE:PORTON:TIPO_ENTREGA:HORA_FACTURA:'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(117611858190947319)
,p_plug_name=>'Orden de Servicio'
,p_parent_plug_id=>wwv_flow_imp.id(117611450062947315)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>50
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(118957556919144002)
,p_plug_name=>'Detalles Ordenes de Servicio'
,p_parent_plug_id=>wwv_flow_imp.id(117611858190947319)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT  SEQ_ID SEQ_ID_ORDEN_SERVICIO,',
'        N001 NRO_SOLICITUD,',
'        C001 v_desc_m3_vehiculo,',
'        D001 FECHA_REQ,',
'        D002 HORA_REQ,',
'        C002 NOM_SOLICITANTE,',
'        C003 MOTIVO_SOLICITANTE,',
'        C004 ZONA,',
'        C005 COD_VEHICULO,',
'        C006 DESC_VEHICULO,',
'        C007 COD_REPARTIDOR,',
'        C008 NOM_REPARTIDOR,',
'        c020 ROW_ID,',
'        NULL GENERAR,',
'        NULL IMPRIMIR',
'',
'FROM APEX_COLLECTIONS',
'WHERE COLLECTION_NAME = ''ORDER_SERVICIO''',
'AND :P398_INDICADOR_REPORTE_ORD_SER = ''1'';'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P398_INDICADOR_REPORTE_ORD_SER'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Detalles Ordenes de Servicio'
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
 p_id=>wwv_flow_imp.id(118957826149144005)
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
,p_internal_uid=>118957826149144005
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(118957983099144006)
,p_db_column_name=>'SEQ_ID_ORDEN_SERVICIO'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Seq Id Orden Servicio'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(118958088441144007)
,p_db_column_name=>'NRO_SOLICITUD'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Nro Solicitud'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(118958195788144008)
,p_db_column_name=>'V_DESC_M3_VEHICULO'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'V Desc M3 Vehiculo'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(118958252390144009)
,p_db_column_name=>'FECHA_REQ'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Fecha Req'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(118958327016144010)
,p_db_column_name=>'HORA_REQ'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Hora Req'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(118958428972144011)
,p_db_column_name=>'NOM_SOLICITANTE'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Nom Solicitante'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(118958503535144012)
,p_db_column_name=>'MOTIVO_SOLICITANTE'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Motivo Solicitante'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(118958677281144013)
,p_db_column_name=>'ZONA'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Zona'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(119016144230594216)
,p_db_column_name=>'COD_VEHICULO'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Cod Vehiculo'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(119016207142594217)
,p_db_column_name=>'DESC_VEHICULO'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Desc Vehiculo'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(119016309929594218)
,p_db_column_name=>'COD_REPARTIDOR'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Cod Repartidor'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(119016451941594219)
,p_db_column_name=>'NOM_REPARTIDOR'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Nom Repartidor'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(119016551947594220)
,p_db_column_name=>'GENERAR'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Generar'
,p_column_link=>'javascript:$s(''P398_SEQ_ID_ORDEN_SERVICIO_GEN'',''#SEQ_ID_ORDEN_SERVICIO#'');'
,p_column_linktext=>'<span class="fa fa-database-edit" aria-hidden="true"></span>'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(119016657324594221)
,p_db_column_name=>'IMPRIMIR'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>'Imprimir'
,p_column_link=>'javascript:$s(''P398_SEQ_ID_ORDEN_SERVICIO_IMP'',''#SEQ_ID_ORDEN_SERVICIO#'');'
,p_column_linktext=>'<span aria-hidden="true" class="fa fa-print"></span>'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(119016742625594222)
,p_db_column_name=>'ROW_ID'
,p_display_order=>150
,p_column_identifier=>'O'
,p_column_label=>'Row Id'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(118983224112259264)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1189833'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'NRO_SOLICITUD:V_DESC_M3_VEHICULO:FECHA_REQ:HORA_REQ:NOM_SOLICITANTE:MOTIVO_SOLICITANTE:ZONA:COD_VEHICULO:DESC_VEHICULO:COD_REPARTIDOR:NOM_REPARTIDOR:GENERAR:IMPRIMIR:'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(119017336945594228)
,p_plug_name=>unistr('EDITAR CHOFER/VEH\00CDCULO')
,p_parent_plug_id=>wwv_flow_imp.id(117611858190947319)
,p_region_template_options=>'#DEFAULT#:js-dialog-size600x400'
,p_plug_template=>wwv_flow_imp.id(40117728043263659)
,p_plug_display_sequence=>40
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(117612025349947321)
,p_plug_name=>'VARIABLES'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>1030
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(117614916265947350)
,p_plug_name=>'PARAMETROS'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>990
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(118413258445727537)
,p_plug_name=>'INDICADORES'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>1000
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(118507329465355240)
,p_plug_name=>'SEQ_ID'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>1020
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(121621327914550611)
,p_plug_name=>'VARIABLES_ENVIAR'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>1010
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(118411693766727521)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(118411515189727520)
,p_button_name=>'BTN_BUSCAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Buscar'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'u-color-21-text'
,p_icon_css_classes=>'fa-search'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(118506027300355227)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(118505761387355224)
,p_button_name=>'BTN_CAM_ESTADO'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Todos'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'u-color-21-text'
,p_icon_css_classes=>'fa-check-square'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(118505979488355226)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(118505761387355224)
,p_button_name=>'BTN_DELIVERY'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Delivery'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'u-color-21-text'
,p_icon_css_classes=>'fa-truck'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(188213826363298036)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(118411751881727522)
,p_button_name=>'btn_limpiar'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Limpiar'
,p_button_position=>'BOTTOM'
,p_button_css_classes=>'u-color-9-bg'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(118411831701727523)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(118411751881727522)
,p_button_name=>'BTN_FACTURACION_MASIVA'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('Facturaci\00F3n Masiva')
,p_button_position=>'BOTTOM'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'u-color-21-text'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(118411955433727524)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(118411751881727522)
,p_button_name=>'BTN_FACTURAS'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Panel de Facturas'
,p_button_position=>'BOTTOM'
,p_button_css_classes=>'u-color-21-text'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(119018841160594243)
,p_button_sequence=>120
,p_button_plug_id=>wwv_flow_imp.id(119017336945594228)
,p_button_name=>'BTN_CERRAR_CHOF_VEH'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_image_alt=>'Cerrar'
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(119018548249594240)
,p_button_sequence=>120
,p_button_plug_id=>wwv_flow_imp.id(119017336945594228)
,p_button_name=>'BTN_ACEPTAR_CHOF_VEH'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Aceptar'
,p_button_position=>'CREATE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(118960956609144036)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(117611858190947319)
,p_button_name=>'BTN_BOTON_ACTUALIZAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Buscar'
,p_button_position=>'TOP'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'u-color-4-bg'
,p_icon_css_classes=>'fa-search'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(118961513420144042)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(117611721444947318)
,p_button_name=>'BTN_BOTON_RESUMEN_PLANILLA'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Buscar'
,p_button_position=>'TOP'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'u-color-4-bg'
,p_icon_css_classes=>'fa-search'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(117612169016947322)
,p_name=>'P398_SUCURSAL_PLANILLA_PEDIDOS'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(117612025349947321)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(117612200432947323)
,p_name=>'P398_COD_MODULO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(117612025349947321)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(117612363825947324)
,p_name=>'P398_COD_USUARIO'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(117612025349947321)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(117612466961947325)
,p_name=>'P398_ID_RUTEO'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(117612025349947321)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(117612561435947326)
,p_name=>'P398_ORIGEN_ENTREGA'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(118410021696727505)
,p_prompt=>'Deposito Origen'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_ORIGEN_ENTREGA_RPRUTPED'
,p_lov=>'.'||wwv_flow_imp.id(118435231642175352)||'.'
,p_lov_display_null=>'YES'
,p_lov_null_text=>'TODOS'
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
 p_id=>wwv_flow_imp.id(117612650846947327)
,p_name=>'P398_TODOS'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(117612025349947321)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(117612746799947328)
,p_name=>'P398_IND_TRANSPORTADORA'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(118410021696727505)
,p_prompt=>'Por Transportadora'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#:margin-top-md'
,p_attribute_01=>'N'
,p_attribute_02=>'S'
,p_attribute_03=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(117612828386947329)
,p_name=>'P398_VER_SOLO_CPH'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(117612025349947321)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(117612949108947330)
,p_name=>'P398_PLAN'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(117612025349947321)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(117613047288947331)
,p_name=>'P398_COD_FORMA'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(117612025349947321)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(117613264463947333)
,p_name=>'P398_EMPRESA_ORIGEN'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(118410021696727505)
,p_prompt=>'Empresa Origen'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_EMPRESA_ORIGEN_RPRUTPED'
,p_lov=>'.'||wwv_flow_imp.id(118437819905181516)||'.'
,p_lov_display_null=>'YES'
,p_lov_null_text=>'TODOS'
,p_cSize=>30
,p_begin_on_new_line=>'N'
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
 p_id=>wwv_flow_imp.id(117613315532947334)
,p_name=>'P398_ZONA_ENTREGA'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(118410250776727507)
,p_prompt=>'Zona Entrega'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:CAPITAL;CAPITAL,INTERIOR;INTERIOR,CLIENTE RETIRA;CLIENTE RETIRA,PROVEEDOR;PROVEEDOR,TODOS;TODOS'
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(117613663762947337)
,p_name=>'P398_INCLUIDO'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(117612025349947321)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(117613799986947338)
,p_name=>'P398_DELIVERY'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(117612025349947321)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(117613868865947339)
,p_name=>'P398_CAM_ESTADO'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(117612025349947321)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(117614089063947341)
,p_name=>'P398_IND_GUARDA'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(118410021696727505)
,p_prompt=>'Guarda'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'S'
,p_attribute_03=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(117614195135947342)
,p_name=>'P398_IND_CLIENTE_FINAL'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(118410021696727505)
,p_prompt=>'Cliente Final'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'S'
,p_attribute_03=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(117614290877947343)
,p_name=>'P398_ECOMMERCE'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(118410021696727505)
,p_prompt=>'Venta Ecommerce'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'S'
,p_attribute_03=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(117614351417947344)
,p_name=>'P398_CONDICION'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(118410250776727507)
,p_prompt=>unistr('Condici\00F3n')
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>'STATIC:GARANTIA;GARANTIA,PARTICULAR;PARTICULAR'
,p_lov_display_null=>'YES'
,p_lov_null_text=>'TODOS'
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
 p_id=>wwv_flow_imp.id(117614449841947345)
,p_name=>'P398_IND_REQUIERE_CONFIRMACION'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(118410021696727505)
,p_prompt=>unistr('Requiere Confirmaci\00F3n')
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'S'
,p_attribute_03=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(117614592424947346)
,p_name=>'P398_IND_TIPO_PEDIDO'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(118410250776727507)
,p_prompt=>'Tipo'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>'STATIC:PEDIDO PRODUCTOS;PE,REPUESTOS;RE,TODOS;T'
,p_lov_display_null=>'YES'
,p_lov_null_text=>'TODOS'
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
 p_id=>wwv_flow_imp.id(117614623213947347)
,p_name=>'P398_ESTADO_DISTRIBUCION'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(118410021696727505)
,p_prompt=>unistr('Estado Distribuci\00F3n')
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_ESTADO_DISTRIBUCION_RPRUTPED'
,p_lov=>'.'||wwv_flow_imp.id(118422946123024905)||'.'
,p_lov_display_null=>'YES'
,p_lov_null_text=>'TODOS'
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
 p_id=>wwv_flow_imp.id(117614785188947348)
,p_name=>'P398_NOMBRE'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(118410250776727507)
,p_prompt=>'Nombre Cliente'
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
 p_id=>wwv_flow_imp.id(117614830945947349)
,p_name=>'P398_CLIENTE'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(118410250776727507)
,p_prompt=>'Cod. Cliente'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select c.cod_cliente',
'--ltrim(rtrim(nvl(p.nombre, p.nomb_fantasia)))nom, ',
'from cc_clientes c, personas p',
'where c.cod_empresa = :P_COD_EMPRESA',
'and c.cod_persona = p.cod_persona		',
'AND p.nombre NOT LIKE ''%NO USAR%''',
'AND NVL(C.ESTADO,''A'')=''A''	'))
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
 p_id=>wwv_flow_imp.id(118409641675727501)
,p_name=>'P398_P_COD_CLIENTE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(117614916265947350)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(118410541830727510)
,p_name=>'P398_FECHA_INI'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(118410021696727505)
,p_prompt=>'Fecha Desde'
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
 p_id=>wwv_flow_imp.id(118410651195727511)
,p_name=>'P398_FECHA_FIN'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(118410021696727505)
,p_prompt=>'Fecha Hasta'
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
 p_id=>wwv_flow_imp.id(118410760678727512)
,p_name=>'P398_TIEMPO_DESDE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(118410021696727505)
,p_prompt=>'Tiempo Desde'
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
 p_id=>wwv_flow_imp.id(118410873292727513)
,p_name=>'P398_TIEMPO_HASTA'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(118410021696727505)
,p_prompt=>'Tiempo Hasta'
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
 p_id=>wwv_flow_imp.id(118411084520727515)
,p_name=>'P398_SITUACION'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(118410021696727505)
,p_prompt=>unistr('Situaci\00F3n')
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_SITUACION_RPRUTPED'
,p_lov=>'.'||wwv_flow_imp.id(118439689158194803)||'.'
,p_lov_display_null=>'YES'
,p_lov_null_text=>'TODOS'
,p_cSize=>30
,p_begin_on_new_line=>'N'
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
 p_id=>wwv_flow_imp.id(118412254938727527)
,p_name=>'P398_URL'
,p_item_sequence=>250
,p_item_plug_id=>wwv_flow_imp.id(117612025349947321)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(118412476862727529)
,p_name=>'P398_DEPARTAMENTO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(118410250776727507)
,p_prompt=>'Departamento'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov_language=>'PLSQL'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    VZONA varchar2(600);',
'BEGIN',
'',
'	if  :P398_ZONA_ENTREGA =''INTERIOR'' THEN',
'  		VZONA:=''IN'';',
'        RETURN ''SELECT DISTINCT(pro.DESCRIPCION) D, pro.COD_PROVINCIA R',
'        FROM provinCIas pro, ciudades ci',
'        where pro.cod_pais = ''''PAR''''',
'        and pro.cod_pais = ci.cod_pais',
'        and pro.cod_provincia = ci.cod_provincia',
'        and ci.zona_entrega = ''''IN'''''';  ',
'  	ELSif  :P398_ZONA_ENTREGA=''CAPITAL'' THEN',
'  		VZONA := ''CA'';',
'        RETURN ''SELECT DISTINCT(pro.DESCRIPCION) D, pro.COD_PROVINCIA R',
'        FROM provinCIas pro, ciudades ci',
'        where pro.cod_pais = ''''PAR''''',
'        and pro.cod_pais = ci.cod_pais',
'        and pro.cod_provincia = ci.cod_provincia',
'        and ci.zona_entrega = ''''CA'''''';    ',
'  	ELSif  :P398_ZONA_ENTREGA = ''CLIENTE RETIRA'' THEN',
'  		VZONA:=''CR'';',
'        RETURN ''SELECT DISTINCT(pro.DESCRIPCION) D, pro.COD_PROVINCIA R',
'        FROM provinCIas pro, ciudades ci',
'        where pro.cod_pais = ''''PAR''''',
'        and pro.cod_pais = ci.cod_pais',
'        and pro.cod_provincia = ci.cod_provincia',
'        and ci.zona_entrega = ''''CR'''''';  ',
'    else',
'        RETURN ''SELECT DISTINCT(pro.DESCRIPCION) D, pro.COD_PROVINCIA R',
'            FROM provinCIas pro, ciudades ci',
'            where pro.cod_pais = ''''PAR''''',
'            and pro.cod_pais = ci.cod_pais',
'            and pro.cod_provincia = ci.cod_provincia'';',
'  	END IF;    ',
'    ',
'',
'exception',
'    when others then',
'        return '' '';          ',
'END;'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'TODOS'
,p_lov_null_value=>'T'
,p_lov_cascade_parent_items=>'P398_ZONA_ENTREGA'
,p_ajax_items_to_submit=>'P398_ZONA_ENTREGA'
,p_ajax_optimize_refresh=>'N'
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
 p_id=>wwv_flow_imp.id(118412505028727530)
,p_name=>'P398_CIUDAD'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(118410250776727507)
,p_prompt=>'Ciudad'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov_language=>'PLSQL'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    VZONA varchar2(600);',
'BEGIN',
'',
'	if  :P398_ZONA_ENTREGA =''INTERIOR'' THEN',
'  		VZONA:=''IN'';',
'        RETURN ''SELECT DISTINCT (DESCRIPCION) D, COD_CIUDAD R',
'                FROM CIUDADES',
'                where cod_pais = ''''PAR''''',
'                AND COD_PROVINCIA = ''''''||:P398_DEPARTAMENTO||''''''',
'                and zona_entrega = ''''IN'''''';',
'',
'  	ELSif  :P398_ZONA_ENTREGA=''CAPITAL'' THEN',
'  		VZONA := ''CA'';',
'        RETURN ''SELECT DISTINCT (DESCRIPCION) D, COD_CIUDAD R',
'                FROM CIUDADES',
'                where cod_pais = ''''PAR''''',
'                AND COD_PROVINCIA= ''''''||:P398_DEPARTAMENTO||''''''',
'                and zona_entrega= ''''CA'''''';',
'                  ',
'  	ELSif  :P398_ZONA_ENTREGA = ''CLIENTE RETIRA'' THEN',
'  		VZONA:=''CR'';',
'        RETURN ''SELECT DISTINCT (DESCRIPCION) D, COD_CIUDAD R',
'                FROM CIUDADES',
'                where cod_pais = ''''PAR''''',
'                AND COD_PROVINCIA= ''''''||:P398_DEPARTAMENTO||''''''',
'                and zona_entrega= ''''CR''''''; ',
'    else',
'        RETURN ''SELECT DISTINCT (DESCRIPCION) D, COD_CIUDAD R',
'                FROM CIUDADES',
'                where cod_pais = ''''PAR''''',
'                AND COD_PROVINCIA= ''''''||:P398_DEPARTAMENTO||'''''''';',
'  	END IF;    ',
'    ',
'',
'exception',
'    when others then',
'        return '' '';          ',
'END;'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'TODOS'
,p_lov_null_value=>'T'
,p_lov_cascade_parent_items=>'P398_DEPARTAMENTO'
,p_ajax_items_to_submit=>'P398_DEPARTAMENTO'
,p_ajax_optimize_refresh=>'Y'
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
 p_id=>wwv_flow_imp.id(118412699892727531)
,p_name=>'P398_RUTA_ASIGNADA'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(118410250776727507)
,p_prompt=>'Ruta'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov_language=>'PLSQL'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'	if  :P398_ZONA_ENTREGA =''INTERIOR'' THEN',
'        RETURN ''SELECT DISTINCT (cod_ruta_actual) D, r.cod_ruta_actual R',
'                FROM CIUDADES c, rp_CIUDADES_ruteo r',
'                WHERE c.cod_pais = ''''PAR''''',
'                 AND (c.COD_PROVINCIA = DECODE(''''''||:P398_DEPARTAMENTO||'''''',''''T'''',c.COD_PROVINCIA,''''''||:P398_DEPARTAMENTO||'''''') ',
'                  OR ''''''||:P398_DEPARTAMENTO||'''''' IS NULL) ',
'                 AND c.zona_entrega = ''''IN''''',
'                 AND c.cod_provincia = r.cod_provincia',
'                 AND c.cod_ciudad = r.cod_ciudad',
'                 AND c.cod_pais = r.cod_pais'';',
'',
'  	ELSif  :P398_ZONA_ENTREGA=''CAPITAL'' THEN',
'        RETURN ''SELECT DISTINCT (cod_ruta_actual) D, r.cod_ruta_actual R',
'                FROM CIUDADES c, rp_CIUDADES_ruteo r',
'                WHERE c.cod_pais = ''''PAR''''',
'                 AND (c.COD_PROVINCIA = DECODE(''''''||:P398_DEPARTAMENTO||'''''',''''T'''',c.COD_PROVINCIA,''''''||:P398_DEPARTAMENTO||'''''') ',
'                  OR ''''''||:P398_DEPARTAMENTO||'''''' IS NULL) ',
'                 AND c.zona_entrega = ''''CA''''',
'                 AND c.cod_provincia = r.cod_provincia',
'                 AND c.cod_ciudad = r.cod_ciudad',
'                 AND c.cod_pais = r.cod_pais'';',
'                  ',
'  	ELSif  :P398_ZONA_ENTREGA = ''CLIENTE RETIRA'' THEN',
'        RETURN ''SELECT DISTINCT (cod_ruta_actual) D, r.cod_ruta_actual R',
'                FROM CIUDADES c, rp_CIUDADES_ruteo r',
'                WHERE c.cod_pais = ''''PAR''''',
'                 AND (c.COD_PROVINCIA = DECODE(''''''||:P398_DEPARTAMENTO||'''''',''''T'''',c.COD_PROVINCIA,''''''||:P398_DEPARTAMENTO||'''''') ',
'                  OR ''''''||:P398_DEPARTAMENTO||'''''' IS NULL) ',
'                 AND c.zona_entrega = ''''CR''''',
'                 AND c.cod_provincia = r.cod_provincia',
'                 AND c.cod_ciudad = r.cod_ciudad',
'                 AND c.cod_pais = r.cod_pais'';',
'    else',
'        RETURN ''SELECT DISTINCT (cod_ruta_actual) D, r.cod_ruta_actual R',
'                FROM CIUDADES c, rp_CIUDADES_ruteo r',
'                WHERE c.cod_pais = ''''PAR''''',
'                 AND (c.COD_PROVINCIA = DECODE(''''''||:P398_DEPARTAMENTO||'''''',''''T'''',c.COD_PROVINCIA,''''''||:P398_DEPARTAMENTO||'''''') ',
'                  OR ''''''||:P398_DEPARTAMENTO||'''''' IS NULL)'';',
'  	END IF;   ',
'',
'',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;'))
,p_lov_display_null=>'YES'
,p_lov_cascade_parent_items=>'P398_DEPARTAMENTO'
,p_ajax_items_to_submit=>'P398_DEPARTAMENTO'
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
 p_id=>wwv_flow_imp.id(118412789541727532)
,p_name=>'P398_IND_SNC'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_imp.id(118410021696727505)
,p_prompt=>'Por SNC'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'S'
,p_attribute_03=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(118413367888727538)
,p_name=>'P398_INDICADOR_REPORTE_PED_RUT'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(118413258445727537)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(118505051156355217)
,p_name=>'P398_COD_CLIENTE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(118505259166355219)
,p_prompt=>'Cliente'
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
 p_id=>wwv_flow_imp.id(118505171793355218)
,p_name=>'P398_NOM_CLIENTE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(118505259166355219)
,p_prompt=>'Cod Cliente'
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
 p_id=>wwv_flow_imp.id(118505377663355220)
,p_name=>'P398_NOMBRE_SUCURSAL'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(118505259166355219)
,p_prompt=>'Sucursal'
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
 p_id=>wwv_flow_imp.id(118505496313355221)
,p_name=>'P398_DIRECCION_SUCURSAL'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(118505259166355219)
,p_prompt=>unistr('Direcci\00F3n')
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
 p_id=>wwv_flow_imp.id(118505538242355222)
,p_name=>'P398_SEGMENTO_CLIENTE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(118505259166355219)
,p_prompt=>unistr('Segmentaci\00F3n')
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
 p_id=>wwv_flow_imp.id(118505670517355223)
,p_name=>'P398_COMENTARIO'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(118505259166355219)
,p_prompt=>unistr('Observaci\00F3n')
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
 p_id=>wwv_flow_imp.id(118506237911355229)
,p_name=>'P398_NRO_PLANILLA_PED_CONFIR'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(118505852482355225)
,p_prompt=>'Plan Pedido Nro.'
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
 p_id=>wwv_flow_imp.id(118506344591355230)
,p_name=>'P398_NRO_PLANILLA_TRASLADO'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(118505852482355225)
,p_prompt=>'Planilla Traslado'
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
 p_id=>wwv_flow_imp.id(118506459114355231)
,p_name=>'P398_FECHA_PEDIDO'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(118505852482355225)
,p_prompt=>'Fecha Pedido'
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
 p_id=>wwv_flow_imp.id(118506593417355232)
,p_name=>'P398_FECHA_TRASLADO'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(118505852482355225)
,p_prompt=>'Fecha Traslado'
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
 p_id=>wwv_flow_imp.id(118506690195355233)
,p_name=>'P398_TIPO'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(118505852482355225)
,p_prompt=>'Tipo Entrega'
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
 p_id=>wwv_flow_imp.id(118506718378355234)
,p_name=>'P398_FECHA_HORA_PLAN_PED'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(118505852482355225)
,p_prompt=>'Fec/Hora'
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
 p_id=>wwv_flow_imp.id(118506855135355235)
,p_name=>'P398_CONDICION_PEDIDO'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(118505852482355225)
,p_prompt=>unistr('Condici\00F3n (Ped. Rep)')
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
 p_id=>wwv_flow_imp.id(118506904254355236)
,p_name=>'P398_ESTADO_DISTRIBUCION_PIE'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(118505852482355225)
,p_prompt=>'Est. Distrib.'
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
 p_id=>wwv_flow_imp.id(118507011848355237)
,p_name=>'P398_EMPRESA'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(118505852482355225)
,p_prompt=>'Empresa'
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
 p_id=>wwv_flow_imp.id(118507109519355238)
,p_name=>'P398_ORIGEN_ENTREGA_PIE'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(118505852482355225)
,p_prompt=>'Origen Ent.'
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
 p_id=>wwv_flow_imp.id(118507437902355241)
,p_name=>'P398_SEQ_ID_PEDIDO_RUTEO_DET'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(118507329465355240)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(118959172104144018)
,p_name=>'P398_INDICADOR_REPORTE_ORD_SER'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(118413258445727537)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(118961922510144046)
,p_name=>'P398_INDICADOR_REPORTE_RES_PLA'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(118413258445727537)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(119015956461594214)
,p_name=>'P398_MENSAJE_ALERT'
,p_item_sequence=>260
,p_item_plug_id=>wwv_flow_imp.id(117612025349947321)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(119016834175594223)
,p_name=>'P398_SEQ_ID_ORDEN_SERVICIO_GEN'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(118507329465355240)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(119016984700594224)
,p_name=>'P398_SEQ_ID_ORDEN_SERVICIO_IMP'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(118507329465355240)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(119017443288594229)
,p_name=>'P398_NRO_SOLICITUD_ED'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(119017336945594228)
,p_prompt=>'Nro Solicitud'
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
 p_id=>wwv_flow_imp.id(119017594521594230)
,p_name=>'P398_NOM_SOLICITANTE_ED'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(119017336945594228)
,p_prompt=>'Solicitante'
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
 p_id=>wwv_flow_imp.id(119017623367594231)
,p_name=>'P398_FECHA_REQ_ED'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(119017336945594228)
,p_prompt=>'Fecha Req'
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
 p_id=>wwv_flow_imp.id(119017755994594232)
,p_name=>'P398_COD_VEHICULO_ED'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(119017336945594228)
,p_prompt=>unistr('Cod. Veh\00EDculo')
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select cod_vehiculo',
'  from rp_vehiculos v',
' where cod_empresa = :P_COD_EMPRESA',
'and v.volumen>0',
'AND NVL(ACTIVO,''N'')=''S''',
'--and NVL(:B_resumen.VOLUMEN ,''0'')<=nvl(volumen,0)',
' order by descripcion'))
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
 p_id=>wwv_flow_imp.id(119017869253594233)
,p_name=>'P398_V_DESC_M3_VEHICULO_ED'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(119017336945594228)
,p_prompt=>unistr('M3 Veh\00EDculo')
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
 p_id=>wwv_flow_imp.id(119017937942594234)
,p_name=>'P398_HORA_REQ_ED'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(119017336945594228)
,p_prompt=>'Hora Req'
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
 p_id=>wwv_flow_imp.id(119018036736594235)
,p_name=>'P398_MOTIVO_SOLICITANTE_ED'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(119017336945594228)
,p_prompt=>'Motivo Solicitante'
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
 p_id=>wwv_flow_imp.id(119018129325594236)
,p_name=>'P398_COD_REPARTIDOR_ED'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(119017336945594228)
,p_prompt=>'Cod. Repartidor'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT r.cod_repartidor R--,',
'       --p.nombre',
'FROM RP_REPARTIDORES r,',
'     personas p',
'where r.cod_empresa = :P_COD_EMPRESA',
'and   r.cod_persona = p.cod_persona',
'and   r.activo=''S'''))
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
 p_id=>wwv_flow_imp.id(119018294281594237)
,p_name=>'P398_ZONA_ED'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(119017336945594228)
,p_prompt=>'Zona'
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
 p_id=>wwv_flow_imp.id(119018357204594238)
,p_name=>'P398_DESC_VEHICULO_ED'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(119017336945594228)
,p_prompt=>unistr('Descripci\00F3n')
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readOnly'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(119018472224594239)
,p_name=>'P398_NOM_REPARTIDOR_ED'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(119017336945594228)
,p_prompt=>'Nombre Repartidor'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readOnly'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(119117642108300214)
,p_name=>'P398_SEQ_ID_SELECCIONAR'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(118507329465355240)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(119117731364300215)
,p_name=>'P398_ACCION'
,p_item_sequence=>280
,p_item_plug_id=>wwv_flow_imp.id(117612025349947321)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(119118012484300218)
,p_name=>'P398_P_COLLECTION'
,p_item_sequence=>290
,p_item_plug_id=>wwv_flow_imp.id(117612025349947321)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(119118257532300220)
,p_name=>'P398_SEQ_ID_PED_RUTEO_RPPLARET'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(118507329465355240)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(119768417289483218)
,p_name=>'P398_CONTEO_RUTA'
,p_item_sequence=>300
,p_item_plug_id=>wwv_flow_imp.id(117612025349947321)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(119769923284483233)
,p_name=>'P398_SEQ_ID_RESUMEN_REPARTO'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(117611550533947316)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(119770076583483234)
,p_name=>'P398_SEQ_ID_RESUMEN_IMPRIMIR'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(118507329465355240)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(119770168765483235)
,p_name=>'P398_SEQ_ID_RESUMEN_CONFIRMAR'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(118507329465355240)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(119770207758483236)
,p_name=>'P398_SEQ_ID_RESUMEN_PLA_PEDIDO'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(118507329465355240)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(119770301043483237)
,p_name=>'P398_SEQ_ID_RESUMEN_ELIMINAR'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(118507329465355240)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(119771044100483244)
,p_name=>'P398_INDICADOR_REPORTE_RESUMEN'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(118413258445727537)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(121621432579550612)
,p_name=>'P398_NRO_PLANILLA_ENVIAR'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(121621327914550611)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(121621999138550617)
,p_name=>'P398_NRO_PLANILLA_SEQ_ID'
,p_item_sequence=>310
,p_item_plug_id=>wwv_flow_imp.id(117612025349947321)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(123128605217526831)
,p_name=>'P398_SER_COMPROBANTE_ENVIAR'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(121621327914550611)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(123128745828526832)
,p_name=>'P398_NRO_COMPROBANTE_ENVIAR'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(121621327914550611)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(123129398258526838)
,p_name=>'P398_LOGISTICA_ENVIAR'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(121621327914550611)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(124773792229288706)
,p_name=>'P398_NRO_SOLICITUD_ENVIAR'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(121621327914550611)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(188212350276298021)
,p_name=>'P398_IND_NOGAL'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(118410021696727505)
,p_prompt=>'Marca Nogal'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'S'
,p_attribute_03=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(188213308410298031)
,p_name=>'P398_CAMION'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(117611550533947316)
,p_prompt=>'Camion'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_VEHICULOS_PAGINA_398'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select descripcion, cod_vehiculo, v.marca, v.volumen, v.peso_kg, v.largo ,v.ancho, v.alto, v.tipo',
'  from rp_vehiculos v',
' where cod_empresa = :p_cod_empresa',
'and v.volumen>0',
'AND NVL(ACTIVO,''N'')=''S'' ',
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
 p_id=>wwv_flow_imp.id(188213494768298032)
,p_name=>'P398_PORTON'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(117611550533947316)
,p_prompt=>'Porton'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT  DESC_CELDA, COD_CELDA ',
'FROM ST_CELDAS A, SUCURSAL_ZONA S',
'WHERE A.COD_EMPRESA=:p_COD_EMPRESA',
'AND A.COD_SUCURSAL=S.COD_SUCURSAL',
'AND COD_ZONA_SUC=:p398_ORIGEN_ENTREGA',
'AND A.ESTADO=''S'''))
,p_lov_display_null=>'YES'
,p_lov_cascade_parent_items=>'P398_ORIGEN_ENTREGA,P_COD_EMPRESA'
,p_ajax_items_to_submit=>'P398_ORIGEN_ENTREGA,P_COD_EMPRESA'
,p_ajax_optimize_refresh=>'Y'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(188213569002298033)
,p_name=>'P398_NRO_PLANILLA'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(117611550533947316)
,p_prompt=>'Nro Planilla'
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
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(117613412626947335)
,p_name=>'DA_HABILITAR_ITEMS'
,p_event_sequence=>10
,p_condition_element=>'P398_VER_SOLO_CPH'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'S'
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(117613516639947336)
,p_event_id=>wwv_flow_imp.id(117613412626947335)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P398_ZONA_ENTREGA,P398_EMPRESA_ORIGEN,P398_INCLUIDO,P398_DELIVERY,P398_CAM_ESTADO'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(117613960351947340)
,p_event_id=>wwv_flow_imp.id(117613412626947335)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P398_ZONA_ENTREGA,P398_EMPRESA_ORIGEN,P398_INCLUIDO,P398_DELIVERY,P398_CAM_ESTADO'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(118410350706727508)
,p_name=>'DA_AL_CAMBIAR_ESTADO_DIST'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P398_ESTADO_DISTRIBUCION_PIE'
,p_condition_element=>'P398_ESTADO_DISTRIBUCION_PIE'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(118410425199727509)
,p_event_id=>wwv_flow_imp.id(118410350706727508)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    IF :P398_ESTADO_DISTRIBUCION =''EN FACTURACION'' THEN',
'        :P398_PLAN := ''Plan'';',
'    ELSE',
'        :P398_PLAN := ''Trasl'';',
'    END IF;  ',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;',
''))
,p_attribute_02=>'P398_ESTADO_DISTRIBUCION_PIE'
,p_attribute_03=>'P398_PLAN'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(118412085283727525)
,p_name=>'DA_LLAMAR_RPFACMAS'
,p_event_sequence=>30
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(118411831701727523)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(118412186806727526)
,p_event_id=>wwv_flow_imp.id(118412085283727525)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'	SELECT APEX_PAGE.GET_URL (  p_page => 346) f_url_1',
'		INTO :P398_URL',
'		FROM DUAL;     ',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;'))
,p_attribute_03=>'P398_URL'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(118412361906727528)
,p_event_id=>wwv_flow_imp.id(118412085283727525)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var url = apex.item("P398_URL").getValue();',
'apex.navigation.openInNewWindow(url, "_blank");'))
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
 p_id=>wwv_flow_imp.id(118412886451727533)
,p_name=>'DA_BUSCAR_PEDIDOS_RUTEO'
,p_event_sequence=>40
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(118411693766727521)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(119015803451594213)
,p_event_id=>wwv_flow_imp.id(118412886451727533)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    IF :P398_FECHA_FIN < :P398_FECHA_INI THEN',
'        :P398_MENSAJE_ALERT := ''La fecha inicial no puede ser mayor a la fecha final'';',
'    ELSE',
'        :P398_MENSAJE_ALERT := NULL;',
'    END IF;',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;    '))
,p_attribute_02=>'P398_FECHA_FIN,P398_FECHA_INI'
,p_attribute_03=>'P398_MENSAJE_ALERT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(119016070244594215)
,p_event_id=>wwv_flow_imp.id(118412886451727533)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'&P398_MENSAJE_ALERT.'
,p_attribute_03=>'warning'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P398_MENSAJE_ALERT'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(118508177568355248)
,p_event_id=>wwv_flow_imp.id(118412886451727533)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'var spinner = apex.util.showSpinner();'
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P398_MENSAJE_ALERT'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(118412938624727534)
,p_event_id=>wwv_flow_imp.id(118412886451727533)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'   RPRUTPED.PR_CREAR_COL_PEDIDOS_RUTEO (PI_ESTADO_DISTRIBUCION => :P398_ESTADO_DISTRIBUCION,',
'                                        PI_FECHA_INI => :P398_FECHA_INI,',
'                                        PI_FECHA_FIN => :P398_FECHA_FIN,',
'                                        PI_CLIENTE => :P398_CLIENTE,',
'                                        PI_IND_TRANSPORTADORA => :P398_IND_TRANSPORTADORA, ',
'                                        PI_ORIGEN_ENTREGA => :P398_ORIGEN_ENTREGA,',
'                                        PI_EMPRESA_ORIGEN => :P398_EMPRESA_ORIGEN,',
'                                        PI_ZONA_ENTREGA => :P398_ZONA_ENTREGA,',
'                                        PI_SITUACION => :P398_SITUACION,',
'                                        PI_IND_TIPO_PEDIDO => :P398_IND_TIPO_PEDIDO,',
'                                        PI_DEPARTAMENTO => :P398_DEPARTAMENTO,',
'                                        PI_APP_USER => :APP_USER,',
'                                        PI_ID_RUTEO => :P398_ID_RUTEO,',
'                                        PI_CIUDAD => :P398_CIUDAD,',
'                                        PI_RUTA_ASIGNADA => :P398_RUTA_ASIGNADA,',
'                                        PI_IND_GUARDA => :P398_IND_GUARDA,',
'                                        PI_IND_cliente_final => :P398_IND_CLIENTE_FINAL,',
'                                        PI_ECOMMERCE => :P398_ECOMMERCE,',
'                                        PI_IND_SNC => :P398_IND_SNC,',
'                                        PI_IND_REQUIERE_CONFIRMACION => :P398_IND_REQUIERE_CONFIRMACION,',
'                                        PI_CONDICION => :P398_CONDICION,',
'                                        PI_COD_EMPRESA => :P_COD_EMPRESA,',
'                                        PI_IND_NOGAL   => :P398_IND_NOGAL);',
'                                        ',
'',
'   :P398_INDICADOR_REPORTE_PED_RUT := ''1'';',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;'))
,p_attribute_02=>'P398_ESTADO_DISTRIBUCION_PIE,P398_FECHA_INI,P398_FECHA_FIN,P398_CLIENTE,P398_IND_TRANSPORTADORA,P398_ORIGEN_ENTREGA_PIE,P398_EMPRESA_ORIGEN,P398_ZONA_ENTREGA,P398_SITUACION,P398_IND_TIPO_PEDIDO,P398_DEPARTAMENTO,APP_USER,P398_ID_RUTEO,P398_CIUDAD,P39'
||'8_RUTA_ASIGNADA,P398_IND_GUARDA,P398_IND_CLIENTE_FINAL,P398_ECOMMERCE,P398_IND_SNC,P398_IND_REQUIERE_CONFIRMACION,P398_CONDICION,P398_IND_NOGAL,P398_ORIGEN_ENTREGA,P398_ESTADO_DISTRIBUCION'
,p_attribute_03=>'P398_INDICADOR_REPORTE_PED_RUT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P398_MENSAJE_ALERT'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(118508229940355249)
,p_event_id=>wwv_flow_imp.id(118412886451727533)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$("#apex_wait_overlay").remove();',
'$(".u-Processing").remove();'))
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P398_MENSAJE_ALERT'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(118413045325727535)
,p_event_id=>wwv_flow_imp.id(118412886451727533)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(118409898745727503)
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P398_MENSAJE_ALERT'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(118507533703355242)
,p_name=>'DA_DETALLES_PEDIDO_RUTEO'
,p_event_sequence=>50
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P398_SEQ_ID_PEDIDO_RUTEO_DET'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(118507243840355239)
,p_event_id=>wwv_flow_imp.id(118507533703355242)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN   ',
'   SELECT C001 COD_CLIENTE,',
'          C002 NOMBRE,',
'          C003 NOMBRE_SUCURSAL,',
'          C004 DIRECCION_SUCURSAL,',
'          C005 SEGMENTO_CLIENTE,',
'          C006 COMENTARIO,',
'          N001 NRO_PLANILLA_PEDIDO_CONFIRMADO,',
'          N002 NRO_PLANILLA_TRASLADO,',
'          D001 FECHA_PEDIDO,',
'          D002 FECHA_TRASLADO,',
'          C007 TIPO,',
'          C008 CONDICION_PEDIDO,',
'          C009 ESTADO_DISTRIBUCION,',
'          C010 EMPRESA,',
'          C011 ORIGEN_ENTREGA,',
'          C012 FECHA_HORA_PLAN_PED ',
'',
'   INTO :P398_COD_CLIENTE,',
'        :P398_NOM_CLIENTE,',
'        :P398_NOMBRE_SUCURSAL,',
'        :P398_DIRECCION_SUCURSAL,',
'        :P398_SEGMENTO_CLIENTE,',
'        :P398_COMENTARIO,',
'        :P398_NRO_PLANILLA_PED_CONFIR,',
'        :P398_NRO_PLANILLA_TRASLADO,',
'        :P398_FECHA_PEDIDO,',
'        :P398_FECHA_TRASLADO,',
'        :P398_TIPO,',
'        :P398_CONDICION_PEDIDO,',
'        :P398_ESTADO_DISTRIBUCION_PIE,',
'        :P398_EMPRESA,',
'        :P398_ORIGEN_ENTREGA_PIE,',
'        :P398_FECHA_HORA_PLAN_PED',
'',
'   FROM APEX_COLLECTIONS',
'   WHERE COLLECTION_NAME = ''PEDIDOS_RUTEO_DETALLE''',
'   AND SEQ_ID =  :P398_SEQ_ID_PEDIDO_RUTEO_DET;',
'   ',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;'))
,p_attribute_02=>'P398_SEQ_ID_PEDIDO_RUTEO_DET'
,p_attribute_03=>'P398_COD_CLIENTE,P398_NOM_CLIENTE,P398_NOMBRE_SUCURSAL,P398_DIRECCION_SUCURSAL,P398_SEGMENTO_CLIENTE,P398_COMENTARIO,P398_NRO_PLANILLA_PED_CONFIR,P398_NRO_PLANILLA_TRASLADO,P398_FECHA_PEDIDO,P398_FECHA_TRASLADO,P398_TIPO,P398_CONDICION_PEDIDO,P398_ES'
||'TADO_DISTRIBUCION_PIE,P398_EMPRESA,P398_ORIGEN_ENTREGA_PIE,P398_FECHA_HORA_PLAN_PED'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(118961010438144037)
,p_name=>'DA_BUSCAR_ORDEN_SERVICIO'
,p_event_sequence=>60
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(118960956609144036)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(118961131496144038)
,p_event_id=>wwv_flow_imp.id(118961010438144037)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    RPRUTPED.PR_CREAR_COL_ORDER_SERVICIO (PI_COD_EMPRESA => :P_COD_EMPRESA);',
'    :P398_INDICADOR_REPORTE_ORD_SER := ''1'';',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'        :P398_INDICADOR_REPORTE_ORD_SER := NULL;',
'END;'))
,p_attribute_03=>'P398_INDICADOR_REPORTE_ORD_SER'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(118961367696144040)
,p_event_id=>wwv_flow_imp.id(118961010438144037)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(118957556919144002)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P398_INDICADOR_REPORTE_ORD_SER'
,p_client_condition_expression=>'1'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(118961792127144044)
,p_name=>'DA_GENERAR_RESUMEN_PLANILLA'
,p_event_sequence=>70
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(118961513420144042)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(119015612682594211)
,p_event_id=>wwv_flow_imp.id(118961792127144044)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'var spinner = apex.util.showSpinner();'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(118961805907144045)
,p_event_id=>wwv_flow_imp.id(118961792127144044)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    RPRUTPED.PR_CREAR_COL_PLANILLAS;',
'    :P398_INDICADOR_REPORTE_RES_PLA := ''1'';',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'        :P398_INDICADOR_REPORTE_RES_PLA := NULL;',
'END;'))
,p_attribute_03=>'P398_INDICADOR_REPORTE_RES_PLA'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(119015771127594212)
,p_event_id=>wwv_flow_imp.id(118961792127144044)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$("#apex_wait_overlay").remove();',
'$(".u-Processing").remove();'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(118962022513144047)
,p_event_id=>wwv_flow_imp.id(118961792127144044)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(118961668163144043)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P398_INDICADOR_REPORTE_RES_PLA'
,p_client_condition_expression=>'1'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(119017091191594225)
,p_name=>'DA_ORD_SER_GENERAR'
,p_event_sequence=>80
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P398_SEQ_ID_ORDEN_SERVICIO_GEN'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(119019177954594246)
,p_event_id=>wwv_flow_imp.id(119017091191594225)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    SELECT  N001 NRO_SOLICITUD,',
'            C001 v_desc_m3_vehiculo,',
'            D001 FECHA_REQ,',
'            D002 HORA_REQ,',
'            C002 NOM_SOLICITANTE,',
'            C003 MOTIVO_SOLICITANTE,',
'            C004 ZONA,',
'            C005 COD_VEHICULO,',
'            C006 DESC_VEHICULO,',
'            C007 COD_REPARTIDOR,',
'            C008 NOM_REPARTIDOR',
'',
'      INTO :P398_NRO_SOLICITUD_ED,',
'           :P398_V_DESC_M3_VEHICULO_ED,',
'           :P398_FECHA_REQ_ED,',
'           :P398_HORA_REQ_ED,',
'           :P398_NOM_SOLICITANTE_ED,',
'           :P398_MOTIVO_SOLICITANTE_ED,',
'           :P398_ZONA_ED,',
'           :P398_COD_VEHICULO_ED,',
'           :P398_DESC_VEHICULO_ED,',
'           :P398_COD_REPARTIDOR_ED,',
'           :P398_NOM_REPARTIDOR_ED',
'',
'FROM APEX_COLLECTIONS',
'WHERE COLLECTION_NAME = ''ORDER_SERVICIO''',
'AND SEQ_ID = :P398_SEQ_ID_ORDEN_SERVICIO_GEN;',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;'))
,p_attribute_02=>'P398_SEQ_ID_ORDEN_SERVICIO_GEN'
,p_attribute_03=>'P398_NRO_SOLICITUD_ED,P398_V_DESC_M3_VEHICULO_ED,P398_FECHA_REQ_ED,P398_HORA_REQ_ED,P398_NOM_SOLICITANTE_ED,P398_MOTIVO_SOLICITANTE_ED,P398_ZONA_ED,P398_COD_VEHICULO_ED,P398_DESC_VEHICULO_ED,P398_COD_REPARTIDOR_ED,P398_NOM_REPARTIDOR_ED'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(119017228469594227)
,p_event_id=>wwv_flow_imp.id(119017091191594225)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(119017336945594228)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(119018640733594241)
,p_name=>'DA_GUARDAR_CHOF_VEH'
,p_event_sequence=>90
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(119018548249594240)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(119017140005594226)
,p_event_id=>wwv_flow_imp.id(119018640733594241)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>unistr('\00BFAsignar chofer y veh\00EDculo?')
,p_attribute_03=>'warning'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(119116300576300201)
,p_event_id=>wwv_flow_imp.id(119018640733594241)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    V_GENERADO VARCHAR2(10);',
'    V_ROW_ID VARCHAR2(100);',
'',
'BEGIN',
'',
'',
'	IF :P398_COD_VEHICULO_ED IS NULL OR :P398_COD_REPARTIDOR_ED IS NULL THEN',
unistr('        :P398_MENSAJE_ALERT := ''Debe completar los campos de veh\00EDculo y/o chofer'';'),
'',
' 	ELSIF :P398_COD_VEHICULO_ED IS NOT NULL OR :P398_COD_REPARTIDOR_ED IS NOT NULL THEN',
'	 	  V_GENERADO:= ''S'';',
'          :P398_MENSAJE_ALERT := NULL;',
'',
'          SELECT c020 ',
'          INTO V_ROW_ID',
'          FROM APEX_COLLECTIONS',
'          WHERE COLLECTION_NAME = ''ORDER_SERVICIO''',
'          AND SEQ_ID = :P398_SEQ_ID_ORDEN_SERVICIO_GEN;',
'',
'          UPDATE RP_ORDEN_SERVICIO ',
'          SET GENERADO = V_GENERADO,',
'              COD_VEHICULO = :P398_COD_VEHICULO_ED,',
'              DESC_VEHICULO = :P398_DESC_VEHICULO_ED,',
'              COD_REPARTIDOR = :P398_COD_REPARTIDOR_ED,',
'              NOM_REPARTIDOR = :P398_NOM_REPARTIDOR_ED',
'          WHERE ROWID = V_ROW_ID;',
'          ',
'	END IF;',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;'))
,p_attribute_02=>'P398_COD_VEHICULO_ED,P398_COD_REPARTIDOR_ED,P398_COD_VEHICULO_ED,P398_COD_REPARTIDOR_ED,P398_SEQ_ID_ORDEN_SERVICIO_GEN,P398_DESC_VEHICULO_ED,P398_NOM_REPARTIDOR_ED'
,p_attribute_03=>'P398_MENSAJE_ALERT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(119116488138300202)
,p_event_id=>wwv_flow_imp.id(119018640733594241)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'&P398_MENSAJE_ALERT.'
,p_attribute_03=>'warning'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P398_MENSAJE_ALERT'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(119116600890300204)
,p_event_id=>wwv_flow_imp.id(119018640733594241)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>unistr('Chofer y veh\00EDculo asignados.')
,p_attribute_03=>'success'
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P398_MENSAJE_ALERT'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(119116998399300207)
,p_event_id=>wwv_flow_imp.id(119018640733594241)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    RPRUTPED.PR_CREAR_COL_ORDER_SERVICIO (PI_COD_EMPRESA => :P_COD_EMPRESA);',
'    :P398_INDICADOR_REPORTE_ORD_SER := ''1'';',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'        :P398_INDICADOR_REPORTE_ORD_SER := NULL;',
'END;'))
,p_attribute_03=>'P398_INDICADOR_REPORTE_ORD_SER'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(119116852198300206)
,p_event_id=>wwv_flow_imp.id(119018640733594241)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(118957556919144002)
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P398_MENSAJE_ALERT'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(119116589087300203)
,p_event_id=>wwv_flow_imp.id(119018640733594241)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(119017336945594228)
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P398_MENSAJE_ALERT'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(119018938308594244)
,p_name=>'DA_CERRAR_EDITAR_CHOF_VEH'
,p_event_sequence=>100
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(119018841160594243)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(119019022300594245)
,p_event_id=>wwv_flow_imp.id(119018938308594244)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(119017336945594228)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(119019232160594247)
,p_name=>'DA_SETEAR_NOMBRE_REPARTIDOR'
,p_event_sequence=>110
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P398_COD_REPARTIDOR_ED'
,p_condition_element=>'P398_COD_REPARTIDOR_ED'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(119019301569594248)
,p_event_id=>wwv_flow_imp.id(119019232160594247)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    V_COD_REPARTIDOR VARCHAR2(50);',
'',
'BEGIN',
'',
'    SELECT r.cod_persona R,',
'           p.nombre',
'    INTO V_COD_REPARTIDOR, :P398_NOM_REPARTIDOR_ED',
'    FROM RP_REPARTIDORES r,',
'         personas p',
'    where r.cod_empresa = :P_COD_EMPRESA',
'    and   r.cod_persona = p.cod_persona',
'    and   r.cod_repartidor = :P398_COD_REPARTIDOR_ED;',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'        :P398_NOM_REPARTIDOR_ED := NULL;',
'END;'))
,p_attribute_02=>'P398_COD_REPARTIDOR_ED'
,p_attribute_03=>'P398_NOM_REPARTIDOR_ED'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(119019468592594249)
,p_name=>'DA_SETEAR_DESC_VEHICULO'
,p_event_sequence=>120
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P398_COD_VEHICULO_ED'
,p_condition_element=>'P398_COD_VEHICULO_ED'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(119019511680594250)
,p_event_id=>wwv_flow_imp.id(119019468592594249)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    select descripcion',
'    INTO :P398_DESC_VEHICULO_ED',
'    from rp_vehiculos v',
'    where cod_empresa = :P_COD_EMPRESA',
'    AND COD_VEHICULO = :P398_COD_VEHICULO_ED',
'    and v.volumen>0',
'    AND NVL(ACTIVO,''N'')=''S''',
'    --and NVL(:B_resumen.VOLUMEN ,''0'')<=nvl(volumen,0)',
'     order by descripcion;',
'',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'        :P398_DESC_VEHICULO_ED := NULL;',
'END;',
''))
,p_attribute_02=>'P398_COD_VEHICULO_ED'
,p_attribute_03=>'P398_DESC_VEHICULO_ED'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(119117079809300208)
,p_name=>'DA_LLAMAR_REPORT_RPORDSER'
,p_event_sequence=>130
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P398_SEQ_ID_ORDEN_SERVICIO_IMP'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(119117206044300210)
,p_event_id=>wwv_flow_imp.id(119117079809300208)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'SELECT  N001',
'INTO    :P398_NRO_SOLICITUD_ENVIAR',
'FROM APEX_COLLECTIONS',
'WHERE COLLECTION_NAME = ''ORDER_SERVICIO''',
'AND SEQ_ID = :P398_SEQ_ID_ORDEN_SERVICIO_IMP;',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;'))
,p_attribute_02=>'P398_SEQ_ID_ORDEN_SERVICIO_IMP'
,p_attribute_03=>'P398_NRO_SOLICITUD_ENVIAR'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(119117147334300209)
,p_event_id=>wwv_flow_imp.id(119117079809300208)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'doDescarga(apex.item(''P_COD_EMPRESA'').getValue(),',
'           apex.item(''P398_NRO_SOLICITUD_ENVIAR'').getValue());',
'',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(119117341787300211)
,p_name=>'DA_SETEAR_NOM_CLIENTE'
,p_event_sequence=>140
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P398_CLIENTE'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(119117489283300212)
,p_event_id=>wwv_flow_imp.id(119117341787300211)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    select ltrim(rtrim(nvl(p.nombre, p.nomb_fantasia)))nom',
'    INTO :P398_NOMBRE',
'    from cc_clientes c, personas p',
'    where c.cod_empresa = :P_COD_EMPRESA',
'    and c.cod_persona = p.cod_persona',
'    AND C.COD_CLIENTE = :P398_CLIENTE		',
'    AND p.nombre NOT LIKE ''%NO USAR%''',
'    AND NVL(C.ESTADO,''A'')=''A'';	',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;'))
,p_attribute_02=>'P398_CLIENTE'
,p_attribute_03=>'P398_NOMBRE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(119117874579300216)
,p_name=>'DA_CHECK'
,p_event_sequence=>150
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P398_SEQ_ID_SELECCIONAR'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(132239776603802941)
,p_event_id=>wwv_flow_imp.id(119117874579300216)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    IF :P398_ZONA_ENTREGA IS NOT NULL THEN    ',
'    out_out( ''id_seleccionr ''||:P398_SEQ_ID_SELECCIONAR|| '' accion ''||:P398_ACCION||'' coleccion ''||:P398_P_COLLECTION);',
'     --:P398_MENSAJE_ALERT := ''id_seleccionr ''||:P398_SEQ_ID_SELECCIONAR|| '' accion ''||:P398_ACCION||'' coleccion ''||:P398_P_COLLECTION;     ',
'        RPRUTPED.PR_CHECK(P_SEQ_ID => :P398_SEQ_ID_SELECCIONAR,',
'                          P_ACCION => :P398_ACCION,',
'                          P_COLLECTION => nvl(:P398_P_COLLECTION,''PEDIDOS_RUTEO''));',
'        :P398_MENSAJE_ALERT := NULL;',
'    ELSE',
'        :P398_MENSAJE_ALERT := ''Debe seleccionar una zona de entrega para incluir el pedido.''; ',
'    END IF;',
'EXCEPTION ',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;',
'',
''))
,p_attribute_02=>'P398_SEQ_ID_SELECCIONAR,P398_ACCION,P398_P_COLLECTION'
,p_attribute_03=>'P398_MENSAJE_ALERT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(119117952948300217)
,p_event_id=>wwv_flow_imp.id(119117874579300216)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    :P398_MENSAJE_ALERT  := NULL;',
'',
'    APEX_DEBUG.ERROR(:P398_ZONA_ENTREGA);',
'    APEX_DEBUG.ERROR(:P398_NRO_PLANILLA_SEQ_ID);',
'',
'    IF :P398_ZONA_ENTREGA IS NOT NULL THEN',
'        IF :P398_NRO_PLANILLA_SEQ_ID IS NULL  THEN    ',
'            RPRUTPED.PR_CHECK(P_SEQ_ID => :P398_SEQ_ID_SELECCIONAR,',
'                              P_ACCION => :P398_ACCION,',
'                              P_COLLECTION => :P398_P_COLLECTION);',
'            :P398_MENSAJE_ALERT := NULL;',
'        ELSE',
'            :P398_MENSAJE_ALERT := ''El pedido ya tiene planilla asignada'';',
'        END IF;',
'    ELSE',
'        :P398_MENSAJE_ALERT := ''Debe seleccionar una zona de entrega para incluir el pedido.''; ',
'    END IF;',
'',
'    APEX_DEBUG.ERROR(:P398_MENSAJE_ALERT);',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;',
'',
''))
,p_attribute_02=>'P398_SEQ_ID_SELECCIONAR,P398_ZONA_ENTREGA,P398_ACCION,P398_P_COLLECTION,P398_NRO_PLANILLA_SEQ_ID'
,p_attribute_03=>'P398_MENSAJE_ALERT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P398_ZONA_ENTREGA'
,p_server_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(120942555776636430)
,p_event_id=>wwv_flow_imp.id(119117874579300216)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'console.log(apex.item(''P398_ZONA_ENTREGA'').getValue());',
'if (apex.item(''P398_ZONA_ENTREGA'').getValue() == ''''){',
'    cb.checked = false;',
'}',
'',
'console.log(apex.item(''P398_NRO_PLANILLA_SEQ_ID'').getValue());',
'if (apex.item(''P398_NRO_PLANILLA_SEQ_ID'').getValue() == ''''){',
'    cb.checked = false;',
'}   '))
,p_server_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(119769801009483232)
,p_event_id=>wwv_flow_imp.id(119117874579300216)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'&P398_MENSAJE_ALERT.'
,p_attribute_03=>'warning'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P398_MENSAJE_ALERT'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(119769789906483231)
,p_event_id=>wwv_flow_imp.id(119117874579300216)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    V_INCLUIDO VARCHAR2(50);',
'    V_NRO_PLANILLA_PEDIDO VARCHAR2(50);',
'    V_TIP_COMPROBANTE VARCHAR2(50);',
'    V_SER_COMPROBANTE VARCHAR2(50);',
'    V_NRO_COMPROBANTE NUMBER;',
'    V_RUTA_ENTREGA_ASIGNADA VARCHAR2(50);',
'    V_PO_RUTA_ENTREGA_ASIGNADA VARCHAR2(50);',
'    V_EMPRESA VARCHAR2(50);',
'    V_RUTA_ID VARCHAR2(50);',
'',
'',
'BEGIN',
'    SELECT  ',
'                C011,',
'                C015,',
'                C016,',
'                C017,',
'                C018,',
'                C013,',
'                C014',
'',
'    INTO V_INCLUIDO,',
'         V_NRO_PLANILLA_PEDIDO,',
'         V_TIP_COMPROBANTE,',
'         V_SER_COMPROBANTE,',
'         V_NRO_COMPROBANTE,',
'         V_RUTA_ENTREGA_ASIGNADA,',
'         V_EMPRESA',
'    FROM APEX_COLLECTIONS',
'    WHERE COLLECTION_NAME = ''PEDIDOS_RUTEO''',
'    AND SEQ_ID = :P398_SEQ_ID_SELECCIONAR;',
'',
'    --apex_debug.error(V_NRO_PLANILLA_PEDIDO);',
'',
'    IF (V_INCLUIDO=''S'' AND V_NRO_PLANILLA_PEDIDO IS NOT NULL ) THEN',
'    	:P398_MENSAJE_ALERT := ''El pedido ya tiene planilla asignada'';    	',
'        RPRUTPED.PR_EVALUAR_CHECK (SEQ_ID_CHECK => :P398_SEQ_ID_SELECCIONAR);',
'    ELSE',
'        :P398_MENSAJE_ALERT := NULL;',
'    END IF;',
'',
'    IF (V_INCLUIDO = ''N'' )THEN ',
'    	BEGIN',
'    		sp_inserta_ruta_tmp(:P_COD_EMPRESA,',
'                                V_TIP_COMPROBANTE,',
'                                V_SER_COMPROBANTE,',
'                                V_NRO_COMPROBANTE,',
'                                NULL,                                ',
'                                :P398_ID_RUTEO,                                                ',
'                                V_RUTA_ENTREGA_ASIGNADA,',
'                                ''D'',',
'                                V_EMPRESA,',
'                                V_PO_RUTA_ENTREGA_ASIGNADA,',
'                                V_RUTA_ID);                                                    ',
'                                                     ',
'            --v_PARAMETRO.VOL_MARCADO:=0;                                         ',
'            APEX_COLLECTION.UPDATE_MEMBER_ATTRIBUTE (',
'                  p_collection_name => ''PEDIDOS_RUTEO'',',
'                  p_seq   => :P398_SEQ_ID_SELECCIONAR ,',
'                  p_attr_number => 19,',
'                  p_attr_value  => 0);',
'            --v_ruta_entrega_asignada:=null;',
'            APEX_COLLECTION.UPDATE_MEMBER_ATTRIBUTE (',
'                  p_collection_name => ''PEDIDOS_RUTEO'',',
'                  p_seq   => :P398_SEQ_ID_SELECCIONAR ,',
'                  p_attr_number => 13,',
'                  p_attr_value  => V_PO_RUTA_ENTREGA_ASIGNADA);',
'            --ID_RUTA',
'            APEX_COLLECTION.UPDATE_MEMBER_ATTRIBUTE (',
'                  p_collection_name => ''PEDIDOS_RUTEO'',',
'                  p_seq   => :P398_SEQ_ID_SELECCIONAR ,',
'                  p_attr_number => 20,',
'                  p_attr_value  => V_RUTA_ID);       ',
'',
'            APEX_DEBUG.ERROR(V_RUTA_ID);                                             ',
'    	END;                                            ',
'	',
'	    RPRUTPED.PR_CARGA_RESUMEN (PI_ID_RUTEO => :P398_ID_RUTEO);',
'		',
'    ELSE',
'    	--:B_PARAMETRO.VOL_MARCADO := :B_PARAMETRO.VOLUMEN;',
'    	sp_inserta_ruta_chk(:P_COD_EMPRESA,',
'                            V_TIP_COMPROBANTE,',
'                            V_SER_COMPROBANTE,',
'                            V_NRO_COMPROBANTE,',
'                            :P398_ID_RUTEO, ',
'                            ''I'',',
'                            V_EMPRESA);',
'    	END IF;',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;',
'',
''))
,p_attribute_02=>'P398_ID_RUTEO,P398_SEQ_ID_SELECCIONAR'
,p_attribute_03=>'P398_MENSAJE_ALERT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_server_condition_type=>'NEVER'
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
 p_id=>wwv_flow_imp.id(119118374334300221)
,p_name=>'DA_LLAMAR_RPPLARET'
,p_event_sequence=>160
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P398_SEQ_ID_PED_RUTEO_RPPLARET'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(123128533953526830)
,p_event_id=>wwv_flow_imp.id(119118374334300221)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    V_TIP_COMPROBANTE VARCHAR2(50);',
'',
'BEGIN',
'',
'    SELECT  C016',
'    INTO V_TIP_COMPROBANTE',
'    FROM APEX_COLLECTIONS',
'    WHERE COLLECTION_NAME = ''PEDIDOS_RUTEO''',
'    AND SEQ_ID = :P398_SEQ_ID_PED_RUTEO_RPPLARET;',
'',
'    APEX_DEBUG.ERROR(''V_TIP_COMPROBANTE''||'' ''|| V_TIP_COMPROBANTE);   ',
'',
'    IF V_TIP_COMPROBANTE = ''RET'' THEN',
'        SELECT  C017, C018',
'        INTO :P398_SER_COMPROBANTE_ENVIAR, :P398_NRO_COMPROBANTE_ENVIAR',
'        FROM APEX_COLLECTIONS',
'        WHERE COLLECTION_NAME = ''PEDIDOS_RUTEO''',
'        AND SEQ_ID = :P398_SEQ_ID_PED_RUTEO_RPPLARET;',
'',
'        :P398_LOGISTICA_ENVIAR := ''SI'';',
'        :P398_MENSAJE_ALERT := NULL;',
'    ELSE',
unistr('        :P398_MENSAJE_ALERT := ''Para acceder a la Planilla de Retiro de Mercader\00EDas, el pedido debe ser de tipo RETIRO'';'),
'    END IF;',
'    --APEX_DEBUG.ERROR(:P398_SER_COMPROBANTE_ENVIAR ||'' ''|| :P398_NRO_COMPROBANTE_ENVIAR);   ',
'',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;',
'',
''))
,p_attribute_02=>'P398_SEQ_ID_PED_RUTEO_RPPLARET'
,p_attribute_03=>'P398_SER_COMPROBANTE_ENVIAR,P398_NRO_COMPROBANTE_ENVIAR,P398_LOGISTICA_ENVIAR,P398_MENSAJE_ALERT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(124774162330288710)
,p_event_id=>wwv_flow_imp.id(119118374334300221)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'&P398_MENSAJE_ALERT.'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P398_MENSAJE_ALERT'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(123128816262526833)
,p_event_id=>wwv_flow_imp.id(119118374334300221)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'	SELECT APEX_PAGE.GET_URL (  p_page   => 409,',
'				    p_items  => ''P409_P_SER_PLANILLA,P409_P_NRO_PLANILLA,P409_P_LOGISTICA'',',
'				    p_values => (''''||:P398_SER_COMPROBANTE_ENVIAR||'',',
'                                  ''||:P398_NRO_COMPROBANTE_ENVIAR||'',',
'                                  ''||:P398_LOGISTICA_ENVIAR||'''')) f_url_1',
'		INTO :P398_URL',
'		FROM DUAL;        ',
'	 ',
'    --APEX_DEBUG.ERROR(:P398_URL);',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;',
'',
'',
''))
,p_attribute_02=>'P398_SER_COMPROBANTE_ENVIAR,P398_NRO_COMPROBANTE_ENVIAR,P398_LOGISTICA_ENVIAR'
,p_attribute_03=>'P398_URL'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P398_MENSAJE_ALERT'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(123129472880526839)
,p_event_id=>wwv_flow_imp.id(119118374334300221)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var url = apex.item("P398_URL").getValue();',
'',
'apex.navigation.openInNewWindow(url, "_blank");'))
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P398_MENSAJE_ALERT'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(119118663571300224)
,p_name=>'DA_SELECCIONAR_TODO_REPORTE'
,p_event_sequence=>170
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(118506027300355227)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(119768288422483216)
,p_event_id=>wwv_flow_imp.id(119118663571300224)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    --IF :P398_ZONA_ENTREGA IS NULL THEN',
'    --    :P398_MENSAJE_ALERT := ''Seleccione una zona de entrega en especifico.'';',
'    --ELSE',
'         APEX_COLLECTION.CREATE_OR_TRUNCATE_COLLECTION (P_COLLECTION_NAME => ''PEDIDOS_SELEC'');',
'        RPRUTPED.PR_SEL_COLL_RUTEO_TODOS;',
'        :P398_MENSAJE_ALERT := NULL;',
'    --END IF;',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;'))
,p_attribute_02=>'P398_ZONA_ENTREGA'
,p_attribute_03=>'P398_MENSAJE_ALERT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(121623033379550628)
,p_event_id=>wwv_flow_imp.id(119118663571300224)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'&P398_MENSAJE_ALERT.'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P398_MENSAJE_ALERT'
,p_server_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(119768317716483217)
,p_event_id=>wwv_flow_imp.id(119118663571300224)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(118409898745727503)
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P398_MENSAJE_ALERT'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(119769593171483229)
,p_name=>'DA_SETEAR_ZONA_ENTREGA'
,p_event_sequence=>190
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P398_ZONA_ENTREGA'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(119769698098483230)
,p_event_id=>wwv_flow_imp.id(119769593171483229)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_02=>'P398_ZONA_ENTREGA'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(119770429054483238)
,p_name=>'DA_ELIMINAR_REG_RESUMEN'
,p_event_sequence=>200
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P398_SEQ_ID_RESUMEN_ELIMINAR'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(119770541622483239)
,p_event_id=>wwv_flow_imp.id(119770429054483238)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>unistr('\00BFEsta apunto de eliminar la planilla generada. Desea continuar?')
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(119770698210483240)
,p_event_id=>wwv_flow_imp.id(119770429054483238)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'	A VARCHAR2(10);',
'	B VARCHAR2(10);',
'	VOK VARCHAR2(100);',
'	vmensaje VARCHAR2(100);',
'    V_NRO_PLANILLA NUMBER;',
'',
'BEGIN',
'    BEGIN',
'    SELECT N001 ',
'    INTO V_NRO_PLANILLA',
'    FROM APEX_COLLECTIONS',
'    WHERE COLLECTION_NAME = ''RESUMEN''',
'    AND SEQ_ID = :P398_SEQ_ID_RESUMEN_ELIMINAR;',
'',
'    EXCEPTION',
'        WHEN OTHERS THEN',
'            APEX_DEBUG.ERROR(SQLERRM);',
'    END;',
'',
'    BEGIN		',
'        sp_ruteo_reserva (:P_COD_EMPRESA,',
'                          ''D'',',
'                          V_NRO_PLANILLA,',
'                          vok,',
'                          vmensaje);',
'    EXCEPTION ',
'        WHEN OTHERS THEN ',
'            APEX_DEBUG.ERROR(SQLERRM);',
'    END;',
'                                 ',
'	IF :V_NRO_PLANILLA  IS NOT NULL THEN',
'		',
'        BEGIN',
'    		DELETE   RP_REPARTO_PEDIDO_det',
'    		WHERE cod_empresa = :P_COD_EMPRESA',
'    		AND nro_planilla = V_NRO_PLANILLA ;',
'    	EXCEPTION ',
'            WHEN OTHERS THEN ',
'                APEX_DEBUG.ERROR(SQLERRM);',
'        END;',
'	',
'		BEGIN',
'    		DELETE   RP_REPARTO_PEDIDO_cab',
'    		WHERE cod_empresa = :P_COD_EMPRESA',
'    		AND nro_planilla = V_NRO_PLANILLA;	',
'        EXCEPTION ',
'            WHEN OTHERS THEN ',
'                APEX_DEBUG.ERROR(SQLERRM);',
'        END;',
'    END IF;',
'',
'EXCEPTION ',
'    WHEN OTHERS THEN ',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;'))
,p_attribute_02=>'P398_SEQ_ID_RESUMEN_ELIMINAR'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(119770794175483241)
,p_name=>'DA_LLAMAR_REPORT_RPTPEDIDO'
,p_event_sequence=>210
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P398_SEQ_ID_RESUMEN_PLA_PEDIDO'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(119770832148483242)
,p_event_id=>wwv_flow_imp.id(119770794175483241)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    V_NRO_PLANILLA NUMBER;',
'BEGIN',
'    SELECT N001 ',
'    INTO V_NRO_PLANILLA',
'    FROM APEX_COLLECTIONS',
'    WHERE COLLECTION_NAME = ''RESUMEN''',
'    AND SEQ_ID = :P398_SEQ_ID_RESUMEN_PLA_PEDIDO;',
'',
' ',
'',
'    -- ENVIAR V_NRO_PLANILLA DE RESUMEN Y P_COD_EMPRESA A rptpedido',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;'))
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(121620639721550604)
,p_name=>'DA_CONFIRMAR_RESUMEN'
,p_event_sequence=>220
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P398_SEQ_ID_RESUMEN_CONFIRMAR'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(121620894746550606)
,p_event_id=>wwv_flow_imp.id(121620639721550604)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    V_NRO_PLANILLA NUMBER;',
'BEGIN',
'    SELECT N001 ',
'    INTO V_NRO_PLANILLA',
'    FROM APEX_COLLECTIONS',
'    WHERE COLLECTION_NAME = ''RESUMEN''',
'    AND SEQ_ID = :P398_SEQ_ID_RESUMEN_CONFIRMAR;',
'',
'    IF V_NRO_PLANILLA IS NOT NULL THEN',
'        BEGIN',
'        	UPDATE RP_REPARTO_PEDIDO_CAB',
'        	SET ind_entrega = ''S'', fec_confirmado = sysdate',
'        	WHERE cod_empresa = :P_COD_EMPRESA',
'        	AND nro_planilla = V_NRO_PLANILLA;',
'',
'            :P398_MENSAJE_ALERT := ''Pedido Confirmado'';	',
'        EXCEPTION',
'            WHEN OTHERS THEN',
'                APEX_DEBUG.ERROR(SQLERRM);',
'        END;',
'',
'        DECLARE ',
'        	vmensaje varchar2(1000);',
'        	vok varchar2(1000);',
'        BEGIN',
'    		sp_ruteo_reserva(:P_COD_EMPRESA,',
'                             ''I'',',
'                             V_NRO_PLANILLA,',
'                             vok,',
'                             vmensaje);',
'        EXCEPTION',
'            WHEN OTHERS THEN',
'                APEX_DEBUG.ERROR(SQLERRM);',
'        END;',
'',
'    ELSE',
'	    :P398_MENSAJE_ALERT := ''Aun no se genero la planilla a confirmar'';',
'	END IF;',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;'))
,p_attribute_02=>'P398_SEQ_ID_RESUMEN_CONFIRMAR'
,p_attribute_03=>'P398_MENSAJE_ALERT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(121620938023550607)
,p_event_id=>wwv_flow_imp.id(121620639721550604)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'&P398_MENSAJE_ALERT.'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(121621029670550608)
,p_name=>'DA_LLAMAR_REPORT_RPENTPED'
,p_event_sequence=>230
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P398_SEQ_ID_RESUMEN_IMPRIMIR'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(121621252918550610)
,p_event_id=>wwv_flow_imp.id(121621029670550608)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    SELECT N001 ',
'    INTO :P398_NRO_PLANILLA_ENVIAR',
'    FROM APEX_COLLECTIONS',
'    WHERE COLLECTION_NAME = ''RESUMEN''',
'    AND SEQ_ID = :P398_SEQ_ID_RESUMEN_IMPRIMIR;',
'',
'    IF :P398_NRO_PLANILLA_ENVIAR IS NOT NULL THEN      ',
'        DECLARE',
'            VCONFIRMADO VARCHAR2(10) := ''N'';',
'        BEGIN    ',
'            BEGIN',
'            	SELECT ''S''',
'            	INTO VCONFIRMADO',
'            	FROM RP_REPARTO_PEDIDO_CAB',
'            	WHERE ind_entrega=''S'' ',
'            	AND  cod_empresa = :P_COD_EMPRESA',
'            	AND nro_planilla = :P398_NRO_PLANILLA_ENVIAR; ',
'            EXCEPTION',
'                WHEN OTHERS THEN',
'                    APEX_DEBUG.ERROR(SQLERRM);',
'                	VCONFIRMADO:=''N'';',
'            END;',
'',
'            IF VCONFIRMADO=''S'' THEN',
'            	:P398_MENSAJE_ALERT := ''RPENTPED1'';',
'            ELSE',
'               :P398_MENSAJE_ALERT := ''RPENTPED'';',
'            END IF;',
'        END;',
'    END IF;',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;'))
,p_attribute_03=>'P398_NRO_PLANILLA_ENVIAR,P398_MENSAJE_ALERT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(121621709640550615)
,p_name=>'DA_RESUMEN_REPARTO'
,p_event_sequence=>240
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P398_SEQ_ID_RESUMEN_REPARTO'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(188213007904298028)
,p_event_id=>wwv_flow_imp.id(121621709640550615)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'   IF (:P398_CAMION IS NULL OR :P398_PORTON IS NULL) THEN    ',
'     :P398_MENSAJE_ALERT := ''Debe cargar los datos del camion y porton para generar la planilla'';',
'    elsif   :P398_NRO_PLANILLA is not  null then ',
'    :P398_MENSAJE_ALERT := ''La planilla ya fue generada'';',
'     else',
'',
'        RPRUTPED.PR_genera_planilla',
'        (:p_cod_empresa,:P398_CAMION,:P398_PORTON, ',
'                               :P398_ORIGEN_ENTREGA,',
'                               :P398_ZONA_ENTREGA,',
'                               :P398_MENSAJE_ALERT,',
'                               :P398_NRO_PLANILLA);',
'        ',
'     declare cursor ccab is SELECT  SEQ_ID SEQ_ID_REPARTO,',
'        001 RUTA_ASIGNADA,',
'        N002 MONTO,',
'        C002 VOLUMEN,        ',
'        C003 PARADA,',
'        C004 CAMION,',
'        (select descripcion ',
'  from rp_vehiculos v',
' where cod_empresa = :p_cod_empresa',
'and cod_vehiculo= C004  ) DESC_CAMION,',
'         (select volumen ',
'  from rp_vehiculos v',
' where cod_empresa = :p_cod_empresa',
'and cod_vehiculo= C004  ) CAPACIDAD,',
'        C007 FILL_RATE,',
'        N001 NRO_PLANILLA,',
'        NULL REPARTO,',
'        NULL IMPRIMIR,',
'        NULL CONFIRMAR,',
'        NULL PLA_PEDIDO,',
'        NULL ELIMINAR',
'        ',
'',
'FROM APEX_COLLECTIONS',
'WHERE COLLECTION_NAME = ''RESUMEN''',
'AND :P398_INDICADOR_REPORTE_RESUMEN = 1;',
'begin for x in ccab loop ',
'',
'                  ',
'  APEX_COLLECTION.UPDATE_MEMBER',
'      ( p_collection_name => ''RESUMEN'', ',
'        p_seq => ''1'',        ',
'        p_c002 => x.volumen,',
'         p_c003 => x.PARADA,',
'        p_c004 => :P398_CAMION, ',
'        p_c022 => :P398_PORTON,',
'        p_N001 => :P398_NRO_PLANILLA,',
'        p_N002 => x.MONTO); ',
'        end loop;',
'        end;',
'   ',
'    END IF;',
'EXCEPTION ',
'    WHEN OTHERS THEN',
'    :P398_MENSAJE_ALERT := ''Error al insertar la cabecera '' || SQLERRM;',
'                   RAISE_APPLICATION_ERROR(-20001, ''Error al inserta rPR_genera_planilla''|| SQLERRM);',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;',
'',
''))
,p_attribute_02=>'P398_CAMION,P398_PORTON,P398_ORIGEN_ENTREGA,P_COD_EMPRESA'
,p_attribute_03=>'P398_MENSAJE_ALERT,P398_NRO_PLANILLA'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(188213729602298035)
,p_event_id=>wwv_flow_imp.id(121621709640550615)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(117611550533947316)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(188213657288298034)
,p_event_id=>wwv_flow_imp.id(121621709640550615)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'&P398_MENSAJE_ALERT.'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(120942379515636428)
,p_name=>'DA_CAMBIO _ACCION'
,p_event_sequence=>250
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P398_ACCION'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(120942406134636429)
,p_event_id=>wwv_flow_imp.id(120942379515636428)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_02=>'P398_ACCION'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(121622007354550618)
,p_name=>'DA_DELIVERY'
,p_event_sequence=>260
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(118505979488355226)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(188212444736298022)
,p_event_id=>wwv_flow_imp.id(121622007354550618)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'var spinner = apex.util.showSpinner();'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(121622130641550619)
,p_event_id=>wwv_flow_imp.id(121622007354550618)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    RPRUTPED.PR_DELIVERY (PI_ID_RUTEO => :P398_ID_RUTEO,',
'                          PI_APP_USER => :APP_USER,',
'                          PI_TODOS => :P398_TODOS,',
'                          PO_CONTEO_RUTA => :P398_CONTEO_RUTA);',
'',
'    :P398_INDICADOR_REPORTE_RESUMEN := ''1'';                      ',
':P398_MENSAJE_ALERT:=''Planilla Creada, dirigase a la pantalla resumen'';',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;',
'',
''))
,p_attribute_02=>'P398_ID_RUTEO,P398_TODOS,P398_CONTEO_RUTA'
,p_attribute_03=>'P398_INDICADOR_REPORTE_RESUMEN,P398_MENSAJE_ALERT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(188212585442298023)
,p_event_id=>wwv_flow_imp.id(121622007354550618)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$("#apex_wait_overlay").remove();',
'$(".u-Processing").remove();'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(121622255988550620)
,p_event_id=>wwv_flow_imp.id(121622007354550618)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(117611550533947316)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(188212999051298027)
,p_event_id=>wwv_flow_imp.id(121622007354550618)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'&P398_MENSAJE_ALERT.'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(118961462532144041)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'PR_LIMPIAR_DATOS'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(117611969524947320)
,p_process_sequence=>20
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_INIT'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    DECLARE    ',
'        a varchar2(500);',
'    BEGIN',
'        sp_inserta_ruta_tmp(:P_COD_EMPRESA,',
'                            NULL,',
'                            NULL,',
'                            NULL,',
'                            NULL,',
'                            NULL,',
'                            NULL,',
'                            NULL,',
'                            NULL,',
'                            a,',
'                            :P398_ID_RUTEO);',
'    EXCEPTION',
'        WHEN OTHERS THEN',
'            APEX_DEBUG.ERROR(SQLERRM);',
'    END;',
'',
'    BEGIN',
'     	SELECT COD_ZONA_SUC',
'     	INTO :P398_ORIGEN_ENTREGA	',
'     	FROM SUCURSAL_ZONA S, USUARIOS U',
'     	WHERE U.COD_EMPRESA = :P_COD_EMPRESA',
'     	AND U.COD_USUARIO = :APP_USER',
'     	AND U.COD_SUCURSAL = S.COD_SUCURSAL;',
'    EXCEPTION',
'     	WHEN OTHERS THEN',
'     	 :P398_ORIGEN_ENTREGA := NULL;',
'    END;',
'',
'    :P398_SUCURSAL_PLANILLA_PEDIDOS :=  :P_COD_SUCURSAL;',
'    :P398_COD_MODULO := ''RP'';',
'    :P398_COD_FORMA := ''RPRUTPED'';',
'    :P398_COD_USUARIO := :APP_USER;',
'    :P398_TODOS := ''N'';',
'    :P398_IND_TRANSPORTADORA := ''N'';',
'    :P398_PLAN := ''Trasl'';',
'    :P398_IND_NOGAL := ''N'';',
'',
'    :P398_VER_SOLO_CPH := BUSCA_PERMISO (:P_COD_EMPRESA,',
'                                         :P398_COD_FORMA,',
'                                         :P398_COD_USUARIO,',
'                                         ''USUARIO_CPH'');',
'',
'    IF nvl (:P398_VER_SOLO_CPH,''N'') =''S'' THEN ',
'    	:P398_EMPRESA_ORIGEN := ''CPH'';',
'    	:P398_ORIGEN_ENTREGA := ''SL'';',
'    	:P398_ZONA_ENTREGA := NULL;',
'    END IF;',
'',
'    IF nvl( :P398_VER_SOLO_CPH,''N'')<>''S'' THEN 	',
'   	    :P398_ZONA_ENTREGA := ''CAPITAL'';',
'    END IF;',
'    ',
'    --:P398_NOMBRE := ''TODOS''; ',
'    :P398_CLIENTE := :P398_CLIENTE;',
'',
'    APEX_COLLECTION.CREATE_OR_TRUNCATE_COLLECTION (P_COLLECTION_NAME => ''PEDIDOS_SELEC'');',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;',
'  :P398_DEPARTAMENTO :=''T'';',
'  :P398_CIUDAD :=''T'';',
'  :P398_IND_GUARDA:=''N'';',
'  :P398_IND_NOGAL:=''N'';',
'  :P398_IND_SNC:= ''N''; ',
'  :P398_IND_CLIENTE_FINAL:= ''N''; ',
'  :P398_ECOMMERCE:= ''N''; ',
'  :P398_IND_TRANSPORTADORA:= ''N''; ',
'  :P398_IND_REQUIERE_CONFIRMACION:= ''N'';',
'  :P398_IND_REQUIERE_CONFIRMACION:=''N'';',
'  :P398_IND_TIPO_PEDIDO:=''PE'';',
'  :P398_ESTADO_DISTRIBUCION:=''PENDIENTE RUTA'';  ',
'       ',
'      -- :P398_NOMBRE:=''TODOS''; ',
'      ',
'',
'',
'',
''))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_imp.component_end;
end;
/
