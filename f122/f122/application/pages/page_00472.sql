prompt --application/pages/page_00472
begin
--   Manifest
--     PAGE: 00472
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
 p_id=>472
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'Liquidacion de Fletes Tercerizados - RPLIQFLE'
,p_alias=>'LIQUIDACION-DE-FLETES-TERCERIZADOS-RPLIQFLE'
,p_step_title=>'Liquidacion de Fletes Tercerizados - RPLIQFLE'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function seleccionar(cb) {',
'    console.log(cb.value);',
'    console.log(cb.checked);',
'',
'',
'  if (cb.checked == true){',
'    console.log("block" + cb.value);',
'      $s(''P472_ACCION'',''AGREGAR'');',
'      $s(''P472_AUX_SEQ_ID'', cb.value,false);',
'  } else {',
'      $s(''P472_ACCION'',''QUITAR'');',
'      $s(''P472_AUX_SEQ_ID'', cb.value,false);',
'  }',
'}',
'',
'function validateNumber(event) {',
'  var keyCode = event.keyCode;',
unistr('  var excludedKeys = [8, 37, 39, 46];//Teclas extra que queremos que el campo acepte aparte de los n\00FAmeros, como el backspace'),
unistr('//Realizamos la validaci\00F3n de la tecla ingresada'),
'  if (!((keyCode >= 48 && keyCode <= 57) ||',
'      (keyCode >= 96 && keyCode <= 105) ||',
'      (excludedKeys.includes(keyCode)))) {',
'    event.preventDefault();',
'',
'  }',
'}',
'',
'function doDescarga(P_COD_EMPRESA,P_TRANSPORTADORA,P_FECHA_FIN,P_COD_SUCURSAL,P_TIPO,P_VEHICULO,P_FECHA_INI,P_REPARTIDOR,P_ZONA){',
'    console.log($v(''P472_URL''));',
'    window.open(unescape($v(''P472_URL'').replace(/&amp;/g,''g'')),"_blank");',
'    //window.open((vURL.replace(/&amp;/g,''g'')),"_blank");',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_last_updated_by=>'DFINO'
,p_last_upd_yyyymmddhh24miss=>'20230404102130'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(132547292723400150)
,p_plug_name=>unistr('Liquidaci\00F3n de Fletes Tercerizados - RPLIQFLE')
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>990
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(137726174369133214)
,p_plug_name=>'COL_VW_LIQUIDA_FLETES'
,p_parent_plug_id=>wwv_flow_imp.id(132547292723400150)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT seq_id SEQ_ID,',
'       c001 FECHA,',
'       c002 COD_VEHICULO,',
'       c003 DESCRIPCION,',
'       c004 CHAPA,',
'       TO_NUMBER(c005) VOLUMEN,',
'       c006 CAPACIDAD,',
'       c007 KM_ESTIMADO,',
'       c008 TRANSPORTADORA,',
'       c009 COD_REPARTIDOR,',
'       c010 REPARTIDOR,',
'       c011 CANT_VIAJE,',
'       TO_NUMBER(c012) VALOR_TOTAL_CARGA,',
'       c013 TIPO,',
'       TO_NUMBER(c014) PRECIO,',
'       c015 USUARIO,',
'       c016 FECHA_ALTA,',
'       TO_NUMBER(c017) MONTO_CONFIRMADO,',
'       c018 NRO_PLANILLA,',
'       APEX_ITEM.CHECKBOX (p_idx         => 1 ,',
'                           p_value       => seq_id,',
'                           p_attributes  => (case c019',
'                                                when ''S'' then ''checked ''',
'                                                else null',
'                                              end ) ||''onclick="seleccionar(this)"'' )as "CONFIRMADO",',
'       --c019 CONFIRMADO,',
'       c020 INDICE,',
'       NULL DETALLE,',
'       NULL EDITAR',
'  FROM APEX_COLLECTIONS ',
' WHERE COLLECTION_NAME = ''COL_VW_LIQUIDA_FLETES'''))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'COL_VW_LIQUIDA_FLETES'
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
 p_id=>wwv_flow_imp.id(137726291586133215)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'DFINO'
,p_internal_uid=>137726291586133215
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(137726472101133217)
,p_db_column_name=>'COD_VEHICULO'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Cod Vehiculo'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(137726560889133218)
,p_db_column_name=>'DESCRIPCION'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>unistr('Veh\00EDculo')
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(137726677676133219)
,p_db_column_name=>'CHAPA'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Chapa'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(137727065239133223)
,p_db_column_name=>'TRANSPORTADORA'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Transportadora'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(137727114304133224)
,p_db_column_name=>'COD_REPARTIDOR'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Cod Repartidor'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(137727259364133225)
,p_db_column_name=>'REPARTIDOR'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Repartidor'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(137727598058133228)
,p_db_column_name=>'TIPO'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Tipo'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(137727763016133230)
,p_db_column_name=>'USUARIO'
,p_display_order=>150
,p_column_identifier=>'O'
,p_column_label=>'Usuario'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(137728191023133234)
,p_db_column_name=>'DETALLE'
,p_display_order=>190
,p_column_identifier=>'S'
,p_column_label=>'Detalle'
,p_column_link=>'javascript:$s(''P472_DET_DATA'',''#SEQ_ID#'');'
,p_column_linktext=>'<span class="fa fa-search">'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(137728402861133237)
,p_db_column_name=>'SEQ_ID'
,p_display_order=>200
,p_column_identifier=>'T'
,p_column_label=>'Seq Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(137728554259133238)
,p_db_column_name=>'FECHA'
,p_display_order=>210
,p_column_identifier=>'U'
,p_column_label=>'Fecha'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(137728721189133240)
,p_db_column_name=>'CAPACIDAD'
,p_display_order=>230
,p_column_identifier=>'W'
,p_column_label=>'Capacidad Kg.'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(137728815235133241)
,p_db_column_name=>'KM_ESTIMADO'
,p_display_order=>240
,p_column_identifier=>'X'
,p_column_label=>'Km Estimado'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(137728944657133242)
,p_db_column_name=>'CANT_VIAJE'
,p_display_order=>250
,p_column_identifier=>'Y'
,p_column_label=>'Cant. Viaje'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(137729259549133245)
,p_db_column_name=>'FECHA_ALTA'
,p_display_order=>280
,p_column_identifier=>'AB'
,p_column_label=>'Fecha Alta'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(137729450938133247)
,p_db_column_name=>'NRO_PLANILLA'
,p_display_order=>300
,p_column_identifier=>'AD'
,p_column_label=>'Nro Planilla'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(137729503256133248)
,p_db_column_name=>'CONFIRMADO'
,p_display_order=>310
,p_column_identifier=>'AE'
,p_column_label=>'Confirmado'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(137987467593164401)
,p_db_column_name=>'INDICE'
,p_display_order=>320
,p_column_identifier=>'AF'
,p_column_label=>'Indice'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(137987529948164402)
,p_db_column_name=>'PRECIO'
,p_display_order=>330
,p_column_identifier=>'AG'
,p_column_label=>'Precio'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_format_mask=>'9G999G999G999'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(137988676502164413)
,p_db_column_name=>'EDITAR'
,p_display_order=>340
,p_column_identifier=>'AH'
,p_column_label=>'Editar Monto'
,p_column_link=>'javascript:$s(''P472_EDIT_DATA'',''#SEQ_ID#'');'
,p_column_linktext=>'<span aria-label="Edit"><span class="fa fa-edit" aria-hidden="true" title="Edit"></span></span>'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(137989194296164418)
,p_db_column_name=>'MONTO_CONFIRMADO'
,p_display_order=>350
,p_column_identifier=>'AI'
,p_column_label=>'Monto Confirmado'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_format_mask=>'9G999G999G999'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(137989265732164419)
,p_db_column_name=>'VOLUMEN'
,p_display_order=>360
,p_column_identifier=>'AJ'
,p_column_label=>'Volumen'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_format_mask=>'999G999D90'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(137991187698164438)
,p_db_column_name=>'VALOR_TOTAL_CARGA'
,p_display_order=>370
,p_column_identifier=>'AK'
,p_column_label=>unistr('Monto en Tr\00E1nsito')
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_format_mask=>'999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(137924109468546438)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1379242'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'FECHA:DESCRIPCION:VALOR_TOTAL_CARGA:CHAPA:CAPACIDAD:VOLUMEN:CANT_VIAJE:PRECIO:INDICE:MONTO_CONFIRMADO:CONFIRMADO:EDITAR:DETALLE:'
);
wwv_flow_imp_page.create_worksheet_condition(
 p_id=>wwv_flow_imp.id(139978162786967864)
,p_report_id=>wwv_flow_imp.id(137924109468546438)
,p_name=>'Confirmado'
,p_condition_type=>'HIGHLIGHT'
,p_allow_delete=>'Y'
,p_column_name=>'NRO_PLANILLA'
,p_operator=>'is not null'
,p_condition_sql=>' (case when ("NRO_PLANILLA" is not null) then #APXWS_HL_ID# end) '
,p_condition_display=>'#APXWS_COL_NAME# #APXWS_OP_NAME#'
,p_enabled=>'Y'
,p_highlight_sequence=>10
,p_row_bg_color=>'#a0ea8f'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(137990465799164431)
,p_plug_name=>'Contenedor Totales'
,p_parent_plug_id=>wwv_flow_imp.id(132547292723400150)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(137991294008164439)
,p_plug_name=>'VW_LIQUIDA_FLETES_DET'
,p_parent_plug_id=>wwv_flow_imp.id(132547292723400150)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>30
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT VW_DET.FECHA,',
'       VW_DET.COD_EMPRESA,',
'       VW_DET.NUMERO,',
'       VW_DET.COD_REPARTIDOR,',
'       VW_DET.COD_VEHICULO,',
'       (RPLIQFLE.OBTENER_DESC_PRIORIDAD(pprioridad => VW_DET.PRIORIDAD)) PRIORIDAD,',
'       VW_DET.VALOR_CARGA,',
'       VW_DET.VOLUMEN_CARGA,',
'       VW_DET.KM_ESTIMADO,',
'       VW_DET.TARIFA_GS_KM,',
'       VW_DET.ZONA,',
'       (SELECT DESCRIPCION',
'          FROM RP_ZONAS_REPARTO',
'         WHERE COD_ZONA_REPARTO = VW_DET.ZONA) DESC_ZONA,',
'       VW_DET.AYUDANTES,',
'       VW_DET.NRO_PLANILLA_CPH,',
'       VW_DET.TIPO',
'  FROM VW_LIQUIDA_FLETES_DET VW_DET',
' WHERE VW_DET.COD_EMPRESA = :P_COD_EMPRESA',
'   AND TO_DATE(VW_DET.FECHA) = :P472_FECHA_DET',
'   AND VW_DET.COD_VEHICULO = :P472_COD_VEHICULO_DET'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P472_FECHA_DET,P472_COD_VEHICULO_2'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'VW_LIQUIDA_FLETES_DET'
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
 p_id=>wwv_flow_imp.id(137991483786164441)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_search_bar=>'N'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_enable_mail_download=>'Y'
,p_owner=>'DFINO'
,p_internal_uid=>137991483786164441
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(137991548861164442)
,p_db_column_name=>'FECHA'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Fecha'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(137991656396164443)
,p_db_column_name=>'COD_EMPRESA'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Cod Empresa'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(137991724936164444)
,p_db_column_name=>'NUMERO'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>unistr('N\00FAmero')
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(137991874784164445)
,p_db_column_name=>'COD_REPARTIDOR'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Cod Repartidor'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(137991957987164446)
,p_db_column_name=>'COD_VEHICULO'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Cod Vehiculo'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(137992122278164448)
,p_db_column_name=>'VALOR_CARGA'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Valor Carga'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_format_mask=>'999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(137992202875164449)
,p_db_column_name=>'VOLUMEN_CARGA'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Volumen'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_format_mask=>'999G999G990D90'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(137992368588164450)
,p_db_column_name=>'KM_ESTIMADO'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Km'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(138343256582426401)
,p_db_column_name=>'TARIFA_GS_KM'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Tarifa Gs Km'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(138343393669426402)
,p_db_column_name=>'ZONA'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Cod Zona'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(138343405979426403)
,p_db_column_name=>'AYUDANTES'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Ayudantes'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(138343567838426404)
,p_db_column_name=>'NRO_PLANILLA_CPH'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Nro Planilla Cph'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(138343675267426405)
,p_db_column_name=>'TIPO'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>'Tipo'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(138343764191426406)
,p_db_column_name=>'DESC_ZONA'
,p_display_order=>150
,p_column_identifier=>'O'
,p_column_label=>'Zona'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(138343851456426407)
,p_db_column_name=>'PRIORIDAD'
,p_display_order=>160
,p_column_identifier=>'P'
,p_column_label=>'Prioridad'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(138353818836426006)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1383539'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'TIPO:NUMERO:VALOR_CARGA:VOLUMEN_CARGA:KM_ESTIMADO:PRIORIDAD:DESC_ZONA:'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(138345127845426420)
,p_plug_name=>'Contenedor 2'
,p_parent_plug_id=>wwv_flow_imp.id(132547292723400150)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>40
,p_plug_new_grid_row=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(137991393648164440)
,p_plug_name=>'Contenedor 2.1'
,p_parent_plug_id=>wwv_flow_imp.id(138345127845426420)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>10
,p_plug_new_grid_row=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(138345297236426421)
,p_plug_name=>'Contenedor 2.2'
,p_parent_plug_id=>wwv_flow_imp.id(138345127845426420)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(138345344387426422)
,p_plug_name=>'Contenedor 2.3'
,p_parent_plug_id=>wwv_flow_imp.id(138345127845426420)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>30
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(137989319598164420)
,p_plug_name=>'Editar Monto'
,p_region_template_options=>'#DEFAULT#:js-dialog-autoheight:js-dialog-size600x400'
,p_plug_template=>wwv_flow_imp.id(40117728043263659)
,p_plug_display_sequence=>1000
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(138346812266426437)
,p_plug_name=>'Genera'
,p_region_template_options=>'#DEFAULT#:js-dialog-autoheight:js-dialog-size600x400'
,p_plug_template=>wwv_flow_imp.id(40117728043263659)
,p_plug_display_sequence=>1010
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(137989538235164422)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(137989319598164420)
,p_button_name=>'BTEDITAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Editar'
,p_button_position=>'BELOW_BOX'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(138347059105426439)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(138346812266426437)
,p_button_name=>'BTCANCELAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_image_alt=>'Cancelar'
,p_button_position=>'BELOW_BOX'
,p_button_alignment=>'LEFT'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(138347136707426440)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(138346812266426437)
,p_button_name=>'BTCONFIRMAR_GEN'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Confirmar'
,p_button_position=>'BELOW_BOX'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(138344940989426418)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(137991393648164440)
,p_button_name=>'BTCONFIRMAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--large'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Confirmar'
,p_warn_on_unsaved_changes=>null
,p_button_cattributes=>'style="margin-top:10px;"'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(138345049119426419)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(137991393648164440)
,p_button_name=>'BTANULAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--large'
,p_button_template_id=>wwv_flow_imp.id(40187078917263678)
,p_button_image_alt=>'Anular'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-remove'
,p_button_cattributes=>'style="margin-top:10px;"'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(137725197879133204)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(132547292723400150)
,p_button_name=>'BTFILTRAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Filtrar'
,p_button_position=>'COPY'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(138346267113426431)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(132547292723400150)
,p_button_name=>'BTIMPRIMIR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Imprimir'
,p_button_position=>'COPY'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(137724850087133201)
,p_name=>'P472_COD_MODULO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(132547292723400150)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(137725263839133205)
,p_name=>'P472_COD_VEHICULO'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(132547292723400150)
,p_prompt=>unistr('Cod. Veh\00CDculo')
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_VEHICULOS_RPLIQFLE'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select descripcion, ',
'       cod_vehiculo ',
'  from rp_vehiculos ',
' where cod_empresa = :P_COD_EMPRESA',
'   and nvl(Activo,''S'') = ''S''',
'order by descripcion'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_colspan=>2
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'Y'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
,p_attribute_10=>'DESCRIPCION:P472_DESC_VEHICULO'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(137725346797133206)
,p_name=>'P472_DESC_VEHICULO'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(132547292723400150)
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_begin_on_new_line=>'N'
,p_colspan=>4
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(137725442498133207)
,p_name=>'P472_FEC_DESDE'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(132547292723400150)
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
 p_id=>wwv_flow_imp.id(137725588359133208)
,p_name=>'P472_FEC_HASTA'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(132547292723400150)
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
 p_id=>wwv_flow_imp.id(137725663773133209)
,p_name=>'P472_COD_BARRA'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(132547292723400150)
,p_prompt=>'Cod. Barra'
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
 p_id=>wwv_flow_imp.id(137725736177133210)
,p_name=>'P472_REPARTIDOR'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(132547292723400150)
,p_item_default=>'SELECT ''TODOS'' FROM DUAL'
,p_item_default_type=>'SQL_QUERY'
,p_prompt=>'Repartidor'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:CREADO;CREADO,RECHAZADO;RECHAZADO,AUTORIZADO;AUTORIZADO,FINALIZADO;FINALIZADO,ANULADO;ANULADO,PROCESADO;PROCESADO,TODOS;TODOS'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(137725812267133211)
,p_name=>'P472_ZONA'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(132547292723400150)
,p_item_default=>'SELECT ''TODOS'' FROM DUAL'
,p_item_default_type=>'SQL_QUERY'
,p_prompt=>'Zona'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:CREADO;CREADO,RECHAZADO;RECHAZADO,AUTORIZADO;AUTORIZADO,FINALIZADO;FINALIZADO,ANULADO;ANULADO,PROCESADO;PROCESADO,TODOS;TODOS'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(137725907283133212)
,p_name=>'P472_TRANSPORTADORA'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(132547292723400150)
,p_item_default=>'SELECT ''TODOS'' FROM DUAL'
,p_item_default_type=>'SQL_QUERY'
,p_prompt=>'Transportadora'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:CREADO;CREADO,RECHAZADO;RECHAZADO,AUTORIZADO;AUTORIZADO,FINALIZADO;FINALIZADO,ANULADO;ANULADO,PROCESADO;PROCESADO,TODOS;TODOS'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(137726001528133213)
,p_name=>'P472_CHK_OK'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(132547292723400150)
,p_prompt=>'Confirmados'
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
 p_id=>wwv_flow_imp.id(137987644229164403)
,p_name=>'P472_DET_DATA'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(137726174369133214)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(137987952398164406)
,p_name=>'P472_ACCION'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(137726174369133214)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(137988087806164407)
,p_name=>'P472_AUX_SEQ_ID'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(137726174369133214)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(137988756536164414)
,p_name=>'P472_EDIT_DATA'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(137726174369133214)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(137989441801164421)
,p_name=>'P472_MONTO_EDIT'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(137989319598164420)
,p_prompt=>'Monto'
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
 p_id=>wwv_flow_imp.id(137990511530164432)
,p_name=>'P472_MT_TOTAL'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(137990465799164431)
,p_prompt=>unistr('Monto  en Tr\00E1nsito Total')
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_grid_column=>3
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(137990636786164433)
,p_name=>'P472_VM3_TOTAL'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(137990465799164431)
,p_prompt=>'Volumen Total'
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
 p_id=>wwv_flow_imp.id(137990758419164434)
,p_name=>'P472_CV_TOTAL'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(137990465799164431)
,p_prompt=>'Cant. Viajes Total'
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
 p_id=>wwv_flow_imp.id(137990876013164435)
,p_name=>'P472_IND_TOTAL'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(137990465799164431)
,p_prompt=>unistr('\00CDndice Total')
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
 p_id=>wwv_flow_imp.id(137990943605164436)
,p_name=>'P472_MP_TOTAL'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(137990465799164431)
,p_prompt=>'Monto Pago Total'
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
 p_id=>wwv_flow_imp.id(138344030880426409)
,p_name=>'P472_FECHA_DET'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(137726174369133214)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(138344116231426410)
,p_name=>'P472_COD_VEHICULO_DET'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(137726174369133214)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(138344835973426417)
,p_name=>'P472_NRO_PLANILLA'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(137991393648164440)
,p_prompt=>unistr('Nro. Liquidaci\00F3n')
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_colspan=>6
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(138345417727426423)
,p_name=>'P472_COD_REPARTIDOR'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(138345297236426421)
,p_prompt=>'Cod. Repartidor'
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
 p_id=>wwv_flow_imp.id(138345549479426424)
,p_name=>'P472_KM_ESTIMADO'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(138345297236426421)
,p_prompt=>'Km'
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
 p_id=>wwv_flow_imp.id(138345660120426425)
,p_name=>'P472_REPARTIDOR_2'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(138345297236426421)
,p_prompt=>'Repartidor'
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
 p_id=>wwv_flow_imp.id(138345757403426426)
,p_name=>'P472_COD_VEHICULO_2'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(138345297236426421)
,p_prompt=>unistr('Cod. Veh\00EDculo')
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
 p_id=>wwv_flow_imp.id(138345876761426427)
,p_name=>'P472_TRANSPORTADORA_2'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(138345297236426421)
,p_prompt=>'Transport.'
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
 p_id=>wwv_flow_imp.id(138345919531426428)
,p_name=>'P472_TIPO_2'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(138345297236426421)
,p_prompt=>'Tipo'
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
 p_id=>wwv_flow_imp.id(138346304567426432)
,p_name=>'P472_URL'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(132547292723400150)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(138346995867426438)
,p_name=>'P472_NRO_PLANILLA_GENERA'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(138346812266426437)
,p_prompt=>'Incluir en la Planilla'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(139764820851556201)
,p_name=>'P472_CONTROL_PLANILLA'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(137991393648164440)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(139942721436063103)
,p_name=>'P472_CONTROL_CONFIRM'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(137726174369133214)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(139943247578063108)
,p_name=>'P472_MONTO_CONFIRMADO_AUX'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(137726174369133214)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(137728260171133235)
,p_name=>'DA_FILTRAR'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(137725197879133204)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(139943574197063111)
,p_event_id=>wwv_flow_imp.id(137728260171133235)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'var spinner = apex.util.showSpinner();'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(137728322438133236)
,p_event_id=>wwv_flow_imp.id(137728260171133235)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_02=>'P472_COD_VEHICULO,P472_FEC_DESDE,P472_FEC_HASTA,P472_COD_BARRA,P472_REPARTIDOR,P472_ZONA,P472_TRANSPORTADORA,P472_CHK_OK'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(137729674453133249)
,p_event_id=>wwv_flow_imp.id(137728260171133235)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    RPLIQFLE.CARGAR_COL(pcod_vehiculo  => :P472_COD_VEHICULO,',
'                        prepartidor    => :P472_REPARTIDOR,',
'                        ptranportadora => :P472_TRANSPORTADORA,',
'                        pfec_desde     => :P472_FEC_DESDE,',
'                        pfec_hasta     => :P472_FEC_HASTA,',
'                        pchk_ok        => :P472_CHK_OK,',
'                        pzona          => :P472_ZONA);',
'EXCEPTION',
'    WHEN OTHERS THEN',
'    APEX_DEBUG.ERROR(''DA_FILTRAR ''||SQLERRM);',
'END;'))
,p_attribute_02=>'P472_COD_VEHICULO,P472_FEC_DESDE,P472_FEC_HASTA,P472_COD_BARRA,P472_REPARTIDOR,P472_ZONA,P472_TRANSPORTADORA,P472_CHK_OK'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(137729762651133250)
,p_event_id=>wwv_flow_imp.id(137728260171133235)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(137726174369133214)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(139943649049063112)
,p_event_id=>wwv_flow_imp.id(137728260171133235)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$("#apex_wait_overlay").remove();',
'$(".u-Processing").remove();'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(137987782951164404)
,p_name=>'DA_DET_DATA'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P472_DET_DATA'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(137987874797164405)
,p_event_id=>wwv_flow_imp.id(137987782951164404)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_02=>'P472_DET_DATA'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(138343984740426408)
,p_event_id=>wwv_flow_imp.id(137987782951164404)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    BEGIN',
'        SELECT c001,',
'               c002,',
'               TO_CHAR(c017,''999G999G999G999'')',
'          INTO :P472_FECHA_DET,',
'               :P472_COD_VEHICULO_DET,',
'               :P472_MONTO_CONFIRMADO_AUX',
'          FROM APEX_COLLECTIONS',
'         WHERE COLLECTION_NAME = ''COL_VW_LIQUIDA_FLETES''',
'           AND seq_id = :P472_DET_DATA;',
'    EXCEPTION',
'        WHEN NO_DATA_FOUND THEN',
'        :P472_FECHA_DET := NULL;',
'        :P472_COD_VEHICULO_DET := NULL;',
'        :P472_MONTO_CONFIRMADO_AUX := NULL;',
'    END;',
'EXCEPTION',
'    WHEN OTHERS THEN',
'    APEX_DEBUG.ERROR(''DA_DET_DATA ''||SQLERRM);',
'END;'))
,p_attribute_02=>'P472_DET_DATA'
,p_attribute_03=>'P472_FECHA_DET,P472_COD_VEHICULO_2,P472_MONTO_CONFIRMADO_AUX'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(138346024452426429)
,p_event_id=>wwv_flow_imp.id(137987782951164404)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    RPLIQFLE.GET_DATA_DET(pseq_id         => :P472_DET_DATA,',
'                          pcod_repartidor => :P472_COD_REPARTIDOR,',
'                          pcod_vehiculo   => :P472_COD_VEHICULO_2,',
'                          pkm_estimado    => :P472_KM_ESTIMADO,',
'                          prepartidor     => :P472_REPARTIDOR_2,',
'                          ptransportadora => :P472_TRANSPORTADORA_2,',
'                          ptipo           => :P472_TIPO_2,',
'                          pnro_planilla   => :P472_NRO_PLANILLA);',
'EXCEPTION',
'    WHEN OTHERS THEN',
'    APEX_DEBUG.ERROR(''DA_DET_DATA GET_DATA_DET ''||SQLERRM);',
'END;'))
,p_attribute_02=>'P472_DET_DATA'
,p_attribute_03=>'P472_COD_REPARTIDOR,P472_COD_VEHICULO_2,P472_KM_ESTIMADO,P472_REPARTIDOR_2,P472_TRANSPORTADORA_2,P472_TIPO_2,P472_NRO_PLANILLA'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P472_DET_DATA'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(138344641036426415)
,p_event_id=>wwv_flow_imp.id(137987782951164404)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(137991294008164439)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(137988114337164408)
,p_name=>'DA_ACCION'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P472_ACCION'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(137988208316164409)
,p_event_id=>wwv_flow_imp.id(137988114337164408)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_02=>'P472_ACCION'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(137988315298164410)
,p_name=>'DA_AUX_SEQ_ID'
,p_event_sequence=>40
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P472_AUX_SEQ_ID'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(137988435741164411)
,p_event_id=>wwv_flow_imp.id(137988315298164410)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_02=>'P472_AUX_SEQ_ID'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(137988525031164412)
,p_event_id=>wwv_flow_imp.id(137988315298164410)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'VNRO_PLANILLA VARCHAR2(1000);',
'BEGIN',
'    VNRO_PLANILLA := NULL;',
'    ',
'    --BEGIN',
'        SELECT c018',
'          INTO VNRO_PLANILLA',
'          FROM APEX_COLLECTIONS',
'         WHERE COLLECTION_NAME = ''COL_VW_LIQUIDA_FLETES''',
'           AND seq_id = :P472_AUX_SEQ_ID;',
'   /* EXCEPTION',
'        WHEN NO_DATA_FOUND THEN',
'        VNRO_PLANILLA := NULL;',
'        WHEN OTHERS THEN',
'        :VNRO_PLANILLA := NULL;',
'    END;*/',
'',
'    IF VNRO_PLANILLA IS NULL THEN',
'        :P472_CONTROL_CONFIRM := 0;',
'',
'        RPLIQFLE.PR_CHECK(pseq_id    => :P472_AUX_SEQ_ID, ',
'                          paccion    => :P472_ACCION, ',
'                          pcolection => ''COL_VW_LIQUIDA_FLETES'',',
'                          patributo  => 19);',
'    ELSE',
'        :P472_CONTROL_CONFIRM := 1;',
'    END IF;',
'    ',
'EXCEPTION',
'    WHEN OTHERS THEN',
'    APEX_DEBUG.ERROR(''DA_AUX_SEQ_ID ''||SQLERRM);',
'END;'))
,p_attribute_02=>'P472_AUX_SEQ_ID,P472_ACCION'
,p_attribute_03=>'P472_CONTROL_CONFIRM'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(137989070924164417)
,p_event_id=>wwv_flow_imp.id(137988315298164410)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(137726174369133214)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(137991066885164437)
,p_event_id=>wwv_flow_imp.id(137988315298164410)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    RPLIQFLE.CALCULA(pseq_id => :P472_AUX_SEQ_ID,',
'                     pmt     => :P472_MT_TOTAL,',
'                     pcv     => :P472_CV_TOTAL,',
'                     pvm3    => :P472_VM3_TOTAL,',
'                     pind    => :P472_IND_TOTAL,',
'                     pmp     => :P472_MP_TOTAL);',
'EXCEPTION',
'    WHEN OTHERS THEN',
'    APEX_DEBUG.ERROR(''DA_CALCULAR ''||SQLERRM);',
'END;'))
,p_attribute_02=>'P472_AUX_SEQ_ID'
,p_attribute_03=>'P472_MT_TOTAL,P472_VM3_TOTAL,P472_CV_TOTAL,P472_IND_TOTAL,P472_MP_TOTAL'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P472_CONTROL_CONFIRM'
,p_client_condition_expression=>'0'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(139942814575063104)
,p_event_id=>wwv_flow_imp.id(137988315298164410)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>unistr('No puede seleccionar un registro que ya est\00E1 confirmado, favor de elegir uno no confirmado.')
,p_attribute_02=>'Aviso'
,p_attribute_03=>'warning'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P472_CONTROL_CONFIRM'
,p_client_condition_expression=>'1'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(137988803905164415)
,p_name=>'DA_EDIT_DATA'
,p_event_sequence=>50
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P472_EDIT_DATA'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(137988931939164416)
,p_event_id=>wwv_flow_imp.id(137988803905164415)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_02=>'P472_EDIT_DATA'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(137990394936164430)
,p_event_id=>wwv_flow_imp.id(137988803905164415)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P472_MONTO_EDIT'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(137989614861164423)
,p_event_id=>wwv_flow_imp.id(137988803905164415)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(137989319598164420)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(137989734694164424)
,p_name=>'DA_SOLO_NUMEROS'
,p_event_sequence=>60
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P472_MONTO_EDIT'
,p_bind_type=>'bind'
,p_bind_event_type=>'keydown'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(137989811819164425)
,p_event_id=>wwv_flow_imp.id(137989734694164424)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'validateNumber(event);'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(137989961223164426)
,p_name=>'DA_EDIT_MONTO'
,p_event_sequence=>70
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(137989538235164422)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(137990001237164427)
,p_event_id=>wwv_flow_imp.id(137989961223164426)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    RPLIQFLE.EDIT_MONTO_COL(pedit_data => :P472_EDIT_DATA,',
'                            pmonto     => :P472_MONTO_EDIT);',
'EXCEPTION',
'    WHEN OTHERS THEN',
'    APEX_DEBUG.ERROR(''DA_EDIT_MONTO ''||SQLERRM);',
'END;'))
,p_attribute_02=>'P472_EDIT_DATA,P472_MONTO_EDIT'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(137990190772164428)
,p_event_id=>wwv_flow_imp.id(137989961223164426)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(137989319598164420)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(137990238425164429)
,p_event_id=>wwv_flow_imp.id(137989961223164426)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(137726174369133214)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(138346102777426430)
,p_event_id=>wwv_flow_imp.id(137989961223164426)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    RPLIQFLE.CALCULA(pseq_id => :P472_EDIT_DATA,',
'                     pmt     => :P472_MT_TOTAL,',
'                     pcv     => :P472_CV_TOTAL,',
'                     pvm3    => :P472_VM3_TOTAL,',
'                     pind    => :P472_IND_TOTAL,',
'                     pmp     => :P472_MP_TOTAL);',
'EXCEPTION',
'    WHEN OTHERS THEN',
'    APEX_DEBUG.ERROR(''DA_CALCULAR ''||SQLERRM);',
'END;'))
,p_attribute_02=>'P472_EDIT_DATA'
,p_attribute_03=>'P472_MT_TOTAL,P472_VM3_TOTAL,P472_CV_TOTAL,P472_IND_TOTAL,P472_MP_TOTAL'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(138344212340426411)
,p_name=>'DA_FECHA_DET'
,p_event_sequence=>80
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P472_FECHA_DET'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(138344384018426412)
,p_event_id=>wwv_flow_imp.id(138344212340426411)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_02=>'P472_FECHA_DET'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(138344485907426413)
,p_name=>'DA_COD_VEHICULO_DET'
,p_event_sequence=>90
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P472_COD_VEHICULO_DET'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(138344517317426414)
,p_event_id=>wwv_flow_imp.id(138344485907426413)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_02=>'P472_COD_VEHICULO_DET'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(138346410439426433)
,p_name=>'DA_IMPRIMIR'
,p_event_sequence=>100
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(138346267113426431)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(138346534933426434)
,p_event_id=>wwv_flow_imp.id(138346410439426433)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_02=>'P472_COD_VEHICULO,P472_FEC_DESDE,P472_FEC_HASTA,P472_COD_BARRA,P472_REPARTIDOR,P472_ZONA,P472_TRANSPORTADORA,P472_CHK_OK'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(138346610412426435)
,p_event_id=>wwv_flow_imp.id(138346410439426433)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    :P472_URL := ''https://ngosaeca.com.py/reportes/rest_v2/reports/reports/RPLIQFLE.pdf?''||',
'                 ''P_COD_EMPRESA=''||:P_COD_EMPRESA||''&P_TRANSPORTADORA=''||:P472_TRANSPORTADORA||''&P_FECHA_FIN=''||:P472_FEC_HASTA||''&P_COD_SUCURSAL=''||:P_COD_SUCURSAL||',
'                 ''&P_TIPO=''||NULL||''&P_VEHICULO=''||:P472_COD_VEHICULO||''&P_FECHA_INI=''||:P472_FEC_DESDE||''&P_REPARTIDOR=''||:P472_REPARTIDOR||''&P_ZONA=''||:P472_ZONA||''&j_username=jasperadmin&j_password=jasperadmin'';',
'EXCEPTION',
'    WHEN OTHERS THEN',
'    APEX_DEBUG.ERROR(''DA_IMPRIMIR ''||SQLERRM);',
'END;'))
,p_attribute_02=>'P472_COD_VEHICULO,P472_FEC_DESDE,P472_FEC_HASTA,P472_COD_BARRA,P472_REPARTIDOR,P472_ZONA,P472_TRANSPORTADORA,P472_CHK_OK'
,p_attribute_03=>'P472_URL'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(138346768969426436)
,p_event_id=>wwv_flow_imp.id(138346410439426433)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'doDescarga(apex.item(''P_COD_EMPRESA''),',
'           apex.item(''P472_TRANSPORTADORA''),',
'           apex.item(''P472_FEC_HASTA''),',
'           apex.item(''P_COD_SUCURSAL''),',
'           null,',
'           apex.item(''P472_COD_VEHICULO''),',
'           apex.item(''P472_FEC_DESDE''),',
'           apex.item(''P472_REPARTIDOR''),',
'           apex.item(''P472_ZONA''));'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(138347224056426441)
,p_name=>'DA_BTCONFIRMAR'
,p_event_sequence=>110
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(138344940989426418)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(138347380299426442)
,p_event_id=>wwv_flow_imp.id(138347224056426441)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    BEGIN',
'        SELECT NVL(MAX(NRO_PLANILLA),0) + 1',
'          INTO :P472_NRO_PLANILLA_GENERA',
'          FROM RP_PLANILLA_LIQUIDA_FLETES',
'         WHERE COD_EMPRESA = :P_COD_EMPRESA;',
'    EXCEPTION',
'        WHEN NO_DATA_FOUND THEN',
'        :P472_NRO_PLANILLA_GENERA := 1;',
'    END;',
'EXCEPTION',
'    WHEN OTHERS THEN',
'    APEX_DEBUG.ERROR(''DA_BTCONFIRMAR ''||SQLERRM);',
'END;'))
,p_attribute_02=>'P_COD_EMPRESA'
,p_attribute_03=>'P472_NRO_PLANILLA_GENERA'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(138347429428426443)
,p_event_id=>wwv_flow_imp.id(138347224056426441)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(138346812266426437)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(138347599770426444)
,p_name=>'DA_CANCELAR'
,p_event_sequence=>120
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(138347059105426439)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(138347606213426445)
,p_event_id=>wwv_flow_imp.id(138347599770426444)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(138346812266426437)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(138347749247426446)
,p_name=>'DA_BTCONFIRMAR_GEN'
,p_event_sequence=>130
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(138347136707426440)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(138347877698426447)
,p_event_id=>wwv_flow_imp.id(138347749247426446)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>unistr('''\00BFDesea confirmar la liquidacion de flete/s?''')
,p_attribute_02=>'Confirmar Pago/s'
,p_attribute_03=>'warning'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(139943700499063113)
,p_event_id=>wwv_flow_imp.id(138347749247426446)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'VCONT NUMBER;',
'VNRO_PLANILLA NUMBER;',
'BEGIN',
'    RPLIQFLE.procesa_pago(pnro          => :P472_NRO_PLANILLA_GENERA,',
'                          pcod_empresa  => :P_COD_EMPRESA,',
'                          pcod_usuario  => :P_COD_USUARIO,',
'                          pcont         => VCONT,',
'                          pnro_planilla => VNRO_PLANILLA);',
'    ',
'    IF VCONT > 0 THEN',
'        SELECT APEX_PAGE.GET_URL (p_page => 460,',
'    				              p_items  => ''P460_P_NRO_PLANILLA'', ',
'    				              p_values => ''''||VNRO_PLANILLA||'''') f_url_1',
'    	INTO :P472_URL',
'    	FROM DUAL;',
'    END IF;',
'EXCEPTION',
'    WHEN OTHERS THEN',
'    APEX_DEBUG.ERROR(''DA_BTCONFIRMAR ''||SQLERRM);',
'END;'))
,p_attribute_02=>'P472_NRO_PLANILLA_GENERA,P_COD_EMPRESA,P_COD_USUARIO'
,p_attribute_03=>'P472_URL'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(139943883556063114)
,p_event_id=>wwv_flow_imp.id(138347749247426446)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var url = apex.item("P472_URL").getValue();',
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
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(139943911202063115)
,p_event_id=>wwv_flow_imp.id(138347749247426446)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_02=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(138347968906426448)
,p_name=>'DA_NRO_PLANILLA'
,p_event_sequence=>140
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P472_NRO_PLANILLA'
,p_bind_type=>'bind'
,p_bind_event_type=>'dblclick'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(138348174237426450)
,p_event_id=>wwv_flow_imp.id(138347968906426448)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    IF :P472_NRO_PLANILLA IS NULL THEN',
'        :P472_CONTROL_PLANILLA := 1;',
'    ELSE',
'        :P472_CONTROL_PLANILLA := 0;',
'    END IF;',
'EXCEPTION',
'    WHEN OTHERS THEN',
'    APEX_DEBUG.ERROR(''DA_NRO_PLANILLA ''||SQLERRM);',
'END;'))
,p_attribute_02=>'P472_NRO_PLANILLA'
,p_attribute_03=>'P472_CONTROL_PLANILLA'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(139764914019556202)
,p_event_id=>wwv_flow_imp.id(138347968906426448)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>unistr('Favor de elegir un registro que est\00E9 en planilla para redirigir el formulario.')
,p_attribute_02=>'Aviso'
,p_attribute_03=>'warning'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P472_CONTROL_PLANILLA'
,p_client_condition_expression=>'1'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(139942517753063101)
,p_event_id=>wwv_flow_imp.id(138347968906426448)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'     ',
'    SELECT APEX_PAGE.GET_URL (p_page => 460,',
'				              p_items  => ''P460_P_NRO_PLANILLA'', ',
'				              p_values => ''''||:P472_NRO_PLANILLA||'''') f_url_1',
'	INTO :P472_URL',
'	FROM DUAL;',
'',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(''DA_TIP_MOV_CAJ_AUX ''||SQLERRM);',
'END;'))
,p_attribute_02=>'P472_NRO_PLANILLA'
,p_attribute_03=>'P472_URL'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P472_CONTROL_PLANILLA'
,p_client_condition_expression=>'0'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(139942664291063102)
,p_event_id=>wwv_flow_imp.id(138347968906426448)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var url = apex.item("P472_URL").getValue();',
'apex.navigation.openInNewWindow(url, "_blank");',
'//apex.navigation.redirect(url);'))
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P472_CONTROL_PLANILLA'
,p_client_condition_expression=>'0'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(139943097561063106)
,p_name=>'DA_ANULAR'
,p_event_sequence=>150
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(138345049119426419)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(139943188777063107)
,p_event_id=>wwv_flow_imp.id(139943097561063106)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>unistr('\00BFDesea eliminar la Liquidacion de Flete con Fecha: &P472_FECHA_DET. Monto: &P472_MONTO_CONFIRMADO_AUX. Cod.Vehiculo: &P472_COD_VEHICULO_2. ?')
,p_attribute_02=>'Aviso'
,p_attribute_03=>'warning'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(139943302096063109)
,p_event_id=>wwv_flow_imp.id(139943097561063106)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    BEGIN',
'        delete ',
'          from rp_liquida_fletes',
'		 where COD_EMPRESA = :P_COD_EMPRESA',
'		   AND FECHA = :P472_FECHA_DET',
'		   AND COD_VEHICULO = :P472_COD_VEHICULO_2',
'		   AND COD_REPARTIDOR = :P472_REPARTIDOR;',
'    EXCEPTION',
'        WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(''ERROR AL ANULAR ''||SQLERRM);',
'    END;',
'EXCEPTION',
'    WHEN OTHERS THEN',
'    APEX_DEBUG.ERROR(''DA_ANULAR ''||SQLERRM);',
'END;'))
,p_attribute_02=>'P_COD_EMPRESA,P472_FECHA_DETP472_COD_VEHICULO_2,P472_REPARTIDOR'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(139943469018063110)
,p_event_id=>wwv_flow_imp.id(139943097561063106)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(137726174369133214)
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(138344787051426416)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'CLEAR_SESSION'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(137725085492133203)
,p_process_sequence=>20
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_INIT'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P472_COD_MODULO := ''RP'';',
'APEX_COLLECTION.CREATE_OR_TRUNCATE_COLLECTION(p_collection_name => ''COL_VW_LIQUIDA_FLETES'');'))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_imp.component_end;
end;
/
